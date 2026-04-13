org $0D8000

;===================================================================================================
; This holds data for Link's primary poses
; y, x, ab
;   y - y offset of head
;   x - x offset of head
;   a - head oam props high nibble
;   b - body oam props high nibble
;       F - don't draw
;===================================================================================================
LinkPoseData:
|0D8000| db  0,  0, $00 ; 0x0000
|0D8003| db  1,  0, $00 ; 0x0001
|0D8006| db  2,  0, $00 ; 0x0002
|0D8009| db  1,  0, $04 ; 0x0003
|0D800C| db  2,  0, $04 ; 0x0004
|0D800F| db  0,  0, $00 ; 0x0005
|0D8012| db  1,  0, $00 ; 0x0006
|0D8015| db  2,  0, $00 ; 0x0007
|0D8018| db  1,  0, $04 ; 0x0008
|0D801B| db  2,  0, $04 ; 0x0009
|0D801E| db  0,  1, $44 ; 0x000A
|0D8021| db  1,  1, $44 ; 0x000B
|0D8024| db  2,  2, $44 ; 0x000C
|0D8027| db  0, -1, $00 ; 0x000D
|0D802A| db  1, -1, $00 ; 0x000E
|0D802D| db  2, -2, $00 ; 0x000F
|0D8030| db  0,  0, $00 ; 0x0010
|0D8033| db  0,  0, $00 ; 0x0011
|0D8036| db -1,  0, $00 ; 0x0012
|0D8039| db  0,  0, $00 ; 0x0013
|0D803C| db  0,  0, $00 ; 0x0014
|0D803F| db  1,  0, $00 ; 0x0015
|0D8042| db  1,  0, $00 ; 0x0016
|0D8045| db  1,  0, $00 ; 0x0017
|0D8048| db  1,  1, $44 ; 0x0018
|0D804B| db  1,  1, $44 ; 0x0019
|0D804E| db  1,  0, $44 ; 0x001A
|0D8051| db  1,  1, $44 ; 0x001B
|0D8054| db  1, -1, $00 ; 0x001C
|0D8057| db  1, -1, $00 ; 0x001D
|0D805A| db  1,  0, $00 ; 0x001E
|0D805D| db  1, -1, $00 ; 0x001F
|0D8060| db  0,  0, $00 ; 0x0020
|0D8063| db  1,  0, $00 ; 0x0021
|0D8066| db  2,  0, $00 ; 0x0022
|0D8069| db  1,  0, $04 ; 0x0023
|0D806C| db  2,  0, $04 ; 0x0024
|0D806F| db  0,  0, $00 ; 0x0025
|0D8072| db  1,  0, $00 ; 0x0026
|0D8075| db  2,  0, $00 ; 0x0027
|0D8078| db  1,  0, $00 ; 0x0028
|0D807B| db  2,  0, $00 ; 0x0029
|0D807E| db  0,  1, $44 ; 0x002A
|0D8081| db  1,  1, $44 ; 0x002B
|0D8084| db  2,  1, $44 ; 0x002C
|0D8087| db  0, -1, $00 ; 0x002D
|0D808A| db  1, -1, $00 ; 0x002E
|0D808D| db  2, -1, $00 ; 0x002F
|0D8090| db -1,  0, $00 ; 0x0030
|0D8093| db  0,  0, $00 ; 0x0031
|0D8096| db  0,  0, $00 ; 0x0032
|0D8099| db  2,  0, $00 ; 0x0033
|0D809C| db  1,  0, $00 ; 0x0034
|0D809F| db  2, -1, $44 ; 0x0035
|0D80A2| db  1,  1, $44 ; 0x0036
|0D80A5| db  1,  1, $44 ; 0x0037
|0D80A8| db  2,  1, $00 ; 0x0038
|0D80AB| db  1, -1, $00 ; 0x0039
|0D80AE| db  1, -1, $00 ; 0x003A
|0D80B1| db  0, -8, $00 ; 0x003B
|0D80B4| db  4,  0, $0F ; 0x003C
|0D80B7| db  4,  0, $0F ; 0x003D
|0D80BA| db  0,  0, $FF ; 0x003E
|0D80BD| db  0,  0, $00 ; 0x003F
|0D80C0| db  0,  0, $00 ; 0x0040
|0D80C3| db  0,  0, $44 ; 0x0041
|0D80C6| db  0,  0, $00 ; 0x0042
|0D80C9| db  0,  0, $00 ; 0x0043
|0D80CC| db -1,  0, $00 ; 0x0044
|0D80CF| db -1,  0, $00 ; 0x0045
|0D80D2| db  0,  0, $00 ; 0x0046
|0D80D5| db  1,  0, $00 ; 0x0047
|0D80D8| db  2,  0, $00 ; 0x0048
|0D80DB| db  0,  0, $44 ; 0x0049
|0D80DE| db  1,  0, $44 ; 0x004A
|0D80E1| db  1,  0, $44 ; 0x004B
|0D80E4| db  0,  0, $00 ; 0x004C
|0D80E7| db  1,  0, $00 ; 0x004D
|0D80EA| db  1,  0, $00 ; 0x004E
|0D80ED| db -1,  0, $00 ; 0x004F
|0D80F0| db -5,  0, $00 ; 0x0050
|0D80F3| db  2,  0, $00 ; 0x0051
|0D80F6| db  5,  0, $00 ; 0x0052
|0D80F9| db -1,  0, $44 ; 0x0053
|0D80FC| db  0,  0, $44 ; 0x0054
|0D80FF| db  0,  1, $44 ; 0x0055
|0D8102| db -1,  0, $00 ; 0x0056
|0D8105| db  0,  0, $00 ; 0x0057
|0D8108| db  0, -1, $00 ; 0x0058
|0D810B| db  0,  0, $00 ; 0x0059
|0D810E| db  1,  0, $00 ; 0x005A
|0D8111| db  2,  0, $00 ; 0x005B
|0D8114| db  1,  0, $04 ; 0x005C
|0D8117| db  2,  0, $04 ; 0x005D
|0D811A| db  0,  0, $00 ; 0x005E
|0D811D| db  1,  0, $00 ; 0x005F
|0D8120| db  2,  0, $00 ; 0x0060
|0D8123| db  1,  0, $04 ; 0x0061
|0D8126| db  2,  0, $04 ; 0x0062
|0D8129| db  0,  1, $44 ; 0x0063
|0D812C| db  1,  1, $44 ; 0x0064
|0D812F| db  2,  1, $44 ; 0x0065
|0D8132| db  0, -1, $00 ; 0x0066
|0D8135| db  1, -1, $00 ; 0x0067
|0D8138| db  2, -1, $00 ; 0x0068
|0D813B| db  1,  0, $04 ; 0x0069
|0D813E| db  0,  0, $44 ; 0x006A
|0D8141| db  0,  0, $00 ; 0x006B
|0D8144| db  0,  1, $44 ; 0x006C
|0D8147| db  0,  0, $00 ; 0x006D
|0D814A| db  0,  0, $04 ; 0x006E
|0D814D| db  0,  0, $44 ; 0x006F
|0D8150| db  0,  1, $40 ; 0x0070
|0D8153| db  0,  2, $40 ; 0x0071
|0D8156| db  0, -1, $00 ; 0x0072
|0D8159| db  0, -2, $00 ; 0x0073
|0D815C| db  0,  0, $00 ; 0x0074
|0D815F| db  1,  0, $00 ; 0x0075
|0D8162| db  0,  0, $00 ; 0x0076
|0D8165| db  0,  1, $44 ; 0x0077
|0D8168| db  0, -1, $00 ; 0x0078
|0D816B| db  1,  1, $00 ; 0x0079
|0D816E| db  2,  1, $00 ; 0x007A
|0D8171| db  2,  4, $00 ; 0x007B
|0D8174| db  2,  1, $00 ; 0x007C
|0D8177| db  0,  0, $00 ; 0x007D
|0D817A| db  1,  0, $00 ; 0x007E
|0D817D| db  1,  0, $00 ; 0x007F
|0D8180| db  0,  0, $00 ; 0x0080
|0D8183| db  1,  0, $00 ; 0x0081
|0D8186| db  1, -1, $44 ; 0x0082
|0D8189| db  2, -1, $44 ; 0x0083
|0D818C| db  2, -4, $44 ; 0x0084
|0D818F| db  2, -1, $44 ; 0x0085
|0D8192| db  1,  0, $44 ; 0x0086
|0D8195| db  0,  0, $00 ; 0x0087
|0D8198| db  0,  0, $40 ; 0x0088
|0D819B| db  0,  0, $04 ; 0x0089
|0D819E| db  0,  0, $04 ; 0x008A
|0D81A1| db  0,  0, $00 ; 0x008B
|0D81A4| db  0,  0, $00 ; 0x008C
|0D81A7| db  0,  0, $00 ; 0x008D
|0D81AA| db  1,  0, $00 ; 0x008E
|0D81AD| db  2,  0, $04 ; 0x008F
|0D81B0| db  1,  0, $00 ; 0x0090
|0D81B3| db  2,  0, $04 ; 0x0091
|0D81B6| db  5,  1, $40 ; 0x0092
|0D81B9| db  6,  1, $44 ; 0x0093
|0D81BC| db  5, -1, $04 ; 0x0094
|0D81BF| db  6, -1, $00 ; 0x0095
|0D81C2| db  0,  0, $00 ; 0x0096
|0D81C5| db  0,  0, $04 ; 0x0097
|0D81C8| db  0,  0, $00 ; 0x0098
|0D81CB| db  0,  0, $00 ; 0x0099
|0D81CE| db  0,  0, $44 ; 0x009A
|0D81D1| db  0,  0, $00 ; 0x009B
|0D81D4| db 13,  3, $44 ; 0x009C
|0D81D7| db 12,  5, $44 ; 0x009D
|0D81DA| db 12,  5, $44 ; 0x009E
|0D81DD| db 13, -3, $00 ; 0x009F
|0D81E0| db 12, -5, $00 ; 0x00A0
|0D81E3| db 12, -5, $00 ; 0x00A1
|0D81E6| db  1,  0, $00 ; 0x00A2
|0D81E9| db  0,  0, $00 ; 0x00A3
|0D81EC| db  0,  0, $00 ; 0x00A4
|0D81EF| db  1,  0, $00 ; 0x00A5
|0D81F2| db  2,  0, $00 ; 0x00A6
|0D81F5| db  0,  0, $44 ; 0x00A7
|0D81F8| db  0,  0, $00 ; 0x00A8
|0D81FB| db  0,  0, $00 ; 0x00A9
|0D81FE| db  0,  0, $00 ; 0x00AA
|0D8201| db  0,  0, $44 ; 0x00AB
|0D8204| db  0,  0, $44 ; 0x00AC
|0D8207| db -1,  0, $04 ; 0x00AD
|0D820A| db  0,  0, $00 ; 0x00AE
|0D820D| db -1,  0, $00 ; 0x00AF
|0D8210| db -2,  0, $00 ; 0x00B0
|0D8213| db  0,  0, $00 ; 0x00B1
|0D8216| db  0,  0, $00 ; 0x00B2
|0D8219| db -1,  0, $00 ; 0x00B3
|0D821C| db -2,  0, $00 ; 0x00B4
|0D821F| db  0,  0, $00 ; 0x00B5
|0D8222| db  0,  0, $04 ; 0x00B6
|0D8225| db -1,  0, $00 ; 0x00B7
|0D8228| db -2,  0, $00 ; 0x00B8
|0D822B| db  0,  0, $00 ; 0x00B9
|0D822E| db -1,  0, $04 ; 0x00BA
|0D8231| db -2,  0, $04 ; 0x00BB
|0D8234| db  0,  0, $04 ; 0x00BC
|0D8237| db -1,  1, $44 ; 0x00BD
|0D823A| db -1,  0, $44 ; 0x00BE
|0D823D| db  0,  1, $44 ; 0x00BF
|0D8240| db  0,  1, $44 ; 0x00C0
|0D8243| db -1,  1, $44 ; 0x00C1
|0D8246| db -1,  0, $44 ; 0x00C2
|0D8249| db  0,  0, $44 ; 0x00C3
|0D824C| db -1, -1, $00 ; 0x00C4
|0D824F| db -1,  0, $00 ; 0x00C5
|0D8252| db  0, -1, $00 ; 0x00C6
|0D8255| db  0, -1, $00 ; 0x00C7
|0D8258| db -1, -1, $00 ; 0x00C8
|0D825B| db -1,  0, $00 ; 0x00C9
|0D825E| db  0,  0, $00 ; 0x00CA
|0D8261| db  0,  0, $04 ; 0x00CB
|0D8264| db  1,  0, $00 ; 0x00CC
|0D8267| db  2,  0, $00 ; 0x00CD
|0D826A| db  1,  0, $00 ; 0x00CE
|0D826D| db  2,  0, $00 ; 0x00CF
|0D8270| db  1,  0, $00 ; 0x00D0
|0D8273| db  2,  0, $00 ; 0x00D1
|0D8276| db  1,  0, $04 ; 0x00D2
|0D8279| db  2,  0, $04 ; 0x00D3
|0D827C| db  1,  1, $44 ; 0x00D4
|0D827F| db  2,  1, $44 ; 0x00D5
|0D8282| db  1, -1, $00 ; 0x00D6
|0D8285| db  2, -1, $00 ; 0x00D7
|0D8288| db  2,  0, $00 ; 0x00D8
|0D828B| db  2,  0, $00 ; 0x00D9
|0D828E| db  3,  0, $00 ; 0x00DA
|0D8291| db  3,  0, $00 ; 0x00DB
|0D8294| db  2, -2, $44 ; 0x00DC
|0D8297| db  2,  1, $44 ; 0x00DD
|0D829A| db  2,  2, $00 ; 0x00DE
|0D829D| db  2, -1, $00 ; 0x00DF
|0D82A0| db  0,  0, $00 ; 0x00E0
|0D82A3| db  1,  0, $00 ; 0x00E1
|0D82A6| db  2,  0, $00 ; 0x00E2
|0D82A9| db  1,  0, $04 ; 0x00E3
|0D82AC| db  2,  0, $04 ; 0x00E4
|0D82AF| db  2,  0, $00 ; 0x00E5
|0D82B2| db  3,  0, $00 ; 0x00E6
|0D82B5| db  4,  0, $00 ; 0x00E7
|0D82B8| db  3,  0, $04 ; 0x00E8
|0D82BB| db  4,  0, $04 ; 0x00E9
|0D82BE| db  0,  0, $44 ; 0x00EA
|0D82C1| db  1,  0, $44 ; 0x00EB
|0D82C4| db  2,  0, $44 ; 0x00EC
|0D82C7| db  0,  0, $00 ; 0x00ED
|0D82CA| db  1,  0, $00 ; 0x00EE
|0D82CD| db  2,  0, $00 ; 0x00EF
|0D82D0| db  3,  0, $00 ; 0x00F0
|0D82D3| db  2,  0, $00 ; 0x00F1
|0D82D6| db -1,  0, $00 ; 0x00F2
|0D82D9| db  0,  0, $00 ; 0x00F3
|0D82DC| db  1,  0, $00 ; 0x00F4
|0D82DF| db -1,  0, $00 ; 0x00F5
|0D82E2| db  0,  0, $00 ; 0x00F6
|0D82E5| db  1,  0, $00 ; 0x00F7
|0D82E8| db -1,  0, $44 ; 0x00F8
|0D82EB| db  0,  0, $44 ; 0x00F9
|0D82EE| db  1,  0, $44 ; 0x00FA
|0D82F1| db -1,  0, $44 ; 0x00FB
|0D82F4| db  0,  0, $44 ; 0x00FC
|0D82F7| db  1,  0, $44 ; 0x00FD
|0D82FA| db  0,  0, $00 ; 0x00FE
|0D82FD| db  1,  0, $00 ; 0x00FF
|0D8300| db  2,  0, $00 ; 0x0100
|0D8303| db  1,  0, $00 ; 0x0101
|0D8306| db  2,  0, $00 ; 0x0102
|0D8309| db  0,  0, $00 ; 0x0103
|0D830C| db  3,  0, $00 ; 0x0104
|0D830F| db  4,  0, $00 ; 0x0105
|0D8312| db  2,  0, $00 ; 0x0106
|0D8315| db  0, -1, $44 ; 0x0107
|0D8318| db  1,  1, $44 ; 0x0108
|0D831B| db  0,  1, $44 ; 0x0109
|0D831E| db  0,  1, $00 ; 0x010A
|0D8321| db  1,  1, $00 ; 0x010B
|0D8324| db  0, -1, $00 ; 0x010C
|0D8327| db  3,  0, $00 ; 0x010D
|0D832A| db  2,  0, $04 ; 0x010E
|0D832D| db  3,  0, $04 ; 0x010F
|0D8330| db  0,  2, $00 ; 0x0110
|0D8333| db  8,  8, $00 ; 0x0111
|0D8336| db  0,  0, $00 ; 0x0112
|0D8339| db  0,  0, $00 ; 0x0113
|0D833C| db -1,  0, $0F ; 0x0114
|0D833F| db  1,  0, $00 ; 0x0115
|0D8342| db  0,  0, $04 ; 0x0116
|0D8345| db  0,  0, $00 ; 0x0117
|0D8348| db  2,  0, $00 ; 0x0118
|0D834B| db  1,  4, $44 ; 0x0119
|0D834E| db  1, -4, $00 ; 0x011A
|0D8351| db  0,  0, $00 ; 0x011B
|0D8354| db  1,  0, $00 ; 0x011C
|0D8357| db  1,  0, $04 ; 0x011D
|0D835A| db  0,  0, $00 ; 0x011E
|0D835D| db  1,  0, $00 ; 0x011F
|0D8360| db  1,  0, $04 ; 0x0120
|0D8363| db  0,  1, $44 ; 0x0121
|0D8366| db  1,  1, $44 ; 0x0122
|0D8369| db  0, -1, $00 ; 0x0123
|0D836C| db  1, -1, $00 ; 0x0124
|0D836F| db  0,  0, $44 ; 0x0125
|0D8372| db -2,  0, $00 ; 0x0126
|0D8375| db  0, -2, $04 ; 0x0127
|0D8378| db  0,  0, $00 ; 0x0128
|0D837B| db  0,  1, $00 ; 0x0129
|0D837E| db  0,  0, $04 ; 0x012A
|0D8381| db 12,  0, $08 ; 0x012B
|0D8384| db 14,  0, $80 ; 0x012C
|0D8387| db 12,  0, $00 ; 0x012D
|0D838A| db 11,  0, $00 ; 0x012E

;===================================================================================================

LinkAuxOAMFlip:
|0D838D| db $00, $00, $00, $40, $40, $48, $C0
|0D8394| db $48, $C0, $48, $C0, $48, $C0, $40

;===================================================================================================
; These are OAM props and characters for 3 separate positions for the sword, and other weapons.
; $FFFF - do not draw
;===================================================================================================
WeaponDrawTiles:
|0D839B| dw $2A05, $2A06, $FFFF
|0D83A1| dw $6A06, $6A05, $FFFF
|0D83A7| dw $AA05, $AA06, $FFFF
|0D83AD| dw $2A05, $2A06, $FFFF
|0D83B3| dw $EA06, $EA05, $FFFF
|0D83B9| dw $6A06, $6A05, $FFFF
|0D83BF| dw $2A05, $FFFF, $2A15
|0D83C5| dw $AA15, $FFFF, $AA05
|0D83CB| dw $2A05, $FFFF, $2A15
|0D83D1| dw $AA15, $FFFF, $AA05
|0D83D7| dw $6A05, $FFFF, $6A15
|0D83DD| dw $EA15, $FFFF, $EA05
|0D83E3| dw $2A05, $FFFF, $FFFF
|0D83E9| dw $AA05, $FFFF, $FFFF
|0D83EF| dw $6A05, $FFFF, $FFFF
|0D83F5| dw $EA05, $FFFF, $FFFF
|0D83FB| dw $2A05, $FFFF, $FFFF
|0D8401| dw $AA05, $FFFF, $FFFF
|0D8407| dw $6A05, $FFFF, $FFFF
|0D840D| dw $EA05, $FFFF, $FFFF
|0D8413| dw $2A05, $FFFF, $FFFF
|0D8419| dw $AA05, $FFFF, $FFFF
|0D841F| dw $6A05, $FFFF, $FFFF
|0D8425| dw $EA05, $FFFF, $FFFF
|0D842B| dw $2A05, $FFFF, $FFFF
|0D8431| dw $AA05, $FFFF, $FFFF
|0D8437| dw $6A05, $FFFF, $FFFF
|0D843D| dw $EA05, $FFFF, $FFFF
|0D8443| dw $AA15, $FFFF, $FFFF
|0D8449| dw $2209, $FFFF, $2219
|0D844F| dw $2209, $FFFF, $2219
|0D8455| dw $221A, $FFFF, $2219
|0D845B| dw $A219, $FFFF, $A209
|0D8461| dw $2209, $FFFF, $2219
|0D8467| dw $2209, $FFFF, $FFFF
|0D846D| dw $2209, $FFFF, $FFFF
|0D8473| dw $2219, $2209, $FFFF
|0D8479| dw $6209, $FFFF, $FFFF
|0D847F| dw $6209, $6219, $FFFF
|0D8485| dw $A209, $E209, $FFFF
|0D848B| dw $2209, $6209, $FFFF
|0D8491| dw $6209, $FFFF, $E209
|0D8497| dw $2209, $FFFF, $A209
|0D849D| dw $A209, $FFFF, $FFFF
|0D84A3| dw $6209, $FFFF, $FFFF
|0D84A9| dw $2209, $FFFF, $FFFF
|0D84AF| dw $E209, $FFFF, $FFFF
|0D84B5| dw $2209, $FFFF, $FFFF
|0D84BB| dw $2209, $FFFF, $FFFF
|0D84C1| dw $6209, $FFFF, $FFFF
|0D84C7| dw $6209, $FFFF, $FFFF
|0D84CD| dw $221A, $FFFF, $FFFF
|0D84D3| dw $221A, $FFFF, $FFFF
|0D84D9| dw $221A, $FFFF, $FFFF
|0D84DF| dw $221A, $FFFF, $FFFF
|0D84E5| dw $2209, $FFFF, $FFFF
|0D84EB| dw $2209, $FFFF, $FFFF
|0D84F1| dw $2209, $FFFF, $FFFF
|0D84F7| dw $E209, $FFFF, $FFFF
|0D84FD| dw $2209, $FFFF, $FFFF
|0D8503| dw $2209, $FFFF, $FFFF
|0D8509| dw $2209, $FFFF, $FFFF
|0D850F| dw $2209, $FFFF, $FFFF
|0D8515| dw $2209, $FFFF, $FFFF
|0D851B| dw $2209, $FFFF, $FFFF
|0D8521| dw $2209, $FFFF, $FFFF
|0D8527| dw $2209, $FFFF, $2219
|0D852D| dw $2209, $FFFF, $2219
|0D8533| dw $2209, $FFFF, $2219
|0D8539| dw $6209, $FFFF, $6219
|0D853F| dw $2209, $FFFF, $2219
|0D8545| dw $2209, $FFFF, $FFFF
|0D854B| dw $A219, $A209, $FFFF
|0D8551| dw $6209, $FFFF, $FFFF
|0D8557| dw $E209, $E219, $FFFF
|0D855D| dw $2809, $FFFF, $FFFF

;===================================================================================================
; These are OAM props and characters for 3 separate positions for the shield
; $FFFF - do not draw
;===================================================================================================
ShieldDrawTiles:
|0D8563| dw $2A07, $FFFF, $FFFF ; down
|0D8569| dw $2A07, $FFFF, $FFFF ; up
|0D856F| dw $2A07, $FFFF, $FFFF ; right
|0D8575| dw $6A07, $FFFF, $FFFF ; left

|0D857B| dw $2A07, $FFFF, $FFFF ; The rest of these seem to be unused/garbage
|0D8581| dw $6A07, $FFFF, $FFFF
|0D8587| dw $2A07, $FFFF, $FFFF
|0D858D| dw $6A07, $FFFF, $FFFF

|0D8593| dw $2809, $FFFF, $2819
|0D8599| dw $2809, $FFFF, $2819
|0D859F| dw $281A, $FFFF, $2819
|0D85A5| dw $A819, $FFFF, $A809

|0D85AB| dw $2809, $FFFF, $2819
|0D85B1| dw $2809, $FFFF, $FFFF
|0D85B7| dw $2809, $FFFF, $FFFF
|0D85BD| dw $2819, $2809, $FFFF

|0D85C3| dw $6809, $FFFF, $FFFF
|0D85C9| dw $6809, $6819, $FFFF

;===================================================================================================
; OAM props and tiles for shadows
; appears to be: formatted as:
;   ABCC
;   A - OAM props of left tile
;   B - OAM props of right tile
;   C - OAM char of both tiles
;
;  FFFF - no tile
;===================================================================================================
ShadowDrawTiles:
|0D85CF| dw $286C, $686C ; normal shadow
|0D85D3| dw $2828, $6828 ; small shadow
|0D85D7| dw $2838, $FFFF ; used while falling
|0D85DB| dw $286E, $686E ; unused and buggy
|0D85DF| dw $287E, $687E ; unused and buggy
|0D85E3| dw $24D8, $64D8 ; shallow water step 1
|0D85E7| dw $24D9, $64D9 ; shallow water step 2
|0D85EB| dw $24DA, $64DA ; shallow water step 3
|0D85EF| dw $22C8, $62C8 ; grass step 1
|0D85F3| dw $22C9, $62C9 ; grass step 2
|0D85F7| dw $22CA, $62CA ; grass step 3

;===================================================================================================
; These animation steps point to an index in LinkPoseData
;===================================================================================================
LinkAnimationPose:
; walking
; charging dash
; index 0 used for standing still
|0D85FB| dw $0000, $00AE, $00AF, $00B0, $00B1, $00B2, $00B3, $00B4, $00B5 ; up
|0D860D| dw $0005, $00B6, $00B7, $00B8, $00B9, $00B6, $00BA, $00BB, $00BC ; down
|0D861F| dw $000A, $000A, $00BD, $00BE, $00BF, $00C0, $00C1, $00C2, $00C3 ; left
|0D8631| dw $000D, $000D, $00C4, $00C5, $00C6, $00C7, $00C8, $00C9, $00CA ; right

; powder
|0D8643| dw $0010, $0010, $0011, $0011, $0012, $0012, $0013, $0013, $0013 ; up
|0D8655| dw $0014, $0014, $0015, $0015, $0016, $0016, $0017, $0017, $0017 ; down
|0D8667| dw $0018, $0018, $0019, $0019, $001A, $001A, $001B, $001B, $001B ; left
|0D8679| dw $001C, $001C, $001D, $001D, $001E, $001E, $001F, $001F, $001F ; right

; walking with sword out
|0D868B| dw $0020, $0021, $0022, $0020, $0023, $0024 ; up
|0D8697| dw $0025, $0026, $0027, $0025, $0028, $0029 ; down
|0D86A3| dw $002A, $002B, $002C, $002A, $002B, $002C ; left
|0D86AF| dw $002D, $002E, $002F, $002D, $002E, $002F ; right

; poking with sword
|0D86BB| dw $0031, $0030, $0032 ; up
|0D86C1| dw $0034, $0033, $0034 ; down
|0D86C7| dw $0036, $0035, $0037 ; left
|0D86CD| dw $0039, $0038, $003A ; right

; falling
|0D86D3| dw $003B, $003C, $003D, $003E, $003E, $003E

; landing in underworld
|0D86DF| dw $0000, $000D, $0005, $000A

; bonk
|0D86E7| dw $003F ; up
|0D86E9| dw $0040 ; down
|0D86EB| dw $0041 ; left
|0D86ED| dw $0042 ; right

; hammer
; rods
|0D86EF| dw $0043, $0044, $0045 ; up
|0D86F5| dw $0046, $0047, $0048 ; down
|0D86FB| dw $0049, $004A, $004B ; left
|0D8701| dw $004C, $004D, $004E ; right

; bow
|0D8707| dw $0000, $0021, $0074 ; up
|0D870D| dw $0005, $0075, $0076 ; down
|0D8713| dw $002A, $001A, $0077 ; left
|0D8719| dw $002D, $001E, $0078 ; right

; boomerang
|0D871F| dw $00A3, $00A4 ; up
|0D8723| dw $00A5, $00A6 ; down
|0D8727| dw $00A7, $001A ; left
|0D872B| dw $00A8, $001E ; right

; tall grass
|0D872F| dw $0000, $00CE, $00CF, $0000, $00A2, $0024 ; up
|0D873B| dw $0005, $00D0, $00D1, $0005, $00D2, $00D3 ; down
|0D8747| dw $000A, $00D4, $00D5, $000A, $00D4, $00D5 ; left
|0D8753| dw $000D, $00D6, $00D7, $000D, $00D6, $00D7 ; right

; desert prayer
|0D875F| dw $007D, $007E, $007F, $0080

; shovel
|0D8767| dw $0053, $0054, $0055 ; left
|0D876D| dw $0056, $0057, $0058 ; right

; walk carrying item
|0D8773| dw $0059, $005A, $005B, $0059, $005C, $005D ; up
|0D877F| dw $005E, $005F, $0060, $005E, $0061, $0062 ; down
|0D878B| dw $0063, $0064, $0065, $0063, $0064, $0065 ; left
|0D8797| dw $0066, $0067, $0068, $0066, $0067, $0068 ; right

; throwing item
; seems walk cycle based too
|0D87A3| dw $0020, $0021, $0022, $0020, $0023, $0024 ; up
|0D87AF| dw $0025, $0026, $0027, $0025, $0028, $0029 ; down
|0D87BB| dw $002A, $002B, $002C, $002A, $002B, $002C ; left
|0D87C7| dw $002D, $002E, $002F, $002D, $002E, $002F ; right

; spin attack
|0D87D3| dw $0069, $006A, $006B, $006B, $006C, $006C, $006D, $006D
|0D87E3| dw $000D, $000D, $006E, $006F, $0070, $0071, $0072, $0073

; lifting item
|0D87F3| dw $00D8, $00D9, $00D9 ; up
|0D87F9| dw $00DA, $00DB, $00DB ; down
|0D87FF| dw $00DC, $00DD, $00DD ; left
|0D8805| dw $00DE, $00DF, $00DF ; right

; treading water
|0D880B| dw $008E, $008F ; up
|0D880F| dw $0090, $0091 ; down
|0D8813| dw $0092, $0093 ; left
|0D8817| dw $0094, $0095 ; right

; fast swim
|0D881B| dw $0098, $0096, $0097, $0096 ; up
|0D8823| dw $009B, $0099, $009A, $0099 ; down
|0D882B| dw $009E, $009C, $009D, $009C ; left
|0D8833| dw $00A1, $009F, $00A0, $009F ; right

; slow swim
|0D883B| dw $0096, $0097, $0098 ; up
|0D8841| dw $0099, $009A, $009B ; down
|0D8847| dw $009C, $009D, $009E ; left
|0D884D| dw $009F, $00A0, $00A1 ; right

; zap
|0D8853| dw $00AB, $00AB, $00AC, $00AC ; up
|0D885B| dw $00A9, $00A9, $00AA, $00AA ; down
|0D8863| dw $00AB, $00AB, $00AC, $00AC ; left
|0D886B| dw $00A9, $00A9, $00AA, $00AA ; right

; medallion spin
|0D8873| dw $0025, $002A, $0020, $002D

; ether
|0D887B| dw $006B, $00AD, $00AD, $00AD

; bombos
|0D8883| dw $006B, $00CB, $00CB, $00CB, $00CB
|0D888D| dw $00CC, $00CC, $00CC, $00A6, $00A6

; quake
|0D8897| dw $006B, $00CB, $005E, $00CD, $00CD

; pushing
; last item seems unused?
|0D88A1| dw $00E0, $00E1, $00E2, $00E0, $00E3, $00E4 ; up
|0D88AD| dw $00E5, $00E6, $00E7, $00E5, $00E8, $00E9 ; down
|0D88B9| dw $00EA, $00EB, $00EC, $00EA, $00EB, $00EC ; left
|0D88C5| dw $00ED, $00EE, $00EF, $00ED, $00EE, $00EF ; right

; pull switch down
|0D88D1| dw $0101, $0117, $0117, $0117, $0117

; pull switch up
|0D88DB| dw $00F0, $00F1, $00FF, $005E

; ped pull
|0D88E3| dw $00DB, $00FF

; grabbing
|0D88E7| dw $0101, $0117, $0117, $0117 ; up
|0D88EF| dw $0104, $0118, $0118, $0118 ; down
|0D88F7| dw $0107, $0119, $0119, $0119 ; left
|0D88FF| dw $010A, $011A, $011A, $011A ; right

; walking up spiral stairs
|0D8907| dw $00F5, $00F6, $00F7 ; lower
|0D890D| dw $00F2, $00F3, $00F4 ; higher

; walking down spiral stairs
|0D8913| dw $00FB, $00FC, $00FD ; higher
|0D8919| dw $00F8, $00F9, $00FA ; lower

; death
|0D891F| dw $0005, $000A, $0000, $000D, $0110, $0111

; unused? arm swing
|0D892B| dw $0000, $0021, $0074 ; up
|0D8931| dw $0005, $0075, $0076 ; down
|0D8937| dw $002A, $001A, $0077 ; left
|0D893D| dw $002D, $001E, $0078 ; right

; item gets
|0D8943| dw $0112 ; normal
|0D8945| dw $0113 ; crystal/triforce

; sleep
|0D8947| dw $0114, $0115

; hookshot
|0D894B| dw $0012 ; up
|0D894D| dw $0016 ; down
|0D894F| dw $001A ; left
|0D8951| dw $001E ; right

; bunny walk
; first frame used for standing still
|0D8953| dw $011B, $011C, $011B, $011D ; up
|0D895B| dw $011E, $011F, $011E, $0120 ; down
|0D8963| dw $0121, $0122, $0121, $0122 ; left
|0D896B| dw $0123, $0124, $0123, $0124 ; right

; cane
|0D8973| dw $006F, $0125, $0126 ; up
|0D8979| dw $006A, $00CB, $0048 ; down
|0D897F| dw $0071, $0063, $001A ; left
|0D8985| dw $0127, $0066, $001E ; right

; net
|0D898B| dw $0069 ; this first pose is unreachable
|0D898D| dw $00CB, $006B, $000A, $000A, $006D
|0D8997| dw $006D, $000D, $000D, $0070, $0072, $006E

; sword up
|0D89A3| dw $00CB

; book
|0D89A5| dw $0129

; tree pull
|0D89A7| dw $012B, $012C, $012D, $012E, $003F

; sword slash
|0D89B1| dw $0010, $0010, $004F, $004F, $0126, $0050, $0126, $0013, $0013 ; up
|0D89C3| dw $0014, $0014, $0015, $0015, $0051, $0052, $0051, $0017, $0017 ; down
|0D89D5| dw $0018, $0018, $0019, $0082, $0083, $0084, $0085, $0086, $0086 ; left
|0D89E7| dw $001C, $001C, $001D, $0079, $007A, $007B, $007C, $0081, $0081 ; right

;===================================================================================================

LinkAnimationAux1:
; falling
|0D89F9| db $00, $FF, $FF, $02, $03, $04, $FF

; landing in underworld
|0D8A00| db $FF, $FF, $FF

; lifting item
|0D8A03| db $FF, $15, $17 ; up
|0D8A06| db $FF, $15, $17 ; down
|0D8A09| db $FF, $16, $18 ; left
|0D8A0C| db $FF, $15, $17 ; right

; fast swim
|0D8A0F| db $13, $0B, $0F, $FF ; up
|0D8A13| db $11, $09, $0D, $FF ; down
|0D8A17| db $09, $12, $0D, $FF ; left
|0D8A1B| db $0A, $11, $0F, $FF ; right

; medallion spin
|0D8A1F| db $FF, $FF, $FF, $FF

; ether
|0D8A23| db $FF, $FF, $FF, $FF

; bombos
|0D8A27| db $FF, $FF, $FF, $04, $03
|0D8A2C| db $FF, $FF, $FF, $FF, $FF

; quake
|0D8A31| db $FF, $FF, $FF, $FF, $FF

; pull switch down
|0D8A36| db $FF, $17, $17, $FF, $FF

; pull switch up
|0D8A3B| db $FF, $FF, $FF, $FF

; ped pull
|0D8A3F| db $FF, $FF

; grabbing
|0D8A41| db $FF, $17, $17, $FF ; up
|0D8A45| db $FF, $15, $15, $FF ; down
|0D8A49| db $FF, $18, $18, $FF ; left
|0D8A4D| db $FF, $17, $17, $FF ; right

; sword slash
|0D8A51| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; up
|0D8A5A| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; down
|0D8A63| db $FF, $FF, $FF, $FF, $1A, $1A, $1A, $FF, $FF ; left
|0D8A6C| db $FF, $FF, $FF, $FF, $19, $19, $19, $FF, $FF ; right

;===================================================================================================

LinkAnimationAux2:
; falling
|0D8A75| db $01, $FF, $FF, $FF, $FF, $FF, $FF

; landing in underworld
|0D8A7C| db $FF, $FF, $FF

; lifting item
|0D8A7F| db $FF, $16, $18 ; up
|0D8A82| db $FF, $16, $18 ; down
|0D8A85| db $FF, $FF, $FF ; left
|0D8A88| db $FF, $FF, $FF ; right

; fast swim
|0D8A8B| db $14, $0C, $10, $FF ; up
|0D8A8F| db $12, $0A, $0E, $FF ; down
|0D8A93| db $FF, $FF, $FF, $FF ; left
|0D8A97| db $FF, $FF, $FF, $FF ; right

; medallion spin
|0D8A9B| db $FF, $FF, $FF, $FF

; ether
|0D8A9F| db $FF, $FF, $FF, $FF

; bombos
|0D8AA3| db $FF, $FF, $FF, $FF, $FF
|0D8AA8| db $FF, $FF, $FF, $FF, $FF

; quake
|0D8AAD| db $FF, $FF, $FF, $FF, $FF

; pull switch down
|0D8AB2| db $FF, $18, $18, $FF, $FF

; pull switch up
|0D8AB7| db $FF, $FF, $FF, $FF

; ped pull
|0D8ABB| db $FF, $FF

; grabbing
|0D8ABD| db $FF, $18, $18, $FF ; up
|0D8AC1| db $FF, $16, $16, $FF ; down
|0D8AC5| db $FF, $FF, $FF, $FF ; left
|0D8AC9| db $FF, $FF, $FF, $FF ; right

; sword slash
|0D8ACD| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; up
|0D8AD6| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; down
|0D8ADF| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; left
|0D8AE8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; right

;===================================================================================================

LinkAnimationWeaponIndex:
; walking
; charging dash
; index 0 used for standing still
|0D8AF1| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; up
|0D8AFA| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; down
|0D8B03| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; left
|0D8B0C| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; right

; powder
|0D8B15| db $01, $05, $0E, $1A, $06, $08, $10, $14, $00 ; up
|0D8B1E| db $00, $02, $0D, $19, $07, $0B, $13, $17, $01 ; down
|0D8B27| db $06, $08, $10, $14, $00, $02, $0D, $19, $07 ; left
|0D8B30| db $06, $0A, $12, $16, $01, $04, $0F, $1B, $07 ; right

; walking with sword out
|0D8B39| db $0A, $0A, $0A, $0A, $0A, $0A ; up
|0D8B3F| db $09, $09, $09, $09, $09, $09 ; down
|0D8B45| db $00, $00, $00, $00, $00, $00 ; left
|0D8B4B| db $01, $01, $01, $01, $01, $01 ; right

; poking with sword
|0D8B51| db $06, $0A, $06 ; up
|0D8B54| db $07, $09, $07 ; down
|0D8B57| db $00, $00, $00 ; left
|0D8B5A| db $01, $01, $01 ; right

; falling
|0D8B5D| db $FF, $FF, $FF, $FF, $FF, $FF

; landing in underworld
|0D8B63| db $FF, $FF, $FF, $FF

; bonk
|0D8B67| db $08 ; up
|0D8B68| db $0A ; down
|0D8B69| db $0A ; left
|0D8B6A| db $08 ; right

; hammer
; rods
|0D8B6B| db $20, $1D, $21 ; up
|0D8B6E| db $1D, $22, $1E ; down
|0D8B71| db $1F, $25, $26 ; left
|0D8B74| db $1F, $23, $24 ; right

; bow
|0D8B77| db $2A, $27, $27 ; up
|0D8B7A| db $29, $28, $28 ; down
|0D8B7D| db $2C, $2A, $2A ; left
|0D8B80| db $2D, $29, $29 ; right

; boomerang
|0D8B83| db $FF, $FF ; up
|0D8B85| db $FF, $FF ; down
|0D8B87| db $FF, $FF ; left
|0D8B89| db $FF, $FF ; right

; tall grass
|0D8B8B| db $FF, $FF, $FF, $FF, $FF, $FF ; up
|0D8B91| db $FF, $FF, $FF, $FF, $FF, $FF ; down
|0D8B97| db $FF, $FF, $FF, $FF, $FF, $FF ; left
|0D8B9D| db $FF, $FF, $FF, $FF, $FF, $FF ; right

; desert prayer
|0D8BA3| db $FF, $FF, $FF, $FF

; shovel
|0D8BA7| db $31, $31, $32 ; left
|0D8BAA| db $2F, $2F, $30 ; right

; walk carrying item
|0D8BAD| db $FF, $FF, $FF, $FF, $FF, $FF ; up
|0D8BB3| db $FF, $FF, $FF, $FF, $FF, $FF ; down
|0D8BB9| db $FF, $FF, $FF, $FF, $FF, $FF ; left
|0D8BBF| db $FF, $FF, $FF, $FF, $FF, $FF ; right

; throwing item
|0D8BC5| db $FF, $FF, $FF, $FF, $FF, $FF ; up
|0D8BCB| db $FF, $FF, $FF, $FF, $FF, $FF ; down
|0D8BD1| db $FF, $FF, $FF, $FF, $FF, $FF ; left
|0D8BD7| db $FF, $FF, $FF, $FF, $FF, $FF ; right

; spin attack
|0D8BDD| db $0A, $08, $05, $04, $0B, $09, $02, $03
|0D8BE5| db $08, $0A, $09, $0B, $04, $05, $03, $02

; lifting item
|0D8BED| db $FF, $FF, $FF ; up
|0D8BF0| db $FF, $FF, $FF ; down
|0D8BF3| db $FF, $FF, $FF ; left
|0D8BF6| db $FF, $FF, $FF ; right

; treading water
|0D8BF9| db $FF, $FF ; up
|0D8BFB| db $FF, $FF ; down
|0D8BFD| db $FF, $FF ; left
|0D8BFF| db $FF, $FF ; right

; fast swim
|0D8C01| db $FF, $FF, $FF, $FF ; up
|0D8C05| db $FF, $FF, $FF, $FF ; down
|0D8C09| db $FF, $FF, $FF, $FF ; left
|0D8C0D| db $FF, $FF, $FF, $FF ; right

; slow swim
|0D8C11| db $FF, $FF, $FF ; up
|0D8C14| db $FF, $FF, $FF ; down
|0D8C17| db $FF, $FF, $FF ; left
|0D8C1A| db $FF, $FF, $FF ; right

; zap
|0D8C1D| db $FF, $00, $03, $03 ; up
|0D8C21| db $FF, $01, $05, $05 ; down
|0D8C25| db $FF, $00, $03, $03 ; left
|0D8C29| db $FF, $01, $05, $05 ; right

; medallion spin
|0D8C2D| db $09, $02, $06, $04

; ether
|0D8C31| db $04, $0A, $06, $06

; bombos
|0D8C35| db $0A, $06, $08, $08, $08
|0D8C3A| db $01, $04, $0F, $0B, $07

; quake
|0D8C3F| db $04, $0A, $06, $07, $1C

; pushing
|0D8C44| db $FF, $FF, $FF, $FF, $FF, $FF ; up
|0D8C4A| db $FF, $FF, $FF, $FF, $FF, $FF ; down
|0D8C50| db $FF, $FF, $FF, $FF, $FF, $FF ; left
|0D8C56| db $FF, $FF, $FF, $FF, $FF, $FF ; right

; pull switch down
|0D8C5C| db $FF, $FF, $FF, $FF, $FF

; pull switch up
|0D8C61| db $FF, $FF, $FF, $FF

; ped pull
|0D8C65| db $FF, $FF

; grabbing
|0D8C67| db $FF, $FF, $FF, $FF ; up
|0D8C6B| db $FF, $FF, $FF, $FF ; down
|0D8C6F| db $FF, $FF, $FF, $FF ; left
|0D8C73| db $FF, $FF, $FF, $FF ; right

; walking up spiral stairs
|0D8C77| db $FF, $FF, $FF ; lower
|0D8C7A| db $FF, $FF, $FF ; higher

; walking down spiral stairs
|0D8C7D| db $FF, $FF, $FF ; higher
|0D8C80| db $FF, $FF, $FF ; lower

; death
|0D8C83| db $FF, $FF, $FF, $FF, $FF, $FF

; unused? arm swing
|0D8C89| db $FF, $FF, $FF ; up
|0D8C8C| db $FF, $FF, $FF ; down
|0D8C8F| db $FF, $FF, $FF ; left
|0D8C92| db $FF, $FF, $FF ; right

; item gets
|0D8C95| db $FF ; normal
|0D8C96| db $FF ; crystal/triforce

; sleep
|0D8C97| db $FF, $FF

; hookshot
|0D8C99| db $33 ; up
|0D8C9A| db $34 ; down
|0D8C9B| db $35 ; left
|0D8C9C| db $36 ; right

; bunny walk
; first frame used for standing still
|0D8C9D| db $FF, $FF, $FF, $FF ; up
|0D8CA1| db $FF, $FF, $FF, $FF ; down
|0D8CA5| db $FF, $FF, $FF, $FF ; left
|0D8CA9| db $FF, $FF, $FF, $FF ; right

; cane
|0D8CAD| db $44, $44, $46 ; up
|0D8CB0| db $44, $44, $43 ; down
|0D8CB3| db $47, $44, $4A ; left
|0D8CB6| db $49, $45, $48 ; right

; net
|0D8CB9| db $37
|0D8CBA| db $37, $38, $39, $3A, $3B
|0D8CBF| db $3C, $3D, $3E, $3F, $40, $41

; sword up
|0D8CC5| db $06

; book
|0D8CC6| db $4B

; tree pull
|0D8CC7| db $FF, $FF, $FF, $FF, $FF

; sword slash
|0D8CCC| db $01, $05, $0E, $1A, $0A, $06, $08, $10, $14 ; up
|0D8CD5| db $00, $02, $0D, $19, $09, $07, $0B, $13, $17 ; down
|0D8CDE| db $06, $08, $10, $14, $03, $00, $02, $0D, $19 ; left
|0D8CE7| db $06, $0A, $12, $16, $05, $01, $04, $0F, $1B ; right

;===================================================================================================

LinkAnimationShieldIndex:
; walking
; charging dash
; index 0 used for standing still
|0D8CF0| db $01, $01, $01, $01, $01, $01, $01, $01, $01 ; up
|0D8CF9| db $00, $00, $00, $00, $00, $00, $00, $00, $00 ; down
|0D8D02| db $03, $03, $03, $03, $03, $03, $03, $03, $03 ; left
|0D8D0B| db $02, $02, $02, $02, $02, $02, $02, $02, $02 ; right

; powder
|0D8D14| db $00, $00, $00, $00, $02, $02, $02, $02, $02 ; up
|0D8D1D| db $01, $01, $01, $01, $03, $03, $03, $03, $03 ; down
|0D8D26| db $01, $01, $01, $01, $01, $01, $01, $01, $01 ; left
|0D8D2F| db $01, $01, $01, $01, $01, $01, $01, $01, $01 ; right

; walking with sword out
|0D8D38| db $02, $02, $02, $02, $02, $02 ; up
|0D8D3E| db $03, $03, $03, $03, $03, $03 ; down
|0D8D44| db $FF, $FF, $FF, $FF, $FF, $FF ; left
|0D8D4A| db $FF, $FF, $FF, $FF, $FF, $FF ; right

; poking with sword
|0D8D50| db $02, $02, $02 ; up
|0D8D53| db $03, $03, $03 ; down
|0D8D56| db $01, $01, $01 ; left
|0D8D59| db $01, $01, $01 ; right

; falling
|0D8D5C| db $FF, $FF, $FF, $FF, $FF, $FF

; landing in underworld
|0D8D62| db $FF, $FF, $FF, $FF

; bonk
|0D8D66| db $01 ; up
|0D8D67| db $00 ; down
|0D8D68| db $01 ; left
|0D8D69| db $01 ; right

; hammer
; rods
|0D8D6A| db $02, $02, $02 ; up
|0D8D6D| db $03, $03, $03 ; down
|0D8D70| db $01, $01, $01 ; left
|0D8D73| db $01, $01, $01 ; right

; bow
|0D8D76| db $FF, $FF, $FF ; up
|0D8D79| db $FF, $FF, $FF ; down
|0D8D7C| db $FF, $FF, $FF ; left
|0D8D7F| db $FF, $FF, $FF ; right

; boomerang
|0D8D82| db $01, $02 ; up
|0D8D84| db $00, $03 ; down
|0D8D86| db $03, $01 ; left
|0D8D88| db $02, $01 ; right

; tall grass
|0D8D8A| db $01, $01, $01, $01, $01, $01 ; up
|0D8D90| db $00, $00, $00, $00, $00, $00 ; down
|0D8D96| db $03, $03, $03, $03, $03, $03 ; left
|0D8D9C| db $02, $02, $02, $02, $02, $02 ; right

; desert prayer
|0D8DA2| db $FF, $FF, $FF, $FF

; shovel
|0D8DA6| db $FF, $FF, $FF ; left
|0D8DA9| db $FF, $FF, $FF ; right

; walk carrying item
|0D8DAC| db $FF, $FF, $FF, $FF, $FF, $FF ; up
|0D8DB2| db $FF, $FF, $FF, $FF, $FF, $FF ; down
|0D8DB8| db $FF, $FF, $FF, $FF, $FF, $FF ; left
|0D8DBE| db $FF, $FF, $FF, $FF, $FF, $FF ; right

; throwing item
|0D8DC4| db $FF, $FF, $FF, $FF, $FF, $FF ; up
|0D8DCA| db $FF, $FF, $FF, $FF, $FF, $FF ; down
|0D8DD0| db $FF, $FF, $FF, $FF, $FF, $FF ; left
|0D8DD6| db $FF, $FF, $FF, $FF, $FF, $FF ; right

; spin attack
|0D8DDC| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0D8DE4| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

; lifting item
|0D8DEC| db $FF, $FF, $FF ; up
|0D8DEF| db $FF, $FF, $FF ; down
|0D8DF2| db $FF, $FF, $FF ; left
|0D8DF5| db $FF, $FF, $FF ; right

; treading water
|0D8DF8| db $FF, $FF ; up
|0D8DFA| db $FF, $FF ; down
|0D8DFC| db $FF, $FF ; left
|0D8DFE| db $FF, $FF ; right

; fast swim
|0D8E00| db $FF, $FF, $FF, $FF ; up
|0D8E04| db $FF, $FF, $FF, $FF ; down
|0D8E08| db $FF, $FF, $FF, $FF ; left
|0D8E0C| db $FF, $FF, $FF, $FF ; right

; slow swim
|0D8E10| db $FF, $FF, $FF ; up
|0D8E13| db $FF, $FF, $FF ; down
|0D8E16| db $FF, $FF, $FF ; left
|0D8E19| db $FF, $FF, $FF ; right

; zap
|0D8E1C| db $FF, $FF, $FF, $FF ; up
|0D8E20| db $FF, $FF, $FF, $FF ; down
|0D8E24| db $FF, $FF, $FF, $FF ; left
|0D8E28| db $FF, $FF, $FF, $FF ; right

; medallion spin
|0D8E2C| db $00, $03, $01, $02

; ether
|0D8E30| db $00, $00, $00, $00

; bombos
|0D8E34| db $00, $00, $00, $00, $00
|0D8E39| db $03, $03, $03, $03, $03

; quake
|0D8E3E| db $00, $00, $03, $00, $00

; pushing
|0D8E43| db $FF, $FF, $FF, $FF, $FF, $FF ; up
|0D8E49| db $FF, $FF, $FF, $FF, $FF, $FF ; down
|0D8E4F| db $FF, $FF, $FF, $FF, $FF, $FF ; left
|0D8E55| db $FF, $FF, $FF, $FF, $FF, $FF ; right

; pull switch down
|0D8E5B| db $FF, $FF, $FF, $FF, $FF

; pull switch up
|0D8E60| db $FF, $FF, $FF, $FF

; ped pull
|0D8E64| db $FF, $FF

; grabbing
|0D8E66| db $FF, $FF, $FF, $FF ; up
|0D8E6A| db $FF, $FF, $FF, $FF ; down
|0D8E6E| db $FF, $FF, $FF, $FF ; left
|0D8E72| db $FF, $FF, $FF, $FF ; right

; walking up spiral stairs
|0D8E76| db $FF, $FF, $FF ; lower
|0D8E79| db $FF, $FF, $FF ; higher

; walking down spiral stairs
|0D8E7C| db $FF, $FF, $FF ; higher
|0D8E7F| db $FF, $FF, $FF ; lower

; death
|0D8E82| db $FF, $FF, $FF, $FF, $FF, $FF

; unused? arm swing
|0D8E88| db $FF, $FF, $FF ; up
|0D8E8B| db $FF, $FF, $FF ; down
|0D8E8E| db $FF, $FF, $FF ; left
|0D8E91| db $FF, $FF, $FF ; right

; item gets
|0D8E94| db $03 ; normal
|0D8E95| db $FF ; crystal/triforce

; sleep
|0D8E96| db $FF, $FF

; hookshot
|0D8E98| db $02 ; up
|0D8E99| db $03 ; down
|0D8E9A| db $FF ; left
|0D8E9B| db $FF ; right

; bunny walk
; first frame used for standing still
|0D8E9C| db $FF, $FF, $FF, $FF ; up
|0D8EA0| db $FF, $FF, $FF, $FF ; down
|0D8EA4| db $FF, $FF, $FF, $FF ; left
|0D8EA8| db $FF, $FF, $FF, $FF ; right

; cane
|0D8EAC| db $FF, $FF, $FF ; up
|0D8EAF| db $FF, $FF, $FF ; down
|0D8EB2| db $FF, $FF, $FF ; left
|0D8EB5| db $FF, $FF, $FF ; right

; net
|0D8EB8| db $FF
|0D8EB9| db $FF, $FF, $FF, $FF, $FF
|0D8EBE| db $FF, $FF, $FF, $FF, $FF, $FF

; sword up
|0D8EC4| db $FF

; book
|0D8EC5| db $FF

; tree pull
|0D8EC6| db $FF, $FF, $FF, $FF, $FF

; sword slash
|0D8ECB| db $02, $02, $02, $02, $02, $02, $02, $02, $02 ; up
|0D8ED4| db $03, $03, $03, $03, $03, $03, $03, $03, $03 ; down
|0D8EDD| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; left
|0D8EE6| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; right

;===================================================================================================

LinkAnimationSwordY:
; walking
; charging dash
; index 0 used for standing still
|0D8EEF| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D8EF8| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D8F01| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D8F0A| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; right

; powder
|0D8F13| db   9,   5,  -2,  -6,  -8,  -5,  -3,  -1,   9 ; up
|0D8F1C| db  11,  15,  13,  17,  19,  17,  15,  13,  11 ; down
|0D8F25| db  -2,   2,   3,   4,  12,  15,  14,  19,  19 ; left
|0D8F2E| db  -2,   2,   3,   4,  12,  15,  14,  19,  19 ; right

; walking with sword out
|0D8F37| db  -5,  -4,  -3,  -5,  -4,  -3 ; up
|0D8F3D| db  16,  17,  18,  16,  17,  18 ; down
|0D8F43| db  13,  14,  15,  13,  14,  15 ; left
|0D8F49| db  13,  14,  15,  13,  14,  15 ; right

; poking with sword
|0D8F4F| db  -3,  -7,   2 ; up
|0D8F52| db  12,  18,  16 ; down
|0D8F55| db  15,  13,  10 ; left
|0D8F58| db  15,  13,  10 ; right

; falling
|0D8F5B| db  -1,  -1,  -1,  -1,  -1,  -1

; landing in underworld
|0D8F61| db  -1,  -1,  -1,  -1

; bonk
|0D8F65| db   2 ; up
|0D8F66| db   3 ; down
|0D8F67| db   6 ; left
|0D8F68| db   6 ; right

; hammer
; rods
|0D8F69| db  -8,  -3,  -3 ; up
|0D8F6C| db  -3,  10,  18 ; down
|0D8F6F| db  -2,   2,  14 ; left
|0D8F72| db  -2,   2,  14 ; right

; bow
|0D8F75| db   5,   9,   9 ; up
|0D8F78| db   9,  13,  13 ; down
|0D8F7B| db  10,   7,   7 ; left
|0D8F7E| db  10,   7,   7 ; right

; boomerang
|0D8F81| db  -1,  -1 ; up
|0D8F83| db  -1,  -1 ; down
|0D8F85| db  -1,  -1 ; left
|0D8F87| db  -1,  -1 ; right

; tall grass
|0D8F89| db  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D8F8F| db  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D8F95| db  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D8F9B| db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; desert prayer
|0D8FA1| db  -1,  -1,  -1,  -1

; shovel
|0D8FA5| db  10,  11,  -4 ; left
|0D8FA8| db  10,  11,  -4 ; right

; walk carrying item
|0D8FAB| db  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D8FB1| db  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D8FB7| db  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D8FBD| db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; throwing item
|0D8FC3| db  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D8FC9| db  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D8FCF| db  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D8FD5| db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; spin attack
|0D8FDB| db  -4,  -8,   6,  15,  18,  18,  14,   6
|0D8FE3| db  -7,  -7,  14,  17,  16,   8,   5,  12

; lifting item
|0D8FEB| db  -1,  -1,  -1 ; up
|0D8FEE| db  -1,  -1,  -1 ; down
|0D8FF1| db  -1,  -1,  -1 ; left
|0D8FF4| db  -1,  -1,  -1 ; right

; treading water
|0D8FF7| db  -1,  -1 ; up
|0D8FF9| db  -1,  -1 ; down
|0D8FFB| db  -1,  -1 ; left
|0D8FFD| db  -1,  -1 ; right

; fast swim
|0D8FFF| db  -1,  -1,  -1,  -1 ; up
|0D9003| db  -1,  -1,  -1,  -1 ; down
|0D9007| db  -1,  -1,  -1,  -1 ; left
|0D900B| db  -1,  -1,  -1,  -1 ; right

; slow swim
|0D900F| db  -1,  -1,  -1 ; up
|0D9012| db  -1,  -1,  -1 ; down
|0D9015| db  -1,  -1,  -1 ; left
|0D9018| db  -1,  -1,  -1 ; right

; zap
|0D901B| db  -1,   8,   6,  10 ; up
|0D901F| db  -1,   8,   6,  10 ; down
|0D9023| db  -1,   8,   6,  10 ; left
|0D9027| db  -1,   8,   6,  10 ; right

; medallion spin
|0D902B| db  16,  16,  -5,  16

; ether
|0D902F| db  13,  -4,  -5,  -5

; bombos
|0D9033| db  -1,  -5,  -5,  -5,  -5
|0D9038| db  11,  15,  13,  17,  19

; quake
|0D903D| db  13,  -3,  -7,  18,  18

; pushing
|0D9042| db  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D9048| db  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D904E| db  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D9054| db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; pull switch down
|0D905A| db  -1,  -1,  -1,  -1,  -1

; pull switch up
|0D905F| db  -1,  -1,  -1,  -1

; ped pull
|0D9063| db  -1,  -1

; grabbing
|0D9065| db  -1,  -1,  -1,  -1 ; up
|0D9069| db  -1,  -1,  -1,  -1 ; down
|0D906D| db  -1,  -1,  -1,  -1 ; left
|0D9071| db  -1,  -1,  -1,  -1 ; right

; walking up spiral stairs
|0D9075| db  -1,  -1,  -1 ; lower
|0D9078| db  -1,  -1,  -1 ; higher

; walking down spiral stairs
|0D907B| db  -1,  -1,  -1 ; higher
|0D907E| db  -1,  -1,  -1 ; lower

; death
|0D9081| db  -1,  -1,  -1,  -1,  -1,  -1

; unused? arm swing
|0D9087| db  -1,  -1,  -1 ; up
|0D908A| db  -1,  -1,  -1 ; down
|0D908D| db  -1,  -1,  -1 ; left
|0D9090| db  -1,  -1,  -1 ; right

; item gets
|0D9093| db  -1 ; normal
|0D9094| db  -1 ; crystal/triforce

; sleep
|0D9095| db  -1,  -1

; hookshot
|0D9097| db   2 ; up
|0D9098| db  17 ; down
|0D9099| db  12 ; left
|0D909A| db  12 ; right

; bunny walk
; first frame used for standing still
|0D909B| db  -1,  -1,  -1,  -1 ; up
|0D909F| db  -1,  -1,  -1,  -1 ; down
|0D90A3| db  -1,  -1,  -1,  -1 ; left
|0D90A7| db  -1,  -1,  -1,  -1 ; right

; cane
|0D90AB| db   5,  -2,  -9 ; up
|0D90AE| db  -7,  -2,  16 ; down
|0D90B1| db   2,  -2,  12 ; left
|0D90B4| db   2,  -2,  12 ; right

; net
|0D90B7| db  -4
|0D90B8| db  -5,   4,  14,  20,  15
|0D90BD| db   8,  -3,  -8,  14,  -3,  15

; sword up
|0D90C3| db  -5

; book
|0D90C4| db   0

; tree pull
|0D90C5| db  -1,  -1,  -1,  -1,  -1

; sword slash
|0D90CA| db   9,   5,  -3,  -9, -11, -15,  -9,  -4,   0 ; up
|0D90D3| db  11,  14,  12,  17,  19,  23,  17,  15,  13 ; down
|0D90DC| db  -2,  -1,   0,   0,   9,  12,  16,  16,  19 ; left
|0D90E5| db  -2,  -1,   0,   0,   9,  12,  16,  16,  19 ; right

;===================================================================================================

LinkAnimationSwordX:
; walking
; charging dash
; index 0 used for standing still
|0D90EE| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D90F7| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D9100| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D9109| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; right

; powder
|0D9112| db  11,  10,   6,   2,   0,  -4, -10, -13, -15 ; up
|0D911B| db  -8,  -6,  -5,  -3,   8,  12,  10,  14,  15 ; down
|0D9124| db   3,  -2,  -7, -11, -14, -11,  -9,  -7,   3 ; left
|0D912D| db   5,  10,   7,  11,  14,  11,   9,   7,   5 ; right

; walking with sword out
|0D9136| db   0,   0,   0,   0,   0,   0 ; up
|0D913C| db   7,   7,   7,   7,   7,   7 ; down
|0D9142| db -10, -10, -10, -10, -10, -10 ; left
|0D9148| db  10,  10,  10,  10,  10,  10 ; right

; poking with sword
|0D914E| db  -3,   2,  -3 ; up
|0D9151| db  10,   7,  10 ; down
|0D9154| db -12, -16,  -8 ; left
|0D9157| db  12,  16,   8 ; right

; falling
|0D915A| db  -1,  -1,  -1,  -1,  -1,  -1

; landing in underworld
|0D9160| db  -1,  -1,  -1,  -1

; bonk
|0D9164| db  -4 ; up
|0D9165| db  12 ; down
|0D9166| db   8 ; left
|0D9167| db   0 ; right

; hammer
; rods
|0D9168| db  -2,  -2,  -2 ; up
|0D916B| db  10,  10,   9 ; down
|0D916E| db   1, -10, -11 ; left
|0D9171| db   7,  10,  11 ; right

; bow
|0D9174| db  -2,  -5,  -5 ; up
|0D9177| db   9,   2,   2 ; down
|0D917A| db  -2,  -3,  -3 ; left
|0D917D| db   2,  11,  11 ; right

; boomerang
|0D9180| db  -1,  -1 ; up
|0D9182| db  -1,  -1 ; down
|0D9184| db  -1,  -1 ; left
|0D9186| db  -1,  -1 ; right

; tall grass
|0D9188| db  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D918E| db  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D9194| db  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D919A| db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; desert prayer
|0D91A0| db  -1,  -1,  -1,  -1

; shovel
|0D91A4| db  -3,  -7,   8 ; left
|0D91A7| db   3,   7,   0 ; right

; walk carrying item
|0D91AA| db  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D91B0| db  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D91B6| db  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D91BC| db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; throwing item
|0D91C2| db  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D91C8| db  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D91CE| db  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D91D4| db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; spin attack
|0D91DA| db  13,   6,  14,  14,   8,  -1, -14, -14
|0D91E2| db  -1,   9,  -5,   3,  10,  13, -11, -12

; lifting item
|0D91EA| db  -1,  -1,  -1 ; up
|0D91ED| db  -1,  -1,  -1 ; down
|0D91F0| db  -1,  -1,  -1 ; left
|0D91F3| db  -1,  -1,  -1 ; right

; treading water
|0D91F6| db  -1,  -1 ; up
|0D91F8| db  -1,  -1 ; down
|0D91FA| db  -1,  -1 ; left
|0D91FC| db  -1,  -1 ; right

; fast swim
|0D91FE| db  -1,  -1,  -1,  -1 ; up
|0D9202| db  -1,  -1,  -1,  -1 ; down
|0D9206| db  -1,  -1,  -1,  -1 ; left
|0D920A| db  -1,  -1,  -1,  -1 ; right

; slow swim
|0D920E| db  -1,  -1,  -1 ; up
|0D9211| db  -1,  -1,  -1 ; down
|0D9214| db  -1,  -1,  -1 ; left
|0D9217| db  -1,  -1,  -1 ; right

; zap
|0D921A| db  -1, -14, -13, -12 ; up
|0D921E| db  -1,  14,  13,  12 ; down
|0D9222| db  -1, -14, -13, -12 ; left
|0D9226| db  -1,  14,  13,  12 ; right

; medallion spin
|0D922A| db   7,  -9,   0,   9

; ether
|0D922E| db  14,  14,  10,  10

; bombos
|0D9232| db  14,  11,   8,   8,   8
|0D9237| db  15,  14,  12,  12,   8

; quake
|0D923C| db  15,  14,  10,   4,   4

; pushing
|0D9241| db  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D9247| db  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D924D| db  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D9253| db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; pull switch down
|0D9259| db  -1,  -1,  -1,  -1,  -1

; pull switch up
|0D925E| db  -1,  -1,  -1,  -1

; ped pull
|0D9262| db  -1,  -1

; grabbing
|0D9264| db  -1,  -1,  -1,  -1 ; up
|0D9268| db  -1,  -1,  -1,  -1 ; down
|0D926C| db  -1,  -1,  -1,  -1 ; left
|0D9270| db  -1,  -1,  -1,  -1 ; right

; walking up spiral stairs
|0D9274| db  -1,  -1,  -1 ; lower
|0D9277| db  -1,  -1,  -1 ; higher

; walking down spiral stairs
|0D927A| db  -1,  -1,  -1 ; higher
|0D927D| db  -1,  -1,  -1 ; lower

; death
|0D9280| db  -1,  -1,  -1,  -1,  -1,  -1

; unused? arm swing
|0D9286| db  -1,  -1,  -1 ; up
|0D9289| db  -1,  -1,  -1 ; down
|0D928C| db  -1,  -1,  -1 ; left
|0D928F| db  -1,  -1,  -1 ; right

; item gets
|0D9292| db  -1 ; normal
|0D9293| db  -1 ; crystal/triforce

; sleep
|0D9294| db  -1,  -1

; hookshot
|0D9296| db   4 ; up
|0D9297| db   4 ; down
|0D9298| db  -7 ; left
|0D9299| db  15 ; right

; bunny walk
; first frame used for standing still
|0D929A| db  -1,  -1,  -1,  -1 ; up
|0D929E| db  -1,  -1,  -1,  -1 ; down
|0D92A2| db  -1,  -1,  -1,  -1 ; left
|0D92A6| db  -1,  -1,  -1,  -1 ; right

; cane
|0D92AA| db  -1,  -3,  -3 ; up
|0D92AD| db   9,  12,   8 ; down
|0D92B0| db  10,   3, -13 ; left
|0D92B3| db -10,   5,  13 ; right

; net
|0D92B6| db  13
|0D92B7| db  13,  16,  11,   2, -11
|0D92BC| db -16,  -9,   0,   8,  -9, -11

; sword up
|0D92C2| db  12

; book
|0D92C3| db  -7

; tree pull
|0D92C4| db  -1,  -1,  -1,  -1,  -1

; sword slash
|0D92C9| db  11,   9,   7,   6,   3,  -1,  -5, -11, -14 ; up
|0D92D2| db  -8,  -7,  -6,  -5,   5,   8,  12,  10,  14 ; down
|0D92DB| db   3,  -2,  -8, -13, -16, -20, -15, -12,  -7 ; left
|0D92E4| db   5,  10,   8,  13,  16,  20,  15,  12,   7 ; right

;===================================================================================================

LinkAnimationAux1Y:
; falling
|0D92ED| db   0,  -1,  -1,   8,   8,   8,  -1

; landing in underworld
|0D92F4| db  -1,  -1,  -1

; lifting item
|0D92F7| db  -1,   7,  10 ; up
|0D92FA| db  -1,   5,   8 ; down
|0D92FD| db  -1,   8,  12 ; left
|0D9300| db  -1,   8,  12 ; right

; fast swim
|0D9303| db   2,   7,  13,  -1 ; up
|0D9307| db  20,  14,   7,  -1 ; down
|0D930B| db  20,  21,  20,  -1 ; left
|0D930F| db  20,  21,  20,  -1 ; right

; medallion spin
|0D9313| db  -1,  -1,  -1,  -1

; ether
|0D9317| db  -1,  -1,  -1,  -1

; bombos
|0D931B| db  -1,  -1,  -1,  -8,  -8
|0D9320| db  -1,  -1,  -1,  -1,  -1

; quake
|0D9325| db  -1,  -1,  -1,  -1,  -1

; pull switch down
|0D932A| db  -1,   5,  11,  -1,  -1

; pull switch up
|0D932F| db  -1,  -1,  -1,  -1

; ped pull
|0D9333| db  -1,  -1

; grabbing
|0D9335| db  -1,   5,  11,  -1 ; up
|0D9339| db  -1,   6,   1,  -1 ; down
|0D933D| db  -1,  13,  15,  -1 ; left
|0D9341| db  -1,  13,  15,  -1 ; right

; sword slash
|0D9345| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D934E| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D9357| db  -1,  -1,  -1,  -1,  12,  12,  12,  -1,  -1 ; left
|0D9360| db  -1,  -1,  -1,  -1,  12,  12,  12,  -1,  -1 ; right

;===================================================================================================

LinkAnimationAux1X:
; falling
|0D9369| db   8,  -1,  -1,   4,   4,   4,  -1

; landing in underworld
|0D9370| db  -1,  -1,  -1

; lifting item
|0D9373| db  -1,  -7,  -9 ; up
|0D9376| db  -1,  -8, -10 ; down
|0D9379| db  -1,  13,  16 ; left
|0D937C| db  -1,  -5,  -8 ; right

; fast swim
|0D937F| db  -2,  -6,  -5,  -1 ; up
|0D9383| db  -1,  -5,  -6,  -1 ; down
|0D9387| db  -3,   4,   9,  -1 ; left
|0D938B| db  11,   4,  -1,  -1 ; right

; medallion spin
|0D938F| db  -1,  -1,  -1,  -1

; ether
|0D9393| db  -1,  -1,  -1,  -1

; bombos
|0D9397| db  -1,  -1,  -1,   4,   4
|0D939C| db  -1,  -1,  -1,  -1,  -1

; quake
|0D93A1| db  -1,  -1,  -1,  -1,  -1

; pull switch down
|0D93A6| db  -1,  -5,  -8,  -1,  -1

; pull switch up
|0D93AB| db  -1,  -1,  -1,  -1

; ped pull
|0D93AF| db  -1,  -1

; grabbing
|0D93B1| db  -1,  -5,  -8,  -1 ; up
|0D93B5| db  -1,  -5,  -8,  -1 ; down
|0D93B9| db  -1,  15,  17,  -1 ; left
|0D93BD| db  -1,  -7,  -9,  -1 ; right

; sword slash
|0D93C1| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D93CA| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D93D3| db  -1,  -1,  -1,  -1,  -3,  -7,  -3,  -1,  -1 ; left
|0D93DC| db  -1,  -1,  -1,  -1,  11,  15,  11,  -1,  -1 ; right

;===================================================================================================

LinkAnimationAux2Y:
; falling
|0D93E5| db  16,  -1,  -1,  -1,  -1,  -1,  -1

; landing in underworld
|0D93EC| db  -1,  -1,  -1

; lifting item
|0D93EF| db  -1,   7,  10 ; up
|0D93F2| db  -1,   5,   8 ; down
|0D93F5| db  -1,  -1,  -1 ; left
|0D93F8| db  -1,  -1,  -1 ; right

; fast swim
|0D93FB| db   2,   7,  13,  -1 ; up
|0D93FF| db  20,  14,   7,  -1 ; down
|0D9403| db  -1,  -1,  -1,  -1 ; left
|0D9407| db  -1,  -1,  -1,  -1 ; right

; medallion spin
|0D940B| db  -1,  -1,  -1,  -1

; ether
|0D940F| db  -1,  -1,  -1,  -1

; bombos
|0D9413| db  -1,  -1,  -1,  -1,  -1
|0D9418| db  -1,  -1,  -1,  -1,  -1

; quake
|0D941D| db  -1,  -1,  -1,  -1,  -1

; pull switch down
|0D9422| db  -1,   5,  11,  -1,  -1

; pull switch up
|0D9427| db  -1,  -1,  -1,  -1

; ped pull
|0D942B| db  -1,  -1

; grabbing
|0D942D| db  -1,   5,  11,  -1 ; up
|0D9431| db  -1,   6,   1,  -1 ; down
|0D9435| db  -1,  -1,  -1,  -1 ; left
|0D9439| db  -1,  -1,  -1,  -1 ; right

; sword slash
|0D943D| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D9446| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D944F| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D9458| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; right

;===================================================================================================

LinkAnimationAux2X:
; falling
|0D9461| db  -8,  -1,  -1,  -1,  -1,  -1,  -1

; landing in underworld
|0D9468| db  -1,  -1,  -1

; lifting item
|0D946B| db  -1,  15,  17 ; up
|0D946E| db  -1,  16,  18 ; down
|0D9471| db  -1,  -1,  -1 ; left
|0D9474| db  -1,  -1,  -1 ; right

; fast swim
|0D9477| db  10,  14,  13,  -1 ; up
|0D947B| db   9,  14,  14,  -1 ; down
|0D947F| db  -1,  -1,  -1,  -1 ; left
|0D9483| db  -1,  -1,  -1,  -1 ; right

; medallion spin
|0D9487| db  -1,  -1,  -1,  -1

; ether
|0D948B| db  -1,  -1,  -1,  -1

; bombos
|0D948F| db  -1,  -1,  -1,  -1,  -1
|0D9494| db  -1,  -1,  -1,  -1,  -1

; quake
|0D9499| db  -1,  -1,  -1,  -1,  -1

; pull switch down
|0D949E| db  -1,  13,  16,  -1,  -1

; pull switch up
|0D94A3| db  -1,  -1,  -1,  -1

; ped pull
|0D94A7| db  -1,  -1

; grabbing
|0D94A9| db  -1,  13,  16,  -1 ; up
|0D94AD| db  -1,  13,  16,  -1 ; down
|0D94B1| db  -1,  -1,  -1,  -1 ; left
|0D94B5| db  -1,  -1,  -1,  -1 ; right

; sword slash
|0D94B9| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D94C2| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D94CB| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D94D4| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; right

;===================================================================================================

LinkAnimationShieldY:
; walking
; charging dash
; index 0 used for standing still
|0D94DD| db   5,   5,   4,   3,   5,   5,   4,   3,   5 ; up
|0D94E6| db   9,  10,   9,   7,   8,  10,   9,   7,   8 ; down
|0D94EF| db   5,   5,   4,   3,   4,   5,   4,   3,   4 ; left
|0D94F8| db   5,   5,   4,   3,   4,   5,   4,   3,   4 ; right

; powder
|0D9501| db  12,  12,   8,   8,   6,   6,   6,   6,   6 ; up
|0D950A| db   1,   1,   3,   3,   7,   7,   7,   7,   7 ; down
|0D9513| db   5,   5,   5,   5,   5,   5,   5,   5,   5 ; left
|0D951C| db   5,   5,   5,   5,   5,   5,   5,   5,   5 ; right

; walking with sword out
|0D9525| db   5,   6,   7,   5,   6,   7 ; up
|0D952B| db   6,   7,   8,   6,   7,   8 ; down
|0D9531| db  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D9537| db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; poking with sword
|0D953D| db   7,   5,   7 ; up
|0D9540| db   7,   8,   7 ; down
|0D9543| db   5,   5,   5 ; left
|0D9546| db   5,   5,   5 ; right

; falling
|0D9549| db  16,  -1,  -1,  -1,  -1,  -1

; landing in underworld
|0D954F| db  -1,  -1,  -1,  -1

; bonk
|0D9553| db   5 ; up
|0D9554| db   8 ; down
|0D9555| db   7 ; left
|0D9556| db   7 ; right

; hammer
; rods
|0D9557| db   6,   5,   5 ; up
|0D955A| db   7,   7,   7 ; down
|0D955D| db   5,   5,   5 ; left
|0D9560| db   5,   5,   5 ; right

; bow
|0D9563| db  -1,  -1,  -1 ; up
|0D9566| db  -1,  -1,  -1 ; down
|0D9569| db  -1,  -1,  -1 ; left
|0D956C| db  -1,  -1,  -1 ; right

; boomerang
|0D956F| db   6,   6 ; up
|0D9571| db  11,   7 ; down
|0D9573| db   4,   8 ; left
|0D9575| db   4,   8 ; right

; tall grass
|0D9577| db   4,   5,   6,   4,   5,   6 ; up
|0D957D| db  10,  11,  12,  10,  11,  12 ; down
|0D9583| db   5,   6,   7,   5,   6,   7 ; left
|0D9589| db   5,   6,   7,   5,   6,   7 ; right

; desert prayer
|0D958F| db  -1,  -1,  -1,  -1

; shovel
|0D9593| db  -1,  -1,  -1 ; left
|0D9596| db  -1,  -1,  -1 ; right

; walk carrying item
|0D9599| db  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D959F| db  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D95A5| db  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D95AB| db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; throwing item
|0D95B1| db  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D95B7| db  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D95BD| db  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D95C3| db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; spin attack
|0D95C9| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1
|0D95D1| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1

; lifting item
|0D95D9| db  -1,  -1,  -1 ; up
|0D95DC| db  -1,  -1,  -1 ; down
|0D95DF| db  -1,  -1,  -1 ; left
|0D95E2| db  -1,  -1,  -1 ; right

; treading water
|0D95E5| db  -1,  -1 ; up
|0D95E7| db  -1,  -1 ; down
|0D95E9| db  -1,  -1 ; left
|0D95EB| db  -1,  -1 ; right

; fast swim
|0D95ED| db  -1,  -1,  -1,  -1 ; up
|0D95F1| db  -1,  -1,  -1,  -1 ; down
|0D95F5| db  -1,  -1,  -1,  -1 ; left
|0D95F9| db  -1,  -1,  -1,  -1 ; right

; slow swim
|0D95FD| db  -1,  -1,  -1 ; up
|0D9600| db  -1,  -1,  -1 ; down
|0D9603| db  -1,  -1,  -1 ; left
|0D9606| db  -1,  -1,  -1 ; right

; zap
|0D9609| db  -1,  -1,  -1,  -1 ; up
|0D960D| db  -1,  -1,  -1,  -1 ; down
|0D9611| db  -1,  -1,  -1,  -1 ; left
|0D9615| db  -1,  -1,  -1,  -1 ; right

; medallion spin
|0D9619| db  10,   5,   4,   5

; ether
|0D961D| db  10,  10,  10,  10

; bombos
|0D9621| db  10,  10,  10,  10,  10
|0D9626| db   7,   7,   7,   7,   7

; quake
|0D962B| db  10,  10,   1,  10,  10

; pushing
|0D9630| db  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D9636| db  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D963C| db  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D9642| db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; pull switch down
|0D9648| db  -1,  -1,  -1,  -1,  -1

; pull switch up
|0D964D| db  -1,  -1,  -1,  -1

; ped pull
|0D9651| db  -1,  -1

; grabbing
|0D9653| db  -1,  -1,  -1,  -1 ; up
|0D9657| db  -1,  -1,  -1,  -1 ; down
|0D965B| db  -1,  -1,  -1,  -1 ; left
|0D965F| db  -1,  -1,  -1,  -1 ; right

; walking up spiral stairs
|0D9663| db  -1,  -1,  -1 ; lower
|0D9666| db  -1,  -1,  -1 ; higher

; walking down spiral stairs
|0D9669| db  -1,  -1,  -1 ; higher
|0D966C| db  -1,  -1,  -1 ; lower

; death
|0D966F| db  -1,  -1,  -1,  -1,  -1,  -1

; unused? arm swing
|0D9675| db   5,   5,   5 ; up
|0D9678| db   7,   7,   7 ; down
|0D967B| db  -1,  -1,  -1 ; left
|0D967E| db  -1,  -1,  -1 ; right

; item gets
|0D9681| db   9 ; normal
|0D9682| db  -1 ; crystal/triforce

; sleep
|0D9683| db  -1,  -1

; hookshot
|0D9685| db   5 ; up
|0D9686| db   7 ; down
|0D9687| db  -1 ; left
|0D9688| db  -1 ; right

; bunny walk
; first frame used for standing still
|0D9689| db  -1,  -1,  -1,  -1 ; up
|0D968D| db  -1,  -1,  -1,  -1 ; down
|0D9691| db  -1,  -1,  -1,  -1 ; left
|0D9695| db  -1,  -1,  -1,  -1 ; right

; cane
|0D9699| db  -1,  -1,  -1 ; up
|0D969C| db  -1,  -1,  -1 ; down
|0D969F| db  -1,  -1,  -1 ; left
|0D96A2| db  -1,  -1,  -1 ; right

; net
|0D96A5| db  -1
|0D96A6| db  -1,  -1,  -1,  -1,  -1
|0D96AB| db  -1,  -1,  -1,  -1,  -1,  -1

; sword up
|0D96B1| db  -1

; book
|0D96B2| db  -1

; tree pull
|0D96B3| db  -1,  -1,  -1,  -1,  -1

; sword slash
|0D96B8| db   8,   8,   6,   6,   4,   2,   5,   6,   6 ; up
|0D96C1| db   1,   1,   4,   4,   6,   8,   6,   6,   6 ; down
|0D96CA| db   4,   4,   4,   4,   4,   4,   4,   4,   4 ; left
|0D96D3| db   4,   4,   4,   4,   4,   4,   4,   4,   4 ; right

;===================================================================================================

LinkAnimationShieldX:
; walking
; charging dash
; index 0 used for standing still
|0D96DC| db   5,   5,   5,   5,   5,   5,   5,   5,   5 ; up
|0D96E5| db  -4,  -4,  -4,  -4,  -4,  -4,  -4,  -4,  -4 ; down
|0D96EE| db  -8,  -8,  -8,  -8,  -8,  -8,  -8,  -8,  -8 ; left
|0D96F7| db   8,   8,   8,   8,   8,   8,   8,   8,   8 ; right

; powder
|0D9700| db   6,   6,   8,   8,  10,  10,  10,  10,  10 ; up
|0D9709| db  -5,  -5,  -7,  -7, -10, -10, -10, -10, -10 ; down
|0D9712| db   1,   1,   1,   1,   0,   0,   0,   0,   0 ; left
|0D971B| db  -1,  -1,  -1,  -1,   0,   0,   0,   0,   0 ; right

; walking with sword out
|0D9724| db   9,   9,   9,   9,   9,   9 ; up
|0D972A| db  -9,  -9,  -9,  -9,  -9,  -9 ; down
|0D9730| db  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D9736| db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; poking with sword
|0D973C| db  10,  10,  10 ; up
|0D973F| db -10, -10, -10 ; down
|0D9742| db   0,  -1,   0 ; left
|0D9745| db   0,   1,   0 ; right

; falling
|0D9748| db  -4,  -1,  -1,  -1,  -1,  -1

; landing in underworld
|0D974E| db  -1,  -1,  -1,  -1

; bonk
|0D9752| db   8 ; up
|0D9753| db  -4 ; down
|0D9754| db   2 ; left
|0D9755| db  -3 ; right

; hammer
; rods
|0D9756| db   9,   9,   9 ; up
|0D9759| db -10, -10, -10 ; down
|0D975C| db   0,   0,   0 ; left
|0D975F| db   0,   0,   0 ; right

; bow
|0D9762| db  -1,  -1,  -1 ; up
|0D9765| db  -1,  -1,  -1 ; down
|0D9768| db  -1,  -1,  -1 ; left
|0D976B| db  -1,  -1,  -1 ; right

; boomerang
|0D976E| db   5,   9 ; up
|0D9770| db  -4, -10 ; down
|0D9772| db   0,   0 ; left
|0D9774| db   8,   0 ; right

; tall grass
|0D9776| db   5,   5,   5,   5,   5,   5 ; up
|0D977C| db  -4,  -4,  -4,  -4,  -4,  -4 ; down
|0D9782| db  -8,  -8,  -8,  -8,  -8,  -8 ; left
|0D9788| db   8,   8,   8,   8,   8,   8 ; right

; desert prayer
|0D978E| db  -1,  -1,  -1,  -1

; shovel
|0D9792| db  -1,  -1,  -1 ; left
|0D9795| db  -1,  -1,  -1 ; right

; walk carrying item
|0D9798| db  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D979E| db  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D97A4| db  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D97AA| db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; throwing item
|0D97B0| db  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D97B6| db  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D97BC| db  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D97C2| db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; spin attack
|0D97C8| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1
|0D97D0| db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1

; lifting item
|0D97D8| db  -1,  -1,  -1 ; up
|0D97DB| db  -1,  -1,  -1 ; down
|0D97DE| db  -1,  -1,  -1 ; left
|0D97E1| db  -1,  -1,  -1 ; right

; treading water
|0D97E4| db  -1,  -1 ; up
|0D97E6| db  -1,  -1 ; down
|0D97E8| db  -1,  -1 ; left
|0D97EA| db  -1,  -1 ; right

; fast swim
|0D97EC| db  -1,  -1,  -1,  -1 ; up
|0D97F0| db  -1,  -1,  -1,  -1 ; down
|0D97F4| db  -1,  -1,  -1,  -1 ; left
|0D97F8| db  -1,  -1,  -1,  -1 ; right

; slow swim
|0D97FC| db  -1,  -1,  -1 ; up
|0D97FF| db  -1,  -1,  -1 ; down
|0D9802| db  -1,  -1,  -1 ; left
|0D9805| db  -1,  -1,  -1 ; right

; zap
|0D9808| db  -1,  -1,  -1,  -1 ; up
|0D980C| db  -1,  -1,  -1,  -1 ; down
|0D9810| db  -1,  -1,  -1,  -1 ; left
|0D9814| db  -1,  -1,  -1,  -1 ; right

; medallion spin
|0D9818| db  -4,  -8,   5,   8

; ether
|0D981C| db  -4,  -4,  -4,  -4

; bombos
|0D9820| db  -5,  -5,  -5,  -5,  -5
|0D9825| db -10, -10, -10, -10, -10

; quake
|0D982A| db  -5,  -5,  -7,  -4,  -4

; pushing
|0D982F| db  -1,  -1,  -1,  -1,  -1,  -1 ; up
|0D9835| db  -1,  -1,  -1,  -1,  -1,  -1 ; down
|0D983B| db  -1,  -1,  -1,  -1,  -1,  -1 ; left
|0D9841| db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; pull switch down
|0D9847| db  -1,  -1,  -1,  -1,  -1

; pull switch up
|0D984C| db  -1,  -1,  -1,  -1

; ped pull
|0D9850| db  -1,  -1

; grabbing
|0D9852| db  -1,  -1,  -1,  -1 ; up
|0D9856| db  -1,  -1,  -1,  -1 ; down
|0D985A| db  -1,  -1,  -1,  -1 ; left
|0D985E| db  -1,  -1,  -1,  -1 ; right

; walking up spiral stairs
|0D9862| db  -1,  -1,  -1 ; lower
|0D9865| db  -1,  -1,  -1 ; higher

; walking down spiral stairs
|0D9868| db  -1,  -1,  -1 ; higher
|0D986B| db  -1,  -1,  -1 ; lower

; death
|0D986E| db  -1,  -1,  -1,  -1,  -1,  -1

; unused? arm swing
|0D9874| db   9,   9,   9 ; up
|0D9877| db -10, -10, -10 ; down
|0D987A| db  -1,  -1,  -1 ; left
|0D987D| db  -1,  -1,  -1 ; right

; item gets
|0D9880| db  -6 ; normal
|0D9881| db  -1 ; crystal/triforce

; sleep
|0D9882| db  -1,  -1

; hookshot
|0D9884| db  10 ; up
|0D9885| db -10 ; down
|0D9886| db  -1 ; left
|0D9887| db  -1 ; right

; bunny walk
; first frame used for standing still
|0D9888| db  -1,  -1,  -1,  -1 ; up
|0D988C| db  -1,  -1,  -1,  -1 ; down
|0D9890| db  -1,  -1,  -1,  -1 ; left
|0D9894| db  -1,  -1,  -1,  -1 ; right

; cane
|0D9898| db  -1,  -1,  -1 ; up
|0D989B| db  -1,  -1,  -1 ; down
|0D989E| db  -1,  -1,  -1 ; left
|0D98A1| db  -1,  -1,  -1 ; right

; net
|0D98A4| db  -1
|0D98A5| db  -1,  -1,  -1,  -1,  -1
|0D98AA| db  -1,  -1,  -1,  -1,  -1,  -1

; sword up
|0D98B0| db  -1

; book
|0D98B1| db  -1

; tree pull
|0D98B2| db  -1,  -1,  -1,  -1,  -1

; sword slash
|0D98B7| db  10,  10,  10,  10,  10,  10,  10,  10,  10 ; up
|0D98C0| db  -9,  -9,  -9,  -9, -10, -10, -10, -10, -10 ; down
|0D98C9| db   1,   1,   1,   2,   2,   2,   1,   2,   2 ; left
|0D98D2| db  -1,  -1,  -1,  -2,  -2,  -2,  -1,  -2,  -2 ; right

;===================================================================================================

LinkShadowOffsetY:
|0D98DB| db  16,  16,  17,  17
|0D98DF| db  16,  16,  16,  16
|0D98E3| db  18,  18,  18,  18

;===================================================================================================

LinkShadowOffsetX:
|0D98E7| db   0,   0,  -1,   1
|0D98EB| db   0,   0,   0,   0
|0D98EF| db   0,   0,   0,   0

;===================================================================================================

AttackHitboxY:
; walking
; charging dash
; index 0 used for standing still
|0D98F3| db $80, $80, $80, $80, $80, $80, $80, $80, $80 ; up
|0D98FC| db $80, $80, $80, $80, $80, $80, $80, $80, $80 ; down
|0D9905| db $80, $80, $80, $80, $80, $80, $80, $80, $80 ; left
|0D990E| db $80, $80, $80, $80, $80, $80, $80, $80, $80 ; right

; powder
|0D9917| db   9,   5,  -2,  -6,  -8,  -5,  -3,   7,   9 ; up
|0D9920| db  11,  15,  21,  25,  27,  25,  23,  13,  11 ; down
|0D9929| db  -2,   2,   3,  12,  12,  15,  22,  27,  27 ; left
|0D9932| db  -2,   2,   3,  12,  12,  15,  22,  27,  27 ; right

; walking with sword out
|0D993B| db  -5,  -4,  -3,  -5,  -4,  -3 ; up
|0D9941| db  24,  25,  26,  24,  25,  26 ; down
|0D9947| db  13,  14,  15,  13,  14,  15 ; left
|0D994D| db  13,  14,  15,  13,  14,  15 ; right

; poking with sword
|0D9953| db  -3,  -7,   2 ; up
|0D9956| db  20,  26,  24 ; down
|0D9959| db  10,  13,  15 ; left
|0D995C| db  10,  13,  15 ; right

; falling
|0D995F| db $80, $80, $80, $80, $80, $80

; landing in underworld
|0D9965| db $80, $80, $80, $80

; bonk
|0D9969| db $80 ; up
|0D996A| db $80 ; down
|0D996B| db $80 ; left
|0D996C| db $80 ; right

; hammer
; rods
|0D996D| db  -7,  -1,  -2 ; up
|0D9970| db  -3,  10,  26 ; down
|0D9973| db  -2,   3,  14 ; left
|0D9976| db  -2,   3,  14 ; right

; bow
|0D9979| db $80, $80, $80 ; up
|0D997C| db $80, $80, $80 ; down
|0D997F| db $80, $80, $80 ; left
|0D9982| db $80, $80, $80 ; right

; boomerang
|0D9985| db $80, $80 ; up
|0D9987| db $80, $80 ; down
|0D9989| db $80, $80 ; left
|0D998B| db $80, $80 ; right

; tall grass
|0D998D| db $80, $80, $80, $80, $80, $80 ; up
|0D9993| db $80, $80, $80, $80, $80, $80 ; down
|0D9999| db $80, $80, $80, $80, $80, $80 ; left
|0D999F| db $80, $80, $80, $80, $80, $80 ; right

; desert prayer
|0D99A5| db $80, $80, $80, $80

; shovel
|0D99A9| db $80, $80, $80 ; left
|0D99AC| db $80, $80, $80 ; right

; walk carrying item
|0D99AF| db $80, $80, $80, $80, $80, $80 ; up
|0D99B5| db $80, $80, $80, $80, $80, $80 ; down
|0D99BB| db $80, $80, $80, $80, $80, $80 ; left
|0D99C1| db $80, $80, $80, $80, $80, $80 ; right

; throwing item
|0D99C7| db $80, $80, $80, $80, $80, $80 ; up
|0D99CD| db $80, $80, $80, $80, $80, $80 ; down
|0D99D3| db $80, $80, $80, $80, $80, $80 ; left
|0D99D9| db $80, $80, $80, $80, $80, $80 ; right

; spin attack
|0D99DF| db  -4,  -8,   6,  15,  26,  26,  14,   6
|0D99E7| db  -7,  -7,  22,  26,  16,   8,   5,  12

; lifting item
|0D99EF| db $80, $80, $80 ; up
|0D99F2| db $80, $80, $80 ; down
|0D99F5| db $80, $80, $80 ; left
|0D99F8| db $80, $80, $80 ; right

; treading water
|0D99FB| db $80, $80 ; up
|0D99FD| db $80, $80 ; down
|0D99FF| db $80, $80 ; left
|0D9A01| db $80, $80 ; right

; fast swim
|0D9A03| db $80, $80, $80, $80 ; up
|0D9A07| db $80, $80, $80, $80 ; down
|0D9A0B| db $80, $80, $80, $80 ; left
|0D9A0F| db $80, $80, $80, $80 ; right

; slow swim
|0D9A13| db $80, $80, $80 ; up
|0D9A16| db $80, $80, $80 ; down
|0D9A19| db $80, $80, $80 ; left
|0D9A1C| db $80, $80, $80 ; right

; zap
|0D9A1F| db $80, $80, $80, $80 ; up
|0D9A23| db $80, $80, $80, $80 ; down
|0D9A27| db $80, $80, $80, $80 ; left
|0D9A2B| db $80, $80, $80, $80 ; right

; medallion spin
|0D9A2F| db  24,  16,  -5,  16

; ether
|0D9A33| db  13,  -4,  -5,  -5

; bombos
|0D9A37| db  -1,  -5,  -5,  -5,  -5
|0D9A3C| db  11,  15,  21,  25,  27

; quake
|0D9A41| db  13,  -3,  -7,  26,  18

; pushing
|0D9A46| db $80, $80, $80, $80, $80, $80 ; up
|0D9A4C| db $80, $80, $80, $80, $80, $80 ; down
|0D9A52| db $80, $80, $80, $80, $80, $80 ; left
|0D9A58| db $80, $80, $80, $80, $80, $80 ; right

; pull switch down
|0D9A5E| db $80, $80, $80, $80, $80

; pull switch up
|0D9A63| db $80, $80, $80, $80

; ped pull
|0D9A67| db $80, $80

; grabbing
|0D9A69| db $80, $80, $80, $80 ; up
|0D9A6D| db $80, $80, $80, $80 ; down
|0D9A71| db $80, $80, $80, $80 ; left
|0D9A75| db $80, $80, $80, $80 ; right

; walking up spiral stairs
|0D9A79| db $80, $80, $80 ; lower
|0D9A7C| db $80, $80, $80 ; higher

; walking down spiral stairs
|0D9A7F| db $80, $80, $80 ; higher
|0D9A82| db $80, $80, $80 ; lower

; death
|0D9A85| db $80, $80, $80, $80, $80, $80

; unused? arm swing
|0D9A8B| db $80, $80, $80 ; up
|0D9A8E| db $80, $80, $80 ; down
|0D9A91| db $80, $80, $80 ; left
|0D9A94| db $80, $80, $80 ; right

; item gets
|0D9A97| db $80 ; normal
|0D9A98| db $80 ; crystal/triforce

; sleep
|0D9A99| db $80, $80

; hookshot
|0D9A9B| db $80 ; up
|0D9A9C| db $80 ; down
|0D9A9D| db $80 ; left
|0D9A9E| db $80 ; right

; bunny walk
; first frame used for standing still
|0D9A9F| db $80, $80, $80, $80 ; up
|0D9AA3| db $80, $80, $80, $80 ; down
|0D9AA7| db $80, $80, $80, $80 ; left
|0D9AAB| db $80, $80, $80, $80 ; right

; cane
|0D9AAF| db $80, $80, $80 ; up
|0D9AB2| db $80, $80, $80 ; down
|0D9AB5| db $80, $80, $80 ; left
|0D9AB8| db $80, $80, $80 ; right

; net
|0D9ABB| db  -4
|0D9ABC| db  -5,   4,  14,  20,  15
|0D9AC1| db   8,  -3,  -8,  14,  -3,  15

; sword up
|0D9AC7| db $80

; book
|0D9AC8| db $80

; tree pull
|0D9AC9| db $80, $80, $80, $80, $80

; sword slash
|0D9ACE| db   9,   5,  -3,  -9, -11, -15,  -9,  -4,   8 ; up
|0D9AD7| db  11,  14,  20,  25,  27,  31,  25,  23,  13 ; down
|0D9AE0| db  -2,  -1,   0,   8,   9,  12,  16,  24,  30 ; left
|0D9AE9| db  -2,  -1,   0,   8,   9,  12,  16,  24,  30 ; right

;===================================================================================================

AttackHitboxX:
; walking
; charging dash
; index 0 used for standing still
|0D9AF2| db $80, $80, $80, $80, $80, $80, $80, $80, $80 ; up
|0D9AFB| db $80, $80, $80, $80, $80, $80, $80, $80, $80 ; down
|0D9B04| db $80, $80, $80, $80, $80, $80, $80, $80, $80 ; left
|0D9B0D| db $80, $80, $80, $80, $80, $80, $80, $80, $80 ; right

; powder
|0D9B16| db  19,  18,  14,  10,   0,  -4, -10, -13, -15 ; up
|0D9B1F| db  -8,  -6,  -5,   5,   8,  12,  18,  22,  23 ; down
|0D9B28| db   3,  -2,  -7, -11, -14, -11,  -9,   1,   3 ; left
|0D9B31| db   5,  10,  15,  19,  22,  19,  17,   7,   5 ; right

; walking with sword out
|0D9B3A| db   0,   0,   0,   0,   0,   0 ; up
|0D9B40| db   7,   7,   7,   7,   7,   7 ; down
|0D9B46| db -10, -10, -10, -10, -10, -10 ; left
|0D9B4C| db  18,  18,  18,  18,  18,  18 ; right

; poking with sword
|0D9B52| db  -3,   2,  -3 ; up
|0D9B55| db  10,   7,  10 ; down
|0D9B58| db -16, -24, -20 ; left
|0D9B5B| db  16,  24,  20 ; right

; falling
|0D9B5E| db $80, $80, $80, $80, $80, $80

; landing in underworld
|0D9B64| db $80, $80, $80, $80

; bonk
|0D9B68| db $80 ; up
|0D9B69| db $80 ; down
|0D9B6A| db $80 ; left
|0D9B6B| db $80 ; right

; hammer
; rods
|0D9B6C| db  -2,  -2,  -2 ; up
|0D9B6F| db  10,  10,  10 ; down
|0D9B72| db   1, -10, -11 ; left
|0D9B75| db   7,  18,  19 ; right

; bow
|0D9B78| db $80, $80, $80 ; up
|0D9B7B| db $80, $80, $80 ; down
|0D9B7E| db $80, $80, $80 ; left
|0D9B81| db $80, $80, $80 ; right

; boomerang
|0D9B84| db $80, $80 ; up
|0D9B86| db $80, $80 ; down
|0D9B88| db $80, $80 ; left
|0D9B8A| db $80, $80 ; right

; tall grass
|0D9B8C| db $80, $80, $80, $80, $80, $80 ; up
|0D9B92| db $80, $80, $80, $80, $80, $80 ; down
|0D9B98| db $80, $80, $80, $80, $80, $80 ; left
|0D9B9E| db $80, $80, $80, $80, $80, $80 ; right

; desert prayer
|0D9BA4| db $80, $80, $80, $80

; shovel
|0D9BA8| db $80, $80, $80 ; left
|0D9BAB| db $80, $80, $80 ; right

; walk carrying item
|0D9BAE| db $80, $80, $80, $80, $80, $80 ; up
|0D9BB4| db $80, $80, $80, $80, $80, $80 ; down
|0D9BBA| db $80, $80, $80, $80, $80, $80 ; left
|0D9BC0| db $80, $80, $80, $80, $80, $80 ; right

; throwing item
|0D9BC6| db $80, $80, $80, $80, $80, $80 ; up
|0D9BCC| db $80, $80, $80, $80, $80, $80 ; down
|0D9BD2| db $80, $80, $80, $80, $80, $80 ; left
|0D9BD8| db $80, $80, $80, $80, $80, $80 ; right

; spin attack
|0D9BDE| db  13,   6,  22,  22,   8,  -1, -14, -14
|0D9BE6| db  -1,   9,  -5,   3,  18,  21, -11, -12

; lifting item
|0D9BEE| db $80, $80, $80 ; up
|0D9BF1| db $80, $80, $80 ; down
|0D9BF4| db $80, $80, $80 ; left
|0D9BF7| db $80, $80, $80 ; right

; treading water
|0D9BFA| db $80, $80 ; up
|0D9BFC| db $80, $80 ; down
|0D9BFE| db $80, $80 ; left
|0D9C00| db $80, $80 ; right

; fast swim
|0D9C02| db $80, $80, $80, $80 ; up
|0D9C06| db $80, $80, $80, $80 ; down
|0D9C0A| db $80, $80, $80, $80 ; left
|0D9C0E| db $80, $80, $80, $80 ; right

; slow swim
|0D9C12| db $80, $80, $80 ; up
|0D9C15| db $80, $80, $80 ; down
|0D9C18| db $80, $80, $80 ; left
|0D9C1B| db $80, $80, $80 ; right

; zap
|0D9C1E| db $80, $80, $80, $80 ; up
|0D9C22| db $80, $80, $80, $80 ; down
|0D9C26| db $80, $80, $80, $80 ; left
|0D9C2A| db $80, $80, $80, $80 ; right

; medallion spin
|0D9C2E| db   7,  -9,   0,  17

; ether
|0D9C32| db  22,  14,  10,  10

; bombos
|0D9C36| db  14,  11,   8,   8,   8
|0D9C3B| db  23,  22,  20,  12,   8

; quake
|0D9C40| db  23,  14,  10,  12,  12

; pushing
|0D9C45| db $80, $80, $80, $80, $80, $80 ; up
|0D9C4B| db $80, $80, $80, $80, $80, $80 ; down
|0D9C51| db $80, $80, $80, $80, $80, $80 ; left
|0D9C57| db $80, $80, $80, $80, $80, $80 ; right

; pull switch down
|0D9C5D| db $80, $80, $80, $80, $80

; pull switch up
|0D9C62| db $80, $80, $80, $80

; ped pull
|0D9C66| db $80, $80

; grabbing
|0D9C68| db $80, $80, $80, $80 ; up
|0D9C6C| db $80, $80, $80, $80 ; down
|0D9C70| db $80, $80, $80, $80 ; left
|0D9C74| db $80, $80, $80, $80 ; right

; walking up spiral stairs
|0D9C78| db $80, $80, $80 ; lower
|0D9C7B| db $80, $80, $80 ; higher

; walking down spiral stairs
|0D9C7E| db $80, $80, $80 ; higher
|0D9C81| db $80, $80, $80 ; lower

; death
|0D9C84| db $80, $80, $80, $80, $80, $80

; unused? arm swing
|0D9C8A| db $80, $80, $80 ; up
|0D9C8D| db $80, $80, $80 ; down
|0D9C90| db $80, $80, $80 ; left
|0D9C93| db $80, $80, $80 ; right

; item gets
|0D9C96| db $80 ; normal
|0D9C97| db $80 ; crystal/triforce

; sleep
|0D9C98| db $80, $80

; hookshot
|0D9C9A| db $80 ; up
|0D9C9B| db $80 ; down
|0D9C9C| db $80 ; left
|0D9C9D| db $80 ; right

; bunny walk
; first frame used for standing still
|0D9C9E| db $80, $80, $80, $80 ; up
|0D9CA2| db $80, $80, $80, $80 ; down
|0D9CA6| db $80, $80, $80, $80 ; left
|0D9CAA| db $80, $80, $80, $80 ; right

; cane
|0D9CAE| db $80, $80, $80 ; up
|0D9CB1| db $80, $80, $80 ; down
|0D9CB4| db $80, $80, $80 ; left
|0D9CB7| db $80, $80, $80 ; right

; net
|0D9CBA| db  13
|0D9CBB| db  13,  16,  11,   2, -11
|0D9CC0| db -16,  -9,   0,  11,  -9, -11

; sword up
|0D9CC6| db $80

; book
|0D9CC7| db $80

; tree pull
|0D9CC8| db $80, $80, $80, $80, $80

; sword slash
|0D9CCD| db  19,  17,  15,  14,   3,  -1,  -5, -11, -14 ; up
|0D9CD6| db  -8,  -7,  -6,   3,   5,   8,  12,  18,  22 ; down
|0D9CDF| db   3,  -2,  -8, -13, -16, -20, -15, -12,   1 ; left
|0D9CE8| db   5,  10,  16,  21,  24,  28,  23,  20,   7 ; right

;===================================================================================================

LinkAnimationAuxBufferSet:
; walking
; charging dash
; index 0 used for standing still
|0D9CF1| db   2,   2,   2,   2,   2,   2,   2,   2,   2 ; up
|0D9CFA| db  10,  10,  10,  10,  10,  10,  10,  10,  10 ; down
|0D9D03| db   2,   2,   2,   2,   2,   2,   2,   2,   2 ; left
|0D9D0C| db   2,   2,   2,   2,   2,   2,   2,   2,   2 ; right

; powder
|0D9D15| db   3,   3,   3,   3,   3,   3,   3,   3,   1 ; up
|0D9D1E| db   0,   0,   0,   0,  11,  11,  11,  11,  11 ; down
|0D9D27| db   2,   2,   2,   2,   2,   2,   0,   0,   0 ; left
|0D9D30| db   2,   2,   2,   2,   2,   2,   0,   0,   0 ; right

; walking with sword out
|0D9D39| db   2,   2,   2,   2,   2,   2 ; up
|0D9D3F| db   1,   1,   1,   1,   1,   1 ; down
|0D9D45| db   0,   0,   0,   0,   0,   0 ; left
|0D9D4B| db   0,   0,   0,   0,   0,   0 ; right

; poking with sword
|0D9D51| db   3,   3,   3 ; up
|0D9D54| db   6,   6,   6 ; down
|0D9D57| db   5,   5,   5 ; left
|0D9D5A| db   5,   5,   5 ; right

; falling
|0D9D5D| db   1,   1,   1,   1,   1,   1

; landing in underworld
|0D9D63| db   1,   1,   1,   1

; bonk
|0D9D67| db   2 ; up
|0D9D68| db   3 ; down
|0D9D69| db   0 ; left
|0D9D6A| db   0 ; right

; hammer
; rods
|0D9D6B| db   0,   3,   3 ; up
|0D9D6E| db   6,   6,   6 ; down
|0D9D71| db   0,   0,   0 ; left
|0D9D74| db   0,   0,   0 ; right

; bow
|0D9D77| db   2,   2,   2 ; up
|0D9D7A| db   0,   0,   0 ; down
|0D9D7D| db   0,   0,   0 ; left
|0D9D80| db   0,   0,   0 ; right

; boomerang
|0D9D83| db   0,   3 ; up
|0D9D85| db   3,   3 ; down
|0D9D87| db   2,   0 ; left
|0D9D89| db   2,   0 ; right

; tall grass
|0D9D8B| db   2,   2,   2,   2,   2,   2 ; up
|0D9D91| db  10,  10,  10,  10,  10,  10 ; down
|0D9D97| db   2,   2,   2,   2,   2,   2 ; left
|0D9D9D| db   2,   2,   2,   2,   2,   2 ; right

; desert prayer
|0D9DA3| db   3,   3,   3,   3

; shovel
|0D9DA7| db   1,   1,   2 ; left
|0D9DAA| db   1,   1,   2 ; right

; walk carrying item
|0D9DAD| db   4,   4,   4,   4,   4,   4 ; up
|0D9DB3| db   3,   3,   3,   3,   3,   3 ; down
|0D9DB9| db   2,   2,   2,   2,   2,   2 ; left
|0D9DBF| db   2,   2,   2,   2,   2,   2 ; right

; throwing item
|0D9DC5| db   4,   4,   4,   4,   4,   4 ; up
|0D9DCB| db   3,   3,   3,   3,   3,   3 ; down
|0D9DD1| db   2,   2,   2,   2,   2,   2 ; left
|0D9DD7| db   2,   2,   2,   2,   2,   2 ; right

; spin attack
|0D9DDD| db   2,   2,   5,   5,   5,   5,   5,   5
|0D9DE5| db   2,   2,   5,   5,   5,   5,   2,   5

; lifting item
|0D9DED| db   0,   0,   0 ; up
|0D9DF0| db   0,   0,   0 ; down
|0D9DF3| db   0,   0,   0 ; left
|0D9DF6| db   0,   0,   0 ; right

; treading water
|0D9DF9| db   0,   0 ; up
|0D9DFB| db   0,   0 ; down
|0D9DFD| db   0,   0 ; left
|0D9DFF| db   0,   0 ; right

; fast swim
|0D9E01| db   7,   7,   7,   7 ; up
|0D9E05| db   8,   8,   8,   8 ; down
|0D9E09| db   9,   9,   9,   9 ; left
|0D9E0D| db   9,   9,   9,   9 ; right

; slow swim
|0D9E11| db   0,   0,   0 ; up
|0D9E14| db   7,   7,   7 ; down
|0D9E17| db   7,   7,   7 ; left
|0D9E1A| db   7,   7,   7 ; right

; zap
|0D9E1D| db   0,   0,   0,   0 ; up
|0D9E21| db   0,   0,   0,   0 ; down
|0D9E25| db   0,   0,   0,   0 ; left
|0D9E29| db   0,   0,   0,   0 ; right

; medallion spin
|0D9E2D| db   1,   1,   2,   1

; ether
|0D9E31| db   1,   1,   1,   1

; bombos
|0D9E35| db   1,   3,   3,  10,  10
|0D9E3A| db   1,   1,   1,   1,   1

; quake
|0D9E3F| db   1,   1,   1,   1,   1

; pushing
|0D9E44| db   0,   0,   0,   0,   0,   0 ; up
|0D9E4A| db   0,   0,   0,   0,   0,   0 ; down
|0D9E50| db   0,   0,   0,   0,   0,   0 ; left
|0D9E56| db   0,   0,   0,   0,   0,   0 ; right

; pull switch down
|0D9E5C| db   2,   2,   2,   2,   2

; pull switch up
|0D9E61| db   2,   2,   2,   2

; ped pull
|0D9E65| db   2,   2

; grabbing
|0D9E67| db   2,   2,   2,   2 ; up
|0D9E6B| db   2,   2,   2,   2 ; down
|0D9E6F| db   2,   2,   2,   2 ; left
|0D9E73| db   2,   2,   2,   2 ; right

; walking up spiral stairs
|0D9E77| db   2,   2,   2 ; lower
|0D9E7A| db   2,   2,   2 ; higher

; walking down spiral stairs
|0D9E7D| db   2,   2,   2 ; higher
|0D9E80| db   2,   2,   2 ; lower

; death
|0D9E83| db   2,   2,   2,   2,   2,   2

; unused? arm swing
|0D9E89| db   2,   2,   2 ; up
|0D9E8C| db   2,   2,   2 ; down
|0D9E8F| db   2,   2,   2 ; left
|0D9E92| db   2,   2,   2 ; right

; item gets
|0D9E95| db   1 ; normal
|0D9E96| db   1 ; crystal/triforce

; sleep
|0D9E97| db   2,   2

; hookshot
|0D9E99| db   3 ; up
|0D9E9A| db   6 ; down
|0D9E9B| db   5 ; left
|0D9E9C| db   5 ; right

; bunny walk
; first frame used for standing still
|0D9E9D| db   2,   2,   2,   2 ; up
|0D9EA1| db   2,   2,   2,   2 ; down
|0D9EA5| db   2,   2,   2,   2 ; left
|0D9EA9| db   2,   2,   2,   2 ; right

; cane
|0D9EAD| db   0,   0,   2 ; up
|0D9EB0| db   2,   0,   0 ; down
|0D9EB3| db   0,   0,   0 ; left
|0D9EB6| db   0,   0,   0 ; right

; net
|0D9EB9| db   2
|0D9EBA| db   2,   0,   0,   0,   0
|0D9EBF| db   0,   2,   2,   0,   2,   0

; sword up
|0D9EC5| db   5

; book
|0D9EC6| db   2

; tree pull
|0D9EC7| db   0,   0,   0,   0,   0

; sword slash
|0D9ECC| db   3,   3,   3,   3,   3,   3,   3,   3,   3 ; up
|0D9ED5| db   0,  11,  11,  11,  11,  11,  11,  11,  11 ; down
|0D9EDE| db   2,   2,   2,   2,   2,   0,   0,   0,   0 ; left
|0D9EE7| db   2,   2,   2,   2,   2,   0,   0,   0,   0 ; right

;===================================================================================================

LinkAnimationDataOffsets:
; up
|0D9EF0| dw $0000 ; 0x00 - Walking
|0D9EF2| dw $0024 ; 0x01 - Powder duplicate unused?
|0D9EF4| dw $0048 ; 0x02 - Sword out/Dashing
|0D9EF6| dw $0060 ; 0x03 - Sword poke
|0D9EF8| dw $006C ; 0x04 - Falling
|0D9EFA| dw $0076 ; 0x05 - Bonking/Recoil
|0D9EFC| dw $007A ; 0x06 - Rods/Hammer
|0D9EFE| dw $0086 ; 0x07 - Bow
|0D9F00| dw $0024 ; 0x08 - Powder
|0D9F02| dw $0092 ; 0x09 - Boom
|0D9F04| dw $009A ; 0x0A - Sloshing/Stairs
|0D9F06| dw $00B2 ; 0x0B - Prayer
|0D9F08| dw $00B9 ; 0x0C - Shovel
|0D9F0A| dw $00BC ; 0x0D - Carrying
|0D9F0C| dw $00D4 ; 0x0E - Throwing
|0D9F0E| dw $00EC ; 0x0F - Spin attack
|0D9F10| dw $00FC ; 0x10 - Lifting
|0D9F12| dw $0108 ; 0x11 - Treading water
|0D9F14| dw $0110 ; 0x12 - Stroked swimming
|0D9F16| dw $0120 ; 0x13 - Swimming
|0D9F18| dw $012C ; 0x14 - Zapped
|0D9F1A| dw $013C ; 0x15 - Medallions
|0D9F1C| dw $0153 ; 0x16 - Pushing
|0D9F1E| dw $016B ; 0x17 - Switch pull
|0D9F20| dw $0176 ; 0x18 - Grabbing/Pulling
|0D9F22| dw $0186 ; 0x19 - Diagonally up stairs
|0D9F24| dw $018C ; 0x1A - Diagonally down stairs
|0D9F26| dw $0192 ; 0x1B - Spin and die
|0D9F28| dw $0198 ; 0x1C - Arm swing (unused?)
|0D9F2A| dw $01A4 ; 0x1D - Item get
|0D9F2C| dw $01A5 ; 0x1E - 2 handed item get
|0D9F2E| dw $01A6 ; 0x1F - Sleeping
|0D9F30| dw $01A8 ; 0x20 - Hookshot
|0D9F32| dw $01AC ; 0x21 - Bunny
|0D9F34| dw $01BC ; 0x22 - Cane
|0D9F36| dw $01C8 ; 0x23 - Bug net
|0D9F38| dw $01D4 ; 0x24 - Sword up
|0D9F3A| dw $01D5 ; 0x25 - Book
|0D9F3C| dw $01D6 ; 0x26 - Tree pull
|0D9F3E| dw $01DB ; 0x27 - Sword slash

;---------------------------------------------------------------------------------------------------

; down
|0D9F40| dw $0009 ; 0x00 - Walking
|0D9F42| dw $002D ; 0x01 - Powder duplicate unused?
|0D9F44| dw $004E ; 0x02 - Sword out/Dashing
|0D9F46| dw $0063 ; 0x03 - Sword poke
|0D9F48| dw $006C ; 0x04 - Falling
|0D9F4A| dw $0077 ; 0x05 - Bonking/Recoil
|0D9F4C| dw $007D ; 0x06 - Rods/Hammer
|0D9F4E| dw $0089 ; 0x07 - Bow
|0D9F50| dw $002D ; 0x08 - Powder
|0D9F52| dw $0094 ; 0x09 - Boom
|0D9F54| dw $00A0 ; 0x0A - Sloshing/Stairs
|0D9F56| dw $00B2 ; 0x0B - Prayer
|0D9F58| dw $00B9 ; 0x0C - Shovel
|0D9F5A| dw $00C2 ; 0x0D - Carrying
|0D9F5C| dw $00DA ; 0x0E - Throwing
|0D9F5E| dw $00EC ; 0x0F - Spin attack
|0D9F60| dw $00FF ; 0x10 - Lifting
|0D9F62| dw $010A ; 0x11 - Treading water
|0D9F64| dw $0114 ; 0x12 - Stroked swimming
|0D9F66| dw $0123 ; 0x13 - Swimming
|0D9F68| dw $0130 ; 0x14 - Zapped
|0D9F6A| dw $013C ; 0x15 - Medallions
|0D9F6C| dw $0159 ; 0x16 - Pushing
|0D9F6E| dw $016B ; 0x17 - Switch pull
|0D9F70| dw $017A ; 0x18 - Grabbing/Pulling
|0D9F72| dw $0189 ; 0x19 - Diagonally up stairs
|0D9F74| dw $018F ; 0x1A - Diagonally down stairs
|0D9F76| dw $0192 ; 0x1B - Spin and die
|0D9F78| dw $019B ; 0x1C - Arm swing (unused?)
|0D9F7A| dw $01A4 ; 0x1D - Item get
|0D9F7C| dw $01A5 ; 0x1E - 2 handed item get
|0D9F7E| dw $01A6 ; 0x1F - Sleeping
|0D9F80| dw $01A9 ; 0x20 - Hookshot
|0D9F82| dw $01B0 ; 0x21 - Bunny
|0D9F84| dw $01BF ; 0x22 - Cane
|0D9F86| dw $01C8 ; 0x23 - Bug net
|0D9F88| dw $01D4 ; 0x24 - Sword up
|0D9F8A| dw $01D5 ; 0x25 - Book
|0D9F8C| dw $01D6 ; 0x26 - Tree pull
|0D9F8E| dw $01E4 ; 0x27 - Sword slash

;---------------------------------------------------------------------------------------------------

; left
|0D9F90| dw $0012 ; 0x00 - Walking
|0D9F92| dw $0036 ; 0x01 - Powder duplicate unused?
|0D9F94| dw $0054 ; 0x02 - Sword out/Dashing
|0D9F96| dw $0066 ; 0x03 - Sword poke
|0D9F98| dw $006C ; 0x04 - Falling
|0D9F9A| dw $0078 ; 0x05 - Bonking/Recoil
|0D9F9C| dw $0080 ; 0x06 - Rods/Hammer
|0D9F9E| dw $008C ; 0x07 - Bow
|0D9FA0| dw $0036 ; 0x08 - Powder
|0D9FA2| dw $0096 ; 0x09 - Boom
|0D9FA4| dw $00A6 ; 0x0A - Sloshing/Stairs
|0D9FA6| dw $00B2 ; 0x0B - Prayer
|0D9FA8| dw $00B6 ; 0x0C - Shovel
|0D9FAA| dw $00C8 ; 0x0D - Carrying
|0D9FAC| dw $00E0 ; 0x0E - Throwing
|0D9FAE| dw $00EC ; 0x0F - Spin attack
|0D9FB0| dw $0102 ; 0x10 - Lifting
|0D9FB2| dw $010C ; 0x11 - Treading water
|0D9FB4| dw $0118 ; 0x12 - Stroked swimming
|0D9FB6| dw $0126 ; 0x13 - Swimming
|0D9FB8| dw $0134 ; 0x14 - Zapped
|0D9FBA| dw $013C ; 0x15 - Medallions
|0D9FBC| dw $015F ; 0x16 - Pushing
|0D9FBE| dw $016B ; 0x17 - Switch pull
|0D9FC0| dw $017E ; 0x18 - Grabbing/Pulling
|0D9FC2| dw $0186 ; 0x19 - Diagonally up stairs
|0D9FC4| dw $018C ; 0x1A - Diagonally down stairs
|0D9FC6| dw $0192 ; 0x1B - Spin and die
|0D9FC8| dw $019E ; 0x1C - Arm swing (unused?)
|0D9FCA| dw $01A4 ; 0x1D - Item get
|0D9FCC| dw $01A5 ; 0x1E - 2 handed item get
|0D9FCE| dw $01A6 ; 0x1F - Sleeping
|0D9FD0| dw $01AA ; 0x20 - Hookshot
|0D9FD2| dw $01B4 ; 0x21 - Bunny
|0D9FD4| dw $01C2 ; 0x22 - Cane
|0D9FD6| dw $01C8 ; 0x23 - Bug net
|0D9FD8| dw $01D4 ; 0x24 - Sword up
|0D9FDA| dw $01D5 ; 0x25 - Book
|0D9FDC| dw $01D6 ; 0x26 - Tree pull
|0D9FDE| dw $01ED ; 0x27 - Sword slash

;---------------------------------------------------------------------------------------------------

; right
|0D9FE0| dw $001B ; 0x00 - Walking
|0D9FE2| dw $003F ; 0x01 - Powder duplicate unused?
|0D9FE4| dw $005A ; 0x02 - Sword out/Dashing
|0D9FE6| dw $0069 ; 0x03 - Sword poke
|0D9FE8| dw $006C ; 0x04 - Falling
|0D9FEA| dw $0079 ; 0x05 - Bonking/Recoil
|0D9FEC| dw $0083 ; 0x06 - Rods/Hammer
|0D9FEE| dw $008F ; 0x07 - Bow
|0D9FF0| dw $003F ; 0x08 - Powder
|0D9FF2| dw $0098 ; 0x09 - Boom
|0D9FF4| dw $00AC ; 0x0A - Sloshing/Stairs
|0D9FF6| dw $00B2 ; 0x0B - Prayer
|0D9FF8| dw $00B9 ; 0x0C - Shovel
|0D9FFA| dw $00CE ; 0x0D - Carrying
|0D9FFC| dw $00E6 ; 0x0E - Throwing
|0D9FFE| dw $00EC ; 0x0F - Spin attack
|0DA000| dw $0105 ; 0x10 - Lifting
|0DA002| dw $010E ; 0x11 - Treading water
|0DA004| dw $011C ; 0x12 - Stroked swimming
|0DA006| dw $0129 ; 0x13 - Swimming
|0DA008| dw $0138 ; 0x14 - Zapped
|0DA00A| dw $013C ; 0x15 - Medallions
|0DA00C| dw $0165 ; 0x16 - Pushing
|0DA00E| dw $016B ; 0x17 - Switch pull
|0DA010| dw $0182 ; 0x18 - Grabbing/Pulling
|0DA012| dw $0189 ; 0x19 - Diagonally up stairs
|0DA014| dw $018F ; 0x1A - Diagonally down stairs
|0DA016| dw $0192 ; 0x1B - Spin and die
|0DA018| dw $01A1 ; 0x1C - Arm swing (unused?)
|0DA01A| dw $01A4 ; 0x1D - Item get
|0DA01C| dw $01A5 ; 0x1E - 2 handed item get
|0DA01E| dw $01A6 ; 0x1F - Sleeping
|0DA020| dw $01AB ; 0x20 - Hookshot
|0DA022| dw $01B8 ; 0x21 - Bunny
|0DA024| dw $01C5 ; 0x22 - Cane
|0DA026| dw $01C8 ; 0x23 - Bug net
|0DA028| dw $01D4 ; 0x24 - Sword up
|0DA02A| dw $01D5 ; 0x25 - Book
|0DA02C| dw $01D6 ; 0x26 - Tree pull
|0DA02E| dw $01F6 ; 0x27 - Sword slash

;===================================================================================================

LinkAnimationDirectionToTableOffset:
|0DA030| dw $0000 ; up
|0DA032| dw $0050 ; down
|0DA034| dw $00A0 ; left
|0DA036| dw $00F0 ; right

;---------------------------------------------------------------------------------------------------

LinkAnimationAuxOffsets:
; up
|0DA038| dw $0000 ; falling
|0DA03A| dw $000A ; lifting item
|0DA03C| dw $0016 ; fast swim
|0DA03E| dw $0026 ; medallions
|0DA040| dw $003D ; pull switch
|0DA042| dw $0048 ; grabbing
|0DA044| dw $0058 ; sword slash

; down
|0DA046| dw $0000 ; falling
|0DA048| dw $000D ; lifting item
|0DA04A| dw $001A ; fast swim
|0DA04C| dw $0026 ; medallions
|0DA04E| dw $003D ; pull switch
|0DA050| dw $004C ; grabbing
|0DA052| dw $0061 ; sword slash

; left
|0DA054| dw $0000 ; falling
|0DA056| dw $0010 ; lifting item
|0DA058| dw $001E ; fast swim
|0DA05A| dw $0026 ; medallions
|0DA05C| dw $003D ; pull switch
|0DA05E| dw $0050 ; grabbing
|0DA060| dw $006A ; sword slash

; right
|0DA062| dw $0000 ; falling
|0DA064| dw $0013 ; lifting item
|0DA066| dw $0022 ; fast swim
|0DA068| dw $0026 ; medallions
|0DA06A| dw $003D ; pull switch
|0DA06C| dw $0054 ; grabbing
|0DA06E| dw $0073 ; sword slash

;---------------------------------------------------------------------------------------------------

LinkAnimationAuxDirectionToTableOffset:
|0DA070| dw $0000 ; up
|0DA072| dw $000E ; down
|0DA074| dw $001C ; left
|0DA076| dw $002A ; right

;===================================================================================================

Aux1OAMBufferOffsets_SetA:
|0DA078| db $00, $08, $00, $08
|0DA07C| db $08, $0C, $14, $08
|0DA080| db $08, $00, $00, $00

Aux2OAMBufferOffsets_SetA:
|0DA084| db $04, $0C, $04, $0C
|0DA088| db $0C, $10, $18, $0C
|0DA08C| db $0C, $0C, $04, $04

;---------------------------------------------------------------------------------------------------

WeaponOAMBufferOffsets_SetA:
|0DA090| db $08, $10, $10, $18
|0DA094| db $10, $00, $00, $10
|0DA098| db $18, $10, $18, $10

ElfOAMBufferOffsets_SetA:
|0DA09C| db $14, $1C, $08, $10
|0DA0A0| db $00, $14, $18, $00
|0DA0A4| db $10, $04, $10, $1C

;---------------------------------------------------------------------------------------------------

ShieldOAMBufferOffsets_SetA:
|0DA0A8| db $1C, $00, $1C, $00
|0DA0AC| db $18, $1C, $0C, $1C
|0DA0B0| db $24, $1C, $08, $08

ShadowOAMBufferOffsets_SetA:
|0DA0B4| db $28, $28, $28, $28
|0DA0B8| db $28, $28, $28, $28
|0DA0BC| db $00, $28, $28, $28

;---------------------------------------------------------------------------------------------------

Aux1OAMBufferOffsets_SetB:
|0DA0C0| db $14, $1C, $08, $10
|0DA0C4| db $10, $14, $1C, $10
|0DA0C8| db $08, $08, $08, $14

Aux2OAMBufferOffsets_SetB:
|0DA0CC| db $18, $20, $0C, $14
|0DA0D0| db $14, $18, $20, $14
|0DA0D4| db $0C, $14, $0C, $18

;---------------------------------------------------------------------------------------------------

WeaponOAMBufferOffsets_SetB:
|0DA0D8| db $00, $00, $18, $20
|0DA0DC| db $18, $00, $00, $18
|0DA0E0| db $18, $18, $20, $00

ElfOAMBufferOffsets_SetB:
|0DA0E4| db $1C, $24, $10, $18
|0DA0E8| db $08, $1C, $24, $08
|0DA0EC| db $10, $0C, $18, $24

;---------------------------------------------------------------------------------------------------

ShieldOAMBufferOffsets_SetB:
|0DA0F0| db $24, $14, $24, $08
|0DA0F4| db $20, $24, $14, $24
|0DA0F8| db $24, $24, $10, $1C

ShadowOAMBufferOffsets_SetB:
|0DA0FC| db $0C, $0C, $00, $00
|0DA100| db $00, $0C, $0C, $00
|0DA104| db $00, $00, $00, $0C

;===================================================================================================

Aux1OAMBufferOffsetPointers:
|0DA108| dw Aux1OAMBufferOffsets_SetA
|0DA10A| dw Aux1OAMBufferOffsets_SetB

;---------------------------------------------------------------------------------------------------

Aux2OAMBufferOffsetPointers:
|0DA10C| dw Aux2OAMBufferOffsets_SetA
|0DA10E| dw Aux2OAMBufferOffsets_SetB

;---------------------------------------------------------------------------------------------------

WeaponOAMBufferOffsetPointers:
|0DA110| dw WeaponOAMBufferOffsets_SetA
|0DA112| dw WeaponOAMBufferOffsets_SetB

;---------------------------------------------------------------------------------------------------

ElfOAMBufferOffsetPointers:
|0DA114| dw ElfOAMBufferOffsets_SetA
|0DA116| dw ElfOAMBufferOffsets_SetB

;---------------------------------------------------------------------------------------------------

ShieldOAMBufferOffsetPointers:
|0DA118| dw ShieldOAMBufferOffsets_SetA
|0DA11A| dw ShieldOAMBufferOffsets_SetB

;---------------------------------------------------------------------------------------------------

ShadowOAMBufferOffsetPointers:
|0DA11C| dw ShadowOAMBufferOffsets_SetA
|0DA11E| dw ShadowOAMBufferOffsets_SetB

;===================================================================================================
; Works with $0352, so it appears to be OAM buffer offsets
;===================================================================================================
LinkOAMBufferOffset:
|0DA120| dw $0190, $00E0, $0000

;===================================================================================================
; Link's priority bits for OAM via $EE
;===================================================================================================
LinkObjectPriority:
|0DA126| dw $2000, $1000, $3000, $2000

;===================================================================================================

RodOAMPalette:
|0DA12E| db $02 ; fire rod
|0DA12F| db $04 ; ice rod
|0DA130| db $04 ; ice rod

;===================================================================================================

ClimbingStairsPose:
|0DA131| db $00, $01, $02, $00, $01, $02, $00, $01
|0DA139| db $02

;===================================================================================================

ItemsAUseDrawIndex:
|0DA13A| db $06 ; rod
|0DA13B| db $06 ; hammer
|0DA13C| db $06 ; unused
|0DA13D| db $06 ; unused
|0DA13E| db $07 ; bow
|0DA13F| db $07 ; unused
|0DA140| db $08 ; powder
|0DA141| db $09 ; boomerang

ItemsBUseDrawIndex:
|0DA142| db $0C ; shovel
|0DA143| db $0B ; unused prayer
|0DA144| db $20 ; hookshot
|0DA145| db $22 ; cane
|0DA146| db $23 ; net
|0DA147| db $25 ; book

;===================================================================================================

; Based on $0308
WeirdGrabIndices:
|0DA148| db $26 ; tree pull
|0DA149| db $0B ; prayer
|0DA14A| db $0B ; unused
|0DA14B| db $0C ; TODO interesting...
|0DA14C| db $0B ; unused
|0DA14D| db $0B ; unused
|0DA14E| db $0B ; unused
|0DA14F| db $0D ; carry/toss

;===================================================================================================

AnimationsWithAuxParts:
|0DA150| dw $0004 ; falling
|0DA152| dw $0010 ; lifting item
|0DA154| dw $0012 ; fast swim
|0DA156| dw $0015 ; medallions
|0DA158| dw $0017 ; pull switch
|0DA15A| dw $0018 ; grabbing
|0DA15C| dw $0027 ; sword slash

;===================================================================================================

StraightStairsYOffset:
|0DA15E| dw  0, -2, -3,  0, -2, -3 ; up
|0DA16A| dw  0,  0,  0,  0,  0,  0 ; up
|0DA176| dw  0, -2, -3,  0, -2, -3 ; down
|0DA182| dw  0,  0,  0,  0,  0,  0 ; down

;===================================================================================================
; This handles all of Link's drawingness
;===================================================================================================
DrawLink:
|0DA18E| PHB
|0DA18F| PHK
|0DA190| PLB

|0DA191| LDY.b #$00

; This seems to handle straight staircases in the underworld
; these submodules correspond to data transfers in the overworld module
; and do indeed run code, but the screen is blank
; so, ultimately, it appears to be irrelevant there
|0DA193| LDA.b $11
|0DA195| CMP.b #$12
|0DA197| BEQ .stairs

|0DA199| LDY.b #$18
|0DA19B| CMP.b #$13
|0DA19D| BNE .not_stairs

.stairs
|0DA19F| STY.b $00

|0DA1A1| LDA.b $20 ; shoulda used PEI smdh
|0DA1A3| PHA

|0DA1A4| LDA.b $21
|0DA1A6| PHA

|0DA1A7| LDY.b #$00

|0DA1A9| LDA.w $0462
|0DA1AC| AND.b #$04
|0DA1AE| BEQ .upwards_stairs

|0DA1B0| LDY.b #$0C

.upwards_stairs
|0DA1B2| TYA
|0DA1B3| CLC
|0DA1B4| ADC.b $00
|0DA1B6| STA.b $00

|0DA1B8| LDA.b $2E
|0DA1BA| CMP.b #$06
|0DA1BC| BCC .valid_stairs_animation_step

|0DA1BE| LDA.b #$00

.valid_stairs_animation_step
|0DA1C0| ASL A
|0DA1C1| CLC
|0DA1C2| ADC.b $00
|0DA1C4| TAY

|0DA1C5| REP #$20

|0DA1C7| LDA.w StraightStairsYOffset,Y
|0DA1CA| CLC
|0DA1CB| ADC.b $20
|0DA1CD| STA.b $20

|0DA1CF| SEP #$20

;---------------------------------------------------------------------------------------------------

.not_stairs
; calculate a camera based offset
|0DA1D1| LDA.b $20 ; Y coord
|0DA1D3| SEC
|0DA1D4| SBC.b $E8
|0DA1D6| STA.b $01

|0DA1D8| LDA.b $22 ; X coord
|0DA1DA| SEC
|0DA1DB| SBC.b $E2
|0DA1DD| STA.b $00

|0DA1DF| LDA.b #$80 ; some secondary offset
|0DA1E1| STA.b $45
|0DA1E3| STA.b $44

|0DA1E5| LDX.b #$00

|0DA1E7| LDA.w $0351 ; ripples or grass?
|0DA1EA| BEQ .no_feet_stuff

|0DA1EC| LDX.b #$01

.no_feet_stuff
|0DA1EE| TXA ; why didn't you just use A for this and X for checking?
|0DA1EF| ASL A
|0DA1F0| STA.b $72
|0DA1F2| STZ.b $73

;---------------------------------------------------------------------------------------------------

; use Link's layer to determine his objects' priority
|0DA1F4| REP #$20

|0DA1F6| LDA.b $EE
|0DA1F8| AND.w #$00FF
|0DA1FB| ASL A
|0DA1FC| TAX

|0DA1FD| LDA.w LinkObjectPriority,X
|0DA200| STA.b $64

|0DA202| LDA.w $0FB3
|0DA205| ASL A
|0DA206| TAY

|0DA207| LDA.w LinkOAMBufferOffset,Y
|0DA20A| STA.w $0352

|0DA20D| SEP #$20

|0DA20F| LDA.b $5D
|0DA211| CMP.b #$16 ; LINKSTATE 16
|0DA213| BNE .not_in_bed

|0DA215| LDY.b #$1F

|0DA217| LDA.w $037D
|0DA21A| CMP.b #$02
|0DA21C| BEQ .not_in_bed

|0DA21E| STA.b $02

|0DA220| BRL ContinueDrawingLink

;---------------------------------------------------------------------------------------------------

.not_in_bed
|0DA223| LDA.w $03EF
|0DA226| BEQ .not_sword_up

|0DA228| LDY.b #$24
|0DA22A| STZ.b $02

|0DA22C| LDA.b $2F
|0DA22E| STA.w $0323

|0DA231| BRL ContinueDrawingLink

;---------------------------------------------------------------------------------------------------

.not_sword_up
|0DA234| LDA.w $02E0
|0DA237| BEQ .not_bunny

|0DA239| LDY.b #$21

|0DA23B| LDA.b $2E
|0DA23D| AND.b #$03
|0DA23F| STA.b $02

|0DA241| LDA.b $2F
|0DA243| STA.w $0323

|0DA246| BRL ContinueDrawingLink

;---------------------------------------------------------------------------------------------------

.not_bunny
|0DA249| LDY.b #$00

|0DA24B| LDA.w $0351
|0DA24E| BEQ .not_grass

|0DA250| LDY.b #$0A

.not_grass
|0DA252| LDA.b $11
|0DA254| CMP.b #$0E
|0DA256| BNE .skip_stairs_direction_check

|0DA258| LDA.b $10
|0DA25A| CMP.b #$12
|0DA25C| BEQ .skip_stairs_direction_check

|0DA25E| LDY.b #$0A
|0DA260| LDA.b $28
|0DA262| BEQ .skip_stairs_direction_check

;---------------------------------------------------------------------------------------------------

|0DA264| LDX.b $2F
|0DA266| CPX.b #$04
|0DA268| BEQ .not_auto_left_or_right

|0DA26A| CPX.b #$06
|0DA26C| BEQ .not_auto_left_or_right

|0DA26E| LDX.b $2E

|0DA270| LDA.w ClimbingStairsPose,X
|0DA273| STA.b $02

|0DA275| LDY.b #$19

|0DA277| LDA.w $0462
|0DA27A| AND.b #$04
|0DA27C| BEQ .continue_a

|0DA27E| LDY.b #$1A
|0DA280| BRA .continue_a

;---------------------------------------------------------------------------------------------------

.skip_stairs_direction_check
|0DA282| LDA.w $0376
|0DA285| AND.b #$03
|0DA287| BEQ .not_grabbing

|0DA289| LDY.b #$18

|0DA28B| LDA.w $030A
|0DA28E| STA.b $02
|0DA290| BRA .continue_a

;---------------------------------------------------------------------------------------------------

.not_grabbing
|0DA292| LDA.b $48
|0DA294| AND.b #$0D
|0DA296| BEQ .not_auto_left_or_right

|0DA298| LDY.b #$16

|0DA29A| LDA.b $2E
|0DA29C| CMP.b #$05
|0DA29E| BCC .not_auto_left_or_right

|0DA2A0| STZ.b $2E

.not_auto_left_or_right
|0DA2A2| LDA.b $2E
|0DA2A4| STA.b $02

;---------------------------------------------------------------------------------------------------

.continue_a
|0DA2A6| LDA.b $2F
|0DA2A8| STA.w $0323

|0DA2AB| LDA.w $0345
|0DA2AE| BEQ .not_in_deep_water

|0DA2B0| LDA.b #$20
|0DA2B2| STA.b $65
|0DA2B4| STZ.b $64

.not_in_deep_water
|0DA2B6| LDA.b $5D
|0DA2B8| CMP.b #$04 ; LINKSTATE 04
|0DA2BA| BNE .not_swimming

|0DA2BC| LDY.b #$11

|0DA2BE| LDA.b $02
|0DA2C0| AND.b #$01
|0DA2C2| STA.b $02

|0DA2C4| LDA.b $11
|0DA2C6| BNE .skip_stroke_check

|0DA2C8| LDA.b $F0
|0DA2CA| AND.b #$0F
|0DA2CC| BNE .swim_strokes

;---------------------------------------------------------------------------------------------------

.skip_stroke_check
|0DA2CE| LDA.w $033C
|0DA2D1| ORA.w $033D
|0DA2D4| ORA.w $033E
|0DA2D7| ORA.w $033F
|0DA2DA| BEQ .no_swim_accel

.swim_strokes
|0DA2DC| LDY.b #$13

|0DA2DE| LDA.w $02CC
|0DA2E1| STA.b $02

.no_swim_accel
|0DA2E3| LDA.w $032A
|0DA2E6| BEQ .not_stroking_hard

|0DA2E8| DEC A
|0DA2E9| STA.b $02

|0DA2EB| LDY.b #$12

.not_stroking_hard
|0DA2ED| BRL ContinueDrawingLink

;---------------------------------------------------------------------------------------------------

.not_swimming
|0DA2F0| LDA.w $02DA
|0DA2F3| BEQ .not_displaying_item

|0DA2F5| STZ.b $02

|0DA2F7| LDY.b #$1E

|0DA2F9| CMP.b #$02
|0DA2FB| BEQ .two_handed

|0DA2FD| LDY.b #$1D

.two_handed
|0DA2FF| BRA .not_stroking_hard

;---------------------------------------------------------------------------------------------------

.not_displaying_item
|0DA301| LDA.w $036B
|0DA304| AND.b #$01
|0DA306| BEQ .nothing_with_desert_cutscene

|0DA308| LDA.w $030A
|0DA30B| STA.b $02

|0DA30D| LDY.b #$1B
|0DA30F| BRA .not_stroking_hard

.nothing_with_desert_cutscene
|0DA311| LDA.b $4D
|0DA313| BEQ .nothing_with_swim

|0DA315| CMP.b #$01
|0DA317| BEQ .check_if_weird_ice

|0DA319| CMP.b #$04
|0DA31B| BNE .nothing_with_swim

|0DA31D| LDY.b #$13

|0DA31F| LDA.b $1A
|0DA321| AND.b #$18

|0DA323| LSR A
|0DA324| LSR A
|0DA325| LSR A
|0DA326| TAX

|0DA327| LDA.l LinkSwimming_anim_offset,X
|0DA32B| STA.b $02

|0DA32D| BRL ContinueDrawingLink

;---------------------------------------------------------------------------------------------------

.check_if_weird_ice
|0DA330| LDA.b $5D
|0DA332| CMP.b #$05 ; LINKSTATE 05
|0DA334| BNE .not_on_weird_ice

|0DA336| LDA.w $034E
|0DA339| BNE .dont_ice_priority

|0DA33B| LDA.b #$30
|0DA33D| STA.b $65
|0DA33F| STZ.b $64

.dont_ice_priority
|0DA341| BRL .check_if_grabbing

;---------------------------------------------------------------------------------------------------

.not_on_weird_ice
|0DA344| LDA.b $5D
|0DA346| CMP.b #$13 ; LINKSTATE 13
|0DA348| BEQ .nothing_with_swim

|0DA34A| LDA.b $55
|0DA34C| BNE .nothing_with_swim

|0DA34E| LDY.b #$05

|0DA350| LDA.w $0360
|0DA353| BEQ .no_electroction_flag

|0DA355| LDY.b #$14

|0DA357| LDA.w $0300
|0DA35A| AND.b #$03

.no_electroction_flag
|0DA35C| STA.b $02

|0DA35E| BRL ContinueDrawingLink

;---------------------------------------------------------------------------------------------------

.nothing_with_swim
|0DA361| LDA.b $5B
|0DA363| BEQ .no_slip_drawing

|0DA365| CMP.b #$01
|0DA367| BEQ .no_slip_drawing

|0DA369| CMP.b #$03
|0DA36B| BNE .not_fully_falling

|0DA36D| LDA.w LinkOAMBufferOffset+4
|0DA370| STA.w $0352

|0DA373| LDA.w LinkOAMBufferOffset+5
|0DA376| STA.w $0353

.not_fully_falling
|0DA379| LDA.b $5A
|0DA37B| STA.b $02

|0DA37D| CMP.b #$06
|0DA37F| BCC .not_max_fall_priority

|0DA381| LDA.b $65
|0DA383| ORA.b #$30
|0DA385| STA.b $65

.not_max_fall_priority
|0DA387| LDY.b #$04

|0DA389| BRL ContinueDrawingLink

;---------------------------------------------------------------------------------------------------

.no_slip_drawing
|0DA38C| LDA.w $0308
|0DA38F| BEQ .check_if_grabbing

|0DA391| JSR FindMostSignificantBit

|0DA394| CPX.b #$06
|0DA396| BCS .keep_lift_direction

; Set direction to down for prayer.
|0DA398| LDA.b #$02
|0DA39A| STA.w $0323

.keep_lift_direction
|0DA39D| LDY.w WeirdGrabIndices,X
|0DA3A0| CPY.b #$0D
|0DA3A2| BCC .check_desert_step_counter

|0DA3A4| LDA.w $0309
|0DA3A7| AND.b #$02
|0DA3A9| BEQ .not_throwing_object

|0DA3AB| INY

.not_throwing_object
|0DA3AC| LDA.w $0309
|0DA3AF| AND.b #$01
|0DA3B1| BEQ .not_lifting_object

|0DA3B3| LDY.b #$10
|0DA3B5| BRA .check_desert_step_counter

.not_lifting_object
|0DA3B7| LDA.w $0308
|0DA3BA| AND.b #$80
|0DA3BC| BEQ .check_desert_step_counter

|0DA3BE| BRL ContinueDrawingLink

.check_desert_step_counter
|0DA3C1| LDA.w $030A
|0DA3C4| BRA .set_item_use_anim

;---------------------------------------------------------------------------------------------------

.check_if_grabbing
|0DA3C6| LDA.w $0377
|0DA3C9| BEQ .not_grabbing_at_all

|0DA3CB| DEC A

|0DA3CC| LDY.b #$17
|0DA3CE| BRA .set_item_use_anim

;---------------------------------------------------------------------------------------------------

.not_grabbing_at_all
|0DA3D0| LDA.w $0301
|0DA3D3| BEQ .not_using_items_a

|0DA3D5| JSR FindMostSignificantBit

|0DA3D8| LDY.w ItemsAUseDrawIndex,X
|0DA3DB| BRA .continue_with_items_a

.not_using_items_a
|0DA3DD| LDA.w $037A
|0DA3E0| BEQ .not_using_items_b

|0DA3E2| JSR FindMostSignificantBit
|0DA3E5| LDY.w ItemsBUseDrawIndex,X

;---------------------------------------------------------------------------------------------------

.continue_with_items_a
|0DA3E8| LDA.w $0300

.set_item_use_anim
|0DA3EB| STA.b $02

|0DA3ED| BRA ContinueDrawingLink

;---------------------------------------------------------------------------------------------------

.not_using_items_b
|0DA3EF| LDA.b $5D
|0DA3F1| CMP.b #$0A ; LINKSTATE 0A
|0DA3F3| BEQ .using_medallion

|0DA3F5| CMP.b #$08 ; LINKSTATE 08
|0DA3F7| BEQ .using_medallion

|0DA3F9| CMP.b #$09 ; LINKSTATE 09
|0DA3FB| BNE .not_using_medallion

.using_medallion
|0DA3FD| LDY.b #$15
|0DA3FF| BRA .continue_with_medallion

;---------------------------------------------------------------------------------------------------

.not_using_medallion
|0DA401| CMP.b #$1E ; LINKSTATE 1E
|0DA403| BEQ .using_spin_attack

|0DA405| CMP.b #$03 ; LINKSTATE 03
|0DA407| BNE .not_spinning

.using_spin_attack
|0DA409| LDY.b #$0F

.continue_with_medallion
|0DA40B| LDA.w $031C
|0DA40E| STA.b $02

|0DA410| BRA ContinueDrawingLink

;---------------------------------------------------------------------------------------------------

.not_spinning
|0DA412| LDA.b $3A
|0DA414| AND.b #$80
|0DA416| BEQ ContinueDrawingLink

|0DA418| LDA.b $3C
|0DA41A| CMP.b #$09
|0DA41C| BNE .not_fully_primed_sword

|0DA41E| LDY.b #$02

|0DA420| BRA ContinueDrawingLink

.not_fully_primed_sword
|0DA422| LDY.b #$27

|0DA424| LDA.b $3C
|0DA426| STA.b $02

|0DA428| CMP.b #$09
|0DA42A| BCC ContinueDrawingLink

|0DA42C| LDA.b $02
|0DA42E| SEC
|0DA42F| SBC.b #$0A
|0DA431| STA.b $02

|0DA433| LDY.b #$03

;===================================================================================================

ContinueDrawingLink:
|0DA435| STY.w $0354

|0DA438| CPY.b #$05
|0DA43A| BEQ .not_recoiling

|0DA43C| LDA.b $64
|0DA43E| STA.w $035D

|0DA441| LDA.b $65
|0DA443| STA.w $035E

.not_recoiling
|0DA446| STZ.b $03

|0DA448| LDA.b $02
|0DA44A| STA.b $76

|0DA44C| REP #$30

|0DA44E| LDA.b $2F
|0DA450| AND.w #$00FF
|0DA453| TAX

|0DA454| LDA.w LinkAnimationAuxDirectionToTableOffset,X
|0DA457| STA.b $74

|0DA459| LDA.w LinkAnimationDirectionToTableOffset,X
|0DA45C| STA.b $04

|0DA45E| TYA
|0DA45F| AND.w #$00FF
|0DA462| ASL A
|0DA463| CLC
|0DA464| ADC.b $04
|0DA466| TAY

|0DA467| LDA.w LinkAnimationDataOffsets,Y
|0DA46A| CLC
|0DA46B| ADC.b $02
|0DA46D| STA.b $02

|0DA46F| TAY

|0DA470| LDA.w LinkAnimationAuxBufferSet,Y
|0DA473| AND.w #$00FF
|0DA476| STA.b $04

|0DA478| LDA.w #$0E00
|0DA47B| STA.w $0346

|0DA47E| LDA.w $0ABD
|0DA481| BEQ .not_colormath_room

|0DA483| STZ.w $0346

.not_colormath_room
|0DA486| STZ.w $0102
|0DA489| STZ.w $0104

;---------------------------------------------------------------------------------------------------

|0DA48C| LDX.w #$000C

.check_next
|0DA48F| LDA.w $0354
|0DA492| AND.w #$00FF
|0DA495| CMP.w AnimationsWithAuxParts,X
|0DA498| BEQ .match

|0DA49A| DEX
|0DA49B| DEX
|0DA49C| BPL .check_next

|0DA49E| BRL DrawLinksWeapon

.match
|0DA4A1| TXA
|0DA4A2| AND.w #$00FF
|0DA4A5| CLC
|0DA4A6| ADC.b $74
|0DA4A8| TAX

|0DA4A9| LDA.b $76
|0DA4AB| AND.w #$00FF
|0DA4AE| CLC
|0DA4AF| ADC.w LinkAnimationAuxOffsets,X
|0DA4B2| STA.b $74

|0DA4B4| LDY.b $74

|0DA4B6| LDA.w LinkAnimationAux1,Y
|0DA4B9| AND.w #$00FF
|0DA4BC| CMP.w #$00FF
|0DA4BF| BNE .continue_aux1

|0DA4C1| BRL .no_aux1

;---------------------------------------------------------------------------------------------------

.continue_aux1
|0DA4C4| ASL A
|0DA4C5| STA.w $0102

|0DA4C8| LDX.b $72

|0DA4CA| LDA.w Aux1OAMBufferOffsetPointers,X
|0DA4CD| STA.b $0A

|0DA4CF| LDY.b $04

|0DA4D1| LDA.b ($0A),Y
|0DA4D3| AND.w #$00FF
|0DA4D6| CLC
|0DA4D7| ADC.w $0352
|0DA4DA| TAX

|0DA4DB| LDY.b $74

|0DA4DD| SEP #$20

|0DA4DF| LDA.b $25
|0DA4E1| BMI .aux1_z_negative

|0DA4E3| LDA.b $24
|0DA4E5| BRA .aux1_z_continue

.aux1_z_negative
|0DA4E7| LDA.b $24
|0DA4E9| CMP.b #$F0
|0DA4EB| BCC .aux1_z_continue

|0DA4ED| LDA.b #$00

.aux1_z_continue
|0DA4EF| STA.b $0F
|0DA4F1| STZ.b $0E

|0DA4F3| LDA.w LinkAnimationAux1Y,Y
|0DA4F6| CLC
|0DA4F7| ADC.b $01
|0DA4F9| SEC
|0DA4FA| SBC.b $0F
|0DA4FC| STA.w $0801,X

|0DA4FF| LDA.w LinkAnimationAux1X,Y
|0DA502| CLC
|0DA503| ADC.b $00
|0DA505| STA.w $0800,X

|0DA508| REP #$20

|0DA50A| LDA.w LinkAnimationAux1,Y
|0DA50D| AND.w #$00FF
|0DA510| STA.b $06

|0DA512| LSR A
|0DA513| TAY

|0DA514| LDA.w LinkAuxOAMFlip-1,Y
|0DA517| TAY

|0DA518| LDA.b $06
|0DA51A| AND.w #$0001
|0DA51D| BEQ .dont_shift_aux1

|0DA51F| TYA
|0DA520| ASL A ; x16
|0DA521| ASL A
|0DA522| ASL A
|0DA523| ASL A
|0DA524| TAY

.dont_shift_aux1
|0DA525| TYA
|0DA526| AND.w #$C000
|0DA529| ORA.b $64
|0DA52B| ORA.w $0346
|0DA52E| ORA.w #$0004
|0DA531| STA.w $0802,X

|0DA534| TXA
|0DA535| LSR A
|0DA536| LSR A
|0DA537| TAX

|0DA538| LDA.w $0A20,X
|0DA53B| AND.w #$FF00
|0DA53E| STA.w $0A20,X

;---------------------------------------------------------------------------------------------------

.no_aux1
|0DA541| LDY.b $74

|0DA543| LDA.w LinkAnimationAux2,Y
|0DA546| AND.w #$00FF
|0DA549| CMP.w #$00FF
|0DA54C| BNE .continue_aux2

|0DA54E| BRL DrawLinksWeapon

.continue_aux2
|0DA551| ASL A
|0DA552| STA.w $0104

|0DA555| LDX.b $72

|0DA557| LDA.w Aux2OAMBufferOffsetPointers,X
|0DA55A| STA.b $0A

|0DA55C| LDY.b $04

|0DA55E| LDA.b ($0A),Y
|0DA560| AND.w #$00FF
|0DA563| CLC
|0DA564| ADC.w $0352
|0DA567| TAX

|0DA568| LDY.b $74

|0DA56A| SEP #$20

|0DA56C| LDA.b $25
|0DA56E| BMI .aux_2_z_negative

|0DA570| LDA.b $24
|0DA572| BRA .aux_2_z_continue

.aux_2_z_negative
|0DA574| LDA.b $24
|0DA576| CMP.b #$F0
|0DA578| BCC .aux_2_z_continue

|0DA57A| LDA.b #$00

.aux_2_z_continue
|0DA57C| STA.b $0F
|0DA57E| STZ.b $0E

|0DA580| LDA.w LinkAnimationAux2Y,Y
|0DA583| CLC
|0DA584| ADC.b $01
|0DA586| SEC
|0DA587| SBC.b $0F
|0DA589| STA.w $0801,X

|0DA58C| LDA.w LinkAnimationAux2X,Y
|0DA58F| CLC
|0DA590| ADC.b $00
|0DA592| STA.w $0800,X

|0DA595| REP #$20

|0DA597| LDA.w LinkAnimationAux2,Y
|0DA59A| AND.w #$00FF
|0DA59D| STA.b $06

|0DA59F| LSR A
|0DA5A0| TAY

|0DA5A1| LDA.w LinkAuxOAMFlip-1,Y
|0DA5A4| TAY

|0DA5A5| LDA.b $06
|0DA5A7| AND.w #$0001
|0DA5AA| BEQ .dont_shift_aux2

|0DA5AC| TYA
|0DA5AD| ASL A ; x16
|0DA5AE| ASL A
|0DA5AF| ASL A
|0DA5B0| ASL A
|0DA5B1| TAY

.dont_shift_aux2
|0DA5B2| TYA
|0DA5B3| AND.w #$C000
|0DA5B6| ORA.b $64
|0DA5B8| ORA.w $0346
|0DA5BB| ORA.w #$0014
|0DA5BE| STA.w $0802,X

|0DA5C1| TXA
|0DA5C2| LSR A
|0DA5C3| LSR A
|0DA5C4| TAX

|0DA5C5| LDA.w $0A20,X
|0DA5C8| AND.w #$FF00
|0DA5CB| STA.w $0A20,X

;===================================================================================================

DrawLinksWeapon:
; I can't find any place this bit would be set
|0DA5CE| LDA.w $0309
|0DA5D1| AND.w #$0004
|0DA5D4| BEQ .always_taken

|0DA5D6| JSR UnusedWeaponSettings
|0DA5D9| BRA .skip_sword_vram

.always_taken
|0DA5DB| LDA.b $5D
|0DA5DD| AND.w #$00FF

|0DA5E0| CMP.w #$0008 ; LINKSTATE 08
|0DA5E3| BEQ .check_sword

|0DA5E5| CMP.w #$0009 ; LINKSTATE 09
|0DA5E8| BEQ .check_sword

|0DA5EA| CMP.w #$000A ; LINKSTATE 0A
|0DA5ED| BEQ .check_sword

|0DA5EF| CMP.w #$0003 ; LINKSTATE 03
|0DA5F2| BEQ .check_sword

|0DA5F4| CMP.w #$001E ; LINKSTATE 1E
|0DA5F7| BEQ .check_sword

|0DA5F9| LDA.w $0308
|0DA5FC| AND.w #$00FF
|0DA5FF| BNE .check_sword

|0DA601| LDA.w $03EF
|0DA604| ORA.w $0360
|0DA607| AND.w #$00FF
|0DA60A| BNE .check_sword

|0DA60C| LDA.w $0301
|0DA60F| AND.w #$0040
|0DA612| BNE .skip_sword_vram

|0DA614| LDA.w $037A
|0DA617| AND.w #$003D
|0DA61A| BNE .using_some_item

|0DA61C| LDA.w $0301
|0DA61F| AND.w #$0093
|0DA622| BNE .using_some_item

|0DA624| LDA.b $3A
|0DA626| AND.w #$0080
|0DA629| BEQ .skip_sword_vram

;---------------------------------------------------------------------------------------------------

.check_sword
|0DA62B| LDA.l $7EF359
|0DA62F| INC A
|0DA630| AND.w #$00FE
|0DA633| BEQ .skip_sword_vram

.using_some_item
|0DA635| JSR SetWeaponVRAMOffsets
|0DA638| BCC .continue_with_weapon

.skip_sword_vram
|0DA63A| BRL DrawLinksShield

;---------------------------------------------------------------------------------------------------

.continue_with_weapon
|0DA63D| LDY.b $02

|0DA63F| SEP #$20

|0DA641| LDA.b $25
|0DA643| BMI .possibly_grounded

|0DA645| LDA.b $24
|0DA647| BRA .airborne

.possibly_grounded
|0DA649| LDA.b $24
|0DA64B| CMP.b #$F0
|0DA64D| BCC .airborne

|0DA64F| LDA.b #$00

.airborne
|0DA651| STA.b $0B

;---------------------------------------------------------------------------------------------------

|0DA653| LDA.b $01
|0DA655| CLC
|0DA656| ADC.w LinkAnimationSwordY,Y
|0DA659| SEC
|0DA65A| SBC.b $0B
|0DA65C| STA.b $0B

|0DA65E| LDA.b $00
|0DA660| CLC
|0DA661| ADC.w LinkAnimationSwordX,Y
|0DA664| STA.b $0A
|0DA666| STA.b $08

|0DA668| LDA.w $0301
|0DA66B| AND.b #$02
|0DA66D| BEQ .not_hammer

|0DA66F| LDA.w $0300
|0DA672| CMP.b #$02
|0DA674| BNE .skip_hitbox

|0DA676| LDA.b $3D
|0DA678| CMP.b #$0F
|0DA67A| BNE .skip_hitbox

|0DA67C| BRA .set_hitbox_offset

.not_hammer
|0DA67E| LDA.w $0301
|0DA681| AND.b #$05
|0DA683| BNE .skip_hitbox

.set_hitbox_offset
|0DA685| LDA.w AttackHitboxY,Y
|0DA688| STA.b $44

|0DA68A| LDA.w AttackHitboxX,Y
|0DA68D| STA.b $45

;---------------------------------------------------------------------------------------------------

.skip_hitbox
|0DA68F| STZ.b $0E
|0DA691| STZ.b $0F

|0DA693| LDA.w $0301
|0DA696| AND.b #$05
|0DA698| BEQ .not_rodding

|0DA69A| LDY.w $0307
|0DA69D| DEY

|0DA69E| LDA.w RodOAMPalette,Y
|0DA6A1| STA.b $0F

.not_rodding
|0DA6A3| LDA.w $037A
|0DA6A6| AND.b #$08
|0DA6A8| BEQ .not_caning

|0DA6AA| LDA.w $0303
|0DA6AD| CMP.b #$0D
|0DA6AF| BNE .not_caning

|0DA6B1| LDA.b #$04
|0DA6B3| STA.b $0F

.not_caning
|0DA6B5| REP #$20

|0DA6B7| LDA.b $06
|0DA6B9| ASL A
|0DA6BA| CLC
|0DA6BB| ADC.b $06
|0DA6BD| ASL A
|0DA6BE| TAY

|0DA6BF| STZ.b $06

|0DA6C1| PHY

|0DA6C2| LDX.b $72

|0DA6C4| LDA.w WeaponOAMBufferOffsetPointers,X
|0DA6C7| STA.b $74

|0DA6C9| LDA.b $04
|0DA6CB| AND.w #$00FF
|0DA6CE| TAY

|0DA6CF| LDA.b ($74),Y
|0DA6D1| AND.w #$00FF
|0DA6D4| CLC
|0DA6D5| ADC.w $0352
|0DA6D8| TAX

|0DA6D9| PLY

|0DA6DA| LDA.b $0E

|0DA6DC| PHA

|0DA6DD| JSR DrawSwordSwingTip

|0DA6E0| PLA

|0DA6E1| STA.b $0E

;---------------------------------------------------------------------------------------------------

.next_weapon_object
|0DA6E3| REP #$20

|0DA6E5| LDA.w WeaponDrawTiles,Y
|0DA6E8| CMP.w #$FFFF
|0DA6EB| BEQ .no_weapons

|0DA6ED| AND.w #$CFFF
|0DA6F0| ORA.b $64
|0DA6F2| STA.w $0802,X

|0DA6F5| AND.w #$0E00
|0DA6F8| CMP.w #$0200
|0DA6FB| BEQ .ignore_palette_adjustments

|0DA6FD| LDA.w $0346
|0DA700| BNE .ignore_palette_adjustments

|0DA702| LDA.w $0802,X
|0DA705| AND.w #$F1FF
|0DA708| ORA.w #$0600
|0DA70B| STA.w $0802,X

.ignore_palette_adjustments
|0DA70E| LDA.b $0E
|0DA710| BEQ .ignore_palette_adjustments_2

|0DA712| LDA.w $0802,X
|0DA715| AND.w #$F1FF
|0DA718| ORA.b $0E
|0DA71A| STA.w $0802,X

;---------------------------------------------------------------------------------------------------

.ignore_palette_adjustments_2
|0DA71D| LDA.b $0A
|0DA71F| STA.w $0800,X

|0DA722| AND.w #$00FF
|0DA725| STA.b $74

|0DA727| LDA.b $00
|0DA729| AND.w #$00FF
|0DA72C| SEC
|0DA72D| SBC.b $74
|0DA72F| BPL .positive_a

|0DA731| EOR.w #$FFFF
|0DA734| INC A

.positive_a
|0DA735| CMP.w #$0080
|0DA738| BCC .positive_b

|0DA73A| LDA.w #$0001
|0DA73D| TSB.b $0C

.positive_b
|0DA73F| PHY
|0DA740| PHX

|0DA741| TXA
|0DA742| LSR A
|0DA743| LSR A
|0DA744| TAX

|0DA745| SEP #$20

|0DA747| LDA.b $0C
|0DA749| STA.w $0A20,X

|0DA74C| AND.b #$FE
|0DA74E| STA.b $0C

|0DA750| PLX
|0DA751| PLY

|0DA752| INX ; +4
|0DA753| INX
|0DA754| INX
|0DA755| INX

;---------------------------------------------------------------------------------------------------

.no_weapons
|0DA756| SEP #$20

|0DA758| LDA.b $0A
|0DA75A| CLC
|0DA75B| ADC.b #$08
|0DA75D| STA.b $0A

|0DA75F| INY
|0DA760| INY

|0DA761| LDA.b $06
|0DA763| INC A
|0DA764| STA.b $06

|0DA766| AND.b #$01
|0DA768| BNE .no_offset

|0DA76A| LDA.b $0B
|0DA76C| CLC
|0DA76D| ADC.b #$08
|0DA76F| STA.b $0B

|0DA771| LDA.b $08
|0DA773| STA.b $0A

.no_offset
|0DA775| LDA.b $06
|0DA777| CMP.b #$03
|0DA779| BEQ .weapon_loop_done

|0DA77B| BRL .next_weapon_object

.weapon_loop_done
|0DA77E| SEP #$10 ; [USELESS] ? might be clearing high byte

;===================================================================================================

DrawLinksShield:
|0DA780| REP #$30

|0DA782| LDA.l $7EF35A
|0DA786| AND.w #$00FF
|0DA789| BEQ .no_shield

|0DA78B| LDA.l $7EF3C5
|0DA78F| AND.w #$00FF
|0DA792| BEQ .no_shield

|0DA794| JSR SetEquipmentVRAMOffsets
|0DA797| BCC .shield_continue

.no_shield
|0DA799| BRL DrawLinksShadow

;---------------------------------------------------------------------------------------------------

.shield_continue
|0DA79C| LDY.b $02

|0DA79E| SEP #$20

|0DA7A0| LDA.b $25
|0DA7A2| BMI .not_necessarily_airborne

|0DA7A4| LDA.b $24
|0DA7A6| BRA .airborne

.not_necessarily_airborne
|0DA7A8| LDA.b $24
|0DA7AA| CMP.b #$F0
|0DA7AC| BCC .airborne

|0DA7AE| LDA.b #$00

.airborne
|0DA7B0| STA.b $0B

|0DA7B2| LDA.b $01
|0DA7B4| CLC
|0DA7B5| ADC.w LinkAnimationShieldY,Y
|0DA7B8| DEC A

|0DA7B9| SEC
|0DA7BA| SBC.b $0B
|0DA7BC| STA.b $0B

|0DA7BE| LDA.b $00
|0DA7C0| CLC
|0DA7C1| ADC.w LinkAnimationShieldX,Y
|0DA7C4| STA.b $0A
|0DA7C6| STA.b $08

|0DA7C8| LDA.w LinkAnimationShieldX,Y
|0DA7CB| JSR CalculateEquipmentOffsetX

|0DA7CE| STZ.b $0E

|0DA7D0| LDA.b #$0A
|0DA7D2| STA.b $0F

|0DA7D4| LDA.w $0347
|0DA7D7| BNE .leave_shield_palette

|0DA7D9| LDA.b #$06
|0DA7DB| STA.b $0F

.leave_shield_palette
|0DA7DD| REP #$30

|0DA7DF| LDA.b $06
|0DA7E1| ASL A
|0DA7E2| CLC
|0DA7E3| ADC.b $06
|0DA7E5| ASL A
|0DA7E6| TAY

|0DA7E7| STZ.b $06

|0DA7E9| PHY

|0DA7EA| LDX.b $72

|0DA7EC| LDA.w ShieldOAMBufferOffsetPointers,X
|0DA7EF| STA.b $74

|0DA7F1| LDA.b $04
|0DA7F3| AND.w #$00FF
|0DA7F6| TAY

|0DA7F7| LDA.b ($74),Y
|0DA7F9| AND.w #$00FF
|0DA7FC| CLC
|0DA7FD| ADC.w $0352
|0DA800| TAX

|0DA801| PLY

;---------------------------------------------------------------------------------------------------

.next_shield_object
|0DA802| REP #$20

|0DA804| STZ.b $74

|0DA806| LDA.w ShieldDrawTiles,Y

|0DA809| CMP.w #$FFFF
|0DA80C| BEQ .no_shield_to_draw

|0DA80E| AND.w #$C1FF
|0DA811| ORA.b $0E
|0DA813| ORA.b $64
|0DA815| STA.w $0802,X

|0DA818| LDA.b $0A
|0DA81A| STA.w $0800,X

|0DA81D| PHX

|0DA81E| TXA
|0DA81F| LSR A
|0DA820| LSR A
|0DA821| TAX

|0DA822| SEP #$20

|0DA824| LDA.b $0C
|0DA826| ORA.w $03FA
|0DA829| STA.w $0A20,X

|0DA82C| PLX
|0DA82D| INX ; +4
|0DA82E| INX
|0DA82F| INX
|0DA830| INX

.no_shield_to_draw
|0DA831| SEP #$20

|0DA833| LDA.b $0A
|0DA835| CLC
|0DA836| ADC.b #$08
|0DA838| STA.b $0A

|0DA83A| INY
|0DA83B| INY

|0DA83C| INC.b $06

|0DA83E| LDA.b $06
|0DA840| AND.b #$01
|0DA842| BNE .no_offset

|0DA844| LDA.b $0B
|0DA846| CLC
|0DA847| ADC.b #$08
|0DA849| STA.b $0B

|0DA84B| LDA.b $08
|0DA84D| STA.b $0A

.no_offset
|0DA84F| LDA.b $06
|0DA851| CMP.b #$03
|0DA853| BNE .next_shield_object

|0DA855| SEP #$10

;===================================================================================================

DrawLinksShadow:
|0DA857| SEP #$30

|0DA859| LDA.b $4B
|0DA85B| CMP.b #$0C
|0DA85D| BNE .continue_with_shadow

|0DA85F| BRL DrawLinksBody

;---------------------------------------------------------------------------------------------------

.continue_with_shadow
|0DA862| LDA.b $5D
|0DA864| CMP.b #$16 ; LINKSTATE 16
|0DA866| BEQ .proceed_to_pose

|0DA868| LDA.w $0354
|0DA86B| CMP.b #$05
|0DA86D| BEQ .recoil_check

|0DA86F| LDA.w $0351
|0DA872| BEQ .recoil_check

|0DA874| JSR DrawFootObject

|0DA877| BRA .proceed_to_pose

;---------------------------------------------------------------------------------------------------

.recoil_check
|0DA879| LDA.b $4D
|0DA87B| CMP.b #$04
|0DA87D| BEQ .proceed_to_pose

|0DA87F| LDA.b $5D
|0DA881| CMP.b #$04 ; LINKSTATE 04
|0DA883| BEQ .proceed_to_pose

|0DA885| LDY.b #$00

|0DA887| LDA.b $5B
|0DA889| BEQ .weak_slip

|0DA88B| CMP.b #$01
|0DA88D| BEQ .weak_slip

|0DA88F| LDA.b $5A
|0DA891| CMP.b #$06
|0DA893| BCC .proceed_to_pose

|0DA895| JSR DrawFallingShadow

.proceed_to_pose
|0DA898| BRL DrawLinksBody

;---------------------------------------------------------------------------------------------------

.weak_slip
|0DA89B| LDA.b $4D
|0DA89D| BEQ .big_shadow

|0DA89F| CMP.b #$01
|0DA8A1| BNE .tiny_shadow

|0DA8A3| LDA.b $55
|0DA8A5| BNE .big_shadow

.tiny_shadow
|0DA8A7| LDY.b #$01

.big_shadow
|0DA8A9| STY.b $0A

;---------------------------------------------------------------------------------------------------

|0DA8AB| STZ.b $0B

|0DA8AD| LDA.w $0323
|0DA8B0| LSR A
|0DA8B1| TAY

|0DA8B2| REP #$20

|0DA8B4| LDA.b $20
|0DA8B6| SEC
|0DA8B7| SBC.b $E8
|0DA8B9| STA.b $06

|0DA8BB| LDA.w LinkShadowOffsetY,Y
|0DA8BE| AND.w #$00FF
|0DA8C1| CMP.w #$0080
|0DA8C4| BCC .positive_y

|0DA8C6| ORA.w #$FF00

.positive_y
|0DA8C9| CLC
|0DA8CA| ADC.b $06
|0DA8CC| STA.b $06

|0DA8CE| SEP #$20

|0DA8D0| LDA.b $07
|0DA8D2| BNE .proceed_to_pose

|0DA8D4| LDA.b $01
|0DA8D6| CLC
|0DA8D7| ADC.w LinkShadowOffsetY,Y
|0DA8DA| STA.b $07

|0DA8DC| LDA.b $00
|0DA8DE| CLC
|0DA8DF| ADC.w LinkShadowOffsetX,Y
|0DA8E2| STA.b $06

;---------------------------------------------------------------------------------------------------

|0DA8E4| REP #$30

|0DA8E6| LDX.b $72

|0DA8E8| LDA.w ShadowOAMBufferOffsetPointers,X
|0DA8EB| STA.b $74

|0DA8ED| LDA.b $04
|0DA8EF| AND.w #$00FF
|0DA8F2| TAY

|0DA8F3| LDA.b ($74),Y
|0DA8F5| AND.w #$00FF
|0DA8F8| CLC
|0DA8F9| ADC.w $0352
|0DA8FC| TAX

|0DA8FD| LDA.b $0A
|0DA8FF| ASL A
|0DA900| ASL A
|0DA901| TAY

|0DA902| LDA.w ShadowDrawTiles+0,Y
|0DA905| AND.w #$CFFF
|0DA908| ORA.w $035D
|0DA90B| STA.w $0802,X

|0DA90E| AND.w #$3FFF
|0DA911| ORA.w #$4000
|0DA914| STA.w $0806,X

|0DA917| LDA.b $06
|0DA919| STA.w $0800,X

|0DA91C| XBA
|0DA91D| CLC
|0DA91E| ADC.w #$0800

|0DA921| XBA
|0DA922| STA.w $0804,X

;---------------------------------------------------------------------------------------------------

|0DA925| LDA.w $0346
|0DA928| BNE .no_palette_adjustment

|0DA92A| LDA.w $0802,X
|0DA92D| AND.w #$F1FF
|0DA930| ORA.w #$0600
|0DA933| STA.w $0802,X

|0DA936| LDA.w $0806,X
|0DA939| AND.w #$F1FF
|0DA93C| ORA.w #$0600
|0DA93F| STA.w $0806,X

.no_palette_adjustment
|0DA942| TXA
|0DA943| LSR A
|0DA944| LSR A
|0DA945| TAX

|0DA946| STZ.w $0A20,X

|0DA949| SEP #$30

;===================================================================================================

DrawLinksBody:
|0DA94B| REP #$30

|0DA94D| LDX.b $72

|0DA94F| LDA.w ElfOAMBufferOffsetPointers,X
|0DA952| STA.b $74

|0DA954| LDY.b $04

|0DA956| LDA.b ($74),Y
|0DA958| AND.w #$00FF
|0DA95B| CLC
|0DA95C| ADC.w $0352
|0DA95F| TAX

|0DA960| LDA.b $02
|0DA962| ASL A
|0DA963| TAY

|0DA964| LDA.w LinkAnimationPose,Y
|0DA967| STA.b $0E

|0DA969| ASL A
|0DA96A| STA.w $0100

|0DA96D| CLC
|0DA96E| ADC.b $0E
|0DA970| TAY

;---------------------------------------------------------------------------------------------------

|0DA971| SEP #$20

|0DA973| LDA.b $4B
|0DA975| CMP.b #$0C
|0DA977| BNE .not_invisible

|0DA979| BRL FinalizeLinkDraw

.not_invisible
|0DA97C| LDA.b $25
|0DA97E| BMI .possibly_grounded

|0DA980| LDA.b $24
|0DA982| BRA .airborne

.possibly_grounded
|0DA984| LDA.b $24
|0DA986| CMP.b #$F0
|0DA988| BCC .airborne

|0DA98A| LDA.b #$00

.airborne
|0DA98C| STA.b $0F
|0DA98E| STZ.b $0E

;---------------------------------------------------------------------------------------------------

|0DA990| LDA.b $01
|0DA992| CLC
|0DA993| ADC.w LinkPoseData+0,Y
|0DA996| SEC
|0DA997| SBC.b $0F
|0DA999| STA.b $0B

|0DA99B| LDA.b $00
|0DA99D| CLC
|0DA99E| ADC.w LinkPoseData+1,Y
|0DA9A1| STA.b $0A

|0DA9A3| REP #$20

|0DA9A5| LDA.w LinkPoseData+2,Y
|0DA9A8| XBA
|0DA9A9| STA.b $06

|0DA9AB| AND.w #$F000
|0DA9AE| CMP.w #$F000
|0DA9B1| BEQ .no_draw

|0DA9B3| ORA.b $64
|0DA9B5| ORA.w $0346
|0DA9B8| STA.w $0802,X

|0DA9BB| STZ.b $02

|0DA9BD| LDA.b $0A
|0DA9BF| STA.w $0800,X

|0DA9C2| AND.w #$00FF
|0DA9C5| CMP.w #$00F8
|0DA9C8| BCC .on_screen_x

|0DA9CA| LDA.w #$0001
|0DA9CD| STA.b $02

.on_screen_x
|0DA9CF| PHX

|0DA9D0| TXA
|0DA9D1| LSR A
|0DA9D2| LSR A
|0DA9D3| TAX

|0DA9D4| LDA.w $0A20,X
|0DA9D7| AND.w #$FF00
|0DA9DA| ORA.b $02
|0DA9DC| ORA.w #$0002
|0DA9DF| STA.w $0A20,X

|0DA9E2| PLX

;---------------------------------------------------------------------------------------------------

.no_draw
|0DA9E3| LDA.b $06
|0DA9E5| AND.w #$0F00
|0DA9E8| CMP.w #$0F00
|0DA9EB| BEQ FinalizeLinkDraw

|0DA9ED| ASL A ; x16
|0DA9EE| ASL A
|0DA9EF| ASL A
|0DA9F0| ASL A

|0DA9F1| ORA.b $64
|0DA9F3| ORA.w $0346
|0DA9F6| ORA.w #$0002
|0DA9F9| STA.w $0806,X

|0DA9FC| LDA.b $00
|0DA9FE| SEC
|0DA9FF| SBC.b $0E
|0DAA01| CLC
|0DAA02| ADC.w #$0800
|0DAA05| STA.w $0804,X

|0DAA08| TXA
|0DAA09| LSR A
|0DAA0A| LSR A
|0DAA0B| TAX

|0DAA0C| LDA.w $0A21,X
|0DAA0F| AND.w #$FF00
|0DAA12| ORA.w #$0002
|0DAA15| STA.w $0A21,X

;===================================================================================================

FinalizeLinkDraw:
|0DAA18| SEP #$30

|0DAA1A| LDA.b #$01
|0DAA1C| STA.b $0E

|0DAA1E| LDA.b $6C
|0DAA20| BEQ .not_in_door

;---------------------------------------------------------------------------------------------------

|0DAA22| REP #$20

|0DAA24| LDA.b $22
|0DAA26| SEC
|0DAA27| SBC.b $E2
|0DAA29| CMP.w #$0004
|0DAA2C| BCC .looks_invisible

|0DAA2E| CMP.w #$00FC
|0DAA31| BCS .looks_invisible

|0DAA33| LDA.b $20
|0DAA35| SEC
|0DAA36| SBC.b $E8
|0DAA38| CMP.w #$0004
|0DAA3B| BCC .looks_invisible

|0DAA3D| CMP.w #$00E0
|0DAA40| BCS .looks_invisible

|0DAA42| SEP #$20

;---------------------------------------------------------------------------------------------------

.not_in_door
|0DAA44| STZ.b $0E

|0DAA46| LDA.b $11
|0DAA48| BNE .check_stair_visibility

|0DAA4A| LDA.w $031F
|0DAA4D| BEQ .check_stair_visibility

|0DAA4F| DEC A
|0DAA50| STA.w $031F

|0DAA53| CMP.b #$04
|0DAA55| BCC .check_stair_visibility

|0DAA57| AND.b #$01
|0DAA59| BEQ .looks_invisible

.check_stair_visibility
|0DAA5B| LDA.b $4B
|0DAA5D| CMP.b #$0C
|0DAA5F| BEQ .looks_invisible

|0DAA61| LDA.b $55
|0DAA63| BEQ .not_caping

.looks_invisible
|0DAA65| REP #$30

|0DAA67| LDA.w $0352
|0DAA6A| LSR A
|0DAA6B| LSR A
|0DAA6C| TAX

|0DAA6D| LDA.w #$0101
|0DAA70| STA.w $0A20,X
|0DAA73| STA.w $0A22,X
|0DAA76| STA.w $0A24,X
|0DAA79| STA.w $0A26,X
|0DAA7C| STA.w $0A28,X
|0DAA7F| STA.w $0A2A,X

;---------------------------------------------------------------------------------------------------

|0DAA82| LDA.b $4B
|0DAA84| AND.w #$00FF
|0DAA87| CMP.w #$000C
|0DAA8A| BEQ .check_position_restoration

|0DAA8C| LDA.b $0E
|0DAA8E| AND.w #$00FF
|0DAA91| BNE .check_position_restoration

|0DAA93| LDX.b $72

|0DAA95| LDA.w ShadowOAMBufferOffsetPointers,X
|0DAA98| STA.b $74

|0DAA9A| LDA.b $04
|0DAA9C| AND.w #$00FF
|0DAA9F| TAY

|0DAAA0| LDA.b ($74),Y
|0DAAA2| AND.w #$00FF
|0DAAA5| CLC
|0DAAA6| ADC.w $0352

|0DAAA9| LSR A
|0DAAAA| LSR A
|0DAAAB| TAX

|0DAAAC| STZ.w $0A20,X

;---------------------------------------------------------------------------------------------------

.check_position_restoration
|0DAAAF| SEP #$30

.not_caping
|0DAAB1| LDA.b $11
|0DAAB3| CMP.b #$12
|0DAAB5| BEQ .restore_position

|0DAAB7| CMP.b #$13
|0DAAB9| BNE .exit

.restore_position
|0DAABB| PLA
|0DAABC| STA.b $21

|0DAABE| PLA
|0DAABF| STA.b $20

.exit
|0DAAC1| PLB

|0DAAC2| RTL

;===================================================================================================
; what it says
;===================================================================================================
FindMostSignificantBit:
|0DAAC3| LDX.b #$07

.shift
|0DAAC5| ASL A
|0DAAC6| BCS .hit

|0DAAC8| DEX
|0DAAC9| BPL .shift

.hit
|0DAACB| RTS

;===================================================================================================
; TODO analyze, format, annotate
WeaponDrawIndex:
|0DAACC| db $06
|0DAACD| db $06
|0DAACE| db $04
|0DAACF| db $04
|0DAAD0| db $04
|0DAAD1| db $04
|0DAAD2| db $00
|0DAAD3| db $00
|0DAAD4| db $08
|0DAAD5| db $08
|0DAAD6| db $08
|0DAAD7| db $08
|0DAAD8| db $02
|0DAAD9| db $02
|0DAADA| db $02
|0DAADB| db $02
|0DAADC| db $0A
|0DAADD| db $0A
|0DAADE| db $0A
|0DAADF| db $0A
|0DAAE0| db $0C
|0DAAE1| db $0C
|0DAAE2| db $0C
|0DAAE3| db $0C
|0DAAE4| db $0E
|0DAAE5| db $0E
|0DAAE6| db $0E
|0DAAE7| db $0E
|0DAAE8| db $00
|0DAAE9| db $09
|0DAAEA| db $0C
|0DAAEB| db $09
|0DAAEC| db $0C
|0DAAED| db $0E
|0DAAEE| db $0A
|0DAAEF| db $08
|0DAAF0| db $0D
|0DAAF1| db $08
|0DAAF2| db $0D
|0DAAF3| db $12
|0DAAF4| db $12
|0DAAF5| db $11
|0DAAF6| db $11
|0DAAF7| db $10
|0DAAF8| db $10
|0DAAF9| db $10
|0DAAFA| db $10
|0DAAFB| db $40
|0DAAFC| db $41
|0DAAFD| db $40
|0DAAFE| db $41
|0DAAFF| db $18
|0DAB00| db $18
|0DAB01| db $19
|0DAB02| db $19
|0DAB03| db $24
|0DAB04| db $21
|0DAB05| db $25
|0DAB06| db $23
|0DAB07| db $22
|0DAB08| db $20
|0DAB09| db $26
|0DAB0A| db $23
|0DAB0B| db $25
|0DAB0C| db $26
|0DAB0D| db $22
|0DAB0E| db $28
|0DAB0F| db $2A
|0DAB10| db $29
|0DAB11| db $29
|0DAB12| db $2C
|0DAB13| db $28
|0DAB14| db $2B
|0DAB15| db $28
|0DAB16| db $2B
|0DAB17| db $30

;===================================================================================================

RodDrawIndexOffset:
|0DAB18| db $01, $04, $01, $04, $06, $02, $00, $05
|0DAB20| db $00, $05

;===================================================================================================

WeaponDrawSize:
|0DAB22| db $00
|0DAB23| db $00
|0DAB24| db $00
|0DAB25| db $00
|0DAB26| db $00
|0DAB27| db $00
|0DAB28| db $00
|0DAB29| db $00
|0DAB2A| db $00
|0DAB2B| db $00
|0DAB2C| db $00
|0DAB2D| db $00
|0DAB2E| db $02
|0DAB2F| db $02
|0DAB30| db $02
|0DAB31| db $02
|0DAB32| db $02
|0DAB33| db $02
|0DAB34| db $02
|0DAB35| db $02
|0DAB36| db $02
|0DAB37| db $02
|0DAB38| db $02
|0DAB39| db $02
|0DAB3A| db $02
|0DAB3B| db $02
|0DAB3C| db $02
|0DAB3D| db $02
|0DAB3E| db $00
|0DAB3F| db $00
|0DAB40| db $00
|0DAB41| db $00
|0DAB42| db $00
|0DAB43| db $00
|0DAB44| db $00
|0DAB45| db $02
|0DAB46| db $00
|0DAB47| db $02
|0DAB48| db $00
|0DAB49| db $00
|0DAB4A| db $00
|0DAB4B| db $00
|0DAB4C| db $00
|0DAB4D| db $02
|0DAB4E| db $02
|0DAB4F| db $02
|0DAB50| db $02
|0DAB51| db $02
|0DAB52| db $00
|0DAB53| db $02
|0DAB54| db $00
|0DAB55| db $00
|0DAB56| db $00
|0DAB57| db $00
|0DAB58| db $00
|0DAB59| db $02
|0DAB5A| db $02
|0DAB5B| db $02
|0DAB5C| db $02
|0DAB5D| db $02
|0DAB5E| db $02
|0DAB5F| db $02
|0DAB60| db $02
|0DAB61| db $02
|0DAB62| db $02
|0DAB63| db $02
|0DAB64| db $02
|0DAB65| db $00
|0DAB66| db $00
|0DAB67| db $00
|0DAB68| db $00
|0DAB69| db $02
|0DAB6A| db $00
|0DAB6B| db $02
|0DAB6C| db $00
|0DAB6D| db $02

;===================================================================================================

SetWeaponVRAMOffsets:
|0DAB6E| REP #$30

|0DAB70| LDY.b $02

|0DAB72| LDA.w LinkAnimationWeaponIndex,Y
|0DAB75| AND.w #$00FF
|0DAB78| CMP.w #$00FF
|0DAB7B| BEQ .fail

|0DAB7D| STA.b $06

|0DAB7F| TAX

|0DAB80| LDA.w WeaponDrawSize,X
|0DAB83| AND.w #$00FF
|0DAB86| STA.b $0C

|0DAB88| TXA

|0DAB89| LDY.w WeaponDrawIndex,X
|0DAB8C| CMP.w #$001D
|0DAB8F| BCC .is_sword

|0DAB91| LDA.w $0301
|0DAB94| AND.w #$0005
|0DAB97| BEQ .not_rod

|0DAB99| TXA
|0DAB9A| SEC
|0DAB9B| SBC.w #$001D
|0DAB9E| TAX

|0DAB9F| LDY.w RodDrawIndexOffset,X

;---------------------------------------------------------------------------------------------------

.not_rod
|0DABA2| TYA
|0DABA3| AND.w #$00FF
|0DABA6| STA.b $0A

|0DABA8| LDA.w $0109
|0DABAB| AND.w #$FF00
|0DABAE| ORA.b $0A
|0DABB0| STA.w $0109

|0DABB3| BRA .succeed

;---------------------------------------------------------------------------------------------------

.is_sword
|0DABB5| TYA
|0DABB6| AND.w #$00FF
|0DABB9| STA.b $0A

|0DABBB| LDA.w $0107
|0DABBE| AND.w #$FF00
|0DABC1| ORA.b $0A
|0DABC3| STA.w $0107

;---------------------------------------------------------------------------------------------------

.succeed
|0DABC6| CLC

|0DABC7| RTS

.fail
|0DABC8| SEC

|0DABC9| RTS

;===================================================================================================
; TODO analyze
pool SetEquipmentVRAMOffsets

.shield_id
|0DABCA| db $00, $02, $04, $04, $04, $04, $04, $04
|0DABD2| db $09, $0C, $09, $0C, $0E, $0A, $08, $0D
|0DABDA| db $08, $0D

.rod_id
|0DABDC| db $01, $04, $01, $04, $06, $02, $00, $05
|0DABE4| db $00, $05

endpool

;---------------------------------------------------------------------------------------------------

SetEquipmentVRAMOffsets:
|0DABE6| REP #$30

|0DABE8| STZ.b $0C

|0DABEA| LDY.b $02

|0DABEC| LDA.w LinkAnimationShieldIndex,Y
|0DABEF| AND.w #$00FF
|0DABF2| CMP.w #$00FF
|0DABF5| BEQ .fail

|0DABF7| STA.b $06

|0DABF9| TAX

|0DABFA| LDY.w .shield_id,X

|0DABFD| AND.w #$00F8
|0DAC00| BEQ .is_shield

|0DAC02| LDA.w $0301
|0DAC05| AND.w #$0005
|0DAC08| BEQ .not_rod

|0DAC0A| TXA
|0DAC0B| SEC
|0DAC0C| SBC.w #$0008
|0DAC0F| TAX

|0DAC10| LDY.w .rod_id,X

;---------------------------------------------------------------------------------------------------

.not_rod
|0DAC13| TYA
|0DAC14| AND.w #$00FF
|0DAC17| STA.b $0A

|0DAC19| LDA.w $0109
|0DAC1C| AND.w #$FF00
|0DAC1F| ORA.b $0A
|0DAC21| STA.w $0109

|0DAC24| AND.w #$0007
|0DAC27| BEQ .dont_invert

|0DAC29| BRA .succeed

.is_shield
|0DAC2B| TYA
|0DAC2C| AND.w #$00FF
|0DAC2F| STA.b $0A

|0DAC31| LDA.w $0108
|0DAC34| AND.w #$FF00
|0DAC37| ORA.b $0A
|0DAC39| STA.w $0108

.dont_invert
|0DAC3C| LDA.w #$0002
|0DAC3F| STA.b $0C

;---------------------------------------------------------------------------------------------------

.succeed
|0DAC41| CLC

|0DAC42| RTS

.fail
|0DAC43| SEC

|0DAC44| RTS

;===================================================================================================

SwordSwingTipTile:
.up
|0DAC45| dw $FFFF
|0DAC47| dw $FFFF
|0DAC49| dw $6A3E
|0DAC4B| dw $6A2F
|0DAC4D| dw $6A2F
|0DAC4F| dw $2A05
|0DAC51| dw $2A2F
|0DAC53| dw $2A3E
|0DAC55| dw $FFFF

.down
|0DAC57| dw $FFFF
|0DAC59| dw $FFFF
|0DAC5B| dw $AA3E
|0DAC5D| dw $AA2F
|0DAC5F| dw $AA2F
|0DAC61| dw $AA05
|0DAC63| dw $EA2F
|0DAC65| dw $EA3E
|0DAC67| dw $FFFF

.left
|0DAC69| dw $FFFF
|0DAC6B| dw $FFFF
|0DAC6D| dw $2A3E
|0DAC6F| dw $2A3F
|0DAC71| dw $2A3F
|0DAC73| dw $2A05
|0DAC75| dw $AA3F
|0DAC77| dw $AA3E
|0DAC79| dw $FFFF

.right
|0DAC7B| dw $FFFF
|0DAC7D| dw $FFFF
|0DAC7F| dw $6A3E
|0DAC81| dw $6A3F
|0DAC83| dw $6A3F
|0DAC85| dw $6A05
|0DAC87| dw $EA3F
|0DAC89| dw $EA3E
|0DAC8B| dw $FFFF

;===================================================================================================

SwordSwingTipOffsetY:
.up
|0DAC8D| db $FF
|0DAC8E| db $FF
|0DAC8F| db $FB
|0DAC90| db $F3
|0DAC91| db $F1
|0DAC92| db $EB
|0DAC93| db $F3
|0DAC94| db $FB
|0DAC95| db $FF

.down
|0DAC96| db $FF
|0DAC97| db $FF
|0DAC98| db $16
|0DAC99| db $1B
|0DAC9A| db $1D
|0DAC9B| db $23
|0DAC9C| db $1B
|0DAC9D| db $18
|0DAC9E| db $FF

.left
|0DAC9F| db $FF
|0DACA0| db $FF
|0DACA1| db $FF
|0DACA2| db $02
|0DACA3| db $05
|0DACA4| db $0C
|0DACA5| db $14
|0DACA6| db $1A
|0DACA7| db $FF

.right
|0DACA8| db $FF
|0DACA9| db $FF
|0DACAA| db $FF
|0DACAB| db $02
|0DACAC| db $05
|0DACAD| db $0C
|0DACAE| db $14
|0DACAF| db $1A
|0DACB0| db $FF

;===================================================================================================

SwordSwingTipOffsetX:
.up
|0DACB1| db $FF
|0DACB2| db $FF
|0DACB3| db $0F
|0DACB4| db $0D
|0DACB5| db $08
|0DACB6| db $FF
|0DACB7| db $F6
|0DACB8| db $F2
|0DACB9| db $FF

.down
|0DACBA| db $FF
|0DACBB| db $FF
|0DACBC| db $FA
|0DACBD| db $FD
|0DACBE| db $01
|0DACBF| db $08
|0DACC0| db $10
|0DACC1| db $15
|0DACC2| db $FF

.left
|0DACC3| db $FF
|0DACC4| db $FF
|0DACC5| db $F5
|0DACC6| db $F1
|0DACC7| db $EE
|0DACC8| db $E8
|0DACC9| db $EF
|0DACCA| db $F4
|0DACCB| db $FF

.right
|0DACCC| db $FF
|0DACCD| db $FF
|0DACCE| db $13
|0DACCF| db $17
|0DACD0| db $1A
|0DACD1| db $20
|0DACD2| db $19
|0DACD3| db $14
|0DACD4| db $FF

;===================================================================================================

DrawSwordSwingTip:
|0DACD5| LDA.b $0A
|0DACD7| PHA

|0DACD8| PHY

|0DACD9| LDA.b $5D ; LINKSTATE 00
|0DACDB| BEQ .base_link_state

.give_up
|0DACDD| BRL .reset_and_exit

;---------------------------------------------------------------------------------------------------

.base_link_state
|0DACE0| LDA.l $7EF359
|0DACE4| AND.w #$00FF
|0DACE7| BEQ .give_up

|0DACE9| CMP.w #$00FF
|0DACEC| BEQ .give_up

|0DACEE| CMP.w #$0001
|0DACF1| BEQ .give_up

|0DACF3| LDA.b $3A
|0DACF5| AND.w #$0080
|0DACF8| BEQ .give_up

|0DACFA| LDA.b $3C
|0DACFC| AND.w #$00FF
|0DACFF| CMP.w #$0009
|0DAD02| BCS .give_up

|0DAD04| ASL A
|0DAD05| STA.b $0A

|0DAD07| LDA.b $2F
|0DAD09| AND.w #$00FF
|0DAD0C| LSR A
|0DAD0D| STA.b $0E

|0DAD0F| ASL A
|0DAD10| ASL A
|0DAD11| ASL A

|0DAD12| CLC
|0DAD13| ADC.b $0E

|0DAD15| ASL A
|0DAD16| CLC
|0DAD17| ADC.b $0A
|0DAD19| TAY

|0DAD1A| LDA.w SwordSwingTipTile,Y
|0DAD1D| CMP.w #$FFFF
|0DAD20| BEQ .reset_and_exit

|0DAD22| AND.w #$CFFF
|0DAD25| ORA.b $64
|0DAD27| STA.w $0802,X

;---------------------------------------------------------------------------------------------------

|0DAD2A| LDA.w $0346
|0DAD2D| BNE .no_palette_adjust

|0DAD2F| LDA.w $0802,X
|0DAD32| AND.w #$F1FF
|0DAD35| ORA.w #$0600
|0DAD38| STA.w $0802,X

.no_palette_adjust
|0DAD3B| TYA
|0DAD3C| LSR A
|0DAD3D| TAY

|0DAD3E| SEP #$20

|0DAD40| LDA.w SwordSwingTipOffsetY,Y
|0DAD43| CLC
|0DAD44| ADC.b $01
|0DAD46| STA.b $0B

|0DAD48| LDA.w SwordSwingTipOffsetX,Y
|0DAD4B| CLC
|0DAD4C| ADC.b $00
|0DAD4E| STA.b $0A

|0DAD50| LDA.w SwordSwingTipOffsetY,Y
|0DAD53| STA.b $44

|0DAD55| LDA.w SwordSwingTipOffsetX,Y
|0DAD58| STA.b $45

|0DAD5A| JSR CalculateEquipmentOffsetX

|0DAD5D| REP #$20

|0DAD5F| LDA.b $0A
|0DAD61| STA.w $0800,X

|0DAD64| INX ; +4
|0DAD65| INX
|0DAD66| INX
|0DAD67| INX

|0DAD68| PHX

|0DAD69| TXA
|0DAD6A| SEC
|0DAD6B| SBC.w #$0004
|0DAD6E| LSR A
|0DAD6F| LSR A
|0DAD70| TAX

|0DAD71| LDA.w #$0000
|0DAD74| ORA.w $03FA
|0DAD77| STA.w $0A20,X

|0DAD7A| PLX

;---------------------------------------------------------------------------------------------------

.reset_and_exit
|0DAD7B| STZ.b $0E

|0DAD7D| PLY

|0DAD7E| PLA
|0DAD7F| STA.b $0A

|0DAD81| RTS

;===================================================================================================
; This has a caller, but it seems the branch that skips over it is always taken in practice.
; TODO should still figure out what this routine does
;===================================================================================================
pool UnusedWeaponSettings

.props
|0DAD82| dw $2609

.index
|0DAD84| db $FF, $FF, $FF, $FF
|0DAD88| db $00, $FF, $FF, $FF
|0DAD8C| db $00, $00, $FF, $FF
|0DAD90| db $00, $00, $00, $FF

.offset_x
|0DAD94| db $FF, $FF, $FF, $FF
|0DAD98| db   8, $FF, $FF, $FF
|0DAD9C| db   8,   5, $FF, $FF
|0DADA0| db   8,   5,   2, $FF

.offset_y
|0DADA4| db $FF, $FF, $FF, $FF
|0DADA8| db  14, $FF, $FF, $FF
|0DADAC| db  14,  22, $FF, $FF
|0DADB0| db  14,  22,  30, $FF

.offset
|0DADB4| db $00
|0DADB5| db $04

endpool

;---------------------------------------------------------------------------------------------------

UnusedWeaponSettings:
|0DADB6| SEP #$30

; The usage here doesn't make much sense either.
; If this routine were reachable, it would always enter with A=04.
; That means X will always be 00.
|0DADB8| LSR A
|0DADB9| LSR A
|0DADBA| JSR FindMostSignificantBit

|0DADBD| LDA.w .offset,X
|0DADC0| CLC
|0DADC1| ADC.w $030E
|0DADC4| ASL A
|0DADC5| ASL A
|0DADC6| STA.b $06
|0DADC8| STZ.b $07

;---------------------------------------------------------------------------------------------------

|0DADCA| LDA.b #$42
|0DADCC| STA.w $0109

|0DADCF| REP #$30

|0DADD1| LDX.b $72

|0DADD3| LDA.w WeaponOAMBufferOffsetPointers,X
|0DADD6| STA.b $74

|0DADD8| LDA.b $04
|0DADDA| AND.w #$00FF
|0DADDD| TAY

|0DADDE| LDA.b ($74),Y
|0DADE0| AND.w #$00FF
|0DADE3| CLC
|0DADE4| ADC.w $0352
|0DADE7| TAX

|0DADE8| LDY.b $06
|0DADEA| STZ.b $06

;---------------------------------------------------------------------------------------------------

.next_object
|0DADEC| SEP #$20

|0DADEE| LDA.b $01
|0DADF0| CLC
|0DADF1| ADC.w .offset_x,Y
|0DADF4| STA.b $0B

|0DADF6| LDA.b $00
|0DADF8| CLC
|0DADF9| ADC.w .offset_y,Y
|0DADFC| STA.b $0A

|0DADFE| PHY

|0DADFF| LDA.w .index,Y
|0DAE02| CMP.b #$FF
|0DAE04| BEQ .skip

|0DAE06| REP #$20

|0DAE08| AND.w #$00FF
|0DAE0B| TAY

|0DAE0C| LDA.w .props,Y
|0DAE0F| AND.w #$CFFF
|0DAE12| ORA.b $64
|0DAE14| STA.w $0802,X

|0DAE17| LDA.b $0A
|0DAE19| STA.w $0800,X

|0DAE1C| PHX

|0DAE1D| TXA
|0DAE1E| LSR A
|0DAE1F| LSR A
|0DAE20| TAX

|0DAE21| SEP #$20

|0DAE23| STZ.w $0A20,X

|0DAE26| PLX
|0DAE27| INX ; +4
|0DAE28| INX
|0DAE29| INX
|0DAE2A| INX

.skip
|0DAE2B| PLY
|0DAE2C| INY

|0DAE2D| INC.b $06

|0DAE2F| LDA.b $06
|0DAE31| CMP.b #$04
|0DAE33| BNE .next_object

|0DAE35| REP #$30

|0DAE37| RTS

;===================================================================================================

pool DrawFallingShadow

.offset_x
|0DAE38| db $00
|0DAE39| db $00
|0DAE3A| db $04

endpool

;---------------------------------------------------------------------------------------------------

DrawFallingShadow:
; 0x00 = big shadow
; 0x04 = medium shadow
; 0x08 = tiny shadow
|0DAE3B| LDY.b #$00

|0DAE3D| LDA.b $51
|0DAE3F| SEC
|0DAE40| SBC.b #$0C
|0DAE42| SEC
|0DAE43| SBC.b $20

|0DAE45| CMP.b #$F0
|0DAE47| BCS .shadow_size_chosen

|0DAE49| CMP.b #$30
|0DAE4B| BCC .not_medium_shadow

|0DAE4D| LDY.b #$04

.not_medium_shadow
|0DAE4F| CMP.b #$60
|0DAE51| BCC .shadow_size_chosen

|0DAE53| LDY.b #$08

;---------------------------------------------------------------------------------------------------

.shadow_size_chosen
|0DAE55| TYA
|0DAE56| LSR A
|0DAE57| LSR A
|0DAE58| TAX

|0DAE59| LDA.w .offset_x,X
|0DAE5C| STA.b $06

|0DAE5E| LDA.b $51
|0DAE60| SEC
|0DAE61| SBC.b #$0C
|0DAE63| SEC
|0DAE64| SBC.b $E8
|0DAE66| CLC
|0DAE67| ADC.b #$1D
|0DAE69| STA.b $07

;---------------------------------------------------------------------------------------------------

|0DAE6B| LDA.b $00
|0DAE6D| CLC
|0DAE6E| ADC.b $06
|0DAE70| STA.b $06

|0DAE72| STZ.b $04

|0DAE74| REP #$30

|0DAE76| PHY

|0DAE77| LDX.b $72

|0DAE79| LDA.w ShadowOAMBufferOffsetPointers,X
|0DAE7C| STA.b $74

|0DAE7E| LDA.b $03
|0DAE80| AND.w #$00FF
|0DAE83| TAY

|0DAE84| LDA.b ($74),Y
|0DAE86| AND.w #$00FF
|0DAE89| CLC
|0DAE8A| ADC.w $0352

|0DAE8D| TAX

|0DAE8E| PLY

;---------------------------------------------------------------------------------------------------

.next_object
|0DAE8F| REP #$20

|0DAE91| LDA.w ShadowDrawTiles+0,Y
|0DAE94| CMP.w #$FFFF
|0DAE97| BEQ .no_tile

|0DAE99| AND.w #$CFFF
|0DAE9C| ORA.w $035D
|0DAE9F| STA.w $0802,X

|0DAEA2| LDA.b $06
|0DAEA4| STA.w $0800,X

.no_tile
|0DAEA7| PHX

|0DAEA8| TXA
|0DAEA9| LSR A
|0DAEAA| LSR A
|0DAEAB| TAX

|0DAEAC| SEP #$20

|0DAEAE| STZ.w $0A20,X

|0DAEB1| PLX

|0DAEB2| LDA.b $06
|0DAEB4| CLC
|0DAEB5| ADC.b #$08
|0DAEB7| STA.b $06

|0DAEB9| INY
|0DAEBA| INY

|0DAEBB| INX ; +4
|0DAEBC| INX
|0DAEBD| INX
|0DAEBE| INX

|0DAEBF| INC.b $04

|0DAEC1| LDA.b $04
|0DAEC3| CMP.b #$02
|0DAEC5| BNE .next_object

;---------------------------------------------------------------------------------------------------

|0DAEC7| SEP #$10

|0DAEC9| RTS

;===================================================================================================

pool DrawFootObject

.aux_check
|0DAECA| db $0A
|0DAECB| db $02
|0DAECC| db $0E

.shield_direction
|0DAECD| db $04 ; up
|0DAECE| db $04 ; down
|0DAECF| db $08 ; left
|0DAED0| db $08 ; right

endpool

;---------------------------------------------------------------------------------------------------

DrawFootObject:
|0DAED1| LDA.w $0356
|0DAED4| INC A
|0DAED5| AND.b #$0F
|0DAED7| STA.w $0356

|0DAEDA| CMP.b #$09
|0DAEDC| BCC .dont_reset_foot_object

|0DAEDE| STZ.w $0356

|0DAEE1| LDA.w $0355
|0DAEE4| INC A
|0DAEE5| AND.b #$03
|0DAEE7| STA.w $0355

|0DAEEA| CMP.b #$03 ; [USELESS] since there's an AND
|0DAEEC| BNE .dont_reset_foot_object

|0DAEEE| STZ.w $0355

.dont_reset_foot_object
|0DAEF1| LDA.l $7EF35A
|0DAEF5| TAY

|0DAEF6| LDA.w $0323
|0DAEF9| LSR A
|0DAEFA| CLC
|0DAEFB| ADC.w .shield_direction,Y
|0DAEFE| TAY

|0DAEFF| LDA.b $01
|0DAF01| CLC
|0DAF02| ADC.w LinkShadowOffsetY,Y
|0DAF05| STA.b $07

|0DAF07| LDA.b $00
|0DAF09| CLC
|0DAF0A| ADC.w LinkShadowOffsetX,Y
|0DAF0D| STA.b $06

|0DAF0F| LDA.w $0355
|0DAF12| ASL A
|0DAF13| ASL A
|0DAF14| STA.b $8D

;---------------------------------------------------------------------------------------------------

|0DAF16| PHY

|0DAF17| LDX.b $72

|0DAF19| LDA.w ShadowOAMBufferOffsetPointers+0,X
|0DAF1C| STA.b $74

|0DAF1E| LDA.w ShadowOAMBufferOffsetPointers+1,X
|0DAF21| STA.b $75

|0DAF23| LDY.b $04

|0DAF25| LDA.b ($74),Y
|0DAF27| TAX

|0DAF28| PLY

|0DAF29| LDA.w $0351
|0DAF2C| CMP.b #$02
|0DAF2E| BNE .not_tall_grass

;---------------------------------------------------------------------------------------------------

|0DAF30| LDY.b #$06

; find foot object
.check_next
|0DAF32| LDA.w .aux_check,Y
|0DAF35| CMP.w $0354
|0DAF38| BNE .wrong

|0DAF3A| STZ.b $8D

|0DAF3C| BRA .check_step

.wrong
|0DAF3E| DEY
|0DAF3F| BPL .check_next

;---------------------------------------------------------------------------------------------------

.check_step
|0DAF41| LDA.b $2E
|0DAF43| CMP.b #$03
|0DAF45| BCC .dont_reset_step

|0DAF47| SEC
|0DAF48| SBC.b #$03

.dont_reset_step
|0DAF4A| ASL A
|0DAF4B| ASL A
|0DAF4C| STA.b $8D

|0DAF4E| LDA.b #$08
|0DAF50| ASL A
|0DAF51| ASL A
|0DAF52| CLC
|0DAF53| ADC.b $8D
|0DAF55| TAY

|0DAF56| BRA .continue

;---------------------------------------------------------------------------------------------------

.not_tall_grass
|0DAF58| LDA.b #$05
|0DAF5A| ASL A
|0DAF5B| ASL A
|0DAF5C| CLC
|0DAF5D| ADC.b $8D
|0DAF5F| TAY

.continue
|0DAF60| REP #$30

|0DAF62| TYA
|0DAF63| AND.w #$00FF
|0DAF66| TAY

|0DAF67| TXA
|0DAF68| AND.w #$00FF
|0DAF6B| CLC
|0DAF6C| ADC.w $0352
|0DAF6F| TAX

|0DAF70| LDA.w ShadowDrawTiles+0,Y
|0DAF73| AND.w #$CFFF
|0DAF76| ORA.w $035D
|0DAF79| STA.w $0802,X

|0DAF7C| LDA.w ShadowDrawTiles+2,Y
|0DAF7F| ORA.w $035D
|0DAF82| STA.w $0806,X

|0DAF85| LDA.b $06
|0DAF87| STA.w $0800,X

|0DAF8A| XBA
|0DAF8B| CLC
|0DAF8C| ADC.w #$0800
|0DAF8F| XBA
|0DAF90| STA.w $0804,X

|0DAF93| TXA
|0DAF94| LSR A
|0DAF95| LSR A
|0DAF96| TAX

|0DAF97| STZ.w $0A20,X

|0DAF9A| SEP #$30

|0DAF9C| RTS

;===================================================================================================

pool UNREACHABLE_0DAFA6

.base
|0DAF9D| db $00, $00, $00, $01
|0DAFA1| db $00, $01, $01, $01
|0DAFA5| db $00

endpool

;---------------------------------------------------------------------------------------------------

UNREACHABLE_0DAFA6:
|0DAFA6| SEP #$30

|0DAFA8| LDX.b $2E

|0DAFAA| LDA.w $0354
|0DAFAD| CMP.b #$19
|0DAFAF| BNE .no_thanks

|0DAFB1| LDA.w ClimbingStairsPose,X
|0DAFB4| TAX

.no_thanks
|0DAFB5| LDA.w .base,X
|0DAFB8| CLC
|0DAFB9| ADC.b $01
|0DAFBB| STA.b $01

|0DAFBD| REP #$30

|0DAFBF| RTS

;===================================================================================================

CalculateEquipmentOffsetX:
|0DAFC0| REP #$20

|0DAFC2| AND.w #$00FF
|0DAFC5| CMP.w #$0080
|0DAFC8| BCC .positive

|0DAFCA| ORA.w #$FF00

.positive
|0DAFCD| CLC
|0DAFCE| ADC.b $22

|0DAFD0| SEC
|0DAFD1| SBC.b $E2

|0DAFD3| XBA

|0DAFD4| AND.w #$0001
|0DAFD7| STA.w $03FA

|0DAFDA| SEP #$20

|0DAFDC| RTS

;===================================================================================================
; FREE ROM: 0xA3
;===================================================================================================
NULL_0DAFDD:
|0DAFDD| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DAFE5| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DAFED| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DAFF5| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DAFFD| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DB005| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DB00D| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DB015| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DB01D| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DB025| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DB02D| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DB035| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DB03D| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DB045| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DB04D| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DB055| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DB05D| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DB065| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DB06D| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DB075| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DB07D| db $FF, $FF, $FF

;===================================================================================================
; hmwo oooo
;   h - harmless sprite
;   m - die when out of room/screen bounds during tile collision
;   w - use a different tile hitbox and fewer checks
;   o - oam allocation
;===================================================================================================
SpriteData_OAMHarm:
|0DB080| db $01 ; ... $01 | 0x00 - RAVEN
|0DB081| db $02 ; ... $02 | 0x01 - VULTURE
|0DB082| db $01 ; ... $01 | 0x02 - STALFOS HEAD
|0DB083| db $82 ; h.. $02 | 0x03 - NULL
|0DB084| db $81 ; h.. $01 | 0x04 - CORRECT PULL SWITCH
|0DB085| db $84 ; h.. $04 | 0x05 - UNUSED CORRECT PULL SWITCH
|0DB086| db $84 ; h.. $04 | 0x06 - WRONG PULL SWITCH
|0DB087| db $84 ; h.. $04 | 0x07 - UNUSED WRONG PULL SWITCH
|0DB088| db $02 ; ... $02 | 0x08 - OCTOROK
|0DB089| db $0F ; ... $0F | 0x09 - MOLDORM
|0DB08A| db $02 ; ... $02 | 0x0A - OCTOROK 4WAY
|0DB08B| db $01 ; ... $01 | 0x0B - CUCCO
|0DB08C| db $20 ; ..w $00 | 0x0C - OCTOROK STONE
|0DB08D| db $03 ; ... $03 | 0x0D - BUZZBLOB
|0DB08E| db $04 ; ... $04 | 0x0E - SNAPDRAGON
|0DB08F| db $84 ; h.. $04 | 0x0F - OCTOBALLOON
|0DB090| db $01 ; ... $01 | 0x10 - OCTOBALLOON BABY
|0DB091| db $05 ; ... $05 | 0x11 - HINOX
|0DB092| db $04 ; ... $04 | 0x12 - MOBLIN
|0DB093| db $01 ; ... $01 | 0x13 - MINI HELMASAUR
|0DB094| db $80 ; h.. $00 | 0x14 - THIEVES TOWN GRATE
|0DB095| db $04 ; ... $04 | 0x15 - ANTIFAIRY
|0DB096| db $A2 ; h.w $02 | 0x16 - SAHASRAHLA / AGINAH
|0DB097| db $83 ; h.. $03 | 0x17 - BUSH HOARDER
|0DB098| db $04 ; ... $04 | 0x18 - MINI MOLDORM
|0DB099| db $02 ; ... $02 | 0x19 - POE
|0DB09A| db $82 ; h.. $02 | 0x1A - SMITHY
|0DB09B| db $62 ; .mw $02 | 0x1B - ARROW
|0DB09C| db $82 ; h.. $02 | 0x1C - STATUE
|0DB09D| db $80 ; h.. $00 | 0x1D - FLUTE QUEST
|0DB09E| db $80 ; h.. $00 | 0x1E - CRYSTAL SWITCH
|0DB09F| db $85 ; h.. $05 | 0x1F - SICK KID
|0DB0A0| db $01 ; ... $01 | 0x20 - SLUGGULA
|0DB0A1| db $A5 ; h.w $05 | 0x21 - WATER SWITCH
|0DB0A2| db $03 ; ... $03 | 0x22 - ROPA
|0DB0A3| db $04 ; ... $04 | 0x23 - RED BARI
|0DB0A4| db $04 ; ... $04 | 0x24 - BLUE BARI
|0DB0A5| db $83 ; h.. $03 | 0x25 - TALKING TREE
|0DB0A6| db $02 ; ... $02 | 0x26 - HARDHAT BEETLE
|0DB0A7| db $01 ; ... $01 | 0x27 - DEADROCK
|0DB0A8| db $82 ; h.. $02 | 0x28 - DARK WORLD HINT NPC
|0DB0A9| db $A2 ; h.w $02 | 0x29 - ADULT
|0DB0AA| db $A2 ; h.w $02 | 0x2A - SWEEPING LADY
|0DB0AB| db $A3 ; h.w $03 | 0x2B - HOBO
|0DB0AC| db $AA ; h.w $0A | 0x2C - LUMBERJACKS
|0DB0AD| db $A3 ; h.w $03 | 0x2D - NECKLESS MAN
|0DB0AE| db $A4 ; h.w $04 | 0x2E - FLUTE KID
|0DB0AF| db $82 ; h.. $02 | 0x2F - RACE GAME LADY
|0DB0B0| db $82 ; h.. $02 | 0x30 - RACE GAME GUY
|0DB0B1| db $83 ; h.. $03 | 0x31 - FORTUNE TELLER
|0DB0B2| db $82 ; h.. $02 | 0x32 - ARGUE BROS
|0DB0B3| db $80 ; h.. $00 | 0x33 - RUPEE PULL
|0DB0B4| db $82 ; h.. $02 | 0x34 - YOUNG SNITCH
|0DB0B5| db $82 ; h.. $02 | 0x35 - INNKEEPER
|0DB0B6| db $A5 ; h.w $05 | 0x36 - WITCH
|0DB0B7| db $80 ; h.. $00 | 0x37 - WATERFALL
|0DB0B8| db $A4 ; h.w $04 | 0x38 - EYE STATUE
|0DB0B9| db $82 ; h.. $02 | 0x39 - LOCKSMITH
|0DB0BA| db $81 ; h.. $01 | 0x3A - MAGIC BAT
|0DB0BB| db $82 ; h.. $02 | 0x3B - BONK ITEM
|0DB0BC| db $82 ; h.. $02 | 0x3C - KID IN KAK
|0DB0BD| db $82 ; h.. $02 | 0x3D - OLD SNITCH
|0DB0BE| db $81 ; h.. $01 | 0x3E - ROCK HOARDER
|0DB0BF| db $06 ; ... $06 | 0x3F - TUTORIAL GUARD
|0DB0C0| db $08 ; ... $08 | 0x40 - LIGHTNING GATE
|0DB0C1| db $08 ; ... $08 | 0x41 - BLUE GUARD
|0DB0C2| db $08 ; ... $08 | 0x42 - GREEN GUARD
|0DB0C3| db $08 ; ... $08 | 0x43 - RED SPEAR GUARD
|0DB0C4| db $06 ; ... $06 | 0x44 - BLUESAIN BOLT
|0DB0C5| db $08 ; ... $08 | 0x45 - USAIN BOLT
|0DB0C6| db $08 ; ... $08 | 0x46 - BLUE ARCHER
|0DB0C7| db $08 ; ... $08 | 0x47 - GREEN BUSH GUARD
|0DB0C8| db $06 ; ... $06 | 0x48 - RED JAVELIN GUARD
|0DB0C9| db $07 ; ... $07 | 0x49 - RED BUSH GUARD
|0DB0CA| db $07 ; ... $07 | 0x4A - BOMB GUARD
|0DB0CB| db $02 ; ... $02 | 0x4B - GREEN KNIFE GUARD
|0DB0CC| db $02 ; ... $02 | 0x4C - GELDMAN
|0DB0CD| db $22 ; ..w $02 | 0x4D - TOPPO
|0DB0CE| db $01 ; ... $01 | 0x4E - POPO
|0DB0CF| db $01 ; ... $01 | 0x4F - POPO
|0DB0D0| db $20 ; ..w $00 | 0x50 - CANNONBALL
|0DB0D1| db $82 ; h.. $02 | 0x51 - ARMOS STATUE
|0DB0D2| db $07 ; ... $07 | 0x52 - KING ZORA
|0DB0D3| db $85 ; h.. $05 | 0x53 - ARMOS KNIGHT
|0DB0D4| db $0F ; ... $0F | 0x54 - LANMOLAS
|0DB0D5| db $21 ; ..w $01 | 0x55 - ZORA / FIREBALL
|0DB0D6| db $05 ; ... $05 | 0x56 - WALKING ZORA
|0DB0D7| db $83 ; h.. $03 | 0x57 - DESERT STATUE
|0DB0D8| db $02 ; ... $02 | 0x58 - CRAB
|0DB0D9| db $01 ; ... $01 | 0x59 - LOST WOODS BIRD
|0DB0DA| db $01 ; ... $01 | 0x5A - LOST WOODS SQUIRREL
|0DB0DB| db $01 ; ... $01 | 0x5B - SPARK
|0DB0DC| db $01 ; ... $01 | 0x5C - SPARK
|0DB0DD| db $07 ; ... $07 | 0x5D - ROLLER VERTICAL DOWN FIRST
|0DB0DE| db $07 ; ... $07 | 0x5E - ROLLER VERTICAL UP FIRST
|0DB0DF| db $07 ; ... $07 | 0x5F - ROLLER HORIZONTAL RIGHT FIRST
|0DB0E0| db $07 ; ... $07 | 0x60 - ROLLER HORIZONTAL LEFT FIRST
|0DB0E1| db $00 ; ... $00 | 0x61 - BEAMOS
|0DB0E2| db $85 ; h.. $05 | 0x62 - MASTERSWORD
|0DB0E3| db $83 ; h.. $03 | 0x63 - DEBIRANDO PIT
|0DB0E4| db $03 ; ... $03 | 0x64 - DEBIRANDO
|0DB0E5| db $A4 ; h.w $04 | 0x65 - ARCHERY GUY
|0DB0E6| db $00 ; ... $00 | 0x66 - WALL CANNON VERTICAL LEFT
|0DB0E7| db $00 ; ... $00 | 0x67 - WALL CANNON VERTICAL RIGHT
|0DB0E8| db $00 ; ... $00 | 0x68 - WALL CANNON HORIZONTAL TOP
|0DB0E9| db $00 ; ... $00 | 0x69 - WALL CANNON HORIZONTAL BOTTOM
|0DB0EA| db $09 ; ... $09 | 0x6A - BALL N CHAIN
|0DB0EB| db $04 ; ... $04 | 0x6B - CANNONBALL / CANNON TROOPER
|0DB0EC| db $A0 ; h.w $00 | 0x6C - MIRROR PORTAL
|0DB0ED| db $00 ; ... $00 | 0x6D - RAT / CRICKET
|0DB0EE| db $01 ; ... $01 | 0x6E - ROPE
|0DB0EF| db $00 ; ... $00 | 0x6F - KEESE
|0DB0F0| db $00 ; ... $00 | 0x70 - KING HELMASAUR FIREBALL
|0DB0F1| db $03 ; ... $03 | 0x71 - LEEVER
|0DB0F2| db $8B ; h.. $0B | 0x72 - FAIRY POND TRIGGER
|0DB0F3| db $86 ; h.. $06 | 0x73 - UNCLE / PRIEST / MANTLE
|0DB0F4| db $C2 ; hm. $02 | 0x74 - RUNNING BOY
|0DB0F5| db $82 ; h.. $02 | 0x75 - BOTTLE MERCHANT
|0DB0F6| db $81 ; h.. $01 | 0x76 - ZELDA
|0DB0F7| db $04 ; ... $04 | 0x77 - ANTIFAIRY
|0DB0F8| db $82 ; h.. $02 | 0x78 - SAHASRAHLAS WIFE
|0DB0F9| db $21 ; ..w $01 | 0x79 - BEE
|0DB0FA| db $06 ; ... $06 | 0x7A - AGAHNIM
|0DB0FB| db $03 ; ... $03 | 0x7B - AGAHNIMS BALLS
|0DB0FC| db $01 ; ... $01 | 0x7C - GREEN STALFOS
|0DB0FD| db $03 ; ... $03 | 0x7D - BIG SPIKE
|0DB0FE| db $03 ; ... $03 | 0x7E - FIREBAR CLOCKWISE
|0DB0FF| db $03 ; ... $03 | 0x7F - FIREBAR COUNTERCLOCKWISE
|0DB100| db $00 ; ... $00 | 0x80 - FIRESNAKE
|0DB101| db $00 ; ... $00 | 0x81 - HOVER
|0DB102| db $04 ; ... $04 | 0x82 - ANTIFAIRY CIRCLE
|0DB103| db $05 ; ... $05 | 0x83 - GREEN EYEGORE / GREEN MIMIC
|0DB104| db $05 ; ... $05 | 0x84 - RED EYEGORE / RED MIMIC
|0DB105| db $03 ; ... $03 | 0x85 - YELLOW STALFOS
|0DB106| db $01 ; ... $01 | 0x86 - KODONGO
|0DB107| db $02 ; ... $02 | 0x87 - KODONGO FIRE
|0DB108| db $00 ; ... $00 | 0x88 - MOTHULA
|0DB109| db $00 ; ... $00 | 0x89 - MOTHULA BEAM
|0DB10A| db $00 ; ... $00 | 0x8A - SPIKE BLOCK
|0DB10B| db $02 ; ... $02 | 0x8B - GIBDO
|0DB10C| db $07 ; ... $07 | 0x8C - ARRGHUS
|0DB10D| db $00 ; ... $00 | 0x8D - ARRGHI
|0DB10E| db $01 ; ... $01 | 0x8E - TERRORPIN
|0DB10F| db $01 ; ... $01 | 0x8F - BLOB
|0DB110| db $87 ; h.. $07 | 0x90 - WALLMASTER
|0DB111| db $06 ; ... $06 | 0x91 - STALFOS KNIGHT
|0DB112| db $00 ; ... $00 | 0x92 - KING HELMASAUR
|0DB113| db $83 ; h.. $03 | 0x93 - BUMPER
|0DB114| db $02 ; ... $02 | 0x94 - PIROGUSU
|0DB115| db $22 ; ..w $02 | 0x95 - LASER EYE LEFT
|0DB116| db $22 ; ..w $02 | 0x96 - LASER EYE RIGHT
|0DB117| db $22 ; ..w $02 | 0x97 - LASER EYE TOP
|0DB118| db $22 ; ..w $02 | 0x98 - LASER EYE BOTTOM
|0DB119| db $04 ; ... $04 | 0x99 - PENGATOR
|0DB11A| db $03 ; ... $03 | 0x9A - KYAMERON
|0DB11B| db $05 ; ... $05 | 0x9B - WIZZROBE
|0DB11C| db $01 ; ... $01 | 0x9C - ZORO
|0DB11D| db $01 ; ... $01 | 0x9D - BABASU
|0DB11E| db $04 ; ... $04 | 0x9E - HAUNTED GROVE OSTRICH
|0DB11F| db $01 ; ... $01 | 0x9F - HAUNTED GROVE RABBIT
|0DB120| db $02 ; ... $02 | 0xA0 - HAUNTED GROVE BIRD
|0DB121| db $08 ; ... $08 | 0xA1 - FREEZOR
|0DB122| db $08 ; ... $08 | 0xA2 - KHOLDSTARE
|0DB123| db $80 ; h.. $00 | 0xA3 - KHOLDSTARE SHELL
|0DB124| db $21 ; ..w $01 | 0xA4 - FALLING ICE
|0DB125| db $03 ; ... $03 | 0xA5 - BLUE ZAZAK
|0DB126| db $03 ; ... $03 | 0xA6 - RED ZAZAK
|0DB127| db $03 ; ... $03 | 0xA7 - STALFOS
|0DB128| db $02 ; ... $02 | 0xA8 - GREEN ZIRRO
|0DB129| db $02 ; ... $02 | 0xA9 - BLUE ZIRRO
|0DB12A| db $08 ; ... $08 | 0xAA - PIKIT
|0DB12B| db $8F ; h.. $0F | 0xAB - CRYSTAL MAIDEN
|0DB12C| db $A1 ; h.w $01 | 0xAC - APPLE
|0DB12D| db $81 ; h.. $01 | 0xAD - OLD MAN
|0DB12E| db $80 ; h.. $00 | 0xAE - PIPE DOWN
|0DB12F| db $80 ; h.. $00 | 0xAF - PIPE UP
|0DB130| db $80 ; h.. $00 | 0xB0 - PIPE RIGHT
|0DB131| db $80 ; h.. $00 | 0xB1 - PIPE LEFT
|0DB132| db $A1 ; h.w $01 | 0xB2 - GOOD BEE
|0DB133| db $80 ; h.. $00 | 0xB3 - PEDESTAL PLAQUE
|0DB134| db $81 ; h.. $01 | 0xB4 - PURPLE CHEST
|0DB135| db $81 ; h.. $01 | 0xB5 - BOMB SHOP GUY
|0DB136| db $86 ; h.. $06 | 0xB6 - KIKI
|0DB137| db $81 ; h.. $01 | 0xB7 - BLIND MAIDEN
|0DB138| db $82 ; h.. $02 | 0xB8 - DIALOGUE TESTER
|0DB139| db $82 ; h.. $02 | 0xB9 - BULLY / PINK BALL
|0DB13A| db $80 ; h.. $00 | 0xBA - WHIRLPOOL
|0DB13B| db $80 ; h.. $00 | 0xBB - SHOPKEEPER / CHEST GAME GUY
|0DB13C| db $83 ; h.. $03 | 0xBC - DRUNKARD
|0DB13D| db $06 ; ... $06 | 0xBD - VITREOUS
|0DB13E| db $00 ; ... $00 | 0xBE - VITREOUS SMALL EYE
|0DB13F| db $00 ; ... $00 | 0xBF - LIGHTNING
|0DB140| db $05 ; ... $05 | 0xC0 - CATFISH
|0DB141| db $04 ; ... $04 | 0xC1 - CUTSCENE AGAHNIM
|0DB142| db $06 ; ... $06 | 0xC2 - BOULDER
|0DB143| db $05 ; ... $05 | 0xC3 - GIBO
|0DB144| db $02 ; ... $02 | 0xC4 - THIEF
|0DB145| db $00 ; ... $00 | 0xC5 - MEDUSA
|0DB146| db $00 ; ... $00 | 0xC6 - YOMO MEDUSA
|0DB147| db $05 ; ... $05 | 0xC7 - POKEY
|0DB148| db $04 ; ... $04 | 0xC8 - BIG FAIRY
|0DB149| db $04 ; ... $04 | 0xC9 - TEKTITE / FIREBAT
|0DB14A| db $07 ; ... $07 | 0xCA - CHAIN CHOMP
|0DB14B| db $0B ; ... $0B | 0xCB - TRINEXX ROCK HEAD
|0DB14C| db $0C ; ... $0C | 0xCC - TRINEXX FIRE HEAD
|0DB14D| db $0C ; ... $0C | 0xCD - TRINEXX ICE HEAD
|0DB14E| db $06 ; ... $06 | 0xCE - BLIND
|0DB14F| db $06 ; ... $06 | 0xCF - SWAMOLA
|0DB150| db $03 ; ... $03 | 0xD0 - LYNEL
|0DB151| db $A4 ; h.w $04 | 0xD1 - BUNNYBEAM / SMOKE
|0DB152| db $04 ; ... $04 | 0xD2 - FLOPPING FISH
|0DB153| db $82 ; h.. $02 | 0xD3 - STAL
|0DB154| db $81 ; h.. $01 | 0xD4 - LANDMINE
|0DB155| db $83 ; h.. $03 | 0xD5 - DIGGING GAME GUY
|0DB156| db $10 ; ... $10 | 0xD6 - GANON
|0DB157| db $10 ; ... $10 | 0xD7 - GANON
|0DB158| db $81 ; h.. $01 | 0xD8 - HEART
|0DB159| db $82 ; h.. $02 | 0xD9 - GREEN RUPEE
|0DB15A| db $82 ; h.. $02 | 0xDA - BLUE RUPEE
|0DB15B| db $82 ; h.. $02 | 0xDB - RED RUPEE
|0DB15C| db $83 ; h.. $03 | 0xDC - BOMB REFILL 1
|0DB15D| db $83 ; h.. $03 | 0xDD - BOMB REFILL 4
|0DB15E| db $83 ; h.. $03 | 0xDE - BOMB REFILL 8
|0DB15F| db $81 ; h.. $01 | 0xDF - SMALL MAGIC DECANTER
|0DB160| db $82 ; h.. $02 | 0xE0 - LARGE MAGIC DECANTER
|0DB161| db $83 ; h.. $03 | 0xE1 - ARROW REFILL 5
|0DB162| db $83 ; h.. $03 | 0xE2 - ARROW REFILL 10
|0DB163| db $81 ; h.. $01 | 0xE3 - FAIRY
|0DB164| db $82 ; h.. $02 | 0xE4 - SMALL KEY
|0DB165| db $81 ; h.. $01 | 0xE5 - BIG KEY
|0DB166| db $82 ; h.. $02 | 0xE6 - STOLEN SHIELD
|0DB167| db $A0 ; h.w $00 | 0xE7 - MUSHROOM
|0DB168| db $A1 ; h.w $01 | 0xE8 - FAKE MASTER SWORD
|0DB169| db $A3 ; h.w $03 | 0xE9 - MAGIC SHOP ASSISTANT
|0DB16A| db $A1 ; h.w $01 | 0xEA - HEART CONTAINER
|0DB16B| db $A1 ; h.w $01 | 0xEB - HEART PIECE
|0DB16C| db $A1 ; h.w $01 | 0xEC - THROWN ITEM
|0DB16D| db $83 ; h.. $03 | 0xED - SOMARIA PLATFORM
|0DB16E| db $85 ; h.. $05 | 0xEE - CASTLE MANTLE
|0DB16F| db $83 ; h.. $03 | 0xEF - UNUSED SOMARIA PLATFORM
|0DB170| db $83 ; h.. $03 | 0xF0 - UNUSED SOMARIA PLATFORM
|0DB171| db $83 ; h.. $03 | 0xF1 - UNUSED SOMARIA PLATFORM
|0DB172| db $83 ; h.. $03 | 0xF2 - MEDALLION TABLET

;===================================================================================================
; Just a straight up number
;===================================================================================================
SpriteData_Health:
|0DB173| db  12 ; 0x00 - RAVEN
|0DB174| db   6 ; 0x01 - VULTURE
|0DB175| db 255 ; 0x02 - STALFOS HEAD
|0DB176| db   3 ; 0x03 - NULL
|0DB177| db   3 ; 0x04 - CORRECT PULL SWITCH
|0DB178| db   3 ; 0x05 - UNUSED CORRECT PULL SWITCH
|0DB179| db   3 ; 0x06 - WRONG PULL SWITCH
|0DB17A| db   3 ; 0x07 - UNUSED WRONG PULL SWITCH
|0DB17B| db   2 ; 0x08 - OCTOROK
|0DB17C| db  12 ; 0x09 - MOLDORM
|0DB17D| db   4 ; 0x0A - OCTOROK 4WAY
|0DB17E| db 255 ; 0x0B - CUCCO
|0DB17F| db   0 ; 0x0C - OCTOROK STONE
|0DB180| db   3 ; 0x0D - BUZZBLOB
|0DB181| db  12 ; 0x0E - SNAPDRAGON
|0DB182| db   2 ; 0x0F - OCTOBALLOON
|0DB183| db   0 ; 0x10 - OCTOBALLOON BABY
|0DB184| db  20 ; 0x11 - HINOX
|0DB185| db   4 ; 0x12 - MOBLIN
|0DB186| db   4 ; 0x13 - MINI HELMASAUR
|0DB187| db   0 ; 0x14 - THIEVES TOWN GRATE
|0DB188| db 255 ; 0x15 - ANTIFAIRY
|0DB189| db   0 ; 0x16 - SAHASRAHLA / AGINAH
|0DB18A| db   2 ; 0x17 - BUSH HOARDER
|0DB18B| db   3 ; 0x18 - MINI MOLDORM
|0DB18C| db   8 ; 0x19 - POE
|0DB18D| db   0 ; 0x1A - SMITHY
|0DB18E| db   0 ; 0x1B - ARROW
|0DB18F| db   0 ; 0x1C - STATUE
|0DB190| db   0 ; 0x1D - FLUTE QUEST
|0DB191| db   0 ; 0x1E - CRYSTAL SWITCH
|0DB192| db   0 ; 0x1F - SICK KID
|0DB193| db   8 ; 0x20 - SLUGGULA
|0DB194| db   3 ; 0x21 - WATER SWITCH
|0DB195| db   8 ; 0x22 - ROPA
|0DB196| db   2 ; 0x23 - RED BARI
|0DB197| db   2 ; 0x24 - BLUE BARI
|0DB198| db   0 ; 0x25 - TALKING TREE
|0DB199| db   3 ; 0x26 - HARDHAT BEETLE
|0DB19A| db 255 ; 0x27 - DEADROCK
|0DB19B| db   0 ; 0x28 - DARK WORLD HINT NPC
|0DB19C| db   3 ; 0x29 - ADULT
|0DB19D| db   3 ; 0x2A - SWEEPING LADY
|0DB19E| db   3 ; 0x2B - HOBO
|0DB19F| db   3 ; 0x2C - LUMBERJACKS
|0DB1A0| db   3 ; 0x2D - NECKLESS MAN
|0DB1A1| db   3 ; 0x2E - FLUTE KID
|0DB1A2| db   3 ; 0x2F - RACE GAME LADY
|0DB1A3| db   3 ; 0x30 - RACE GAME GUY
|0DB1A4| db   0 ; 0x31 - FORTUNE TELLER
|0DB1A5| db   3 ; 0x32 - ARGUE BROS
|0DB1A6| db   0 ; 0x33 - RUPEE PULL
|0DB1A7| db   3 ; 0x34 - YOUNG SNITCH
|0DB1A8| db   3 ; 0x35 - INNKEEPER
|0DB1A9| db   3 ; 0x36 - WITCH
|0DB1AA| db   0 ; 0x37 - WATERFALL
|0DB1AB| db   3 ; 0x38 - EYE STATUE
|0DB1AC| db   0 ; 0x39 - LOCKSMITH
|0DB1AD| db   0 ; 0x3A - MAGIC BAT
|0DB1AE| db   0 ; 0x3B - BONK ITEM
|0DB1AF| db   0 ; 0x3C - KID IN KAK
|0DB1B0| db   3 ; 0x3D - OLD SNITCH
|0DB1B1| db   2 ; 0x3E - ROCK HOARDER
|0DB1B2| db 255 ; 0x3F - TUTORIAL GUARD
|0DB1B3| db   2 ; 0x40 - LIGHTNING GATE
|0DB1B4| db   6 ; 0x41 - BLUE GUARD
|0DB1B5| db   4 ; 0x42 - GREEN GUARD
|0DB1B6| db   8 ; 0x43 - RED SPEAR GUARD
|0DB1B7| db   6 ; 0x44 - BLUESAIN BOLT
|0DB1B8| db   8 ; 0x45 - USAIN BOLT
|0DB1B9| db   6 ; 0x46 - BLUE ARCHER
|0DB1BA| db   4 ; 0x47 - GREEN BUSH GUARD
|0DB1BB| db   8 ; 0x48 - RED JAVELIN GUARD
|0DB1BC| db   8 ; 0x49 - RED BUSH GUARD
|0DB1BD| db   8 ; 0x4A - BOMB GUARD
|0DB1BE| db   4 ; 0x4B - GREEN KNIFE GUARD
|0DB1BF| db   4 ; 0x4C - GELDMAN
|0DB1C0| db   2 ; 0x4D - TOPPO
|0DB1C1| db   2 ; 0x4E - POPO
|0DB1C2| db   2 ; 0x4F - POPO
|0DB1C3| db 255 ; 0x50 - CANNONBALL
|0DB1C4| db   8 ; 0x51 - ARMOS STATUE
|0DB1C5| db 255 ; 0x52 - KING ZORA
|0DB1C6| db  48 ; 0x53 - ARMOS KNIGHT
|0DB1C7| db  16 ; 0x54 - LANMOLAS
|0DB1C8| db   8 ; 0x55 - ZORA / FIREBALL
|0DB1C9| db   8 ; 0x56 - WALKING ZORA
|0DB1CA| db 255 ; 0x57 - DESERT STATUE
|0DB1CB| db   2 ; 0x58 - CRAB
|0DB1CC| db   0 ; 0x59 - LOST WOODS BIRD
|0DB1CD| db   0 ; 0x5A - LOST WOODS SQUIRREL
|0DB1CE| db 255 ; 0x5B - SPARK
|0DB1CF| db 255 ; 0x5C - SPARK
|0DB1D0| db 255 ; 0x5D - ROLLER VERTICAL DOWN FIRST
|0DB1D1| db 255 ; 0x5E - ROLLER VERTICAL UP FIRST
|0DB1D2| db 255 ; 0x5F - ROLLER HORIZONTAL RIGHT FIRST
|0DB1D3| db 255 ; 0x60 - ROLLER HORIZONTAL LEFT FIRST
|0DB1D4| db 255 ; 0x61 - BEAMOS
|0DB1D5| db 255 ; 0x62 - MASTERSWORD
|0DB1D6| db 255 ; 0x63 - DEBIRANDO PIT
|0DB1D7| db   4 ; 0x64 - DEBIRANDO
|0DB1D8| db   4 ; 0x65 - ARCHERY GUY
|0DB1D9| db 255 ; 0x66 - WALL CANNON VERTICAL LEFT
|0DB1DA| db 255 ; 0x67 - WALL CANNON VERTICAL RIGHT
|0DB1DB| db 255 ; 0x68 - WALL CANNON HORIZONTAL TOP
|0DB1DC| db 255 ; 0x69 - WALL CANNON HORIZONTAL BOTTOM
|0DB1DD| db  16 ; 0x6A - BALL N CHAIN
|0DB1DE| db   3 ; 0x6B - CANNONBALL / CANNON TROOPER
|0DB1DF| db   0 ; 0x6C - MIRROR PORTAL
|0DB1E0| db   2 ; 0x6D - RAT / CRICKET
|0DB1E1| db   4 ; 0x6E - ROPE
|0DB1E2| db   1 ; 0x6F - KEESE
|0DB1E3| db 255 ; 0x70 - KING HELMASAUR FIREBALL
|0DB1E4| db   4 ; 0x71 - LEEVER
|0DB1E5| db 255 ; 0x72 - FAIRY POND TRIGGER
|0DB1E6| db   0 ; 0x73 - UNCLE / PRIEST / MANTLE
|0DB1E7| db   0 ; 0x74 - RUNNING BOY
|0DB1E8| db   0 ; 0x75 - BOTTLE MERCHANT
|0DB1E9| db   0 ; 0x76 - ZELDA
|0DB1EA| db 255 ; 0x77 - ANTIFAIRY
|0DB1EB| db   0 ; 0x78 - SAHASRAHLAS WIFE
|0DB1EC| db   0 ; 0x79 - BEE
|0DB1ED| db  96 ; 0x7A - AGAHNIM
|0DB1EE| db 255 ; 0x7B - AGAHNIMS BALLS
|0DB1EF| db  24 ; 0x7C - GREEN STALFOS
|0DB1F0| db 255 ; 0x7D - BIG SPIKE
|0DB1F1| db 255 ; 0x7E - FIREBAR CLOCKWISE
|0DB1F2| db 255 ; 0x7F - FIREBAR COUNTERCLOCKWISE
|0DB1F3| db   3 ; 0x80 - FIRESNAKE
|0DB1F4| db   4 ; 0x81 - HOVER
|0DB1F5| db 255 ; 0x82 - ANTIFAIRY CIRCLE
|0DB1F6| db  16 ; 0x83 - GREEN EYEGORE / GREEN MIMIC
|0DB1F7| db   8 ; 0x84 - RED EYEGORE / RED MIMIC
|0DB1F8| db   8 ; 0x85 - YELLOW STALFOS
|0DB1F9| db   0 ; 0x86 - KODONGO
|0DB1FA| db 255 ; 0x87 - KODONGO FIRE
|0DB1FB| db  32 ; 0x88 - MOTHULA
|0DB1FC| db  32 ; 0x89 - MOTHULA BEAM
|0DB1FD| db  32 ; 0x8A - SPIKE BLOCK
|0DB1FE| db  32 ; 0x8B - GIBDO
|0DB1FF| db  32 ; 0x8C - ARRGHUS
|0DB200| db   8 ; 0x8D - ARRGHI
|0DB201| db   8 ; 0x8E - TERRORPIN
|0DB202| db   4 ; 0x8F - BLOB
|0DB203| db   8 ; 0x90 - WALLMASTER
|0DB204| db  64 ; 0x91 - STALFOS KNIGHT
|0DB205| db  48 ; 0x92 - KING HELMASAUR
|0DB206| db 255 ; 0x93 - BUMPER
|0DB207| db   2 ; 0x94 - PIROGUSU
|0DB208| db 255 ; 0x95 - LASER EYE LEFT
|0DB209| db 255 ; 0x96 - LASER EYE RIGHT
|0DB20A| db 255 ; 0x97 - LASER EYE TOP
|0DB20B| db 255 ; 0x98 - LASER EYE BOTTOM
|0DB20C| db  16 ; 0x99 - PENGATOR
|0DB20D| db   4 ; 0x9A - KYAMERON
|0DB20E| db   2 ; 0x9B - WIZZROBE
|0DB20F| db   4 ; 0x9C - ZORO
|0DB210| db   4 ; 0x9D - BABASU
|0DB211| db   8 ; 0x9E - HAUNTED GROVE OSTRICH
|0DB212| db   8 ; 0x9F - HAUNTED GROVE RABBIT
|0DB213| db   8 ; 0xA0 - HAUNTED GROVE BIRD
|0DB214| db  16 ; 0xA1 - FREEZOR
|0DB215| db  64 ; 0xA2 - KHOLDSTARE
|0DB216| db  64 ; 0xA3 - KHOLDSTARE SHELL
|0DB217| db   8 ; 0xA4 - FALLING ICE
|0DB218| db   4 ; 0xA5 - BLUE ZAZAK
|0DB219| db   8 ; 0xA6 - RED ZAZAK
|0DB21A| db   4 ; 0xA7 - STALFOS
|0DB21B| db   4 ; 0xA8 - GREEN ZIRRO
|0DB21C| db   8 ; 0xA9 - BLUE ZIRRO
|0DB21D| db  12 ; 0xAA - PIKIT
|0DB21E| db  16 ; 0xAB - CRYSTAL MAIDEN
|0DB21F| db   0 ; 0xAC - APPLE
|0DB220| db   0 ; 0xAD - OLD MAN
|0DB221| db   0 ; 0xAE - PIPE DOWN
|0DB222| db   0 ; 0xAF - PIPE UP
|0DB223| db   0 ; 0xB0 - PIPE RIGHT
|0DB224| db   0 ; 0xB1 - PIPE LEFT
|0DB225| db   0 ; 0xB2 - GOOD BEE
|0DB226| db   0 ; 0xB3 - PEDESTAL PLAQUE
|0DB227| db   0 ; 0xB4 - PURPLE CHEST
|0DB228| db   0 ; 0xB5 - BOMB SHOP GUY
|0DB229| db   0 ; 0xB6 - KIKI
|0DB22A| db   0 ; 0xB7 - BLIND MAIDEN
|0DB22B| db   0 ; 0xB8 - DIALOGUE TESTER
|0DB22C| db   0 ; 0xB9 - BULLY / PINK BALL
|0DB22D| db   0 ; 0xBA - WHIRLPOOL
|0DB22E| db   0 ; 0xBB - SHOPKEEPER / CHEST GAME GUY
|0DB22F| db   0 ; 0xBC - DRUNKARD
|0DB230| db 128 ; 0xBD - VITREOUS
|0DB231| db  48 ; 0xBE - VITREOUS SMALL EYE
|0DB232| db 255 ; 0xBF - LIGHTNING
|0DB233| db 255 ; 0xC0 - CATFISH
|0DB234| db 255 ; 0xC1 - CUTSCENE AGAHNIM
|0DB235| db 255 ; 0xC2 - BOULDER
|0DB236| db   8 ; 0xC3 - GIBO
|0DB237| db   0 ; 0xC4 - THIEF
|0DB238| db   0 ; 0xC5 - MEDUSA
|0DB239| db   0 ; 0xC6 - YOMO MEDUSA
|0DB23A| db  32 ; 0xC7 - POKEY
|0DB23B| db   0 ; 0xC8 - BIG FAIRY
|0DB23C| db   8 ; 0xC9 - TEKTITE / FIREBAT
|0DB23D| db   5 ; 0xCA - CHAIN CHOMP
|0DB23E| db  40 ; 0xCB - TRINEXX ROCK HEAD
|0DB23F| db  40 ; 0xCC - TRINEXX FIRE HEAD
|0DB240| db  40 ; 0xCD - TRINEXX ICE HEAD
|0DB241| db  90 ; 0xCE - BLIND
|0DB242| db  16 ; 0xCF - SWAMOLA
|0DB243| db  24 ; 0xD0 - LYNEL
|0DB244| db  64 ; 0xD1 - BUNNYBEAM / SMOKE
|0DB245| db   0 ; 0xD2 - FLOPPING FISH
|0DB246| db   4 ; 0xD3 - STAL
|0DB247| db   0 ; 0xD4 - LANDMINE
|0DB248| db   0 ; 0xD5 - DIGGING GAME GUY
|0DB249| db 255 ; 0xD6 - GANON
|0DB24A| db 255 ; 0xD7 - GANON
|0DB24B| db   0 ; 0xD8 - HEART
|0DB24C| db   0 ; 0xD9 - GREEN RUPEE
|0DB24D| db   0 ; 0xDA - BLUE RUPEE
|0DB24E| db   0 ; 0xDB - RED RUPEE
|0DB24F| db   0 ; 0xDC - BOMB REFILL 1
|0DB250| db   0 ; 0xDD - BOMB REFILL 4
|0DB251| db   0 ; 0xDE - BOMB REFILL 8
|0DB252| db   0 ; 0xDF - SMALL MAGIC DECANTER
|0DB253| db   0 ; 0xE0 - LARGE MAGIC DECANTER
|0DB254| db   0 ; 0xE1 - ARROW REFILL 5
|0DB255| db   0 ; 0xE2 - ARROW REFILL 10
|0DB256| db   0 ; 0xE3 - FAIRY
|0DB257| db   0 ; 0xE4 - SMALL KEY
|0DB258| db   0 ; 0xE5 - BIG KEY
|0DB259| db   0 ; 0xE6 - STOLEN SHIELD
|0DB25A| db   0 ; 0xE7 - MUSHROOM
|0DB25B| db   0 ; 0xE8 - FAKE MASTER SWORD
|0DB25C| db   0 ; 0xE9 - MAGIC SHOP ASSISTANT
|0DB25D| db   0 ; 0xEA - HEART CONTAINER
|0DB25E| db   0 ; 0xEB - HEART PIECE
|0DB25F| db   0 ; 0xEC - THROWN ITEM
|0DB260| db   0 ; 0xED - SOMARIA PLATFORM
|0DB261| db   0 ; 0xEE - CASTLE MANTLE
|0DB262| db   0 ; 0xEF - UNUSED SOMARIA PLATFORM
|0DB263| db   0 ; 0xF0 - UNUSED SOMARIA PLATFORM
|0DB264| db   0 ; 0xF1 - UNUSED SOMARIA PLATFORM
|0DB265| db   0 ; 0xF2 - MEDALLION TABLET

;===================================================================================================
; tzpd bbbb
;   t - ignore collision when recoiling
;   z - high priority target for bees
;   p - immune to powder
;   d - not deleted by boss sprite prep
;   b - bump damage class
;===================================================================================================
SpriteData_Bump:
|0DB266| db $83 ; t... $3 | 0x00 - RAVEN
|0DB267| db $83 ; t... $3 | 0x01 - VULTURE
|0DB268| db $81 ; t... $1 | 0x02 - STALFOS HEAD
|0DB269| db $02 ; .... $2 | 0x03 - NULL
|0DB26A| db $02 ; .... $2 | 0x04 - CORRECT PULL SWITCH
|0DB26B| db $02 ; .... $2 | 0x05 - UNUSED CORRECT PULL SWITCH
|0DB26C| db $02 ; .... $2 | 0x06 - WRONG PULL SWITCH
|0DB26D| db $02 ; .... $2 | 0x07 - UNUSED WRONG PULL SWITCH
|0DB26E| db $01 ; .... $1 | 0x08 - OCTOROK
|0DB26F| db $13 ; ...d $3 | 0x09 - MOLDORM
|0DB270| db $01 ; .... $1 | 0x0A - OCTOROK 4WAY
|0DB271| db $01 ; .... $1 | 0x0B - CUCCO
|0DB272| db $01 ; .... $1 | 0x0C - OCTOROK STONE
|0DB273| db $01 ; .... $1 | 0x0D - BUZZBLOB
|0DB274| db $08 ; .... $8 | 0x0E - SNAPDRAGON
|0DB275| db $01 ; .... $1 | 0x0F - OCTOBALLOON
|0DB276| db $01 ; .... $1 | 0x10 - OCTOBALLOON BABY
|0DB277| db $08 ; .... $8 | 0x11 - HINOX
|0DB278| db $05 ; .... $5 | 0x12 - MOBLIN
|0DB279| db $03 ; .... $3 | 0x13 - MINI HELMASAUR
|0DB27A| db $40 ; .z.. $0 | 0x14 - THIEVES TOWN GRATE
|0DB27B| db $04 ; .... $4 | 0x15 - ANTIFAIRY
|0DB27C| db $00 ; .... $0 | 0x16 - SAHASRAHLA / AGINAH
|0DB27D| db $02 ; .... $2 | 0x17 - BUSH HOARDER
|0DB27E| db $03 ; .... $3 | 0x18 - MINI MOLDORM
|0DB27F| db $85 ; t... $5 | 0x19 - POE
|0DB280| db $00 ; .... $0 | 0x1A - SMITHY
|0DB281| db $01 ; .... $1 | 0x1B - ARROW
|0DB282| db $00 ; .... $0 | 0x1C - STATUE
|0DB283| db $40 ; .z.. $0 | 0x1D - FLUTE QUEST
|0DB284| db $00 ; .... $0 | 0x1E - CRYSTAL SWITCH
|0DB285| db $00 ; .... $0 | 0x1F - SICK KID
|0DB286| db $06 ; .... $6 | 0x20 - SLUGGULA
|0DB287| db $00 ; .... $0 | 0x21 - WATER SWITCH
|0DB288| db $05 ; .... $5 | 0x22 - ROPA
|0DB289| db $03 ; .... $3 | 0x23 - RED BARI
|0DB28A| db $01 ; .... $1 | 0x24 - BLUE BARI
|0DB28B| db $00 ; .... $0 | 0x25 - TALKING TREE
|0DB28C| db $00 ; .... $0 | 0x26 - HARDHAT BEETLE
|0DB28D| db $03 ; .... $3 | 0x27 - DEADROCK
|0DB28E| db $00 ; .... $0 | 0x28 - DARK WORLD HINT NPC
|0DB28F| db $00 ; .... $0 | 0x29 - ADULT
|0DB290| db $00 ; .... $0 | 0x2A - SWEEPING LADY
|0DB291| db $00 ; .... $0 | 0x2B - HOBO
|0DB292| db $00 ; .... $0 | 0x2C - LUMBERJACKS
|0DB293| db $00 ; .... $0 | 0x2D - NECKLESS MAN
|0DB294| db $00 ; .... $0 | 0x2E - FLUTE KID
|0DB295| db $00 ; .... $0 | 0x2F - RACE GAME LADY
|0DB296| db $00 ; .... $0 | 0x30 - RACE GAME GUY
|0DB297| db $00 ; .... $0 | 0x31 - FORTUNE TELLER
|0DB298| db $00 ; .... $0 | 0x32 - ARGUE BROS
|0DB299| db $00 ; .... $0 | 0x33 - RUPEE PULL
|0DB29A| db $00 ; .... $0 | 0x34 - YOUNG SNITCH
|0DB29B| db $00 ; .... $0 | 0x35 - INNKEEPER
|0DB29C| db $00 ; .... $0 | 0x36 - WITCH
|0DB29D| db $40 ; .z.. $0 | 0x37 - WATERFALL
|0DB29E| db $00 ; .... $0 | 0x38 - EYE STATUE
|0DB29F| db $00 ; .... $0 | 0x39 - LOCKSMITH
|0DB2A0| db $00 ; .... $0 | 0x3A - MAGIC BAT
|0DB2A1| db $00 ; .... $0 | 0x3B - BONK ITEM
|0DB2A2| db $00 ; .... $0 | 0x3C - KID IN KAK
|0DB2A3| db $00 ; .... $0 | 0x3D - OLD SNITCH
|0DB2A4| db $02 ; .... $2 | 0x3E - ROCK HOARDER
|0DB2A5| db $02 ; .... $2 | 0x3F - TUTORIAL GUARD
|0DB2A6| db $00 ; .... $0 | 0x40 - LIGHTNING GATE
|0DB2A7| db $01 ; .... $1 | 0x41 - BLUE GUARD
|0DB2A8| db $01 ; .... $1 | 0x42 - GREEN GUARD
|0DB2A9| db $03 ; .... $3 | 0x43 - RED SPEAR GUARD
|0DB2AA| db $01 ; .... $1 | 0x44 - BLUESAIN BOLT
|0DB2AB| db $03 ; .... $3 | 0x45 - USAIN BOLT
|0DB2AC| db $01 ; .... $1 | 0x46 - BLUE ARCHER
|0DB2AD| db $01 ; .... $1 | 0x47 - GREEN BUSH GUARD
|0DB2AE| db $03 ; .... $3 | 0x48 - RED JAVELIN GUARD
|0DB2AF| db $03 ; .... $3 | 0x49 - RED BUSH GUARD
|0DB2B0| db $03 ; .... $3 | 0x4A - BOMB GUARD
|0DB2B1| db $01 ; .... $1 | 0x4B - GREEN KNIFE GUARD
|0DB2B2| db $03 ; .... $3 | 0x4C - GELDMAN
|0DB2B3| db $01 ; .... $1 | 0x4D - TOPPO
|0DB2B4| db $01 ; .... $1 | 0x4E - POPO
|0DB2B5| db $01 ; .... $1 | 0x4F - POPO
|0DB2B6| db $01 ; .... $1 | 0x50 - CANNONBALL
|0DB2B7| db $01 ; .... $1 | 0x51 - ARMOS STATUE
|0DB2B8| db $01 ; .... $1 | 0x52 - KING ZORA
|0DB2B9| db $11 ; ...d $1 | 0x53 - ARMOS KNIGHT
|0DB2BA| db $14 ; ...d $4 | 0x54 - LANMOLAS
|0DB2BB| db $01 ; .... $1 | 0x55 - ZORA / FIREBALL
|0DB2BC| db $01 ; .... $1 | 0x56 - WALKING ZORA
|0DB2BD| db $02 ; .... $2 | 0x57 - DESERT STATUE
|0DB2BE| db $05 ; .... $5 | 0x58 - CRAB
|0DB2BF| db $00 ; .... $0 | 0x59 - LOST WOODS BIRD
|0DB2C0| db $00 ; .... $0 | 0x5A - LOST WOODS SQUIRREL
|0DB2C1| db $04 ; .... $4 | 0x5B - SPARK
|0DB2C2| db $04 ; .... $4 | 0x5C - SPARK
|0DB2C3| db $08 ; .... $8 | 0x5D - ROLLER VERTICAL DOWN FIRST
|0DB2C4| db $08 ; .... $8 | 0x5E - ROLLER VERTICAL UP FIRST
|0DB2C5| db $08 ; .... $8 | 0x5F - ROLLER HORIZONTAL RIGHT FIRST
|0DB2C6| db $08 ; .... $8 | 0x60 - ROLLER HORIZONTAL LEFT FIRST
|0DB2C7| db $04 ; .... $4 | 0x61 - BEAMOS
|0DB2C8| db $00 ; .... $0 | 0x62 - MASTERSWORD
|0DB2C9| db $04 ; .... $4 | 0x63 - DEBIRANDO PIT
|0DB2CA| db $03 ; .... $3 | 0x64 - DEBIRANDO
|0DB2CB| db $02 ; .... $2 | 0x65 - ARCHERY GUY
|0DB2CC| db $02 ; .... $2 | 0x66 - WALL CANNON VERTICAL LEFT
|0DB2CD| db $02 ; .... $2 | 0x67 - WALL CANNON VERTICAL RIGHT
|0DB2CE| db $02 ; .... $2 | 0x68 - WALL CANNON HORIZONTAL TOP
|0DB2CF| db $02 ; .... $2 | 0x69 - WALL CANNON HORIZONTAL BOTTOM
|0DB2D0| db $03 ; .... $3 | 0x6A - BALL N CHAIN
|0DB2D1| db $01 ; .... $1 | 0x6B - CANNONBALL / CANNON TROOPER
|0DB2D2| db $00 ; .... $0 | 0x6C - MIRROR PORTAL
|0DB2D3| db $00 ; .... $0 | 0x6D - RAT / CRICKET
|0DB2D4| db $01 ; .... $1 | 0x6E - ROPE
|0DB2D5| db $80 ; t... $0 | 0x6F - KEESE
|0DB2D6| db $05 ; .... $5 | 0x70 - KING HELMASAUR FIREBALL
|0DB2D7| db $01 ; .... $1 | 0x71 - LEEVER
|0DB2D8| db $00 ; .... $0 | 0x72 - FAIRY POND TRIGGER
|0DB2D9| db $00 ; .... $0 | 0x73 - UNCLE / PRIEST / MANTLE
|0DB2DA| db $00 ; .... $0 | 0x74 - RUNNING BOY
|0DB2DB| db $40 ; .z.. $0 | 0x75 - BOTTLE MERCHANT
|0DB2DC| db $00 ; .... $0 | 0x76 - ZELDA
|0DB2DD| db $04 ; .... $4 | 0x77 - ANTIFAIRY
|0DB2DE| db $00 ; .... $0 | 0x78 - SAHASRAHLAS WIFE
|0DB2DF| db $00 ; .... $0 | 0x79 - BEE
|0DB2E0| db $14 ; ...d $4 | 0x7A - AGAHNIM
|0DB2E1| db $04 ; .... $4 | 0x7B - AGAHNIMS BALLS
|0DB2E2| db $06 ; .... $6 | 0x7C - GREEN STALFOS
|0DB2E3| db $04 ; .... $4 | 0x7D - BIG SPIKE
|0DB2E4| db $04 ; .... $4 | 0x7E - FIREBAR CLOCKWISE
|0DB2E5| db $04 ; .... $4 | 0x7F - FIREBAR COUNTERCLOCKWISE
|0DB2E6| db $04 ; .... $4 | 0x80 - FIRESNAKE
|0DB2E7| db $03 ; .... $3 | 0x81 - HOVER
|0DB2E8| db $04 ; .... $4 | 0x82 - ANTIFAIRY CIRCLE
|0DB2E9| db $04 ; .... $4 | 0x83 - GREEN EYEGORE / GREEN MIMIC
|0DB2EA| db $04 ; .... $4 | 0x84 - RED EYEGORE / RED MIMIC
|0DB2EB| db $01 ; .... $1 | 0x85 - YELLOW STALFOS
|0DB2EC| db $04 ; .... $4 | 0x86 - KODONGO
|0DB2ED| db $04 ; .... $4 | 0x87 - KODONGO FIRE
|0DB2EE| db $15 ; ...d $5 | 0x88 - MOTHULA
|0DB2EF| db $05 ; .... $5 | 0x89 - MOTHULA BEAM
|0DB2F0| db $04 ; .... $4 | 0x8A - SPIKE BLOCK
|0DB2F1| db $05 ; .... $5 | 0x8B - GIBDO
|0DB2F2| db $15 ; ...d $5 | 0x8C - ARRGHUS
|0DB2F3| db $15 ; ...d $5 | 0x8D - ARRGHI
|0DB2F4| db $03 ; .... $3 | 0x8E - TERRORPIN
|0DB2F5| db $05 ; .... $5 | 0x8F - BLOB
|0DB2F6| db $00 ; .... $0 | 0x90 - WALLMASTER
|0DB2F7| db $05 ; .... $5 | 0x91 - STALFOS KNIGHT
|0DB2F8| db $15 ; ...d $5 | 0x92 - KING HELMASAUR
|0DB2F9| db $05 ; .... $5 | 0x93 - BUMPER
|0DB2FA| db $05 ; .... $5 | 0x94 - PIROGUSU
|0DB2FB| db $06 ; .... $6 | 0x95 - LASER EYE LEFT
|0DB2FC| db $06 ; .... $6 | 0x96 - LASER EYE RIGHT
|0DB2FD| db $06 ; .... $6 | 0x97 - LASER EYE TOP
|0DB2FE| db $06 ; .... $6 | 0x98 - LASER EYE BOTTOM
|0DB2FF| db $05 ; .... $5 | 0x99 - PENGATOR
|0DB300| db $03 ; .... $3 | 0x9A - KYAMERON
|0DB301| db $06 ; .... $6 | 0x9B - WIZZROBE
|0DB302| db $05 ; .... $5 | 0x9C - ZORO
|0DB303| db $05 ; .... $5 | 0x9D - BABASU
|0DB304| db $03 ; .... $3 | 0x9E - HAUNTED GROVE OSTRICH
|0DB305| db $03 ; .... $3 | 0x9F - HAUNTED GROVE RABBIT
|0DB306| db $03 ; .... $3 | 0xA0 - HAUNTED GROVE BIRD
|0DB307| db $06 ; .... $6 | 0xA1 - FREEZOR
|0DB308| db $17 ; ...d $7 | 0xA2 - KHOLDSTARE
|0DB309| db $15 ; ...d $5 | 0xA3 - KHOLDSTARE SHELL
|0DB30A| db $15 ; ...d $5 | 0xA4 - FALLING ICE
|0DB30B| db $05 ; .... $5 | 0xA5 - BLUE ZAZAK
|0DB30C| db $05 ; .... $5 | 0xA6 - RED ZAZAK
|0DB30D| db $01 ; .... $1 | 0xA7 - STALFOS
|0DB30E| db $85 ; t... $5 | 0xA8 - GREEN ZIRRO
|0DB30F| db $83 ; t... $3 | 0xA9 - BLUE ZIRRO
|0DB310| db $05 ; .... $5 | 0xAA - PIKIT
|0DB311| db $04 ; .... $4 | 0xAB - CRYSTAL MAIDEN
|0DB312| db $00 ; .... $0 | 0xAC - APPLE
|0DB313| db $00 ; .... $0 | 0xAD - OLD MAN
|0DB314| db $00 ; .... $0 | 0xAE - PIPE DOWN
|0DB315| db $00 ; .... $0 | 0xAF - PIPE UP
|0DB316| db $00 ; .... $0 | 0xB0 - PIPE RIGHT
|0DB317| db $00 ; .... $0 | 0xB1 - PIPE LEFT
|0DB318| db $00 ; .... $0 | 0xB2 - GOOD BEE
|0DB319| db $00 ; .... $0 | 0xB3 - PEDESTAL PLAQUE
|0DB31A| db $00 ; .... $0 | 0xB4 - PURPLE CHEST
|0DB31B| db $00 ; .... $0 | 0xB5 - BOMB SHOP GUY
|0DB31C| db $00 ; .... $0 | 0xB6 - KIKI
|0DB31D| db $00 ; .... $0 | 0xB7 - BLIND MAIDEN
|0DB31E| db $00 ; .... $0 | 0xB8 - DIALOGUE TESTER
|0DB31F| db $00 ; .... $0 | 0xB9 - BULLY / PINK BALL
|0DB320| db $00 ; .... $0 | 0xBA - WHIRLPOOL
|0DB321| db $00 ; .... $0 | 0xBB - SHOPKEEPER / CHEST GAME GUY
|0DB322| db $00 ; .... $0 | 0xBC - DRUNKARD
|0DB323| db $17 ; ...d $7 | 0xBD - VITREOUS
|0DB324| db $17 ; ...d $7 | 0xBE - VITREOUS SMALL EYE
|0DB325| db $05 ; .... $5 | 0xBF - LIGHTNING
|0DB326| db $05 ; .... $5 | 0xC0 - CATFISH
|0DB327| db $05 ; .... $5 | 0xC1 - CUTSCENE AGAHNIM
|0DB328| db $04 ; .... $4 | 0xC2 - BOULDER
|0DB329| db $03 ; .... $3 | 0xC3 - GIBO
|0DB32A| db $02 ; .... $2 | 0xC4 - THIEF
|0DB32B| db $10 ; ...d $0 | 0xC5 - MEDUSA
|0DB32C| db $00 ; .... $0 | 0xC6 - YOMO MEDUSA
|0DB32D| db $06 ; .... $6 | 0xC7 - POKEY
|0DB32E| db $00 ; .... $0 | 0xC8 - BIG FAIRY
|0DB32F| db $05 ; .... $5 | 0xC9 - TEKTITE / FIREBAT
|0DB330| db $07 ; .... $7 | 0xCA - CHAIN CHOMP
|0DB331| db $17 ; ...d $7 | 0xCB - TRINEXX ROCK HEAD
|0DB332| db $17 ; ...d $7 | 0xCC - TRINEXX FIRE HEAD
|0DB333| db $17 ; ...d $7 | 0xCD - TRINEXX ICE HEAD
|0DB334| db $15 ; ...d $5 | 0xCE - BLIND
|0DB335| db $07 ; .... $7 | 0xCF - SWAMOLA
|0DB336| db $06 ; .... $6 | 0xD0 - LYNEL
|0DB337| db $10 ; ...d $0 | 0xD1 - BUNNYBEAM / SMOKE
|0DB338| db $00 ; .... $0 | 0xD2 - FLOPPING FISH
|0DB339| db $03 ; .... $3 | 0xD3 - STAL
|0DB33A| db $03 ; .... $3 | 0xD4 - LANDMINE
|0DB33B| db $00 ; .... $0 | 0xD5 - DIGGING GAME GUY
|0DB33C| db $19 ; ...d $9 | 0xD6 - GANON
|0DB33D| db $19 ; ...d $9 | 0xD7 - GANON
|0DB33E| db $00 ; .... $0 | 0xD8 - HEART
|0DB33F| db $00 ; .... $0 | 0xD9 - GREEN RUPEE
|0DB340| db $00 ; .... $0 | 0xDA - BLUE RUPEE
|0DB341| db $00 ; .... $0 | 0xDB - RED RUPEE
|0DB342| db $00 ; .... $0 | 0xDC - BOMB REFILL 1
|0DB343| db $00 ; .... $0 | 0xDD - BOMB REFILL 4
|0DB344| db $00 ; .... $0 | 0xDE - BOMB REFILL 8
|0DB345| db $00 ; .... $0 | 0xDF - SMALL MAGIC DECANTER
|0DB346| db $00 ; .... $0 | 0xE0 - LARGE MAGIC DECANTER
|0DB347| db $00 ; .... $0 | 0xE1 - ARROW REFILL 5
|0DB348| db $00 ; .... $0 | 0xE2 - ARROW REFILL 10
|0DB349| db $10 ; ...d $0 | 0xE3 - FAIRY
|0DB34A| db $00 ; .... $0 | 0xE4 - SMALL KEY
|0DB34B| db $00 ; .... $0 | 0xE5 - BIG KEY
|0DB34C| db $00 ; .... $0 | 0xE6 - STOLEN SHIELD
|0DB34D| db $00 ; .... $0 | 0xE7 - MUSHROOM
|0DB34E| db $00 ; .... $0 | 0xE8 - FAKE MASTER SWORD
|0DB34F| db $00 ; .... $0 | 0xE9 - MAGIC SHOP ASSISTANT
|0DB350| db $00 ; .... $0 | 0xEA - HEART CONTAINER
|0DB351| db $00 ; .... $0 | 0xEB - HEART PIECE
|0DB352| db $00 ; .... $0 | 0xEC - THROWN ITEM
|0DB353| db $00 ; .... $0 | 0xED - SOMARIA PLATFORM
|0DB354| db $00 ; .... $0 | 0xEE - CASTLE MANTLE
|0DB355| db $00 ; .... $0 | 0xEF - UNUSED SOMARIA PLATFORM
|0DB356| db $00 ; .... $0 | 0xF0 - UNUSED SOMARIA PLATFORM
|0DB357| db $00 ; .... $0 | 0xF1 - UNUSED SOMARIA PLATFORM
|0DB358| db $00 ; .... $0 | 0xF2 - MEDALLION TABLET

;===================================================================================================
; nios pppt
;   n - custom death animation
;   i - impervious to attacks
;   o - shadow size (0: big | 1: small)
;   s - draw shadow (0: no shadow | 1: draw shadow)
;   p - sprite palette, copied to OAM
;   t - sprite name table, copied to OAM
;===================================================================================================
SpriteData_OAMProp:
|0DB359| db $19 ; ...s 4, 1 | 0x00 - RAVEN
|0DB35A| db $0B ; .... 5, 1 | 0x01 - VULTURE
|0DB35B| db $1B ; ...s 5, 1 | 0x02 - STALFOS HEAD
|0DB35C| db $4B ; .i.. 5, 1 | 0x03 - NULL
|0DB35D| db $41 ; .i.. 0, 1 | 0x04 - CORRECT PULL SWITCH
|0DB35E| db $41 ; .i.. 0, 1 | 0x05 - UNUSED CORRECT PULL SWITCH
|0DB35F| db $41 ; .i.. 0, 1 | 0x06 - WRONG PULL SWITCH
|0DB360| db $4D ; .i.. 6, 1 | 0x07 - UNUSED WRONG PULL SWITCH
|0DB361| db $1D ; ...s 6, 1 | 0x08 - OCTOROK
|0DB362| db $01 ; .... 0, 1 | 0x09 - MOLDORM
|0DB363| db $1D ; ...s 6, 1 | 0x0A - OCTOROK 4WAY
|0DB364| db $19 ; ...s 4, 1 | 0x0B - CUCCO
|0DB365| db $8D ; n... 6, 1 | 0x0C - OCTOROK STONE
|0DB366| db $1B ; ...s 5, 1 | 0x0D - BUZZBLOB
|0DB367| db $09 ; .... 4, 1 | 0x0E - SNAPDRAGON
|0DB368| db $9D ; n..s 6, 1 | 0x0F - OCTOBALLOON
|0DB369| db $3D ; ..os 6, 1 | 0x10 - OCTOBALLOON BABY
|0DB36A| db $01 ; .... 0, 1 | 0x11 - HINOX
|0DB36B| db $09 ; .... 4, 1 | 0x12 - MOBLIN
|0DB36C| db $11 ; ...s 0, 1 | 0x13 - MINI HELMASAUR
|0DB36D| db $40 ; .i.. 0, 0 | 0x14 - THIEVES TOWN GRATE
|0DB36E| db $01 ; .... 0, 1 | 0x15 - ANTIFAIRY
|0DB36F| db $4D ; .i.. 6, 1 | 0x16 - SAHASRAHLA / AGINAH
|0DB370| db $19 ; ...s 4, 1 | 0x17 - BUSH HOARDER
|0DB371| db $07 ; .... 3, 1 | 0x18 - MINI MOLDORM
|0DB372| db $1D ; ...s 6, 1 | 0x19 - POE
|0DB373| db $59 ; .i.s 4, 1 | 0x1A - SMITHY
|0DB374| db $80 ; n... 0, 0 | 0x1B - ARROW
|0DB375| db $4D ; .i.. 6, 1 | 0x1C - STATUE
|0DB376| db $40 ; .i.. 0, 0 | 0x1D - FLUTE QUEST
|0DB377| db $01 ; .... 0, 1 | 0x1E - CRYSTAL SWITCH
|0DB378| db $49 ; .i.. 4, 1 | 0x1F - SICK KID
|0DB379| db $1B ; ...s 5, 1 | 0x20 - SLUGGULA
|0DB37A| db $41 ; .i.. 0, 1 | 0x21 - WATER SWITCH
|0DB37B| db $03 ; .... 1, 1 | 0x22 - ROPA
|0DB37C| db $13 ; ...s 1, 1 | 0x23 - RED BARI
|0DB37D| db $15 ; ...s 2, 1 | 0x24 - BLUE BARI
|0DB37E| db $41 ; .i.. 0, 1 | 0x25 - TALKING TREE
|0DB37F| db $18 ; ...s 4, 0 | 0x26 - HARDHAT BEETLE
|0DB380| db $1B ; ...s 5, 1 | 0x27 - DEADROCK
|0DB381| db $41 ; .i.. 0, 1 | 0x28 - DARK WORLD HINT NPC
|0DB382| db $47 ; .i.. 3, 1 | 0x29 - ADULT
|0DB383| db $0F ; .... 7, 1 | 0x2A - SWEEPING LADY
|0DB384| db $49 ; .i.. 4, 1 | 0x2B - HOBO
|0DB385| db $4B ; .i.. 5, 1 | 0x2C - LUMBERJACKS
|0DB386| db $4D ; .i.. 6, 1 | 0x2D - NECKLESS MAN
|0DB387| db $41 ; .i.. 0, 1 | 0x2E - FLUTE KID
|0DB388| db $47 ; .i.. 3, 1 | 0x2F - RACE GAME LADY
|0DB389| db $49 ; .i.. 4, 1 | 0x30 - RACE GAME GUY
|0DB38A| db $4D ; .i.. 6, 1 | 0x31 - FORTUNE TELLER
|0DB38B| db $49 ; .i.. 4, 1 | 0x32 - ARGUE BROS
|0DB38C| db $40 ; .i.. 0, 0 | 0x33 - RUPEE PULL
|0DB38D| db $4D ; .i.. 6, 1 | 0x34 - YOUNG SNITCH
|0DB38E| db $47 ; .i.. 3, 1 | 0x35 - INNKEEPER
|0DB38F| db $49 ; .i.. 4, 1 | 0x36 - WITCH
|0DB390| db $41 ; .i.. 0, 1 | 0x37 - WATERFALL
|0DB391| db $74 ; .ios 2, 0 | 0x38 - EYE STATUE
|0DB392| db $47 ; .i.. 3, 1 | 0x39 - LOCKSMITH
|0DB393| db $5B ; .i.s 5, 1 | 0x3A - MAGIC BAT
|0DB394| db $58 ; .i.s 4, 0 | 0x3B - BONK ITEM
|0DB395| db $51 ; .i.s 0, 1 | 0x3C - KID IN KAK
|0DB396| db $49 ; .i.. 4, 1 | 0x3D - OLD SNITCH
|0DB397| db $1D ; ...s 6, 1 | 0x3E - ROCK HOARDER
|0DB398| db $5D ; .i.s 6, 1 | 0x3F - TUTORIAL GUARD
|0DB399| db $03 ; .... 1, 1 | 0x40 - LIGHTNING GATE
|0DB39A| db $19 ; ...s 4, 1 | 0x41 - BLUE GUARD
|0DB39B| db $1B ; ...s 5, 1 | 0x42 - GREEN GUARD
|0DB39C| db $17 ; ...s 3, 1 | 0x43 - RED SPEAR GUARD
|0DB39D| db $19 ; ...s 4, 1 | 0x44 - BLUESAIN BOLT
|0DB39E| db $17 ; ...s 3, 1 | 0x45 - USAIN BOLT
|0DB39F| db $19 ; ...s 4, 1 | 0x46 - BLUE ARCHER
|0DB3A0| db $1B ; ...s 5, 1 | 0x47 - GREEN BUSH GUARD
|0DB3A1| db $17 ; ...s 3, 1 | 0x48 - RED JAVELIN GUARD
|0DB3A2| db $17 ; ...s 3, 1 | 0x49 - RED BUSH GUARD
|0DB3A3| db $17 ; ...s 3, 1 | 0x4A - BOMB GUARD
|0DB3A4| db $1B ; ...s 5, 1 | 0x4B - GREEN KNIFE GUARD
|0DB3A5| db $0D ; .... 6, 1 | 0x4C - GELDMAN
|0DB3A6| db $09 ; .... 4, 1 | 0x4D - TOPPO
|0DB3A7| db $19 ; ...s 4, 1 | 0x4E - POPO
|0DB3A8| db $19 ; ...s 4, 1 | 0x4F - POPO
|0DB3A9| db $49 ; .i.. 4, 1 | 0x50 - CANNONBALL
|0DB3AA| db $5D ; .i.s 6, 1 | 0x51 - ARMOS STATUE
|0DB3AB| db $5B ; .i.s 5, 1 | 0x52 - KING ZORA
|0DB3AC| db $49 ; .i.. 4, 1 | 0x53 - ARMOS KNIGHT
|0DB3AD| db $0D ; .... 6, 1 | 0x54 - LANMOLAS
|0DB3AE| db $03 ; .... 1, 1 | 0x55 - ZORA / FIREBALL
|0DB3AF| db $13 ; ...s 1, 1 | 0x56 - WALKING ZORA
|0DB3B0| db $41 ; .i.. 0, 1 | 0x57 - DESERT STATUE
|0DB3B1| db $1B ; ...s 5, 1 | 0x58 - CRAB
|0DB3B2| db $5B ; .i.s 5, 1 | 0x59 - LOST WOODS BIRD
|0DB3B3| db $5D ; .i.s 6, 1 | 0x5A - LOST WOODS SQUIRREL
|0DB3B4| db $43 ; .i.. 1, 1 | 0x5B - SPARK
|0DB3B5| db $43 ; .i.. 1, 1 | 0x5C - SPARK
|0DB3B6| db $4D ; .i.. 6, 1 | 0x5D - ROLLER VERTICAL DOWN FIRST
|0DB3B7| db $4D ; .i.. 6, 1 | 0x5E - ROLLER VERTICAL UP FIRST
|0DB3B8| db $4D ; .i.. 6, 1 | 0x5F - ROLLER HORIZONTAL RIGHT FIRST
|0DB3B9| db $4D ; .i.. 6, 1 | 0x60 - ROLLER HORIZONTAL LEFT FIRST
|0DB3BA| db $4D ; .i.. 6, 1 | 0x61 - BEAMOS
|0DB3BB| db $49 ; .i.. 4, 1 | 0x62 - MASTERSWORD
|0DB3BC| db $01 ; .... 0, 1 | 0x63 - DEBIRANDO PIT
|0DB3BD| db $00 ; .... 0, 0 | 0x64 - DEBIRANDO
|0DB3BE| db $41 ; .i.. 0, 1 | 0x65 - ARCHERY GUY
|0DB3BF| db $4D ; .i.. 6, 1 | 0x66 - WALL CANNON VERTICAL LEFT
|0DB3C0| db $4D ; .i.. 6, 1 | 0x67 - WALL CANNON VERTICAL RIGHT
|0DB3C1| db $4D ; .i.. 6, 1 | 0x68 - WALL CANNON HORIZONTAL TOP
|0DB3C2| db $4D ; .i.. 6, 1 | 0x69 - WALL CANNON HORIZONTAL BOTTOM
|0DB3C3| db $1D ; ...s 6, 1 | 0x6A - BALL N CHAIN
|0DB3C4| db $09 ; .... 4, 1 | 0x6B - CANNONBALL / CANNON TROOPER
|0DB3C5| db $C4 ; ni.. 2, 0 | 0x6C - MIRROR PORTAL
|0DB3C6| db $0D ; .... 6, 1 | 0x6D - RAT / CRICKET
|0DB3C7| db $0D ; .... 6, 1 | 0x6E - ROPE
|0DB3C8| db $09 ; .... 4, 1 | 0x6F - KEESE
|0DB3C9| db $03 ; .... 1, 1 | 0x70 - KING HELMASAUR FIREBALL
|0DB3CA| db $03 ; .... 1, 1 | 0x71 - LEEVER
|0DB3CB| db $4B ; .i.. 5, 1 | 0x72 - FAIRY POND TRIGGER
|0DB3CC| db $47 ; .i.. 3, 1 | 0x73 - UNCLE / PRIEST / MANTLE
|0DB3CD| db $47 ; .i.. 3, 1 | 0x74 - RUNNING BOY
|0DB3CE| db $49 ; .i.. 4, 1 | 0x75 - BOTTLE MERCHANT
|0DB3CF| db $49 ; .i.. 4, 1 | 0x76 - ZELDA
|0DB3D0| db $41 ; .i.. 0, 1 | 0x77 - ANTIFAIRY
|0DB3D1| db $47 ; .i.. 3, 1 | 0x78 - SAHASRAHLAS WIFE
|0DB3D2| db $36 ; ..os 3, 0 | 0x79 - BEE
|0DB3D3| db $8B ; n... 5, 1 | 0x7A - AGAHNIM
|0DB3D4| db $49 ; .i.. 4, 1 | 0x7B - AGAHNIMS BALLS
|0DB3D5| db $1D ; ...s 6, 1 | 0x7C - GREEN STALFOS
|0DB3D6| db $49 ; .i.. 4, 1 | 0x7D - BIG SPIKE
|0DB3D7| db $43 ; .i.. 1, 1 | 0x7E - FIREBAR CLOCKWISE
|0DB3D8| db $43 ; .i.. 1, 1 | 0x7F - FIREBAR COUNTERCLOCKWISE
|0DB3D9| db $43 ; .i.. 1, 1 | 0x80 - FIRESNAKE
|0DB3DA| db $0B ; .... 5, 1 | 0x81 - HOVER
|0DB3DB| db $41 ; .i.. 0, 1 | 0x82 - ANTIFAIRY CIRCLE
|0DB3DC| db $0D ; .... 6, 1 | 0x83 - GREEN EYEGORE / GREEN MIMIC
|0DB3DD| db $07 ; .... 3, 1 | 0x84 - RED EYEGORE / RED MIMIC
|0DB3DE| db $0B ; .... 5, 1 | 0x85 - YELLOW STALFOS
|0DB3DF| db $1D ; ...s 6, 1 | 0x86 - KODONGO
|0DB3E0| db $43 ; .i.. 1, 1 | 0x87 - KODONGO FIRE
|0DB3E1| db $0D ; .... 6, 1 | 0x88 - MOTHULA
|0DB3E2| db $43 ; .i.. 1, 1 | 0x89 - MOTHULA BEAM
|0DB3E3| db $0D ; .... 6, 1 | 0x8A - SPIKE BLOCK
|0DB3E4| db $1D ; ...s 6, 1 | 0x8B - GIBDO
|0DB3E5| db $4D ; .i.. 6, 1 | 0x8C - ARRGHUS
|0DB3E6| db $4D ; .i.. 6, 1 | 0x8D - ARRGHI
|0DB3E7| db $1B ; ...s 5, 1 | 0x8E - TERRORPIN
|0DB3E8| db $1B ; ...s 5, 1 | 0x8F - BLOB
|0DB3E9| db $0A ; .... 5, 0 | 0x90 - WALLMASTER
|0DB3EA| db $0B ; .... 5, 1 | 0x91 - STALFOS KNIGHT
|0DB3EB| db $00 ; .... 0, 0 | 0x92 - KING HELMASAUR
|0DB3EC| db $05 ; .... 2, 1 | 0x93 - BUMPER
|0DB3ED| db $0D ; .... 6, 1 | 0x94 - PIROGUSU
|0DB3EE| db $01 ; .... 0, 1 | 0x95 - LASER EYE LEFT
|0DB3EF| db $01 ; .... 0, 1 | 0x96 - LASER EYE RIGHT
|0DB3F0| db $01 ; .... 0, 1 | 0x97 - LASER EYE TOP
|0DB3F1| db $01 ; .... 0, 1 | 0x98 - LASER EYE BOTTOM
|0DB3F2| db $0B ; .... 5, 1 | 0x99 - PENGATOR
|0DB3F3| db $05 ; .... 2, 1 | 0x9A - KYAMERON
|0DB3F4| db $01 ; .... 0, 1 | 0x9B - WIZZROBE
|0DB3F5| db $01 ; .... 0, 1 | 0x9C - ZORO
|0DB3F6| db $01 ; .... 0, 1 | 0x9D - BABASU
|0DB3F7| db $07 ; .... 3, 1 | 0x9E - HAUNTED GROVE OSTRICH
|0DB3F8| db $17 ; ...s 3, 1 | 0x9F - HAUNTED GROVE RABBIT
|0DB3F9| db $19 ; ...s 4, 1 | 0xA0 - HAUNTED GROVE BIRD
|0DB3FA| db $0D ; .... 6, 1 | 0xA1 - FREEZOR
|0DB3FB| db $0D ; .... 6, 1 | 0xA2 - KHOLDSTARE
|0DB3FC| db $80 ; n... 0, 0 | 0xA3 - KHOLDSTARE SHELL
|0DB3FD| db $4D ; .i.. 6, 1 | 0xA4 - FALLING ICE
|0DB3FE| db $19 ; ...s 4, 1 | 0xA5 - BLUE ZAZAK
|0DB3FF| db $17 ; ...s 3, 1 | 0xA6 - RED ZAZAK
|0DB400| db $19 ; ...s 4, 1 | 0xA7 - STALFOS
|0DB401| db $0B ; .... 5, 1 | 0xA8 - GREEN ZIRRO
|0DB402| db $09 ; .... 4, 1 | 0xA9 - BLUE ZIRRO
|0DB403| db $0D ; .... 6, 1 | 0xAA - PIKIT
|0DB404| db $4A ; .i.. 5, 0 | 0xAB - CRYSTAL MAIDEN
|0DB405| db $12 ; ...s 1, 0 | 0xAC - APPLE
|0DB406| db $49 ; .i.. 4, 1 | 0xAD - OLD MAN
|0DB407| db $C3 ; ni.. 1, 1 | 0xAE - PIPE DOWN
|0DB408| db $C3 ; ni.. 1, 1 | 0xAF - PIPE UP
|0DB409| db $C3 ; ni.. 1, 1 | 0xB0 - PIPE RIGHT
|0DB40A| db $C3 ; ni.. 1, 1 | 0xB1 - PIPE LEFT
|0DB40B| db $76 ; .ios 3, 0 | 0xB2 - GOOD BEE
|0DB40C| db $40 ; .i.. 0, 0 | 0xB3 - PEDESTAL PLAQUE
|0DB40D| db $59 ; .i.s 4, 1 | 0xB4 - PURPLE CHEST
|0DB40E| db $41 ; .i.. 0, 1 | 0xB5 - BOMB SHOP GUY
|0DB40F| db $58 ; .i.s 4, 0 | 0xB6 - KIKI
|0DB410| db $4F ; .i.. 7, 1 | 0xB7 - BLIND MAIDEN
|0DB411| db $73 ; .ios 1, 1 | 0xB8 - DIALOGUE TESTER
|0DB412| db $5B ; .i.s 5, 1 | 0xB9 - BULLY / PINK BALL
|0DB413| db $44 ; .i.. 2, 0 | 0xBA - WHIRLPOOL
|0DB414| db $41 ; .i.. 0, 1 | 0xBB - SHOPKEEPER / CHEST GAME GUY
|0DB415| db $51 ; .i.s 0, 1 | 0xBC - DRUNKARD
|0DB416| db $0A ; .... 5, 0 | 0xBD - VITREOUS
|0DB417| db $0B ; .... 5, 1 | 0xBE - VITREOUS SMALL EYE
|0DB418| db $0B ; .... 5, 1 | 0xBF - LIGHTNING
|0DB419| db $4B ; .i.. 5, 1 | 0xC0 - CATFISH
|0DB41A| db $00 ; .... 0, 0 | 0xC1 - CUTSCENE AGAHNIM
|0DB41B| db $40 ; .i.. 0, 0 | 0xC2 - BOULDER
|0DB41C| db $5B ; .i.s 5, 1 | 0xC3 - GIBO
|0DB41D| db $0D ; .... 6, 1 | 0xC4 - THIEF
|0DB41E| db $00 ; .... 0, 0 | 0xC5 - MEDUSA
|0DB41F| db $00 ; .... 0, 0 | 0xC6 - YOMO MEDUSA
|0DB420| db $0D ; .... 6, 1 | 0xC7 - POKEY
|0DB421| db $4B ; .i.. 5, 1 | 0xC8 - BIG FAIRY
|0DB422| db $0B ; .... 5, 1 | 0xC9 - TEKTITE / FIREBAT
|0DB423| db $59 ; .i.s 4, 1 | 0xCA - CHAIN CHOMP
|0DB424| db $41 ; .i.. 0, 1 | 0xCB - TRINEXX ROCK HEAD
|0DB425| db $0B ; .... 5, 1 | 0xCC - TRINEXX FIRE HEAD
|0DB426| db $0D ; .... 6, 1 | 0xCD - TRINEXX ICE HEAD
|0DB427| db $01 ; .... 0, 1 | 0xCE - BLIND
|0DB428| db $0D ; .... 6, 1 | 0xCF - SWAMOLA
|0DB429| db $0D ; .... 6, 1 | 0xD0 - LYNEL
|0DB42A| db $00 ; .... 0, 0 | 0xD1 - BUNNYBEAM / SMOKE
|0DB42B| db $50 ; .i.s 0, 0 | 0xD2 - FLOPPING FISH
|0DB42C| db $4C ; .i.. 6, 0 | 0xD3 - STAL
|0DB42D| db $44 ; .i.. 2, 0 | 0xD4 - LANDMINE
|0DB42E| db $51 ; .i.s 0, 1 | 0xD5 - DIGGING GAME GUY
|0DB42F| db $01 ; .... 0, 1 | 0xD6 - GANON
|0DB430| db $01 ; .... 0, 1 | 0xD7 - GANON
|0DB431| db $F2 ; nios 1, 0 | 0xD8 - HEART
|0DB432| db $F8 ; nios 4, 0 | 0xD9 - GREEN RUPEE
|0DB433| db $F4 ; nios 2, 0 | 0xDA - BLUE RUPEE
|0DB434| db $F2 ; nios 1, 0 | 0xDB - RED RUPEE
|0DB435| db $D4 ; ni.s 2, 0 | 0xDC - BOMB REFILL 1
|0DB436| db $D4 ; ni.s 2, 0 | 0xDD - BOMB REFILL 4
|0DB437| db $D4 ; ni.s 2, 0 | 0xDE - BOMB REFILL 8
|0DB438| db $F8 ; nios 4, 0 | 0xDF - SMALL MAGIC DECANTER
|0DB439| db $F8 ; nios 4, 0 | 0xE0 - LARGE MAGIC DECANTER
|0DB43A| db $F4 ; nios 2, 0 | 0xE1 - ARROW REFILL 5
|0DB43B| db $F4 ; nios 2, 0 | 0xE2 - ARROW REFILL 10
|0DB43C| db $D8 ; ni.s 4, 0 | 0xE3 - FAIRY
|0DB43D| db $F8 ; nios 4, 0 | 0xE4 - SMALL KEY
|0DB43E| db $D8 ; ni.s 4, 0 | 0xE5 - BIG KEY
|0DB43F| db $DF ; ni.s 7, 1 | 0xE6 - STOLEN SHIELD
|0DB440| db $C8 ; ni.. 4, 0 | 0xE7 - MUSHROOM
|0DB441| db $69 ; .io. 4, 1 | 0xE8 - FAKE MASTER SWORD
|0DB442| db $C1 ; ni.. 0, 1 | 0xE9 - MAGIC SHOP ASSISTANT
|0DB443| db $D2 ; ni.s 1, 0 | 0xEA - HEART CONTAINER
|0DB444| db $D2 ; ni.s 1, 0 | 0xEB - HEART PIECE
|0DB445| db $DC ; ni.s 6, 0 | 0xEC - THROWN ITEM
|0DB446| db $C7 ; ni.. 3, 1 | 0xED - SOMARIA PLATFORM
|0DB447| db $C1 ; ni.. 0, 1 | 0xEE - CASTLE MANTLE
|0DB448| db $C7 ; ni.. 3, 1 | 0xEF - UNUSED SOMARIA PLATFORM
|0DB449| db $C7 ; ni.. 3, 1 | 0xF0 - UNUSED SOMARIA PLATFORM
|0DB44A| db $C7 ; ni.. 3, 1 | 0xF1 - UNUSED SOMARIA PLATFORM
|0DB44B| db $C1 ; ni.. 0, 1 | 0xF2 - MEDALLION TABLET

;===================================================================================================
; isph hhhh
;   i - run collision on a single layer
;   s - kill room validity (0: sprite counts | 1: ignored by kill rooms)
;   p - stay active off screen
;   h - hitbox
;===================================================================================================
SpriteData_Hitbox:
|0DB44C| db $00 ; ... $00 | 0x00 - RAVEN
|0DB44D| db $00 ; ... $00 | 0x01 - VULTURE
|0DB44E| db $00 ; ... $00 | 0x02 - STALFOS HEAD
|0DB44F| db $43 ; .s. $03 | 0x03 - NULL
|0DB450| db $43 ; .s. $03 | 0x04 - CORRECT PULL SWITCH
|0DB451| db $43 ; .s. $03 | 0x05 - UNUSED CORRECT PULL SWITCH
|0DB452| db $43 ; .s. $03 | 0x06 - WRONG PULL SWITCH
|0DB453| db $43 ; .s. $03 | 0x07 - UNUSED WRONG PULL SWITCH
|0DB454| db $00 ; ... $00 | 0x08 - OCTOROK
|0DB455| db $00 ; ... $00 | 0x09 - MOLDORM
|0DB456| db $00 ; ... $00 | 0x0A - OCTOROK 4WAY
|0DB457| db $00 ; ... $00 | 0x0B - CUCCO
|0DB458| db $1C ; ... $1C | 0x0C - OCTOROK STONE
|0DB459| db $00 ; ... $00 | 0x0D - BUZZBLOB
|0DB45A| db $00 ; ... $00 | 0x0E - SNAPDRAGON
|0DB45B| db $02 ; ... $02 | 0x0F - OCTOBALLOON
|0DB45C| db $01 ; ... $01 | 0x10 - OCTOBALLOON BABY
|0DB45D| db $03 ; ... $03 | 0x11 - HINOX
|0DB45E| db $00 ; ... $00 | 0x12 - MOBLIN
|0DB45F| db $00 ; ... $00 | 0x13 - MINI HELMASAUR
|0DB460| db $03 ; ... $03 | 0x14 - THIEVES TOWN GRATE
|0DB461| db $C0 ; is. $00 | 0x15 - ANTIFAIRY
|0DB462| db $07 ; ... $07 | 0x16 - SAHASRAHLA / AGINAH
|0DB463| db $00 ; ... $00 | 0x17 - BUSH HOARDER
|0DB464| db $00 ; ... $00 | 0x18 - MINI MOLDORM
|0DB465| db $00 ; ... $00 | 0x19 - POE
|0DB466| db $07 ; ... $07 | 0x1A - SMITHY
|0DB467| db $45 ; .s. $05 | 0x1B - ARROW
|0DB468| db $43 ; .s. $03 | 0x1C - STATUE
|0DB469| db $00 ; ... $00 | 0x1D - FLUTE QUEST
|0DB46A| db $40 ; .s. $00 | 0x1E - CRYSTAL SWITCH
|0DB46B| db $0D ; ... $0D | 0x1F - SICK KID
|0DB46C| db $00 ; ... $00 | 0x20 - SLUGGULA
|0DB46D| db $00 ; ... $00 | 0x21 - WATER SWITCH
|0DB46E| db $00 ; ... $00 | 0x22 - ROPA
|0DB46F| db $00 ; ... $00 | 0x23 - RED BARI
|0DB470| db $00 ; ... $00 | 0x24 - BLUE BARI
|0DB471| db $00 ; ... $00 | 0x25 - TALKING TREE
|0DB472| db $00 ; ... $00 | 0x26 - HARDHAT BEETLE
|0DB473| db $00 ; ... $00 | 0x27 - DEADROCK
|0DB474| db $07 ; ... $07 | 0x28 - DARK WORLD HINT NPC
|0DB475| db $07 ; ... $07 | 0x29 - ADULT
|0DB476| db $07 ; ... $07 | 0x2A - SWEEPING LADY
|0DB477| db $07 ; ... $07 | 0x2B - HOBO
|0DB478| db $07 ; ... $07 | 0x2C - LUMBERJACKS
|0DB479| db $07 ; ... $07 | 0x2D - NECKLESS MAN
|0DB47A| db $0D ; ... $0D | 0x2E - FLUTE KID
|0DB47B| db $07 ; ... $07 | 0x2F - RACE GAME LADY
|0DB47C| db $07 ; ... $07 | 0x30 - RACE GAME GUY
|0DB47D| db $07 ; ... $07 | 0x31 - FORTUNE TELLER
|0DB47E| db $07 ; ... $07 | 0x32 - ARGUE BROS
|0DB47F| db $03 ; ... $03 | 0x33 - RUPEE PULL
|0DB480| db $07 ; ... $07 | 0x34 - YOUNG SNITCH
|0DB481| db $07 ; ... $07 | 0x35 - INNKEEPER
|0DB482| db $07 ; ... $07 | 0x36 - WITCH
|0DB483| db $40 ; .s. $00 | 0x37 - WATERFALL
|0DB484| db $03 ; ... $03 | 0x38 - EYE STATUE
|0DB485| db $07 ; ... $07 | 0x39 - LOCKSMITH
|0DB486| db $0D ; ... $0D | 0x3A - MAGIC BAT
|0DB487| db $00 ; ... $00 | 0x3B - BONK ITEM
|0DB488| db $07 ; ... $07 | 0x3C - KID IN KAK
|0DB489| db $07 ; ... $07 | 0x3D - OLD SNITCH
|0DB48A| db $00 ; ... $00 | 0x3E - ROCK HOARDER
|0DB48B| db $00 ; ... $00 | 0x3F - TUTORIAL GUARD
|0DB48C| db $09 ; ... $09 | 0x40 - LIGHTNING GATE
|0DB48D| db $12 ; ... $12 | 0x41 - BLUE GUARD
|0DB48E| db $12 ; ... $12 | 0x42 - GREEN GUARD
|0DB48F| db $12 ; ... $12 | 0x43 - RED SPEAR GUARD
|0DB490| db $12 ; ... $12 | 0x44 - BLUESAIN BOLT
|0DB491| db $12 ; ... $12 | 0x45 - USAIN BOLT
|0DB492| db $12 ; ... $12 | 0x46 - BLUE ARCHER
|0DB493| db $12 ; ... $12 | 0x47 - GREEN BUSH GUARD
|0DB494| db $12 ; ... $12 | 0x48 - RED JAVELIN GUARD
|0DB495| db $12 ; ... $12 | 0x49 - RED BUSH GUARD
|0DB496| db $12 ; ... $12 | 0x4A - BOMB GUARD
|0DB497| db $12 ; ... $12 | 0x4B - GREEN KNIFE GUARD
|0DB498| db $00 ; ... $00 | 0x4C - GELDMAN
|0DB499| db $00 ; ... $00 | 0x4D - TOPPO
|0DB49A| db $00 ; ... $00 | 0x4E - POPO
|0DB49B| db $00 ; ... $00 | 0x4F - POPO
|0DB49C| db $80 ; i.. $00 | 0x50 - CANNONBALL
|0DB49D| db $12 ; ... $12 | 0x51 - ARMOS STATUE
|0DB49E| db $09 ; ... $09 | 0x52 - KING ZORA
|0DB49F| db $09 ; ... $09 | 0x53 - ARMOS KNIGHT
|0DB4A0| db $00 ; ... $00 | 0x54 - LANMOLAS
|0DB4A1| db $40 ; .s. $00 | 0x55 - ZORA / FIREBALL
|0DB4A2| db $00 ; ... $00 | 0x56 - WALKING ZORA
|0DB4A3| db $0C ; ... $0C | 0x57 - DESERT STATUE
|0DB4A4| db $00 ; ... $00 | 0x58 - CRAB
|0DB4A5| db $00 ; ... $00 | 0x59 - LOST WOODS BIRD
|0DB4A6| db $00 ; ... $00 | 0x5A - LOST WOODS SQUIRREL
|0DB4A7| db $40 ; .s. $00 | 0x5B - SPARK
|0DB4A8| db $40 ; .s. $00 | 0x5C - SPARK
|0DB4A9| db $10 ; ... $10 | 0x5D - ROLLER VERTICAL DOWN FIRST
|0DB4AA| db $10 ; ... $10 | 0x5E - ROLLER VERTICAL UP FIRST
|0DB4AB| db $2E ; ..p $0E | 0x5F - ROLLER HORIZONTAL RIGHT FIRST
|0DB4AC| db $2E ; ..p $0E | 0x60 - ROLLER HORIZONTAL LEFT FIRST
|0DB4AD| db $40 ; .s. $00 | 0x61 - BEAMOS
|0DB4AE| db $1E ; ... $1E | 0x62 - MASTERSWORD
|0DB4AF| db $53 ; .s. $13 | 0x63 - DEBIRANDO PIT
|0DB4B0| db $00 ; ... $00 | 0x64 - DEBIRANDO
|0DB4B1| db $0A ; ... $0A | 0x65 - ARCHERY GUY
|0DB4B2| db $00 ; ... $00 | 0x66 - WALL CANNON VERTICAL LEFT
|0DB4B3| db $00 ; ... $00 | 0x67 - WALL CANNON VERTICAL RIGHT
|0DB4B4| db $00 ; ... $00 | 0x68 - WALL CANNON HORIZONTAL TOP
|0DB4B5| db $00 ; ... $00 | 0x69 - WALL CANNON HORIZONTAL BOTTOM
|0DB4B6| db $12 ; ... $12 | 0x6A - BALL N CHAIN
|0DB4B7| db $12 ; ... $12 | 0x6B - CANNONBALL / CANNON TROOPER
|0DB4B8| db $40 ; .s. $00 | 0x6C - MIRROR PORTAL
|0DB4B9| db $00 ; ... $00 | 0x6D - RAT / CRICKET
|0DB4BA| db $00 ; ... $00 | 0x6E - ROPE
|0DB4BB| db $40 ; .s. $00 | 0x6F - KEESE
|0DB4BC| db $19 ; ... $19 | 0x70 - KING HELMASAUR FIREBALL
|0DB4BD| db $00 ; ... $00 | 0x71 - LEEVER
|0DB4BE| db $00 ; ... $00 | 0x72 - FAIRY POND TRIGGER
|0DB4BF| db $0A ; ... $0A | 0x73 - UNCLE / PRIEST / MANTLE
|0DB4C0| db $0D ; ... $0D | 0x74 - RUNNING BOY
|0DB4C1| db $0A ; ... $0A | 0x75 - BOTTLE MERCHANT
|0DB4C2| db $0A ; ... $0A | 0x76 - ZELDA
|0DB4C3| db $80 ; i.. $00 | 0x77 - ANTIFAIRY
|0DB4C4| db $0A ; ... $0A | 0x78 - SAHASRAHLAS WIFE
|0DB4C5| db $41 ; .s. $01 | 0x79 - BEE
|0DB4C6| db $00 ; ... $00 | 0x7A - AGAHNIM
|0DB4C7| db $40 ; .s. $00 | 0x7B - AGAHNIMS BALLS
|0DB4C8| db $00 ; ... $00 | 0x7C - GREEN STALFOS
|0DB4C9| db $49 ; .s. $09 | 0x7D - BIG SPIKE
|0DB4CA| db $00 ; ... $00 | 0x7E - FIREBAR CLOCKWISE
|0DB4CB| db $00 ; ... $00 | 0x7F - FIREBAR COUNTERCLOCKWISE
|0DB4CC| db $C0 ; is. $00 | 0x80 - FIRESNAKE
|0DB4CD| db $00 ; ... $00 | 0x81 - HOVER
|0DB4CE| db $40 ; .s. $00 | 0x82 - ANTIFAIRY CIRCLE
|0DB4CF| db $00 ; ... $00 | 0x83 - GREEN EYEGORE / GREEN MIMIC
|0DB4D0| db $00 ; ... $00 | 0x84 - RED EYEGORE / RED MIMIC
|0DB4D1| db $40 ; .s. $00 | 0x85 - YELLOW STALFOS
|0DB4D2| db $00 ; ... $00 | 0x86 - KODONGO
|0DB4D3| db $00 ; ... $00 | 0x87 - KODONGO FIRE
|0DB4D4| db $09 ; ... $09 | 0x88 - MOTHULA
|0DB4D5| db $80 ; i.. $00 | 0x89 - MOTHULA BEAM
|0DB4D6| db $C0 ; is. $00 | 0x8A - SPIKE BLOCK
|0DB4D7| db $00 ; ... $00 | 0x8B - GIBDO
|0DB4D8| db $40 ; .s. $00 | 0x8C - ARRGHUS
|0DB4D9| db $00 ; ... $00 | 0x8D - ARRGHI
|0DB4DA| db $00 ; ... $00 | 0x8E - TERRORPIN
|0DB4DB| db $80 ; i.. $00 | 0x8F - BLOB
|0DB4DC| db $00 ; ... $00 | 0x90 - WALLMASTER
|0DB4DD| db $00 ; ... $00 | 0x91 - STALFOS KNIGHT
|0DB4DE| db $18 ; ... $18 | 0x92 - KING HELMASAUR
|0DB4DF| db $5A ; .s. $1A | 0x93 - BUMPER
|0DB4E0| db $00 ; ... $00 | 0x94 - PIROGUSU
|0DB4E1| db $D4 ; is. $14 | 0x95 - LASER EYE LEFT
|0DB4E2| db $D4 ; is. $14 | 0x96 - LASER EYE RIGHT
|0DB4E3| db $D4 ; is. $14 | 0x97 - LASER EYE TOP
|0DB4E4| db $D4 ; is. $14 | 0x98 - LASER EYE BOTTOM
|0DB4E5| db $00 ; ... $00 | 0x99 - PENGATOR
|0DB4E6| db $40 ; .s. $00 | 0x9A - KYAMERON
|0DB4E7| db $00 ; ... $00 | 0x9B - WIZZROBE
|0DB4E8| db $80 ; i.. $00 | 0x9C - ZORO
|0DB4E9| db $80 ; i.. $00 | 0x9D - BABASU
|0DB4EA| db $40 ; .s. $00 | 0x9E - HAUNTED GROVE OSTRICH
|0DB4EB| db $40 ; .s. $00 | 0x9F - HAUNTED GROVE RABBIT
|0DB4EC| db $40 ; .s. $00 | 0xA0 - HAUNTED GROVE BIRD
|0DB4ED| db $00 ; ... $00 | 0xA1 - FREEZOR
|0DB4EE| db $09 ; ... $09 | 0xA2 - KHOLDSTARE
|0DB4EF| db $1D ; ... $1D | 0xA3 - KHOLDSTARE SHELL
|0DB4F0| db $00 ; ... $00 | 0xA4 - FALLING ICE
|0DB4F1| db $00 ; ... $00 | 0xA5 - BLUE ZAZAK
|0DB4F2| db $00 ; ... $00 | 0xA6 - RED ZAZAK
|0DB4F3| db $00 ; ... $00 | 0xA7 - STALFOS
|0DB4F4| db $00 ; ... $00 | 0xA8 - GREEN ZIRRO
|0DB4F5| db $00 ; ... $00 | 0xA9 - BLUE ZIRRO
|0DB4F6| db $00 ; ... $00 | 0xAA - PIKIT
|0DB4F7| db $00 ; ... $00 | 0xAB - CRYSTAL MAIDEN
|0DB4F8| db $00 ; ... $00 | 0xAC - APPLE
|0DB4F9| db $0A ; ... $0A | 0xAD - OLD MAN
|0DB4FA| db $1B ; ... $1B | 0xAE - PIPE DOWN
|0DB4FB| db $1B ; ... $1B | 0xAF - PIPE UP
|0DB4FC| db $1B ; ... $1B | 0xB0 - PIPE RIGHT
|0DB4FD| db $1B ; ... $1B | 0xB1 - PIPE LEFT
|0DB4FE| db $41 ; .s. $01 | 0xB2 - GOOD BEE
|0DB4FF| db $00 ; ... $00 | 0xB3 - PEDESTAL PLAQUE
|0DB500| db $03 ; ... $03 | 0xB4 - PURPLE CHEST
|0DB501| db $07 ; ... $07 | 0xB5 - BOMB SHOP GUY
|0DB502| db $07 ; ... $07 | 0xB6 - KIKI
|0DB503| db $03 ; ... $03 | 0xB7 - BLIND MAIDEN
|0DB504| db $0A ; ... $0A | 0xB8 - DIALOGUE TESTER
|0DB505| db $00 ; ... $00 | 0xB9 - BULLY / PINK BALL
|0DB506| db $01 ; ... $01 | 0xBA - WHIRLPOOL
|0DB507| db $0A ; ... $0A | 0xBB - SHOPKEEPER / CHEST GAME GUY
|0DB508| db $0A ; ... $0A | 0xBC - DRUNKARD
|0DB509| db $09 ; ... $09 | 0xBD - VITREOUS
|0DB50A| db $00 ; ... $00 | 0xBE - VITREOUS SMALL EYE
|0DB50B| db $00 ; ... $00 | 0xBF - LIGHTNING
|0DB50C| db $00 ; ... $00 | 0xC0 - CATFISH
|0DB50D| db $00 ; ... $00 | 0xC1 - CUTSCENE AGAHNIM
|0DB50E| db $09 ; ... $09 | 0xC2 - BOULDER
|0DB50F| db $00 ; ... $00 | 0xC3 - GIBO
|0DB510| db $00 ; ... $00 | 0xC4 - THIEF
|0DB511| db $40 ; .s. $00 | 0xC5 - MEDUSA
|0DB512| db $40 ; .s. $00 | 0xC6 - YOMO MEDUSA
|0DB513| db $00 ; ... $00 | 0xC7 - POKEY
|0DB514| db $00 ; ... $00 | 0xC8 - BIG FAIRY
|0DB515| db $00 ; ... $00 | 0xC9 - TEKTITE / FIREBAT
|0DB516| db $00 ; ... $00 | 0xCA - CHAIN CHOMP
|0DB517| db $89 ; i.. $09 | 0xCB - TRINEXX ROCK HEAD
|0DB518| db $80 ; i.. $00 | 0xCC - TRINEXX FIRE HEAD
|0DB519| db $80 ; i.. $00 | 0xCD - TRINEXX ICE HEAD
|0DB51A| db $00 ; ... $00 | 0xCE - BLIND
|0DB51B| db $1C ; ... $1C | 0xCF - SWAMOLA
|0DB51C| db $00 ; ... $00 | 0xD0 - LYNEL
|0DB51D| db $40 ; .s. $00 | 0xD1 - BUNNYBEAM / SMOKE
|0DB51E| db $00 ; ... $00 | 0xD2 - FLOPPING FISH
|0DB51F| db $00 ; ... $00 | 0xD3 - STAL
|0DB520| db $1C ; ... $1C | 0xD4 - LANDMINE
|0DB521| db $07 ; ... $07 | 0xD5 - DIGGING GAME GUY
|0DB522| db $03 ; ... $03 | 0xD6 - GANON
|0DB523| db $03 ; ... $03 | 0xD7 - GANON
|0DB524| db $44 ; .s. $04 | 0xD8 - HEART
|0DB525| db $44 ; .s. $04 | 0xD9 - GREEN RUPEE
|0DB526| db $44 ; .s. $04 | 0xDA - BLUE RUPEE
|0DB527| db $44 ; .s. $04 | 0xDB - RED RUPEE
|0DB528| db $44 ; .s. $04 | 0xDC - BOMB REFILL 1
|0DB529| db $44 ; .s. $04 | 0xDD - BOMB REFILL 4
|0DB52A| db $44 ; .s. $04 | 0xDE - BOMB REFILL 8
|0DB52B| db $44 ; .s. $04 | 0xDF - SMALL MAGIC DECANTER
|0DB52C| db $44 ; .s. $04 | 0xE0 - LARGE MAGIC DECANTER
|0DB52D| db $44 ; .s. $04 | 0xE1 - ARROW REFILL 5
|0DB52E| db $44 ; .s. $04 | 0xE2 - ARROW REFILL 10
|0DB52F| db $43 ; .s. $03 | 0xE3 - FAIRY
|0DB530| db $44 ; .s. $04 | 0xE4 - SMALL KEY
|0DB531| db $43 ; .s. $03 | 0xE5 - BIG KEY
|0DB532| db $40 ; .s. $00 | 0xE6 - STOLEN SHIELD
|0DB533| db $C0 ; is. $00 | 0xE7 - MUSHROOM
|0DB534| db $C0 ; is. $00 | 0xE8 - FAKE MASTER SWORD
|0DB535| db $C7 ; is. $07 | 0xE9 - MAGIC SHOP ASSISTANT
|0DB536| db $C3 ; is. $03 | 0xEA - HEART CONTAINER
|0DB537| db $C3 ; is. $03 | 0xEB - HEART PIECE
|0DB538| db $C0 ; is. $00 | 0xEC - THROWN ITEM
|0DB539| db $1B ; ... $1B | 0xED - SOMARIA PLATFORM
|0DB53A| db $08 ; ... $08 | 0xEE - CASTLE MANTLE
|0DB53B| db $1B ; ... $1B | 0xEF - UNUSED SOMARIA PLATFORM
|0DB53C| db $1B ; ... $1B | 0xF0 - UNUSED SOMARIA PLATFORM
|0DB53D| db $1B ; ... $1B | 0xF1 - UNUSED SOMARIA PLATFORM
|0DB53E| db $03 ; ... $03 | 0xF2 - MEDALLION TABLET

;===================================================================================================
; tttt asbp
;   t - tile hitbox
;   a - deflect arrows
;   s - resets damage queued and clears sword cooldown when hit for 0 (except from powder)
;   b - dies like a boss
;   p - ignore pits when thrown, or allow pits
;       This one is weird, because it does 2 distinct and opposite things.
;       For thrown sprites, this bit being set makes it ignore pits, and crash as if on land.
;       For other sprites, this bit being set means it can process pit collision and fall.
;===================================================================================================
SpriteData_TileInteraction:
|0DB53F| db $00 ; .... $0 | 0x00 - RAVEN
|0DB540| db $00 ; .... $0 | 0x01 - VULTURE
|0DB541| db $00 ; .... $0 | 0x02 - STALFOS HEAD
|0DB542| db $00 ; .... $0 | 0x03 - NULL
|0DB543| db $00 ; .... $0 | 0x04 - CORRECT PULL SWITCH
|0DB544| db $00 ; .... $0 | 0x05 - UNUSED CORRECT PULL SWITCH
|0DB545| db $00 ; .... $0 | 0x06 - WRONG PULL SWITCH
|0DB546| db $00 ; .... $0 | 0x07 - UNUSED WRONG PULL SWITCH
|0DB547| db $00 ; .... $0 | 0x08 - OCTOROK
|0DB548| db $0A ; a.b. $0 | 0x09 - MOLDORM
|0DB549| db $00 ; .... $0 | 0x0A - OCTOROK 4WAY
|0DB54A| db $01 ; ...p $0 | 0x0B - CUCCO
|0DB54B| db $30 ; .... $0 | 0x0C - OCTOROK STONE
|0DB54C| db $00 ; .... $0 | 0x0D - BUZZBLOB
|0DB54D| db $00 ; .... $0 | 0x0E - SNAPDRAGON
|0DB54E| db $20 ; .... $0 | 0x0F - OCTOBALLOON
|0DB54F| db $10 ; .... $0 | 0x10 - OCTOBALLOON BABY
|0DB550| db $00 ; .... $0 | 0x11 - HINOX
|0DB551| db $00 ; .... $0 | 0x12 - MOBLIN
|0DB552| db $01 ; ...p $0 | 0x13 - MINI HELMASAUR
|0DB553| db $00 ; .... $0 | 0x14 - THIEVES TOWN GRATE
|0DB554| db $00 ; .... $0 | 0x15 - ANTIFAIRY
|0DB555| db $00 ; .... $0 | 0x16 - SAHASRAHLA / AGINAH
|0DB556| db $00 ; .... $0 | 0x17 - BUSH HOARDER
|0DB557| db $00 ; .... $0 | 0x18 - MINI MOLDORM
|0DB558| db $00 ; .... $0 | 0x19 - POE
|0DB559| db $00 ; .... $0 | 0x1A - SMITHY
|0DB55A| db $08 ; a... $0 | 0x1B - ARROW
|0DB55B| db $20 ; .... $0 | 0x1C - STATUE
|0DB55C| db $00 ; .... $0 | 0x1D - FLUTE QUEST
|0DB55D| db $04 ; .s.. $0 | 0x1E - CRYSTAL SWITCH
|0DB55E| db $00 ; .... $0 | 0x1F - SICK KID
|0DB55F| db $00 ; .... $0 | 0x20 - SLUGGULA
|0DB560| db $00 ; .... $0 | 0x21 - WATER SWITCH
|0DB561| db $00 ; .... $0 | 0x22 - ROPA
|0DB562| db $00 ; .... $0 | 0x23 - RED BARI
|0DB563| db $00 ; .... $0 | 0x24 - BLUE BARI
|0DB564| db $00 ; .... $0 | 0x25 - TALKING TREE
|0DB565| db $01 ; ...p $0 | 0x26 - HARDHAT BEETLE
|0DB566| db $04 ; .s.. $0 | 0x27 - DEADROCK
|0DB567| db $00 ; .... $0 | 0x28 - DARK WORLD HINT NPC
|0DB568| db $00 ; .... $0 | 0x29 - ADULT
|0DB569| db $00 ; .... $0 | 0x2A - SWEEPING LADY
|0DB56A| db $00 ; .... $0 | 0x2B - HOBO
|0DB56B| db $00 ; .... $0 | 0x2C - LUMBERJACKS
|0DB56C| db $00 ; .... $0 | 0x2D - NECKLESS MAN
|0DB56D| db $00 ; .... $0 | 0x2E - FLUTE KID
|0DB56E| db $00 ; .... $0 | 0x2F - RACE GAME LADY
|0DB56F| db $00 ; .... $0 | 0x30 - RACE GAME GUY
|0DB570| db $00 ; .... $0 | 0x31 - FORTUNE TELLER
|0DB571| db $00 ; .... $0 | 0x32 - ARGUE BROS
|0DB572| db $00 ; .... $0 | 0x33 - RUPEE PULL
|0DB573| db $00 ; .... $0 | 0x34 - YOUNG SNITCH
|0DB574| db $00 ; .... $0 | 0x35 - INNKEEPER
|0DB575| db $00 ; .... $0 | 0x36 - WITCH
|0DB576| db $00 ; .... $0 | 0x37 - WATERFALL
|0DB577| db $00 ; .... $0 | 0x38 - EYE STATUE
|0DB578| db $00 ; .... $0 | 0x39 - LOCKSMITH
|0DB579| db $00 ; .... $0 | 0x3A - MAGIC BAT
|0DB57A| db $00 ; .... $0 | 0x3B - BONK ITEM
|0DB57B| db $00 ; .... $0 | 0x3C - KID IN KAK
|0DB57C| db $00 ; .... $0 | 0x3D - OLD SNITCH
|0DB57D| db $00 ; .... $0 | 0x3E - ROCK HOARDER
|0DB57E| db $68 ; a... $0 | 0x3F - TUTORIAL GUARD
|0DB57F| db $60 ; .... $0 | 0x40 - LIGHTNING GATE
|0DB580| db $61 ; ...p $0 | 0x41 - BLUE GUARD
|0DB581| db $61 ; ...p $0 | 0x42 - GREEN GUARD
|0DB582| db $61 ; ...p $0 | 0x43 - RED SPEAR GUARD
|0DB583| db $61 ; ...p $0 | 0x44 - BLUESAIN BOLT
|0DB584| db $61 ; ...p $0 | 0x45 - USAIN BOLT
|0DB585| db $61 ; ...p $0 | 0x46 - BLUE ARCHER
|0DB586| db $61 ; ...p $0 | 0x47 - GREEN BUSH GUARD
|0DB587| db $61 ; ...p $0 | 0x48 - RED JAVELIN GUARD
|0DB588| db $61 ; ...p $0 | 0x49 - RED BUSH GUARD
|0DB589| db $61 ; ...p $0 | 0x4A - BOMB GUARD
|0DB58A| db $61 ; ...p $0 | 0x4B - GREEN KNIFE GUARD
|0DB58B| db $00 ; .... $0 | 0x4C - GELDMAN
|0DB58C| db $00 ; .... $0 | 0x4D - TOPPO
|0DB58D| db $00 ; .... $0 | 0x4E - POPO
|0DB58E| db $00 ; .... $0 | 0x4F - POPO
|0DB58F| db $00 ; .... $0 | 0x50 - CANNONBALL
|0DB590| db $00 ; .... $0 | 0x51 - ARMOS STATUE
|0DB591| db $02 ; ..b. $0 | 0x52 - KING ZORA
|0DB592| db $02 ; ..b. $0 | 0x53 - ARMOS KNIGHT
|0DB593| db $02 ; ..b. $0 | 0x54 - LANMOLAS
|0DB594| db $00 ; .... $0 | 0x55 - ZORA / FIREBALL
|0DB595| db $00 ; .... $0 | 0x56 - WALKING ZORA
|0DB596| db $70 ; .... $0 | 0x57 - DESERT STATUE
|0DB597| db $00 ; .... $0 | 0x58 - CRAB
|0DB598| db $00 ; .... $0 | 0x59 - LOST WOODS BIRD
|0DB599| db $00 ; .... $0 | 0x5A - LOST WOODS SQUIRREL
|0DB59A| db $90 ; .... $0 | 0x5B - SPARK
|0DB59B| db $90 ; .... $0 | 0x5C - SPARK
|0DB59C| db $00 ; .... $0 | 0x5D - ROLLER VERTICAL DOWN FIRST
|0DB59D| db $00 ; .... $0 | 0x5E - ROLLER VERTICAL UP FIRST
|0DB59E| db $00 ; .... $0 | 0x5F - ROLLER HORIZONTAL RIGHT FIRST
|0DB59F| db $00 ; .... $0 | 0x60 - ROLLER HORIZONTAL LEFT FIRST
|0DB5A0| db $00 ; .... $0 | 0x61 - BEAMOS
|0DB5A1| db $00 ; .... $0 | 0x62 - MASTERSWORD
|0DB5A2| db $00 ; .... $0 | 0x63 - DEBIRANDO PIT
|0DB5A3| db $00 ; .... $0 | 0x64 - DEBIRANDO
|0DB5A4| db $00 ; .... $0 | 0x65 - ARCHERY GUY
|0DB5A5| db $00 ; .... $0 | 0x66 - WALL CANNON VERTICAL LEFT
|0DB5A6| db $00 ; .... $0 | 0x67 - WALL CANNON VERTICAL RIGHT
|0DB5A7| db $00 ; .... $0 | 0x68 - WALL CANNON HORIZONTAL TOP
|0DB5A8| db $00 ; .... $0 | 0x69 - WALL CANNON HORIZONTAL BOTTOM
|0DB5A9| db $60 ; .... $0 | 0x6A - BALL N CHAIN
|0DB5AA| db $60 ; .... $0 | 0x6B - CANNONBALL / CANNON TROOPER
|0DB5AB| db $00 ; .... $0 | 0x6C - MIRROR PORTAL
|0DB5AC| db $00 ; .... $0 | 0x6D - RAT / CRICKET
|0DB5AD| db $00 ; .... $0 | 0x6E - ROPE
|0DB5AE| db $00 ; .... $0 | 0x6F - KEESE
|0DB5AF| db $00 ; .... $0 | 0x70 - KING HELMASAUR FIREBALL
|0DB5B0| db $00 ; .... $0 | 0x71 - LEEVER
|0DB5B1| db $00 ; .... $0 | 0x72 - FAIRY POND TRIGGER
|0DB5B2| db $00 ; .... $0 | 0x73 - UNCLE / PRIEST / MANTLE
|0DB5B3| db $00 ; .... $0 | 0x74 - RUNNING BOY
|0DB5B4| db $00 ; .... $0 | 0x75 - BOTTLE MERCHANT
|0DB5B5| db $00 ; .... $0 | 0x76 - ZELDA
|0DB5B6| db $80 ; .... $0 | 0x77 - ANTIFAIRY
|0DB5B7| db $00 ; .... $0 | 0x78 - SAHASRAHLAS WIFE
|0DB5B8| db $00 ; .... $0 | 0x79 - BEE
|0DB5B9| db $02 ; ..b. $0 | 0x7A - AGAHNIM
|0DB5BA| db $00 ; .... $0 | 0x7B - AGAHNIMS BALLS
|0DB5BB| db $00 ; .... $0 | 0x7C - GREEN STALFOS
|0DB5BC| db $70 ; .... $0 | 0x7D - BIG SPIKE
|0DB5BD| db $00 ; .... $0 | 0x7E - FIREBAR CLOCKWISE
|0DB5BE| db $00 ; .... $0 | 0x7F - FIREBAR COUNTERCLOCKWISE
|0DB5BF| db $00 ; .... $0 | 0x80 - FIRESNAKE
|0DB5C0| db $00 ; .... $0 | 0x81 - HOVER
|0DB5C1| db $00 ; .... $0 | 0x82 - ANTIFAIRY CIRCLE
|0DB5C2| db $00 ; .... $0 | 0x83 - GREEN EYEGORE / GREEN MIMIC
|0DB5C3| db $00 ; .... $0 | 0x84 - RED EYEGORE / RED MIMIC
|0DB5C4| db $00 ; .... $0 | 0x85 - YELLOW STALFOS
|0DB5C5| db $B0 ; .... $0 | 0x86 - KODONGO
|0DB5C6| db $00 ; .... $0 | 0x87 - KODONGO FIRE
|0DB5C7| db $C2 ; ..b. $0 | 0x88 - MOTHULA
|0DB5C8| db $00 ; .... $0 | 0x89 - MOTHULA BEAM
|0DB5C9| db $20 ; .... $0 | 0x8A - SPIKE BLOCK
|0DB5CA| db $00 ; .... $0 | 0x8B - GIBDO
|0DB5CB| db $02 ; ..b. $0 | 0x8C - ARRGHUS
|0DB5CC| db $00 ; .... $0 | 0x8D - ARRGHI
|0DB5CD| db $00 ; .... $0 | 0x8E - TERRORPIN
|0DB5CE| db $00 ; .... $0 | 0x8F - BLOB
|0DB5CF| db $00 ; .... $0 | 0x90 - WALLMASTER
|0DB5D0| db $00 ; .... $0 | 0x91 - STALFOS KNIGHT
|0DB5D1| db $02 ; ..b. $0 | 0x92 - KING HELMASAUR
|0DB5D2| db $00 ; .... $0 | 0x93 - BUMPER
|0DB5D3| db $B0 ; .... $0 | 0x94 - PIROGUSU
|0DB5D4| db $00 ; .... $0 | 0x95 - LASER EYE LEFT
|0DB5D5| db $00 ; .... $0 | 0x96 - LASER EYE RIGHT
|0DB5D6| db $00 ; .... $0 | 0x97 - LASER EYE TOP
|0DB5D7| db $00 ; .... $0 | 0x98 - LASER EYE BOTTOM
|0DB5D8| db $00 ; .... $0 | 0x99 - PENGATOR
|0DB5D9| db $00 ; .... $0 | 0x9A - KYAMERON
|0DB5DA| db $00 ; .... $0 | 0x9B - WIZZROBE
|0DB5DB| db $A0 ; .... $0 | 0x9C - ZORO
|0DB5DC| db $A0 ; .... $0 | 0x9D - BABASU
|0DB5DD| db $00 ; .... $0 | 0x9E - HAUNTED GROVE OSTRICH
|0DB5DE| db $00 ; .... $0 | 0x9F - HAUNTED GROVE RABBIT
|0DB5DF| db $00 ; .... $0 | 0xA0 - HAUNTED GROVE BIRD
|0DB5E0| db $04 ; .s.. $0 | 0xA1 - FREEZOR
|0DB5E1| db $02 ; ..b. $0 | 0xA2 - KHOLDSTARE
|0DB5E2| db $00 ; .... $0 | 0xA3 - KHOLDSTARE SHELL
|0DB5E3| db $00 ; .... $0 | 0xA4 - FALLING ICE
|0DB5E4| db $00 ; .... $0 | 0xA5 - BLUE ZAZAK
|0DB5E5| db $00 ; .... $0 | 0xA6 - RED ZAZAK
|0DB5E6| db $00 ; .... $0 | 0xA7 - STALFOS
|0DB5E7| db $00 ; .... $0 | 0xA8 - GREEN ZIRRO
|0DB5E8| db $00 ; .... $0 | 0xA9 - BLUE ZIRRO
|0DB5E9| db $00 ; .... $0 | 0xAA - PIKIT
|0DB5EA| db $00 ; .... $0 | 0xAB - CRYSTAL MAIDEN
|0DB5EB| db $00 ; .... $0 | 0xAC - APPLE
|0DB5EC| db $00 ; .... $0 | 0xAD - OLD MAN
|0DB5ED| db $00 ; .... $0 | 0xAE - PIPE DOWN
|0DB5EE| db $00 ; .... $0 | 0xAF - PIPE UP
|0DB5EF| db $00 ; .... $0 | 0xB0 - PIPE RIGHT
|0DB5F0| db $00 ; .... $0 | 0xB1 - PIPE LEFT
|0DB5F1| db $00 ; .... $0 | 0xB2 - GOOD BEE
|0DB5F2| db $00 ; .... $0 | 0xB3 - PEDESTAL PLAQUE
|0DB5F3| db $00 ; .... $0 | 0xB4 - PURPLE CHEST
|0DB5F4| db $00 ; .... $0 | 0xB5 - BOMB SHOP GUY
|0DB5F5| db $00 ; .... $0 | 0xB6 - KIKI
|0DB5F6| db $00 ; .... $0 | 0xB7 - BLIND MAIDEN
|0DB5F7| db $00 ; .... $0 | 0xB8 - DIALOGUE TESTER
|0DB5F8| db $00 ; .... $0 | 0xB9 - BULLY / PINK BALL
|0DB5F9| db $00 ; .... $0 | 0xBA - WHIRLPOOL
|0DB5FA| db $00 ; .... $0 | 0xBB - SHOPKEEPER / CHEST GAME GUY
|0DB5FB| db $00 ; .... $0 | 0xBC - DRUNKARD
|0DB5FC| db $C2 ; ..b. $0 | 0xBD - VITREOUS
|0DB5FD| db $00 ; .... $0 | 0xBE - VITREOUS SMALL EYE
|0DB5FE| db $00 ; .... $0 | 0xBF - LIGHTNING
|0DB5FF| db $00 ; .... $0 | 0xC0 - CATFISH
|0DB600| db $00 ; .... $0 | 0xC1 - CUTSCENE AGAHNIM
|0DB601| db $00 ; .... $0 | 0xC2 - BOULDER
|0DB602| db $00 ; .... $0 | 0xC3 - GIBO
|0DB603| db $04 ; .s.. $0 | 0xC4 - THIEF
|0DB604| db $00 ; .... $0 | 0xC5 - MEDUSA
|0DB605| db $00 ; .... $0 | 0xC6 - YOMO MEDUSA
|0DB606| db $00 ; .... $0 | 0xC7 - POKEY
|0DB607| db $00 ; .... $0 | 0xC8 - BIG FAIRY
|0DB608| db $00 ; .... $0 | 0xC9 - TEKTITE / FIREBAT
|0DB609| db $00 ; .... $0 | 0xCA - CHAIN CHOMP
|0DB60A| db $02 ; ..b. $0 | 0xCB - TRINEXX ROCK HEAD
|0DB60B| db $02 ; ..b. $0 | 0xCC - TRINEXX FIRE HEAD
|0DB60C| db $02 ; ..b. $0 | 0xCD - TRINEXX ICE HEAD
|0DB60D| db $02 ; ..b. $0 | 0xCE - BLIND
|0DB60E| db $00 ; .... $0 | 0xCF - SWAMOLA
|0DB60F| db $00 ; .... $0 | 0xD0 - LYNEL
|0DB610| db $00 ; .... $0 | 0xD1 - BUNNYBEAM / SMOKE
|0DB611| db $00 ; .... $0 | 0xD2 - FLOPPING FISH
|0DB612| db $00 ; .... $0 | 0xD3 - STAL
|0DB613| db $00 ; .... $0 | 0xD4 - LANDMINE
|0DB614| db $00 ; .... $0 | 0xD5 - DIGGING GAME GUY
|0DB615| db $0A ; a.b. $0 | 0xD6 - GANON
|0DB616| db $0A ; a.b. $0 | 0xD7 - GANON
|0DB617| db $10 ; .... $0 | 0xD8 - HEART
|0DB618| db $10 ; .... $0 | 0xD9 - GREEN RUPEE
|0DB619| db $10 ; .... $0 | 0xDA - BLUE RUPEE
|0DB61A| db $10 ; .... $0 | 0xDB - RED RUPEE
|0DB61B| db $00 ; .... $0 | 0xDC - BOMB REFILL 1
|0DB61C| db $00 ; .... $0 | 0xDD - BOMB REFILL 4
|0DB61D| db $00 ; .... $0 | 0xDE - BOMB REFILL 8
|0DB61E| db $10 ; .... $0 | 0xDF - SMALL MAGIC DECANTER
|0DB61F| db $10 ; .... $0 | 0xE0 - LARGE MAGIC DECANTER
|0DB620| db $10 ; .... $0 | 0xE1 - ARROW REFILL 5
|0DB621| db $10 ; .... $0 | 0xE2 - ARROW REFILL 10
|0DB622| db $00 ; .... $0 | 0xE3 - FAIRY
|0DB623| db $10 ; .... $0 | 0xE4 - SMALL KEY
|0DB624| db $00 ; .... $0 | 0xE5 - BIG KEY
|0DB625| db $00 ; .... $0 | 0xE6 - STOLEN SHIELD
|0DB626| db $00 ; .... $0 | 0xE7 - MUSHROOM
|0DB627| db $00 ; .... $0 | 0xE8 - FAKE MASTER SWORD
|0DB628| db $00 ; .... $0 | 0xE9 - MAGIC SHOP ASSISTANT
|0DB629| db $00 ; .... $0 | 0xEA - HEART CONTAINER
|0DB62A| db $00 ; .... $0 | 0xEB - HEART PIECE
|0DB62B| db $00 ; .... $0 | 0xEC - THROWN ITEM
|0DB62C| db $00 ; .... $0 | 0xED - SOMARIA PLATFORM
|0DB62D| db $00 ; .... $0 | 0xEE - CASTLE MANTLE
|0DB62E| db $00 ; .... $0 | 0xEF - UNUSED SOMARIA PLATFORM
|0DB62F| db $00 ; .... $0 | 0xF0 - UNUSED SOMARIA PLATFORM
|0DB630| db $00 ; .... $0 | 0xF1 - UNUSED SOMARIA PLATFORM
|0DB631| db $00 ; .... $0 | 0xF2 - MEDALLION TABLET

;===================================================================================================
; iwbs pppp
;   i - limits pit and conveyor interaction
;   w - check for water uniquely (0: skip | 1: check water)
;   b - blockable by shield
;   s - damage SFX (0: punch | 1: slap)
;   p - prize pack
;===================================================================================================
SpriteData_PrizePack:
|0DB632| db $83 ; i... $3 | 0x00 - RAVEN
|0DB633| db $96 ; i..s $6 | 0x01 - VULTURE
|0DB634| db $84 ; i... $4 | 0x02 - STALFOS HEAD
|0DB635| db $80 ; i... $0 | 0x03 - NULL
|0DB636| db $80 ; i... $0 | 0x04 - CORRECT PULL SWITCH
|0DB637| db $80 ; i... $0 | 0x05 - UNUSED CORRECT PULL SWITCH
|0DB638| db $80 ; i... $0 | 0x06 - WRONG PULL SWITCH
|0DB639| db $80 ; i... $0 | 0x07 - UNUSED WRONG PULL SWITCH
|0DB63A| db $02 ; .... $2 | 0x08 - OCTOROK
|0DB63B| db $00 ; .... $0 | 0x09 - MOLDORM
|0DB63C| db $02 ; .... $2 | 0x0A - OCTOROK 4WAY
|0DB63D| db $80 ; i... $0 | 0x0B - CUCCO
|0DB63E| db $A0 ; i.b. $0 | 0x0C - OCTOROK STONE
|0DB63F| db $83 ; i... $3 | 0x0D - BUZZBLOB
|0DB640| db $97 ; i..s $7 | 0x0E - SNAPDRAGON
|0DB641| db $80 ; i... $0 | 0x0F - OCTOBALLOON
|0DB642| db $80 ; i... $0 | 0x10 - OCTOBALLOON BABY
|0DB643| db $94 ; i..s $4 | 0x11 - HINOX
|0DB644| db $91 ; i..s $1 | 0x12 - MOBLIN
|0DB645| db $07 ; .... $7 | 0x13 - MINI HELMASAUR
|0DB646| db $00 ; .... $0 | 0x14 - THIEVES TOWN GRATE
|0DB647| db $80 ; i... $0 | 0x15 - ANTIFAIRY
|0DB648| db $00 ; .... $0 | 0x16 - SAHASRAHLA / AGINAH
|0DB649| db $80 ; i... $0 | 0x17 - BUSH HOARDER
|0DB64A| db $92 ; i..s $2 | 0x18 - MINI MOLDORM
|0DB64B| db $96 ; i..s $6 | 0x19 - POE
|0DB64C| db $80 ; i... $0 | 0x1A - SMITHY
|0DB64D| db $A0 ; i.b. $0 | 0x1B - ARROW
|0DB64E| db $00 ; .... $0 | 0x1C - STATUE
|0DB64F| db $00 ; .... $0 | 0x1D - FLUTE QUEST
|0DB650| db $00 ; .... $0 | 0x1E - CRYSTAL SWITCH
|0DB651| db $80 ; i... $0 | 0x1F - SICK KID
|0DB652| db $04 ; .... $4 | 0x20 - SLUGGULA
|0DB653| db $80 ; i... $0 | 0x21 - WATER SWITCH
|0DB654| db $82 ; i... $2 | 0x22 - ROPA
|0DB655| db $06 ; .... $6 | 0x23 - RED BARI
|0DB656| db $06 ; .... $6 | 0x24 - BLUE BARI
|0DB657| db $00 ; .... $0 | 0x25 - TALKING TREE
|0DB658| db $00 ; .... $0 | 0x26 - HARDHAT BEETLE
|0DB659| db $80 ; i... $0 | 0x27 - DEADROCK
|0DB65A| db $80 ; i... $0 | 0x28 - DARK WORLD HINT NPC
|0DB65B| db $80 ; i... $0 | 0x29 - ADULT
|0DB65C| db $80 ; i... $0 | 0x2A - SWEEPING LADY
|0DB65D| db $80 ; i... $0 | 0x2B - HOBO
|0DB65E| db $80 ; i... $0 | 0x2C - LUMBERJACKS
|0DB65F| db $80 ; i... $0 | 0x2D - NECKLESS MAN
|0DB660| db $80 ; i... $0 | 0x2E - FLUTE KID
|0DB661| db $80 ; i... $0 | 0x2F - RACE GAME LADY
|0DB662| db $80 ; i... $0 | 0x30 - RACE GAME GUY
|0DB663| db $80 ; i... $0 | 0x31 - FORTUNE TELLER
|0DB664| db $80 ; i... $0 | 0x32 - ARGUE BROS
|0DB665| db $80 ; i... $0 | 0x33 - RUPEE PULL
|0DB666| db $80 ; i... $0 | 0x34 - YOUNG SNITCH
|0DB667| db $80 ; i... $0 | 0x35 - INNKEEPER
|0DB668| db $80 ; i... $0 | 0x36 - WITCH
|0DB669| db $80 ; i... $0 | 0x37 - WATERFALL
|0DB66A| db $80 ; i... $0 | 0x38 - EYE STATUE
|0DB66B| db $80 ; i... $0 | 0x39 - LOCKSMITH
|0DB66C| db $80 ; i... $0 | 0x3A - MAGIC BAT
|0DB66D| db $00 ; .... $0 | 0x3B - BONK ITEM
|0DB66E| db $00 ; .... $0 | 0x3C - KID IN KAK
|0DB66F| db $80 ; i... $0 | 0x3D - OLD SNITCH
|0DB670| db $80 ; i... $0 | 0x3E - ROCK HOARDER
|0DB671| db $90 ; i..s $0 | 0x3F - TUTORIAL GUARD
|0DB672| db $80 ; i... $0 | 0x40 - LIGHTNING GATE
|0DB673| db $91 ; i..s $1 | 0x41 - BLUE GUARD
|0DB674| db $91 ; i..s $1 | 0x42 - GREEN GUARD
|0DB675| db $91 ; i..s $1 | 0x43 - RED SPEAR GUARD
|0DB676| db $97 ; i..s $7 | 0x44 - BLUESAIN BOLT
|0DB677| db $91 ; i..s $1 | 0x45 - USAIN BOLT
|0DB678| db $95 ; i..s $5 | 0x46 - BLUE ARCHER
|0DB679| db $95 ; i..s $5 | 0x47 - GREEN BUSH GUARD
|0DB67A| db $93 ; i..s $3 | 0x48 - RED JAVELIN GUARD
|0DB67B| db $97 ; i..s $7 | 0x49 - RED BUSH GUARD
|0DB67C| db $14 ; ...s $4 | 0x4A - BOMB GUARD
|0DB67D| db $91 ; i..s $1 | 0x4B - GREEN KNIFE GUARD
|0DB67E| db $92 ; i..s $2 | 0x4C - GELDMAN
|0DB67F| db $81 ; i... $1 | 0x4D - TOPPO
|0DB680| db $82 ; i... $2 | 0x4E - POPO
|0DB681| db $82 ; i... $2 | 0x4F - POPO
|0DB682| db $80 ; i... $0 | 0x50 - CANNONBALL
|0DB683| db $85 ; i... $5 | 0x51 - ARMOS STATUE
|0DB684| db $80 ; i... $0 | 0x52 - KING ZORA
|0DB685| db $80 ; i... $0 | 0x53 - ARMOS KNIGHT
|0DB686| db $80 ; i... $0 | 0x54 - LANMOLAS
|0DB687| db $04 ; .... $4 | 0x55 - ZORA / FIREBALL
|0DB688| db $04 ; .... $4 | 0x56 - WALKING ZORA
|0DB689| db $80 ; i... $0 | 0x57 - DESERT STATUE
|0DB68A| db $91 ; i..s $1 | 0x58 - CRAB
|0DB68B| db $80 ; i... $0 | 0x59 - LOST WOODS BIRD
|0DB68C| db $80 ; i... $0 | 0x5A - LOST WOODS SQUIRREL
|0DB68D| db $80 ; i... $0 | 0x5B - SPARK
|0DB68E| db $80 ; i... $0 | 0x5C - SPARK
|0DB68F| db $80 ; i... $0 | 0x5D - ROLLER VERTICAL DOWN FIRST
|0DB690| db $80 ; i... $0 | 0x5E - ROLLER VERTICAL UP FIRST
|0DB691| db $80 ; i... $0 | 0x5F - ROLLER HORIZONTAL RIGHT FIRST
|0DB692| db $80 ; i... $0 | 0x60 - ROLLER HORIZONTAL LEFT FIRST
|0DB693| db $00 ; .... $0 | 0x61 - BEAMOS
|0DB694| db $80 ; i... $0 | 0x62 - MASTERSWORD
|0DB695| db $80 ; i... $0 | 0x63 - DEBIRANDO PIT
|0DB696| db $82 ; i... $2 | 0x64 - DEBIRANDO
|0DB697| db $8A ; i... $A | 0x65 - ARCHERY GUY
|0DB698| db $80 ; i... $0 | 0x66 - WALL CANNON VERTICAL LEFT
|0DB699| db $80 ; i... $0 | 0x67 - WALL CANNON VERTICAL RIGHT
|0DB69A| db $80 ; i... $0 | 0x68 - WALL CANNON HORIZONTAL TOP
|0DB69B| db $80 ; i... $0 | 0x69 - WALL CANNON HORIZONTAL BOTTOM
|0DB69C| db $92 ; i..s $2 | 0x6A - BALL N CHAIN
|0DB69D| db $91 ; i..s $1 | 0x6B - CANNONBALL / CANNON TROOPER
|0DB69E| db $80 ; i... $0 | 0x6C - MIRROR PORTAL
|0DB69F| db $82 ; i... $2 | 0x6D - RAT / CRICKET
|0DB6A0| db $81 ; i... $1 | 0x6E - ROPE
|0DB6A1| db $81 ; i... $1 | 0x6F - KEESE
|0DB6A2| db $80 ; i... $0 | 0x70 - KING HELMASAUR FIREBALL
|0DB6A3| db $81 ; i... $1 | 0x71 - LEEVER
|0DB6A4| db $80 ; i... $0 | 0x72 - FAIRY POND TRIGGER
|0DB6A5| db $80 ; i... $0 | 0x73 - UNCLE / PRIEST / MANTLE
|0DB6A6| db $80 ; i... $0 | 0x74 - RUNNING BOY
|0DB6A7| db $80 ; i... $0 | 0x75 - BOTTLE MERCHANT
|0DB6A8| db $80 ; i... $0 | 0x76 - ZELDA
|0DB6A9| db $80 ; i... $0 | 0x77 - ANTIFAIRY
|0DB6AA| db $80 ; i... $0 | 0x78 - SAHASRAHLAS WIFE
|0DB6AB| db $80 ; i... $0 | 0x79 - BEE
|0DB6AC| db $80 ; i... $0 | 0x7A - AGAHNIM
|0DB6AD| db $80 ; i... $0 | 0x7B - AGAHNIMS BALLS
|0DB6AE| db $97 ; i..s $7 | 0x7C - GREEN STALFOS
|0DB6AF| db $80 ; i... $0 | 0x7D - BIG SPIKE
|0DB6B0| db $80 ; i... $0 | 0x7E - FIREBAR CLOCKWISE
|0DB6B1| db $80 ; i... $0 | 0x7F - FIREBAR COUNTERCLOCKWISE
|0DB6B2| db $80 ; i... $0 | 0x80 - FIRESNAKE
|0DB6B3| db $C2 ; iw.. $2 | 0x81 - HOVER
|0DB6B4| db $80 ; i... $0 | 0x82 - ANTIFAIRY CIRCLE
|0DB6B5| db $15 ; ...s $5 | 0x83 - GREEN EYEGORE / GREEN MIMIC
|0DB6B6| db $15 ; ...s $5 | 0x84 - RED EYEGORE / RED MIMIC
|0DB6B7| db $17 ; ...s $7 | 0x85 - YELLOW STALFOS
|0DB6B8| db $06 ; .... $6 | 0x86 - KODONGO
|0DB6B9| db $00 ; .... $0 | 0x87 - KODONGO FIRE
|0DB6BA| db $80 ; i... $0 | 0x88 - MOTHULA
|0DB6BB| db $00 ; .... $0 | 0x89 - MOTHULA BEAM
|0DB6BC| db $C0 ; iw.. $0 | 0x8A - SPIKE BLOCK
|0DB6BD| db $13 ; ...s $3 | 0x8B - GIBDO
|0DB6BE| db $40 ; .w.. $0 | 0x8C - ARRGHUS
|0DB6BF| db $00 ; .... $0 | 0x8D - ARRGHI
|0DB6C0| db $02 ; .... $2 | 0x8E - TERRORPIN
|0DB6C1| db $06 ; .... $6 | 0x8F - BLOB
|0DB6C2| db $10 ; ...s $0 | 0x90 - WALLMASTER
|0DB6C3| db $14 ; ...s $4 | 0x91 - STALFOS KNIGHT
|0DB6C4| db $00 ; .... $0 | 0x92 - KING HELMASAUR
|0DB6C5| db $00 ; .... $0 | 0x93 - BUMPER
|0DB6C6| db $40 ; .w.. $0 | 0x94 - PIROGUSU
|0DB6C7| db $00 ; .... $0 | 0x95 - LASER EYE LEFT
|0DB6C8| db $00 ; .... $0 | 0x96 - LASER EYE RIGHT
|0DB6C9| db $00 ; .... $0 | 0x97 - LASER EYE TOP
|0DB6CA| db $00 ; .... $0 | 0x98 - LASER EYE BOTTOM
|0DB6CB| db $13 ; ...s $3 | 0x99 - PENGATOR
|0DB6CC| db $46 ; .w.. $6 | 0x9A - KYAMERON
|0DB6CD| db $11 ; ...s $1 | 0x9B - WIZZROBE
|0DB6CE| db $80 ; i... $0 | 0x9C - ZORO
|0DB6CF| db $80 ; i... $0 | 0x9D - BABASU
|0DB6D0| db $00 ; .... $0 | 0x9E - HAUNTED GROVE OSTRICH
|0DB6D1| db $00 ; .... $0 | 0x9F - HAUNTED GROVE RABBIT
|0DB6D2| db $00 ; .... $0 | 0xA0 - HAUNTED GROVE BIRD
|0DB6D3| db $10 ; ...s $0 | 0xA1 - FREEZOR
|0DB6D4| db $00 ; .... $0 | 0xA2 - KHOLDSTARE
|0DB6D5| db $00 ; .... $0 | 0xA3 - KHOLDSTARE SHELL
|0DB6D6| db $00 ; .... $0 | 0xA4 - FALLING ICE
|0DB6D7| db $16 ; ...s $6 | 0xA5 - BLUE ZAZAK
|0DB6D8| db $16 ; ...s $6 | 0xA6 - RED ZAZAK
|0DB6D9| db $16 ; ...s $6 | 0xA7 - STALFOS
|0DB6DA| db $81 ; i... $1 | 0xA8 - GREEN ZIRRO
|0DB6DB| db $87 ; i... $7 | 0xA9 - BLUE ZIRRO
|0DB6DC| db $82 ; i... $2 | 0xAA - PIKIT
|0DB6DD| db $00 ; .... $0 | 0xAB - CRYSTAL MAIDEN
|0DB6DE| db $80 ; i... $0 | 0xAC - APPLE
|0DB6DF| db $80 ; i... $0 | 0xAD - OLD MAN
|0DB6E0| db $00 ; .... $0 | 0xAE - PIPE DOWN
|0DB6E1| db $00 ; .... $0 | 0xAF - PIPE UP
|0DB6E2| db $00 ; .... $0 | 0xB0 - PIPE RIGHT
|0DB6E3| db $00 ; .... $0 | 0xB1 - PIPE LEFT
|0DB6E4| db $80 ; i... $0 | 0xB2 - GOOD BEE
|0DB6E5| db $80 ; i... $0 | 0xB3 - PEDESTAL PLAQUE
|0DB6E6| db $00 ; .... $0 | 0xB4 - PURPLE CHEST
|0DB6E7| db $00 ; .... $0 | 0xB5 - BOMB SHOP GUY
|0DB6E8| db $00 ; .... $0 | 0xB6 - KIKI
|0DB6E9| db $00 ; .... $0 | 0xB7 - BLIND MAIDEN
|0DB6EA| db $00 ; .... $0 | 0xB8 - DIALOGUE TESTER
|0DB6EB| db $00 ; .... $0 | 0xB9 - BULLY / PINK BALL
|0DB6EC| db $00 ; .... $0 | 0xBA - WHIRLPOOL
|0DB6ED| db $00 ; .... $0 | 0xBB - SHOPKEEPER / CHEST GAME GUY
|0DB6EE| db $00 ; .... $0 | 0xBC - DRUNKARD
|0DB6EF| db $00 ; .... $0 | 0xBD - VITREOUS
|0DB6F0| db $00 ; .... $0 | 0xBE - VITREOUS SMALL EYE
|0DB6F1| db $00 ; .... $0 | 0xBF - LIGHTNING
|0DB6F2| db $00 ; .... $0 | 0xC0 - CATFISH
|0DB6F3| db $00 ; .... $0 | 0xC1 - CUTSCENE AGAHNIM
|0DB6F4| db $00 ; .... $0 | 0xC2 - BOULDER
|0DB6F5| db $80 ; i... $0 | 0xC3 - GIBO
|0DB6F6| db $00 ; .... $0 | 0xC4 - THIEF
|0DB6F7| db $00 ; .... $0 | 0xC5 - MEDUSA
|0DB6F8| db $00 ; .... $0 | 0xC6 - YOMO MEDUSA
|0DB6F9| db $17 ; ...s $7 | 0xC7 - POKEY
|0DB6FA| db $00 ; .... $0 | 0xC8 - BIG FAIRY
|0DB6FB| db $12 ; ...s $2 | 0xC9 - TEKTITE / FIREBAT
|0DB6FC| db $00 ; .... $0 | 0xCA - CHAIN CHOMP
|0DB6FD| db $00 ; .... $0 | 0xCB - TRINEXX ROCK HEAD
|0DB6FE| db $00 ; .... $0 | 0xCC - TRINEXX FIRE HEAD
|0DB6FF| db $00 ; .... $0 | 0xCD - TRINEXX ICE HEAD
|0DB700| db $00 ; .... $0 | 0xCE - BLIND
|0DB701| db $10 ; ...s $0 | 0xCF - SWAMOLA
|0DB702| db $17 ; ...s $7 | 0xD0 - LYNEL
|0DB703| db $00 ; .... $0 | 0xD1 - BUNNYBEAM / SMOKE
|0DB704| db $40 ; .w.. $0 | 0xD2 - FLOPPING FISH
|0DB705| db $01 ; .... $1 | 0xD3 - STAL
|0DB706| db $00 ; .... $0 | 0xD4 - LANDMINE
|0DB707| db $00 ; .... $0 | 0xD5 - DIGGING GAME GUY
|0DB708| db $00 ; .... $0 | 0xD6 - GANON
|0DB709| db $00 ; .... $0 | 0xD7 - GANON
|0DB70A| db $00 ; .... $0 | 0xD8 - HEART
|0DB70B| db $00 ; .... $0 | 0xD9 - GREEN RUPEE
|0DB70C| db $00 ; .... $0 | 0xDA - BLUE RUPEE
|0DB70D| db $00 ; .... $0 | 0xDB - RED RUPEE
|0DB70E| db $00 ; .... $0 | 0xDC - BOMB REFILL 1
|0DB70F| db $00 ; .... $0 | 0xDD - BOMB REFILL 4
|0DB710| db $00 ; .... $0 | 0xDE - BOMB REFILL 8
|0DB711| db $00 ; .... $0 | 0xDF - SMALL MAGIC DECANTER
|0DB712| db $00 ; .... $0 | 0xE0 - LARGE MAGIC DECANTER
|0DB713| db $00 ; .... $0 | 0xE1 - ARROW REFILL 5
|0DB714| db $00 ; .... $0 | 0xE2 - ARROW REFILL 10
|0DB715| db $40 ; .w.. $0 | 0xE3 - FAIRY
|0DB716| db $00 ; .... $0 | 0xE4 - SMALL KEY
|0DB717| db $00 ; .... $0 | 0xE5 - BIG KEY
|0DB718| db $00 ; .... $0 | 0xE6 - STOLEN SHIELD
|0DB719| db $00 ; .... $0 | 0xE7 - MUSHROOM
|0DB71A| db $00 ; .... $0 | 0xE8 - FAKE MASTER SWORD
|0DB71B| db $00 ; .... $0 | 0xE9 - MAGIC SHOP ASSISTANT
|0DB71C| db $00 ; .... $0 | 0xEA - HEART CONTAINER
|0DB71D| db $00 ; .... $0 | 0xEB - HEART PIECE
|0DB71E| db $80 ; i... $0 | 0xEC - THROWN ITEM
|0DB71F| db $00 ; .... $0 | 0xED - SOMARIA PLATFORM
|0DB720| db $00 ; .... $0 | 0xEE - CASTLE MANTLE
|0DB721| db $00 ; .... $0 | 0xEF - UNUSED SOMARIA PLATFORM
|0DB722| db $00 ; .... $0 | 0xF0 - UNUSED SOMARIA PLATFORM
|0DB723| db $00 ; .... $0 | 0xF1 - UNUSED SOMARIA PLATFORM
|0DB724| db $00 ; .... $0 | 0xF2 - MEDALLION TABLET

;===================================================================================================
; aisp chbx
;   a - overworld activeness (0: die off screen | 1: persists)
;   i - always die if off screen
;   s - marks statues and things that move, but seems unused
;   p - ancillae check direction against sprite (unused)
;   c - run collision as a projectile
;   h - immune to sword and hammer
;   b - controls many properties of bonkable sprites; prevents deletion on boss death
;   x - prevents permadeath in underworld
;===================================================================================================
SpriteData_Deflection:
|0DB725| db $00 ; .... .... | 0x00 - RAVEN
|0DB726| db $00 ; .... .... | 0x01 - VULTURE
|0DB727| db $44 ; .i.. .h.. | 0x02 - STALFOS HEAD
|0DB728| db $20 ; ..s. .... | 0x03 - NULL
|0DB729| db $20 ; ..s. .... | 0x04 - CORRECT PULL SWITCH
|0DB72A| db $20 ; ..s. .... | 0x05 - UNUSED CORRECT PULL SWITCH
|0DB72B| db $20 ; ..s. .... | 0x06 - WRONG PULL SWITCH
|0DB72C| db $20 ; ..s. .... | 0x07 - UNUSED WRONG PULL SWITCH
|0DB72D| db $00 ; .... .... | 0x08 - OCTOROK
|0DB72E| db $81 ; a... ...x | 0x09 - MOLDORM
|0DB72F| db $00 ; .... .... | 0x0A - OCTOROK 4WAY
|0DB730| db $00 ; .... .... | 0x0B - CUCCO
|0DB731| db $48 ; .i.. c... | 0x0C - OCTOROK STONE
|0DB732| db $00 ; .... .... | 0x0D - BUZZBLOB
|0DB733| db $00 ; .... .... | 0x0E - SNAPDRAGON
|0DB734| db $00 ; .... .... | 0x0F - OCTOBALLOON
|0DB735| db $00 ; .... .... | 0x10 - OCTOBALLOON BABY
|0DB736| db $00 ; .... .... | 0x11 - HINOX
|0DB737| db $00 ; .... .... | 0x12 - MOBLIN
|0DB738| db $00 ; .... .... | 0x13 - MINI HELMASAUR
|0DB739| db $00 ; .... .... | 0x14 - THIEVES TOWN GRATE
|0DB73A| db $00 ; .... .... | 0x15 - ANTIFAIRY
|0DB73B| db $04 ; .... .h.. | 0x16 - SAHASRAHLA / AGINAH
|0DB73C| db $00 ; .... .... | 0x17 - BUSH HOARDER
|0DB73D| db $00 ; .... .... | 0x18 - MINI MOLDORM
|0DB73E| db $00 ; .... .... | 0x19 - POE
|0DB73F| db $00 ; .... .... | 0x1A - SMITHY
|0DB740| db $48 ; .i.. c... | 0x1B - ARROW
|0DB741| db $24 ; ..s. .h.. | 0x1C - STATUE
|0DB742| db $80 ; a... .... | 0x1D - FLUTE QUEST
|0DB743| db $00 ; .... .... | 0x1E - CRYSTAL SWITCH
|0DB744| db $00 ; .... .... | 0x1F - SICK KID
|0DB745| db $00 ; .... .... | 0x20 - SLUGGULA
|0DB746| db $20 ; ..s. .... | 0x21 - WATER SWITCH
|0DB747| db $00 ; .... .... | 0x22 - ROPA
|0DB748| db $00 ; .... .... | 0x23 - RED BARI
|0DB749| db $00 ; .... .... | 0x24 - BLUE BARI
|0DB74A| db $80 ; a... .... | 0x25 - TALKING TREE
|0DB74B| db $00 ; .... .... | 0x26 - HARDHAT BEETLE
|0DB74C| db $00 ; .... .... | 0x27 - DEADROCK
|0DB74D| db $00 ; .... .... | 0x28 - DARK WORLD HINT NPC
|0DB74E| db $00 ; .... .... | 0x29 - ADULT
|0DB74F| db $00 ; .... .... | 0x2A - SWEEPING LADY
|0DB750| db $00 ; .... .... | 0x2B - HOBO
|0DB751| db $00 ; .... .... | 0x2C - LUMBERJACKS
|0DB752| db $00 ; .... .... | 0x2D - NECKLESS MAN
|0DB753| db $00 ; .... .... | 0x2E - FLUTE KID
|0DB754| db $80 ; a... .... | 0x2F - RACE GAME LADY
|0DB755| db $80 ; a... .... | 0x30 - RACE GAME GUY
|0DB756| db $00 ; .... .... | 0x31 - FORTUNE TELLER
|0DB757| db $00 ; .... .... | 0x32 - ARGUE BROS
|0DB758| db $00 ; .... .... | 0x33 - RUPEE PULL
|0DB759| db $00 ; .... .... | 0x34 - YOUNG SNITCH
|0DB75A| db $00 ; .... .... | 0x35 - INNKEEPER
|0DB75B| db $00 ; .... .... | 0x36 - WITCH
|0DB75C| db $80 ; a... .... | 0x37 - WATERFALL
|0DB75D| db $00 ; .... .... | 0x38 - EYE STATUE
|0DB75E| db $80 ; a... .... | 0x39 - LOCKSMITH
|0DB75F| db $00 ; .... .... | 0x3A - MAGIC BAT
|0DB760| db $02 ; .... ..b. | 0x3B - BONK ITEM
|0DB761| db $00 ; .... .... | 0x3C - KID IN KAK
|0DB762| db $00 ; .... .... | 0x3D - OLD SNITCH
|0DB763| db $00 ; .... .... | 0x3E - ROCK HOARDER
|0DB764| db $04 ; .... .h.. | 0x3F - TUTORIAL GUARD
|0DB765| db $80 ; a... .... | 0x40 - LIGHTNING GATE
|0DB766| db $00 ; .... .... | 0x41 - BLUE GUARD
|0DB767| db $00 ; .... .... | 0x42 - GREEN GUARD
|0DB768| db $00 ; .... .... | 0x43 - RED SPEAR GUARD
|0DB769| db $00 ; .... .... | 0x44 - BLUESAIN BOLT
|0DB76A| db $00 ; .... .... | 0x45 - USAIN BOLT
|0DB76B| db $00 ; .... .... | 0x46 - BLUE ARCHER
|0DB76C| db $00 ; .... .... | 0x47 - GREEN BUSH GUARD
|0DB76D| db $00 ; .... .... | 0x48 - RED JAVELIN GUARD
|0DB76E| db $00 ; .... .... | 0x49 - RED BUSH GUARD
|0DB76F| db $00 ; .... .... | 0x4A - BOMB GUARD
|0DB770| db $00 ; .... .... | 0x4B - GREEN KNIFE GUARD
|0DB771| db $00 ; .... .... | 0x4C - GELDMAN
|0DB772| db $00 ; .... .... | 0x4D - TOPPO
|0DB773| db $00 ; .... .... | 0x4E - POPO
|0DB774| db $00 ; .... .... | 0x4F - POPO
|0DB775| db $84 ; a... .h.. | 0x50 - CANNONBALL
|0DB776| db $00 ; .... .... | 0x51 - ARMOS STATUE
|0DB777| db $81 ; a... ...x | 0x52 - KING ZORA
|0DB778| db $05 ; .... .h.x | 0x53 - ARMOS KNIGHT
|0DB779| db $01 ; .... ...x | 0x54 - LANMOLAS
|0DB77A| db $40 ; .i.. .... | 0x55 - ZORA / FIREBALL
|0DB77B| db $08 ; .... c... | 0x56 - WALKING ZORA
|0DB77C| db $A0 ; a.s. .... | 0x57 - DESERT STATUE
|0DB77D| db $00 ; .... .... | 0x58 - CRAB
|0DB77E| db $00 ; .... .... | 0x59 - LOST WOODS BIRD
|0DB77F| db $00 ; .... .... | 0x5A - LOST WOODS SQUIRREL
|0DB780| db $00 ; .... .... | 0x5B - SPARK
|0DB781| db $00 ; .... .... | 0x5C - SPARK
|0DB782| db $84 ; a... .h.. | 0x5D - ROLLER VERTICAL DOWN FIRST
|0DB783| db $84 ; a... .h.. | 0x5E - ROLLER VERTICAL UP FIRST
|0DB784| db $84 ; a... .h.. | 0x5F - ROLLER HORIZONTAL RIGHT FIRST
|0DB785| db $84 ; a... .h.. | 0x60 - ROLLER HORIZONTAL LEFT FIRST
|0DB786| db $08 ; .... c... | 0x61 - BEAMOS
|0DB787| db $80 ; a... .... | 0x62 - MASTERSWORD
|0DB788| db $80 ; a... .... | 0x63 - DEBIRANDO PIT
|0DB789| db $80 ; a... .... | 0x64 - DEBIRANDO
|0DB78A| db $00 ; .... .... | 0x65 - ARCHERY GUY
|0DB78B| db $80 ; a... .... | 0x66 - WALL CANNON VERTICAL LEFT
|0DB78C| db $80 ; a... .... | 0x67 - WALL CANNON VERTICAL RIGHT
|0DB78D| db $80 ; a... .... | 0x68 - WALL CANNON HORIZONTAL TOP
|0DB78E| db $80 ; a... .... | 0x69 - WALL CANNON HORIZONTAL BOTTOM
|0DB78F| db $00 ; .... .... | 0x6A - BALL N CHAIN
|0DB790| db $08 ; .... c... | 0x6B - CANNONBALL / CANNON TROOPER
|0DB791| db $80 ; a... .... | 0x6C - MIRROR PORTAL
|0DB792| db $00 ; .... .... | 0x6D - RAT / CRICKET
|0DB793| db $00 ; .... .... | 0x6E - ROPE
|0DB794| db $00 ; .... .... | 0x6F - KEESE
|0DB795| db $40 ; .i.. .... | 0x70 - KING HELMASAUR FIREBALL
|0DB796| db $00 ; .... .... | 0x71 - LEEVER
|0DB797| db $00 ; .... .... | 0x72 - FAIRY POND TRIGGER
|0DB798| db $00 ; .... .... | 0x73 - UNCLE / PRIEST / MANTLE
|0DB799| db $00 ; .... .... | 0x74 - RUNNING BOY
|0DB79A| db $00 ; .... .... | 0x75 - BOTTLE MERCHANT
|0DB79B| db $00 ; .... .... | 0x76 - ZELDA
|0DB79C| db $00 ; .... .... | 0x77 - ANTIFAIRY
|0DB79D| db $00 ; .... .... | 0x78 - SAHASRAHLAS WIFE
|0DB79E| db $02 ; .... ..b. | 0x79 - BEE
|0DB79F| db $01 ; .... ...x | 0x7A - AGAHNIM
|0DB7A0| db $00 ; .... .... | 0x7B - AGAHNIMS BALLS
|0DB7A1| db $00 ; .... .... | 0x7C - GREEN STALFOS
|0DB7A2| db $04 ; .... .h.. | 0x7D - BIG SPIKE
|0DB7A3| db $00 ; .... .... | 0x7E - FIREBAR CLOCKWISE
|0DB7A4| db $00 ; .... .... | 0x7F - FIREBAR COUNTERCLOCKWISE
|0DB7A5| db $00 ; .... .... | 0x80 - FIRESNAKE
|0DB7A6| db $00 ; .... .... | 0x81 - HOVER
|0DB7A7| db $80 ; a... .... | 0x82 - ANTIFAIRY CIRCLE
|0DB7A8| db $04 ; .... .h.. | 0x83 - GREEN EYEGORE / GREEN MIMIC
|0DB7A9| db $04 ; .... .h.. | 0x84 - RED EYEGORE / RED MIMIC
|0DB7AA| db $00 ; .... .... | 0x85 - YELLOW STALFOS
|0DB7AB| db $00 ; .... .... | 0x86 - KODONGO
|0DB7AC| db $48 ; .i.. c... | 0x87 - KODONGO FIRE
|0DB7AD| db $00 ; .... .... | 0x88 - MOTHULA
|0DB7AE| db $00 ; .... .... | 0x89 - MOTHULA BEAM
|0DB7AF| db $04 ; .... .h.. | 0x8A - SPIKE BLOCK
|0DB7B0| db $00 ; .... .... | 0x8B - GIBDO
|0DB7B1| db $01 ; .... ...x | 0x8C - ARRGHUS
|0DB7B2| db $01 ; .... ...x | 0x8D - ARRGHI
|0DB7B3| db $00 ; .... .... | 0x8E - TERRORPIN
|0DB7B4| db $00 ; .... .... | 0x8F - BLOB
|0DB7B5| db $80 ; a... .... | 0x90 - WALLMASTER
|0DB7B6| db $00 ; .... .... | 0x91 - STALFOS KNIGHT
|0DB7B7| db $00 ; .... .... | 0x92 - KING HELMASAUR
|0DB7B8| db $00 ; .... .... | 0x93 - BUMPER
|0DB7B9| db $40 ; .i.. .... | 0x94 - PIROGUSU
|0DB7BA| db $08 ; .... c... | 0x95 - LASER EYE LEFT
|0DB7BB| db $08 ; .... c... | 0x96 - LASER EYE RIGHT
|0DB7BC| db $08 ; .... c... | 0x97 - LASER EYE TOP
|0DB7BD| db $08 ; .... c... | 0x98 - LASER EYE BOTTOM
|0DB7BE| db $00 ; .... .... | 0x99 - PENGATOR
|0DB7BF| db $00 ; .... .... | 0x9A - KYAMERON
|0DB7C0| db $00 ; .... .... | 0x9B - WIZZROBE
|0DB7C1| db $80 ; a... .... | 0x9C - ZORO
|0DB7C2| db $80 ; a... .... | 0x9D - BABASU
|0DB7C3| db $00 ; .... .... | 0x9E - HAUNTED GROVE OSTRICH
|0DB7C4| db $00 ; .... .... | 0x9F - HAUNTED GROVE RABBIT
|0DB7C5| db $00 ; .... .... | 0xA0 - HAUNTED GROVE BIRD
|0DB7C6| db $04 ; .... .h.. | 0xA1 - FREEZOR
|0DB7C7| db $01 ; .... ...x | 0xA2 - KHOLDSTARE
|0DB7C8| db $05 ; .... .h.x | 0xA3 - KHOLDSTARE SHELL
|0DB7C9| db $00 ; .... .... | 0xA4 - FALLING ICE
|0DB7CA| db $00 ; .... .... | 0xA5 - BLUE ZAZAK
|0DB7CB| db $00 ; .... .... | 0xA6 - RED ZAZAK
|0DB7CC| db $00 ; .... .... | 0xA7 - STALFOS
|0DB7CD| db $00 ; .... .... | 0xA8 - GREEN ZIRRO
|0DB7CE| db $00 ; .... .... | 0xA9 - BLUE ZIRRO
|0DB7CF| db $00 ; .... .... | 0xAA - PIKIT
|0DB7D0| db $04 ; .... .h.. | 0xAB - CRYSTAL MAIDEN
|0DB7D1| db $02 ; .... ..b. | 0xAC - APPLE
|0DB7D2| db $00 ; .... .... | 0xAD - OLD MAN
|0DB7D3| db $80 ; a... .... | 0xAE - PIPE DOWN
|0DB7D4| db $80 ; a... .... | 0xAF - PIPE UP
|0DB7D5| db $80 ; a... .... | 0xB0 - PIPE RIGHT
|0DB7D6| db $80 ; a... .... | 0xB1 - PIPE LEFT
|0DB7D7| db $82 ; a... ..b. | 0xB2 - GOOD BEE
|0DB7D8| db $80 ; a... .... | 0xB3 - PEDESTAL PLAQUE
|0DB7D9| db $00 ; .... .... | 0xB4 - PURPLE CHEST
|0DB7DA| db $00 ; .... .... | 0xB5 - BOMB SHOP GUY
|0DB7DB| db $80 ; a... .... | 0xB6 - KIKI
|0DB7DC| db $00 ; .... .... | 0xB7 - BLIND MAIDEN
|0DB7DD| db $00 ; .... .... | 0xB8 - DIALOGUE TESTER
|0DB7DE| db $80 ; a... .... | 0xB9 - BULLY / PINK BALL
|0DB7DF| db $80 ; a... .... | 0xBA - WHIRLPOOL
|0DB7E0| db $00 ; .... .... | 0xBB - SHOPKEEPER / CHEST GAME GUY
|0DB7E1| db $00 ; .... .... | 0xBC - DRUNKARD
|0DB7E2| db $01 ; .... ...x | 0xBD - VITREOUS
|0DB7E3| db $01 ; .... ...x | 0xBE - VITREOUS SMALL EYE
|0DB7E4| db $40 ; .i.. .... | 0xBF - LIGHTNING
|0DB7E5| db $00 ; .... .... | 0xC0 - CATFISH
|0DB7E6| db $00 ; .... .... | 0xC1 - CUTSCENE AGAHNIM
|0DB7E7| db $04 ; .... .h.. | 0xC2 - BOULDER
|0DB7E8| db $00 ; .... .... | 0xC3 - GIBO
|0DB7E9| db $00 ; .... .... | 0xC4 - THIEF
|0DB7EA| db $00 ; .... .... | 0xC5 - MEDUSA
|0DB7EB| db $00 ; .... .... | 0xC6 - YOMO MEDUSA
|0DB7EC| db $00 ; .... .... | 0xC7 - POKEY
|0DB7ED| db $00 ; .... .... | 0xC8 - BIG FAIRY
|0DB7EE| db $00 ; .... .... | 0xC9 - TEKTITE / FIREBAT
|0DB7EF| db $04 ; .... .h.. | 0xCA - CHAIN CHOMP
|0DB7F0| db $05 ; .... .h.x | 0xCB - TRINEXX ROCK HEAD
|0DB7F1| db $05 ; .... .h.x | 0xCC - TRINEXX FIRE HEAD
|0DB7F2| db $05 ; .... .h.x | 0xCD - TRINEXX ICE HEAD
|0DB7F3| db $80 ; a... .... | 0xCE - BLIND
|0DB7F4| db $80 ; a... .... | 0xCF - SWAMOLA
|0DB7F5| db $00 ; .... .... | 0xD0 - LYNEL
|0DB7F6| db $00 ; .... .... | 0xD1 - BUNNYBEAM / SMOKE
|0DB7F7| db $00 ; .... .... | 0xD2 - FLOPPING FISH
|0DB7F8| db $00 ; .... .... | 0xD3 - STAL
|0DB7F9| db $00 ; .... .... | 0xD4 - LANDMINE
|0DB7FA| db $00 ; .... .... | 0xD5 - DIGGING GAME GUY
|0DB7FB| db $00 ; .... .... | 0xD6 - GANON
|0DB7FC| db $00 ; .... .... | 0xD7 - GANON
|0DB7FD| db $02 ; .... ..b. | 0xD8 - HEART
|0DB7FE| db $02 ; .... ..b. | 0xD9 - GREEN RUPEE
|0DB7FF| db $02 ; .... ..b. | 0xDA - BLUE RUPEE
|0DB800| db $02 ; .... ..b. | 0xDB - RED RUPEE
|0DB801| db $02 ; .... ..b. | 0xDC - BOMB REFILL 1
|0DB802| db $02 ; .... ..b. | 0xDD - BOMB REFILL 4
|0DB803| db $02 ; .... ..b. | 0xDE - BOMB REFILL 8
|0DB804| db $02 ; .... ..b. | 0xDF - SMALL MAGIC DECANTER
|0DB805| db $02 ; .... ..b. | 0xE0 - LARGE MAGIC DECANTER
|0DB806| db $02 ; .... ..b. | 0xE1 - ARROW REFILL 5
|0DB807| db $02 ; .... ..b. | 0xE2 - ARROW REFILL 10
|0DB808| db $02 ; .... ..b. | 0xE3 - FAIRY
|0DB809| db $02 ; .... ..b. | 0xE4 - SMALL KEY
|0DB80A| db $02 ; .... ..b. | 0xE5 - BIG KEY
|0DB80B| db $02 ; .... ..b. | 0xE6 - STOLEN SHIELD
|0DB80C| db $02 ; .... ..b. | 0xE7 - MUSHROOM
|0DB80D| db $02 ; .... ..b. | 0xE8 - FAKE MASTER SWORD
|0DB80E| db $00 ; .... .... | 0xE9 - MAGIC SHOP ASSISTANT
|0DB80F| db $82 ; a... ..b. | 0xEA - HEART CONTAINER
|0DB810| db $82 ; a... ..b. | 0xEB - HEART PIECE
|0DB811| db $08 ; .... c... | 0xEC - THROWN ITEM
|0DB812| db $80 ; a... .... | 0xED - SOMARIA PLATFORM
|0DB813| db $20 ; ..s. .... | 0xEE - CASTLE MANTLE
|0DB814| db $80 ; a... .... | 0xEF - UNUSED SOMARIA PLATFORM
|0DB815| db $80 ; a... .... | 0xF0 - UNUSED SOMARIA PLATFORM
|0DB816| db $80 ; a... .... | 0xF1 - UNUSED SOMARIA PLATFORM
|0DB817| db $20 ; ..s. .... | 0xF2 - MEDALLION TABLET

;===================================================================================================

LoadSpriteProperties:
|0DB818| JSL ResetSpriteProperties

|0DB81C| PHY

|0DB81D| PHB
|0DB81E| PHK
|0DB81F| PLB

|0DB820| LDY.w $0E20,X

|0DB823| LDA.w SpriteData_OAMHarm,Y
|0DB826| STA.w $0E40,X

|0DB829| LDA.w SpriteData_Health,Y
|0DB82C| STA.w $0E50,X

|0DB82F| LDA.w SpriteData_Hitbox,Y
|0DB832| STA.w $0F60,X

|0DB835| LDA.w SpriteData_PrizePack,Y
|0DB838| STA.w $0BE0,X

|0DB83B| LDA.w SpriteData_Deflection,Y
|0DB83E| STA.w $0CAA,X

|0DB841| LDA.w SpriteData_Bump,Y
|0DB844| STA.w $0CD2,X

|0DB847| LDA.w SpriteData_TileInteraction,Y
|0DB84A| STA.w $0B6B,X

|0DB84D| LDA.w $040A

|0DB850| LDY.b $1B
|0DB852| BEQ .outdoors

|0DB854| LDA.w $048E

.outdoors
|0DB857| STA.w $0C9A,X

|0DB85A| PLB
|0DB85B| PLY

;===================================================================================================

GetInitialSpritePalette:
|0DB85C| PHY

|0DB85D| PHB
|0DB85E| PHK
|0DB85F| PLB

|0DB860| LDY.w $0E20,X

|0DB863| LDA.w SpriteData_OAMProp,Y
|0DB866| STA.w $0E60,X

|0DB869| AND.b #$0F
|0DB86B| STA.w $0F50,X

|0DB86E| PLB

|0DB86F| PLY

|0DB870| RTL

;===================================================================================================
; Clears a bunch of stuff
;===================================================================================================
ResetSpriteProperties:
|0DB871| STZ.w $0F00,X
|0DB874| STZ.w $0E90,X
|0DB877| STZ.w $0D50,X
|0DB87A| STZ.w $0D40,X

|0DB87D| STZ.w $0F80,X
|0DB880| STZ.w $0D70,X
|0DB883| STZ.w $0D60,X
|0DB886| STZ.w $0F90,X

|0DB889| STZ.w $0D80,X
|0DB88C| STZ.w $0DC0,X
|0DB88F| STZ.w $0DE0,X
|0DB892| STZ.w $0DF0,X

|0DB895| STZ.w $0E00,X
|0DB898| STZ.w $0E10,X
|0DB89B| STZ.w $0F10,X
|0DB89E| STZ.w $0EB0,X

|0DB8A1| STZ.w $0EC0,X
|0DB8A4| STZ.w $0ED0,X
|0DB8A7| STZ.w $0EF0,X
|0DB8AA| STZ.w $0E70,X

|0DB8AD| STZ.w $0F70,X
|0DB8B0| STZ.w $0E50,X
|0DB8B3| STZ.w $0EA0,X
|0DB8B6| STZ.w $0F40,X

|0DB8B9| STZ.w $0F30,X
|0DB8BC| STZ.w $0D90,X
|0DB8BF| STZ.w $0DA0,X
|0DB8C2| STZ.w $0DB0,X

|0DB8C5| STZ.w $0BB0,X
|0DB8C8| STZ.w $0E80,X
|0DB8CB| STZ.w $0BA0,X
|0DB8CE| STZ.w $0B89,X

|0DB8D1| STZ.w $0F50,X
|0DB8D4| STZ.w $0B58,X
|0DB8D7| STZ.w $0CE2,X

|0DB8DA| LDA.b #$00
|0DB8DC| STA.l $7FFA1C,X
|0DB8E0| STA.l $7FFA2C,X
|0DB8E4| STA.l $7FFA3C,X
|0DB8E8| STA.l $7FFA4C,X
|0DB8EC| STA.l $7FF9C2,X

|0DB8F0| RTL

;===================================================================================================

DamageSubclassValue:
|0DB8F1| db $00, $01, $20, $FF, $FC, $FB, $00, $00 ; 0x00 - Boomerang
|0DB8F9| db $00, $02, $40, $04, $00, $00, $00, $00 ; 0x01 - Sword 1
|0DB901| db $00, $04, $40, $02, $03, $00, $00, $00 ; 0x02 - Sword 2
|0DB909| db $00, $08, $40, $04, $00, $00, $00, $00 ; 0x03 - Sword 3
|0DB911| db $00, $10, $40, $08, $00, $00, $00, $00 ; 0x04 - Sword 4
|0DB919| db $00, $10, $40, $08, $00, $00, $00, $00 ; 0x05 - Sword 5
|0DB921| db $00, $04, $40, $10, $00, $00, $00, $00 ; 0x06 - Arrow
|0DB929| db $00, $FF, $40, $FF, $FC, $FB, $00, $00 ; 0x07 - Hookshot
|0DB931| db $00, $04, $40, $FF, $FC, $FB, $20, $00 ; 0x08 - Bomb
|0DB939| db $00, $64, $18, $64, $00, $00, $00, $00 ; 0x09 - Silver arrow
|0DB941| db $00, $F9, $FA, $FF, $64, $00, $00, $00 ; 0x0A - Powder
|0DB949| db $00, $08, $40, $FD, $04, $10, $00, $00 ; 0x0B - Fire rod
|0DB951| db $00, $08, $40, $FE, $04, $00, $00, $00 ; 0x0C - Ice rod
|0DB959| db $00, $10, $40, $FD, $00, $00, $00, $00 ; 0x0D - Bombos
|0DB961| db $00, $FE, $40, $10, $00, $00, $00, $00 ; 0x0E - Ether
|0DB969| db $00, $20, $40, $FF, $00, $00, $00, $FA ; 0x0F - Quake

;===================================================================================================
; 00 - nothing
; 01 - collision
; 02 - short collision
; 03 - stairs
; 04 - ledges
;===================================================================================================
GeneralizedProjectileTileInteraction:
|0DB971| db $00 ; 00
|0DB972| db $01 ; 01
|0DB973| db $00 ; 02
|0DB974| db $00 ; 03
|0DB975| db $00 ; 04
|0DB976| db $00 ; 05
|0DB977| db $00 ; 06
|0DB978| db $00 ; 07
|0DB979| db $00 ; 08
|0DB97A| db $00 ; 09
|0DB97B| db $03 ; 0A
|0DB97C| db $00 ; 0B
|0DB97D| db $00 ; 0C
|0DB97E| db $00 ; 0D
|0DB97F| db $00 ; 0E
|0DB980| db $00 ; 0F
|0DB981| db $01 ; 10
|0DB982| db $01 ; 11
|0DB983| db $01 ; 12
|0DB984| db $01 ; 13
|0DB985| db $00 ; 14
|0DB986| db $00 ; 15
|0DB987| db $00 ; 16
|0DB988| db $00 ; 17
|0DB989| db $01 ; 18
|0DB98A| db $01 ; 19
|0DB98B| db $01 ; 1A
|0DB98C| db $01 ; 1B
|0DB98D| db $00 ; 1C
|0DB98E| db $03 ; 1D
|0DB98F| db $03 ; 1E
|0DB990| db $03 ; 1F
|0DB991| db $00 ; 20
|0DB992| db $00 ; 21
|0DB993| db $00 ; 22
|0DB994| db $00 ; 23
|0DB995| db $00 ; 24
|0DB996| db $00 ; 25
|0DB997| db $01 ; 26
|0DB998| db $01 ; 27
|0DB999| db $04 ; 28
|0DB99A| db $04 ; 29
|0DB99B| db $04 ; 2A
|0DB99C| db $04 ; 2B
|0DB99D| db $04 ; 2C
|0DB99E| db $04 ; 2D
|0DB99F| db $04 ; 2E
|0DB9A0| db $04 ; 2F
|0DB9A1| db $01 ; 30
|0DB9A2| db $01 ; 31
|0DB9A3| db $01 ; 32
|0DB9A4| db $01 ; 33
|0DB9A5| db $01 ; 34
|0DB9A6| db $01 ; 35
|0DB9A7| db $01 ; 36
|0DB9A8| db $01 ; 37
|0DB9A9| db $01 ; 38
|0DB9AA| db $01 ; 39
|0DB9AB| db $00 ; 3A
|0DB9AC| db $00 ; 3B
|0DB9AD| db $01 ; 3C
|0DB9AE| db $01 ; 3D
|0DB9AF| db $01 ; 3E
|0DB9B0| db $01 ; 3F
|0DB9B1| db $00 ; 40
|0DB9B2| db $00 ; 41
|0DB9B3| db $00 ; 42
|0DB9B4| db $00 ; 43
|0DB9B5| db $00 ; 44
|0DB9B6| db $00 ; 45
|0DB9B7| db $00 ; 46
|0DB9B8| db $00 ; 47
|0DB9B9| db $00 ; 48
|0DB9BA| db $00 ; 49
|0DB9BB| db $00 ; 4A
|0DB9BC| db $00 ; 4B
|0DB9BD| db $04 ; 4C
|0DB9BE| db $04 ; 4D
|0DB9BF| db $04 ; 4E
|0DB9C0| db $04 ; 4F
|0DB9C1| db $00 ; 50
|0DB9C2| db $00 ; 51
|0DB9C3| db $00 ; 52
|0DB9C4| db $00 ; 53
|0DB9C5| db $00 ; 54
|0DB9C6| db $00 ; 55
|0DB9C7| db $00 ; 56
|0DB9C8| db $00 ; 57
|0DB9C9| db $00 ; 58
|0DB9CA| db $00 ; 59
|0DB9CB| db $00 ; 5A
|0DB9CC| db $00 ; 5B
|0DB9CD| db $00 ; 5C
|0DB9CE| db $00 ; 5D
|0DB9CF| db $00 ; 5E
|0DB9D0| db $00 ; 5F
|0DB9D1| db $00 ; 60
|0DB9D2| db $00 ; 61
|0DB9D3| db $00 ; 62
|0DB9D4| db $00 ; 63
|0DB9D5| db $00 ; 64
|0DB9D6| db $00 ; 65
|0DB9D7| db $00 ; 66
|0DB9D8| db $00 ; 67
|0DB9D9| db $00 ; 68
|0DB9DA| db $00 ; 69
|0DB9DB| db $00 ; 6A
|0DB9DC| db $00 ; 6B
|0DB9DD| db $01 ; 6C
|0DB9DE| db $01 ; 6D
|0DB9DF| db $01 ; 6E
|0DB9E0| db $01 ; 6F
|0DB9E1| db $00 ; 70
|0DB9E2| db $00 ; 71
|0DB9E3| db $00 ; 72
|0DB9E4| db $00 ; 73
|0DB9E5| db $00 ; 74
|0DB9E6| db $00 ; 75
|0DB9E7| db $00 ; 76
|0DB9E8| db $00 ; 77
|0DB9E9| db $00 ; 78
|0DB9EA| db $00 ; 79
|0DB9EB| db $00 ; 7A
|0DB9EC| db $00 ; 7B
|0DB9ED| db $00 ; 7C
|0DB9EE| db $00 ; 7D
|0DB9EF| db $00 ; 7E
|0DB9F0| db $00 ; 7F
|0DB9F1| db $01 ; 80
|0DB9F2| db $01 ; 81
|0DB9F3| db $01 ; 82
|0DB9F4| db $01 ; 83
|0DB9F5| db $01 ; 84
|0DB9F6| db $01 ; 85
|0DB9F7| db $01 ; 86
|0DB9F8| db $01 ; 87
|0DB9F9| db $01 ; 88
|0DB9FA| db $01 ; 89
|0DB9FB| db $01 ; 8A
|0DB9FC| db $01 ; 8B
|0DB9FD| db $01 ; 8C
|0DB9FE| db $01 ; 8D
|0DB9FF| db $01 ; 8E
|0DBA00| db $01 ; 8F
|0DBA01| db $01 ; 90
|0DBA02| db $01 ; 91
|0DBA03| db $01 ; 92
|0DBA04| db $01 ; 93
|0DBA05| db $01 ; 94
|0DBA06| db $01 ; 95
|0DBA07| db $01 ; 96
|0DBA08| db $01 ; 97
|0DBA09| db $01 ; 98
|0DBA0A| db $01 ; 99
|0DBA0B| db $01 ; 9A
|0DBA0C| db $01 ; 9B
|0DBA0D| db $01 ; 9C
|0DBA0E| db $01 ; 9D
|0DBA0F| db $01 ; 9E
|0DBA10| db $01 ; 9F
|0DBA11| db $01 ; A0
|0DBA12| db $01 ; A1
|0DBA13| db $01 ; A2
|0DBA14| db $01 ; A3
|0DBA15| db $01 ; A4
|0DBA16| db $01 ; A5
|0DBA17| db $01 ; A6
|0DBA18| db $01 ; A7
|0DBA19| db $01 ; A8
|0DBA1A| db $01 ; A9
|0DBA1B| db $01 ; AA
|0DBA1C| db $01 ; AB
|0DBA1D| db $01 ; AC
|0DBA1E| db $01 ; AD
|0DBA1F| db $01 ; AE
|0DBA20| db $01 ; AF
|0DBA21| db $00 ; B0
|0DBA22| db $00 ; B1
|0DBA23| db $00 ; B2
|0DBA24| db $00 ; B3
|0DBA25| db $00 ; B4
|0DBA26| db $00 ; B5
|0DBA27| db $00 ; B6
|0DBA28| db $00 ; B7
|0DBA29| db $00 ; B8
|0DBA2A| db $00 ; B9
|0DBA2B| db $00 ; BA
|0DBA2C| db $00 ; BB
|0DBA2D| db $00 ; BC
|0DBA2E| db $00 ; BD
|0DBA2F| db $00 ; BE
|0DBA30| db $00 ; BF
|0DBA31| db $00 ; C0
|0DBA32| db $00 ; C1
|0DBA33| db $00 ; C2
|0DBA34| db $00 ; C3
|0DBA35| db $00 ; C4
|0DBA36| db $00 ; C5
|0DBA37| db $00 ; C6
|0DBA38| db $00 ; C7
|0DBA39| db $00 ; C8
|0DBA3A| db $00 ; C9
|0DBA3B| db $00 ; CA
|0DBA3C| db $00 ; CB
|0DBA3D| db $00 ; CC
|0DBA3E| db $00 ; CD
|0DBA3F| db $00 ; CE
|0DBA40| db $00 ; CF
|0DBA41| db $00 ; D0
|0DBA42| db $00 ; D1
|0DBA43| db $00 ; D2
|0DBA44| db $00 ; D3
|0DBA45| db $00 ; D4
|0DBA46| db $00 ; D5
|0DBA47| db $00 ; D6
|0DBA48| db $00 ; D7
|0DBA49| db $00 ; D8
|0DBA4A| db $00 ; D9
|0DBA4B| db $00 ; DA
|0DBA4C| db $00 ; DB
|0DBA4D| db $00 ; DC
|0DBA4E| db $00 ; DD
|0DBA4F| db $00 ; DE
|0DBA50| db $00 ; DF
|0DBA51| db $00 ; E0
|0DBA52| db $00 ; E1
|0DBA53| db $00 ; E2
|0DBA54| db $00 ; E3
|0DBA55| db $00 ; E4
|0DBA56| db $00 ; E5
|0DBA57| db $00 ; E6
|0DBA58| db $00 ; E7
|0DBA59| db $00 ; E8
|0DBA5A| db $00 ; E9
|0DBA5B| db $00 ; EA
|0DBA5C| db $00 ; EB
|0DBA5D| db $00 ; EC
|0DBA5E| db $00 ; ED
|0DBA5F| db $00 ; EE
|0DBA60| db $00 ; EF
|0DBA61| db $01 ; F0
|0DBA62| db $01 ; F1
|0DBA63| db $01 ; F2
|0DBA64| db $01 ; F3
|0DBA65| db $01 ; F4
|0DBA66| db $01 ; F5
|0DBA67| db $01 ; F6
|0DBA68| db $01 ; F7
|0DBA69| db $01 ; F8
|0DBA6A| db $01 ; F9
|0DBA6B| db $01 ; FA
|0DBA6C| db $01 ; FB
|0DBA6D| db $01 ; FC
|0DBA6E| db $01 ; FD
|0DBA6F| db $01 ; FE
|0DBA70| db $01 ; FF

;===================================================================================================
; A psuedo-psuedo-psuedo-psuedo-RNG
;===================================================================================================
GetRandomNumber:
|0DBA71| LDA.w SLVH ; latch to request scanning beam update
|0DBA74| LDA.w OPHCT ; get low byte of hcount

; take note that the carry is in an unknown state and never fixed
|0DBA77| ADC.b $1A ; add frame counter
|0DBA79| ADC.w $0FA1 ; add previous RNG value
|0DBA7C| STA.w $0FA1 ; save it too

|0DBA7F| RTL

;===================================================================================================

AllocateOAMInRegionA:
|0DBA80| LDY.b #$00
|0DBA82| BRA AllocateOAMInRegion

;===================================================================================================

AllocateOAMInRegionB:
|0DBA84| LDY.b #$02
|0DBA86| BRA AllocateOAMInRegion

;===================================================================================================

AllocateOAMInRegionC:
|0DBA88| LDY.b #$04
|0DBA8A| BRA AllocateOAMInRegion

;===================================================================================================

AllocateOAMInRegionD:
|0DBA8C| LDY.b #$06
|0DBA8E| BRA AllocateOAMInRegion

;===================================================================================================

AllocateOAMInRegionE:
|0DBA90| LDY.b #$08
|0DBA92| BRA AllocateOAMInRegion

;===================================================================================================

AllocateOAMInRegionF:
|0DBA94| LDY.b #$0A

;===================================================================================================

AllocateOAMInRegion:
|0DBA96| PHB
|0DBA97| PHK
|0DBA98| PLB

|0DBA99| JSR .execute

|0DBA9C| PLB

|0DBA9D| RTL

;---------------------------------------------------------------------------------------------------

.region_end
|0DBA9E| dw $0171 ; Region A - [BUG] ? this doesn't give any room for the last value
|0DBAA0| dw $0201 ; Region B
|0DBAA2| dw $0031 ; Region C
|0DBAA4| dw $00C1 ; Region D
|0DBAA6| dw $0141 ; Region E
|0DBAA8| dw $01D1 ; Region F

;---------------------------------------------------------------------------------------------------

.flicker_slot
|0DBAAA| dw $0030, $0050, $0080, $00B0 ; Region A
|0DBAB2| dw $00E0, $0110, $0140, $0170

|0DBABA| dw $01D0, $01D4, $01DC, $01E0 ; Region B
|0DBAC2| dw $01E4, $01EC, $01F0, $01F8

|0DBACA| dw $0000, $0004, $0008, $000C ; Region C
|0DBAD2| dw $0010, $0014, $0018, $001C

|0DBADA| dw $0030, $0038, $0050, $0068 ; Region D
|0DBAE2| dw $0080, $0098, $00B0, $00C8

|0DBAEA| dw $0120, $0124, $0128, $012C ; Region E
|0DBAF2| dw $0130, $0134, $0138, $013C

|0DBAFA| dw $0140, $0150, $0160, $0170 ; Region F
|0DBB02| dw $0180, $0190, $01A0, $01B8

;---------------------------------------------------------------------------------------------------

.execute
|0DBB0A| STA.b $0E
|0DBB0C| STZ.w $000F

|0DBB0F| REP #$20

|0DBB11| LDA.w $0FE0,Y
|0DBB14| STA.b $90

|0DBB16| CLC
|0DBB17| ADC.b $0E
|0DBB19| CMP.w .region_end,Y
|0DBB1C| BCC .in_range

|0DBB1E| STY.b $0C
|0DBB20| STZ.b $0D

|0DBB22| LDA.w $0FEC,Y
|0DBB25| PHA

|0DBB26| INC A
|0DBB27| STA.w $0FEC,Y

|0DBB2A| PLA
|0DBB2B| AND.w #$0007
|0DBB2E| ASL A
|0DBB2F| STA.b $0E

|0DBB31| LDA.b $0C
|0DBB33| ASL A
|0DBB34| ASL A
|0DBB35| ASL A
|0DBB36| ADC.b $0E
|0DBB38| TAY

|0DBB39| LDA.w .flicker_slot,Y
|0DBB3C| STA.b $90

|0DBB3E| SEC ; [USELESS]
|0DBB3F| BRA .continue

;---------------------------------------------------------------------------------------------------

.in_range
|0DBB41| STA.w $0FE0,Y

.continue
|0DBB44| LDA.b $90
|0DBB46| PHA

|0DBB47| LSR A
|0DBB48| LSR A

|0DBB49| CLC
|0DBB4A| ADC.w #$0A20
|0DBB4D| STA.b $92

|0DBB4F| PLA
|0DBB50| CLC
|0DBB51| ADC.w #$0800
|0DBB54| STA.b $90

|0DBB56| SEP #$20

|0DBB58| LDY.b $90 ; This is not used anywhere ever

|0DBB5A| RTS

;===================================================================================================

SFXPanFlags:
|0DBB5B| db $00 ; none
|0DBB5C| db $80 ; left
|0DBB5D| db $40 ; right

;===================================================================================================

CalculateAncillaSFXPan:
|0DBB5E| LDA.w $0C18,X
|0DBB61| XBA
|0DBB62| LDA.w $0C04,X

|0DBB65| BRA CalculateSFXPan

;===================================================================================================

CalculateLinkSFXPan:
|0DBB67| LDA.b $23
|0DBB69| XBA
|0DBB6A| LDA.b $22

|0DBB6C| BRA CalculateSFXPan

;===================================================================================================

QueueSpriteSFX1WithPan:
|0DBB6E| PHY

|0DBB6F| LDY.w $012D
|0DBB72| BNE .sfx_already_queued

|0DBB74| JSR ApplySpriteSFXPanning
|0DBB77| STA.w $012D

.sfx_already_queued
|0DBB7A| PLY

|0DBB7B| RTL

;===================================================================================================

QueueSpriteSFX2WithPan:
|0DBB7C| PHY

|0DBB7D| LDY.w $012E
|0DBB80| BNE .sfx_already_queued

|0DBB82| JSR ApplySpriteSFXPanning
|0DBB85| STA.w $012E

.sfx_already_queued
|0DBB88| PLY

|0DBB89| RTL

;===================================================================================================

QueueSpriteSFX3WithPan:
|0DBB8A| PHY

|0DBB8B| LDY.w $012F
|0DBB8E| BNE .sfx_already_queued

|0DBB90| JSR ApplySpriteSFXPanning
|0DBB93| STA.w $012F

.sfx_already_queued
|0DBB96| PLY

|0DBB97| RTL

;===================================================================================================

ApplySpriteSFXPanning:
|0DBB98| STA.b $0D

|0DBB9A| JSL CalculateSpriteSFXPan
|0DBB9E| ORA.b $0D

|0DBBA0| RTS

;===================================================================================================

CalculateSpriteSFXPan:
|0DBBA1| LDA.w $0D30,X
|0DBBA4| XBA
|0DBBA5| LDA.w $0D10,X

;===================================================================================================

CalculateSFXPan:
|0DBBA8| REP #$20

|0DBBAA| PHX

|0DBBAB| LDX.b #$00

|0DBBAD| SEC
|0DBBAE| SBC.b $E2

|0DBBB0| SEC
|0DBBB1| SBC.w #$0050

|0DBBB4| CMP.w #$0050
|0DBBB7| BCC .grab_flag

|0DBBB9| INX

|0DBBBA| CMP.w #$0000
|0DBBBD| BMI .grab_flag

|0DBBBF| INX

;---------------------------------------------------------------------------------------------------

.grab_flag
|0DBBC0| SEP #$20

|0DBBC2| LDA.l SFXPanFlags,X

|0DBBC6| PLX

|0DBBC7| RTL

;===================================================================================================

pool CalculateArbitrarySFXPan

.bits
|0DBBC8| db $80, $80, $80, $00, $00, $40, $40, $40

endpool

;---------------------------------------------------------------------------------------------------

CalculateArbitrarySFXPan:
|0DBBD0| SEC
|0DBBD1| SBC.b $E2

|0DBBD3| LSR A
|0DBBD4| LSR A
|0DBBD5| LSR A
|0DBBD6| LSR A
|0DBBD7| LSR A

|0DBBD8| PHX

|0DBBD9| TAX

|0DBBDA| LDA.l .bits,X

|0DBBDE| PLX

|0DBBDF| RTL

;===================================================================================================

pool SpriteDraw_Babasu

.oam_groups
; group00
|0DBBE0| dw   0,   4 : db $80, $43, $00, $00
|0DBBE8| dw   0,   4 : db $80, $43, $00, $00

; group01
|0DBBF0| dw   0,   4 : db $B6, $43, $00, $00
|0DBBF8| dw   0,   4 : db $B6, $43, $00, $00

; group02
|0DBC00| dw   0,   4 : db $B7, $43, $00, $00
|0DBC08| dw   8,   4 : db $80, $03, $00, $00

; group03
|0DBC10| dw   0,   4 : db $80, $43, $00, $00
|0DBC18| dw   8,   4 : db $B6, $03, $00, $00

; group04
|0DBC20| dw   8,   4 : db $B7, $03, $00, $00
|0DBC28| dw   8,   4 : db $B7, $03, $00, $00

; group05
|0DBC30| dw   8,   4 : db $80, $03, $00, $00
|0DBC38| dw   8,   4 : db $80, $03, $00, $00

; group06
|0DBC40| dw   4,   0 : db $80, $83, $00, $00
|0DBC48| dw   4,   0 : db $80, $83, $00, $00

; group07
|0DBC50| dw   4,   0 : db $B6, $83, $00, $00
|0DBC58| dw   4,   0 : db $B6, $83, $00, $00

; group08
|0DBC60| dw   4,   0 : db $B7, $83, $00, $00
|0DBC68| dw   4,   8 : db $80, $03, $00, $00

; group09
|0DBC70| dw   4,   0 : db $80, $83, $00, $00
|0DBC78| dw   4,   8 : db $B6, $03, $00, $00

; group0A
|0DBC80| dw   4,   8 : db $B7, $03, $00, $00
|0DBC88| dw   4,   8 : db $B7, $03, $00, $00

; group0B
|0DBC90| dw   4,   8 : db $80, $03, $00, $00
|0DBC98| dw   4,   8 : db $80, $03, $00, $00

; group0C
|0DBCA0| dw   0,  -8 : db $4E, $0A, $00, $02
|0DBCA8| dw   0,   0 : db $5E, $0A, $00, $02

; group0D
|0DBCB0| dw   0,  -8 : db $4E, $4A, $00, $02
|0DBCB8| dw   0,   0 : db $5E, $4A, $00, $02

; group0E
|0DBCC0| dw   8,   0 : db $6C, $0A, $00, $02
|0DBCC8| dw   0,   0 : db $6B, $0A, $00, $02

; group0F
|0DBCD0| dw   8,   0 : db $6C, $8A, $00, $02
|0DBCD8| dw   0,   0 : db $6B, $8A, $00, $02

; group10
|0DBCE0| dw   0,   8 : db $4E, $8A, $00, $02
|0DBCE8| dw   0,   0 : db $5E, $8A, $00, $02

; group11
|0DBCF0| dw   0,   8 : db $4E, $CA, $00, $02
|0DBCF8| dw   0,   0 : db $5E, $CA, $00, $02

; group12
|0DBD00| dw  -8,   0 : db $6C, $4A, $00, $02
|0DBD08| dw   0,   0 : db $6B, $4A, $00, $02

; group13
|0DBD10| dw  -8,   0 : db $6C, $CA, $00, $02
|0DBD18| dw   0,   0 : db $6B, $CA, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Babasu:
|0DBD20| PHB
|0DBD21| PHK
|0DBD22| PLB

|0DBD23| LDA.b #$00
|0DBD25| XBA
|0DBD26| LDA.w $0DC0,X
|0DBD29| BMI .not_visible

|0DBD2B| REP #$20

|0DBD2D| ASL A ; x16
|0DBD2E| ASL A
|0DBD2F| ASL A
|0DBD30| ASL A
|0DBD31| ADC.w #.oam_groups
|0DBD34| STA.b $08

|0DBD36| SEP #$20

|0DBD38| LDA.b #$02
|0DBD3A| JSL TabulatedSpriteDraw

|0DBD3E| PLB

|0DBD3F| RTL

;---------------------------------------------------------------------------------------------------

.not_visible
|0DBD40| JSL GetScreenCoordinates_long

|0DBD44| PLB

|0DBD45| RTL

;===================================================================================================

pool SpriteDraw_Wizzrobe

.oam_groups
; group00
|0DBD46| dw   0,  -8 : db $B2, $00, $00, $00
|0DBD4E| dw   8,  -8 : db $B3, $00, $00, $00
|0DBD56| dw   0,   0 : db $88, $00, $00, $02

; group01
|0DBD5E| dw   0,  -8 : db $B2, $00, $00, $00
|0DBD66| dw   8,  -8 : db $B3, $00, $00, $00
|0DBD6E| dw   0,   0 : db $86, $00, $00, $02

; group02
|0DBD76| dw   0,  -8 : db $B2, $00, $00, $00
|0DBD7E| dw   8,  -8 : db $B3, $00, $00, $00
|0DBD86| dw   0,   0 : db $8C, $00, $00, $02

; group03
|0DBD8E| dw   0,  -8 : db $B2, $00, $00, $00
|0DBD96| dw   8,  -8 : db $B3, $00, $00, $00
|0DBD9E| dw   0,   0 : db $8A, $00, $00, $02

; group04
|0DBDA6| dw   0,  -8 : db $B2, $00, $00, $00
|0DBDAE| dw   8,  -8 : db $B3, $00, $00, $00
|0DBDB6| dw   0,   0 : db $8C, $40, $00, $02

; group05
|0DBDBE| dw   0,  -8 : db $B2, $00, $00, $00
|0DBDC6| dw   8,  -8 : db $B3, $00, $00, $00
|0DBDCE| dw   0,   0 : db $8A, $40, $00, $02

; group06
|0DBDD6| dw   0,  -8 : db $B2, $00, $00, $00
|0DBDDE| dw   8,  -8 : db $B3, $00, $00, $00
|0DBDE6| dw   0,   0 : db $A4, $00, $00, $02

; group07
|0DBDEE| dw   0,  -8 : db $B2, $00, $00, $00
|0DBDF6| dw   8,  -8 : db $B3, $00, $00, $00
|0DBDFE| dw   0,   0 : db $8E, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Wizzrobe:
|0DBE06| PHB
|0DBE07| PHK
|0DBE08| PLB

|0DBE09| LDA.b #$00
|0DBE0B| XBA
|0DBE0C| LDA.w $0DC0,X

|0DBE0F| REP #$20

|0DBE11| ASL A
|0DBE12| ASL A
|0DBE13| ASL A
|0DBE14| STA.b $00

|0DBE16| ASL A
|0DBE17| ADC.b $00
|0DBE19| ADC.w #.oam_groups
|0DBE1C| STA.b $08

|0DBE1E| SEP #$20

|0DBE20| LDA.b #$03
|0DBE22| JSL TabulatedSpriteDraw

|0DBE26| PLB

|0DBE27| RTL

;===================================================================================================

pool SpriteDraw_WizzrobeBeam

.oam_groups
; group00
|0DBE28| dw   0,  -4 : db $C5, $00, $00, $00
|0DBE30| dw   0,   4 : db $C5, $80, $00, $00

; group01
|0DBE38| dw   0,  -4 : db $C5, $40, $00, $00
|0DBE40| dw   0,   4 : db $C5, $C0, $00, $00

; group02
|0DBE48| dw  -4,   0 : db $D2, $40, $00, $00
|0DBE50| dw   4,   0 : db $D2, $00, $00, $00

; group03
|0DBE58| dw  -4,   0 : db $D2, $C0, $00, $00
|0DBE60| dw   4,   0 : db $D2, $80, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_WizzrobeBeam:
|0DBE68| PHB
|0DBE69| PHK
|0DBE6A| PLB

|0DBE6B| LDA.b #$00
|0DBE6D| XBA
|0DBE6E| LDA.w $0DE0,X

|0DBE71| REP #$20

|0DBE73| ASL A ; x16
|0DBE74| ASL A
|0DBE75| ASL A
|0DBE76| ASL A
|0DBE77| ADC.w #.oam_groups
|0DBE7A| STA.b $08

|0DBE7C| SEP #$20

|0DBE7E| LDA.b #$02
|0DBE80| JSL TabulatedSpriteDraw

|0DBE84| PLB

|0DBE85| RTL

;===================================================================================================

pool SpriteDraw_Freezor

.oam_groups_mobile
; group00
|0DBE86| dw  -8,   0 : db $A6, $00, $00, $02
|0DBE8E| dw   8,   0 : db $A6, $40, $00, $02
|0DBE96| dw  -8,   0 : db $A6, $00, $00, $02
|0DBE9E| dw   8,   0 : db $A6, $40, $00, $02

; group01
|0DBEA6| dw  -8,   0 : db $A6, $00, $00, $02
|0DBEAE| dw   8,   0 : db $A6, $40, $00, $02
|0DBEB6| dw   0,  11 : db $AB, $00, $00, $00
|0DBEBE| dw   8,  11 : db $AB, $40, $00, $00

; group02
|0DBEC6| dw  -8,   0 : db $AC, $00, $00, $02
|0DBECE| dw   8,   0 : db $A8, $40, $00, $02
|0DBED6| dw   0,  11 : db $BA, $00, $00, $00
|0DBEDE| dw   8,  11 : db $BB, $00, $00, $00

; group03
|0DBEE6| dw  -8,   0 : db $A8, $00, $00, $02
|0DBEEE| dw   8,   0 : db $AC, $40, $00, $02
|0DBEF6| dw   0,  11 : db $BB, $40, $00, $00
|0DBEFE| dw   8,  11 : db $BA, $40, $00, $00

; group04
|0DBF06| dw   0,   2 : db $AE, $00, $00, $00
|0DBF0E| dw   8,   2 : db $AE, $40, $00, $00
|0DBF16| dw   0,  10 : db $BE, $00, $00, $00
|0DBF1E| dw   8,  10 : db $BE, $40, $00, $00

; group05
|0DBF26| dw   0,   4 : db $AF, $00, $00, $00
|0DBF2E| dw   8,   4 : db $AF, $40, $00, $00
|0DBF36| dw   0,  12 : db $BF, $00, $00, $00
|0DBF3E| dw   8,  12 : db $BF, $40, $00, $00

; group06
|0DBF46| dw   0,   8 : db $AA, $00, $00, $00
|0DBF4E| dw   8,   8 : db $AA, $40, $00, $00
|0DBF56| dw   0,   8 : db $AA, $00, $00, $00
|0DBF5E| dw   8,   8 : db $AA, $40, $00, $00

;---------------------------------------------------------------------------------------------------

.oam_groups_melting
|0DBF66| dw   0,   0 : db $AE, $00, $00, $00
|0DBF6E| dw   8,   0 : db $AE, $40, $00, $00
|0DBF76| dw   0,   8 : db $BE, $00, $00, $00
|0DBF7E| dw   8,   8 : db $BE, $40, $00, $00
|0DBF86| dw  -2,   0 : db $AE, $00, $00, $00
|0DBF8E| dw  10,   0 : db $AE, $40, $00, $00
|0DBF96| dw  -2,   8 : db $BE, $00, $00, $00
|0DBF9E| dw  10,   8 : db $BE, $40, $00, $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Freezor:
|0DBFA6| PHB
|0DBFA7| PHK
|0DBFA8| PLB

|0DBFA9| LDA.b #$00
|0DBFAB| XBA
|0DBFAC| LDA.w $0DC0,X

|0DBFAF| CMP.b #$07
|0DBFB1| BEQ .is_melting

|0DBFB3| REP #$20

|0DBFB5| ASL A ; x32
|0DBFB6| ASL A
|0DBFB7| ASL A
|0DBFB8| ASL A
|0DBFB9| ASL A
|0DBFBA| ADC.w #.oam_groups_mobile
|0DBFBD| STA.b $08

|0DBFBF| SEP #$20

|0DBFC1| LDA.b #$04

.do_draw
|0DBFC3| JSL TabulatedSpriteDraw

|0DBFC7| PLB

|0DBFC8| RTL

;---------------------------------------------------------------------------------------------------

.is_melting
|0DBFC9| REP #$20

|0DBFCB| LDA.w #.oam_groups_melting
|0DBFCE| STA.b $08

|0DBFD0| SEP #$20

|0DBFD2| LDA.b #$08
|0DBFD4| BRA .do_draw

;===================================================================================================

pool SpriteDraw_Zazak

.oam_groups
; group00
|0DBFD6| dw   0,  -8 : db $08, $00, $00, $02
|0DBFDE| dw  -4,   0 : db $A0, $00, $00, $02
|0DBFE6| dw   4,   0 : db $A1, $00, $00, $02

; group01
|0DBFEE| dw   0,  -7 : db $08, $00, $00, $02
|0DBFF6| dw  -4,   1 : db $A1, $40, $00, $02
|0DBFFE| dw   4,   1 : db $A0, $40, $00, $02

; group02
|0DC006| dw   0,  -8 : db $0E, $00, $00, $02
|0DC00E| dw  -4,   0 : db $A3, $00, $00, $02
|0DC016| dw   4,   0 : db $A4, $00, $00, $02

; group03
|0DC01E| dw   0,  -7 : db $0E, $00, $00, $02
|0DC026| dw  -4,   1 : db $A4, $40, $00, $02
|0DC02E| dw   4,   1 : db $A3, $40, $00, $02

; group04
|0DC036| dw   0,  -9 : db $0C, $00, $00, $02
|0DC03E| dw   0,   0 : db $A6, $00, $00, $02
|0DC046| dw   0,   0 : db $A6, $00, $00, $02

; group05
|0DC04E| dw   0,  -8 : db $0C, $00, $00, $02
|0DC056| dw   0,   0 : db $A8, $00, $00, $02
|0DC05E| dw   0,   0 : db $A8, $00, $00, $02

; group06
|0DC066| dw   0,  -9 : db $0C, $40, $00, $02
|0DC06E| dw   0,   0 : db $A6, $40, $00, $02
|0DC076| dw   0,   0 : db $A6, $40, $00, $02

; group07
|0DC07E| dw   0,  -8 : db $0C, $40, $00, $02
|0DC086| dw   0,   0 : db $A8, $40, $00, $02
|0DC08E| dw   0,   0 : db $A8, $40, $00, $02

;---------------------------------------------------------------------------------------------------

.head_char
|0DC096| db $82
|0DC097| db $82
|0DC098| db $80
|0DC099| db $84
|0DC09A| db $88
|0DC09B| db $88
|0DC09C| db $86
|0DC09D| db $84

.head_flip
|0DC09E| db $40
|0DC09F| db $00
|0DC0A0| db $00
|0DC0A1| db $00
|0DC0A2| db $40
|0DC0A3| db $00
|0DC0A4| db $00
|0DC0A5| db $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Zazak:
|0DC0A6| PHB
|0DC0A7| PHK
|0DC0A8| PLB

|0DC0A9| LDA.b #$00
|0DC0AB| XBA
|0DC0AC| LDA.w $0DC0,X

|0DC0AF| REP #$20

|0DC0B1| ASL A
|0DC0B2| ASL A
|0DC0B3| ASL A
|0DC0B4| STA.b $00

|0DC0B6| ASL A
|0DC0B7| ADC.b $00
|0DC0B9| ADC.w #.oam_groups
|0DC0BC| STA.b $08

|0DC0BE| SEP #$20

|0DC0C0| LDA.b #$03
|0DC0C2| JSL TabulatedSpriteDraw

|0DC0C6| LDA.w $0F00,X
|0DC0C9| BNE .no_head_adjustment

|0DC0CB| LDA.w $0E00,X
|0DC0CE| CMP.b #$01

|0DC0D0| PHX

|0DC0D1| LDA.w $0EB0,X
|0DC0D4| TAX

|0DC0D5| BCC .not_facing_up

|0DC0D7| INX
|0DC0D8| INX
|0DC0D9| INX
|0DC0DA| INX

.not_facing_up
|0DC0DB| LDA.w .head_char,X

|0DC0DE| LDY.b #$02
|0DC0E0| STA.b ($90),Y

|0DC0E2| INY

|0DC0E3| LDA.b ($90),Y
|0DC0E5| AND.b #$BF
|0DC0E7| ORA.w .head_flip,X
|0DC0EA| STA.b ($90),Y

|0DC0EC| PLX

|0DC0ED| JSL DrawSpriteShadow_long

.no_head_adjustment
|0DC0F1| PLB

|0DC0F2| RTL

;===================================================================================================

pool SpriteDraw_Stalfos

.oam_groups
; group00
|0DC0F3| dw   0, -10 : db $00, $00, $00, $02
|0DC0FB| dw   0,   0 : db $06, $00, $00, $02
|0DC103| dw   0,   0 : db $06, $00, $00, $02

; group01
|0DC10B| dw   0,  -9 : db $00, $00, $00, $02
|0DC113| dw   0,   1 : db $06, $40, $00, $02
|0DC11B| dw   0,   1 : db $06, $40, $00, $02

; group02
|0DC123| dw   0, -10 : db $04, $00, $00, $02
|0DC12B| dw   0,   0 : db $06, $00, $00, $02
|0DC133| dw   0,   0 : db $06, $00, $00, $02

; group03
|0DC13B| dw   0,  -9 : db $04, $00, $00, $02
|0DC143| dw   0,   1 : db $06, $40, $00, $02
|0DC14B| dw   0,   1 : db $06, $40, $00, $02

; group04
|0DC153| dw   0, -10 : db $02, $00, $00, $02
|0DC15B| dw   5,   5 : db $2E, $00, $00, $00
|0DC163| dw   0,   0 : db $24, $00, $00, $02

; group05
|0DC16B| dw   0, -10 : db $02, $00, $00, $02
|0DC173| dw   0,   0 : db $0E, $00, $00, $02
|0DC17B| dw   0,   0 : db $0E, $00, $00, $02

; group06
|0DC183| dw   0, -10 : db $02, $40, $00, $02
|0DC18B| dw   3,   5 : db $2E, $40, $00, $00
|0DC193| dw   0,   0 : db $24, $40, $00, $02

; group07
|0DC19B| dw   0, -10 : db $02, $40, $00, $02
|0DC1A3| dw   0,   0 : db $0E, $40, $00, $02
|0DC1AB| dw   0,   0 : db $0E, $00, $00, $02

; group08
|0DC1B3| dw   2,  -8 : db $02, $40, $00, $02
|0DC1BB| dw   0,   0 : db $08, $40, $00, $02
|0DC1C3| dw   0,   0 : db $08, $40, $00, $02

; group09
|0DC1CB| dw  -2,  -8 : db $02, $00, $00, $02
|0DC1D3| dw   0,   0 : db $08, $00, $00, $02
|0DC1DB| dw   0,   0 : db $08, $00, $00, $02

; group0A
|0DC1E3| dw   0,  -6 : db $00, $00, $00, $02
|0DC1EB| dw   0,   0 : db $0A, $00, $00, $02
|0DC1F3| dw   0,   0 : db $0A, $00, $00, $02

; group0B
|0DC1FB| dw   0,   0 : db $0A, $00, $00, $02
|0DC203| dw   0,  -6 : db $04, $00, $00, $02
|0DC20B| dw   0,  -6 : db $04, $00, $00, $02

;---------------------------------------------------------------------------------------------------

.head_char
|0DC213| db $02, $02, $00, $04

endpool

;===================================================================================================

SpriteDontDraw_Stalfos:
|0DC217| JSL GetScreenCoordinates_long

|0DC21B| RTL

;===================================================================================================

SpriteDraw_Stalfos:
|0DC21C| LDA.w $0E10,X
|0DC21F| BNE SpriteDontDraw_Stalfos

|0DC221| PHB
|0DC222| PHK
|0DC223| PLB

|0DC224| LDA.b #$00
|0DC226| XBA
|0DC227| LDA.w $0DC0,X

|0DC22A| REP #$20

|0DC22C| ASL A
|0DC22D| ASL A
|0DC22E| ASL A
|0DC22F| STA.b $00

|0DC231| ASL A
|0DC232| ADC.b $00
|0DC234| ADC.w #.oam_groups
|0DC237| STA.b $08

|0DC239| SEP #$20

|0DC23B| LDA.b #$03
|0DC23D| JSL TabulatedSpriteDraw

|0DC241| LDA.w $0DC0,X
|0DC244| CMP.b #$08
|0DC246| BCS .skip_head

|0DC248| LDA.w $0F00,X
|0DC24B| BNE .skip_head

|0DC24D| PHX

|0DC24E| LDA.w $0EB0,X
|0DC251| TAX

|0DC252| LDA.w .head_char,X
|0DC255| LDY.b #$02
|0DC257| STA.b ($90),Y

|0DC259| INY

|0DC25A| LDA.b ($90),Y
|0DC25C| AND.b #$8F
|0DC25E| ORA.w .prop,X
|0DC261| STA.b ($90),Y

|0DC263| PLX

.skip_head
|0DC264| JSL DrawSpriteShadow_long

|0DC268| PLB

|0DC269| RTL

;---------------------------------------------------------------------------------------------------

.prop
|0DC26A| db $70, $30, $30, $30

;===================================================================================================

CheckTileSolidity:
|0DC26E| LDA.w $0F20,X
|0DC271| CMP.b #$01

|0DC273| REP #$30

|0DC275| STZ.b $05

|0DC277| BCC .lower_layer

|0DC279| LDA.w #$1000
|0DC27C| STA.b $05

.lower_layer
|0DC27E| SEP #$20

|0DC280| LDA.b $1B

|0DC282| REP #$20
|0DC284| BEQ .on_overworld

;---------------------------------------------------------------------------------------------------

.in_underworld
|0DC286| LDA.w $0FD8
|0DC289| AND.w #$01FF
|0DC28C| LSR A
|0DC28D| LSR A
|0DC28E| LSR A
|0DC28F| STA.b $04

|0DC291| LDA.w $0FDA
|0DC294| AND.w #$01F8
|0DC297| ASL A
|0DC298| ASL A
|0DC299| ASL A
|0DC29A| CLC
|0DC29B| ADC.b $04
|0DC29D| CLC
|0DC29E| ADC.b $05

|0DC2A0| PHX

|0DC2A1| TAX
|0DC2A2| LDA.l $7F2000,X

|0DC2A6| PLX
|0DC2A7| BRA .perform_check

;---------------------------------------------------------------------------------------------------

.on_overworld
|0DC2A9| PHX
|0DC2AA| PHY

|0DC2AB| LDA.w $0FD8
|0DC2AE| LSR A
|0DC2AF| LSR A
|0DC2B0| LSR A
|0DC2B1| STA.b $02

|0DC2B3| LDA.w $0FDA
|0DC2B6| STA.b $00

|0DC2B8| SEP #$30

|0DC2BA| JSL ReadOverworldTileType

|0DC2BE| REP #$10

|0DC2C0| PLY
|0DC2C1| PLX

;---------------------------------------------------------------------------------------------------

.perform_check
|0DC2C2| SEP #$30

|0DC2C4| PHX

|0DC2C5| STA.w $0FA5

|0DC2C8| TAX

|0DC2C9| LDA.l GeneralizedProjectileTileInteraction,X

|0DC2CD| PLX

|0DC2CE| CMP.b #$01

|0DC2D0| RTL

;===================================================================================================

Sprite_29_Adult:
|0DC2D1| PHB
|0DC2D2| PHK
|0DC2D3| PLB

|0DC2D4| JSR .main

|0DC2D7| PLB

|0DC2D8| RTL

;---------------------------------------------------------------------------------------------------

.main
|0DC2D9| LDA.w $0E80,X
|0DC2DC| JSL JumpTableLocal
|0DC2E0| dw FluteDad
|0DC2E2| dw ThiefHideoutGuy
|0DC2E4| dw BlindsHutGuy

;===================================================================================================

BlindsHutGuy:
|0DC2E6| JSR SpriteDraw_BlindsHutGuy

|0DC2E9| JSR CheckIfActive_bank0D
|0DC2EC| JSL BehaveAsBarrier
|0DC2F0| JSL TrackBodyToHead

|0DC2F4| STZ.w $0EB0,X

|0DC2F7| LDA.b #$70 ; MESSAGE 0170
|0DC2F9| LDY.b #$01
|0DC2FB| JSL ShowSolicitedMessage
|0DC2FF| BCC .exit

|0DC301| STA.w $0DE0,X
|0DC304| STA.w $0EB0,X

.exit
|0DC307| RTS

;===================================================================================================

ThiefHideoutGuy:
|0DC308| LDA.b $1A
|0DC30A| AND.b #$03
|0DC30C| BNE .delay

|0DC30E| LDA.b #$02
|0DC310| STA.w $0DC0,X

|0DC313| JSL GetDirectionTowardsLink_long

|0DC317| CPY.b #$03
|0DC319| BNE .not_upwards

|0DC31B| LDY.b #$02

.not_upwards
|0DC31D| TYA
|0DC31E| STA.w $0EB0,X

.delay
|0DC321| LDA.b #$0F
|0DC323| STA.w $0F50,X

|0DC326| JSL AllocateOAMDeferToPlayer_long
|0DC32A| JSL SpriteDraw_Thief
|0DC32E| JSR CheckIfActive_bank0D
|0DC331| JSL BehaveAsBarrier

|0DC335| LDA.b #$6F ; MESSAGE 016F
|0DC337| LDY.b #$01
|0DC339| JSL ShowSolicitedMessage

|0DC33D| LDA.b #$02
|0DC33F| STA.w $0DC0,X

|0DC342| RTS

;===================================================================================================

FluteDad:
|0DC343| JSR SpriteDraw_FluteDad
|0DC346| JSR CheckIfActive_bank0D
|0DC349| JSL BehaveAsBarrier

|0DC34D| LDA.b $1A
|0DC34F| CMP.b #$30
|0DC351| BCS .zzzzzz

|0DC353| LDA.b #$02
|0DC355| BRA .continue

.zzzzzz
|0DC357| ASL A
|0DC358| ROL A
|0DC359| AND.b #$01

.continue
|0DC35B| STA.w $0DC0,X

|0DC35E| LDA.w $0D80,X
|0DC361| BNE .aware_of_situation

|0DC363| LDA.l $7EF34C
|0DC367| CMP.b #$02
|0DC369| BCS .have_flute

|0DC36B| LDA.b #$9F ; MESSAGE 009F
|0DC36D| LDY.b #$00
|0DC36F| JSL ShowSolicitedMessage
|0DC373| BCC .useless_branch

.useless_branch
|0DC375| RTS

.have_flute
|0DC376| LDA.b #$A2 ; MESSAGE 00A2
|0DC378| LDY.b #$00
|0DC37A| JSL ShowSolicitedMessage
|0DC37E| BCC .not_talking

|0DC380| RTS

.not_talking
|0DC381| LDA.w $0202
|0DC384| CMP.b #$0D
|0DC386| BNE .exit

|0DC388| BIT.b $F0
|0DC38A| BVC .exit

|0DC38C| JSL CheckDamageToLink_same_layer_long
|0DC390| BCC .exit

|0DC392| LDA.b #$A0 ; MESSAGE 00A0
|0DC394| LDY.b #$00
|0DC396| JSL ShowMessageUnconditional

|0DC39A| INC.w $0D80,X

|0DC39D| LDA.b #$02
|0DC39F| STA.w $0DC0,X

.exit
|0DC3A2| RTS

;---------------------------------------------------------------------------------------------------

.aware_of_situation
|0DC3A3| LDA.b #$A1 ; MESSAGE 00A1
|0DC3A5| LDY.b #$00
|0DC3A7| JSL ShowSolicitedMessage

|0DC3AB| LDA.b #$02
|0DC3AD| STA.w $0DC0,X

|0DC3B0| RTS

;===================================================================================================

pool SpriteDraw_FluteDad

.oam_groups
; group00
|0DC3B1| dw   0,  -7 : db $86, $00, $00, $02
|0DC3B9| dw   0,   0 : db $88, $00, $00, $02

; group01
|0DC3C1| dw   0,  -6 : db $86, $00, $00, $02
|0DC3C9| dw   0,   0 : db $88, $00, $00, $02

; group02
|0DC3D1| dw   0,  -8 : db $84, $00, $00, $02
|0DC3D9| dw   0,   0 : db $88, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_FluteDad:
|0DC3E1| LDA.b #$02
|0DC3E3| STA.b $06
|0DC3E5| STZ.b $07

|0DC3E7| LDA.w $0DC0,X
|0DC3EA| ASL A
|0DC3EB| ASL A
|0DC3EC| ASL A
|0DC3ED| ASL A

|0DC3EE| ADC.b #<.oam_groups
|0DC3F0| STA.b $08

|0DC3F2| LDA.b #>.oam_groups
|0DC3F4| ADC.b #$00
|0DC3F6| STA.b $09

|0DC3F8| JSL TabulatedSpriteDraw.player_deferred
|0DC3FC| JSL DrawSpriteShadow_long

|0DC400| RTS

;===================================================================================================

pool SpriteDraw_BlindsHutGuy

.oam_groups
; group00
|0DC401| dw   0,  -8 : db $0C, $00, $00, $02
|0DC409| dw   0,   0 : db $CA, $00, $00, $02

; group01
|0DC411| dw   0,  -8 : db $0C, $00, $00, $02
|0DC419| dw   0,   0 : db $CA, $40, $00, $02

; group02
|0DC421| dw   0,  -8 : db $0C, $00, $00, $02
|0DC429| dw   0,   0 : db $CA, $00, $00, $02

; group03
|0DC431| dw   0,  -8 : db $0C, $00, $00, $02
|0DC439| dw   0,   0 : db $CA, $40, $00, $02

; group04
|0DC441| dw   0,  -8 : db $0E, $00, $00, $02
|0DC449| dw   0,   0 : db $CA, $00, $00, $02

; group05
|0DC451| dw   0,  -8 : db $0E, $00, $00, $02
|0DC459| dw   0,   0 : db $CA, $40, $00, $02

; group06
|0DC461| dw   0,  -8 : db $0E, $40, $00, $02
|0DC469| dw   0,   0 : db $CA, $00, $00, $02

; group07
|0DC471| dw   0,  -8 : db $0E, $40, $00, $02
|0DC479| dw   0,   0 : db $CA, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_BlindsHutGuy:
|0DC481| LDA.b #$02
|0DC483| STA.b $06
|0DC485| STZ.b $07

|0DC487| LDA.w $0DE0,X
|0DC48A| ASL A

|0DC48B| ADC.w $0DC0,X

|0DC48E| ASL A
|0DC48F| ASL A
|0DC490| ASL A
|0DC491| ASL A

|0DC492| ADC.b #<.oam_groups
|0DC494| STA.b $08

|0DC496| LDA.b #>.oam_groups
|0DC498| ADC.b #$00
|0DC49A| STA.b $09

|0DC49C| JSL TabulatedSpriteDraw.player_deferred
|0DC4A0| JSL DrawSpriteShadow_long

|0DC4A4| RTS

;===================================================================================================

Sprite_2A_SweepingLady:
|0DC4A5| PHB
|0DC4A6| PHK
|0DC4A7| PLB

|0DC4A8| JSR .main

|0DC4AB| PLB

|0DC4AC| RTL

;---------------------------------------------------------------------------------------------------

.main
|0DC4AD| JSR SpriteDraw_SweepingLady
|0DC4B0| JSR CheckIfActive_bank0D

|0DC4B3| LDA.b #$A3 ; MESSAGE 00A3
|0DC4B5| LDY.b #$00
|0DC4B7| JSL ShowSolicitedMessage

|0DC4BB| JSL BehaveAsBarrier

|0DC4BF| LDA.b $1A
|0DC4C1| LSR A ; /16
|0DC4C2| LSR A
|0DC4C3| LSR A
|0DC4C4| LSR A
|0DC4C5| AND.b #$01
|0DC4C7| STA.w $0DC0,X

|0DC4CA| RTS

;===================================================================================================

pool SpriteDraw_SweepingLady

.oam_groups
; group00
|0DC4CB| dw   0,  -7 : db $8E, $00, $00, $02
|0DC4D3| dw   0,   5 : db $8A, $00, $00, $02

; group01
|0DC4DB| dw   0,  -8 : db $8E, $00, $00, $02
|0DC4E3| dw   0,   4 : db $8C, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_SweepingLady:
|0DC4EB| LDA.b #$02
|0DC4ED| STA.b $06
|0DC4EF| STZ.b $07

|0DC4F1| LDA.w $0DC0,X
|0DC4F4| ASL A ; x16
|0DC4F5| ASL A
|0DC4F6| ASL A
|0DC4F7| ASL A
|0DC4F8| ADC.b #<.oam_groups
|0DC4FA| STA.b $08

|0DC4FC| LDA.b #>.oam_groups
|0DC4FE| ADC.b #$00
|0DC500| STA.b $09

|0DC502| JSL TabulatedSpriteDraw.player_deferred
|0DC506| JSL DrawSpriteShadow_long

|0DC50A| RTS

;===================================================================================================

Sprite_2C_Lumberjacks:
|0DC50B| PHB
|0DC50C| PHK
|0DC50D| PLB

|0DC50E| JSR .main

|0DC511| PLB

|0DC512| RTL

;---------------------------------------------------------------------------------------------------

.message_low
|0DC513| db $2A ; MESSAGE 012A
|0DC514| db $2B ; MESSAGE 012B
|0DC515| db $2C ; MESSAGE 012C
|0DC516| db $2B ; MESSAGE 012B

.message_high
|0DC517| db $01
|0DC518| db $01
|0DC519| db $01
|0DC51A| db $01

;---------------------------------------------------------------------------------------------------

.main
|0DC51B| JSR SpriteDraw_Lumberjack
|0DC51E| JSR CheckIfActive_bank0D

|0DC521| LDY.b #$00
|0DC523| JSR CheckProximityToBumpkin
|0DC526| BCS .check_outer

|0DC528| PHX

|0DC529| JSL AbortMovement

|0DC52D| STZ.b $5E

|0DC52F| JSL CancelDash_long

|0DC533| PLX

.check_outer
|0DC534| JSL CheckIfLinkIsBusy
|0DC538| BCS .no_talking

|0DC53A| LDY.b #$02
|0DC53C| JSR CheckProximityToBumpkin
|0DC53F| BCS .no_talking

|0DC541| LDA.b $F6
|0DC543| AND.b #$80
|0DC545| BEQ .no_talking

|0DC547| LDA.b $22
|0DC549| CMP.w $0D10,X

|0DC54C| ROL A
|0DC54D| AND.b #$01
|0DC54F| STA.b $00
|0DC551| STZ.b $01

|0DC553| LDA.l $7EF359
|0DC557| CMP.b #$02
|0DC559| BCC .weak_sword

|0DC55B| LDA.b #$02
|0DC55D| STA.b $01

.weak_sword
|0DC55F| LDA.b $01
|0DC561| CLC
|0DC562| ADC.b $00
|0DC564| TAY

|0DC565| LDA.w .message_low,Y
|0DC568| XBA

|0DC569| LDA.w .message_high,Y
|0DC56C| TAY

|0DC56D| XBA
|0DC56E| JSL ShowMessageUnconditional

;---------------------------------------------------------------------------------------------------

.no_talking
|0DC572| LDA.b $1A
|0DC574| LSR A ; /32
|0DC575| LSR A
|0DC576| LSR A
|0DC577| LSR A
|0DC578| LSR A
|0DC579| AND.b #$01
|0DC57B| STA.w $0DC0,X

|0DC57E| RTS

;===================================================================================================

pool CheckProximityToBumpkin

.boundary_x_lower
|0DC57F| dw $0030, $0034

.boundary_y_lower
|0DC583| dw $0013, $0014

.boundary_x_higher
|0DC587| dw $0062, $006A

.boundary_y_higher
|0DC58B| dw $0025, $0028

endpool

;---------------------------------------------------------------------------------------------------

CheckProximityToBumpkin:
|0DC58F| REP #$20

|0DC591| LDA.w $0FD8
|0DC594| SEC
|0DC595| SBC.b $22

|0DC597| CLC
|0DC598| ADC.w .boundary_x_lower,Y
|0DC59B| CMP.w .boundary_x_higher,Y
|0DC59E| BCS .not_close

|0DC5A0| LDA.w $0FDA
|0DC5A3| SEC
|0DC5A4| SBC.b $20

|0DC5A6| CLC
|0DC5A7| ADC.w .boundary_y_lower,Y
|0DC5AA| CMP.w .boundary_y_higher,Y
|0DC5AD| BCS .not_close

.not_close
|0DC5AF| SEP #$30

|0DC5B1| RTS

;===================================================================================================

pool SpriteDraw_Lumberjack

.oam_groups
; group00
|0DC5B2| dw -23,   5 : db $BE, $02, $00, $00
|0DC5BA| dw -15,   5 : db $BF, $02, $00, $00
|0DC5C2| dw  -7,   5 : db $BF, $02, $00, $00
|0DC5CA| dw   1,   5 : db $BF, $02, $00, $00
|0DC5D2| dw   9,   5 : db $BF, $02, $00, $00
|0DC5DA| dw  17,   5 : db $BF, $02, $00, $00
|0DC5E2| dw  25,   5 : db $BE, $42, $00, $00
|0DC5EA| dw -32,  -8 : db $A8, $40, $00, $02
|0DC5F2| dw -32,   4 : db $A6, $40, $00, $02
|0DC5FA| dw  30,  -8 : db $A8, $00, $00, $02
|0DC602| dw  31,   4 : db $A4, $00, $00, $02

; group01
|0DC60A| dw -19,   5 : db $BE, $02, $00, $00
|0DC612| dw -11,   5 : db $BF, $02, $00, $00
|0DC61A| dw  -3,   5 : db $BF, $02, $00, $00
|0DC622| dw   5,   5 : db $BF, $02, $00, $00
|0DC62A| dw  13,   5 : db $BF, $02, $00, $00
|0DC632| dw  21,   5 : db $BF, $02, $00, $00
|0DC63A| dw  29,   5 : db $BE, $42, $00, $00
|0DC642| dw -31,  -8 : db $A8, $40, $00, $02
|0DC64A| dw -32,   4 : db $A4, $40, $00, $02
|0DC652| dw  31,  -8 : db $A8, $00, $00, $02
|0DC65A| dw  31,   4 : db $A6, $00, $00, $02

; group02
|0DC662| dw -19,   5 : db $BE, $02, $00, $00
|0DC66A| dw -11,   5 : db $BF, $02, $00, $00
|0DC672| dw  -3,   5 : db $BF, $02, $00, $00
|0DC67A| dw   5,   5 : db $BF, $02, $00, $00
|0DC682| dw  13,   5 : db $BF, $02, $00, $00
|0DC68A| dw  21,   5 : db $BF, $02, $00, $00
|0DC692| dw  29,   5 : db $BE, $42, $00, $00
|0DC69A| dw -32,  -8 : db $0E, $40, $00, $02
|0DC6A2| dw -32,   4 : db $A4, $40, $00, $02
|0DC6AA| dw  32,  -8 : db $0E, $00, $00, $02
|0DC6B2| dw  31,   4 : db $A6, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Lumberjack:
|0DC6BA| LDA.b #$0B
|0DC6BC| STA.b $06
|0DC6BE| STZ.b $07

|0DC6C0| LDA.w $0DC0,X
|0DC6C3| ASL A
|0DC6C4| ASL A

|0DC6C5| ADC.w $0DC0,X
|0DC6C8| ASL A
|0DC6C9| ADC.w $0DC0,X

|0DC6CC| ASL A
|0DC6CD| ASL A
|0DC6CE| ASL A

|0DC6CF| ADC.b #<.oam_groups
|0DC6D1| STA.b $08

|0DC6D3| LDA.b #>.oam_groups
|0DC6D5| ADC.b #$00
|0DC6D7| STA.b $09

|0DC6D9| JSL TabulatedSpriteDraw.preset_quantity

|0DC6DD| RTS

;===================================================================================================
; Because his draw data has a head really high above the body.
;===================================================================================================
Sprite_2D_NecklessMan:
|0DC6DE| PHB
|0DC6DF| PHK
|0DC6E0| PLB

|0DC6E1| JSR .main

|0DC6E4| PLB

|0DC6E5| RTL

;---------------------------------------------------------------------------------------------------

.main
|0DC6E6| JSR SpriteDraw_NecklessMan
|0DC6E9| JSR CheckIfActive_bank0D

|0DC6EC| LDA.b #$B3 ; MESSAGE 00B3
|0DC6EE| LDY.b #$00
|0DC6F0| JSL ShowSolicitedMessage

|0DC6F4| JSL BehaveAsBarrier

|0DC6F8| LDA.b $1A
|0DC6FA| LSR A
|0DC6FB| ORA.b $1A

|0DC6FD| LSR A
|0DC6FE| LSR A
|0DC6FF| LSR A
|0DC700| LSR A

|0DC701| AND.b #$01
|0DC703| STA.w $0DC0,X

|0DC706| RTS

;===================================================================================================

pool SpriteDraw_NecklessMan

.oam_groups
; group00
|0DC707| dw   4, -14 : db $AE, $00, $00, $00
|0DC70F| dw   0, -16 : db $82, $00, $00, $02
|0DC717| dw   0,   0 : db $AA, $00, $00, $02

; group01
|0DC71F| dw   4, -16 : db $AE, $00, $00, $00
|0DC727| dw   0, -16 : db $80, $00, $00, $02
|0DC72F| dw   0,   0 : db $A0, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_NecklessMan:
|0DC737| LDA.b #$03
|0DC739| STA.b $06
|0DC73B| STZ.b $07

|0DC73D| LDA.w $0DC0,X
|0DC740| ASL A
|0DC741| ADC.w $0DC0,X

|0DC744| ASL A
|0DC745| ASL A
|0DC746| ASL A

|0DC747| ADC.b #<.oam_groups
|0DC749| STA.b $08

|0DC74B| LDA.b #>.oam_groups
|0DC74D| ADC.b #$00
|0DC74F| STA.b $09

|0DC751| JSL TabulatedSpriteDraw.player_deferred
|0DC755| JSL DrawSpriteShadow_long

|0DC759| RTS

;===================================================================================================

Sprite_31_FortuneTeller:
|0DC75A| PHB
|0DC75B| PHK
|0DC75C| PLB

|0DC75D| JSR .main

|0DC760| PLB

|0DC761| RTL

;---------------------------------------------------------------------------------------------------

.main
|0DC762| LDA.w $0E80,X
|0DC765| JSL JumpTableLocal
|0DC769| dw FortuneTeller
|0DC76B| dw SmithyBlockade

;===================================================================================================
; This is so dumb.
;===================================================================================================
SmithyBlockade:
|0DC76D| JSR CheckIfActive_bank0D

|0DC770| JSL CheckDamageToLink_same_layer_long
|0DC774| BCC .exit

|0DC776| PHX

|0DC777| JSL AbortMovement

|0DC77B| STZ.b $5E

|0DC77D| JSL CancelDash_long

|0DC781| PLX

.exit
|0DC782| RTS

;===================================================================================================

FortuneTeller:
|0DC783| JSR SpriteDraw_FortuneTeller
|0DC786| JSR CheckIfActive_bank0D

|0DC789| LDA.l $7EF3CA
|0DC78D| ASL A
|0DC78E| ROL A
|0DC78F| ROL A
|0DC790| AND.b #$01

|0DC792| JSL JumpTableLocal
|0DC796| dw FortuneTeller_LightWorld
|0DC798| dw FortuneTeller_DarkWorld

;===================================================================================================

FortuneTeller_LightWorld:
|0DC79A| LDA.w $0D80,X
|0DC79D| JSL JumpTableLocal
|0DC7A1| dw FortuneTeller_LightWorld_PrecognizantResponse
|0DC7A3| dw FortuneTeller_LightWorld_Reject
|0DC7A5| dw FortuneTeller_LightWorld_OfferReading
|0DC7A7| dw FortuneTeller_LightWorld_HandleResponse
|0DC7A9| dw FortuneTeller_PerformPseudoScience
|0DC7AB| dw FortuneTeller_LightWorld_DemandPayment
|0DC7AD| dw FortuneTeller_LightWorld_TakeMoney
|0DC7AF| dw FortuneTeller_LightWorld_DoNothing

;===================================================================================================

FortunePrices:
|0DC7B1| dw  10,  15,  20,  30

;===================================================================================================

FortuneTeller_LightWorld_PrecognizantResponse:
|0DC7B9| STZ.w $0DC0,X

|0DC7BC| JSL GetRandomNumber
|0DC7C0| AND.b #$03
|0DC7C2| ASL A
|0DC7C3| STA.w $0D90,X

|0DC7C6| TAY

|0DC7C7| REP #$20

|0DC7C9| LDA.l $7EF360
|0DC7CD| CMP.w FortunePrices,Y

|0DC7D0| SEP #$30
|0DC7D2| BCS .enough_rupees

|0DC7D4| INC.w $0D80,X

|0DC7D7| RTS

.enough_rupees
|0DC7D8| LDA.b #$02
|0DC7DA| STA.w $0D80,X

|0DC7DD| RTS

;===================================================================================================

FortuneTeller_LightWorld_Reject:
|0DC7DE| LDA.b #$F0 ; MESSAGE 00F0
|0DC7E0| LDY.b #$00
|0DC7E2| JSL ShowSolicitedMessage

|0DC7E6| RTS

;===================================================================================================

FortuneTeller_LightWorld_OfferReading:
|0DC7E7| LDA.b #$F1 ; MESSAGE 00F1
|0DC7E9| LDY.b #$00
|0DC7EB| JSL ShowSolicitedMessage
|0DC7EF| BCC .exit

|0DC7F1| INC.w $0D80,X

|0DC7F4| LDA.b #$FF
|0DC7F6| STA.w $0DF0,X

|0DC7F9| LDA.b #$01
|0DC7FB| STA.w $02E4

.exit
|0DC7FE| RTS

;===================================================================================================

FortuneTeller_LightWorld_HandleResponse:
|0DC7FF| LDA.w $1CE8
|0DC802| BNE .rejected

|0DC804| LDA.w $0DF0,X
|0DC807| BNE .delay

|0DC809| INC.w $0D80,X

.delay
|0DC80C| LDA.b $1A
|0DC80E| LSR A
|0DC80F| LSR A
|0DC810| LSR A
|0DC811| LSR A

|0DC812| AND.b #$01
|0DC814| STA.w $0DC0,X

|0DC817| RTS

.rejected
|0DC818| LDA.b #$02
|0DC81A| STA.w $0D80,X

|0DC81D| STZ.w $02E4

|0DC820| RTS

;===================================================================================================

FortuneTellerMessage:

.low
|0DC821| db $E8 ; MESSAGE 00E8
|0DC822| db $E9 ; MESSAGE 00E9
|0DC823| db $EA ; MESSAGE 00EA
|0DC824| db $EB ; MESSAGE 00EB
|0DC825| db $EC ; MESSAGE 00EC
|0DC826| db $ED ; MESSAGE 00ED
|0DC827| db $EE ; MESSAGE 00EE
|0DC828| db $EF ; MESSAGE 00EF
|0DC829| db $F4 ; MESSAGE 00F4
|0DC82A| db $F5 ; MESSAGE 00F5
|0DC82B| db $F6 ; MESSAGE 00F6
|0DC82C| db $F7 ; MESSAGE 00F7
|0DC82D| db $F8 ; MESSAGE 00F8
|0DC82E| db $F9 ; MESSAGE 00F9
|0DC82F| db $FA ; MESSAGE 00FA
|0DC830| db $FB ; MESSAGE 00FB

.high
|0DC831| db $00
|0DC832| db $00
|0DC833| db $00
|0DC834| db $00
|0DC835| db $00
|0DC836| db $00
|0DC837| db $00
|0DC838| db $00
|0DC839| db $00
|0DC83A| db $00
|0DC83B| db $00
|0DC83C| db $00
|0DC83D| db $00
|0DC83E| db $00
|0DC83F| db $00
|0DC840| db $00

;===================================================================================================

FortuneTeller_PerformPseudoScience:
|0DC841| STZ.w $0DC0,X

|0DC844| INC.w $0D80,X

|0DC847| STZ.b $03

|0DC849| LDA.l $7EF3C7
|0DC84D| CMP.b #$03
|0DC84F| BCS .map_icon_past_pendants

|0DC851| STZ.b $00
|0DC853| STZ.b $01

|0DC855| JMP.w FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.map_icon_past_pendants
|0DC858| LDA.l $7EF34E
|0DC85C| BNE .have_book

|0DC85E| LDA.b #$02
|0DC860| JSR FortuneTeller_PrepareNextMessage
|0DC863| BCC .have_book

|0DC865| JMP.w FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_book
|0DC868| LDA.l $7EF374
|0DC86C| AND.b #$02
|0DC86E| BNE .have_wisdom

|0DC870| LDA.b #$01
|0DC872| JSR FortuneTeller_PrepareNextMessage
|0DC875| BCC .have_wisdom

|0DC877| JMP.w FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_wisdom
|0DC87A| LDA.l $7EF344
|0DC87E| CMP.b #$02
|0DC880| BCS .have_powder

|0DC882| LDA.b #$03
|0DC884| JSR FortuneTeller_PrepareNextMessage
|0DC887| BCC .have_powder

|0DC889| JMP.w FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_powder
|0DC88C| LDA.l $7EF356
|0DC890| BNE .have_flippers

|0DC892| LDA.b #$04
|0DC894| JSR FortuneTeller_PrepareNextMessage
|0DC897| BCC .have_flippers

|0DC899| JMP.w FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_flippers
|0DC89C| LDA.l $7EF357
|0DC8A0| BNE .have_pearl

|0DC8A2| LDA.b #$05
|0DC8A4| JSR FortuneTeller_PrepareNextMessage
|0DC8A7| BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_pearl
|0DC8A9| LDA.l $7EF3C5
|0DC8AD| CMP.b #$03
|0DC8AF| BCS .aga_defeated

|0DC8B1| LDA.b #$06
|0DC8B3| JSR FortuneTeller_PrepareNextMessage
|0DC8B6| BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.aga_defeated
|0DC8B8| LDA.l $7EF37B
|0DC8BC| BNE .have_magic_upgrade

|0DC8BE| LDA.b #$07
|0DC8C0| JSR FortuneTeller_PrepareNextMessage
|0DC8C3| BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_magic_upgrade
|0DC8C5| LDA.l $7EF347
|0DC8C9| BNE .have_bombos

|0DC8CB| LDA.b #$08
|0DC8CD| JSR FortuneTeller_PrepareNextMessage
|0DC8D0| BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_bombos
|0DC8D2| LDA.l $7EF3C9
|0DC8D6| AND.b #$10
|0DC8D8| BNE .have_purple_chest_bottle

|0DC8DA| LDA.b #$09
|0DC8DC| JSR FortuneTeller_PrepareNextMessage
|0DC8DF| BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_purple_chest_bottle
|0DC8E1| LDA.l $7EF3C9
|0DC8E5| AND.b #$20
|0DC8E7| BNE .rescued_smithy

|0DC8E9| LDA.b #$0A
|0DC8EB| JSR FortuneTeller_PrepareNextMessage
|0DC8EE| BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.rescued_smithy
|0DC8F0| LDA.l $7EF352
|0DC8F4| BNE .have_cape

|0DC8F6| LDA.b #$0B
|0DC8F8| JSR FortuneTeller_PrepareNextMessage
|0DC8FB| BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_cape
|0DC8FD| LDA.l $7EF2DB
|0DC901| AND.b #$02
|0DC903| BNE .opened_fat_fairy

|0DC905| LDA.b #$0C
|0DC907| JSR FortuneTeller_PrepareNextMessage
|0DC90A| BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.opened_fat_fairy
|0DC90C| LDA.l $7EF359
|0DC910| CMP.b #$04
|0DC912| BCS .have_butter

|0DC914| LDA.b #$0D
|0DC916| JSR FortuneTeller_PrepareNextMessage
|0DC919| BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_butter
|0DC91B| LDA.b #$0E
|0DC91D| JSR FortuneTeller_PrepareNextMessage
|0DC920| BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

|0DC922| LDA.b #$0F
|0DC924| JSR FortuneTeller_PrepareNextMessage

;===================================================================================================

FortuneTeller_DisplayMessage:
|0DC927| LDA.l $7EF3C6
|0DC92B| EOR.b #$40
|0DC92D| STA.l $7EF3C6

|0DC931| AND.b #$40
|0DC933| ROL A
|0DC934| ROL A
|0DC935| ROL A
|0DC936| AND.b #$01
|0DC938| TAY

|0DC939| LDA.w $0000,Y
|0DC93C| TAY

|0DC93D| LDA.w FortuneTellerMessage.low,Y
|0DC940| XBA

|0DC941| LDA.w FortuneTellerMessage.high,Y
|0DC944| TAY

|0DC945| XBA
|0DC946| JSL ShowMessageUnconditional

|0DC94A| RTS

;===================================================================================================

FortuneTeller_PrepareNextMessage:
|0DC94B| LDY.b $03

|0DC94D| STA.w $0000,Y

|0DC950| INY
|0DC951| CPY.b #$02
|0DC953| BCS .exit

|0DC955| STY.b $03

.exit
|0DC957| RTS

;===================================================================================================

FortuneTeller_LightWorld_DemandPayment:
|0DC958| STZ.w $0DC0,X

|0DC95B| REP #$20

|0DC95D| STZ.b $00
|0DC95F| STZ.b $02
|0DC961| STZ.b $04
|0DC963| STZ.b $06

|0DC965| LDY.w $0D90,X

|0DC968| LDA.w FortunePrices,Y
|0DC96B| JMP.w FortuneTeller_DemandPayment

;===================================================================================================

FortuneTeller_LightWorld_TakeMoney:
|0DC96E| LDY.w $0D90,X

|0DC971| REP #$20

|0DC973| LDA.l $7EF360
|0DC977| SEC
|0DC978| SBC.w FortunePrices,Y
|0DC97B| STA.l $7EF360

|0DC97F| SEP #$30

|0DC981| INC.w $0D80,X

|0DC984| LDA.b #$A0
|0DC986| STA.l $7EF372

|0DC98A| STZ.w $02E4

;===================================================================================================

FortuneTeller_LightWorld_DoNothing:
|0DC98D| RTS

;===================================================================================================

FortuneTeller_DarkWorld:
|0DC98E| LDA.w $0D80,X
|0DC991| JSL JumpTableLocal
|0DC995| dw FortuneTeller_DarkWorld_PrecognizantResponse
|0DC997| dw FortuneTeller_DarkWorld_Reject
|0DC999| dw FortuneTeller_DarkWorld_OfferReading
|0DC99B| dw FortuneTeller_DarkWorld_HandleResponse
|0DC99D| dw FortuneTeller_PerformPseudoScience
|0DC99F| dw FortuneTeller_DarkWorld_DemandPayment
|0DC9A1| dw FortuneTeller_DarkWorld_TakeMoney
|0DC9A3| dw FortuneTeller_DarkWorld_DoNothing

;===================================================================================================

FortuneTeller_DarkWorld_PrecognizantResponse:
|0DC9A5| STZ.w $0DC0,X

|0DC9A8| JSL GetRandomNumber
|0DC9AC| AND.b #$03
|0DC9AE| ASL A
|0DC9AF| STA.w $0D90,X

|0DC9B2| TAY

|0DC9B3| REP #$20

|0DC9B5| LDA.l $7EF360
|0DC9B9| CMP.w FortunePrices,Y

|0DC9BC| SEP #$30
|0DC9BE| BCS .too_poor

|0DC9C0| INC.w $0D80,X

|0DC9C3| RTS

.too_poor
|0DC9C4| LDA.b #$02
|0DC9C6| STA.w $0D80,X

|0DC9C9| RTS

;===================================================================================================

FortuneTeller_DarkWorld_Reject:
|0DC9CA| LDA.b #$F0 ; MESSAGE 00F0
|0DC9CC| LDY.b #$00
|0DC9CE| JSL ShowSolicitedMessage

|0DC9D2| RTS

;===================================================================================================

FortuneTeller_DarkWorld_OfferReading:
|0DC9D3| LDA.b #$F1 ; MESSAGE 00F1
|0DC9D5| LDY.b #$00
|0DC9D7| JSL ShowSolicitedMessage
|0DC9DB| BCC .exit

|0DC9DD| INC.w $0D80,X

|0DC9E0| LDA.b #$FF
|0DC9E2| STA.w $0DF0,X

|0DC9E5| LDA.b #$01
|0DC9E7| STA.w $02E4

.exit
|0DC9EA| RTS

;===================================================================================================

FortuneTeller_DarkWorld_HandleResponse:
|0DC9EB| LDA.w $1CE8
|0DC9EE| BNE .rejected

|0DC9F0| LDA.b $1A
|0DC9F2| LSR A ; /16
|0DC9F3| LSR A
|0DC9F4| LSR A
|0DC9F5| LSR A
|0DC9F6| AND.b #$01
|0DC9F8| STA.w $0DC0,X

|0DC9FB| LDA.w $0DF0,X
|0DC9FE| BNE .exit

|0DCA00| INC.w $0D80,X

.exit
|0DCA03| RTS

.rejected
|0DCA04| LDA.b #$02
|0DCA06| STA.w $0D80,X

|0DCA09| STZ.w $02E4

|0DCA0C| RTS

;===================================================================================================

FortuneTeller_DarkWorld_DemandPayment:
|0DCA0D| REP #$20

|0DCA0F| STZ.b $00
|0DCA11| STZ.b $02
|0DCA13| STZ.b $04
|0DCA15| STZ.b $06

|0DCA17| LDY.w $0D90,X

|0DCA1A| LDA.w FortunePrices,Y

;===================================================================================================

FortuneTeller_DemandPayment:

.count1E4
|0DCA1D| CMP.w #$2710 ; 10000
|0DCA20| BCC .count1E3

|0DCA22| SBC.w #$2710 ; 10000
|0DCA25| BRA .count1E4

;---------------------------------------------------------------------------------------------------

.count1E3
|0DCA27| CMP.w #$03E8 ; 1000
|0DCA2A| BCC .count1E2

|0DCA2C| SBC.w #$0064 ; Yes, this is 100. It should be 1000.

|0DCA2F| INC.b $06

|0DCA31| BRA .count1E3

;---------------------------------------------------------------------------------------------------

.count1E2
|0DCA33| CMP.w #$0064 ; 100
|0DCA36| BCC .count1E1

|0DCA38| SBC.w #$0064 ; 100

|0DCA3B| INC.b $04

|0DCA3D| BRA .count1E2

;---------------------------------------------------------------------------------------------------

.count1E1
|0DCA3F| CMP.w #$000A ; 10
|0DCA42| BCC .under10

|0DCA44| SBC.w #$000A ; 10

|0DCA47| INC.b $02

|0DCA49| BRA .count1E1

;---------------------------------------------------------------------------------------------------

.under10
|0DCA4B| STA.b $00

|0DCA4D| SEP #$30

|0DCA4F| LDA.b $00
|0DCA51| ASL A
|0DCA52| ASL A
|0DCA53| ASL A
|0DCA54| ASL A

|0DCA55| ORA.b $02
|0DCA57| STA.w $1CF2

|0DCA5A| LDA.b $06
|0DCA5C| ASL A
|0DCA5D| ASL A
|0DCA5E| ASL A
|0DCA5F| ASL A

|0DCA60| ORA.b $04
|0DCA62| STA.w $1CF3

|0DCA65| LDA.b #$F2 ; MESSAGE 00F2
|0DCA67| LDY.b #$00
|0DCA69| JSL ShowMessageUnconditional

|0DCA6D| INC.w $0D80,X

|0DCA70| RTS

;===================================================================================================

FortuneTeller_DarkWorld_TakeMoney:
|0DCA71| LDY.w $0D90,X

|0DCA74| REP #$20

|0DCA76| LDA.l $7EF360
|0DCA7A| SEC
|0DCA7B| SBC.w FortunePrices,Y
|0DCA7E| STA.l $7EF360

|0DCA82| SEP #$30

|0DCA84| INC.w $0D80,X

|0DCA87| LDA.b #$A0
|0DCA89| STA.l $7EF372

|0DCA8D| STZ.w $02E4

;===================================================================================================

FortuneTeller_DarkWorld_DoNothing:
|0DCA90| RTS

;===================================================================================================

pool SpriteDraw_FortuneTeller

.oam_groups
; group00
|0DCA91| dw   0, -48 : db $0C, $00, $00, $02
|0DCA99| dw   0, -32 : db $2C, $00, $00, $00
|0DCAA1| dw   8, -32 : db $2C, $40, $00, $00

; group01
|0DCAA9| dw   0, -48 : db $0A, $00, $00, $02
|0DCAB1| dw   0, -32 : db $2A, $00, $00, $00
|0DCAB9| dw   8, -32 : db $2A, $40, $00, $00

; group02
|0DCAC1| dw  -4, -40 : db $66, $00, $00, $02
|0DCAC9| dw   4, -40 : db $66, $40, $00, $02
|0DCAD1| dw  -4, -40 : db $66, $00, $00, $02

; group03
|0DCAD9| dw  -4, -40 : db $68, $00, $00, $02
|0DCAE1| dw   4, -40 : db $68, $40, $00, $02
|0DCAE9| dw  -4, -40 : db $68, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_FortuneTeller:
|0DCAF1| LDA.l $7EF3CA
|0DCAF5| ASL A
|0DCAF6| ROL A
|0DCAF7| ROL A
|0DCAF8| AND.b #$01
|0DCAFA| STA.b $00

|0DCAFC| ASL A
|0DCAFD| ADC.b $00
|0DCAFF| ADC.w $0DC0,X

|0DCB02| ASL A
|0DCB03| ADC.w $0DC0,X

|0DCB06| ASL A
|0DCB07| ASL A
|0DCB08| ASL A

|0DCB09| ADC.b #<.oam_groups
|0DCB0B| STA.b $08

|0DCB0D| LDA.b #>.oam_groups
|0DCB0F| ADC.b #$00
|0DCB11| STA.b $09

|0DCB13| LDA.b #$03
|0DCB15| JSL TabulatedSpriteDraw

|0DCB19| RTS

;===================================================================================================

SpawnDumbBarrierSprite:
|0DCB1A| LDA.b #$31 ; SPRITE 31
|0DCB1C| JSL SpawnSpriteDynamically

|0DCB20| LDA.b $00
|0DCB22| STA.w $0D10,Y

|0DCB25| LDA.b $01
|0DCB27| STA.w $0D30,Y

|0DCB2A| LDA.b $02
|0DCB2C| STA.w $0D00,Y

|0DCB2F| LDA.b $03
|0DCB31| STA.w $0D20,Y

|0DCB34| LDA.b #$01
|0DCB36| STA.w $0E80,Y

|0DCB39| LDA.b #$00
|0DCB3B| STA.w $0F60,Y

|0DCB3E| LDA.b #$01
|0DCB40| STA.w $0BA0,Y

|0DCB43| RTL

;===================================================================================================

Sprite_2F_RaceGameLady:
|0DCB44| PHB
|0DCB45| PHK
|0DCB46| PLB

|0DCB47| JSR .main

|0DCB4A| PLB

|0DCB4B| RTL

;---------------------------------------------------------------------------------------------------

.main
|0DCB4C| JSL SpriteDraw_RaceGameLady

|0DCB50| JSR CheckIfActive_bank0D

|0DCB53| JSL TrackBodyToHead
|0DCB57| JSL GetDirectionTowardsLink_long

|0DCB5B| TYA
|0DCB5C| EOR.b #$03
|0DCB5E| STA.w $0EB0,X

|0DCB61| LDA.w $0D80,X
|0DCB64| JSL JumpTableLocal
|0DCB68| dw RaceGameLady_Idle
|0DCB6A| dw RaceGameLady_FireStarterPistol
|0DCB6C| dw RaceGameLady_TimeRun

;===================================================================================================

RaceGameLady_Idle:
|0DCB6E| LDA.w $0D10,X
|0DCB71| CMP.b $22
|0DCB73| BCS .cheater

|0DCB75| LDA.b #$CA ; MESSAGE 00CA
|0DCB77| LDY.b #$00
|0DCB79| JSL ShowMessageOnContact
|0DCB7D| BCC .exit

|0DCB7F| STA.w $0EB0,X
|0DCB82| STA.w $0DE0,X

|0DCB85| INC.w $0D80,X

|0DCB88| LDA.b #$00
|0DCB8A| STA.l $7FFE00
|0DCB8E| STA.l $7FFE01
|0DCB92| STA.l $7FFE02
|0DCB96| STA.l $7FFE03

|0DCB9A| STZ.w $0D90,X

|0DCB9D| STZ.w $0ABF

.exit
|0DCBA0| RTS

.cheater
|0DCBA1| LDA.b #$CE ; MESSAGE 00CE
|0DCBA3| LDY.b #$00
|0DCBA5| JSL ShowMessageOnContact

|0DCBA9| RTS

;===================================================================================================

RaceGameLady_TimeRun:
|0DCBAA| INC.w $0D90,X

|0DCBAD| LDA.w $0D90,X
|0DCBB0| CMP.b #$3F
|0DCBB2| BNE .exit

|0DCBB4| STZ.w $0D90,X

|0DCBB7| REP #$20

|0DCBB9| LDA.l $7FFE00
|0DCBBD| INC A
|0DCBBE| STA.l $7FFE00

|0DCBC2| BNE .dont_increment_higher

|0DCBC4| LDA.l $7FFE02
|0DCBC8| INC A
|0DCBC9| STA.l $7FFE02

.dont_increment_higher
|0DCBCD| SEP #$30

.exit
|0DCBCF| RTS

;===================================================================================================

RaceGameLady_FireStarterPistol:
|0DCBD0| LDA.b #$07 ; SFX3.07
|0DCBD2| JSL QueueSpriteSFX3WithPan

|0DCBD6| INC.w $0D80,X

|0DCBD9| RTS

;===================================================================================================

Sprite_30_RaceGameGuy:
|0DCBDA| PHB
|0DCBDB| PHK
|0DCBDC| PLB

|0DCBDD| JSR .main

|0DCBE0| PLB

|0DCBE1| RTL

;---------------------------------------------------------------------------------------------------

.main
|0DCBE2| JSL SpriteDraw_YoungGamer
|0DCBE6| JSR CheckIfActive_bank0D
|0DCBE9| JSL TrackBodyToHead

|0DCBED| STZ.w $0EB0,X

|0DCBF0| JSL BehaveAsBarrier

|0DCBF4| LDA.b $1A
|0DCBF6| LSR A
|0DCBF7| LSR A
|0DCBF8| LSR A
|0DCBF9| AND.b #$01
|0DCBFB| STA.w $0DC0,X

|0DCBFE| LDA.w $0ABF
|0DCC01| BNE .disqualify_cheater

|0DCC03| LDA.w $0D80,X
|0DCC06| JSL JumpTableLocal
|0DCC0A| dw RaceGameGuy_VerifyRun
|0DCC0C| dw RaceGameGuy_MakeModDecision
|0DCC0E| dw RaceGameGuy_RejectRun
|0DCC10| dw RaceGameGuy_AcceptRun
|0DCC12| dw RaceGameGuy_IdleInDiscord

;---------------------------------------------------------------------------------------------------

.disqualify_cheater
|0DCC14| LDA.b #$CE ; MESSAGE 00CE
|0DCC16| LDY.b #$00
|0DCC18| JSL ShowMessageOnContact

|0DCC1C| RTS

;===================================================================================================

RaceGameGuy_VerifyRun:
|0DCC1D| REP #$20

|0DCC1F| LDA.l $7FFE00
|0DCC23| STA.l $7FFE04

|0DCC27| LDA.l $7FFE02
|0DCC2B| STA.l $7FFE06

|0DCC2F| STZ.b $00
|0DCC31| STZ.b $02
|0DCC33| STZ.b $04
|0DCC35| STZ.b $06

|0DCC37| LDA.l $7FFE04

;---------------------------------------------------------------------------------------------------

.count6E3
|0DCC3B| CMP.w #$1770 ; 6000
|0DCC3E| BCC .count6E2

|0DCC40| SBC.w #$1770 ; 6000
|0DCC43| BRA .count6E3

;---------------------------------------------------------------------------------------------------

.count6E2
|0DCC45| CMP.w #$0258 ; 600
|0DCC48| BCC .count6E1

|0DCC4A| SBC.w #$0258 ; 600

|0DCC4D| INC.b $06

|0DCC4F| BRA .count6E2

;---------------------------------------------------------------------------------------------------

.count6E1
|0DCC51| CMP.w #$003C ; 60
|0DCC54| BCC .count1E1

|0DCC56| SBC.w #$003C ; 60

|0DCC59| INC.b $04

|0DCC5B| BRA .count6E1

;---------------------------------------------------------------------------------------------------

.count1E1
|0DCC5D| CMP.w #$000A ; 10
|0DCC60| BCC .under10

|0DCC62| SBC.w #$000A ; 10

|0DCC65| INC.b $02

|0DCC67| BRA .count1E1

;---------------------------------------------------------------------------------------------------

.under10
|0DCC69| STA.b $00

|0DCC6B| SEP #$30

|0DCC6D| LDA.b $02
|0DCC6F| ASL A
|0DCC70| ASL A
|0DCC71| ASL A
|0DCC72| ASL A

|0DCC73| ORA.b $00
|0DCC75| STA.w $1CF2

|0DCC78| LDA.b $06
|0DCC7A| ASL A
|0DCC7B| ASL A
|0DCC7C| ASL A
|0DCC7D| ASL A

|0DCC7E| ORA.b $04
|0DCC80| STA.w $1CF3

|0DCC83| LDA.b #$C9 ; MESSAGE 00C9
|0DCC85| LDY.b #$00
|0DCC87| JSL ShowMessageOnContact
|0DCC8B| BCC .exit

|0DCC8D| STA.w $0DE0,X
|0DCC90| STA.w $0EB0,X

|0DCC93| INC.w $0D80,X

.exit
|0DCC96| RTS

;===================================================================================================

RaceGameGuy_MakeModDecision:
|0DCC97| INC.w $0D80,X

|0DCC9A| TXY

|0DCC9B| LDX.b $8A
|0DCC9D| LDA.l $7EF280,X

|0DCCA1| TYX

|0DCCA2| AND.b #$40
|0DCCA4| BEQ .prize_available

.prize_obtained
|0DCCA6| INC.w $0D80,X
|0DCCA9| INC.w $0D80,X

|0DCCAC| LDA.b #$CD ; MESSAGE 00CD
|0DCCAE| LDY.b #$00
|0DCCB0| JSL ShowMessageUnconditional

|0DCCB4| RTS

;---------------------------------------------------------------------------------------------------

.prize_available
|0DCCB5| LDA.l $7FFE05
|0DCCB9| BNE .run_doesnt_belong_on_boards

|0DCCBB| LDA.l $7FFE04
|0DCCBF| CMP.b #$10
|0DCCC1| BCS .run_doesnt_belong_on_boards

;---------------------------------------------------------------------------------------------------

.gg
|0DCCC3| INC.w $0D80,X

|0DCCC6| LDA.b #$CB ; MESSAGE 00CB
|0DCCC8| LDY.b #$00
|0DCCCA| JSL ShowMessageUnconditional

|0DCCCE| STA.w $0EB0,X
|0DCCD1| STA.w $0DE0,X

|0DCCD4| RTS

;---------------------------------------------------------------------------------------------------

.run_doesnt_belong_on_boards
|0DCCD5| LDA.b #$CC ; MESSAGE 00CC
|0DCCD7| LDY.b #$00
|0DCCD9| JSL ShowMessageUnconditional

|0DCCDD| STA.w $0EB0,X
|0DCCE0| STA.w $0DE0,X

|0DCCE3| RTS

;===================================================================================================

RaceGameGuy_RejectRun:
|0DCCE4| LDA.b #$CC ; MESSAGE 00CC
|0DCCE6| LDY.b #$00
|0DCCE8| JSL ShowMessageOnContact
|0DCCEC| BCC .exit

|0DCCEE| STA.w $0EB0,X
|0DCCF1| STA.w $0DE0,X

.exit
|0DCCF4| RTS

;===================================================================================================

RaceGameGuy_AcceptRun:
|0DCCF5| LDA.b #$CB ; MESSAGE 00CB
|0DCCF7| LDY.b #$00
|0DCCF9| JSL ShowSolicitedMessage
|0DCCFD| BCC .exit

|0DCCFF| STA.w $0EB0,X
|0DCD02| STA.w $0DE0,X

.exit
|0DCD05| RTS

;===================================================================================================

RaceGameGuy_IdleInDiscord:
|0DCD06| LDA.b #$CD ; MESSAGE 00CD
|0DCD08| LDY.b #$00
|0DCD0A| JSL ShowSolicitedMessage
|0DCD0E| BCC .exit

|0DCD10| STA.w $0EB0,X
|0DCD13| STA.w $0DE0,X

.exit
|0DCD16| RTS

;===================================================================================================

pool SpriteDraw_YoungGamer

.oam_groups
; group00
|0DCD17| dw   0, -10 : db $00, $00, $00, $02
|0DCD1F| dw   0,   0 : db $20, $00, $00, $02

; group01
|0DCD27| dw   0, -10 : db $00, $00, $00, $02
|0DCD2F| dw   0,   0 : db $20, $00, $00, $02

; group02
|0DCD37| dw   0, -10 : db $00, $00, $00, $02
|0DCD3F| dw   0,   0 : db $20, $00, $00, $02

; group03
|0DCD47| dw   0, -10 : db $00, $00, $00, $02
|0DCD4F| dw   0,   0 : db $20, $00, $00, $02

; group04
|0DCD57| dw   0, -10 : db $02, $40, $00, $02
|0DCD5F| dw   0,   0 : db $20, $00, $00, $02

; group05
|0DCD67| dw   0, -10 : db $02, $40, $00, $02
|0DCD6F| dw   0,   0 : db $20, $00, $00, $02

; group06
|0DCD77| dw   0, -10 : db $02, $00, $00, $02
|0DCD7F| dw   0,   0 : db $20, $00, $00, $02

; group07
|0DCD87| dw   0, -10 : db $02, $00, $00, $02
|0DCD8F| dw   0,   0 : db $20, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_YoungGamer:
|0DCD97| PHB
|0DCD98| PHK
|0DCD99| PLB

|0DCD9A| LDA.b #$02
|0DCD9C| STA.b $06
|0DCD9E| STZ.b $07

|0DCDA0| LDA.w $0DE0,X
|0DCDA3| ASL A
|0DCDA4| ADC.w $0DC0,X

|0DCDA7| ASL A
|0DCDA8| ASL A
|0DCDA9| ASL A
|0DCDAA| ASL A

|0DCDAB| ADC.b #<.oam_groups
|0DCDAD| STA.b $08

|0DCDAF| LDA.b #>.oam_groups
|0DCDB1| ADC.b #$00
|0DCDB3| STA.b $09

|0DCDB5| JSL TabulatedSpriteDraw.player_deferred
|0DCDB9| JSL DrawSpriteShadow_long

|0DCDBD| PLB

|0DCDBE| RTL

;===================================================================================================

pool SpriteDraw_Maiden

.oam_groups
; group00
|0DCDBF| dw   1,  -7 : db $20, $01, $00, $02
|0DCDC7| dw   1,   3 : db $22, $01, $00, $02

; group01
|0DCDCF| dw   1,  -7 : db $20, $01, $00, $02
|0DCDD7| dw   1,   3 : db $22, $41, $00, $02

; group02
|0DCDDF| dw   1,  -7 : db $20, $01, $00, $02
|0DCDE7| dw   1,   3 : db $22, $01, $00, $02

; group03
|0DCDEF| dw   1,  -7 : db $20, $01, $00, $02
|0DCDF7| dw   1,   3 : db $22, $41, $00, $02

; group04
|0DCDFF| dw   1,  -7 : db $20, $01, $00, $02
|0DCE07| dw   1,   3 : db $22, $01, $00, $02

; group05
|0DCE0F| dw   1,  -7 : db $20, $01, $00, $02
|0DCE17| dw   1,   3 : db $22, $01, $00, $02

; group06
|0DCE1F| dw   1,  -7 : db $20, $41, $00, $02
|0DCE27| dw   1,   3 : db $22, $41, $00, $02

; group07
|0DCE2F| dw   1,  -7 : db $20, $41, $00, $02
|0DCE37| dw   1,   3 : db $22, $41, $00, $02

;---------------------------------------------------------------------------------------------------

.gfx_offset
|0DCE3F| db $20, $C0
|0DCE41| db $20, $C0
|0DCE43| db $00, $A0
|0DCE45| db $00, $A0
|0DCE47| db $40, $80
|0DCE49| db $40, $60
|0DCE4B| db $40, $80
|0DCE4D| db $40, $60

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Maiden:
|0DCE4F| PHB
|0DCE50| PHK
|0DCE51| PLB

|0DCE52| LDA.b #$02
|0DCE54| STA.b $06
|0DCE56| STZ.b $07

|0DCE58| LDA.w $0DE0,X
|0DCE5B| ASL A
|0DCE5C| ADC.w $0DC0,X
|0DCE5F| ASL A
|0DCE60| TAY

|0DCE61| LDA.w .gfx_offset+0,Y
|0DCE64| STA.w $0AE8

|0DCE67| LDA.w .gfx_offset+1,Y
|0DCE6A| STA.w $0AEA

|0DCE6D| TYA
|0DCE6E| ASL A
|0DCE6F| ASL A
|0DCE70| ASL A

|0DCE71| ADC.b #<.oam_groups
|0DCE73| STA.b $08

|0DCE75| LDA.b #>.oam_groups
|0DCE77| ADC.b #$00
|0DCE79| STA.b $09

|0DCE7B| JSL TabulatedSpriteDraw.player_deferred

|0DCE7F| PLB

|0DCE80| RTL

;===================================================================================================

pool SpriteDraw_Priest

.oam_groups
; group00
|0DCE81| dw   0,  -8 : db $20, $0E, $00, $02
|0DCE89| dw   0,   0 : db $26, $0E, $00, $02

; group01
|0DCE91| dw   0,  -8 : db $20, $0E, $00, $02
|0DCE99| dw   0,   0 : db $26, $4E, $00, $02

; group02
|0DCEA1| dw   0,  -8 : db $0E, $0E, $00, $02
|0DCEA9| dw   0,   0 : db $24, $0E, $00, $02

; group03
|0DCEB1| dw   0,  -8 : db $0E, $0E, $00, $02
|0DCEB9| dw   0,   0 : db $24, $0E, $00, $02

; group04
|0DCEC1| dw   0,  -8 : db $22, $0E, $00, $02
|0DCEC9| dw   0,   0 : db $28, $0E, $00, $02

; group05
|0DCED1| dw   0,  -8 : db $22, $0E, $00, $02
|0DCED9| dw   0,   0 : db $2A, $0E, $00, $02

; group06
|0DCEE1| dw   0,  -8 : db $22, $4E, $00, $02
|0DCEE9| dw   0,   0 : db $28, $4E, $00, $02

; group07
|0DCEF1| dw   0,  -8 : db $22, $4E, $00, $02
|0DCEF9| dw   0,   0 : db $2A, $4E, $00, $02

; group08
|0DCF01| dw  -7,   1 : db $0A, $0E, $00, $02
|0DCF09| dw   3,   3 : db $0C, $0E, $00, $02

; group09
|0DCF11| dw  -7,   1 : db $0A, $0E, $00, $02
|0DCF19| dw   3,   3 : db $0C, $0E, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Priest:
|0DCF21| PHB
|0DCF22| PHK
|0DCF23| PLB

|0DCF24| LDA.w $0DE0,X
|0DCF27| ASL A
|0DCF28| ADC.w $0DC0,X

|0DCF2B| ASL A
|0DCF2C| ASL A
|0DCF2D| ASL A
|0DCF2E| ASL A

|0DCF2F| ADC.b #<.oam_groups
|0DCF31| STA.b $08

|0DCF33| LDA.b #$00
|0DCF35| ADC.b #>.oam_groups
|0DCF37| STA.b $09

|0DCF39| LDA.b #$02
|0DCF3B| STA.b $06
|0DCF3D| STZ.b $07

|0DCF3F| JSL TabulatedSpriteDraw.player_deferred
|0DCF43| JSL DrawSpriteShadow_long

|0DCF47| PLB

|0DCF48| RTL

;===================================================================================================

pool SpriteDraw_FluteKid

.oam_groups
; group00
|0DCF49| dw  -1,  -1 : db $BE, $0A, $00, $00
|0DCF51| dw   0,   0 : db $AA, $0A, $00, $02
|0DCF59| dw   0, -10 : db $A8, $0A, $00, $02
|0DCF61| dw   0,   0 : db $AA, $0A, $00, $02

; group01
|0DCF69| dw  -1,  -1 : db $BE, $0A, $00, $00
|0DCF71| dw   0,   8 : db $BF, $0A, $00, $00
|0DCF79| dw   0, -10 : db $A8, $0A, $00, $02
|0DCF81| dw   0,   0 : db $AA, $0A, $00, $02

; group02
|0DCF89| dw  -1,  -1 : db $BE, $0A, $00, $00
|0DCF91| dw   0,   0 : db $AA, $0A, $00, $02
|0DCF99| dw   0, -10 : db $A8, $0A, $00, $02
|0DCFA1| dw   0,   0 : db $AA, $0A, $00, $02

; group03
|0DCFA9| dw  -1,  -1 : db $BE, $0A, $00, $00
|0DCFB1| dw   0,   8 : db $BF, $0A, $00, $00
|0DCFB9| dw   0, -10 : db $A8, $0A, $00, $02
|0DCFC1| dw   0,   0 : db $AA, $0A, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_FluteKid:
|0DCFC9| PHB
|0DCFCA| PHK
|0DCFCB| PLB

|0DCFCC| LDA.b #$10
|0DCFCE| JSL AllocateOAMInRegionB

|0DCFD2| LDA.w $0DE0,X
|0DCFD5| ASL A
|0DCFD6| ADC.w $0DC0,X

|0DCFD9| ASL A
|0DCFDA| ASL A
|0DCFDB| ASL A
|0DCFDC| ASL A
|0DCFDD| ASL A

|0DCFDE| ADC.b #<.oam_groups
|0DCFE0| STA.b $08

|0DCFE2| LDA.b #>.oam_groups
|0DCFE4| ADC.b #$00
|0DCFE6| STA.b $09

|0DCFE8| LDA.b #$04
|0DCFEA| JSL TabulatedSpriteDraw

|0DCFEE| PLB

|0DCFEF| RTL

;===================================================================================================

pool SpriteDraw_Stumpy

.oam_groups
; group00
|0DCFF0| dw   0, -16 : db $E6, $06, $00, $02
|0DCFF8| dw   0,  -8 : db $C8, $06, $00, $02

; group01
|0DD000| dw   0, -16 : db $E6, $06, $00, $02
|0DD008| dw   0,  -8 : db $CA, $06, $00, $02

; group02
|0DD010| dw   0, -16 : db $E8, $06, $00, $02
|0DD018| dw   0,  -8 : db $CA, $06, $00, $02

; group03
|0DD020| dw   0, -16 : db $CC, $00, $00, $02
|0DD028| dw   0,  -8 : db $DC, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Stumpy:
|0DD030| PHB
|0DD031| PHK
|0DD032| PLB

|0DD033| LDA.b #$02
|0DD035| STA.b $06
|0DD037| STZ.b $07

|0DD039| LDA.w $0DC0,X
|0DD03C| ASL A
|0DD03D| ASL A
|0DD03E| ASL A
|0DD03F| ASL A

|0DD040| ADC.b #<.oam_groups
|0DD042| STA.b $08

|0DD044| LDA.b #>.oam_groups
|0DD046| ADC.b #$00
|0DD048| STA.b $09

|0DD04A| JSL TabulatedSpriteDraw.player_deferred

|0DD04E| PLB

|0DD04F| RTL

;===================================================================================================

pool SpriteDraw_MedallionTabletDebris

.oam_groups
; group00
|0DD050| dw   0,  -3 : db $8B, $00, $00, $00
|0DD058| dw   3,   0 : db $9B, $00, $00, $00
|0DD060| dw  -3,   0 : db $8B, $C0, $00, $00
|0DD068| dw   0,   3 : db $9B, $C0, $00, $00

; group01
|0DD070| dw   0,  -5 : db $8A, $00, $00, $02
|0DD078| dw   5,   0 : db $8A, $00, $00, $02
|0DD080| dw  -5,   0 : db $8A, $00, $00, $02
|0DD088| dw   0,   5 : db $8A, $00, $00, $02

; group02
|0DD090| dw   0,  -7 : db $86, $00, $00, $02
|0DD098| dw   7,   0 : db $86, $00, $00, $02
|0DD0A0| dw  -7,   0 : db $86, $00, $00, $02
|0DD0A8| dw   0,   7 : db $86, $00, $00, $02

; group03
|0DD0B0| dw   0,  -9 : db $86, $80, $00, $02
|0DD0B8| dw   9,   0 : db $86, $80, $00, $02
|0DD0C0| dw  -9,   0 : db $86, $80, $00, $02
|0DD0C8| dw   0,   9 : db $86, $80, $00, $02

; group04
|0DD0D0| dw   0,  -9 : db $86, $C0, $00, $02
|0DD0D8| dw   9,   0 : db $86, $C0, $00, $02
|0DD0E0| dw  -9,   0 : db $86, $C0, $00, $02
|0DD0E8| dw   0,   9 : db $86, $C0, $00, $02

; group05
|0DD0F0| dw   0,  -7 : db $86, $40, $00, $02
|0DD0F8| dw   7,   0 : db $86, $40, $00, $02
|0DD100| dw  -7,   0 : db $86, $40, $00, $02
|0DD108| dw   0,   7 : db $86, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_MedallionTabletDebris:
|0DD110| PHB
|0DD111| PHK
|0DD112| PLB

|0DD113| LDA.b #$14
|0DD115| STA.w $0F50,X

|0DD118| LDA.w $0DC0,X
|0DD11B| ASL A
|0DD11C| ASL A
|0DD11D| ASL A
|0DD11E| ASL A
|0DD11F| ASL A

|0DD120| ADC.b #<.oam_groups
|0DD122| STA.b $08

|0DD124| LDA.b #>.oam_groups
|0DD126| ADC.b #$00
|0DD128| STA.b $09

|0DD12A| LDA.b #$04
|0DD12C| JSL TabulatedSpriteDraw

|0DD130| PLB

|0DD131| RTL

;===================================================================================================

pool SpriteDraw_MedallionTablet

.oam_groups
; group00
|0DD132| dw  -8, -16 : db $8C, $00, $00, $02
|0DD13A| dw   8, -16 : db $8C, $40, $00, $02
|0DD142| dw  -8,   0 : db $AC, $00, $00, $02
|0DD14A| dw   8,   0 : db $AC, $40, $00, $02

; group01
|0DD152| dw  -8, -13 : db $8A, $00, $00, $02
|0DD15A| dw   8, -13 : db $8A, $40, $00, $02
|0DD162| dw  -8,   0 : db $AC, $00, $00, $02
|0DD16A| dw   8,   0 : db $AC, $40, $00, $02

; group02
|0DD172| dw  -8,  -8 : db $8A, $00, $00, $02
|0DD17A| dw   8,  -8 : db $8A, $40, $00, $02
|0DD182| dw  -8,   0 : db $AC, $00, $00, $02
|0DD18A| dw   8,   0 : db $AC, $40, $00, $02

; group03
|0DD192| dw  -8,  -4 : db $8A, $00, $00, $02
|0DD19A| dw   8,  -4 : db $8A, $40, $00, $02
|0DD1A2| dw  -8,   0 : db $AA, $00, $00, $02
|0DD1AA| dw   8,   0 : db $AA, $40, $00, $02

; group04
|0DD1B2| dw  -8,   0 : db $AA, $00, $00, $02
|0DD1BA| dw   8,   0 : db $AA, $40, $00, $02
|0DD1C2| dw  -8,   0 : db $AA, $00, $00, $02
|0DD1CA| dw   8,   0 : db $AA, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_MedallionTablet:
|0DD1D2| PHB
|0DD1D3| PHK
|0DD1D4| PLB

|0DD1D5| LDA.w $0DC0,X
|0DD1D8| ASL A
|0DD1D9| ASL A
|0DD1DA| ASL A
|0DD1DB| ASL A
|0DD1DC| ASL A

|0DD1DD| ADC.b #<.oam_groups
|0DD1DF| STA.b $08

|0DD1E1| LDA.b #>.oam_groups
|0DD1E3| ADC.b #$00
|0DD1E5| STA.b $09

|0DD1E7| LDA.b #$04
|0DD1E9| STA.b $06
|0DD1EB| STZ.b $07

|0DD1ED| JSL TabulatedSpriteDraw.player_deferred

|0DD1F1| PLB

|0DD1F2| RTL

;===================================================================================================

pool SpriteDraw_Uncle

.oam_groups
; group00
|0DD1F3| dw   0, -10 : db $00, $0E, $00, $02
|0DD1FB| dw   0,   0 : db $06, $0C, $00, $02
|0DD203| dw   0, -10 : db $00, $0E, $00, $02
|0DD20B| dw   0,   0 : db $06, $0C, $00, $02
|0DD213| dw   0, -10 : db $00, $0E, $00, $02
|0DD21B| dw   0,   0 : db $06, $0C, $00, $02

; group01
|0DD223| dw   0, -10 : db $02, $0E, $00, $02
|0DD22B| dw   0,   0 : db $06, $0C, $00, $02
|0DD233| dw   0, -10 : db $02, $0E, $00, $02
|0DD23B| dw   0,   0 : db $06, $0C, $00, $02
|0DD243| dw   0, -10 : db $02, $0E, $00, $02
|0DD24B| dw   0,   0 : db $06, $0C, $00, $02

; group02
|0DD253| dw  -7,   2 : db $07, $0D, $00, $02
|0DD25B| dw  -7,   2 : db $07, $0D, $00, $02
|0DD263| dw  10,  12 : db $05, $8D, $00, $00
|0DD26B| dw  10,   4 : db $15, $8D, $00, $00
|0DD273| dw   0, -10 : db $00, $0E, $00, $02
|0DD27B| dw   0,   0 : db $04, $0C, $00, $02

; group03
|0DD283| dw  -7,   1 : db $07, $0D, $00, $02
|0DD28B| dw  -7,   1 : db $07, $0D, $00, $02
|0DD293| dw  10,  13 : db $05, $8D, $00, $00
|0DD29B| dw  10,   5 : db $15, $8D, $00, $00
|0DD2A3| dw   0,  -9 : db $00, $0E, $00, $02
|0DD2AB| dw   0,   1 : db $04, $4C, $00, $02

; group04
|0DD2B3| dw  -7,   8 : db $05, $8D, $00, $00
|0DD2BB| dw   1,   8 : db $06, $8D, $00, $00
|0DD2C3| dw   0, -10 : db $02, $0E, $00, $02
|0DD2CB| dw  -6,  -1 : db $07, $4D, $00, $02
|0DD2D3| dw   0,   0 : db $23, $0C, $00, $02
|0DD2DB| dw   0,   0 : db $23, $0C, $00, $02

; group05
|0DD2E3| dw  -9,   7 : db $05, $8D, $00, $00
|0DD2EB| dw  -1,   7 : db $06, $8D, $00, $00
|0DD2F3| dw   0,  -9 : db $02, $0E, $00, $02
|0DD2FB| dw  -6,   0 : db $07, $4D, $00, $02
|0DD303| dw   0,   1 : db $25, $0C, $00, $02
|0DD30B| dw   0,   1 : db $25, $0C, $00, $02

; group06
|0DD313| dw -10, -17 : db $07, $0D, $00, $02
|0DD31B| dw  15, -12 : db $15, $8D, $00, $00
|0DD323| dw  15,  -4 : db $05, $8D, $00, $00
|0DD32B| dw   0, -28 : db $08, $0E, $00, $02
|0DD333| dw  -8, -19 : db $20, $0C, $00, $02
|0DD33B| dw   8, -19 : db $20, $4C, $00, $02

; group07
|0DD343| dw   0, -28 : db $08, $0E, $00, $02
|0DD34B| dw   0, -28 : db $08, $0E, $00, $02
|0DD353| dw  -8, -19 : db $20, $0C, $00, $02
|0DD35B| dw   8, -19 : db $20, $4C, $00, $02
|0DD363| dw  -8, -19 : db $20, $0C, $00, $02
|0DD36B| dw   8, -19 : db $20, $4C, $00, $02

;---------------------------------------------------------------------------------------------------

.source_1
|0DD373| db $08
|0DD374| db $08
|0DD375| db $00
|0DD376| db $00
|0DD377| db $06
|0DD378| db $06
|0DD379| db $00

;---------------------------------------------------------------------------------------------------

.source_2
|0DD37A| db $00
|0DD37B| db $00
|0DD37C| db $00
|0DD37D| db $00
|0DD37E| db $04
|0DD37F| db $04
|0DD380| db $00

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Uncle:
|0DD381| PHB
|0DD382| PHK
|0DD383| PLB

|0DD384| LDA.b #$18
|0DD386| JSL AllocateOAMInRegionB

|0DD38A| REP #$20

|0DD38C| LDA.w $0DC0,X
|0DD38F| AND.w #$00FF
|0DD392| STA.b $00

|0DD394| LDA.w $0DE0,X
|0DD397| AND.w #$00FF
|0DD39A| STA.b $02

|0DD39C| ASL A
|0DD39D| ADC.b $02
|0DD39F| ADC.b $00

|0DD3A1| ASL A
|0DD3A2| ADC.b $00

|0DD3A4| ASL A
|0DD3A5| ASL A
|0DD3A6| ASL A
|0DD3A7| ASL A

|0DD3A8| ADC.w #.oam_groups
|0DD3AB| STA.b $08

|0DD3AD| LDA.w #$0006
|0DD3B0| STA.b $06

|0DD3B2| SEP #$30

|0DD3B4| LDA.w $0DE0,X
|0DD3B7| ASL A
|0DD3B8| ADC.w $0DC0,X
|0DD3BB| TAY

|0DD3BC| LDA.w .source_1,Y
|0DD3BF| STA.w $0107

|0DD3C2| LDA.w .source_2,Y
|0DD3C5| STA.w $0108

|0DD3C8| JSL TabulatedSpriteDraw.preset_quantity

|0DD3CC| LDA.w $0DE0,X
|0DD3CF| BEQ .no_shadow

|0DD3D1| CMP.b #$03
|0DD3D3| BEQ .no_shadow

|0DD3D5| JSL DrawSpriteShadow_long

.no_shadow
|0DD3D9| PLB

|0DD3DA| RTL

;===================================================================================================

pool SpriteDraw_SickKid

.oam_groups
; group00
|0DD3DB| dw   4,   0 : db $27, $00, $00, $00
|0DD3E3| dw   0,  -5 : db $0E, $00, $00, $02
|0DD3EB| dw  -8,   6 : db $0A, $04, $00, $02
|0DD3F3| dw   8,   6 : db $0A, $44, $00, $02
|0DD3FB| dw  -8,  14 : db $0A, $84, $00, $02
|0DD403| dw   8,  14 : db $0A, $C4, $00, $02

; group01
|0DD40B| dw   0,  -5 : db $0E, $00, $00, $02
|0DD413| dw   0,  -5 : db $0E, $00, $00, $02
|0DD41B| dw  -8,   6 : db $0A, $04, $00, $02
|0DD423| dw   8,   6 : db $0A, $44, $00, $02
|0DD42B| dw  -8,  14 : db $0A, $84, $00, $02
|0DD433| dw   8,  14 : db $0A, $C4, $00, $02

; group02
|0DD43B| dw   0,  -5 : db $2E, $00, $00, $02
|0DD443| dw   0,  -5 : db $2E, $00, $00, $02
|0DD44B| dw  -8,   7 : db $0A, $04, $00, $02
|0DD453| dw   8,   7 : db $0A, $44, $00, $02
|0DD45B| dw  -8,  14 : db $0A, $84, $00, $02
|0DD463| dw   8,  14 : db $0A, $C4, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_SickKid:
|0DD46B| PHB
|0DD46C| PHK
|0DD46D| PLB

|0DD46E| LDA.b #$06
|0DD470| STA.b $06
|0DD472| STZ.b $07

|0DD474| LDA.w $0DC0,X
|0DD477| ASL A
|0DD478| ADC.w $0DC0,X

|0DD47B| ASL A
|0DD47C| ASL A
|0DD47D| ASL A
|0DD47E| ASL A

|0DD47F| ADC.b #<.oam_groups
|0DD481| STA.b $08

|0DD483| LDA.b #>.oam_groups
|0DD485| ADC.b #$00
|0DD487| STA.b $09

|0DD489| JSL TabulatedSpriteDraw.player_deferred

|0DD48D| PLB

|0DD48E| RTL

;===================================================================================================

CheckIfActive_bank0D:
|0DD48F| LDA.w $0DD0,X
|0DD492| CMP.b #$09
|0DD494| BNE .inactive

|0DD496| LDA.w $0FC1
|0DD499| BNE .inactive

|0DD49B| LDA.b $11
|0DD49D| BNE .inactive

|0DD49F| LDA.w $0CAA,X
|0DD4A2| BMI .active

|0DD4A4| LDA.w $0F00,X
|0DD4A7| BEQ .active

.inactive
|0DD4A9| PLA
|0DD4AA| PLA

.active
|0DD4AB| RTS

;===================================================================================================

pool SpriteDraw_Zirro

.oam_groups
; group00
|0DD4AC| dw   0,   0 : db $C6, $40, $00, $02
|0DD4B4| dw   0,   0 : db $C6, $40, $00, $02

; group01
|0DD4BC| dw   0,   0 : db $C4, $40, $00, $02
|0DD4C4| dw   0,   0 : db $C4, $40, $00, $02

; group02
|0DD4CC| dw   0,   0 : db $C6, $00, $00, $02
|0DD4D4| dw   0,   0 : db $C6, $00, $00, $02

; group03
|0DD4DC| dw   0,   0 : db $C4, $00, $00, $02
|0DD4E4| dw   0,   0 : db $C4, $00, $00, $02

; group04
|0DD4EC| dw  -8,   0 : db $C0, $00, $00, $02
|0DD4F4| dw   8,   0 : db $C0, $40, $00, $02

; group05
|0DD4FC| dw  -8,   0 : db $C2, $00, $00, $02
|0DD504| dw   8,   0 : db $C2, $40, $00, $02

; group06
|0DD50C| dw  -8,   0 : db $E0, $00, $00, $02
|0DD514| dw   8,   0 : db $E0, $40, $00, $02

; group07
|0DD51C| dw  -8,   0 : db $E2, $00, $00, $02
|0DD524| dw   8,   0 : db $E2, $40, $00, $02

; group08
|0DD52C| dw  -8,   0 : db $E4, $00, $00, $02
|0DD534| dw   8,   0 : db $E4, $40, $00, $02

; group09
|0DD53C| dw   0,   0 : db $E6, $40, $00, $02
|0DD544| dw   0,   0 : db $E6, $40, $00, $02

; group0A
|0DD54C| dw   0,   0 : db $E6, $00, $00, $02
|0DD554| dw   0,   0 : db $E6, $00, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Zirro:
|0DD55C| PHB
|0DD55D| PHK
|0DD55E| PLB

|0DD55F| LDA.b #$00
|0DD561| XBA
|0DD562| LDA.w $0DC0,X

|0DD565| REP #$20

|0DD567| ASL A
|0DD568| ASL A
|0DD569| ASL A
|0DD56A| ASL A

|0DD56B| ADC.w #.oam_groups
|0DD56E| STA.b $08

|0DD570| SEP #$20

|0DD572| LDA.b #$02
|0DD574| JSL TabulatedSpriteDraw

|0DD578| JSL DrawSpriteShadow_long

|0DD57C| PLB

|0DD57D| RTL

;===================================================================================================

pool SpriteDraw_ZirroBomb

.oam_groups
; group00
|0DD57E| dw -11,   0 : db $9B, $01, $00, $00
|0DD586| dw   0,  -8 : db $9B, $C1, $00, $00
|0DD58E| dw   6,   6 : db $9B, $41, $00, $00

; group01
|0DD596| dw -15,  -6 : db $8A, $01, $00, $02
|0DD59E| dw  -4, -14 : db $8A, $01, $00, $02
|0DD5A6| dw   2,   0 : db $8A, $01, $00, $02

; group02
|0DD5AE| dw -15,  -6 : db $86, $01, $00, $02
|0DD5B6| dw  -4, -14 : db $86, $01, $00, $02
|0DD5BE| dw   2,   0 : db $86, $01, $00, $02

; group03
|0DD5C6| dw  -4,  -4 : db $86, $01, $00, $02
|0DD5CE| dw  -4,  -4 : db $86, $01, $00, $02
|0DD5D6| dw  -4,  -4 : db $86, $01, $00, $02

; group04
|0DD5DE| dw  -4,  -4 : db $AA, $01, $00, $02
|0DD5E6| dw  -4,  -4 : db $AA, $01, $00, $02
|0DD5EE| dw  -4,  -4 : db $AA, $01, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_ZirroBomb:
|0DD5F6| PHB
|0DD5F7| PHK
|0DD5F8| PLB

|0DD5F9| LDA.w $0DF0,X
|0DD5FC| BNE .dont_delete_self

|0DD5FE| STZ.w $0DD0,X

.dont_delete_self
|0DD601| LSR A
|0DD602| LSR A
|0DD603| PHA

|0DD604| LDA.b #$00
|0DD606| XBA

|0DD607| PLA

|0DD608| REP #$20

|0DD60A| ASL A
|0DD60B| ASL A
|0DD60C| ASL A
|0DD60D| STA.b $00

|0DD60F| ASL A
|0DD610| ADC.b $00
|0DD612| ADC.w #.oam_groups
|0DD615| STA.b $08

|0DD617| SEP #$20

|0DD619| LDA.b #$03
|0DD61B| JSL TabulatedSpriteDraw

|0DD61F| PLB

|0DD620| RTL

;===================================================================================================

PlayerBee_HoneInOnTarget:
|0DD621| LDA.w $0E20,Y
|0DD624| CMP.b #$88 ; SPRITE 88
|0DD626| BEQ .attack_mothula

; ignore other bosses
|0DD628| LDA.w $0B6B,Y
|0DD62B| AND.b #$02
|0DD62D| BNE .exit

.attack_mothula
|0DD62F| LDA.w $0D10,Y
|0DD632| STA.b $00

|0DD634| LDA.w $0D30,Y
|0DD637| STA.b $01

|0DD639| LDA.w $0D00,Y
|0DD63C| STA.b $02

|0DD63E| LDA.w $0D20,Y
|0DD641| STA.b $03

|0DD643| REP #$20

|0DD645| LDA.w $0FD8
|0DD648| SEC
|0DD649| SBC.b $00
|0DD64B| CLC
|0DD64C| ADC.w #$0010

|0DD64F| CMP.w #$0018
|0DD652| BCS .exit

|0DD654| LDA.w $0FDA
|0DD657| SEC
|0DD658| SBC.b $02
|0DD65A| CLC
|0DD65B| ADC.w #$FFF8

|0DD65E| CMP.w #$0018
|0DD661| BCS .exit

|0DD663| SEP #$20

|0DD665| LDA.w $0E20,Y

|0DD668| CMP.b #$75 ; SPRITE 75
|0DD66A| BNE .not_bottle_vendor

|0DD66C| TXA
|0DD66D| INC A
|0DD66E| STA.w $0E90,Y

|0DD671| RTL

;---------------------------------------------------------------------------------------------------

.not_bottle_vendor
|0DD672| LDA.b #$01

|0DD674| PHY
|0DD675| PHX

|0DD676| TYX

|0DD677| JSL CheckAncillaDamageToSprite_preset

|0DD67B| PLX
|0DD67C| PLY

|0DD67D| LDA.b #$0F
|0DD67F| STA.w $0EA0,Y

|0DD682| LDA.w $0D50,X
|0DD685| ASL A
|0DD686| STA.w $0F40,Y

|0DD689| LDA.w $0D40,X
|0DD68C| ASL A
|0DD68D| STA.w $0F30,Y

|0DD690| INC.w $0DA0,X

.exit
|0DD693| SEP #$20

|0DD695| RTL

;===================================================================================================

pool SpriteDraw_Pikit

.oam_groups
; group00
|0DD696| dw   0,   0 : db $C8, $00, $00, $02
|0DD69E| dw   0,   0 : db $C8, $00, $00, $02

; group01
|0DD6A6| dw   0,   0 : db $CA, $00, $00, $02
|0DD6AE| dw   0,   0 : db $CA, $00, $00, $02

; group02
|0DD6B6| dw  -8,   0 : db $CC, $00, $00, $02
|0DD6BE| dw   8,   0 : db $CC, $40, $00, $02

; group03
|0DD6C6| dw  -8,   0 : db $CE, $00, $00, $02
|0DD6CE| dw   8,   0 : db $CE, $40, $00, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Pikit:
|0DD6D6| PHB
|0DD6D7| PHK
|0DD6D8| PLB

|0DD6D9| JSR SpriteDraw_PikitTongue

;---------------------------------------------------------------------------------------------------

|0DD6DC| LDY.b #$00

|0DD6DE| LDA.b ($90),Y
|0DD6E0| STA.w $0FB5

|0DD6E3| INY

|0DD6E4| LDA.b ($90),Y
|0DD6E6| STA.w $0FB6

|0DD6E9| LDA.b #$00
|0DD6EB| XBA
|0DD6EC| LDA.w $0DC0,X

|0DD6EF| REP #$20

|0DD6F1| ASL A
|0DD6F2| ASL A
|0DD6F3| ASL A
|0DD6F4| ASL A

|0DD6F5| ADC.w #.oam_groups
|0DD6F8| STA.b $08

|0DD6FA| LDA.b $90
|0DD6FC| CLC
|0DD6FD| ADC.w #$0018
|0DD700| STA.b $90

|0DD702| LDA.b $92
|0DD704| CLC
|0DD705| ADC.w #$0006
|0DD708| STA.b $92

|0DD70A| SEP #$20

|0DD70C| LDA.b #$02
|0DD70E| JSL TabulatedSpriteDraw

;---------------------------------------------------------------------------------------------------

|0DD712| LDA.w $0E40,X
|0DD715| PHA

|0DD716| SEC
|0DD717| SBC.b #$06
|0DD719| STA.w $0E40,X

|0DD71C| JSL DrawSpriteShadow_long

|0DD720| PLA
|0DD721| STA.w $0E40,X

|0DD724| JSR SpriteDraw_PikitLoot

|0DD727| PLB

|0DD728| RTL

;---------------------------------------------------------------------------------------------------

#EXIT_0DD729:
|0DD729| RTS

;===================================================================================================

pool SpriteDraw_PikitTongue

.tongue_char
|0DD72A| db $EE, $FD, $ED, $FD, $EE, $FD, $ED, $FD

.tongue_flip
|0DD732| db $00, $00, $00, $40, $40, $C0, $80, $80

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_PikitTongue:
|0DD73A| LDA.w $0D80,X
|0DD73D| CMP.b #$02
|0DD73F| BNE EXIT_0DD729

|0DD741| LDA.w $0F00,X
|0DD744| BNE EXIT_0DD729

|0DD746| LDA.b $00
|0DD748| CLC
|0DD749| ADC.b #$04
|0DD74B| STA.b $00

|0DD74D| LDY.b #$14
|0DD74F| STA.b ($90),Y

|0DD751| CLC
|0DD752| ADC.w $0D90,X

|0DD755| LDY.b #$00
|0DD757| STA.b ($90),Y

|0DD759| LDA.b $02
|0DD75B| CLC
|0DD75C| ADC.b #$03
|0DD75E| STA.b $02

|0DD760| LDY.b #$15
|0DD762| STA.b ($90),Y

|0DD764| CLC
|0DD765| ADC.w $0DA0,X

|0DD768| LDY.b #$01
|0DD76A| STA.b ($90),Y

|0DD76C| LDA.b #$FE
|0DD76E| LDY.b #$16
|0DD770| STA.b ($90),Y

|0DD772| LDY.b #$02
|0DD774| STA.b ($90),Y

|0DD776| LDA.b $05
|0DD778| LDY.b #$17
|0DD77A| STA.b ($90),Y

|0DD77C| LDY.b #$03
|0DD77E| STA.b ($90),Y

|0DD780| LDA.w $0DE0,X
|0DD783| STA.b $0B

|0DD785| LDA.w $0D90,X
|0DD788| STA.b $0E

|0DD78A| BPL .positive_x

|0DD78C| EOR.b #$FF
|0DD78E| INC A

.positive_x
|0DD78F| STA.b $0C

|0DD791| LDA.w $0DA0,X
|0DD794| STA.b $0F

|0DD796| BPL .positive_y

|0DD798| EOR.b #$FF
|0DD79A| INC A

.positive_y
|0DD79B| STA.b $0D

|0DD79D| LDY.b #$04

|0DD79F| PHX

|0DD7A0| LDX.b #$03

;---------------------------------------------------------------------------------------------------

.next_tongue_object
|0DD7A2| LDA.b $0C
|0DD7A4| STA.w WRMPYA

|0DD7A7| LDA.w .multipliers,X
|0DD7AA| STA.w WRMPYB

|0DD7AD| JSR ThreeNOP

|0DD7B0| LDA.b $0E
|0DD7B2| ASL A

|0DD7B3| LDA.w RDMPYH
|0DD7B6| BCC .positive_x_2

|0DD7B8| EOR.b #$FF
|0DD7BA| INC A

.positive_x_2
|0DD7BB| CLC
|0DD7BC| ADC.b $00
|0DD7BE| STA.b ($90),Y

|0DD7C0| LDA.b $0D
|0DD7C2| STA.w WRMPYA

|0DD7C5| LDA.w .multipliers,X
|0DD7C8| STA.w WRMPYB

|0DD7CB| JSR ThreeNOP

|0DD7CE| LDA.b $0F
|0DD7D0| ASL A

|0DD7D1| LDA.w RDMPYH
|0DD7D4| BCC .positive_y_2

|0DD7D6| EOR.b #$FF
|0DD7D8| INC A

.positive_y_2
|0DD7D9| CLC
|0DD7DA| ADC.b $02
|0DD7DC| INY
|0DD7DD| STA.b ($90),Y

|0DD7DF| PHX

|0DD7E0| LDX.b $0B

|0DD7E2| LDA.w .tongue_char,X
|0DD7E5| INY
|0DD7E6| STA.b ($90),Y

|0DD7E8| INY
|0DD7E9| LDA.w .tongue_flip,X
|0DD7EC| ORA.b $05
|0DD7EE| STA.b ($90),Y

|0DD7F0| PLX

|0DD7F1| INY

|0DD7F2| DEX
|0DD7F3| BPL .next_tongue_object

;---------------------------------------------------------------------------------------------------

|0DD7F5| PLX

|0DD7F6| LDY.b #$00
|0DD7F8| LDA.b #$05
|0DD7FA| JSL CorrectOAMEntries_long

|0DD7FE| RTS

;---------------------------------------------------------------------------------------------------

.multipliers
|0DD7FF| db $33, $66, $99, $CC

;===================================================================================================

ThreeNOP:
|0DD803| NOP ; A one
|0DD804| NOP ; A two
|0DD805| NOP ; A three

|0DD806| RTS ; CHOMP

;===================================================================================================

pool SpriteDraw_PikitLoot

.loot_offset_x
|0DD807| db  -4,   4,  -4,   4
|0DD80B| db   0,   8,   0,   8
|0DD80F| db   0,   8,   0,   8
|0DD813| db   0,   8,   0,   8
|0DD817| db  -4,   4,  -4,   4

.loot_offset_y
|0DD81B| db  -4,  -4,   4,   4
|0DD81F| db  -4,  -4,   4,   4
|0DD823| db  -4,  -4,   4,   4
|0DD827| db  -4,  -4,   4,   4
|0DD82B| db  -4,  -4,   4,   4

.loot_char
|0DD82F| db $6E, $6F, $7E, $7F
|0DD833| db $63, $7C, $73, $7C
|0DD837| db $0B, $7C, $1B, $7C
|0DD83B| db $EC, $F9, $FC, $F9
|0DD83F| db $EA, $EB, $FA, $FB

.loot_prop
|0DD843| db $24
|0DD844| db $24
|0DD845| db $28
|0DD846| db $29
|0DD847| db $2F

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_PikitLoot:
|0DD848| LDA.w $0ED0,X
|0DD84B| BEQ .exit

|0DD84D| DEC A
|0DD84E| CMP.b #$03
|0DD850| BNE .not_shield

|0DD852| LDA.w $0E30,X
|0DD855| CLC
|0DD856| ADC.b #$02

.not_shield
|0DD858| STA.b $02

|0DD85A| LDA.b #$10
|0DD85C| JSL AllocateOAMInRegionC

|0DD860| LDY.b #$00

|0DD862| PHX

|0DD863| LDX.b #$03

.next_loot_object
|0DD865| STX.b $03

|0DD867| LDA.b $02
|0DD869| ASL A
|0DD86A| ASL A
|0DD86B| ORA.b $03
|0DD86D| TAX

|0DD86E| LDA.w $0FB5
|0DD871| CLC
|0DD872| ADC.w .loot_offset_x,X
|0DD875| STA.b ($90),Y

|0DD877| LDA.w $0FB6
|0DD87A| CLC
|0DD87B| ADC.w .loot_offset_y,X

|0DD87E| INY
|0DD87F| STA.b ($90),Y

|0DD881| LDA.w .loot_char,X
|0DD884| INY
|0DD885| STA.b ($90),Y

|0DD887| LDX.b $02

|0DD889| LDA.w .loot_prop,X
|0DD88C| INY
|0DD88D| STA.b ($90),Y

|0DD88F| INY

|0DD890| LDX.b $03
|0DD892| DEX
|0DD893| BPL .next_loot_object

;---------------------------------------------------------------------------------------------------

|0DD895| PLX

|0DD896| LDY.b #$00
|0DD898| LDA.b #$03
|0DD89A| JSL CorrectOAMEntries_long

.exit
|0DD89E| RTS

;===================================================================================================

pool SpriteDraw_Kholdstare

.oam_groups
; group00
|0DD89F| dw  -8,  -8 : db $80, $00, $00, $02
|0DD8A7| dw   8,  -8 : db $82, $00, $00, $02
|0DD8AF| dw  -8,   8 : db $A0, $00, $00, $02
|0DD8B7| dw   8,   8 : db $A2, $00, $00, $02

; group01
|0DD8BF| dw  -7,  -7 : db $80, $00, $00, $02
|0DD8C7| dw   7,  -7 : db $82, $00, $00, $02
|0DD8CF| dw  -7,   7 : db $A0, $00, $00, $02
|0DD8D7| dw   7,   7 : db $A2, $00, $00, $02

; group02
|0DD8DF| dw  -7,  -7 : db $84, $00, $00, $02
|0DD8E7| dw   7,  -7 : db $86, $00, $00, $02
|0DD8EF| dw  -7,   7 : db $A4, $00, $00, $02
|0DD8F7| dw   7,   7 : db $A6, $00, $00, $02

; group03
|0DD8FF| dw  -8,  -8 : db $84, $00, $00, $02
|0DD907| dw   8,  -8 : db $86, $00, $00, $02
|0DD90F| dw  -8,   8 : db $A4, $00, $00, $02
|0DD917| dw   8,   8 : db $A6, $00, $00, $02

;---------------------------------------------------------------------------------------------------

.offset_x
|0DD91F| dw   8,   7,   4,   2
|0DD927| dw   0,  -2,  -4,  -7
|0DD92F| dw  -8,  -7,  -4,  -2
|0DD937| dw   0,   2,   4,   7

.offset_y
|0DD93F| dw   0,   2,   4,   7
|0DD947| dw   8,   7,   4,   2
|0DD94F| dw   0,  -2,  -4,  -7
|0DD957| dw  -8,  -7,  -4,  -2

.char
|0DD95F| db $AC, $AC, $AA, $8C
|0DD963| db $8C, $8C, $AA, $AC
|0DD967| db $AC, $AA, $AA, $8C
|0DD96B| db $8C, $8C, $AA, $AC

.flip
|0DD96F| db $40, $40, $40, $00
|0DD973| db $00, $00, $00, $00
|0DD977| db $80, $80, $80, $80
|0DD97B| db $80, $80, $C0, $C0

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_Kholdstare:
|0DD97F| PHB
|0DD980| PHK
|0DD981| PLB

|0DD982| JSL GetScreenCoordinates_long
|0DD986| BCS .exit

;---------------------------------------------------------------------------------------------------

|0DD988| PHX

|0DD989| LDA.w $0D90,X
|0DD98C| PHA

|0DD98D| ASL A
|0DD98E| TAX

|0DD98F| REP #$20

|0DD991| LDA.b $00
|0DD993| CLC
|0DD994| ADC.w .offset_x,X
|0DD997| STA.b ($90),Y

|0DD999| AND.w #$0100
|0DD99C| STA.b $0E

|0DD99E| LDA.b $02
|0DD9A0| CLC
|0DD9A1| ADC.w .offset_y,X

|0DD9A4| INY
|0DD9A5| STA.b ($90),Y

|0DD9A7| CLC
|0DD9A8| ADC.w #$0010
|0DD9AB| CMP.w #$0100

|0DD9AE| SEP #$20
|0DD9B0| BCC .on_screen

|0DD9B2| LDA.b #$F0
|0DD9B4| STA.b ($90),Y

.on_screen
|0DD9B6| PLX

|0DD9B7| LDA.w .char,X
|0DD9BA| INY
|0DD9BB| STA.b ($90),Y

|0DD9BD| LDA.w .flip,X
|0DD9C0| ORA.b $05
|0DD9C2| INY
|0DD9C3| STA.b ($90),Y

|0DD9C5| TYA
|0DD9C6| LSR A
|0DD9C7| LSR A
|0DD9C8| TAY

|0DD9C9| LDA.b #$02
|0DD9CB| ORA.b $0F
|0DD9CD| STA.b ($92),Y

;---------------------------------------------------------------------------------------------------

|0DD9CF| PLX

|0DD9D0| LDA.b #$00
|0DD9D2| XBA
|0DD9D3| LDA.w $0DC0,X

|0DD9D6| REP #$20

|0DD9D8| ASL A
|0DD9D9| ASL A
|0DD9DA| ASL A
|0DD9DB| ASL A
|0DD9DC| ASL A

|0DD9DD| ADC.w #.oam_groups
|0DD9E0| STA.b $08

|0DD9E2| LDA.b $90
|0DD9E4| CLC
|0DD9E5| ADC.w #$0004
|0DD9E8| STA.b $90

|0DD9EA| INC.b $92

|0DD9EC| SEP #$20

|0DD9EE| LDA.b #$04
|0DD9F0| JSL TabulatedSpriteDraw

.exit
|0DD9F4| PLB

|0DD9F5| RTL

;===================================================================================================

ShootFireball:
|0DD9F6| PHB
|0DD9F7| PHK
|0DD9F8| PLB

|0DD9F9| LDA.b #$19 ; SFX3.19
|0DD9FB| JSL QueueSpriteSFX3WithPan

|0DD9FF| LDY.b #$0D
|0DDA01| LDA.b #$55 ; SPRITE 55
|0DDA03| JSL SpawnSpriteDynamically.slot_limited
|0DDA07| BMI .no_space

|0DDA09| LDA.b $00
|0DDA0B| CLC
|0DDA0C| ADC.b #$04
|0DDA0E| STA.w $0D10,Y

|0DDA11| LDA.b $01
|0DDA13| ADC.b #$00
|0DDA15| STA.w $0D30,Y

|0DDA18| LDA.b $02
|0DDA1A| CLC
|0DDA1B| ADC.b #$04
|0DDA1D| PHP

|0DDA1E| SEC
|0DDA1F| SBC.b $04
|0DDA21| STA.w $0D00,Y

|0DDA24| LDA.b $03
|0DDA26| SBC.b #$00

|0DDA28| PLP
|0DDA29| ADC.b #$00
|0DDA2B| STA.w $0D20,Y

|0DDA2E| LDA.w $0E60,Y
|0DDA31| AND.b #$FE
|0DDA33| ORA.b #$40
|0DDA35| STA.w $0E60,Y

|0DDA38| LDA.b #$06
|0DDA3A| STA.w $0F50,Y

|0DDA3D| LDA.b #$54
|0DDA3F| STA.w $0F60,Y
|0DDA42| STA.w $0E90,Y

|0DDA45| LDA.b #$20
|0DDA47| STA.w $0E40,Y

|0DDA4A| PHX

|0DDA4B| TYX

|0DDA4C| LDA.b #$20
|0DDA4E| JSL ApplySpeedTowardsLink_long

|0DDA52| LDA.b #$14
|0DDA54| STA.w $0DF0,X

|0DDA57| LDA.b #$10
|0DDA59| STA.w $0E00,X

|0DDA5C| STZ.w $0BE0,X

|0DDA5F| LDA.b #$48
|0DDA61| STA.w $0CAA,X

|0DDA64| TXY

|0DDA65| PLX

.no_space
|0DDA66| PLB

|0DDA67| TYA

|0DDA68| RTL

;===================================================================================================

pool SpriteDraw_ArcheryGameHost

.offset_x
|0DDA69| db   0,   0,   0
|0DDA6C| db   0,   0,  -5
|0DDA6F| db   0,  -1,  -1
|0DDA72| db   0,   0,   0
|0DDA75| db   0,   1,   1

.offset_y
|0DDA78| db   0, -10, -10
|0DDA7B| db   0, -10,  -3
|0DDA7E| db   0, -10, -10
|0DDA81| db   0, -10, -10
|0DDA84| db   0, -10, -10

.char
|0DDA87| db $26, $06, $06
|0DDA8A| db $08, $06, $3A
|0DDA8D| db $26, $06, $06
|0DDA90| db $26, $06, $06
|0DDA93| db $26, $06, $06

.prop
|0DDA96| db $08, $06, $06
|0DDA99| db $08, $06, $08
|0DDA9C| db $08, $06, $06
|0DDA9F| db $08, $06, $06
|0DDAA2| db $08, $06, $06

.size
|0DDAA5| db $02, $02, $02
|0DDAA8| db $02, $02, $00
|0DDAAB| db $02, $02, $02
|0DDAAE| db $02, $02, $02
|0DDAB1| db $02, $02, $02

endpool

;---------------------------------------------------------------------------------------------------

SpriteDraw_ArcheryGameHost:
|0DDAB4| PHB
|0DDAB5| PHK
|0DDAB6| PLB

|0DDAB7| JSL AllocateOAMDeferToPlayer_long
|0DDABB| JSL GetScreenCoordinates_long

|0DDABF| LDA.w $0DC0,X
|0DDAC2| ASL A
|0DDAC3| ADC.w $0DC0,X
|0DDAC6| STA.b $06

|0DDAC8| PHX

|0DDAC9| LDX.b #$02

.next_object
|0DDACB| PHX

|0DDACC| TXA
|0DDACD| CLC
|0DDACE| ADC.b $06
|0DDAD0| TAX

|0DDAD1| LDA.b $00
|0DDAD3| CLC
|0DDAD4| ADC.w .offset_x,X
|0DDAD7| STA.b ($90),Y

|0DDAD9| LDA.b $02
|0DDADB| CLC
|0DDADC| ADC.w .offset_y,X

|0DDADF| INY
|0DDAE0| STA.b ($90),Y

|0DDAE2| LDA.w .char,X
|0DDAE5| INY
|0DDAE6| STA.b ($90),Y

|0DDAE8| LDA.b $05
|0DDAEA| ORA.w .prop,X
|0DDAED| INY
|0DDAEE| STA.b ($90),Y

|0DDAF0| PHY

|0DDAF1| TYA
|0DDAF2| LSR A
|0DDAF3| LSR A
|0DDAF4| TAY

|0DDAF5| LDA.w .size,X
|0DDAF8| STA.b ($92),Y

|0DDAFA| PLY
|0DDAFB| INY

|0DDAFC| PLX
|0DDAFD| DEX
|0DDAFE| BPL .next_object

|0DDB00| PLX

|0DDB01| JSL DrawSpriteShadow_long

|0DDB05| PLB

|0DDB06| RTL

;===================================================================================================
; FREE ROM: 0x39
;===================================================================================================
NULL_0DDB07:
|0DDB07| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DDB0F| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DDB17| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DDB1F| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DDB27| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DDB2F| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DDB37| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DDB3F| db $FF

;===================================================================================================

CapacityUpgrades:
.bombs_bcd
|0DDB40| db $10, $15, $20, $25, $30, $35, $40, $50

.bombs_hex
|0DDB48| db  10,  15,  20,  25,  30,  35,  40,  50

.arrows_bcd
|0DDB50| db $30, $35, $40, $45, $50, $55, $60, $70

.arrows_hex
|0DDB58| db  30,  35,  40,  45,  50,  55,  60,  70

;===================================================================================================

HeartBeepThresholds:
|0DDB60| db $09, $09, $09, $09, $09, $09, $09, $09
|0DDB68| db $11, $11, $11, $11, $11, $11, $11, $19
|0DDB70| db $19, $19, $19, $19, $19

;===================================================================================================

HandleItemRefills:
|0DDB75| PHB
|0DDB76| PHK
|0DDB77| PLB

|0DDB78| LDA.w $0200
|0DDB7B| BEQ RefillLogic

|0DDB7D| PLB

|0DDB7E| RTL

;===================================================================================================

RefreshItemIcon:
|0DDB7F| PHB
|0DDB80| PHK
|0DDB81| PLB

|0DDB82| JSR SearchForEquippedItem

|0DDB85| JSR UpdateHUD
|0DDB88| JSR RebuildHUD

|0DDB8B| SEP #$30

|0DDB8D| STZ.w $0200

|0DDB90| PLB

|0DDB91| RTL

;===================================================================================================

RefillLogic:
|0DDB92| LDA.l $7EF373 ; check magic refill
|0DDB96| BEQ .magic_refill_done

|0DDB98| LDA.l $7EF36E ; cap at 128
|0DDB9C| CMP.b #$80
|0DDB9E| BCC .need_more_magic

|0DDBA0| LDA.b #$80 ; hard cap in case we went over max
|0DDBA2| STA.l $7EF36E

|0DDBA6| LDA.b #$00
|0DDBA8| STA.l $7EF373
|0DDBAC| BRA .magic_refill_done

.need_more_magic
|0DDBAE| LDA.l $7EF373 ; transfer from refill buffer to magic
|0DDBB2| DEC A
|0DDBB3| STA.l $7EF373

|0DDBB7| LDA.l $7EF36E
|0DDBBB| INC A
|0DDBBC| STA.l $7EF36E

|0DDBC0| LDA.b $1A ; play the noise every 4 frames
|0DDBC2| AND.b #$03
|0DDBC4| BNE .magic_refill_done

|0DDBC6| LDA.w $012E ; unless something is queued already
|0DDBC9| BNE .magic_refill_done

|0DDBCB| LDA.b #$2D ; SFX2.2D
|0DDBCD| STA.w $012E

;---------------------------------------------------------------------------------------------------

.magic_refill_done
|0DDBD0| REP #$30

|0DDBD2| LDA.l $7EF362 ; compare rupee to rupee fill
|0DDBD6| CMP.l $7EF360
|0DDBDA| BEQ .rupee_refill_done
|0DDBDC| BMI .gaining_rupees

|0DDBDE| DEC A ; we're losing rupees
|0DDBDF| BPL .losing_rupees

|0DDBE1| LDA.w #$0000 ; don't go into the negatives
|0DDBE4| STA.l $7EF360

|0DDBE8| BRA .losing_rupees

.gaining_rupees
|0DDBEA| INC A
|0DDBEB| CMP.w #$03E8 ; 1000
|0DDBEE| BCC .losing_rupees

|0DDBF0| LDA.w #$03E7 ; 999
|0DDBF3| STA.l $7EF360

.losing_rupees
|0DDBF7| STA.l $7EF362

|0DDBFB| SEP #$30

|0DDBFD| LDA.w $012E ; if a sfx is queued, let it play
|0DDC00| BNE .rupee_refill_done

|0DDC02| LDA.w $0CFD ; rupee refill sound timer
|0DDC05| INC.w $0CFD ; why not frame counter?
|0DDC08| AND.b #$07
|0DDC0A| BNE .rupee_sound_done

|0DDC0C| LDA.b #$29 ; SFX2.29
|0DDC0E| STA.w $012E

|0DDC11| BRA .rupee_sound_done

.rupee_refill_done
|0DDC13| SEP #$30

|0DDC15| STZ.w $0CFD

;---------------------------------------------------------------------------------------------------

.rupee_sound_done
|0DDC18| LDA.l $7EF375 ; bombs
|0DDC1C| BEQ .bomb_refill_done

|0DDC1E| LDA.l $7EF375
|0DDC22| DEC A
|0DDC23| STA.l $7EF375

|0DDC27| LDA.l $7EF370
|0DDC2B| TAY

|0DDC2C| LDA.l $7EF343
|0DDC30| CMP.w CapacityUpgrades.bombs_hex,Y
|0DDC33| BEQ .bomb_refill_done

|0DDC35| INC A
|0DDC36| STA.l $7EF343

;---------------------------------------------------------------------------------------------------

.bomb_refill_done
|0DDC3A| LDA.l $7EF376 ; arrows
|0DDC3E| BEQ .arrow_refill_done

|0DDC40| LDA.l $7EF376
|0DDC44| DEC A
|0DDC45| STA.l $7EF376

|0DDC49| LDA.l $7EF371
|0DDC4D| TAY

|0DDC4E| LDA.l $7EF377
|0DDC52| CMP.w CapacityUpgrades.arrows_hex,Y
|0DDC55| BEQ .too_many_arrows

|0DDC57| INC A
|0DDC58| STA.l $7EF377

.too_many_arrows
|0DDC5C| LDA.l $7EF340
|0DDC60| BEQ .arrow_refill_done

|0DDC62| AND.b #$01
|0DDC64| CMP.b #$01
|0DDC66| BNE .arrow_refill_done

|0DDC68| LDA.l $7EF340 ; change bow icon to have arrows
|0DDC6C| INC A
|0DDC6D| STA.l $7EF340

|0DDC71| JSL RefreshItemIcon

;---------------------------------------------------------------------------------------------------

.arrow_refill_done
|0DDC75| LDA.w $02E4 ; don't beep during cutscenes
|0DDC78| BNE .done_beeping

|0DDC7A| LDA.l $7EF372 ; or during healing
|0DDC7E| BNE .done_beeping

|0DDC80| LDA.l $7EF36C
|0DDC84| LSR A
|0DDC85| LSR A
|0DDC86| LSR A
|0DDC87| TAX

|0DDC88| LDA.l $7EF36D
|0DDC8C| CMP.w HeartBeepThresholds,X
|0DDC8F| BCS .done_beeping

|0DDC91| LDA.w $04CA
|0DDC94| BNE .tick_beep_timer

|0DDC96| LDA.w $012E ; don't overwrite a queued sfx
|0DDC99| BNE .done_beeping

|0DDC9B| LDA.b #$20 ; beep timer is every 32 frames
|0DDC9D| STA.w $04CA

|0DDCA0| LDA.b #$2B ; SFX2.2B
|0DDCA2| STA.w $012E

.tick_beep_timer
|0DDCA5| DEC.w $04CA

;---------------------------------------------------------------------------------------------------

.done_beeping
|0DDCA8| LDA.w $020A
|0DDCAB| BNE .no_heart_refill_yet

|0DDCAD| LDA.l $7EF372
|0DDCB1| BEQ .heart_refill_done

|0DDCB3| LDA.l $7EF36D
|0DDCB7| CMP.l $7EF36C
|0DDCBB| BCC .keep_healing

|0DDCBD| LDA.l $7EF36C ; prevent health overflow
|0DDCC1| STA.l $7EF36D

|0DDCC5| LDA.b #$00
|0DDCC7| STA.l $7EF372

|0DDCCB| BRA .heart_refill_done

.keep_healing
|0DDCCD| LDA.l $7EF36D
|0DDCD1| CLC
|0DDCD2| ADC.b #$08
|0DDCD4| STA.l $7EF36D

|0DDCD8| LDA.w $012F ; don't interrupt queued sfx
|0DDCDB| BNE .skip_heal_sfx

|0DDCDD| LDA.b #$0D ; SFX3.0D
|0DDCDF| STA.w $012F

.skip_heal_sfx
|0DDCE2| LDA.l $7EF36D
|0DDCE6| CMP.l $7EF36C
|0DDCEA| BCC .health_is_in_range

|0DDCEC| LDA.l $7EF36C
|0DDCF0| STA.l $7EF36D

.health_is_in_range
|0DDCF4| LDA.l $7EF372
|0DDCF8| SEC
|0DDCF9| SBC.b #$08
|0DDCFB| STA.l $7EF372

|0DDCFF| INC.w $020A ; trigger heart refill animation

|0DDD02| LDA.b #$07
|0DDD04| STA.w $0208

;---------------------------------------------------------------------------------------------------

.no_heart_refill_yet
|0DDD07| REP #$30

|0DDD09| LDA.w #$FFFF ; this appears to be unused
|0DDD0C| STA.b $0E

|0DDD0E| JSR UpdateHUDBuffer_skip_hearts
|0DDD11| JSR AnimateHeartRefill

|0DDD14| SEP #$30

|0DDD16| INC.b $16

|0DDD18| PLB

|0DDD19| RTL

;---------------------------------------------------------------------------------------------------

.heart_refill_done
|0DDD1A| REP #$30

|0DDD1C| LDA.w #$FFFF ; this appears to be unused
|0DDD1F| STA.b $0E

|0DDD21| JSR UpdateHUDBuffer_skip_item

|0DDD24| SEP #$30

|0DDD26| INC.b $16

|0DDD28| PLB

|0DDD29| RTL

;===================================================================================================

Module0E_01_ItemMenu:
|0DDD2A| PHB
|0DDD2B| PHK
|0DDD2C| PLB

|0DDD2D| JSR HandleItemMenu

|0DDD30| PLB

|0DDD31| RTL

;===================================================================================================

UpdateEquippedItem_long:
|0DDD32| JSR UpdateEquippedItem

|0DDD35| RTL

;===================================================================================================

HandleItemMenu:
|0DDD36| INC.w $0206

|0DDD39| LDA.w $0200
|0DDD3C| JSL JumpTableLocal
|0DDD40| dw ItemMenu_ClearTilemap           ; 0x00
|0DDD42| dw ItemMenu_Initialize             ; 0x01
|0DDD44| dw ItemMenu_Open                   ; 0x02
|0DDD46| dw ItemMenu_NextMode               ; 0x03
|0DDD48| dw ItemMenu_YItemSelection         ; 0x04
|0DDD4A| dw UpdateHUD                       ; 0x05
|0DDD4C| dw ItemMenu_Close                  ; 0x06
|0DDD4E| dw BottleMenu_Go                   ; 0x07
|0DDD50| dw BottleMenu_Initialize           ; 0x08
|0DDD52| dw BottleMenu_Open                 ; 0x09
|0DDD54| dw BottleMenu                      ; 0x0A
|0DDD56| dw BottleMenu_Close                ; 0x0B
|0DDD58| dw BottleMenu_RestoreMenu          ; 0x0C

;===================================================================================================

ItemMenu_ClearTilemap:
|0DDD5A| REP #$20

|0DDD5C| LDX.b #$00
|0DDD5E| LDA.w #$207F

.clear_buffer_loop
|0DDD61| STA.w $1000,X
|0DDD64| STA.w $1080,X
|0DDD67| STA.w $1100,X
|0DDD6A| STA.w $1180,X

|0DDD6D| STA.w $1200,X
|0DDD70| STA.w $1280,X
|0DDD73| STA.w $1300,X
|0DDD76| STA.w $1380,X

|0DDD79| STA.w $1400,X
|0DDD7C| STA.w $1480,X
|0DDD7F| STA.w $1500,X
|0DDD82| STA.w $1580,X

|0DDD85| STA.w $1600,X
|0DDD88| STA.w $1680,X
|0DDD8B| STA.w $1700,X
|0DDD8E| STA.w $1780,X

|0DDD91| INX
|0DDD92| INX
|0DDD93| CPX.b #$80
|0DDD95| BNE .clear_buffer_loop

;---------------------------------------------------------------------------------------------------

|0DDD97| SEP #$20

|0DDD99| LDA.b #$11 ; SFX3.11
|0DDD9B| STA.w $012F

; trigger an update and tell it where to update from
|0DDD9E| LDA.b #$01
|0DDDA0| STA.b $17

|0DDDA2| LDA.b #$22
|0DDDA4| STA.w $0116

|0DDDA7| INC.w $0200

|0DDDAA| RTS

;===================================================================================================

ItemMenu_Initialize:
|0DDDAB| JSR SearchForEquippedItem

|0DDDAE| LDA.b #$01
|0DDDB0| JSR GetPaletteMask
|0DDDB3| JSR DrawYItems

|0DDDB6| LDA.b #$01
|0DDDB8| JSR GetPaletteMask
|0DDDBB| JSR DrawEquippedItemBox

|0DDDBE| LDA.b #$01
|0DDDC0| JSR GetPaletteMask

|0DDDC3| JSR DrawAbilityText
|0DDDC6| JSR DrawAbilityIcons

|0DDDC9| JSR DrawProgressWindow
|0DDDCC| JSR DrawMoonPearl

|0DDDCF| JSR REPandSEP30

|0DDDD2| LDA.b #$01
|0DDDD4| JSR GetPaletteMask

|0DDDD7| JSR DrawEquipmentWindow
|0DDDDA| JSR DrawShieldIcon
|0DDDDD| JSR DrawMailIcon

|0DDDE0| JSR DrawMapAndBigKey
|0DDDE3| JSR DrawCompass

;---------------------------------------------------------------------------------------------------

; Loops through every item looking for any nonzero value
|0DDDE6| LDX.b #$12

|0DDDE8| LDA.l $7EF340

.next_item_check
|0DDDEC| ORA.l $7EF341,X

|0DDDF0| DEX
|0DDDF1| BPL .next_item_check

;---------------------------------------------------------------------------------------------------

|0DDDF3| CMP.b #$00
|0DDDF5| BEQ .no_items

|0DDDF7| LDA.l $7EF35C ; checks for any bottles
|0DDDFB| ORA.l $7EF35D
|0DDDFF| ORA.l $7EF35E
|0DDE03| ORA.l $7EF35F

|0DDE07| BNE .bottles_yes
|0DDE09| BRA .no_bottles

;---------------------------------------------------------------------------------------------------

.bottles_yes
|0DDE0B| LDA.l $7EF34F ; is one of our bottles selected?
|0DDE0F| BNE .bottle_selected

|0DDE11| TAY ; otherwise, look for a bottle to hold

|0DDE12| INY
|0DDE13| LDA.l $7EF35C
|0DDE17| BNE .choose_this_bottle

|0DDE19| INY
|0DDE1A| LDA.l $7EF35D
|0DDE1E| BNE .choose_this_bottle

|0DDE20| INY
|0DDE21| LDA.l $7EF35E
|0DDE25| BNE .choose_this_bottle

|0DDE27| INY

.choose_this_bottle
|0DDE28| TYA

.no_bottles
|0DDE29| STA.l $7EF34F

;---------------------------------------------------------------------------------------------------

.bottle_selected
; try to find our selected item
; otherwise, look further
|0DDE2D| JSR CheckForHavingItem
|0DDE30| BCS .we_have_it

|0DDE32| JSR LookForMenuItem_Right

.we_have_it
|0DDE35| JSR DrawEquippedYItem

|0DDE38| LDA.w $0202 ; are we selecting a bottle?
|0DDE3B| CMP.b #$10
|0DDE3D| BNE .no_items

|0DDE3F| LDA.b #$01
|0DDE41| JSR GetPaletteMask
|0DDE44| JSR DrawBottleSubmenu

.no_items
|0DDE47| LDA.b #$10
|0DDE49| STA.w $0207

; trigger vram update
|0DDE4C| LDA.b #$01
|0DDE4E| STA.b $17

|0DDE50| LDA.b #$22
|0DDE52| STA.w $0116

|0DDE55| INC.w $0200

|0DDE58| RTS

;===================================================================================================
; Scrolls the background by 8 pixels every frame until it's in position
; scrolls to -232 over the course of 29 frames
;===================================================================================================
ItemMenu_Open:
|0DDE59| REP #$20

|0DDE5B| LDA.b $EA
|0DDE5D| SEC
|0DDE5E| SBC.w #$0008
|0DDE61| STA.b $EA

|0DDE63| CMP.w #$FF18

|0DDE66| SEP #$20
|0DDE68| BNE .still_going

|0DDE6A| INC.w $0200

.still_going
|0DDE6D| RTS

;===================================================================================================
; Decide which submode to go to next, based on what's equipped
;===================================================================================================
ItemMenu_NextMode:
; look for some nonzero value in item menu
|0DDE6E| LDX.b #$12

|0DDE70| LDA.l $7EF340

.check_next_item
|0DDE74| ORA.l $7EF341,X
|0DDE78| DEX
|0DDE79| BPL .check_next_item

;---------------------------------------------------------------------------------------------------

|0DDE7B| CMP.b #$00
|0DDE7D| BEQ .no_items_at_all

; trigger and locate a vram update for NMI
|0DDE7F| LDA.b #$01
|0DDE81| STA.b $17

|0DDE83| LDA.b #$22
|0DDE85| STA.w $0116

|0DDE88| JSR CheckForHavingItem
|0DDE8B| BCS .item_is_owned

|0DDE8D| JSR LookForMenuItem_Right

.item_is_owned
|0DDE90| JSR DrawEquippedYItem

|0DDE93| LDA.b #$04 ; go to Y-item selection
|0DDE95| STA.w $0200

|0DDE98| LDA.w $0202
|0DDE9B| CMP.b #$10
|0DDE9D| BNE .not_bottle

|0DDE9F| LDA.b #$0A ; nevermind, go to bottle menu
|0DDEA1| STA.w $0200

.not_bottle
|0DDEA4| RTS

;---------------------------------------------------------------------------------------------------

; just wait for an input then close the menu
.no_items_at_all
|0DDEA5| LDA.b $F4
|0DDEA7| BEQ .wait_for_button

|0DDEA9| LDA.b #$05
|0DDEAB| STA.w $0200

|0DDEAE| RTS

.wait_for_button
|0DDEAF| RTS

;===================================================================================================
; Returns carry set if the equipped item is owned
; This could have been done more efficieintly with
; CMP.b #$01
; RTS
;===================================================================================================
CheckForHavingItem:
|0DDEB0| LDX.w $0202

|0DDEB3| LDA.l $7EF33F,X
|0DDEB7| BNE .owned

|0DDEB9| CLC

|0DDEBA| RTS

.owned
|0DDEBB| SEC

|0DDEBC| RTS

;===================================================================================================
; Get the item slot 1 less than current
;===================================================================================================
FindPreviousMenuItem:
|0DDEBD| LDA.w $0202
|0DDEC0| DEC A

|0DDEC1| CMP.b #$01
|0DDEC3| BCS .nowrap

|0DDEC5| LDA.b #$14 ; slot 20

.nowrap
|0DDEC7| STA.w $0202

|0DDECA| RTS

;===================================================================================================
; Get the item slot 1 more than current
;===================================================================================================
FindNextMenuItem:
|0DDECB| LDA.w $0202
|0DDECE| INC A
|0DDECF| CMP.b #$15 ; wrap at 21
|0DDED1| BCC .nowrap

|0DDED3| LDA.b #$01

.nowrap
|0DDED5| STA.w $0202

|0DDED8| RTS

;===================================================================================================
; Looks in the specified direction for the next non-empty slot
;===================================================================================================
LookForMenuItem_Left:
|0DDED9| JSR FindPreviousMenuItem

|0DDEDC| JSR CheckForHavingItem
|0DDEDF| BCC LookForMenuItem_Left

|0DDEE1| RTS

;---------------------------------------------------------------------------------------------------

LookForMenuItem_Right:
|0DDEE2| JSR FindNextMenuItem

|0DDEE5| JSR CheckForHavingItem
|0DDEE8| BCC LookForMenuItem_Right

|0DDEEA| RTS

;---------------------------------------------------------------------------------------------------

LookForMenuItem_Up:
|0DDEEB| JSR FindPreviousMenuItem
|0DDEEE| JSR FindPreviousMenuItem
|0DDEF1| JSR FindPreviousMenuItem
|0DDEF4| JSR FindPreviousMenuItem
|0DDEF7| JSR FindPreviousMenuItem

|0DDEFA| JSR CheckForHavingItem
|0DDEFD| BCC LookForMenuItem_Up

|0DDEFF| RTS

;---------------------------------------------------------------------------------------------------

LookForMenuItem_Down:
|0DDF00| JSR FindNextMenuItem
|0DDF03| JSR FindNextMenuItem
|0DDF06| JSR FindNextMenuItem
|0DDF09| JSR FindNextMenuItem
|0DDF0C| JSR FindNextMenuItem

|0DDF0F| JSR CheckForHavingItem
|0DDF12| BCC LookForMenuItem_Down

|0DDF14| RTS

;===================================================================================================
; The normal item selection menu controller
;===================================================================================================
ItemMenu_YItemSelection:
|0DDF15| INC.w $0207

|0DDF18| LDA.b $F0
|0DDF1A| BNE .input

|0DDF1C| STZ.b $BD ; can only move after a frame of no input

.input
|0DDF1E| LDA.b $F4 ; check for start press to close menu
|0DDF20| AND.b #$10
|0DDF22| BEQ .keepmenuing

|0DDF24| LDA.b #$05
|0DDF26| STA.w $0200

|0DDF29| LDA.b #$12 ; SFX3.12
|0DDF2B| STA.w $012F

|0DDF2E| RTS

;---------------------------------------------------------------------------------------------------

.keepmenuing
|0DDF2F| LDA.b $BD ; not allowed to do anything
|0DDF31| BNE .do_item_draw

|0DDF33| LDA.w $0202
|0DDF36| STA.b $00

; check for R-button on joy2 to delete items
|0DDF38| LDA.b $F7
|0DDF3A| AND.b #$10
|0DDF3C| BEQ .no_delete

; bye bye
|0DDF3E| LDX.w $0202

|0DDF41| LDA.b #$00
|0DDF43| STA.l $7EF33F,X

|0DDF47| BRA .picked_item

;---------------------------------------------------------------------------------------------------

.no_delete
; check for direction presses
; the devs should have used BIT instead of AND
|0DDF49| LDA.b $F4
|0DDF4B| AND.b #$08
|0DDF4D| BEQ .not_up

|0DDF4F| JSR LookForMenuItem_Up
|0DDF52| BRA .picked_item

.not_up
|0DDF54| LDA.b $F4
|0DDF56| AND.b #$04
|0DDF58| BEQ .not_down

|0DDF5A| JSR LookForMenuItem_Down
|0DDF5D| BRA .picked_item

.not_down
|0DDF5F| LDA.b $F4
|0DDF61| AND.b #$02
|0DDF63| BEQ .not_left

|0DDF65| JSR LookForMenuItem_Left
|0DDF68| BRA .picked_item

.not_left
|0DDF6A| LDA.b $F4
|0DDF6C| AND.b #$01
|0DDF6E| BEQ .do_item_draw

|0DDF70| JSR LookForMenuItem_Right

;---------------------------------------------------------------------------------------------------

.picked_item
|0DDF73| LDA.b $F4
|0DDF75| STA.b $BD

|0DDF77| LDA.w $0202 ; compare new item to old item
|0DDF7A| CMP.b $00
|0DDF7C| BEQ .do_item_draw

|0DDF7E| LDA.b #$10 ; if different, reset blink timer
|0DDF80| STA.w $0207

|0DDF83| LDA.b #$20 ; SFX3.20
|0DDF85| STA.w $012F

.do_item_draw
|0DDF88| LDA.b #$01
|0DDF8A| JSR GetPaletteMask

|0DDF8D| JSR DrawYItems
|0DDF90| JSR DrawEquippedYItem

|0DDF93| LDA.w $0202 ; if bottle, go to submenu
|0DDF96| CMP.b #$10
|0DDF98| BNE .not_bottle

|0DDF9A| LDA.b #$07
|0DDF9C| STA.w $0200

.not_bottle
|0DDF9F| LDA.b #$01 ; update hud triggers for NMI
|0DDFA1| STA.b $17

|0DDFA3| LDA.b #$22
|0DDFA5| STA.w $0116

|0DDFA8| RTS

;===================================================================================================

UpdateHUD:
|0DDFA9| INC.w $0200

|0DDFAC| JSR RebuildHUD_update

;===================================================================================================

UpdateEquippedItem:
|0DDFAF| LDX.w $0202

|0DDFB2| LDA.l MenuToEquipID,X
|0DDFB6| STA.w $0303

|0DDFB9| RTS

;===================================================================================================
; Scrolls the background by 8 pixels every frame until it's in position
; scrolls to 0 over the course of 29 frames
;===================================================================================================
ItemMenu_Close:
|0DDFBA| REP #$20

|0DDFBC| LDA.b $EA
|0DDFBE| CLC
|0DDFBF| ADC.w #$0008
|0DDFC2| STA.b $EA

|0DDFC4| SEP #$20
|0DDFC6| BNE .exit

|0DDFC8| JSR RebuildHUD ; rebuild hud when we're done

|0DDFCB| STZ.w $0200
|0DDFCE| STZ.b $11

|0DDFD0| LDA.w $010C ; restore OW/UW for game mode
|0DDFD3| STA.b $10

|0DDFD5| LDA.b $11 ; pointless, it's always 0
|0DDFD7| BEQ .road_always_taken

|0DDFD9| JSL RestoreTorchBackground ; unreachable

.road_always_taken
|0DDFDD| LDA.w $0303
|0DDFE0| CMP.b #$05
|0DDFE2| BEQ .rods

|0DDFE4| CMP.b #$06
|0DDFE6| BEQ .rods

|0DDFE8| LDA.b #$02
|0DDFEA| STA.w $034B

|0DDFED| STZ.w $020B

|0DDFF0| BRA .exit

.rods
; If this flag is set, then, for some reason
; ice and fire rod scroll the menu another 8 pixels
|0DDFF2| LDA.w $020B
|0DDFF5| BNE ItemMenu_Close

|0DDFF7| STZ.w $034B

.exit
|0DDFFA| RTS

;===================================================================================================
; I don't see why this needs to be its own submode
;===================================================================================================
BottleMenu_Go:
|0DDFFB| STZ.w $0205

|0DDFFE| INC.w $0200

|0DE001| RTS

;===================================================================================================

BottleMenu_Initialize:
|0DE002| REP #$30

|0DE004| LDA.w $0205
|0DE007| AND.w #$00FF
|0DE00A| ASL A ; x64
|0DE00B| ASL A
|0DE00C| ASL A
|0DE00D| ASL A
|0DE00E| ASL A
|0DE00F| ASL A
|0DE010| TAX

|0DE011| LDA.w #$207F
|0DE014| STA.w $12EA,X
|0DE017| STA.w $12EC,X
|0DE01A| STA.w $12EE,X
|0DE01D| STA.w $12F0,X

|0DE020| STA.w $12F2,X
|0DE023| STA.w $12F4,X
|0DE026| STA.w $12F6,X
|0DE029| STA.w $12F8,X

|0DE02C| STA.w $12FA,X
|0DE02F| STA.w $12FC,X

;---------------------------------------------------------------------------------------------------

|0DE032| SEP #$30

|0DE034| INC.w $0205

|0DE037| LDA.w $0205
|0DE03A| CMP.b #$13
|0DE03C| BNE .still_erasing

|0DE03E| INC.w $0200

|0DE041| LDA.b #$11
|0DE043| STA.w $0205

.still_erasing
|0DE046| LDA.b #$01
|0DE048| STA.b $17

|0DE04A| LDA.b #$22
|0DE04C| STA.w $0116

|0DE04F| RTS

;===================================================================================================

pool BottleMenu_Open

.border_tile_top
|0DE050| dw $28FB, $28F9, $28F9, $28F9
|0DE058| dw $28F9, $28F9, $28F9, $28F9
|0DE060| dw $28F9, $68FB

.border_tile_row
|0DE064| dw $28FC, $24F5, $24F5, $24F5
|0DE06C| dw $24F5, $24F5, $24F5, $24F5
|0DE074| dw $24F5, $68FC

.border_tile_bottom
|0DE078| dw $A8FB, $A8F9, $A8F9, $A8F9
|0DE080| dw $A8F9, $A8F9, $A8F9, $A8F9
|0DE088| dw $A8F9, $E8FB

endpool

;---------------------------------------------------------------------------------------------------

BottleMenu_Open:
|0DE08C| REP #$30

|0DE08E| LDA.w $0205
|0DE091| AND.w #$00FF

|0DE094| ASL A ; x64
|0DE095| ASL A
|0DE096| ASL A
|0DE097| ASL A
|0DE098| ASL A
|0DE099| ASL A

|0DE09A| TAX
|0DE09B| PHX

;---------------------------------------------------------------------------------------------------

|0DE09C| LDY.w #$0012

.next_top_tile
|0DE09F| LDA.w .border_tile_top,Y
|0DE0A2| STA.w $12FC,X

|0DE0A5| DEX
|0DE0A6| DEX

|0DE0A7| DEY
|0DE0A8| DEY
|0DE0A9| BPL .next_top_tile

;---------------------------------------------------------------------------------------------------

|0DE0AB| PLX

|0DE0AC| LDY.w #$0012

.next_row_tile
|0DE0AF| LDA.w .border_tile_row,Y
|0DE0B2| STA.w $133C,X

|0DE0B5| DEX
|0DE0B6| DEX

|0DE0B7| DEY
|0DE0B8| DEY
|0DE0B9| BPL .next_row_tile

;---------------------------------------------------------------------------------------------------

|0DE0BB| LDX.w #$0012

.next_bottom_tile
|0DE0BE| LDA.w .border_tile_bottom,X
|0DE0C1| STA.w $176A,X

|0DE0C4| DEX
|0DE0C5| DEX
|0DE0C6| BPL .next_bottom_tile

;---------------------------------------------------------------------------------------------------

|0DE0C8| SEP #$30

|0DE0CA| DEC.w $0205

|0DE0CD| LDA.w $0205 ; useless, as it was already flagged
|0DE0D0| BPL .not_fully_extended

|0DE0D2| INC.w $0200

.not_fully_extended
|0DE0D5| LDA.b #$01
|0DE0D7| STA.b $17

|0DE0D9| LDA.b #$22
|0DE0DB| STA.w $0116

|0DE0DE| RTS

;===================================================================================================

BottleMenu:
|0DE0DF| INC.w $0207

|0DE0E2| LDA.b $F4
|0DE0E4| AND.b #$10
|0DE0E6| BEQ .dont_close_menu

|0DE0E8| LDA.b #$12 ; SFX3.12
|0DE0EA| STA.w $012F

|0DE0ED| LDA.b #$05
|0DE0EF| STA.w $0200

|0DE0F2| BRA .continue

;---------------------------------------------------------------------------------------------------

.dont_close_menu
|0DE0F4| LDA.b $F4
|0DE0F6| AND.b #$03
|0DE0F8| BEQ .continue

|0DE0FA| LDA.b $F4
|0DE0FC| AND.b #$02
|0DE0FE| BEQ .not_left

|0DE100| JSR LookForMenuItem_Left

|0DE103| BRA .handle_lr

.not_left
|0DE105| LDA.b $F4
|0DE107| AND.b #$01
|0DE109| BEQ .handle_lr

|0DE10B| JSR LookForMenuItem_Right

.handle_lr
|0DE10E| LDA.b #$10
|0DE110| STA.w $0207

|0DE113| LDA.b #$20 ; SFX3.20
|0DE115| STA.w $012F

|0DE118| LDA.b #$01
|0DE11A| JSR GetPaletteMask

|0DE11D| JSR DrawYItems
|0DE120| JSR DrawEquippedYItem

|0DE123| INC.w $0200
|0DE126| STZ.w $0205

|0DE129| RTS

;---------------------------------------------------------------------------------------------------

.continue
|0DE12A| JSR UpdateBottleMenu

|0DE12D| LDA.b $F4
|0DE12F| AND.b #$0C
|0DE131| BNE .pressed_up_or_down

|0DE133| RTS

;---------------------------------------------------------------------------------------------------

.pressed_up_or_down
|0DE134| LDA.l $7EF34F
|0DE138| DEC A
|0DE139| STA.b $00
|0DE13B| STA.b $02

|0DE13D| LDA.b $F4
|0DE13F| AND.b #$08
|0DE141| BEQ .down_one

;---------------------------------------------------------------------------------------------------

.up_one
|0DE143| LDA.b $00
|0DE145| DEC A
|0DE146| AND.b #$03
|0DE148| STA.b $00

|0DE14A| TAX
|0DE14B| LDA.l $7EF35C,X

|0DE14F| BEQ .up_one
|0DE151| BRA .use_bottle

;---------------------------------------------------------------------------------------------------

.down_one
|0DE153| LDA.b $00
|0DE155| INC A
|0DE156| AND.b #$03
|0DE158| STA.b $00

|0DE15A| TAX
|0DE15B| LDA.l $7EF35C,X

|0DE15F| BEQ .down_one

;---------------------------------------------------------------------------------------------------

.use_bottle
; Was it the same bottle we already had?
|0DE161| LDA.b $00
|0DE163| CMP.b $02
|0DE165| BEQ .exit

|0DE167| INC A
|0DE168| STA.l $7EF34F

|0DE16C| LDA.b #$10
|0DE16E| STA.w $0207

|0DE171| LDA.b #$20 ; SFX3.20
|0DE173| STA.w $012F

.exit
|0DE176| RTS

;===================================================================================================

BottleMenuCursorPosition:
|0DE177| dw $0088
|0DE179| dw $0188
|0DE17B| dw $0288
|0DE17D| dw $0388

;===================================================================================================

UpdateBottleMenu:
|0DE17F| REP #$30

|0DE181| LDX.w #$0000
|0DE184| LDY.w #$0007
|0DE187| LDA.w #$24F5

.empty_next
|0DE18A| STA.w $132C,X
|0DE18D| STA.w $136C,X
|0DE190| STA.w $13AC,X
|0DE193| STA.w $13EC,X

|0DE196| STA.w $142C,X
|0DE199| STA.w $146C,X
|0DE19C| STA.w $14AC,X
|0DE19F| STA.w $14EC,X

|0DE1A2| STA.w $152C,X
|0DE1A5| STA.w $156C,X
|0DE1A8| STA.w $15AC,X
|0DE1AB| STA.w $15EC,X

|0DE1AE| STA.w $162C,X
|0DE1B1| STA.w $166C,X
|0DE1B4| STA.w $16AC,X
|0DE1B7| STA.w $16EC,X

|0DE1BA| STA.w $172C,X

|0DE1BD| INX
|0DE1BE| INX

|0DE1BF| DEY
|0DE1C0| BPL .empty_next

;---------------------------------------------------------------------------------------------------

; Bottle 1
|0DE1C2| LDA.w #$1372
|0DE1C5| STA.b $00

|0DE1C7| LDA.l $7EF35C
|0DE1CB| AND.w #$00FF
|0DE1CE| STA.b $02

|0DE1D0| LDA.w #ItemIcons.bottles
|0DE1D3| STA.b $04

|0DE1D5| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

; Bottle 2
|0DE1D8| LDA.w #$1472
|0DE1DB| STA.b $00

|0DE1DD| LDA.l $7EF35D
|0DE1E1| AND.w #$00FF
|0DE1E4| STA.b $02

|0DE1E6| LDA.w #ItemIcons.bottles
|0DE1E9| STA.b $04

|0DE1EB| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

; Bottle 3
|0DE1EE| LDA.w #$1572
|0DE1F1| STA.b $00

|0DE1F3| LDA.l $7EF35E
|0DE1F7| AND.w #$00FF
|0DE1FA| STA.b $02

|0DE1FC| LDA.w #ItemIcons.bottles
|0DE1FF| STA.b $04

|0DE201| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

; Bottle 4
|0DE204| LDA.w #$1672
|0DE207| STA.b $00

|0DE209| LDA.l $7EF35F
|0DE20D| AND.w #$00FF
|0DE210| STA.b $02

|0DE212| LDA.w #ItemIcons.bottles
|0DE215| STA.b $04

|0DE217| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE21A| LDA.w #$1408
|0DE21D| STA.b $00

|0DE21F| LDA.l $7EF34F
|0DE223| AND.w #$00FF
|0DE226| TAX
|0DE227| BNE .some_bottle_selected

|0DE229| LDA.w #$0000
|0DE22C| BRA .continue

.some_bottle_selected
|0DE22E| LDA.l $7EF35B,X
|0DE232| AND.w #$00FF

.continue
|0DE235| STA.b $02

|0DE237| LDA.w #ItemIcons.bottles
|0DE23A| STA.b $04

|0DE23C| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE23F| LDA.w $0202
|0DE242| AND.w #$00FF
|0DE245| DEC A
|0DE246| ASL A
|0DE247| TAX

|0DE248| LDY.w MenuCursorPositions,X

|0DE24B| LDA.w $0000,Y
|0DE24E| STA.w $11B2

|0DE251| LDA.w $0002,Y
|0DE254| STA.w $11B4

|0DE257| LDA.w $0040,Y
|0DE25A| STA.w $11F2

|0DE25D| LDA.w $0042,Y
|0DE260| STA.w $11F4

|0DE263| LDA.l $7EF34F
|0DE267| DEC A
|0DE268| AND.w #$00FF
|0DE26B| ASL A
|0DE26C| TAY

|0DE26D| LDA.w BottleMenuCursorPosition,Y
|0DE270| TAY

|0DE271| LDA.w $0207
|0DE274| AND.w #$0010
|0DE277| BEQ .exit

|0DE279| LDA.w #$3C61
|0DE27C| STA.w $12AA,Y

|0DE27F| ORA.w #$4000
|0DE282| STA.w $12AC,Y

|0DE285| LDA.w #$3C70
|0DE288| STA.w $12E8,Y

|0DE28B| ORA.w #$4000
|0DE28E| STA.w $12EE,Y

|0DE291| LDA.w #$BC70
|0DE294| STA.w $1328,Y

|0DE297| ORA.w #$4000
|0DE29A| STA.w $132E,Y

|0DE29D| LDA.w #$BC61
|0DE2A0| STA.w $136A,Y

|0DE2A3| ORA.w #$4000
|0DE2A6| STA.w $136C,Y

|0DE2A9| LDA.w #$3C60
|0DE2AC| STA.w $12A8,Y

|0DE2AF| ORA.w #$4000
|0DE2B2| STA.w $12AE,Y

|0DE2B5| ORA.w #$8000
|0DE2B8| STA.w $136E,Y

|0DE2BB| EOR.w #$4000
|0DE2BE| STA.w $1368,Y

;---------------------------------------------------------------------------------------------------

|0DE2C1| LDA.l $7EF34F
|0DE2C5| AND.w #$00FF
|0DE2C8| BEQ .exit

|0DE2CA| TAX

|0DE2CB| LDA.l $7EF35B,X
|0DE2CF| AND.w #$00FF
|0DE2D2| DEC A
|0DE2D3| ASL A ; x32
|0DE2D4| ASL A
|0DE2D5| ASL A
|0DE2D6| ASL A
|0DE2D7| ASL A
|0DE2D8| TAX

|0DE2D9| LDY.w #$0000

.next_tile
|0DE2DC| LDA.w ItemMenuNameText_Bottles+$00,X
|0DE2DF| STA.w $122C,Y

|0DE2E2| LDA.w ItemMenuNameText_Bottles+$10,X
|0DE2E5| STA.w $126C,Y

|0DE2E8| INX
|0DE2E9| INX

|0DE2EA| INY
|0DE2EB| INY
|0DE2EC| CPY.w #$0010
|0DE2EF| BCC .next_tile

.exit
|0DE2F1| SEP #$30

|0DE2F3| LDA.b #$01
|0DE2F5| STA.b $17

|0DE2F7| LDA.b #$22
|0DE2F9| STA.w $0116

|0DE2FC| RTS

;===================================================================================================

BottleMenu_Close:
|0DE2FD| REP #$30

|0DE2FF| LDA.w $0205
|0DE302| AND.w #$00FF

|0DE305| ASL A ; x64
|0DE306| ASL A
|0DE307| ASL A
|0DE308| ASL A
|0DE309| ASL A
|0DE30A| ASL A

|0DE30B| TAX

|0DE30C| LDA.w #$207F
|0DE30F| STA.w $12EA,X
|0DE312| STA.w $12EC,X
|0DE315| STA.w $12EE,X
|0DE318| STA.w $12F0,X

|0DE31B| STA.w $12F2,X
|0DE31E| STA.w $12F4,X
|0DE321| STA.w $12F6,X
|0DE324| STA.w $12F8,X

|0DE327| STA.w $12FA,X
|0DE32A| STA.w $12FC,X

|0DE32D| SEP #$30

|0DE32F| INC.w $0205

|0DE332| LDA.w $0205
|0DE335| CMP.b #$13
|0DE337| BNE .still_closing

|0DE339| INC.w $0200

.still_closing
|0DE33C| LDA.b #$01
|0DE33E| STA.b $17

|0DE340| LDA.b #$22
|0DE342| STA.w $0116

|0DE345| RTS

;===================================================================================================

BottleMenu_RestoreMenu:
|0DE346| JSR DrawProgressWindow
|0DE349| JSR DrawMoonPearl

|0DE34C| JSR REPandSEP30

|0DE34F| LDA.b #$01
|0DE351| JSR GetPaletteMask

|0DE354| JSR DrawEquipmentWindow
|0DE357| JSR DrawShieldIcon
|0DE35A| JSR DrawMailIcon

|0DE35D| JSR DrawMapAndBigKey
|0DE360| JSR DrawCompass

|0DE363| LDA.b #$04
|0DE365| STA.w $0200

|0DE368| LDA.b #$01
|0DE36A| STA.b $17

|0DE36C| LDA.b #$22
|0DE36E| STA.w $0116

|0DE371| RTS

;===================================================================================================

DrawMenuIcon:
|0DE372| LDA.b $02
|0DE374| ASL A
|0DE375| ASL A
|0DE376| ASL A
|0DE377| TAY

|0DE378| LDX.b $00

|0DE37A| LDA.b ($04),Y
|0DE37C| STA.w $0000,X

|0DE37F| INY
|0DE380| INY

|0DE381| LDA.b ($04),Y
|0DE383| STA.w $0002,X

|0DE386| INY
|0DE387| INY

|0DE388| LDA.b ($04),Y
|0DE38A| STA.w $0040,X

|0DE38D| INY
|0DE38E| INY

|0DE38F| LDA.b ($04),Y
|0DE391| STA.w $0042,X

|0DE394| RTS

;===================================================================================================

SearchForEquippedItem_long:
|0DE395| JSR SearchForEquippedItem

|0DE398| RTL

;===================================================================================================

SearchForEquippedItem:
|0DE399| SEP #$30

|0DE39B| LDX.b #$12

|0DE39D| LDA.l $7EF340

.next_check
|0DE3A1| ORA.l $7EF341,X

|0DE3A5| DEX
|0DE3A6| BPL .next_check

|0DE3A8| CMP.b #$00
|0DE3AA| BNE .item_found

|0DE3AC| STZ.w $0202
|0DE3AF| STZ.w $0203
|0DE3B2| STZ.w $0204

.exit
|0DE3B5| RTS

;---------------------------------------------------------------------------------------------------

.item_found
|0DE3B6| LDA.w $0202
|0DE3B9| BNE .already_equipped

|0DE3BB| LDA.b #$01
|0DE3BD| STA.w $0202

.already_equipped
|0DE3C0| JSR CheckForHavingItem
|0DE3C3| BCS .exit

|0DE3C5| JMP.w LookForMenuItem_Right

;===================================================================================================

GetPaletteMask:
|0DE3C8| SEP #$30

|0DE3CA| LDX.b #$E3

|0DE3CC| CMP.b #$00
|0DE3CE| BEQ .pal0

|0DE3D0| LDX.b #$FF

.pal0
|0DE3D2| STX.b $01

|0DE3D4| LDA.b #$FF
|0DE3D6| STA.b $00

|0DE3D8| RTS

;===================================================================================================

DrawYItems:
|0DE3D9| REP #$30

; draw menu corners
|0DE3DB| LDA.w #$3CFB
|0DE3DE| AND.b $00
|0DE3E0| STA.w $1142

|0DE3E3| ORA.w #$8000
|0DE3E6| STA.w $14C2

|0DE3E9| ORA.w #$4000
|0DE3EC| STA.w $14E6

|0DE3EF| EOR.w #$8000
|0DE3F2| STA.w $1166

;---------------------------------------------------------------------------------------------------

; draw edges
|0DE3F5| LDX.w #$0000
|0DE3F8| LDY.w #$000C

.next_vertical_edge
|0DE3FB| LDA.w #$3CFC
|0DE3FE| AND.b $00
|0DE400| STA.w $1182,X

|0DE403| ORA.w #$4000
|0DE406| STA.w $11A6,X

|0DE409| TXA
|0DE40A| CLC
|0DE40B| ADC.w #$0040
|0DE40E| TAX

|0DE40F| DEY
|0DE410| BPL .next_vertical_edge

;---------------------------------------------------------------------------------------------------

|0DE412| LDX.w #$0000
|0DE415| LDY.w #$0010

.next_horizontal_edge
|0DE418| LDA.w #$3CF9
|0DE41B| AND.b $00
|0DE41D| STA.w $1144,X

|0DE420| ORA.w #$8000
|0DE423| STA.w $14C4,X

|0DE426| INX
|0DE427| INX

|0DE428| DEY
|0DE429| BPL .next_horizontal_edge

;---------------------------------------------------------------------------------------------------

; fill with black
|0DE42B| LDX.w #$0000
|0DE42E| LDY.w #$0010

|0DE431| LDA.w #$24F5

.paint_it_black
|0DE434| STA.w $1184,X
|0DE437| STA.w $11C4,X
|0DE43A| STA.w $1204,X
|0DE43D| STA.w $1244,X

|0DE440| STA.w $1284,X
|0DE443| STA.w $12C4,X
|0DE446| STA.w $1304,X
|0DE449| STA.w $1344,X

|0DE44C| STA.w $1384,X
|0DE44F| STA.w $13C4,X
|0DE452| STA.w $1404,X
|0DE455| STA.w $1444,X

|0DE458| STA.w $1484,X

|0DE45B| INX
|0DE45C| INX

|0DE45D| DEY
|0DE45E| BPL .paint_it_black

;---------------------------------------------------------------------------------------------------

; Y
|0DE460| LDA.w #$3CF0
|0DE463| STA.w $1184

|0DE466| LDA.w #$3CF1
|0DE469| STA.w $11C4

|0DE46C| LDA.w #$246E
|0DE46F| STA.w $1146

|0DE472| LDA.w #$246F
|0DE475| STA.w $1148

;---------------------------------------------------------------------------------------------------
; Draw each item
;---------------------------------------------------------------------------------------------------
|0DE478| LDA.w #$11C8
|0DE47B| STA.b $00

|0DE47D| LDA.l $7EF340
|0DE481| AND.w #$00FF
|0DE484| STA.b $02

|0DE486| LDA.w #ItemIcons.bows
|0DE489| STA.b $04

|0DE48B| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE48E| LDA.w #$11CE
|0DE491| STA.b $00

|0DE493| LDA.l $7EF341
|0DE497| AND.w #$00FF
|0DE49A| STA.b $02

|0DE49C| LDA.w #ItemIcons.booms
|0DE49F| STA.b $04

|0DE4A1| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE4A4| LDA.w #$11D4
|0DE4A7| STA.b $00

|0DE4A9| LDA.l $7EF342
|0DE4AD| AND.w #$00FF
|0DE4B0| STA.b $02

|0DE4B2| LDA.w #ItemIcons.hook
|0DE4B5| STA.b $04

|0DE4B7| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE4BA| LDA.w #$11DA
|0DE4BD| STA.b $00

|0DE4BF| LDA.l $7EF343
|0DE4C3| AND.w #$00FF
|0DE4C6| BEQ .no_bombs

|0DE4C8| LDA.w #$0001

.no_bombs
|0DE4CB| STA.b $02

|0DE4CD| LDA.w #ItemIcons.bombs
|0DE4D0| STA.b $04

|0DE4D2| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE4D5| LDA.w #$11E0
|0DE4D8| STA.b $00

|0DE4DA| LDA.l $7EF344
|0DE4DE| AND.w #$00FF
|0DE4E1| STA.b $02

|0DE4E3| LDA.w #ItemIcons.powder
|0DE4E6| STA.b $04

|0DE4E8| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE4EB| LDA.w #$1288
|0DE4EE| STA.b $00

|0DE4F0| LDA.l $7EF345
|0DE4F4| AND.w #$00FF
|0DE4F7| STA.b $02

|0DE4F9| LDA.w #ItemIcons.fire_rod
|0DE4FC| STA.b $04

|0DE4FE| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE501| LDA.w #$128E
|0DE504| STA.b $00

|0DE506| LDA.l $7EF346
|0DE50A| AND.w #$00FF
|0DE50D| STA.b $02

|0DE50F| LDA.w #ItemIcons.ice_rod
|0DE512| STA.b $04

|0DE514| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE517| LDA.w #$1294
|0DE51A| STA.b $00

|0DE51C| LDA.l $7EF347
|0DE520| AND.w #$00FF
|0DE523| STA.b $02

|0DE525| LDA.w #ItemIcons.bombos
|0DE528| STA.b $04

|0DE52A| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE52D| LDA.w #$129A
|0DE530| STA.b $00

|0DE532| LDA.l $7EF348
|0DE536| AND.w #$00FF
|0DE539| STA.b $02

|0DE53B| LDA.w #ItemIcons.ether
|0DE53E| STA.b $04

|0DE540| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE543| LDA.w #$12A0
|0DE546| STA.b $00

|0DE548| LDA.l $7EF349
|0DE54C| AND.w #$00FF
|0DE54F| STA.b $02

|0DE551| LDA.w #ItemIcons.quake
|0DE554| STA.b $04

|0DE556| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE559| LDA.w #$1348
|0DE55C| STA.b $00

|0DE55E| LDA.l $7EF34A
|0DE562| AND.w #$00FF
|0DE565| STA.b $02

|0DE567| LDA.w #ItemIcons.lamp
|0DE56A| STA.b $04

|0DE56C| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE56F| LDA.w #$134E
|0DE572| STA.b $00

|0DE574| LDA.l $7EF34B
|0DE578| AND.w #$00FF
|0DE57B| STA.b $02

|0DE57D| LDA.w #ItemIcons.hammer
|0DE580| STA.b $04

|0DE582| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE585| LDA.w #$1354
|0DE588| STA.b $00

|0DE58A| LDA.l $7EF34C
|0DE58E| AND.w #$00FF
|0DE591| STA.b $02

|0DE593| LDA.w #ItemIcons.flute
|0DE596| STA.b $04

|0DE598| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE59B| LDA.w #$135A
|0DE59E| STA.b $00

|0DE5A0| LDA.l $7EF34D
|0DE5A4| AND.w #$00FF
|0DE5A7| STA.b $02

|0DE5A9| LDA.w #ItemIcons.net
|0DE5AC| STA.b $04

|0DE5AE| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE5B1| LDA.w #$1360
|0DE5B4| STA.b $00

|0DE5B6| LDA.l $7EF34E
|0DE5BA| AND.w #$00FF
|0DE5BD| STA.b $02

|0DE5BF| LDA.w #ItemIcons.book
|0DE5C2| STA.b $04

|0DE5C4| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE5C7| LDA.w #$1408
|0DE5CA| STA.b $00

|0DE5CC| LDA.l $7EF34F
|0DE5D0| AND.w #$00FF
|0DE5D3| TAX

|0DE5D4| BNE .bottle_selected

|0DE5D6| LDA.w #$0000

|0DE5D9| BRA .bottle_draw

.bottle_selected
|0DE5DB| LDA.l $7EF35B,X
|0DE5DF| AND.w #$00FF

.bottle_draw
|0DE5E2| STA.b $02

|0DE5E4| LDA.w #ItemIcons.bottles
|0DE5E7| STA.b $04

|0DE5E9| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE5EC| LDA.w #$140E
|0DE5EF| STA.b $00

|0DE5F1| LDA.l $7EF350
|0DE5F5| AND.w #$00FF
|0DE5F8| STA.b $02

|0DE5FA| LDA.w #ItemIcons.somaria
|0DE5FD| STA.b $04

|0DE5FF| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE602| LDA.w #$1414
|0DE605| STA.b $00

|0DE607| LDA.l $7EF351
|0DE60B| AND.w #$00FF
|0DE60E| STA.b $02

|0DE610| LDA.w #ItemIcons.byrna
|0DE613| STA.b $04

|0DE615| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE618| LDA.w #$141A
|0DE61B| STA.b $00

|0DE61D| LDA.l $7EF352
|0DE621| AND.w #$00FF
|0DE624| STA.b $02

|0DE626| LDA.w #ItemIcons.cape
|0DE629| STA.b $04

|0DE62B| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE62E| LDA.w #$1420
|0DE631| STA.b $00

|0DE633| LDA.l $7EF353
|0DE637| AND.w #$00FF
|0DE63A| STA.b $02

|0DE63C| LDA.w #ItemIcons.mirror
|0DE63F| STA.b $04

|0DE641| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE644| SEP #$30

|0DE646| RTS

;===================================================================================================

DrawEquippedItemBox:
|0DE647| REP #$30

|0DE649| LDA.w #$3CFB
|0DE64C| AND.b $00
|0DE64E| STA.w $116A

|0DE651| ORA.w #$8000
|0DE654| STA.w $12AA

|0DE657| ORA.w #$4000
|0DE65A| STA.w $12BC

|0DE65D| EOR.w #$8000
|0DE660| STA.w $117C

;---------------------------------------------------------------------------------------------------

|0DE663| LDX.w #$0000
|0DE666| LDY.w #$0003

.next_vertical
|0DE669| LDA.w #$3CFC
|0DE66C| AND.b $00
|0DE66E| STA.w $11AA,X

|0DE671| ORA.w #$4000
|0DE674| STA.w $11BC,X

|0DE677| TXA
|0DE678| CLC
|0DE679| ADC.w #$0040
|0DE67C| TAX

|0DE67D| DEY
|0DE67E| BPL .next_vertical

;---------------------------------------------------------------------------------------------------

|0DE680| LDX.w #$0000
|0DE683| LDY.w #$0007

.next_horizontal
|0DE686| LDA.w #$3CF9
|0DE689| AND.b $00
|0DE68B| STA.w $116C,X

|0DE68E| ORA.w #$8000
|0DE691| STA.w $12AC,X

|0DE694| INX
|0DE695| INX

|0DE696| DEY
|0DE697| BPL .next_horizontal

;---------------------------------------------------------------------------------------------------

|0DE699| LDX.w #$0000
|0DE69C| LDY.w #$0007
|0DE69F| LDA.w #$24F5

.paint_it_black
|0DE6A2| STA.w $11AC,X
|0DE6A5| STA.w $11EC,X
|0DE6A8| STA.w $122C,X
|0DE6AB| STA.w $126C,X

|0DE6AE| INX
|0DE6AF| INX

|0DE6B0| DEY
|0DE6B1| BPL .paint_it_black

|0DE6B3| SEP #$30

|0DE6B5| RTS

;===================================================================================================

DrawAbilityText:
|0DE6B6| REP #$30

|0DE6B8| LDX.w #$0000
|0DE6BB| LDY.w #$0010
|0DE6BE| LDA.w #$24F5

.paint_it_black
|0DE6C1| STA.w $1584,X
|0DE6C4| STA.w $15C4,X
|0DE6C7| STA.w $1604,X
|0DE6CA| STA.w $1644,X

|0DE6CD| STA.w $1684,X
|0DE6D0| STA.w $16C4,X
|0DE6D3| STA.w $1704,X

|0DE6D6| INX
|0DE6D7| INX

|0DE6D8| DEY
|0DE6D9| BPL .paint_it_black

;---------------------------------------------------------------------------------------------------

|0DE6DB| LDA.l $7EF378
|0DE6DF| AND.w #$FF00
|0DE6E2| STA.b $02

|0DE6E4| LDA.w #$0003
|0DE6E7| STA.b $04

|0DE6E9| LDY.w #$0000
|0DE6EC| TYX

;---------------------------------------------------------------------------------------------------

.next_line
|0DE6ED| LDA.w #$0004
|0DE6F0| STA.b $06

;---------------------------------------------------------------------------------------------------

.next_ability
|0DE6F2| ASL.b $02
|0DE6F4| BCC .lacking_ability

|0DE6F6| LDA.w AbilityText.main_jumble+0,X
|0DE6F9| STA.w $1586,Y

|0DE6FC| LDA.w AbilityText.main_jumble+2,X
|0DE6FF| STA.w $1588,Y

|0DE702| LDA.w AbilityText.main_jumble+4,X
|0DE705| STA.w $158A,Y

|0DE708| LDA.w AbilityText.main_jumble+6,X
|0DE70B| STA.w $158C,Y

|0DE70E| LDA.w AbilityText.main_jumble+8,X
|0DE711| STA.w $158E,Y

|0DE714| LDA.w AbilityText.main_jumble+10,X
|0DE717| STA.w $15C6,Y

|0DE71A| LDA.w AbilityText.main_jumble+12,X
|0DE71D| STA.w $15C8,Y

|0DE720| LDA.w AbilityText.main_jumble+14,X
|0DE723| STA.w $15CA,Y

|0DE726| LDA.w AbilityText.main_jumble+16,X
|0DE729| STA.w $15CC,Y

|0DE72C| LDA.w AbilityText.main_jumble+18,X
|0DE72F| STA.w $15CE,Y

;---------------------------------------------------------------------------------------------------

.lacking_ability
|0DE732| TXA
|0DE733| CLC
|0DE734| ADC.w #$0014
|0DE737| TAX

|0DE738| TYA
|0DE739| CLC
|0DE73A| ADC.w #$000A
|0DE73D| TAY

|0DE73E| DEC.b $06
|0DE740| BNE .next_ability

;---------------------------------------------------------------------------------------------------

|0DE742| TYA
|0DE743| CLC
|0DE744| ADC.w #$005A
|0DE747| TAY

|0DE748| DEC.b $04
|0DE74A| BNE .next_line

;---------------------------------------------------------------------------------------------------

|0DE74C| LDA.w #$24FB
|0DE74F| AND.b $00
|0DE751| STA.w $1542

|0DE754| ORA.w #$8000
|0DE757| STA.w $1742

|0DE75A| ORA.w #$4000
|0DE75D| STA.w $1766

|0DE760| EOR.w #$8000
|0DE763| STA.w $1566

;---------------------------------------------------------------------------------------------------

|0DE766| LDX.w #$0000
|0DE769| LDY.w #$0006

.next_vertical
|0DE76C| LDA.w #$24FC
|0DE76F| AND.b $00
|0DE771| STA.w $1582,X

|0DE774| ORA.w #$4000
|0DE777| STA.w $15A6,X

|0DE77A| TXA
|0DE77B| CLC
|0DE77C| ADC.w #$0040
|0DE77F| TAX

|0DE780| DEY
|0DE781| BPL .next_vertical

;===================================================================================================

|0DE783| LDX.w #$0000
|0DE786| LDY.w #$0010

.next_horizontal
|0DE789| LDA.w #$24F9
|0DE78C| AND.b $00
|0DE78E| STA.w $1544,X

|0DE791| ORA.w #$8000
|0DE794| STA.w $1744,X

|0DE797| INX
|0DE798| INX

|0DE799| DEY
|0DE79A| BPL .next_horizontal

;---------------------------------------------------------------------------------------------------

|0DE79C| LDA.w #$A4F0
|0DE79F| STA.w $1584

|0DE7A2| LDA.w #$24F2
|0DE7A5| STA.w $15C4

|0DE7A8| LDA.w #$2482
|0DE7AB| STA.w $1546

|0DE7AE| LDA.w #$2483
|0DE7B1| STA.w $1548

|0DE7B4| SEP #$30

|0DE7B6| RTS

;===================================================================================================

DrawAbilityIcons:
|0DE7B7| REP #$30

;---------------------------------------------------------------------------------------------------

|0DE7B9| LDA.w #$16D0
|0DE7BC| STA.b $00

|0DE7BE| LDA.l $7EF354
|0DE7C2| AND.w #$00FF
|0DE7C5| STA.b $02

|0DE7C7| LDA.w #ItemIcons.gloves
|0DE7CA| STA.b $04

|0DE7CC| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE7CF| LDA.w #$16C8
|0DE7D2| STA.b $00

|0DE7D4| LDA.l $7EF355
|0DE7D8| AND.w #$00FF
|0DE7DB| STA.b $02

|0DE7DD| LDA.w #ItemIcons.boots
|0DE7E0| STA.b $04

|0DE7E2| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE7E5| LDA.w #$16D8
|0DE7E8| STA.b $00

|0DE7EA| LDA.l $7EF356
|0DE7EE| AND.w #$00FF
|0DE7F1| STA.b $02

|0DE7F3| LDA.w #ItemIcons.flippers
|0DE7F6| STA.b $04

|0DE7F8| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DE7FB| LDA.l $7EF354
|0DE7FF| AND.w #$00FF
|0DE802| BEQ .exit

|0DE804| CMP.w #$0001
|0DE807| BNE .titans_mitts

.power_glove
|0DE809| LDA.w #$0000
|0DE80C| JSR SetLiftText

|0DE80F| BRA .exit

.titans_mitts
|0DE811| LDA.w #$0001
|0DE814| JSR SetLiftText

.exit
|0DE817| SEP #$30

|0DE819| RTS

;===================================================================================================
; Changes our ability text to LIFT2 (A=0000) or LIFT3 (A=0001)
;===================================================================================================
SetLiftText:
|0DE81A| STA.b $00 ; X = (4*A+1)*4 = 20*A

|0DE81C| ASL A
|0DE81D| ASL A
|0DE81E| ADC.b $00
|0DE820| ASL A
|0DE821| ASL A
|0DE822| TAX

;---------------------------------------------------------------------------------------------------

|0DE823| LDA.w AbilityText.lifts+0,X
|0DE826| STA.w $1586

|0DE829| LDA.w AbilityText.lifts+2,X
|0DE82C| STA.w $1588

|0DE82F| LDA.w AbilityText.lifts+4,X
|0DE832| STA.w $158A

|0DE835| LDA.w AbilityText.lifts+6,X
|0DE838| STA.w $158C

|0DE83B| LDA.w AbilityText.lifts+8,X
|0DE83E| STA.w $158E

|0DE841| LDA.w AbilityText.lifts+10,X
|0DE844| STA.w $15C6

|0DE847| LDA.w AbilityText.lifts+12,X
|0DE84A| STA.w $15C8

|0DE84D| LDA.w AbilityText.lifts+14,X
|0DE850| STA.w $15CA

|0DE853| LDA.w AbilityText.lifts+16,X
|0DE856| STA.w $15CC

|0DE859| LDA.w AbilityText.lifts+18,X
|0DE85C| STA.w $15CE

|0DE85F| RTS

;===================================================================================================
; Data for blank pendant and crystal windows
;===================================================================================================
PendantsWindow:

.row0
|0DE860| dw $28FB, $28F9, $28F9, $28F9, $28F9
|0DE86A| dw $28F9, $28F9, $28F9, $28F9, $68FB

.row1
|0DE874| dw $28FC, $2521, $2522, $2523, $2524
|0DE87E| dw $253F, $24F5, $24F5, $24F5, $68FC

.row2
|0DE888| dw $28FC, $24F5, $24F5, $24F5, $24F5
|0DE892| dw $24F5, $24F5, $24F5, $24F5, $68FC

.row3
|0DE89C| dw $28FC, $24F5, $24F5, $24F5, $213B
|0DE8A6| dw $213C, $24F5, $24F5, $24F5, $68FC

.row4
|0DE8B0| dw $28FC, $24F5, $24F5, $24F5, $213D
|0DE8BA| dw $213E, $24F5, $24F5, $24F5, $68FC

.row5
|0DE8C4| dw $28FC, $24F5, $24F5, $24F5, $24F5
|0DE8CE| dw $24F5, $24F5, $24F5, $24F5, $68FC

.row6
|0DE8D8| dw $28FC, $24F5, $213B, $213C, $24F5
|0DE8E2| dw $24F5, $213B, $213C, $24F5, $68FC

.row7
|0DE8EC| dw $28FC, $24F5, $213D, $213E, $24F5
|0DE8F6| dw $24F5, $213D, $213E, $24F5, $68FC

.row8
|0DE900| dw $A8FB, $A8F9, $A8F9, $A8F9, $A8F9
|0DE90A| dw $A8F9, $A8F9, $A8F9, $A8F9, $E8FB

;===================================================================================================

CrystalsWindow:

.row0
|0DE914| dw $28FB, $28F9, $28F9, $28F9, $28F9
|0DE91E| dw $28F9, $28F9, $28F9, $28F9, $68FB

.row1
|0DE928| dw $28FC, $252F, $2534, $2535, $2536
|0DE932| dw $2537, $24F5, $24F5, $24F5, $68FC

.row2
|0DE93C| dw $28FC, $24F5, $24F5, $24F5, $24F5
|0DE946| dw $24F5, $24F5, $24F5, $24F5, $68FC

.row3
|0DE950| dw $28FC, $24F5, $24F5, $3146, $3147
|0DE95A| dw $3146, $3147, $24F5, $24F5, $68FC

.row4
|0DE964| dw $28FC, $24F5, $24F5, $24F5, $24F5
|0DE96E| dw $24F5, $24F5, $24F5, $24F5, $68FC

.row5
|0DE978| dw $28FC, $24F5, $3146, $3147, $3146
|0DE982| dw $3147, $3146, $3147, $24F5, $68FC

.row6
|0DE98C| dw $28FC, $24F5, $24F5, $24F5, $24F5
|0DE996| dw $24F5, $24F5, $24F5, $24F5, $68FC

.row7
|0DE9A0| dw $28FC, $24F5, $24F5, $3146, $3147
|0DE9AA| dw $3146, $3147, $24F5, $24F5, $68FC

.row8
|0DE9B4| dw $A8FB, $A8F9, $A8F9, $A8F9, $A8F9
|0DE9BE| dw $A8F9, $A8F9, $A8F9, $A8F9, $E8FB

;===================================================================================================
; Draws dungeon prizes, depending on our map marker
;===================================================================================================
DrawProgressWindow:
|0DE9C8| LDA.l $7EF3C5
|0DE9CC| CMP.b #$03
|0DE9CE| BCC DrawPendantsWindow

|0DE9D0| JMP.w DrawCrystalsWindow

;===================================================================================================

DrawPendantsWindow:
|0DE9D3| REP #$30

|0DE9D5| LDX.w #$0000

.next_row
|0DE9D8| LDA.w PendantsWindow.row0,X
|0DE9DB| STA.w $12EA,X

|0DE9DE| LDA.w PendantsWindow.row1,X
|0DE9E1| STA.w $132A,X

|0DE9E4| LDA.w PendantsWindow.row2,X
|0DE9E7| STA.w $136A,X

|0DE9EA| LDA.w PendantsWindow.row3,X
|0DE9ED| STA.w $13AA,X

|0DE9F0| LDA.w PendantsWindow.row4,X
|0DE9F3| STA.w $13EA,X

|0DE9F6| LDA.w PendantsWindow.row5,X
|0DE9F9| STA.w $142A,X

|0DE9FC| LDA.w PendantsWindow.row6,X
|0DE9FF| STA.w $146A,X

|0DEA02| LDA.w PendantsWindow.row7,X
|0DEA05| STA.w $14AA,X

|0DEA08| LDA.w PendantsWindow.row8,X
|0DEA0B| STA.w $14EA,X

|0DEA0E| INX
|0DEA0F| INX
|0DEA10| CPX.w #$0014
|0DEA13| BCC .next_row

;---------------------------------------------------------------------------------------------------

|0DEA15| LDA.w #$13B2
|0DEA18| STA.b $00

|0DEA1A| LDA.l $7EF374
|0DEA1E| AND.w #$0001
|0DEA21| STA.b $02

|0DEA23| LDA.w #ItemIcons.pendant_red
|0DEA26| STA.b $04

|0DEA28| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DEA2B| LDA.w #$146E
|0DEA2E| STA.b $00
|0DEA30| STZ.b $02

|0DEA32| LDA.l $7EF374
|0DEA36| AND.w #$0002
|0DEA39| BEQ .missing_blue

|0DEA3B| INC.b $02

.missing_blue
|0DEA3D| LDA.w #ItemIcons.pendant_blue
|0DEA40| STA.b $04

|0DEA42| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DEA45| LDA.w #$1476
|0DEA48| STA.b $00
|0DEA4A| STZ.b $02

|0DEA4C| LDA.l $7EF374
|0DEA50| AND.w #$0004
|0DEA53| BEQ .missing_green

|0DEA55| INC.b $02

.missing_green
|0DEA57| LDA.w #ItemIcons.pendant_green
|0DEA5A| STA.b $04

|0DEA5C| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DEA5F| SEP #$30

|0DEA61| RTS

;===================================================================================================

DrawCrystalsWindow:
|0DEA62| REP #$30

|0DEA64| LDX.w #$0000

.next_row
|0DEA67| LDA.w CrystalsWindow.row0,X
|0DEA6A| STA.w $12EA,X

|0DEA6D| LDA.w CrystalsWindow.row1,X
|0DEA70| STA.w $132A,X

|0DEA73| LDA.w CrystalsWindow.row2,X
|0DEA76| STA.w $136A,X

|0DEA79| LDA.w CrystalsWindow.row3,X
|0DEA7C| STA.w $13AA,X

|0DEA7F| LDA.w CrystalsWindow.row4,X
|0DEA82| STA.w $13EA,X

|0DEA85| LDA.w CrystalsWindow.row5,X
|0DEA88| STA.w $142A,X

|0DEA8B| LDA.w CrystalsWindow.row6,X
|0DEA8E| STA.w $146A,X

|0DEA91| LDA.w CrystalsWindow.row7,X
|0DEA94| STA.w $14AA,X

|0DEA97| LDA.w CrystalsWindow.row8,X
|0DEA9A| STA.w $14EA,X

|0DEA9D| INX
|0DEA9E| INX
|0DEA9F| CPX.w #$0014
|0DEAA2| BCC .next_row

;---------------------------------------------------------------------------------------------------

|0DEAA4| LDA.l $7EF37A
|0DEAA8| AND.w #$0001
|0DEAAB| BEQ .missing_crystal_6

|0DEAAD| LDA.w #$2D44
|0DEAB0| STA.w $13B0

|0DEAB3| LDA.w #$2D45
|0DEAB6| STA.w $13B2

;---------------------------------------------------------------------------------------------------

.missing_crystal_6
|0DEAB9| LDA.l $7EF37A
|0DEABD| AND.w #$0002
|0DEAC0| BEQ .missing_crystal_1

|0DEAC2| LDA.w #$2D44
|0DEAC5| STA.w $13B4

|0DEAC8| LDA.w #$2D45
|0DEACB| STA.w $13B6

;---------------------------------------------------------------------------------------------------

.missing_crystal_1
|0DEACE| LDA.l $7EF37A
|0DEAD2| AND.w #$0004
|0DEAD5| BEQ .missing_crystal_5

|0DEAD7| LDA.w #$2D44
|0DEADA| STA.w $142E

|0DEADD| LDA.w #$2D45
|0DEAE0| STA.w $1430

;---------------------------------------------------------------------------------------------------

.missing_crystal_5
|0DEAE3| LDA.l $7EF37A
|0DEAE7| AND.w #$0008
|0DEAEA| BEQ .missing_crystal_7

|0DEAEC| LDA.w #$2D44
|0DEAEF| STA.w $1432

|0DEAF2| LDA.w #$2D45
|0DEAF5| STA.w $1434

;---------------------------------------------------------------------------------------------------

.missing_crystal_7
|0DEAF8| LDA.l $7EF37A
|0DEAFC| AND.w #$0010
|0DEAFF| BEQ .missing_crystal_2

|0DEB01| LDA.w #$2D44
|0DEB04| STA.w $1436

|0DEB07| LDA.w #$2D45
|0DEB0A| STA.w $1438

;---------------------------------------------------------------------------------------------------

.missing_crystal_2
|0DEB0D| LDA.l $7EF37A
|0DEB11| AND.w #$0020
|0DEB14| BEQ .missing_crystal_4

|0DEB16| LDA.w #$2D44
|0DEB19| STA.w $14B0

|0DEB1C| LDA.w #$2D45
|0DEB1F| STA.w $14B2

;---------------------------------------------------------------------------------------------------

.missing_crystal_4
|0DEB22| LDA.l $7EF37A
|0DEB26| AND.w #$0040
|0DEB29| BEQ .missing_crystal_3

|0DEB2B| LDA.w #$2D44
|0DEB2E| STA.w $14B4

|0DEB31| LDA.w #$2D45
|0DEB34| STA.w $14B6

;---------------------------------------------------------------------------------------------------

.missing_crystal_3
|0DEB37| SEP #$30

|0DEB39| RTS

;===================================================================================================

DrawEquippedYItem:
|0DEB3A| REP #$30

|0DEB3C| LDA.w $0202
|0DEB3F| AND.w #$00FF
|0DEB42| DEC A
|0DEB43| ASL A
|0DEB44| TAX

|0DEB45| LDY.w MenuCursorPositions,X

|0DEB48| LDA.w $0000,Y
|0DEB4B| STA.w $11B2

|0DEB4E| LDA.w $0002,Y
|0DEB51| STA.w $11B4

|0DEB54| LDA.w $0040,Y
|0DEB57| STA.w $11F2

|0DEB5A| LDA.w $0042,Y
|0DEB5D| STA.w $11F4

|0DEB60| LDA.w $0207
|0DEB63| AND.w #$0010
|0DEB66| BEQ .dont_flicker

;---------------------------------------------------------------------------------------------------

; These "ROM" writes end up in the $1100 range
|0DEB68| LDA.w #$3C61
|0DEB6B| STA.w $0DFFC0,Y

|0DEB6E| ORA.w #$4000
|0DEB71| STA.w $0DFFC2,Y

|0DEB74| LDA.w #$3C70
|0DEB77| STA.w $0DFFFE,Y

|0DEB7A| ORA.w #$4000
|0DEB7D| STA.w $0004,Y

|0DEB80| LDA.w #$BC70
|0DEB83| STA.w $003E,Y

|0DEB86| ORA.w #$4000
|0DEB89| STA.w $0044,Y

|0DEB8C| LDA.w #$BC61
|0DEB8F| STA.w $0080,Y

|0DEB92| ORA.w #$4000
|0DEB95| STA.w $0082,Y

|0DEB98| LDA.w #$3C60
|0DEB9B| STA.w $0DFFBE,Y

|0DEB9E| ORA.w #$4000
|0DEBA1| STA.w $0DFFC4,Y

|0DEBA4| ORA.w #$8000
|0DEBA7| STA.w $0084,Y

|0DEBAA| EOR.w #$4000
|0DEBAD| STA.w $007E,Y

;---------------------------------------------------------------------------------------------------

.dont_flicker
|0DEBB0| LDA.w $0202
|0DEBB3| AND.w #$00FF
|0DEBB6| CMP.w #$0010
|0DEBB9| BNE .not_bottle

|0DEBBB| LDA.l $7EF34F
|0DEBBF| AND.w #$00FF
|0DEBC2| BEQ .not_bottle

|0DEBC4| TAX

|0DEBC5| LDA.l $7EF35B,X
|0DEBC9| AND.w #$00FF
|0DEBCC| DEC A

|0DEBCD| ASL A ; x32
|0DEBCE| ASL A
|0DEBCF| ASL A
|0DEBD0| ASL A
|0DEBD1| ASL A

|0DEBD2| TAX

|0DEBD3| LDY.w #$0000

.next_character_bottle
|0DEBD6| LDA.w ItemMenuNameText_Bottles+$00,X
|0DEBD9| STA.w $122C,Y

|0DEBDC| LDA.w ItemMenuNameText_Bottles+$10,X
|0DEBDF| STA.w $126C,Y

|0DEBE2| INX
|0DEBE3| INX

|0DEBE4| INY
|0DEBE5| INY
|0DEBE6| CPY.w #$0010
|0DEBE9| BCC .next_character_bottle

|0DEBEB| JMP.w .exit

;---------------------------------------------------------------------------------------------------

.not_bottle
|0DEBEE| LDA.w $0202
|0DEBF1| AND.w #$00FF
|0DEBF4| CMP.w #$0005
|0DEBF7| BNE .not_powder

|0DEBF9| LDA.l $7EF344
|0DEBFD| AND.w #$00FF
|0DEC00| DEC A
|0DEC01| BEQ .not_powder

|0DEC03| DEC A

|0DEC04| ASL A ; x32
|0DEC05| ASL A
|0DEC06| ASL A
|0DEC07| ASL A
|0DEC08| ASL A

|0DEC09| TAX

|0DEC0A| LDY.w #$0000

.next_character_powder
|0DEC0D| LDA.w ItemMenuNameText_Powder+$00,X
|0DEC10| STA.w $122C,Y

|0DEC13| LDA.w ItemMenuNameText_Powder+$10,X
|0DEC16| STA.w $126C,Y

|0DEC19| INX
|0DEC1A| INX

|0DEC1B| INY
|0DEC1C| INY
|0DEC1D| CPY.w #$0010
|0DEC20| BCC .next_character_powder

|0DEC22| JMP.w .exit

;---------------------------------------------------------------------------------------------------

.not_powder
|0DEC25| LDA.w $0202
|0DEC28| AND.w #$00FF
|0DEC2B| CMP.w #$0014
|0DEC2E| BNE .not_mirror

|0DEC30| LDA.l $7EF353
|0DEC34| AND.w #$00FF
|0DEC37| DEC A
|0DEC38| BEQ .not_mirror

|0DEC3A| DEC A
|0DEC3B| ASL A ; x32
|0DEC3C| ASL A
|0DEC3D| ASL A
|0DEC3E| ASL A
|0DEC3F| ASL A
|0DEC40| TAX

|0DEC41| LDY.w #$0000

.next_character_mirror
|0DEC44| LDA.w ItemMenuNameText_Mirror+$00,X
|0DEC47| STA.w $122C,Y

|0DEC4A| LDA.w ItemMenuNameText_Mirror+$10,X
|0DEC4D| STA.w $126C,Y

|0DEC50| INX
|0DEC51| INX

|0DEC52| INY
|0DEC53| INY
|0DEC54| CPY.w #$0010
|0DEC57| BCC .next_character_mirror

|0DEC59| JMP.w .exit

;===================================================================================================

.not_mirror
|0DEC5C| LDA.w $0202
|0DEC5F| AND.w #$00FF
|0DEC62| CMP.w #$000D
|0DEC65| BNE .not_flute

|0DEC67| LDA.l $7EF34C
|0DEC6B| AND.w #$00FF
|0DEC6E| DEC A
|0DEC6F| BEQ .not_flute

|0DEC71| DEC A
|0DEC72| ASL A ; x32
|0DEC73| ASL A
|0DEC74| ASL A
|0DEC75| ASL A
|0DEC76| ASL A
|0DEC77| TAX

|0DEC78| LDY.w #$0000

.next_character_flute
|0DEC7B| LDA.w ItemMenuNameText_Flute+$00,X
|0DEC7E| STA.w $122C,Y

|0DEC81| LDA.w ItemMenuNameText_Flute+$10,X
|0DEC84| STA.w $126C,Y

|0DEC87| INX
|0DEC88| INX

|0DEC89| INY
|0DEC8A| INY
|0DEC8B| CPY.w #$0010
|0DEC8E| BCC .next_character_flute

|0DEC90| BRA .exit

;---------------------------------------------------------------------------------------------------

.not_flute
|0DEC92| LDA.w $0202
|0DEC95| AND.w #$00FF
|0DEC98| CMP.w #$0001
|0DEC9B| BNE .not_bow

|0DEC9D| LDA.l $7EF340
|0DECA1| AND.w #$00FF
|0DECA4| DEC A
|0DECA5| BEQ .not_bow

|0DECA7| DEC A
|0DECA8| ASL A ; x32
|0DECA9| ASL A
|0DECAA| ASL A
|0DECAB| ASL A
|0DECAC| ASL A
|0DECAD| TAX

|0DECAE| LDY.w #$0000

.next_character_bow
|0DECB1| LDA.w ItemMenuNameText_Bow+$00,X
|0DECB4| STA.w $122C,Y

|0DECB7| LDA.w ItemMenuNameText_Bow+$10,X
|0DECBA| STA.w $126C,Y

|0DECBD| INX
|0DECBE| INX

|0DECBF| INY
|0DECC0| INY
|0DECC1| CPY.w #$0010
|0DECC4| BCC .next_character_bow

|0DECC6| BRA .exit

;---------------------------------------------------------------------------------------------------

.not_bow
|0DECC8| TXA
|0DECC9| ASL A ; x16
|0DECCA| ASL A
|0DECCB| ASL A
|0DECCC| ASL A
|0DECCD| TAX

|0DECCE| LDY.w #$0000

.next_character_default
|0DECD1| LDA.w ItemMenuNameText_YItems+$00,X
|0DECD4| STA.w $122C,Y

|0DECD7| LDA.w ItemMenuNameText_YItems+$10,X
|0DECDA| STA.w $126C,Y

|0DECDD| INX
|0DECDE| INX

|0DECDF| INY
|0DECE0| INY
|0DECE1| CPY.w #$0010
|0DECE4| BCC .next_character_default

;---------------------------------------------------------------------------------------------------

.exit
|0DECE6| SEP #$30

|0DECE8| RTS

;===================================================================================================

DrawMoonPearl:
|0DECE9| REP #$30

|0DECEB| LDA.w #$16E0
|0DECEE| STA.b $00

|0DECF0| LDA.l $7EF357
|0DECF4| AND.w #$00FF
|0DECF7| STA.b $02

|0DECF9| LDA.w #ItemIcons.pearl
|0DECFC| STA.b $04

|0DECFE| JSR DrawMenuIcon

|0DED01| SEP #$30

|0DED03| RTS

;===================================================================================================
; This routine is vastly inferior to the routine I found in Shin Megami Tensei's Bank 02.
;===================================================================================================
REPandSEP30:
|0DED04| REP #$30
|0DED06| SEP #$30

|0DED08| RTS

;===================================================================================================

EQUIPMENT:
|0DED09| dw $2479, $247A, $247B, $247C
|0DED11| dw $248C, $24F5, $24F5, $24F5

;===================================================================================================

DUNGEONITEM:
|0DED19| dw $2469, $246A, $246B, $246C
|0DED21| dw $246D, $246E, $246F, $24F5

;===================================================================================================

DrawEquipmentWindow:
|0DED29| REP #$30

; Draw corners
|0DED2B| LDA.w #$28FB
|0DED2E| AND.b $00
|0DED30| STA.w $156A

|0DED33| ORA.w #$8000
|0DED36| STA.w $176A

|0DED39| ORA.w #$4000
|0DED3C| STA.w $177C

|0DED3F| EOR.w #$8000
|0DED42| STA.w $157C

;---------------------------------------------------------------------------------------------------

|0DED45| LDX.w #$0000
|0DED48| LDY.w #$0006

.next_vertical
|0DED4B| LDA.w #$28FC
|0DED4E| AND.b $00
|0DED50| STA.w $15AA,X

|0DED53| ORA.w #$4000
|0DED56| STA.w $15BC,X

|0DED59| TXA
|0DED5A| CLC
|0DED5B| ADC.w #$0040
|0DED5E| TAX

|0DED5F| DEY
|0DED60| BPL .next_vertical

;---------------------------------------------------------------------------------------------------

|0DED62| LDX.w #$0000
|0DED65| LDY.w #$0007

.next_horizontal
|0DED68| LDA.w #$28F9
|0DED6B| AND.b $00
|0DED6D| STA.w $156C,X

|0DED70| ORA.w #$8000
|0DED73| STA.w $176C,X

|0DED76| INX
|0DED77| INX

|0DED78| DEY
|0DED79| BPL .next_horizontal

;---------------------------------------------------------------------------------------------------

|0DED7B| LDX.w #$0000
|0DED7E| LDY.w #$0007

|0DED81| LDA.w #$24F5

.next_empty
|0DED84| STA.w $15AC,X
|0DED87| STA.w $15EC,X
|0DED8A| STA.w $162C,X
|0DED8D| STA.w $166C,X
|0DED90| STA.w $16AC,X
|0DED93| STA.w $16EC,X
|0DED96| STA.w $172C,X

|0DED99| INX
|0DED9A| INX

|0DED9B| DEY
|0DED9C| BPL .next_empty

;---------------------------------------------------------------------------------------------------

|0DED9E| LDX.w #$0000
|0DEDA1| LDY.w #$0007

|0DEDA4| LDA.w #$28D7
|0DEDA7| AND.b $00

.next_horizontal_rule
|0DEDA9| STA.w $166C,X

|0DEDAC| INX
|0DEDAD| INX

|0DEDAE| DEY
|0DEDAF| BPL .next_horizontal_rule

;---------------------------------------------------------------------------------------------------

|0DEDB1| LDX.w #$0000
|0DEDB4| LDY.w #$0007

.next_label_letter
|0DEDB7| LDA.w EQUIPMENT,X
|0DEDBA| AND.b $00
|0DEDBC| STA.w $15AC,X

|0DEDBF| LDA.w DUNGEONITEM,X
|0DEDC2| AND.b $00
|0DEDC4| STA.w $16AC,X

|0DEDC7| INX
|0DEDC8| INX

|0DEDC9| DEY
|0DEDCA| BPL .next_label_letter

;---------------------------------------------------------------------------------------------------

|0DEDCC| LDA.w $040C
|0DEDCF| AND.w #$00FF
|0DEDD2| CMP.w #$00FF ; DUNGEON FF
|0DEDD5| BNE .in_a_dungeon

;---------------------------------------------------------------------------------------------------

|0DEDD7| LDX.w #$0000
|0DEDDA| LDY.w #$0007

|0DEDDD| LDA.w #$24F5

.delete_dungeon_item_letters
|0DEDE0| STA.w $16AC,X

|0DEDE3| INX
|0DEDE4| INX

|0DEDE5| DEY
|0DEDE6| BPL .delete_dungeon_item_letters

;---------------------------------------------------------------------------------------------------

|0DEDE8| LDA.w #$16F2
|0DEDEB| STA.b $00

|0DEDED| LDA.l $7EF36B
|0DEDF1| AND.w #$00FF
|0DEDF4| STA.b $02

|0DEDF6| LDA.w #ItemIcons.heart_pieces
|0DEDF9| STA.b $04

|0DEDFB| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

.in_a_dungeon
|0DEDFE| REP #$30

|0DEE00| LDA.w #$15EC
|0DEE03| STA.b $00

|0DEE05| LDA.l $7EF359
|0DEE09| AND.w #$00FF
|0DEE0C| CMP.w #$00FF
|0DEE0F| BNE .have_sword

|0DEE11| LDA.w #$0000

.have_sword
|0DEE14| STA.b $02

|0DEE16| LDA.w #ItemIcons.sword
|0DEE19| STA.b $04

|0DEE1B| JSR DrawMenuIcon

|0DEE1E| SEP #$30

|0DEE20| RTS

;===================================================================================================

DrawShieldIcon:
|0DEE21| REP #$30

|0DEE23| LDA.w #$15F2
|0DEE26| STA.b $00

|0DEE28| LDA.l $7EF35A
|0DEE2C| AND.w #$00FF
|0DEE2F| STA.b $02

|0DEE31| LDA.w #ItemIcons.shield
|0DEE34| STA.b $04

|0DEE36| JSR DrawMenuIcon

|0DEE39| SEP #$30

|0DEE3B| RTS

;===================================================================================================

DrawMailIcon:
|0DEE3C| REP #$30

|0DEE3E| LDA.w #$15F8
|0DEE41| STA.b $00

|0DEE43| LDA.l $7EF35B
|0DEE47| AND.w #$00FF
|0DEE4A| STA.b $02

|0DEE4C| LDA.w #ItemIcons.mail
|0DEE4F| STA.b $04

|0DEE51| JSR DrawMenuIcon

|0DEE54| SEP #$30

|0DEE56| RTS

;===================================================================================================

DrawMapAndBigKey:
|0DEE57| REP #$30

|0DEE59| LDA.w $040C
|0DEE5C| AND.w #$00FF
|0DEE5F| CMP.w #$00FF ; DUNGEON FF
|0DEE62| BEQ .no_big_key

|0DEE64| LSR A
|0DEE65| TAX

|0DEE66| LDA.l $7EF366

.shift_for_key
|0DEE6A| ASL A

|0DEE6B| DEX
|0DEE6C| BPL .shift_for_key

|0DEE6E| BCC .no_big_key

;---------------------------------------------------------------------------------------------------

|0DEE70| JSR CheckForDungeonPrize

|0DEE73| REP #$30

|0DEE75| LDA.w #$16F8
|0DEE78| STA.b $00

|0DEE7A| LDA.w #$0001
|0DEE7D| CLC
|0DEE7E| ADC.b $02
|0DEE80| STA.b $02

|0DEE82| LDA.w #ItemIcons.big_key

|0DEE85| STA.b $04

|0DEE87| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

.no_big_key
|0DEE8A| LDA.w $040C
|0DEE8D| AND.w #$00FF
|0DEE90| CMP.w #$00FF ; DUNGEON FF
|0DEE93| BEQ .no_map

|0DEE95| LSR A
|0DEE96| TAX

|0DEE97| LDA.l $7EF368

.look_for_next_map
|0DEE9B| ASL A

|0DEE9C| DEX
|0DEE9D| BPL .look_for_next_map

|0DEE9F| BCC .no_map

;---------------------------------------------------------------------------------------------------

|0DEEA1| LDA.w #$16EC
|0DEEA4| STA.b $00

|0DEEA6| LDA.w #$0001
|0DEEA9| STA.b $02

|0DEEAB| LDA.w #ItemIcons.map
|0DEEAE| STA.b $04

|0DEEB0| JSR DrawMenuIcon

.no_map
|0DEEB3| SEP #$30

|0DEEB5| RTS

;===================================================================================================

CheckForDungeonPrize:
|0DEEB6| SEP #$30

|0DEEB8| LDA.w $040C
|0DEEBB| LSR A
|0DEEBC| JSL JumpTableLocal
|0DEEC0| dw NoPrizeHad           ; Sewers
|0DEEC2| dw NoPrizeHad           ; Hyrule Castle
|0DEEC4| dw CheckForBow          ; Eastern Palace
|0DEEC6| dw CheckForGloves       ; Desert Palace
|0DEEC8| dw NoPrizeHad           ; Agahnim's Tower
|0DEECA| dw CheckForHookshot     ; Swamp Palace
|0DEECC| dw CheckForHammer       ; Palace of Darkness
|0DEECE| dw CheckForSomaria      ; Misery Mire
|0DEED0| dw CheckForFireRod      ; Skull Woods
|0DEED2| dw CheckForBlueMail     ; Ice Palace
|0DEED4| dw CheckForMoonPearl    ; Tower of Hera
|0DEED6| dw CheckForTitansMitt   ; Thieves' Town
|0DEED8| dw CheckForMirrorShield ; Turtle Rock
|0DEEDA| dw CheckForRedMail      ; Ganon's Tower

;===================================================================================================

NoPrizeHad:
|0DEEDC| STZ.b $02
|0DEEDE| STZ.b $03

|0DEEE0| RTS

;===================================================================================================

CheckForBow:
|0DEEE1| LDA.l $7EF340

;===================================================================================================

CheckThePrize:
|0DEEE5| BEQ NoPrizeHad

;===================================================================================================

HaveThePrize:
|0DEEE7| LDA.b #$01
|0DEEE9| STA.b $02
|0DEEEB| STZ.b $03

|0DEEED| RTS

;===================================================================================================

CheckForGloves:
|0DEEEE| LDA.l $7EF354
|0DEEF2| BRA CheckThePrize

;===================================================================================================

CheckForHookshot:
|0DEEF4| LDA.l $7EF342
|0DEEF8| BRA CheckThePrize

;===================================================================================================

CheckForHammer:
|0DEEFA| LDA.l $7EF34B
|0DEEFE| BRA CheckThePrize

;===================================================================================================

CheckForSomaria:
|0DEF00| LDA.l $7EF350
|0DEF04| BRA CheckThePrize

;===================================================================================================

CheckForFireRod:
|0DEF06| LDA.l $7EF345
|0DEF0A| BRA CheckThePrize

;===================================================================================================

CheckForBlueMail:
|0DEF0C| LDA.l $7EF35B
|0DEF10| BRA CheckThePrize

;===================================================================================================

CheckForMoonPearl:
|0DEF12| LDA.l $7EF357
|0DEF16| BRA CheckThePrize

;===================================================================================================

CheckForTitansMitt:
|0DEF18| LDA.l $7EF354
|0DEF1C| DEC A
|0DEF1D| BRA CheckThePrize

;===================================================================================================

CheckForMirrorShield:
|0DEF1F| LDA.l $7EF35A
|0DEF23| CMP.b #$03
|0DEF25| BEQ HaveThePrize

|0DEF27| STZ.b $02
|0DEF29| STZ.b $03

|0DEF2B| RTS

;===================================================================================================

CheckForRedMail:
|0DEF2C| LDA.l $7EF35B
|0DEF30| CMP.b #$02
|0DEF32| BEQ HaveThePrize

|0DEF34| STZ.b $02
|0DEF36| STZ.b $03

|0DEF38| RTS

;===================================================================================================

DrawCompass:
|0DEF39| REP #$30

|0DEF3B| LDA.w $040C
|0DEF3E| AND.w #$00FF
|0DEF41| CMP.w #$00FF ; DUNGEON FF
|0DEF44| BEQ .no_compass

|0DEF46| LSR A
|0DEF47| TAX

|0DEF48| LDA.l $7EF364

.find_compass_bit
|0DEF4C| ASL A

|0DEF4D| DEX
|0DEF4E| BPL .find_compass_bit

|0DEF50| BCC .no_compass

;---------------------------------------------------------------------------------------------------

|0DEF52| LDA.w #$16F2
|0DEF55| STA.b $00

|0DEF57| LDA.w #$0001
|0DEF5A| STA.b $02

|0DEF5C| LDA.w #ItemIcons.compass
|0DEF5F| STA.b $04

|0DEF61| JSR DrawMenuIcon

.no_compass
|0DEF64| SEP #$30

|0DEF66| RTS

;===================================================================================================

DrawBottleSubmenu:
|0DEF67| REP #$30

; Draw corners
|0DEF69| LDA.w #$28FB
|0DEF6C| AND.b $00
|0DEF6E| STA.w $12EA

|0DEF71| ORA.w #$8000
|0DEF74| STA.w $176A

|0DEF77| ORA.w #$4000
|0DEF7A| STA.w $177C

|0DEF7D| EOR.w #$8000
|0DEF80| STA.w $12FC

;---------------------------------------------------------------------------------------------------

|0DEF83| LDX.w #$0000
|0DEF86| LDY.w #$0010

.next_vertical
|0DEF89| LDA.w #$28FC
|0DEF8C| AND.b $00
|0DEF8E| STA.w $132A,X

|0DEF91| ORA.w #$4000
|0DEF94| STA.w $133C,X

|0DEF97| TXA
|0DEF98| CLC
|0DEF99| ADC.w #$0040
|0DEF9C| TAX

|0DEF9D| DEY
|0DEF9E| BPL .next_vertical

;---------------------------------------------------------------------------------------------------

|0DEFA0| LDX.w #$0000
|0DEFA3| LDY.w #$0007

.next_horizontal
|0DEFA6| LDA.w #$28F9
|0DEFA9| AND.b $00
|0DEFAB| STA.w $12EC,X

|0DEFAE| ORA.w #$8000
|0DEFB1| STA.w $176C,X

|0DEFB4| INX
|0DEFB5| INX

|0DEFB6| DEY
|0DEFB7| BPL .next_horizontal

;---------------------------------------------------------------------------------------------------

|0DEFB9| LDX.w #$0000
|0DEFBC| LDY.w #$0007

|0DEFBF| LDA.w #$24F5

.next_empty
|0DEFC2| STA.w $132C,X
|0DEFC5| STA.w $136C,X
|0DEFC8| STA.w $13AC,X
|0DEFCB| STA.w $13EC,X

|0DEFCE| STA.w $142C,X
|0DEFD1| STA.w $146C,X
|0DEFD4| STA.w $14AC,X
|0DEFD7| STA.w $14EC,X

|0DEFDA| STA.w $152C,X
|0DEFDD| STA.w $156C,X
|0DEFE0| STA.w $15AC,X
|0DEFE3| STA.w $15EC,X

|0DEFE6| STA.w $162C,X
|0DEFE9| STA.w $166C,X
|0DEFEC| STA.w $16AC,X
|0DEFEF| STA.w $16EC,X

|0DEFF2| STA.w $172C,X

|0DEFF5| INX
|0DEFF6| INX

|0DEFF7| DEY
|0DEFF8| BPL .next_empty

;---------------------------------------------------------------------------------------------------

|0DEFFA| REP #$30

|0DEFFC| LDA.w #$1372
|0DEFFF| STA.b $00

|0DF001| LDA.l $7EF35C
|0DF005| AND.w #$00FF
|0DF008| STA.b $02

|0DF00A| LDA.w #ItemIcons.bottles
|0DF00D| STA.b $04

|0DF00F| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DF012| LDA.w #$1472
|0DF015| STA.b $00

|0DF017| LDA.l $7EF35D
|0DF01B| AND.w #$00FF
|0DF01E| STA.b $02

|0DF020| LDA.w #ItemIcons.bottles
|0DF023| STA.b $04

|0DF025| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DF028| LDA.w #$1572
|0DF02B| STA.b $00

|0DF02D| LDA.l $7EF35E
|0DF031| AND.w #$00FF
|0DF034| STA.b $02

|0DF036| LDA.w #ItemIcons.bottles
|0DF039| STA.b $04

|0DF03B| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DF03E| LDA.w #$1672
|0DF041| STA.b $00

|0DF043| LDA.l $7EF35F
|0DF047| AND.w #$00FF
|0DF04A| STA.b $02

|0DF04C| LDA.w #ItemIcons.bottles
|0DF04F| STA.b $04

|0DF051| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------
; Draw selected bottle
;---------------------------------------------------------------------------------------------------
|0DF054| LDA.w #$1408
|0DF057| STA.b $00

|0DF059| LDA.l $7EF34F
|0DF05D| AND.w #$00FF
|0DF060| TAX

|0DF061| LDA.l $7EF35B,X
|0DF065| AND.w #$00FF
|0DF068| STA.b $02

|0DF06A| LDA.w #ItemIcons.bottles
|0DF06D| STA.b $04

|0DF06F| JSR DrawMenuIcon

;---------------------------------------------------------------------------------------------------

|0DF072| LDA.w $0202
|0DF075| AND.w #$00FF
|0DF078| DEC A
|0DF079| ASL A
|0DF07A| TAX

|0DF07B| LDY.w MenuCursorPositions,X

|0DF07E| LDA.w $0000,Y
|0DF081| STA.w $11B2

|0DF084| LDA.w $0002,Y
|0DF087| STA.w $11B4

|0DF08A| LDA.w $0040,Y
|0DF08D| STA.w $11F2

|0DF090| LDA.w $0042,Y
|0DF093| STA.w $11F4

;---------------------------------------------------------------------------------------------------

|0DF096| LDA.l $7EF34F
|0DF09A| DEC A
|0DF09B| AND.w #$00FF
|0DF09E| ASL A
|0DF09F| TAY

|0DF0A0| LDA.w BottleMenuCursorPosition,Y
|0DF0A3| TAY

|0DF0A4| LDA.w $0207 ; Does nothing. Just roll with it.

|0DF0A7| LDA.w #$3C61
|0DF0AA| STA.w $12AA,Y

|0DF0AD| ORA.w #$4000
|0DF0B0| STA.w $12AC,Y

|0DF0B3| LDA.w #$3C70
|0DF0B6| STA.w $12E8,Y

|0DF0B9| ORA.w #$4000
|0DF0BC| STA.w $12EE,Y

|0DF0BF| LDA.w #$BC70
|0DF0C2| STA.w $1328,Y

|0DF0C5| ORA.w #$4000
|0DF0C8| STA.w $132E,Y

|0DF0CB| LDA.w #$BC61
|0DF0CE| STA.w $136A,Y

|0DF0D1| ORA.w #$4000
|0DF0D4| STA.w $136C,Y

|0DF0D7| LDA.w #$3C60
|0DF0DA| STA.w $12A8,Y

|0DF0DD| ORA.w #$4000
|0DF0E0| STA.w $12AE,Y

|0DF0E3| ORA.w #$8000
|0DF0E6| STA.w $136E,Y

|0DF0E9| EOR.w #$4000
|0DF0EC| STA.w $1368,Y

|0DF0EF| SEP #$30

|0DF0F1| LDA.b #$10
|0DF0F3| STA.w $0207

|0DF0F6| RTS

;===================================================================================================

HexToDec:
|0DF0F7| REP #$30

|0DF0F9| STZ.w $0003

|0DF0FC| LDX.w #$0000
|0DF0FF| LDY.w #$0002

;---------------------------------------------------------------------------------------------------

.next_power_check
|0DF102| CMP.w PowersOfTen,Y
|0DF105| BCC .under_power_of_10

|0DF107| SEC
|0DF108| SBC.w PowersOfTen,Y

|0DF10B| INC.b $03,X

|0DF10D| BRA .next_power_check

.under_power_of_10
|0DF10F| INX

|0DF110| DEY
|0DF111| DEY
|0DF112| BPL .next_power_check

|0DF114| STA.b $05

;---------------------------------------------------------------------------------------------------

|0DF116| SEP #$30

|0DF118| LDX.b #$02

.next_digit
|0DF11A| LDA.b $03,X
|0DF11C| CMP.b #$7F
|0DF11E| BEQ .draw_blank

|0DF120| ORA.b #$90

.draw_blank
|0DF122| STA.b $03,X

|0DF124| DEX
|0DF125| BPL .next_digit

|0DF127| RTS

;===================================================================================================

FullyRefillHealth:
|0DF128| LDA.l $7EF36D ; while current HP < MAX_HP
|0DF12C| CMP.l $7EF36C
|0DF130| BCC .keep_healing

|0DF132| LDA.l $7EF36C
|0DF136| STA.l $7EF36D

|0DF13A| LDA.b #$00 ; no more healing
|0DF13C| STA.l $7EF372

|0DF140| LDA.w $020A ; refill flag
|0DF143| BNE .flag_as_done

|0DF145| SEC

|0DF146| RTL

.keep_healing
|0DF147| LDA.b #$A0 ; set heal target to 20 hearts
|0DF149| STA.l $7EF372

.flag_as_done
|0DF14D| CLC

|0DF14E| RTL

;===================================================================================================

AnimateHeartRefill:
|0DF14F| SEP #$30

|0DF151| LDA.b #$7EC768
|0DF153| STA.b $00

|0DF155| LDA.b #>$7EC768
|0DF157| STA.b $01

|0DF159| LDA.b #^$7EC768
|0DF15B| STA.b $02

|0DF15D| DEC.w $0208
|0DF160| BNE .exit

;---------------------------------------------------------------------------------------------------

|0DF162| REP #$30

|0DF164| LDA.l $7EF36D
|0DF168| AND.w #$00F8

|0DF16B| DEC A

|0DF16C| LSR A
|0DF16D| LSR A
|0DF16E| LSR A
|0DF16F| ASL A
|0DF170| TAY

|0DF171| CMP.w #$0014
|0DF174| BCC .same_row

|0DF176| SBC.w #$0014
|0DF179| TAY

|0DF17A| LDA.b $00
|0DF17C| CLC
|0DF17D| ADC.w #$0040
|0DF180| STA.b $00

;---------------------------------------------------------------------------------------------------

.same_row
|0DF182| SEP #$30

|0DF184| LDX.w $0209

|0DF187| LDA.l AllOnes,X
|0DF18B| STA.w $0208

|0DF18E| TXA
|0DF18F| ASL A
|0DF190| TAX

|0DF191| LDA.l HeartFlipTiles+0,X
|0DF195| STA.b [$00],Y

|0DF197| INY

|0DF198| LDA.l HeartFlipTiles+1,X
|0DF19C| STA.b [$00],Y

|0DF19E| LDA.w $0209
|0DF1A1| INC A
|0DF1A2| AND.b #$03
|0DF1A4| STA.w $0209

|0DF1A7| BNE .exit

|0DF1A9| SEP #$30

|0DF1AB| JSR RebuildHUD

|0DF1AE| STZ.w $020A

.exit
|0DF1B1| CLC

|0DF1B2| RTS

;===================================================================================================

FullyRefillMagic:
|0DF1B3| SEP #$30

|0DF1B5| LDA.l $7EF36E
|0DF1B9| CMP.b #$80
|0DF1BB| BCS .done

|0DF1BD| LDA.b #$80 ; full magic refill
|0DF1BF| STA.l $7EF373

|0DF1C3| SEP #$30 ; [USELESS]

|0DF1C5| RTL

.done
|0DF1C6| SEP #$31 ; shoulda just exited

|0DF1C8| RTL

;===================================================================================================

ItemMenuNameText_YItems:
|0DF1C9| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; ユミ
|0DF1D9| dw $24F5, $24F5, $2574, $24F5, $24F5, $256F, $24F5, $24F5 ; bow

|0DF1E9| dw $24F5, $242F, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; ブーメラン
|0DF1F9| dw $24F5, $256B, $243F, $2571, $2576, $257C, $24F5, $24F5 ; boomerang

|0DF209| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; フックショット
|0DF219| dw $256B, $257E, $2557, $255B, $257D, $257E, $2563, $24F5 ; hookshot

|0DF229| dw $24F5, $24F5, $242F, $24F5, $242F, $24F5, $24F5, $24F5 ; ばくだん
|0DF239| dw $24F5, $24F5, $2419, $2407, $240F, $242D, $24F5, $24F5 ; bombs

|0DF249| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; きのこ
|0DF259| dw $24F5, $24F5, $2406, $2418, $2409, $24F5, $24F5, $24F5 ; mushroom

|0DF269| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $242F, $24F5 ; ファイアロッド
|0DF279| dw $256B, $24AA, $2551, $2550, $257A, $257E, $2563, $24F5 ; fire rod

|0DF289| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $242F, $24F5 ; アイスロッド
|0DF299| dw $24F5, $2550, $2551, $255C, $257A, $257E, $2563, $24F5 ; ice rod

|0DF2A9| dw $24F5, $24F5, $242F, $24F5, $242F, $24F5, $24F5, $24F5 ; ボンバー
|0DF2B9| dw $24F5, $24F5, $256D, $257C, $2569, $243F, $24F5, $24F5 ; bombos

|0DF2C9| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; エーテル
|0DF2D9| dw $24F5, $24F5, $2553, $243F, $2562, $2578, $24F5, $24F5 ; ether

|0DF2E9| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; シェイク
|0DF2F9| dw $24F5, $24F5, $255B, $244B, $2551, $2557, $24F5, $24F5 ; quake

|0DF309| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; カンテラ
|0DF319| dw $24F5, $24F5, $2555, $257C, $2562, $2576, $24F5, $24F5 ; lamp

|0DF329| dw $24F5, $242F, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; マジックハンマー
|0DF339| dw $256E, $255B, $257E, $2557, $2569, $257C, $256E, $243F ; magic hammer

|0DF349| dw $24F5, $24F5, $24F5, $24F5, $242F, $24F5, $24F5, $24F5 ; シャベル
|0DF359| dw $24F5, $24F5, $255B, $244F, $256C, $2578, $24F5, $24F5 ; shovel

|0DF369| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; むしとリアミ
|0DF379| dw $24F5, $2420, $240B, $2413, $2427, $2550, $256F, $24F5 ; bug net

|0DF389| dw $24F5, $24F5, $242F, $24F5, $24F5, $24F5, $24F5, $24F5 ; ムドラのしょ
|0DF399| dw $24F5, $2570, $2563, $2576, $2418, $240B, $2430, $24F5 ; book of mudora

|0DF3A9| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; きのこ
|0DF3B9| dw $24F5, $24F5, $2406, $2418, $2409, $24F5, $24F5, $24F5 ; mushroom

|0DF3C9| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; ソマリアのツエ
|0DF3D9| dw $255E, $256E, $2577, $2550, $2418, $2561, $2553, $24F5 ; cane of somaria

|0DF3E9| dw $24F5, $242F, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; バイラのツエ
|0DF3F9| dw $24F5, $2569, $2551, $2576, $2418, $2561, $2553, $24F5 ; cane of byrna

|0DF409| dw $24F5, $242F, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; マジックマント
|0DF419| dw $256E, $255B, $257E, $2557, $256E, $257C, $2563, $24F5 ; magic cape

|0DF429| dw $24F5, $24F5, $24F5, $242F, $24F5, $24F5, $24F5, $24F5 ; てがみ
|0DF439| dw $24F5, $24F5, $2412, $2405, $241F, $24F5, $24F5, $24F5 ; letter

;===================================================================================================

ItemMenuNameText_Bottles:
|0DF449| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; きのこ
|0DF459| dw $24F5, $24F5, $2406, $2418, $2409, $24F5, $24F5, $24F5 ; mushroom

|0DF469| dw $24F5, $24F5, $242F, $24F5, $24F5, $24F5, $24F5, $24F5 ; びん
|0DF479| dw $24F5, $24F5, $241A, $24F5, $24F5, $242D, $24F5, $24F5 ; bottle

|0DF489| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; いのちの　クスリ
|0DF499| dw $2401, $2418, $2410, $2418, $24F5, $2557, $255C, $2577 ; life potion

|0DF4A9| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; まほうの　クスリ
|0DF4B9| dw $241E, $241D, $2402, $2418, $24F5, $2557, $255C, $2577 ; magic potion

|0DF4C9| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; いのちとまほう
|0DF4D9| dw $2401, $2418, $2410, $2413, $241E, $241D, $2402, $24F5 ; life and magic

|0DF4E9| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; ようせい
|0DF4F9| dw $24F5, $24F5, $2425, $2402, $240D, $2401, $24F5, $24F5 ; fairy

|0DF509| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; ハチ
|0DF519| dw $24F5, $24F5, $2569, $24F5, $24F5, $2560, $24F5, $24F5 ; bee

|0DF529| dw $24F5, $24F5, $242F, $24F5, $24F5, $24F5, $24F5, $24F5 ; おうごんのハチ
|0DF539| dw $2404, $2402, $2409, $242D, $2418, $2569, $2560, $24F5 ; golden bee

;===================================================================================================

ItemMenuNameText_Powder:
|0DF549| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; まほうのこな
|0DF559| dw $24F5, $241E, $241D, $2402, $2418, $2409, $2414, $24F5 ; magic powder

;===================================================================================================

ItemMenuNameText_Flute:
|0DF569| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; オカリナ
|0DF579| dw $24F5, $24F5, $2554, $2555, $2577, $2564, $24F5, $24F5 ; ocarina

|0DF589| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; オカリナ
|0DF599| dw $24F5, $24F5, $2554, $2555, $2577, $2564, $24F5, $24F5 ; ocarina

;===================================================================================================

ItemMenuNameText_Mirror:
|0DF5A9| dw $24F5, $242F, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; マジカルミラー
|0DF5B9| dw $256E, $255B, $2555, $2578, $256F, $2576, $243F, $24F5 ; magic mirror

|0DF5C9| dw $2563, $2576, $2551, $24F5, $24F5, $24F5, $24F5, $24F5 ; トライ / フォース
|0DF5D9| dw $24F5, $256B, $24AF, $243F, $255C, $24F5, $24F5, $24F5 ; triforce

;===================================================================================================

ItemMenuNameText_Bow:
|0DF5E9| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; ヤ　と　ユミ
|0DF5F9| dw $24F5, $2573, $24F5, $2413, $24F5, $2574, $256F, $24F5 ; bow and arrows

|0DF609| dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; ユミ
|0DF619| dw $24F5, $24F5, $2574, $24F5, $24F5, $256F, $24F5, $24F5 ; bow

|0DF629| dw $242F, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; ぎんのヤとユミ
|0DF639| dw $2406, $242D, $2418, $2573, $2413, $2574, $256F, $24F5 ; bow and silver arrows

;===================================================================================================

ItemIcons:

.bows
|0DF649| dw $20F5, $20F5, $20F5, $20F5 ; No bow
|0DF651| dw $28BA, $28E9, $28E8, $28CB ; Empty bow
|0DF659| dw $28BA, $284A, $2849, $28CB ; Bow and arrows
|0DF661| dw $28BA, $28E9, $28E8, $28CB ; Empty silvers bow
|0DF669| dw $28BA, $28BB, $24CA, $28CB ; Silver bow and arrows

.booms
|0DF671| dw $20F5, $20F5, $20F5, $20F5 ; No boomerang
|0DF679| dw $2CB8, $2CB9, $2CF5, $2CC9 ; Blue boomerang
|0DF681| dw $24B8, $24B9, $24F5, $24C9 ; Red boomerang

.hook
|0DF689| dw $20F5, $20F5, $20F5, $20F5 ; No hookshot
|0DF691| dw $24F5, $24F6, $24C0, $24F5 ; Hookshot

.bombs
|0DF699| dw $20F5, $20F5, $20F5, $20F5 ; No bombs
|0DF6A1| dw $2CB2, $2CB3, $2CC2, $6CC2 ; Bombs

.powder
|0DF6A9| dw $20F5, $20F5, $20F5, $20F5 ; No powder
|0DF6B1| dw $2444, $2445, $2446, $2447 ; Mushroom
|0DF6B9| dw $203B, $203C, $203D, $203E ; Powder

.fire_rod
|0DF6C1| dw $20F5, $20F5, $20F5, $20F5 ; No fire rod
|0DF6C9| dw $24B0, $24B1, $24C0, $24C1 ; Fire rod

.ice_rod
|0DF6D1| dw $20F5, $20F5, $20F5, $20F5 ; No ice rod
|0DF6D9| dw $2CB0, $2CBE, $2CC0, $2CC1 ; Ice rod

.bombos
|0DF6E1| dw $20F5, $20F5, $20F5, $20F5 ; No bombos
|0DF6E9| dw $287D, $287E, $E87E, $E87D ; Bombos

.ether
|0DF6F1| dw $20F5, $20F5, $20F5, $20F5 ; No ether
|0DF6F9| dw $2876, $2877, $E877, $E876 ; Ether

.quake
|0DF701| dw $20F5, $20F5, $20F5, $20F5 ; No quake
|0DF709| dw $2866, $2867, $E867, $E866 ; Quake

.lamp
|0DF711| dw $20F5, $20F5, $20F5, $20F5 ; No lamp
|0DF719| dw $24BC, $24BD, $24CC, $24CD ; Lamp

.hammer
|0DF721| dw $20F5, $20F5, $20F5, $20F5 ; No hammer
|0DF729| dw $20B6, $20B7, $20C6, $20C7 ; Hammer

.flute
|0DF731| dw $20F5, $20F5, $20F5, $20F5 ; No flute
|0DF739| dw $20D0, $20D1, $20E0, $20E1 ; Shovel
|0DF741| dw $2CD4, $2CD5, $2CE4, $2CE5 ; Flute (inactive)
|0DF749| dw $2CD4, $2CD5, $2CE4, $2CE5 ; Flute (active)

.net
|0DF751| dw $20F5, $20F5, $20F5, $20F5 ; No net
|0DF759| dw $3C40, $3C41, $2842, $3C43 ; Net

.book
|0DF761| dw $20F5, $20F5, $20F5, $20F5 ; No book
|0DF769| dw $3CA5, $3CA6, $3CD8, $3CD9 ; Book of Mudora

.bottles
|0DF771| dw $20F5, $20F5, $20F5, $20F5 ; No bottle
|0DF779| dw $2044, $2045, $2046, $2047 ; Mushroom
|0DF781| dw $2837, $2838, $2CC3, $2CD3 ; Empty bottle
|0DF789| dw $24D2, $64D2, $24E2, $24E3 ; Red potion
|0DF791| dw $3CD2, $7CD2, $3CE2, $3CE3 ; Green potion
|0DF799| dw $2CD2, $6CD2, $2CE2, $2CE3 ; Blue potion
|0DF7A1| dw $2855, $6855, $2C57, $2C5A ; Fairy
|0DF7A9| dw $2837, $2838, $2839, $283A ; Bee
|0DF7B1| dw $2837, $2838, $2839, $283A ; Good bee

.somaria
|0DF7B9| dw $20F5, $20F5, $20F5, $20F5 ; No somaria
|0DF7C1| dw $24DC, $24DD, $24EC, $24ED ; Cane of Somaria

.byrna
|0DF7C9| dw $20F5, $20F5, $20F5, $20F5 ; No byrna
|0DF7D1| dw $2CDC, $2CDD, $2CEC, $2CED ; Cane of Byrna

.cape
|0DF7D9| dw $20F5, $20F5, $20F5, $20F5 ; No cape
|0DF7E1| dw $24B4, $24B5, $24C4, $24C5 ; Cape

.mirror
|0DF7E9| dw $20F5, $20F5, $20F5, $20F5 ; No mirror
|0DF7F1| dw $28DE, $28DF, $28EE, $28EF ; Letter
|0DF7F9| dw $2C62, $2C63, $2C72, $2C73 ; Mirror
|0DF801| dw $2886, $2887, $2888, $2889 ; Triforce (displays as arrows and bombs)

.gloves
|0DF809| dw $20F5, $20F5, $20F5, $20F5 ; No glove
|0DF811| dw $2130, $2131, $2140, $2141 ; Power glove
|0DF819| dw $28DA, $28DB, $28EA, $28EB ; Titan's mitt

.boots
|0DF821| dw $20F5, $20F5, $20F5, $20F5 ; No boots
|0DF829| dw $3429, $342A, $342B, $342C ; Pegasus boots

.flippers
|0DF831| dw $20F5, $20F5, $20F5, $20F5 ; No flippers
|0DF839| dw $2C9A, $2C9B, $2C9D, $2C9E ; Flippers

.pearl
|0DF841| dw $20F5, $20F5, $20F5, $20F5 ; No pearl
|0DF849| dw $2433, $2434, $2435, $2436 ; Moon pearl

.unused_nothing
|0DF851| dw $20F5, $20F5, $20F5, $20F5 ; Nothing

.sword
|0DF859| dw $20F5, $20F5, $20F5, $20F5 ; No sword
|0DF861| dw $2C64, $2CCE, $2C75, $3D25 ; Fighter sword
|0DF869| dw $2C8A, $2C65, $2474, $3D26 ; Master sword
|0DF871| dw $248A, $2465, $3C74, $2D48 ; Tempered sword
|0DF879| dw $288A, $2865, $2C74, $2D39 ; Gold sword

.shield
|0DF881| dw $24F5, $24F5, $24F5, $24F5 ; No shield
|0DF889| dw $2CFD, $6CFD, $2CFE, $6CFE ; Fighter shield
|0DF891| dw $34FF, $74FF, $349F, $749F ; Fire shield
|0DF899| dw $2880, $2881, $288D, $288E ; Mirror shield

.mail
|0DF8A1| dw $3C68, $7C68, $3C78, $7C78 ; Green mail
|0DF8A9| dw $2C68, $6C68, $2C78, $6C78 ; Blue mail
|0DF8B1| dw $2468, $6468, $2478, $6478 ; Red mail

.compass
|0DF8B9| dw $20F5, $20F5, $20F5, $20F5 ; No compass
|0DF8C1| dw $24BF, $64BF, $2CCF, $6CCF ; Compass

.big_key
|0DF8C9| dw $20F5, $20F5, $20F5, $20F5 ; No big key
|0DF8D1| dw $28D6, $68D6, $28E6, $28E7 ; Big key
|0DF8D9| dw $354B, $354C, $354D, $354E ; Big key and chest

.map
|0DF8E1| dw $20F5, $20F5, $20F5, $20F5 ; No map
|0DF8E9| dw $28DE, $28DF, $28EE, $28EF ; Map

.pendant_red
|0DF8F1| dw $313B, $313C, $313D, $313E ; No red pendant
|0DF8F9| dw $252B, $252C, $252D, $252E ; Red pendant

.pendant_blue
|0DF901| dw $313B, $313C, $313D, $313E ; No blue pendant
|0DF909| dw $2D2B, $2D2C, $2D2D, $2D2E ; Blue pendant

.pendant_green
|0DF911| dw $313B, $313C, $313D, $313E ; No green pendant
|0DF919| dw $3D2B, $3D2C, $3D2D, $3D2E ; Green pendant

.white_glove
|0DF921| dw $20F5, $20F5, $20F5, $20F5 ; No white glove?
|0DF929| dw $3D30, $3D31, $3D40, $3D41 ; White glove?

.heart_pieces
|0DF931| dw $2484, $6484, $2485, $6485 ; 0 heart pieces
|0DF939| dw $24AD, $6484, $2485, $6485 ; 1 heart piece
|0DF941| dw $24AD, $6484, $24AE, $6485 ; 2 heart pieces
|0DF949| dw $24AD, $64AD, $24AE, $6485 ; 3 heart pieces

;===================================================================================================

AbilityText:

.lifts
|0DF951| dw $2CF5, $2CF5, $2CF5, $2C2F, $2CF5 ; かつぐ.2
|0DF95B| dw $2CF5, $2C05, $2C11, $2C07, $2D28 ; lift 2

|0DF965| dw $2CF5, $2CF5, $2CF5, $2C2F, $2CF5 ; かつぐ.3
|0DF96F| dw $2CF5, $2C05, $2C11, $2C07, $2D29 ; lift 3

;---------------------------------------------------------------------------------------------------

.main_jumble
|0DF979| dw $2CF5, $2CF5, $2CF5, $2C2F, $2CF5 ; かつぐ.1
|0DF983| dw $2CF5, $2C05, $2C11, $2C07, $2D27 ; lift 1

|0DF98D| dw $2CF5, $2CF5, $2CF5, $2CF5, $2CF5 ; よむ
|0DF997| dw $2CF5, $2CF5, $2C25, $2C20, $2CF5 ; read

|0DF9A1| dw $2CF5, $2CF5, $2CF5, $2CF5, $2CF5 ; はなす
|0DF9AB| dw $2CF5, $2CF5, $2C19, $2C14, $2C0C ; talk

|0DF9B5| dw $2CF5, $2CF5, $207F, $207F, $207F ; nothing
|0DF9BF| dw $2CF5, $2CF5, $207F, $207F, $207F ; nothing

|0DF9C9| dw $2CF5, $2CF5, $2C2E, $2CF5, $2CF5 ; ひっぱる
|0DF9D3| dw $2C1A, $2C31, $2C19, $2C28, $2CF5 ; pull

|0DF9DD| dw $2CF5, $2CF5, $2CF5, $2CF5, $2CF5 ; はしる
|0DF9E7| dw $2CF5, $2C19, $2C0B, $2C28, $2CF5 ; run

|0DF9F1| dw $2CF5, $2CF5, $2CF5, $2C2F, $2CF5 ; およぐ
|0DF9FB| dw $2CF5, $2C04, $2C25, $2C07, $2CF5 ; swim

|0DFA05| dw $2CF5, $2CF5, $2CF5, $207F, $207F ; いのる
|0DFA0F| dw $2C01, $2C18, $2C28, $207F, $207F ; pray

;===================================================================================================

PowersOfTen:
|0DFA19| dw  10
|0DFA1B| dw 100

;===================================================================================================

FullHeartTiles:
|0DFA1D| dw $24A2, $24A2, $24A2

;===================================================================================================

HeartTiles:
|0DFA23| dw $24A2, $24A1, $24A0

;===================================================================================================

HeartFlipTiles:
|0DFA29| dw $24A3, $24A4, $24A3, $24A0

;===================================================================================================

AllOnes:
|0DFA31| db $01, $01, $01, $01

;===================================================================================================

MenuToEquipID:
|0DFA35| db $00 ; 0x00 - Nothing

|0DFA36| db $03 ; 0x01 - Bow
|0DFA37| db $02 ; 0x02 - Boomerang
|0DFA38| db $0E ; 0x03 - Hookshot
|0DFA39| db $01 ; 0x04 - Bombs
|0DFA3A| db $0A ; 0x05 - Mushroom/Powder
|0DFA3B| db $05 ; 0x06 - Fire rod
|0DFA3C| db $06 ; 0x07 - Ice rod
|0DFA3D| db $0F ; 0x08 - Bombos
|0DFA3E| db $10 ; 0x09 - Ether
|0DFA3F| db $11 ; 0x0A - Quake
|0DFA40| db $09 ; 0x0B - Lamp
|0DFA41| db $04 ; 0x0C - Hammer
|0DFA42| db $08 ; 0x0D - Shovel/Flute
|0DFA43| db $07 ; 0x0E - Net
|0DFA44| db $0C ; 0x0F - Book
|0DFA45| db $0B ; 0x10 - Bottle
|0DFA46| db $12 ; 0x11 - Somaria
|0DFA47| db $0D ; 0x12 - Byrna
|0DFA48| db $13 ; 0x13 - Cape
|0DFA49| db $14 ; 0x14 - Mirror

; These seem unused
|0DFA4A| db $00 ; 0x15 - Nothing
|0DFA4B| db $01 ; 0x16 - Bombs
|0DFA4C| db $06 ; 0x17 - Ice rod
|0DFA4D| db $02 ; 0x18 - Boomerang
|0DFA4E| db $07 ; 0x19 - Net
|0DFA4F| db $03 ; 0x1A - Bow
|0DFA50| db $05 ; 0x1B - Fire rod
|0DFA51| db $04 ; 0x1C - Hammer
|0DFA52| db $08 ; 0x1D - Shovel/Flute

;===================================================================================================

RestoreTorchBackground:
|0DFA53| LDA.l $7EF34A
|0DFA57| BEQ .exit

|0DFA59| LDA.l $7EC005
|0DFA5D| BEQ .exit

|0DFA5F| LDA.w $0458
|0DFA62| BNE .exit

|0DFA64| LDA.w $045A
|0DFA67| BNE .exit

|0DFA69| INC.w $0458

|0DFA6C| LDA.w $0414
|0DFA6F| CMP.b #$02
|0DFA71| BEQ .exit

|0DFA73| LDA.b #$01
|0DFA75| STA.b $1D

.exit
|0DFA77| RTL

;===================================================================================================

RebuildHUD_long:
|0DFA78| PHB
|0DFA79| PHK
|0DFA7A| PLB

|0DFA7B| JSR RebuildHUD

|0DFA7E| PLB

|0DFA7F| RTL

;===================================================================================================

RebuildHUD_HideKeys:
|0DFA80| LDA.b #$00
|0DFA82| STA.l $7EC017

|0DFA86| LDA.b #$FF

;===================================================================================================

RebuildHUD_Keys:
|0DFA88| STA.l $7EF36F

;===================================================================================================
; Why though?
;===================================================================================================
RebuildHUD_long2:
|0DFA8C| JSR RebuildHUD

|0DFA8F| RTL

;===================================================================================================
; Seriously, why?
;===================================================================================================
RebuildHUD:
|0DFA90| REP #$30

|0DFA92| PHB

|0DFA93| LDA.w #$0149
|0DFA96| LDX.w #HUDTemplate
|0DFA99| LDY.w #$7EC700
|0DFA9C| MVN ^HUDTemplate, $7E

|0DFA9F| PLB ; [USELESS]
|0DFAA0| PHB

|0DFAA1| PHK
|0DFAA2| PLB

|0DFAA3| BRA .handle_buffer

;===================================================================================================

#RebuildHUD_update:
|0DFAA5| REP #$30

|0DFAA7| PHB
|0DFAA8| PHK
|0DFAA9| PLB

.handle_buffer
|0DFAAA| JSR UpdateHUDBuffer

|0DFAAD| PLB

|0DFAAE| SEP #$30

|0DFAB0| INC.b $16

|0DFAB2| RTS

;===================================================================================================

ItemIconPointers:
|0DFAB3| dw ItemIcons.bows
|0DFAB5| dw ItemIcons.booms
|0DFAB7| dw ItemIcons.hook
|0DFAB9| dw ItemIcons.bombs
|0DFABB| dw ItemIcons.powder

|0DFABD| dw ItemIcons.fire_rod
|0DFABF| dw ItemIcons.ice_rod
|0DFAC1| dw ItemIcons.bombos
|0DFAC3| dw ItemIcons.ether
|0DFAC5| dw ItemIcons.quake

|0DFAC7| dw ItemIcons.lamp
|0DFAC9| dw ItemIcons.hammer
|0DFACB| dw ItemIcons.flute
|0DFACD| dw ItemIcons.net
|0DFACF| dw ItemIcons.book

|0DFAD1| dw ItemIcons.bottles
|0DFAD3| dw ItemIcons.somaria
|0DFAD5| dw ItemIcons.byrna
|0DFAD7| dw ItemIcons.cape
|0DFAD9| dw ItemIcons.mirror

|0DFADB| dw ItemIcons.gloves
|0DFADD| dw ItemIcons.boots
|0DFADF| dw ItemIcons.flippers
|0DFAE1| dw ItemIcons.pearl

|0DFAE3| dw ItemIcons.unused_nothing

|0DFAE5| dw ItemIcons.sword
|0DFAE7| dw ItemIcons.shield
|0DFAE9| dw ItemIcons.mail

|0DFAEB| dw ItemIcons.bottles
|0DFAED| dw ItemIcons.bottles
|0DFAEF| dw ItemIcons.bottles
|0DFAF1| dw ItemIcons.bottles

; !WEIRD
|0DFAF3| dw ItemIcons.white_glove

;===================================================================================================

MenuCursorPositions:
|0DFAF5| dw $11C8, $11CE, $11D4, $11DA, $11E0
|0DFAFF| dw $1288, $128E, $1294, $129A, $12A0
|0DFB09| dw $1348, $134E, $1354, $135A, $1360
|0DFB13| dw $1408, $140E, $1414, $141A, $1420

;===================================================================================================

UpdateHUDBuffer_update_item:
|0DFB1D| SEP #$30

|0DFB1F| LDA.l $7EF340
|0DFB23| BEQ .no_bow

|0DFB25| CMP.b #$03
|0DFB27| BCC .wooden_arrows

|0DFB29| LDA.b #$86
|0DFB2B| STA.l $7EC71E

|0DFB2F| LDA.b #$24
|0DFB31| STA.l $7EC71F

|0DFB35| LDA.b #$87
|0DFB37| STA.l $7EC720

|0DFB3B| LDA.b #$24
|0DFB3D| STA.l $7EC721

|0DFB41| LDX.b #$04

|0DFB43| LDA.l $7EF377
|0DFB47| BNE .set_bow_level

|0DFB49| LDX.b #$03
|0DFB4B| BRA .set_bow_level

;---------------------------------------------------------------------------------------------------

.wooden_arrows
|0DFB4D| LDX.b #$02

|0DFB4F| LDA.l $7EF377
|0DFB53| BNE .set_bow_level

|0DFB55| LDX.b #$01

;---------------------------------------------------------------------------------------------------

.set_bow_level
|0DFB57| TXA
|0DFB58| STA.l $7EF340

.no_bow
|0DFB5C| REP #$30

|0DFB5E| LDX.w $0202
|0DFB61| BEQ .exit

;---------------------------------------------------------------------------------------------------

|0DFB63| LDA.l $7EF33F,X
|0DFB67| AND.w #$00FF

|0DFB6A| CPX.w #$0004
|0DFB6D| BNE .not_bombs

|0DFB6F| LDA.w #$0001

.not_bombs
|0DFB72| CPX.w #$0010
|0DFB75| BNE .not_bottle

|0DFB77| TXY
|0DFB78| TAX

|0DFB79| LDA.l $7EF35B,X
|0DFB7D| AND.w #$00FF

|0DFB80| TYX

.not_bottle
|0DFB81| STA.b $02

;---------------------------------------------------------------------------------------------------

|0DFB83| TXA
|0DFB84| DEC A
|0DFB85| ASL A
|0DFB86| TAX

|0DFB87| LDA.w ItemIconPointers,X
|0DFB8A| STA.b $04

|0DFB8C| LDA.b $02
|0DFB8E| ASL A ; x8
|0DFB8F| ASL A
|0DFB90| ASL A
|0DFB91| TAY

|0DFB92| LDA.b ($04),Y
|0DFB94| STA.l $7EC74A

|0DFB98| INY
|0DFB99| INY

|0DFB9A| LDA.b ($04),Y
|0DFB9C| STA.l $7EC74C

|0DFBA0| INY
|0DFBA1| INY

|0DFBA2| LDA.b ($04),Y
|0DFBA4| STA.l $7EC78A

|0DFBA8| INY
|0DFBA9| INY

|0DFBAA| LDA.b ($04),Y
|0DFBAC| STA.l $7EC78C

.exit
|0DFBB0| RTS

;===================================================================================================

UpdateHUDBuffer:
|0DFBB1| JSR UpdateHUDBuffer_update_item

;===================================================================================================

#UpdateHUDBuffer_skip_item:
|0DFBB4| SEP #$30

|0DFBB6| LDA.b #FullHeartTiles
|0DFBB8| STA.b $0A

|0DFBBA| LDA.b #>FullHeartTiles
|0DFBBC| STA.b $0B

|0DFBBE| LDA.b #^FullHeartTiles
|0DFBC0| STA.b $0C

|0DFBC2| LDA.b #$7EC768
|0DFBC4| STA.b $07

|0DFBC6| LDA.b #>$7EC768
|0DFBC8| STA.b $08

|0DFBCA| LDA.b #^$7EC768
|0DFBCC| STA.b $09

|0DFBCE| REP #$30

|0DFBD0| LDA.l $7EF36C
|0DFBD4| AND.w #$00FF
|0DFBD7| STA.b $00
|0DFBD9| STA.b $02
|0DFBDB| STA.b $04

|0DFBDD| JSR UpdateHearts

;---------------------------------------------------------------------------------------------------

|0DFBE0| SEP #$30

|0DFBE2| LDA.b #HeartTiles
|0DFBE4| STA.b $0A

|0DFBE6| LDA.b #>HeartTiles
|0DFBE8| STA.b $0B

|0DFBEA| LDA.b #^HeartTiles
|0DFBEC| STA.b $0C

|0DFBEE| LDA.b #$7EC768
|0DFBF0| STA.b $07

|0DFBF2| LDA.b #>$7EC768
|0DFBF4| STA.b $08

|0DFBF6| LDA.b #^$7EC768
|0DFBF8| STA.b $09

|0DFBFA| LDA.l $7EF36C
|0DFBFE| CMP.l $7EF36D
|0DFC02| BEQ .hps_match

|0DFC04| SEC
|0DFC05| SBC.b #$04
|0DFC07| CMP.l $7EF36D
|0DFC0B| BCS .hps_match ; [USELESS] branch

.hps_match
|0DFC0D| LDA.l $7EF36D
|0DFC11| CLC
|0DFC12| ADC.b #$03

|0DFC14| REP #$30

|0DFC16| AND.w #$00FC
|0DFC19| STA.b $00
|0DFC1B| STA.b $04

|0DFC1D| LDA.l $7EF36C
|0DFC21| AND.w #$00FF
|0DFC24| STA.b $02

|0DFC26| JSR UpdateHearts

;===================================================================================================

#UpdateHUDBuffer_skip_hearts:
|0DFC29| REP #$30

|0DFC2B| LDA.l $7EF37B
|0DFC2F| AND.w #$00FF
|0DFC32| CMP.w #$0001
|0DFC35| BCC .not_half_magic

|0DFC37| LDA.w #$28F7
|0DFC3A| STA.l $7EC704

|0DFC3E| LDA.w #$2851
|0DFC41| STA.l $7EC706

|0DFC45| LDA.w #$28FA
|0DFC48| STA.l $7EC708

;---------------------------------------------------------------------------------------------------

.not_half_magic
|0DFC4C| LDA.l $7EF36E
|0DFC50| AND.w #$00FF
|0DFC53| CLC
|0DFC54| ADC.w #$0007
|0DFC57| AND.w #$FFF8
|0DFC5A| TAX

|0DFC5B| LDA.w MagicGaugeTiles+0,X
|0DFC5E| STA.l $7EC746

|0DFC62| LDA.w MagicGaugeTiles+2,X
|0DFC65| STA.l $7EC786

|0DFC69| LDA.w MagicGaugeTiles+4,X
|0DFC6C| STA.l $7EC7C6

|0DFC70| LDA.w MagicGaugeTiles+6,X
|0DFC73| STA.l $7EC806

;---------------------------------------------------------------------------------------------------
; Rupees
;---------------------------------------------------------------------------------------------------
|0DFC77| LDA.l $7EF362
|0DFC7B| JSR HexToDec

|0DFC7E| REP #$30

|0DFC80| LDA.b $03
|0DFC82| AND.w #$00FF
|0DFC85| ORA.w #$2400
|0DFC88| STA.l $7EC750

|0DFC8C| LDA.b $04
|0DFC8E| AND.w #$00FF
|0DFC91| ORA.w #$2400
|0DFC94| STA.l $7EC752

|0DFC98| LDA.b $05
|0DFC9A| AND.w #$00FF
|0DFC9D| ORA.w #$2400
|0DFCA0| STA.l $7EC754

;---------------------------------------------------------------------------------------------------
; Bombs
;---------------------------------------------------------------------------------------------------
|0DFCA4| LDA.l $7EF343
|0DFCA8| AND.w #$00FF
|0DFCAB| JSR HexToDec

|0DFCAE| REP #$30

|0DFCB0| LDA.b $04
|0DFCB2| AND.w #$00FF
|0DFCB5| ORA.w #$2400
|0DFCB8| STA.l $7EC758

|0DFCBC| LDA.b $05
|0DFCBE| AND.w #$00FF
|0DFCC1| ORA.w #$2400
|0DFCC4| STA.l $7EC75A

;---------------------------------------------------------------------------------------------------
; Arrows
;---------------------------------------------------------------------------------------------------
|0DFCC8| LDA.l $7EF377
|0DFCCC| AND.w #$00FF
|0DFCCF| JSR HexToDec

|0DFCD2| REP #$30

|0DFCD4| LDA.b $04
|0DFCD6| AND.w #$00FF
|0DFCD9| ORA.w #$2400
|0DFCDC| STA.l $7EC75E

|0DFCE0| LDA.b $05
|0DFCE2| AND.w #$00FF
|0DFCE5| ORA.w #$2400
|0DFCE8| STA.l $7EC760

;---------------------------------------------------------------------------------------------------
; Keys
;---------------------------------------------------------------------------------------------------
|0DFCEC| LDA.w #$007F
|0DFCEF| STA.b $05

|0DFCF1| LDA.l $7EF36F
|0DFCF5| AND.w #$00FF
|0DFCF8| CMP.w #$00FF
|0DFCFB| BEQ .no_keys

|0DFCFD| JSR HexToDec

.no_keys
|0DFD00| REP #$30

|0DFD02| LDA.b $05
|0DFD04| AND.w #$00FF
|0DFD07| ORA.w #$2400
|0DFD0A| STA.l $7EC764

|0DFD0E| CMP.w #$247F
|0DFD11| BNE .show_keys

|0DFD13| STA.l $7EC724

.show_keys
|0DFD17| SEP #$30

|0DFD19| RTS

;===================================================================================================
; TODO figure out what this was maybe meant to do
; some sort of in game tile editor using $020B?
; HUD_DisplayDebugTiles?
;===================================================================================================
UNREACHABLE_0DFD1A:
|0DFD1A| REP #$30

; Check magic for bit 5
|0DFD1C| LDA.l $7EF36E
|0DFD20| AND.w #$0020
|0DFD23| BNE .continue

|0DFD25| BRL .exit

;---------------------------------------------------------------------------------------------------

.continue
|0DFD28| LDA.w #$0C00
|0DFD2B| STA.b $0E

|0DFD2D| LDA.w $020B
|0DFD30| CMP.w #$0020
|0DFD33| BCC .dont_clear

|0DFD35| LDA.w $0010
|0DFD38| AND.w #$00FF
|0DFD3B| CMP.w #$000E
|0DFD3E| BEQ .dont_clear

|0DFD40| LDA.w $001A
|0DFD43| AND.w #$0004
|0DFD46| BNE .clear

;---------------------------------------------------------------------------------------------------

.dont_clear
|0DFD48| LDA.w $020B
|0DFD4B| BEQ .exit

|0DFD4D| LDX.w #$0000

|0DFD50| LDA.w $020B
|0DFD53| LSR A
|0DFD54| LSR A
|0DFD55| BEQ .exit

|0DFD57| TAY

|0DFD58| LDA.w #$2082
|0DFD5B| ORA.b $0E

.next_tile
|0DFD5D| STA.l $7EC742,X

|0DFD61| INX
|0DFD62| INX

|0DFD63| DEY
|0DFD64| BNE .next_tile

|0DFD66| LDA.w $020B
|0DFD69| CMP.w #$0020
|0DFD6C| BRA .skip_ahead

;---------------------------------------------------------------------------------------------------
; This is extra unreachable!
;---------------------------------------------------------------------------------------------------
#UNREACHABLE_0DFD6E:
|0DFD6E| LDA.w #$20A5
|0DFD71| ORA.b $0E
|0DFD73| STA.l $7EC742,X

|0DFD77| LDA.w #$20A6
|0DFD7A| ORA.b $0E
|0DFD7C| STA.l $7EC744,X

|0DFD80| BRA .exit

;---------------------------------------------------------------------------------------------------

.skip_ahead
|0DFD82| LDA.w $020B
|0DFD85| LSR A
|0DFD86| LSR A
|0DFD87| BCS .draw_b

;---------------------------------------------------------------------------------------------------

.draw_a
|0DFD89| LDA.w #$2080
|0DFD8C| ORA.b $0E
|0DFD8E| STA.l $7EC742,X

|0DFD92| LDA.w #$2081
|0DFD95| ORA.b $0E
|0DFD97| STA.l $7EC744,X

|0DFD9B| BRA .exit

;---------------------------------------------------------------------------------------------------

.draw_b
|0DFD9D| LDA.w #$2083
|0DFDA0| ORA.b $0E
|0DFDA2| STA.l $7EC742,X

|0DFDA6| LDA.w #$2084
|0DFDA9| ORA.b $0E
|0DFDAB| STA.l $7EC744,X

|0DFDAF| LDA.w #$2085
|0DFDB2| ORA.b $0E
|0DFDB4| STA.l $7EC746,X

;---------------------------------------------------------------------------------------------------

.exit
|0DFDB8| SEP #$30

|0DFDBA| RTS

;---------------------------------------------------------------------------------------------------

.clear
|0DFDBB| LDX.w #$0012
|0DFDBE| LDA.w #$207F

.clear_next
|0DFDC1| STA.l $7EC742,X

|0DFDC5| DEX
|0DFDC6| DEX
|0DFDC7| BPL .clear_next

|0DFDC9| BRA .exit

;===================================================================================================

UpdateHearts:
|0DFDCB| LDX.w #$0000

.next_heart
|0DFDCE| LDA.b $00
|0DFDD0| CMP.w #$0008
|0DFDD3| BCC .less_than_1_heart

|0DFDD5| SBC.w #$0008
|0DFDD8| STA.b $00

|0DFDDA| LDY.w #$0004
|0DFDDD| JSR DrawSingleHeart

|0DFDE0| INX
|0DFDE1| INX

|0DFDE2| BRA .next_heart

;---------------------------------------------------------------------------------------------------

.less_than_1_heart
|0DFDE4| CMP.w #$0005
|0DFDE7| BCC .less_than_half_a_heart

|0DFDE9| LDY.w #$0004
|0DFDEC| BRA DrawSingleHeart

.less_than_half_a_heart
|0DFDEE| CMP.w #$0001
|0DFDF1| BCC .empty_heart

|0DFDF3| LDY.w #$0002
|0DFDF6| BRA DrawSingleHeart

.empty_heart
|0DFDF8| RTS

;===================================================================================================

DrawSingleHeart:
|0DFDF9| CPX.w #$0014
|0DFDFC| BCC .dont_advance_row

|0DFDFE| LDX.w #$0000

|0DFE01| LDA.b $07
|0DFE03| CLC
|0DFE04| ADC.w #$0040
|0DFE07| STA.b $07

.dont_advance_row
|0DFE09| LDA.b [$0A],Y

|0DFE0B| TXY

|0DFE0C| STA.b [$07],Y

|0DFE0E| RTS

;===================================================================================================

MagicGaugeTiles:
|0DFE0F| dw $3CF5, $3CF5, $3CF5, $3CF5
|0DFE17| dw $3CF5, $3CF5, $3CF5, $3C5F
|0DFE1F| dw $3CF5, $3CF5, $3CF5, $3C4C
|0DFE27| dw $3CF5, $3CF5, $3CF5, $3C4D
|0DFE2F| dw $3CF5, $3CF5, $3CF5, $3C4E
|0DFE37| dw $3CF5, $3CF5, $3C5F, $3C5E
|0DFE3F| dw $3CF5, $3CF5, $3C4C, $3C5E
|0DFE47| dw $3CF5, $3CF5, $3C4D, $3C5E
|0DFE4F| dw $3CF5, $3CF5, $3C4E, $3C5E
|0DFE57| dw $3CF5, $3C5F, $3C5E, $3C5E
|0DFE5F| dw $3CF5, $3C4C, $3C5E, $3C5E
|0DFE67| dw $3CF5, $3C4D, $3C5E, $3C5E
|0DFE6F| dw $3CF5, $3C4E, $3C5E, $3C5E
|0DFE77| dw $3C5F, $3C5E, $3C5E, $3C5E
|0DFE7F| dw $3C4C, $3C5E, $3C5E, $3C5E
|0DFE87| dw $3C4D, $3C5E, $3C5E, $3C5E
|0DFE8F| dw $3C4E, $3C5E, $3C5E, $3C5E

;===================================================================================================

HUDTemplate:
|0DFE97| dw $207F, $207F, $2850, $A856
|0DFE9F| dw $2852, $285B, $285B, $285C
|0DFEA7| dw $207F, $3CA8, $207F, $207F
|0DFEAF| dw $2C88, $2C89, $207F, $20A7
|0DFEB7| dw $20A9, $207F, $2871, $207F
|0DFEBF| dw $207F, $207F, $288B, $288F
|0DFEC7| dw $24AB, $24AC, $688F, $688B
|0DFECF| dw $207F, $207F, $207F, $207F

|0DFED7| dw $207F, $207F, $2854, $2871
|0DFEDF| dw $2858, $207F, $207F, $285D
|0DFEE7| dw $207F, $207F, $207F, $207F
|0DFEEF| dw $207F, $207F, $207F, $207F
|0DFEF7| dw $207F, $207F, $207F, $207F
|0DFEFF| dw $207F, $207F, $207F, $207F
|0DFF07| dw $207F, $207F, $207F, $207F
|0DFF0F| dw $207F, $207F, $207F, $207F

|0DFF17| dw $207F, $207F, $2854, $304E
|0DFF1F| dw $2858, $207F, $207F, $285D
|0DFF27| dw $207F, $207F, $207F, $207F
|0DFF2F| dw $207F, $207F, $207F, $207F
|0DFF37| dw $207F, $207F, $207F, $207F
|0DFF3F| dw $207F, $207F, $207F, $207F
|0DFF47| dw $207F, $207F, $207F, $207F
|0DFF4F| dw $207F, $207F, $207F, $207F

|0DFF57| dw $207F, $207F, $2854, $305E
|0DFF5F| dw $2859, $A85B, $A85B, $A85C
|0DFF67| dw $207F, $207F, $207F, $207F
|0DFF6F| dw $207F, $207F, $207F, $207F
|0DFF77| dw $207F, $207F, $207F, $207F
|0DFF7F| dw $207F, $207F, $207F, $207F
|0DFF87| dw $207F, $207F, $207F, $207F
|0DFF8F| dw $207F, $207F, $207F, $207F

|0DFF97| dw $207F, $207F, $2854, $305E
|0DFF9F| dw $6854, $207F, $207F, $207F
|0DFFA7| dw $207F, $207F, $207F, $207F
|0DFFAF| dw $207F, $207F, $207F, $207F
|0DFFB7| dw $207F, $207F, $207F, $207F
|0DFFBF| dw $207F, $207F, $207F, $207F
|0DFFC7| dw $207F, $207F, $207F, $207F
|0DFFCF| dw $207F, $207F, $207F, $207F

|0DFFD7| dw $207F, $207F, $A850, $2856
|0DFFDF| dw $E850

;===================================================================================================
; FREE ROM: 0x1F
;===================================================================================================
NULL_0DFFE1:
|0DFFE1| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DFFE9| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DFFF1| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|0DFFF9| db $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

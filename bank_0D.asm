org $0D8000

;===================================================================================================
; This holds data for Link's primary poses
; y, x, ab
;   y - y offset
;   x - x offset
;   a - head oam props high nibble
;   b - body oam props high nibble
;===================================================================================================
LinkOAM_PoseData:
#_0D8000: db  0,  0, $00 ; 0x0000
#_0D8003: db  1,  0, $00 ; 0x0001
#_0D8006: db  2,  0, $00 ; 0x0002
#_0D8009: db  1,  0, $04 ; 0x0003
#_0D800C: db  2,  0, $04 ; 0x0004
#_0D800F: db  0,  0, $00 ; 0x0005
#_0D8012: db  1,  0, $00 ; 0x0006
#_0D8015: db  2,  0, $00 ; 0x0007
#_0D8018: db  1,  0, $04 ; 0x0008
#_0D801B: db  2,  0, $04 ; 0x0009
#_0D801E: db  0,  1, $44 ; 0x000A
#_0D8021: db  1,  1, $44 ; 0x000B
#_0D8024: db  2,  2, $44 ; 0x000C
#_0D8027: db  0, -1, $00 ; 0x000D
#_0D802A: db  1, -1, $00 ; 0x000E
#_0D802D: db  2, -2, $00 ; 0x000F
#_0D8030: db  0,  0, $00 ; 0x0010
#_0D8033: db  0,  0, $00 ; 0x0011
#_0D8036: db -1,  0, $00 ; 0x0012
#_0D8039: db  0,  0, $00 ; 0x0013
#_0D803C: db  0,  0, $00 ; 0x0014
#_0D803F: db  1,  0, $00 ; 0x0015
#_0D8042: db  1,  0, $00 ; 0x0016
#_0D8045: db  1,  0, $00 ; 0x0017
#_0D8048: db  1,  1, $44 ; 0x0018
#_0D804B: db  1,  1, $44 ; 0x0019
#_0D804E: db  1,  0, $44 ; 0x001A
#_0D8051: db  1,  1, $44 ; 0x001B
#_0D8054: db  1, -1, $00 ; 0x001C
#_0D8057: db  1, -1, $00 ; 0x001D
#_0D805A: db  1,  0, $00 ; 0x001E
#_0D805D: db  1, -1, $00 ; 0x001F
#_0D8060: db  0,  0, $00 ; 0x0020
#_0D8063: db  1,  0, $00 ; 0x0021
#_0D8066: db  2,  0, $00 ; 0x0022
#_0D8069: db  1,  0, $04 ; 0x0023
#_0D806C: db  2,  0, $04 ; 0x0024
#_0D806F: db  0,  0, $00 ; 0x0025
#_0D8072: db  1,  0, $00 ; 0x0026
#_0D8075: db  2,  0, $00 ; 0x0027
#_0D8078: db  1,  0, $00 ; 0x0028
#_0D807B: db  2,  0, $00 ; 0x0029
#_0D807E: db  0,  1, $44 ; 0x002A
#_0D8081: db  1,  1, $44 ; 0x002B
#_0D8084: db  2,  1, $44 ; 0x002C
#_0D8087: db  0, -1, $00 ; 0x002D
#_0D808A: db  1, -1, $00 ; 0x002E
#_0D808D: db  2, -1, $00 ; 0x002F
#_0D8090: db -1,  0, $00 ; 0x0030
#_0D8093: db  0,  0, $00 ; 0x0031
#_0D8096: db  0,  0, $00 ; 0x0032
#_0D8099: db  2,  0, $00 ; 0x0033
#_0D809C: db  1,  0, $00 ; 0x0034
#_0D809F: db  2, -1, $44 ; 0x0035
#_0D80A2: db  1,  1, $44 ; 0x0036
#_0D80A5: db  1,  1, $44 ; 0x0037
#_0D80A8: db  2,  1, $00 ; 0x0038
#_0D80AB: db  1, -1, $00 ; 0x0039
#_0D80AE: db  1, -1, $00 ; 0x003A
#_0D80B1: db  0, -8, $00 ; 0x003B
#_0D80B4: db  4,  0, $0F ; 0x003C
#_0D80B7: db  4,  0, $0F ; 0x003D
#_0D80BA: db  0,  0, $FF ; 0x003E
#_0D80BD: db  0,  0, $00 ; 0x003F
#_0D80C0: db  0,  0, $00 ; 0x0040
#_0D80C3: db  0,  0, $44 ; 0x0041
#_0D80C6: db  0,  0, $00 ; 0x0042
#_0D80C9: db  0,  0, $00 ; 0x0043
#_0D80CC: db -1,  0, $00 ; 0x0044
#_0D80CF: db -1,  0, $00 ; 0x0045
#_0D80D2: db  0,  0, $00 ; 0x0046
#_0D80D5: db  1,  0, $00 ; 0x0047
#_0D80D8: db  2,  0, $00 ; 0x0048
#_0D80DB: db  0,  0, $44 ; 0x0049
#_0D80DE: db  1,  0, $44 ; 0x004A
#_0D80E1: db  1,  0, $44 ; 0x004B
#_0D80E4: db  0,  0, $00 ; 0x004C
#_0D80E7: db  1,  0, $00 ; 0x004D
#_0D80EA: db  1,  0, $00 ; 0x004E
#_0D80ED: db -1,  0, $00 ; 0x004F
#_0D80F0: db -5,  0, $00 ; 0x0050
#_0D80F3: db  2,  0, $00 ; 0x0051
#_0D80F6: db  5,  0, $00 ; 0x0052
#_0D80F9: db -1,  0, $44 ; 0x0053
#_0D80FC: db  0,  0, $44 ; 0x0054
#_0D80FF: db  0,  1, $44 ; 0x0055
#_0D8102: db -1,  0, $00 ; 0x0056
#_0D8105: db  0,  0, $00 ; 0x0057
#_0D8108: db  0, -1, $00 ; 0x0058
#_0D810B: db  0,  0, $00 ; 0x0059
#_0D810E: db  1,  0, $00 ; 0x005A
#_0D8111: db  2,  0, $00 ; 0x005B
#_0D8114: db  1,  0, $04 ; 0x005C
#_0D8117: db  2,  0, $04 ; 0x005D
#_0D811A: db  0,  0, $00 ; 0x005E
#_0D811D: db  1,  0, $00 ; 0x005F
#_0D8120: db  2,  0, $00 ; 0x0060
#_0D8123: db  1,  0, $04 ; 0x0061
#_0D8126: db  2,  0, $04 ; 0x0062
#_0D8129: db  0,  1, $44 ; 0x0063
#_0D812C: db  1,  1, $44 ; 0x0064
#_0D812F: db  2,  1, $44 ; 0x0065
#_0D8132: db  0, -1, $00 ; 0x0066
#_0D8135: db  1, -1, $00 ; 0x0067
#_0D8138: db  2, -1, $00 ; 0x0068
#_0D813B: db  1,  0, $04 ; 0x0069
#_0D813E: db  0,  0, $44 ; 0x006A
#_0D8141: db  0,  0, $00 ; 0x006B
#_0D8144: db  0,  1, $44 ; 0x006C
#_0D8147: db  0,  0, $00 ; 0x006D
#_0D814A: db  0,  0, $04 ; 0x006E
#_0D814D: db  0,  0, $44 ; 0x006F
#_0D8150: db  0,  1, $40 ; 0x0070
#_0D8153: db  0,  2, $40 ; 0x0071
#_0D8156: db  0, -1, $00 ; 0x0072
#_0D8159: db  0, -2, $00 ; 0x0073
#_0D815C: db  0,  0, $00 ; 0x0074
#_0D815F: db  1,  0, $00 ; 0x0075
#_0D8162: db  0,  0, $00 ; 0x0076
#_0D8165: db  0,  1, $44 ; 0x0077
#_0D8168: db  0, -1, $00 ; 0x0078
#_0D816B: db  1,  1, $00 ; 0x0079
#_0D816E: db  2,  1, $00 ; 0x007A
#_0D8171: db  2,  4, $00 ; 0x007B
#_0D8174: db  2,  1, $00 ; 0x007C
#_0D8177: db  0,  0, $00 ; 0x007D
#_0D817A: db  1,  0, $00 ; 0x007E
#_0D817D: db  1,  0, $00 ; 0x007F
#_0D8180: db  0,  0, $00 ; 0x0080
#_0D8183: db  1,  0, $00 ; 0x0081
#_0D8186: db  1, -1, $44 ; 0x0082
#_0D8189: db  2, -1, $44 ; 0x0083
#_0D818C: db  2, -4, $44 ; 0x0084
#_0D818F: db  2, -1, $44 ; 0x0085
#_0D8192: db  1,  0, $44 ; 0x0086
#_0D8195: db  0,  0, $00 ; 0x0087
#_0D8198: db  0,  0, $40 ; 0x0088
#_0D819B: db  0,  0, $04 ; 0x0089
#_0D819E: db  0,  0, $04 ; 0x008A
#_0D81A1: db  0,  0, $00 ; 0x008B
#_0D81A4: db  0,  0, $00 ; 0x008C
#_0D81A7: db  0,  0, $00 ; 0x008D
#_0D81AA: db  1,  0, $00 ; 0x008E
#_0D81AD: db  2,  0, $04 ; 0x008F
#_0D81B0: db  1,  0, $00 ; 0x0090
#_0D81B3: db  2,  0, $04 ; 0x0091
#_0D81B6: db  5,  1, $40 ; 0x0092
#_0D81B9: db  6,  1, $44 ; 0x0093
#_0D81BC: db  5, -1, $04 ; 0x0094
#_0D81BF: db  6, -1, $00 ; 0x0095
#_0D81C2: db  0,  0, $00 ; 0x0096
#_0D81C5: db  0,  0, $04 ; 0x0097
#_0D81C8: db  0,  0, $00 ; 0x0098
#_0D81CB: db  0,  0, $00 ; 0x0099
#_0D81CE: db  0,  0, $44 ; 0x009A
#_0D81D1: db  0,  0, $00 ; 0x009B
#_0D81D4: db 13,  3, $44 ; 0x009C
#_0D81D7: db 12,  5, $44 ; 0x009D
#_0D81DA: db 12,  5, $44 ; 0x009E
#_0D81DD: db 13, -3, $00 ; 0x009F
#_0D81E0: db 12, -5, $00 ; 0x00A0
#_0D81E3: db 12, -5, $00 ; 0x00A1
#_0D81E6: db  1,  0, $00 ; 0x00A2
#_0D81E9: db  0,  0, $00 ; 0x00A3
#_0D81EC: db  0,  0, $00 ; 0x00A4
#_0D81EF: db  1,  0, $00 ; 0x00A5
#_0D81F2: db  2,  0, $00 ; 0x00A6
#_0D81F5: db  0,  0, $44 ; 0x00A7
#_0D81F8: db  0,  0, $00 ; 0x00A8
#_0D81FB: db  0,  0, $00 ; 0x00A9
#_0D81FE: db  0,  0, $00 ; 0x00AA
#_0D8201: db  0,  0, $44 ; 0x00AB
#_0D8204: db  0,  0, $44 ; 0x00AC
#_0D8207: db -1,  0, $04 ; 0x00AD
#_0D820A: db  0,  0, $00 ; 0x00AE
#_0D820D: db -1,  0, $00 ; 0x00AF
#_0D8210: db -2,  0, $00 ; 0x00B0
#_0D8213: db  0,  0, $00 ; 0x00B1
#_0D8216: db  0,  0, $00 ; 0x00B2
#_0D8219: db -1,  0, $00 ; 0x00B3
#_0D821C: db -2,  0, $00 ; 0x00B4
#_0D821F: db  0,  0, $00 ; 0x00B5
#_0D8222: db  0,  0, $04 ; 0x00B6
#_0D8225: db -1,  0, $00 ; 0x00B7
#_0D8228: db -2,  0, $00 ; 0x00B8
#_0D822B: db  0,  0, $00 ; 0x00B9
#_0D822E: db -1,  0, $04 ; 0x00BA
#_0D8231: db -2,  0, $04 ; 0x00BB
#_0D8234: db  0,  0, $04 ; 0x00BC
#_0D8237: db -1,  1, $44 ; 0x00BD
#_0D823A: db -1,  0, $44 ; 0x00BE
#_0D823D: db  0,  1, $44 ; 0x00BF
#_0D8240: db  0,  1, $44 ; 0x00C0
#_0D8243: db -1,  1, $44 ; 0x00C1
#_0D8246: db -1,  0, $44 ; 0x00C2
#_0D8249: db  0,  0, $44 ; 0x00C3
#_0D824C: db -1, -1, $00 ; 0x00C4
#_0D824F: db -1,  0, $00 ; 0x00C5
#_0D8252: db  0, -1, $00 ; 0x00C6
#_0D8255: db  0, -1, $00 ; 0x00C7
#_0D8258: db -1, -1, $00 ; 0x00C8
#_0D825B: db -1,  0, $00 ; 0x00C9
#_0D825E: db  0,  0, $00 ; 0x00CA
#_0D8261: db  0,  0, $04 ; 0x00CB
#_0D8264: db  1,  0, $00 ; 0x00CC
#_0D8267: db  2,  0, $00 ; 0x00CD
#_0D826A: db  1,  0, $00 ; 0x00CE
#_0D826D: db  2,  0, $00 ; 0x00CF
#_0D8270: db  1,  0, $00 ; 0x00D0
#_0D8273: db  2,  0, $00 ; 0x00D1
#_0D8276: db  1,  0, $04 ; 0x00D2
#_0D8279: db  2,  0, $04 ; 0x00D3
#_0D827C: db  1,  1, $44 ; 0x00D4
#_0D827F: db  2,  1, $44 ; 0x00D5
#_0D8282: db  1, -1, $00 ; 0x00D6
#_0D8285: db  2, -1, $00 ; 0x00D7
#_0D8288: db  2,  0, $00 ; 0x00D8
#_0D828B: db  2,  0, $00 ; 0x00D9
#_0D828E: db  3,  0, $00 ; 0x00DA
#_0D8291: db  3,  0, $00 ; 0x00DB
#_0D8294: db  2, -2, $44 ; 0x00DC
#_0D8297: db  2,  1, $44 ; 0x00DD
#_0D829A: db  2,  2, $00 ; 0x00DE
#_0D829D: db  2, -1, $00 ; 0x00DF
#_0D82A0: db  0,  0, $00 ; 0x00E0
#_0D82A3: db  1,  0, $00 ; 0x00E1
#_0D82A6: db  2,  0, $00 ; 0x00E2
#_0D82A9: db  1,  0, $04 ; 0x00E3
#_0D82AC: db  2,  0, $04 ; 0x00E4
#_0D82AF: db  2,  0, $00 ; 0x00E5
#_0D82B2: db  3,  0, $00 ; 0x00E6
#_0D82B5: db  4,  0, $00 ; 0x00E7
#_0D82B8: db  3,  0, $04 ; 0x00E8
#_0D82BB: db  4,  0, $04 ; 0x00E9
#_0D82BE: db  0,  0, $44 ; 0x00EA
#_0D82C1: db  1,  0, $44 ; 0x00EB
#_0D82C4: db  2,  0, $44 ; 0x00EC
#_0D82C7: db  0,  0, $00 ; 0x00ED
#_0D82CA: db  1,  0, $00 ; 0x00EE
#_0D82CD: db  2,  0, $00 ; 0x00EF
#_0D82D0: db  3,  0, $00 ; 0x00F0
#_0D82D3: db  2,  0, $00 ; 0x00F1
#_0D82D6: db -1,  0, $00 ; 0x00F2
#_0D82D9: db  0,  0, $00 ; 0x00F3
#_0D82DC: db  1,  0, $00 ; 0x00F4
#_0D82DF: db -1,  0, $00 ; 0x00F5
#_0D82E2: db  0,  0, $00 ; 0x00F6
#_0D82E5: db  1,  0, $00 ; 0x00F7
#_0D82E8: db -1,  0, $44 ; 0x00F8
#_0D82EB: db  0,  0, $44 ; 0x00F9
#_0D82EE: db  1,  0, $44 ; 0x00FA
#_0D82F1: db -1,  0, $44 ; 0x00FB
#_0D82F4: db  0,  0, $44 ; 0x00FC
#_0D82F7: db  1,  0, $44 ; 0x00FD
#_0D82FA: db  0,  0, $00 ; 0x00FE
#_0D82FD: db  1,  0, $00 ; 0x00FF
#_0D8300: db  2,  0, $00 ; 0x0100
#_0D8303: db  1,  0, $00 ; 0x0101
#_0D8306: db  2,  0, $00 ; 0x0102
#_0D8309: db  0,  0, $00 ; 0x0103
#_0D830C: db  3,  0, $00 ; 0x0104
#_0D830F: db  4,  0, $00 ; 0x0105
#_0D8312: db  2,  0, $00 ; 0x0106
#_0D8315: db  0, -1, $44 ; 0x0107
#_0D8318: db  1,  1, $44 ; 0x0108
#_0D831B: db  0,  1, $44 ; 0x0109
#_0D831E: db  0,  1, $00 ; 0x010A
#_0D8321: db  1,  1, $00 ; 0x010B
#_0D8324: db  0, -1, $00 ; 0x010C
#_0D8327: db  3,  0, $00 ; 0x010D
#_0D832A: db  2,  0, $04 ; 0x010E
#_0D832D: db  3,  0, $04 ; 0x010F
#_0D8330: db  0,  2, $00 ; 0x0110
#_0D8333: db  8,  8, $00 ; 0x0111
#_0D8336: db  0,  0, $00 ; 0x0112
#_0D8339: db  0,  0, $00 ; 0x0113
#_0D833C: db -1,  0, $0F ; 0x0114
#_0D833F: db  1,  0, $00 ; 0x0115
#_0D8342: db  0,  0, $04 ; 0x0116
#_0D8345: db  0,  0, $00 ; 0x0117
#_0D8348: db  2,  0, $00 ; 0x0118
#_0D834B: db  1,  4, $44 ; 0x0119
#_0D834E: db  1, -4, $00 ; 0x011A
#_0D8351: db  0,  0, $00 ; 0x011B
#_0D8354: db  1,  0, $00 ; 0x011C
#_0D8357: db  1,  0, $04 ; 0x011D
#_0D835A: db  0,  0, $00 ; 0x011E
#_0D835D: db  1,  0, $00 ; 0x011F
#_0D8360: db  1,  0, $04 ; 0x0120
#_0D8363: db  0,  1, $44 ; 0x0121
#_0D8366: db  1,  1, $44 ; 0x0122
#_0D8369: db  0, -1, $00 ; 0x0123
#_0D836C: db  1, -1, $00 ; 0x0124
#_0D836F: db  0,  0, $44 ; 0x0125
#_0D8372: db -2,  0, $00 ; 0x0126
#_0D8375: db  0, -2, $04 ; 0x0127
#_0D8378: db  0,  0, $00 ; 0x0128
#_0D837B: db  0,  1, $00 ; 0x0129
#_0D837E: db  0,  0, $04 ; 0x012A
#_0D8381: db 12,  0, $08 ; 0x012B
#_0D8384: db 14,  0, $80 ; 0x012C
#_0D8387: db 12,  0, $00 ; 0x012D
#_0D838A: db 11,  0, $00 ; 0x012E

;===================================================================================================

LinkOAM_AuxFlip:
#_0D838D: db $00, $00, $00, $40, $40, $48, $C0
#_0D8394: db $48, $C0, $48, $C0, $48, $C0, $40

;===================================================================================================
; These are OAM props and characters for 3 separate positions for the sword, and other weapons.
; $FFFF - do not draw
;===================================================================================================
LinkOAM_WeaponTiles:
#_0D839B: dw $2A05, $2A06, $FFFF
#_0D83A1: dw $6A06, $6A05, $FFFF
#_0D83A7: dw $AA05, $AA06, $FFFF
#_0D83AD: dw $2A05, $2A06, $FFFF
#_0D83B3: dw $EA06, $EA05, $FFFF
#_0D83B9: dw $6A06, $6A05, $FFFF
#_0D83BF: dw $2A05, $FFFF, $2A15
#_0D83C5: dw $AA15, $FFFF, $AA05
#_0D83CB: dw $2A05, $FFFF, $2A15
#_0D83D1: dw $AA15, $FFFF, $AA05
#_0D83D7: dw $6A05, $FFFF, $6A15
#_0D83DD: dw $EA15, $FFFF, $EA05
#_0D83E3: dw $2A05, $FFFF, $FFFF
#_0D83E9: dw $AA05, $FFFF, $FFFF
#_0D83EF: dw $6A05, $FFFF, $FFFF
#_0D83F5: dw $EA05, $FFFF, $FFFF
#_0D83FB: dw $2A05, $FFFF, $FFFF
#_0D8401: dw $AA05, $FFFF, $FFFF
#_0D8407: dw $6A05, $FFFF, $FFFF
#_0D840D: dw $EA05, $FFFF, $FFFF
#_0D8413: dw $2A05, $FFFF, $FFFF
#_0D8419: dw $AA05, $FFFF, $FFFF
#_0D841F: dw $6A05, $FFFF, $FFFF
#_0D8425: dw $EA05, $FFFF, $FFFF
#_0D842B: dw $2A05, $FFFF, $FFFF
#_0D8431: dw $AA05, $FFFF, $FFFF
#_0D8437: dw $6A05, $FFFF, $FFFF
#_0D843D: dw $EA05, $FFFF, $FFFF
#_0D8443: dw $AA15, $FFFF, $FFFF
#_0D8449: dw $2209, $FFFF, $2219
#_0D844F: dw $2209, $FFFF, $2219
#_0D8455: dw $221A, $FFFF, $2219
#_0D845B: dw $A219, $FFFF, $A209
#_0D8461: dw $2209, $FFFF, $2219
#_0D8467: dw $2209, $FFFF, $FFFF
#_0D846D: dw $2209, $FFFF, $FFFF
#_0D8473: dw $2219, $2209, $FFFF
#_0D8479: dw $6209, $FFFF, $FFFF
#_0D847F: dw $6209, $6219, $FFFF
#_0D8485: dw $A209, $E209, $FFFF
#_0D848B: dw $2209, $6209, $FFFF
#_0D8491: dw $6209, $FFFF, $E209
#_0D8497: dw $2209, $FFFF, $A209
#_0D849D: dw $A209, $FFFF, $FFFF
#_0D84A3: dw $6209, $FFFF, $FFFF
#_0D84A9: dw $2209, $FFFF, $FFFF
#_0D84AF: dw $E209, $FFFF, $FFFF
#_0D84B5: dw $2209, $FFFF, $FFFF
#_0D84BB: dw $2209, $FFFF, $FFFF
#_0D84C1: dw $6209, $FFFF, $FFFF
#_0D84C7: dw $6209, $FFFF, $FFFF
#_0D84CD: dw $221A, $FFFF, $FFFF
#_0D84D3: dw $221A, $FFFF, $FFFF
#_0D84D9: dw $221A, $FFFF, $FFFF
#_0D84DF: dw $221A, $FFFF, $FFFF
#_0D84E5: dw $2209, $FFFF, $FFFF
#_0D84EB: dw $2209, $FFFF, $FFFF
#_0D84F1: dw $2209, $FFFF, $FFFF
#_0D84F7: dw $E209, $FFFF, $FFFF
#_0D84FD: dw $2209, $FFFF, $FFFF
#_0D8503: dw $2209, $FFFF, $FFFF
#_0D8509: dw $2209, $FFFF, $FFFF
#_0D850F: dw $2209, $FFFF, $FFFF
#_0D8515: dw $2209, $FFFF, $FFFF
#_0D851B: dw $2209, $FFFF, $FFFF
#_0D8521: dw $2209, $FFFF, $FFFF
#_0D8527: dw $2209, $FFFF, $2219
#_0D852D: dw $2209, $FFFF, $2219
#_0D8533: dw $2209, $FFFF, $2219
#_0D8539: dw $6209, $FFFF, $6219
#_0D853F: dw $2209, $FFFF, $2219
#_0D8545: dw $2209, $FFFF, $FFFF
#_0D854B: dw $A219, $A209, $FFFF
#_0D8551: dw $6209, $FFFF, $FFFF
#_0D8557: dw $E209, $E219, $FFFF
#_0D855D: dw $2809, $FFFF, $FFFF

;===================================================================================================
; These are OAM props and characters for 3 separate positions for the shield
; $FFFF - do not draw
;===================================================================================================
LinkOAM_ShieldTiles:
#_0D8563: dw $2A07, $FFFF, $FFFF ; down
#_0D8569: dw $2A07, $FFFF, $FFFF ; up
#_0D856F: dw $2A07, $FFFF, $FFFF ; right
#_0D8575: dw $6A07, $FFFF, $FFFF ; left

#_0D857B: dw $2A07, $FFFF, $FFFF ; The rest of these seem to be unused/garbage
#_0D8581: dw $6A07, $FFFF, $FFFF
#_0D8587: dw $2A07, $FFFF, $FFFF
#_0D858D: dw $6A07, $FFFF, $FFFF
#_0D8593: dw $2809, $FFFF, $2819
#_0D8599: dw $2809, $FFFF, $2819
#_0D859F: dw $281A, $FFFF, $2819
#_0D85A5: dw $A819, $FFFF, $A809
#_0D85AB: dw $2809, $FFFF, $2819
#_0D85B1: dw $2809, $FFFF, $FFFF
#_0D85B7: dw $2809, $FFFF, $FFFF
#_0D85BD: dw $2819, $2809, $FFFF
#_0D85C3: dw $6809, $FFFF, $FFFF
#_0D85C9: dw $6809, $6819, $FFFF

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
LinkOAM_ShadowTiles:
#_0D85CF: dw $286C, $686C ; normal shadow
#_0D85D3: dw $2828, $6828 ; small shadow
#_0D85D7: dw $2838, $FFFF ; used while falling
#_0D85DB: dw $286E, $686E ; unused and buggy
#_0D85DF: dw $287E, $687E ; unused and buggy
#_0D85E3: dw $24D8, $64D8 ; shallow water step 1
#_0D85E7: dw $24D9, $64D9 ; shallow water step 2
#_0D85EB: dw $24DA, $64DA ; shallow water step 3
#_0D85EF: dw $22C8, $62C8 ; grass step 1
#_0D85F3: dw $22C9, $62C9 ; grass step 2
#_0D85F7: dw $22CA, $62CA ; grass step 3

;===================================================================================================
; These animation steps point to an index in LinkOAM_PoseData
;===================================================================================================
LinkOAM_AnimationSteps:
; walking
; charging dash
; index 0 used for standing still
#_0D85FB: dw $0000, $00AE, $00AF, $00B0, $00B1, $00B2, $00B3, $00B4, $00B5 ; up
#_0D860D: dw $0005, $00B6, $00B7, $00B8, $00B9, $00B6, $00BA, $00BB, $00BC ; down
#_0D861F: dw $000A, $000A, $00BD, $00BE, $00BF, $00C0, $00C1, $00C2, $00C3 ; left
#_0D8631: dw $000D, $000D, $00C4, $00C5, $00C6, $00C7, $00C8, $00C9, $00CA ; right

; powder
#_0D8643: dw $0010, $0010, $0011, $0011, $0012, $0012, $0013, $0013, $0013 ; up
#_0D8655: dw $0014, $0014, $0015, $0015, $0016, $0016, $0017, $0017, $0017 ; down
#_0D8667: dw $0018, $0018, $0019, $0019, $001A, $001A, $001B, $001B, $001B ; left
#_0D8679: dw $001C, $001C, $001D, $001D, $001E, $001E, $001F, $001F, $001F ; right

; walking with sword out
#_0D868B: dw $0020, $0021, $0022, $0020, $0023, $0024 ; up
#_0D8697: dw $0025, $0026, $0027, $0025, $0028, $0029 ; down
#_0D86A3: dw $002A, $002B, $002C, $002A, $002B, $002C ; left
#_0D86AF: dw $002D, $002E, $002F, $002D, $002E, $002F ; right

; poking with sword
#_0D86BB: dw $0031, $0030, $0032 ; up
#_0D86C1: dw $0034, $0033, $0034 ; down
#_0D86C7: dw $0036, $0035, $0037 ; left
#_0D86CD: dw $0039, $0038, $003A ; right

; falling
#_0D86D3: dw $003B, $003C, $003D, $003E, $003E, $003E

; landing in underworld
#_0D86DF: dw $0000, $000D, $0005, $000A

; bonk
#_0D86E7: dw $003F ; up
#_0D86E9: dw $0040 ; down
#_0D86EB: dw $0041 ; left
#_0D86ED: dw $0042 ; right

; hammer
; rods
#_0D86EF: dw $0043, $0044, $0045 ; up
#_0D86F5: dw $0046, $0047, $0048 ; down
#_0D86FB: dw $0049, $004A, $004B ; left
#_0D8701: dw $004C, $004D, $004E ; right

; bow
#_0D8707: dw $0000, $0021, $0074 ; up
#_0D870D: dw $0005, $0075, $0076 ; down
#_0D8713: dw $002A, $001A, $0077 ; left
#_0D8719: dw $002D, $001E, $0078 ; right

; boomerang
#_0D871F: dw $00A3, $00A4 ; up
#_0D8723: dw $00A5, $00A6 ; down
#_0D8727: dw $00A7, $001A ; left
#_0D872B: dw $00A8, $001E ; right

; tall grass
#_0D872F: dw $0000, $00CE, $00CF, $0000, $00A2, $0024 ; up
#_0D873B: dw $0005, $00D0, $00D1, $0005, $00D2, $00D3 ; down
#_0D8747: dw $000A, $00D4, $00D5, $000A, $00D4, $00D5 ; left
#_0D8753: dw $000D, $00D6, $00D7, $000D, $00D6, $00D7 ; right

; desert prayer
#_0D875F: dw $007D, $007E, $007F, $0080

; shovel
#_0D8767: dw $0053, $0054, $0055, $0056, $0057, $0058

; walk carrying item
#_0D8773: dw $0059, $005A, $005B, $0059, $005C, $005D ; up
#_0D877F: dw $005E, $005F, $0060, $005E, $0061, $0062 ; down
#_0D878B: dw $0063, $0064, $0065, $0063, $0064, $0065 ; left
#_0D8797: dw $0066, $0067, $0068, $0066, $0067, $0068 ; right

; throwing item
; seems walk cycle based too
#_0D87A3: dw $0020, $0021, $0022, $0020, $0023, $0024 ; up
#_0D87AF: dw $0025, $0026, $0027, $0025, $0028, $0029 ; down
#_0D87BB: dw $002A, $002B, $002C, $002A, $002B, $002C ; left
#_0D87C7: dw $002D, $002E, $002F, $002D, $002E, $002F ; right

; spin attack
#_0D87D3: dw $0069, $006A, $006B, $006B, $006C, $006C, $006D, $006D
#_0D87E3: dw $000D, $000D, $006E, $006F, $0070, $0071, $0072, $0073

; lifting item
#_0D87F3: dw $00D8, $00D9, $00D9 ; up
#_0D87F9: dw $00DA, $00DB, $00DB ; down
#_0D87FF: dw $00DC, $00DD, $00DD ; left
#_0D8805: dw $00DE, $00DF, $00DF ; right

; treading water
#_0D880B: dw $008E, $008F ; up
#_0D880F: dw $0090, $0091 ; down
#_0D8813: dw $0092, $0093 ; left
#_0D8817: dw $0094, $0095 ; right

; fast swim
#_0D881B: dw $0098, $0096, $0097, $0096 ; up
#_0D8823: dw $009B, $0099, $009A, $0099 ; down
#_0D882B: dw $009E, $009C, $009D, $009C ; left
#_0D8833: dw $00A1, $009F, $00A0, $009F ; right

; slow swim
#_0D883B: dw $0096, $0097, $0098 ; up
#_0D8841: dw $0099, $009A, $009B ; down
#_0D8847: dw $009C, $009D, $009E ; left
#_0D884D: dw $009F, $00A0, $00A1 ; right

; zap
#_0D8853: dw $00AB, $00AB, $00AC, $00AC ; up
#_0D885B: dw $00A9, $00A9, $00AA, $00AA ; down
#_0D8863: dw $00AB, $00AB, $00AC, $00AC ; left
#_0D886B: dw $00A9, $00A9, $00AA, $00AA ; right

; medallion spin
#_0D8873: dw $0025, $002A, $0020, $002D

; ether
#_0D887B: dw $006B, $00AD, $00AD, $00AD

; bombos
#_0D8883: dw $006B, $00CB, $00CB, $00CB, $00CB
#_0D888D: dw $00CC, $00CC, $00CC, $00A6, $00A6

; quake
#_0D8897: dw $006B, $00CB, $005E, $00CD, $00CD

; pushing
#_0D88A1: dw $00E0, $00E1, $00E2, $00E0, $00E3, $00E4 ; up
#_0D88AD: dw $00E5, $00E6, $00E7, $00E5, $00E8, $00E9 ; down
#_0D88B9: dw $00EA, $00EB, $00EC, $00EA, $00EB, $00EC ; left
#_0D88C5: dw $00ED, $00EE, $00EF, $00ED, $00EE, $00EF ; right

; pull switch
#_0D88D1: dw $0101, $0117, $0117, $0117, $0117

; TODO
#_0D88DB: dw $00F0, $00F1, $00FF, $005E

; ped pull
#_0D88E3: dw $00DB, $00FF

; grabbing
#_0D88E7: dw $0101, $0117, $0117, $0117 ; up
#_0D88EF: dw $0104, $0118, $0118, $0118 ; down
#_0D88F7: dw $0107, $0119, $0119, $0119 ; left
#_0D88FF: dw $010A, $011A, $011A, $011A ; right

; walking up spiral stairs
#_0D8907: dw $00F5, $00F6, $00F7 ; lower
#_0D890D: dw $00F2, $00F3, $00F4 ; higher

; walking down spiral stairs
#_0D8913: dw $00FB, $00FC, $00FD ; higher
#_0D8919: dw $00F8, $00F9, $00FA ; lower

; death
#_0D891F: dw $0005, $000A, $0000, $000D, $0110, $0111

; TODO
#_0D892B: dw $0000, $0021, $0074 ; up
#_0D8931: dw $0005, $0075, $0076 ; down
#_0D8937: dw $002A, $001A, $0077 ; left
#_0D893D: dw $002D, $001E, $0078 ; right

; item gets
#_0D8943: dw $0112 ; normal
#_0D8945: dw $0113 ; crystal/triforce

; sleep
#_0D8947: dw $0114, $0115

; hookshot
#_0D894B: dw $0012 ; up
#_0D894D: dw $0016 ; down
#_0D894F: dw $001A ; left
#_0D8951: dw $001E ; right

; bunny walk
; first frame used for standing still
#_0D8953: dw $011B, $011C, $011B, $011D ; up
#_0D895B: dw $011E, $011F, $011E, $0120 ; down
#_0D8963: dw $0121, $0122, $0121, $0122 ; left
#_0D896B: dw $0123, $0124, $0123, $0124 ; right

; cane
#_0D8973: dw $006F, $0125, $0126 ; up
#_0D8979: dw $006A, $00CB, $0048 ; down
#_0D897F: dw $0071, $0063, $001A ; left
#_0D8985: dw $0127, $0066, $001E ; right

; net
; TODO I think these first and last words are unreachable
#_0D898B: dw $0069
#_0D898D: dw $00CB, $006B, $000A, $000A, $006D
#_0D8997: dw $006D, $000D, $000D, $0070, $0072, $006E
#_0D89A3: dw $00CB

; tree pull
#_0D89A5: dw $0129 ; TODO seems unused but it's blank, so I think tree pull?
#_0D89A7: dw $012B, $012C, $012D, $012E, $003F

; sword slash
#_0D89B1: dw $0010, $0010, $004F, $004F, $0126, $0050, $0126, $0013, $0013 ; up
#_0D89C3: dw $0014, $0014, $0015, $0015, $0051, $0052, $0051, $0017, $0017 ; down
#_0D89D5: dw $0018, $0018, $0019, $0082, $0083, $0084, $0085, $0086, $0086 ; left
#_0D89E7: dw $001C, $001C, $001D, $0079, $007A, $007B, $007C, $0081, $0081 ; right

;===================================================================================================

LinkOAM_Aux1GFXIndex:
; falling
#_0D89F9: db $00, $FF, $FF, $02, $03, $04, $FF

; landing in underworld
#_0D8A00: db $FF, $FF, $FF

; lifting item
#_0D8A03: db $FF, $15, $17 ; up
#_0D8A06: db $FF, $15, $17 ; down
#_0D8A09: db $FF, $16, $18 ; left
#_0D8A0C: db $FF, $15, $17 ; right

; fast swim
#_0D8A0F: db $13, $0B, $0F, $FF ; up
#_0D8A13: db $11, $09, $0D, $FF ; down
#_0D8A17: db $09, $12, $0D, $FF ; left
#_0D8A1B: db $0A, $11, $0F, $FF ; right

; medallion spin
#_0D8A1F: db $FF, $FF, $FF, $FF

; ether
#_0D8A23: db $FF, $FF, $FF, $FF

; bombos
#_0D8A27: db $FF, $FF, $FF, $04, $03
#_0D8A2C: db $FF, $FF, $FF, $FF, $FF

; quake
#_0D8A31: db $FF, $FF, $FF, $FF, $FF

; pull switch
#_0D8A36: db $FF, $17, $17, $FF, $FF

; TODO
#_0D8A3B: db $FF, $FF, $FF, $FF

; ped pull
#_0D8A3F: db $FF, $FF

; grabbing
#_0D8A41: db $FF, $17, $17, $FF ; up
#_0D8A45: db $FF, $15, $15, $FF ; down
#_0D8A49: db $FF, $18, $18, $FF ; left
#_0D8A4D: db $FF, $17, $17, $FF ; right

; sword slash
#_0D8A51: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; up
#_0D8A5A: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; down
#_0D8A63: db $FF, $FF, $FF, $FF, $1A, $1A, $1A, $FF, $FF ; left
#_0D8A6C: db $FF, $FF, $FF, $FF, $19, $19, $19, $FF, $FF ; right

;===================================================================================================

LinkOAM_Aux2GFXIndex:
; falling
#_0D8A75: db $01, $FF, $FF, $FF, $FF, $FF, $FF

; landing in underworld
#_0D8A7C: db $FF, $FF, $FF

; lifting item
#_0D8A7F: db $FF, $16, $18 ; up
#_0D8A82: db $FF, $16, $18 ; down
#_0D8A85: db $FF, $FF, $FF ; left
#_0D8A88: db $FF, $FF, $FF ; right

; fast swim
#_0D8A8B: db $14, $0C, $10, $FF ; up
#_0D8A8F: db $12, $0A, $0E, $FF ; down
#_0D8A93: db $FF, $FF, $FF, $FF ; left
#_0D8A97: db $FF, $FF, $FF, $FF ; right

; medallion spin
#_0D8A9B: db $FF, $FF, $FF, $FF

; ether
#_0D8A9F: db $FF, $FF, $FF, $FF

; bombos
#_0D8AA3: db $FF, $FF, $FF, $FF, $FF
#_0D8AA8: db $FF, $FF, $FF, $FF, $FF

; quake
#_0D8AAD: db $FF, $FF, $FF, $FF, $FF

; pull switch
#_0D8AB2: db $FF, $18, $18, $FF, $FF

; TODO
#_0D8AB7: db $FF, $FF, $FF, $FF

; ped pull
#_0D8ABB: db $FF, $FF

; grabbing
#_0D8ABD: db $FF, $18, $18, $FF ; up
#_0D8AC1: db $FF, $16, $16, $FF ; down
#_0D8AC5: db $FF, $FF, $FF, $FF ; left
#_0D8AC9: db $FF, $FF, $FF, $FF ; right

; sword slash
#_0D8ACD: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; up
#_0D8AD6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; down
#_0D8ADF: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; left
#_0D8AE8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; right

;===================================================================================================

LinkOAM_WeaponGFXIndex:
; walking
; charging dash
; index 0 used for standing still
#_0D8AF1: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; up
#_0D8AFA: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; down
#_0D8B03: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; left
#_0D8B0C: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; right

; powder
#_0D8B15: db $01, $05, $0E, $1A, $06, $08, $10, $14, $00 ; up
#_0D8B1E: db $00, $02, $0D, $19, $07, $0B, $13, $17, $01 ; down
#_0D8B27: db $06, $08, $10, $14, $00, $02, $0D, $19, $07 ; left
#_0D8B30: db $06, $0A, $12, $16, $01, $04, $0F, $1B, $07 ; right

; walking with sword out
#_0D8B39: db $0A, $0A, $0A, $0A, $0A, $0A ; up
#_0D8B3F: db $09, $09, $09, $09, $09, $09 ; down
#_0D8B45: db $00, $00, $00, $00, $00, $00 ; left
#_0D8B4B: db $01, $01, $01, $01, $01, $01 ; right

; poking with sword
#_0D8B51: db $06, $0A, $06 ; up
#_0D8B54: db $07, $09, $07 ; down
#_0D8B57: db $00, $00, $00 ; left
#_0D8B5A: db $01, $01, $01 ; right

; falling
#_0D8B5D: db $FF, $FF, $FF, $FF, $FF, $FF

; landing in underworld
#_0D8B63: db $FF, $FF, $FF, $FF

; bonk
#_0D8B67: db $08 ; up
#_0D8B68: db $0A ; down
#_0D8B69: db $0A ; left
#_0D8B6A: db $08 ; right

; hammer
; rods
#_0D8B6B: db $20, $1D, $21 ; up
#_0D8B6E: db $1D, $22, $1E ; down
#_0D8B71: db $1F, $25, $26 ; left
#_0D8B74: db $1F, $23, $24 ; right

; bow
#_0D8B77: db $2A, $27, $27 ; up
#_0D8B7A: db $29, $28, $28 ; down
#_0D8B7D: db $2C, $2A, $2A ; left
#_0D8B80: db $2D, $29, $29 ; right

; boomerang
#_0D8B83: db $FF, $FF ; up
#_0D8B85: db $FF, $FF ; down
#_0D8B87: db $FF, $FF ; left
#_0D8B89: db $FF, $FF ; right

; tall grass
#_0D8B8B: db $FF, $FF, $FF, $FF, $FF, $FF ; up
#_0D8B91: db $FF, $FF, $FF, $FF, $FF, $FF ; down
#_0D8B97: db $FF, $FF, $FF, $FF, $FF, $FF ; left
#_0D8B9D: db $FF, $FF, $FF, $FF, $FF, $FF ; right

; desert prayer
#_0D8BA3: db $FF, $FF, $FF, $FF

; shovel
#_0D8BA7: db $31, $31, $32, $2F, $2F, $30

; walk carrying item
#_0D8BAD: db $FF, $FF, $FF, $FF, $FF, $FF ; up
#_0D8BB3: db $FF, $FF, $FF, $FF, $FF, $FF ; down
#_0D8BB9: db $FF, $FF, $FF, $FF, $FF, $FF ; left
#_0D8BBF: db $FF, $FF, $FF, $FF, $FF, $FF ; right

; throwing item
#_0D8BC5: db $FF, $FF, $FF, $FF, $FF, $FF ; up
#_0D8BCB: db $FF, $FF, $FF, $FF, $FF, $FF ; down
#_0D8BD1: db $FF, $FF, $FF, $FF, $FF, $FF ; left
#_0D8BD7: db $FF, $FF, $FF, $FF, $FF, $FF ; right

; spin attack
#_0D8BDD: db $0A, $08, $05, $04, $0B, $09, $02, $03
#_0D8BE5: db $08, $0A, $09, $0B, $04, $05, $03, $02

; lifting item
#_0D8BED: db $FF, $FF, $FF ; up
#_0D8BF0: db $FF, $FF, $FF ; down
#_0D8BF3: db $FF, $FF, $FF ; left
#_0D8BF6: db $FF, $FF, $FF ; right

; treading water
#_0D8BF9: db $FF, $FF ; up
#_0D8BFB: db $FF, $FF ; down
#_0D8BFD: db $FF, $FF ; left
#_0D8BFF: db $FF, $FF ; right

; fast swim
#_0D8C01: db $FF, $FF, $FF, $FF ; up
#_0D8C05: db $FF, $FF, $FF, $FF ; down
#_0D8C09: db $FF, $FF, $FF, $FF ; left
#_0D8C0D: db $FF, $FF, $FF, $FF ; right

; slow swim
#_0D8C11: db $FF, $FF, $FF ; up
#_0D8C14: db $FF, $FF, $FF ; down
#_0D8C17: db $FF, $FF, $FF ; left
#_0D8C1A: db $FF, $FF, $FF ; right

; zap
#_0D8C1D: db $FF, $00, $03, $03 ; up
#_0D8C21: db $FF, $01, $05, $05 ; down
#_0D8C25: db $FF, $00, $03, $03 ; left
#_0D8C29: db $FF, $01, $05, $05 ; right

; medallion spin
#_0D8C2D: db $09, $02, $06, $04

; ether
#_0D8C31: db $04, $0A, $06, $06

; bombos
#_0D8C35: db $0A, $06, $08, $08, $08
#_0D8C3A: db $01, $04, $0F, $0B, $07

; quake
#_0D8C3F: db $04, $0A, $06, $07, $1C

; pushing
#_0D8C44: db $FF, $FF, $FF, $FF, $FF, $FF ; up
#_0D8C4A: db $FF, $FF, $FF, $FF, $FF, $FF ; down
#_0D8C50: db $FF, $FF, $FF, $FF, $FF, $FF ; left
#_0D8C56: db $FF, $FF, $FF, $FF, $FF, $FF ; right

; pull switch
#_0D8C5C: db $FF, $FF, $FF, $FF, $FF

; TODO
#_0D8C61: db $FF, $FF, $FF, $FF

; ped pull
#_0D8C65: db $FF, $FF

; grabbing
#_0D8C67: db $FF, $FF, $FF, $FF ; up
#_0D8C6B: db $FF, $FF, $FF, $FF ; down
#_0D8C6F: db $FF, $FF, $FF, $FF ; left
#_0D8C73: db $FF, $FF, $FF, $FF ; right

; walking up spiral stairs
#_0D8C77: db $FF, $FF, $FF ; lower
#_0D8C7A: db $FF, $FF, $FF ; higher

; walking down spiral stairs
#_0D8C7D: db $FF, $FF, $FF ; higher
#_0D8C80: db $FF, $FF, $FF ; lower

; death
#_0D8C83: db $FF, $FF, $FF, $FF, $FF, $FF

; TODO
#_0D8C89: db $FF, $FF, $FF ; up
#_0D8C8C: db $FF, $FF, $FF ; down
#_0D8C8F: db $FF, $FF, $FF ; left
#_0D8C92: db $FF, $FF, $FF ; right

; item gets
#_0D8C95: db $FF ; normal
#_0D8C96: db $FF ; crystal/triforce

; sleep
#_0D8C97: db $FF, $FF

; hookshot
#_0D8C99: db $33 ; up
#_0D8C9A: db $34 ; down
#_0D8C9B: db $35 ; left
#_0D8C9C: db $36 ; right

; bunny walk
; first frame used for standing still
#_0D8C9D: db $FF, $FF, $FF, $FF ; up
#_0D8CA1: db $FF, $FF, $FF, $FF ; down
#_0D8CA5: db $FF, $FF, $FF, $FF ; left
#_0D8CA9: db $FF, $FF, $FF, $FF ; right

; cane
#_0D8CAD: db $44, $44, $46 ; up
#_0D8CB0: db $44, $44, $43 ; down
#_0D8CB3: db $47, $44, $4A ; left
#_0D8CB6: db $49, $45, $48 ; right

; net
#_0D8CB9: db $37
#_0D8CBA: db $37, $38, $39, $3A, $3B
#_0D8CBF: db $3C, $3D, $3E, $3F, $40, $41
#_0D8CC5: db $06

; tree pull
#_0D8CC6: db $4B
#_0D8CC7: db $FF, $FF, $FF, $FF, $FF

; sword slash
#_0D8CCC: db $01, $05, $0E, $1A, $0A, $06, $08, $10, $14 ; up
#_0D8CD5: db $00, $02, $0D, $19, $09, $07, $0B, $13, $17 ; down
#_0D8CDE: db $06, $08, $10, $14, $03, $00, $02, $0D, $19 ; left
#_0D8CE7: db $06, $0A, $12, $16, $05, $01, $04, $0F, $1B ; right

;===================================================================================================

LinkOAM_ShieldGFXIndex:
; walking
; charging dash
; index 0 used for standing still
#_0D8CF0: db $01, $01, $01, $01, $01, $01, $01, $01, $01 ; up
#_0D8CF9: db $00, $00, $00, $00, $00, $00, $00, $00, $00 ; down
#_0D8D02: db $03, $03, $03, $03, $03, $03, $03, $03, $03 ; left
#_0D8D0B: db $02, $02, $02, $02, $02, $02, $02, $02, $02 ; right

; powder
#_0D8D14: db $00, $00, $00, $00, $02, $02, $02, $02, $02 ; up
#_0D8D1D: db $01, $01, $01, $01, $03, $03, $03, $03, $03 ; down
#_0D8D26: db $01, $01, $01, $01, $01, $01, $01, $01, $01 ; left
#_0D8D2F: db $01, $01, $01, $01, $01, $01, $01, $01, $01 ; right

; walking with sword out
#_0D8D38: db $02, $02, $02, $02, $02, $02 ; up
#_0D8D3E: db $03, $03, $03, $03, $03, $03 ; down
#_0D8D44: db $FF, $FF, $FF, $FF, $FF, $FF ; left
#_0D8D4A: db $FF, $FF, $FF, $FF, $FF, $FF ; right

; poking with sword
#_0D8D50: db $02, $02, $02 ; up
#_0D8D53: db $03, $03, $03 ; down
#_0D8D56: db $01, $01, $01 ; left
#_0D8D59: db $01, $01, $01 ; right

; falling
#_0D8D5C: db $FF, $FF, $FF, $FF, $FF, $FF

; landing in underworld
#_0D8D62: db $FF, $FF, $FF, $FF

; bonk
#_0D8D66: db $01 ; up
#_0D8D67: db $00 ; down
#_0D8D68: db $01 ; left
#_0D8D69: db $01 ; right

; hammer
; rods
#_0D8D6A: db $02, $02, $02 ; up
#_0D8D6D: db $03, $03, $03 ; down
#_0D8D70: db $01, $01, $01 ; left
#_0D8D73: db $01, $01, $01 ; right

; bow
#_0D8D76: db $FF, $FF, $FF ; up
#_0D8D79: db $FF, $FF, $FF ; down
#_0D8D7C: db $FF, $FF, $FF ; left
#_0D8D7F: db $FF, $FF, $FF ; right

; boomerang
#_0D8D82: db $01, $02 ; up
#_0D8D84: db $00, $03 ; down
#_0D8D86: db $03, $01 ; left
#_0D8D88: db $02, $01 ; right

; tall grass
#_0D8D8A: db $01, $01, $01, $01, $01, $01 ; up
#_0D8D90: db $00, $00, $00, $00, $00, $00 ; down
#_0D8D96: db $03, $03, $03, $03, $03, $03 ; left
#_0D8D9C: db $02, $02, $02, $02, $02, $02 ; right

; desert prayer
#_0D8DA2: db $FF, $FF, $FF, $FF

; shovel
#_0D8DA6: db $FF, $FF, $FF, $FF, $FF, $FF

; walk carrying item
#_0D8DAC: db $FF, $FF, $FF, $FF, $FF, $FF ; up
#_0D8DB2: db $FF, $FF, $FF, $FF, $FF, $FF ; down
#_0D8DB8: db $FF, $FF, $FF, $FF, $FF, $FF ; left
#_0D8DBE: db $FF, $FF, $FF, $FF, $FF, $FF ; right

; throwing item
#_0D8DC4: db $FF, $FF, $FF, $FF, $FF, $FF ; up
#_0D8DCA: db $FF, $FF, $FF, $FF, $FF, $FF ; down
#_0D8DD0: db $FF, $FF, $FF, $FF, $FF, $FF ; left
#_0D8DD6: db $FF, $FF, $FF, $FF, $FF, $FF ; right

; spin attack
#_0D8DDC: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0D8DE4: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

; lifting item
#_0D8DEC: db $FF, $FF, $FF ; up
#_0D8DEF: db $FF, $FF, $FF ; down
#_0D8DF2: db $FF, $FF, $FF ; left
#_0D8DF5: db $FF, $FF, $FF ; right

; treading water
#_0D8DF8: db $FF, $FF ; up
#_0D8DFA: db $FF, $FF ; down
#_0D8DFC: db $FF, $FF ; left
#_0D8DFE: db $FF, $FF ; right

; fast swim
#_0D8E00: db $FF, $FF, $FF, $FF ; up
#_0D8E04: db $FF, $FF, $FF, $FF ; down
#_0D8E08: db $FF, $FF, $FF, $FF ; left
#_0D8E0C: db $FF, $FF, $FF, $FF ; right

; slow swim
#_0D8E10: db $FF, $FF, $FF ; up
#_0D8E13: db $FF, $FF, $FF ; down
#_0D8E16: db $FF, $FF, $FF ; left
#_0D8E19: db $FF, $FF, $FF ; right

; zap
#_0D8E1C: db $FF, $FF, $FF, $FF ; up
#_0D8E20: db $FF, $FF, $FF, $FF ; down
#_0D8E24: db $FF, $FF, $FF, $FF ; left
#_0D8E28: db $FF, $FF, $FF, $FF ; right

; medallion spin
#_0D8E2C: db $00, $03, $01, $02

; ether
#_0D8E30: db $00, $00, $00, $00

; bombos
#_0D8E34: db $00, $00, $00, $00, $00
#_0D8E39: db $03, $03, $03, $03, $03

; quake
#_0D8E3E: db $00, $00, $03, $00, $00

; pushing
#_0D8E43: db $FF, $FF, $FF, $FF, $FF, $FF ; up
#_0D8E49: db $FF, $FF, $FF, $FF, $FF, $FF ; down
#_0D8E4F: db $FF, $FF, $FF, $FF, $FF, $FF ; left
#_0D8E55: db $FF, $FF, $FF, $FF, $FF, $FF ; right

; pull switch
#_0D8E5B: db $FF, $FF, $FF, $FF, $FF

; TODO
#_0D8E60: db $FF, $FF, $FF, $FF

; ped pull
#_0D8E64: db $FF, $FF

; grabbing
#_0D8E66: db $FF, $FF, $FF, $FF ; up
#_0D8E6A: db $FF, $FF, $FF, $FF ; down
#_0D8E6E: db $FF, $FF, $FF, $FF ; left
#_0D8E72: db $FF, $FF, $FF, $FF ; right

; walking up spiral stairs
#_0D8E76: db $FF, $FF, $FF ; lower
#_0D8E79: db $FF, $FF, $FF ; higher

; walking down spiral stairs
#_0D8E7C: db $FF, $FF, $FF ; higher
#_0D8E7F: db $FF, $FF, $FF ; lower

; death
#_0D8E82: db $FF, $FF, $FF, $FF, $FF, $FF

; TODO
#_0D8E88: db $FF, $FF, $FF ; up
#_0D8E8B: db $FF, $FF, $FF ; down
#_0D8E8E: db $FF, $FF, $FF ; left
#_0D8E91: db $FF, $FF, $FF ; right

; item gets
#_0D8E94: db $03 ; normal
#_0D8E95: db $FF ; crystal/triforce

; sleep
#_0D8E96: db $FF, $FF

; hookshot
#_0D8E98: db $02 ; up
#_0D8E99: db $03 ; down
#_0D8E9A: db $FF ; left
#_0D8E9B: db $FF ; right

; bunny walk
; first frame used for standing still
#_0D8E9C: db $FF, $FF, $FF, $FF ; up
#_0D8EA0: db $FF, $FF, $FF, $FF ; down
#_0D8EA4: db $FF, $FF, $FF, $FF ; left
#_0D8EA8: db $FF, $FF, $FF, $FF ; right

; cane
#_0D8EAC: db $FF, $FF, $FF ; up
#_0D8EAF: db $FF, $FF, $FF ; down
#_0D8EB2: db $FF, $FF, $FF ; left
#_0D8EB5: db $FF, $FF, $FF ; right

; net
#_0D8EB8: db $FF
#_0D8EB9: db $FF, $FF, $FF, $FF, $FF
#_0D8EBE: db $FF, $FF, $FF, $FF, $FF, $FF
#_0D8EC4: db $FF

; tree pull
#_0D8EC5: db $FF
#_0D8EC6: db $FF, $FF, $FF, $FF, $FF

; sword slash
#_0D8ECB: db $02, $02, $02, $02, $02, $02, $02, $02, $02 ; up
#_0D8ED4: db $03, $03, $03, $03, $03, $03, $03, $03, $03 ; down
#_0D8EDD: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; left
#_0D8EE6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; right

;===================================================================================================

LinkOAM_SwordOffsetY:
; walking
; charging dash
; index 0 used for standing still
#_0D8EEF: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D8EF8: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D8F01: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D8F0A: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; right

; powder
#_0D8F13: db   9,   5,  -2,  -6,  -8,  -5,  -3,  -1,   9 ; up
#_0D8F1C: db  11,  15,  13,  17,  19,  17,  15,  13,  11 ; down
#_0D8F25: db  -2,   2,   3,   4,  12,  15,  14,  19,  19 ; left
#_0D8F2E: db  -2,   2,   3,   4,  12,  15,  14,  19,  19 ; right

; walking with sword out
#_0D8F37: db  -5,  -4,  -3,  -5,  -4,  -3 ; up
#_0D8F3D: db  16,  17,  18,  16,  17,  18 ; down
#_0D8F43: db  13,  14,  15,  13,  14,  15 ; left
#_0D8F49: db  13,  14,  15,  13,  14,  15 ; right

; poking with sword
#_0D8F4F: db  -3,  -7,   2 ; up
#_0D8F52: db  12,  18,  16 ; down
#_0D8F55: db  15,  13,  10 ; left
#_0D8F58: db  15,  13,  10 ; right

; falling
#_0D8F5B: db  -1,  -1,  -1,  -1,  -1,  -1

; landing in underworld
#_0D8F61: db  -1,  -1,  -1,  -1

; bonk
#_0D8F65: db   2 ; up
#_0D8F66: db   3 ; down
#_0D8F67: db   6 ; left
#_0D8F68: db   6 ; right

; hammer
; rods
#_0D8F69: db  -8,  -3,  -3 ; up
#_0D8F6C: db  -3,  10,  18 ; down
#_0D8F6F: db  -2,   2,  14 ; left
#_0D8F72: db  -2,   2,  14 ; right

; bow
#_0D8F75: db   5,   9,   9 ; up
#_0D8F78: db   9,  13,  13 ; down
#_0D8F7B: db  10,   7,   7 ; left
#_0D8F7E: db  10,   7,   7 ; right

; boomerang
#_0D8F81: db  -1,  -1 ; up
#_0D8F83: db  -1,  -1 ; down
#_0D8F85: db  -1,  -1 ; left
#_0D8F87: db  -1,  -1 ; right

; tall grass
#_0D8F89: db  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D8F8F: db  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D8F95: db  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D8F9B: db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; desert prayer
#_0D8FA1: db  -1,  -1,  -1,  -1

; shovel
#_0D8FA5: db  10,  11,  -4,  10,  11,  -4

; walk carrying item
#_0D8FAB: db  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D8FB1: db  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D8FB7: db  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D8FBD: db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; throwing item
#_0D8FC3: db  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D8FC9: db  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D8FCF: db  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D8FD5: db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; spin attack
#_0D8FDB: db  -4,  -8,   6,  15,  18,  18,  14,   6
#_0D8FE3: db  -7,  -7,  14,  17,  16,   8,   5,  12

; lifting item
#_0D8FEB: db  -1,  -1,  -1 ; up
#_0D8FEE: db  -1,  -1,  -1 ; down
#_0D8FF1: db  -1,  -1,  -1 ; left
#_0D8FF4: db  -1,  -1,  -1 ; right

; treading water
#_0D8FF7: db  -1,  -1 ; up
#_0D8FF9: db  -1,  -1 ; down
#_0D8FFB: db  -1,  -1 ; left
#_0D8FFD: db  -1,  -1 ; right

; fast swim
#_0D8FFF: db  -1,  -1,  -1,  -1 ; up
#_0D9003: db  -1,  -1,  -1,  -1 ; down
#_0D9007: db  -1,  -1,  -1,  -1 ; left
#_0D900B: db  -1,  -1,  -1,  -1 ; right

; slow swim
#_0D900F: db  -1,  -1,  -1 ; up
#_0D9012: db  -1,  -1,  -1 ; down
#_0D9015: db  -1,  -1,  -1 ; left
#_0D9018: db  -1,  -1,  -1 ; right

; zap
#_0D901B: db  -1,   8,   6,  10 ; up
#_0D901F: db  -1,   8,   6,  10 ; down
#_0D9023: db  -1,   8,   6,  10 ; left
#_0D9027: db  -1,   8,   6,  10 ; right

; medallion spin
#_0D902B: db  16,  16,  -5,  16

; ether
#_0D902F: db  13,  -4,  -5,  -5

; bombos
#_0D9033: db  -1,  -5,  -5,  -5,  -5
#_0D9038: db  11,  15,  13,  17,  19

; quake
#_0D903D: db  13,  -3,  -7,  18,  18

; pushing
#_0D9042: db  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D9048: db  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D904E: db  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D9054: db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; pull switch
#_0D905A: db  -1,  -1,  -1,  -1,  -1

; TODO
#_0D905F: db  -1,  -1,  -1,  -1

; ped pull
#_0D9063: db  -1,  -1

; grabbing
#_0D9065: db  -1,  -1,  -1,  -1 ; up
#_0D9069: db  -1,  -1,  -1,  -1 ; down
#_0D906D: db  -1,  -1,  -1,  -1 ; left
#_0D9071: db  -1,  -1,  -1,  -1 ; right

; walking up spiral stairs
#_0D9075: db  -1,  -1,  -1 ; lower
#_0D9078: db  -1,  -1,  -1 ; higher

; walking down spiral stairs
#_0D907B: db  -1,  -1,  -1 ; higher
#_0D907E: db  -1,  -1,  -1 ; lower

; death
#_0D9081: db  -1,  -1,  -1,  -1,  -1,  -1

; TODO
#_0D9087: db  -1,  -1,  -1 ; up
#_0D908A: db  -1,  -1,  -1 ; down
#_0D908D: db  -1,  -1,  -1 ; left
#_0D9090: db  -1,  -1,  -1 ; right

; item gets
#_0D9093: db  -1 ; normal
#_0D9094: db  -1 ; crystal/triforce

; sleep
#_0D9095: db  -1,  -1

; hookshot
#_0D9097: db   2 ; up
#_0D9098: db  17 ; down
#_0D9099: db  12 ; left
#_0D909A: db  12 ; right

; bunny walk
; first frame used for standing still
#_0D909B: db  -1,  -1,  -1,  -1 ; up
#_0D909F: db  -1,  -1,  -1,  -1 ; down
#_0D90A3: db  -1,  -1,  -1,  -1 ; left
#_0D90A7: db  -1,  -1,  -1,  -1 ; right

; cane
#_0D90AB: db   5,  -2,  -9 ; up
#_0D90AE: db  -7,  -2,  16 ; down
#_0D90B1: db   2,  -2,  12 ; left
#_0D90B4: db   2,  -2,  12 ; right

; net
#_0D90B7: db  -4
#_0D90B8: db  -5,   4,  14,  20,  15
#_0D90BD: db   8,  -3,  -8,  14,  -3,  15
#_0D90C3: db  -5

; tree pull
#_0D90C4: db   0
#_0D90C5: db  -1,  -1,  -1,  -1,  -1

; sword slash
#_0D90CA: db   9,   5,  -3,  -9, -11, -15,  -9,  -4,   0 ; up
#_0D90D3: db  11,  14,  12,  17,  19,  23,  17,  15,  13 ; down
#_0D90DC: db  -2,  -1,   0,   0,   9,  12,  16,  16,  19 ; left
#_0D90E5: db  -2,  -1,   0,   0,   9,  12,  16,  16,  19 ; right

;===================================================================================================

LinkOAM_SwordOffsetX:
; walking
; charging dash
; index 0 used for standing still
#_0D90EE: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D90F7: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D9100: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D9109: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; right

; powder
#_0D9112: db  11,  10,   6,   2,   0,  -4, -10, -13, -15 ; up
#_0D911B: db  -8,  -6,  -5,  -3,   8,  12,  10,  14,  15 ; down
#_0D9124: db   3,  -2,  -7, -11, -14, -11,  -9,  -7,   3 ; left
#_0D912D: db   5,  10,   7,  11,  14,  11,   9,   7,   5 ; right

; walking with sword out
#_0D9136: db   0,   0,   0,   0,   0,   0 ; up
#_0D913C: db   7,   7,   7,   7,   7,   7 ; down
#_0D9142: db -10, -10, -10, -10, -10, -10 ; left
#_0D9148: db  10,  10,  10,  10,  10,  10 ; right

; poking with sword
#_0D914E: db  -3,   2,  -3 ; up
#_0D9151: db  10,   7,  10 ; down
#_0D9154: db -12, -16,  -8 ; left
#_0D9157: db  12,  16,   8 ; right

; falling
#_0D915A: db  -1,  -1,  -1,  -1,  -1,  -1

; landing in underworld
#_0D9160: db  -1,  -1,  -1,  -1

; bonk
#_0D9164: db  -4 ; up
#_0D9165: db  12 ; down
#_0D9166: db   8 ; left
#_0D9167: db   0 ; right

; hammer
; rods
#_0D9168: db  -2,  -2,  -2 ; up
#_0D916B: db  10,  10,   9 ; down
#_0D916E: db   1, -10, -11 ; left
#_0D9171: db   7,  10,  11 ; right

; bow
#_0D9174: db  -2,  -5,  -5 ; up
#_0D9177: db   9,   2,   2 ; down
#_0D917A: db  -2,  -3,  -3 ; left
#_0D917D: db   2,  11,  11 ; right

; boomerang
#_0D9180: db  -1,  -1 ; up
#_0D9182: db  -1,  -1 ; down
#_0D9184: db  -1,  -1 ; left
#_0D9186: db  -1,  -1 ; right

; tall grass
#_0D9188: db  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D918E: db  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D9194: db  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D919A: db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; desert prayer
#_0D91A0: db  -1,  -1,  -1,  -1

; shovel
#_0D91A4: db  -3,  -7,   8,   3,   7,   0

; walk carrying item
#_0D91AA: db  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D91B0: db  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D91B6: db  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D91BC: db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; throwing item
#_0D91C2: db  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D91C8: db  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D91CE: db  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D91D4: db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; spin attack
#_0D91DA: db  13,   6,  14,  14,   8,  -1, -14, -14
#_0D91E2: db  -1,   9,  -5,   3,  10,  13, -11, -12

; lifting item
#_0D91EA: db  -1,  -1,  -1 ; up
#_0D91ED: db  -1,  -1,  -1 ; down
#_0D91F0: db  -1,  -1,  -1 ; left
#_0D91F3: db  -1,  -1,  -1 ; right

; treading water
#_0D91F6: db  -1,  -1 ; up
#_0D91F8: db  -1,  -1 ; down
#_0D91FA: db  -1,  -1 ; left
#_0D91FC: db  -1,  -1 ; right

; fast swim
#_0D91FE: db  -1,  -1,  -1,  -1 ; up
#_0D9202: db  -1,  -1,  -1,  -1 ; down
#_0D9206: db  -1,  -1,  -1,  -1 ; left
#_0D920A: db  -1,  -1,  -1,  -1 ; right

; slow swim
#_0D920E: db  -1,  -1,  -1 ; up
#_0D9211: db  -1,  -1,  -1 ; down
#_0D9214: db  -1,  -1,  -1 ; left
#_0D9217: db  -1,  -1,  -1 ; right

; zap
#_0D921A: db  -1, -14, -13, -12 ; up
#_0D921E: db  -1,  14,  13,  12 ; down
#_0D9222: db  -1, -14, -13, -12 ; left
#_0D9226: db  -1,  14,  13,  12 ; right

; medallion spin
#_0D922A: db   7,  -9,   0,   9

; ether
#_0D922E: db  14,  14,  10,  10

; bombos
#_0D9232: db  14,  11,   8,   8,   8
#_0D9237: db  15,  14,  12,  12,   8

; quake
#_0D923C: db  15,  14,  10,   4,   4

; pushing
#_0D9241: db  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D9247: db  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D924D: db  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D9253: db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; pull switch
#_0D9259: db  -1,  -1,  -1,  -1,  -1

; TODO
#_0D925E: db  -1,  -1,  -1,  -1

; ped pull
#_0D9262: db  -1,  -1

; grabbing
#_0D9264: db  -1,  -1,  -1,  -1 ; up
#_0D9268: db  -1,  -1,  -1,  -1 ; down
#_0D926C: db  -1,  -1,  -1,  -1 ; left
#_0D9270: db  -1,  -1,  -1,  -1 ; right

; walking up spiral stairs
#_0D9274: db  -1,  -1,  -1 ; lower
#_0D9277: db  -1,  -1,  -1 ; higher

; walking down spiral stairs
#_0D927A: db  -1,  -1,  -1 ; higher
#_0D927D: db  -1,  -1,  -1 ; lower

; death
#_0D9280: db  -1,  -1,  -1,  -1,  -1,  -1

; TODO
#_0D9286: db  -1,  -1,  -1 ; up
#_0D9289: db  -1,  -1,  -1 ; down
#_0D928C: db  -1,  -1,  -1 ; left
#_0D928F: db  -1,  -1,  -1 ; right

; item gets
#_0D9292: db  -1 ; normal
#_0D9293: db  -1 ; crystal/triforce

; sleep
#_0D9294: db  -1,  -1

; hookshot
#_0D9296: db   4 ; up
#_0D9297: db   4 ; down
#_0D9298: db  -7 ; left
#_0D9299: db  15 ; right

; bunny walk
; first frame used for standing still
#_0D929A: db  -1,  -1,  -1,  -1 ; up
#_0D929E: db  -1,  -1,  -1,  -1 ; down
#_0D92A2: db  -1,  -1,  -1,  -1 ; left
#_0D92A6: db  -1,  -1,  -1,  -1 ; right

; cane
#_0D92AA: db  -1,  -3,  -3 ; up
#_0D92AD: db   9,  12,   8 ; down
#_0D92B0: db  10,   3, -13 ; left
#_0D92B3: db -10,   5,  13 ; right

; net
#_0D92B6: db  13
#_0D92B7: db  13,  16,  11,   2, -11
#_0D92BC: db -16,  -9,   0,   8,  -9, -11
#_0D92C2: db  12

; tree pull
#_0D92C3: db  -7
#_0D92C4: db  -1,  -1,  -1,  -1,  -1

; sword slash
#_0D92C9: db  11,   9,   7,   6,   3,  -1,  -5, -11, -14 ; up
#_0D92D2: db  -8,  -7,  -6,  -5,   5,   8,  12,  10,  14 ; down
#_0D92DB: db   3,  -2,  -8, -13, -16, -20, -15, -12,  -7 ; left
#_0D92E4: db   5,  10,   8,  13,  16,  20,  15,  12,   7 ; right

;===================================================================================================

LinkOAM_Aux1Offset_Y:
; falling
#_0D92ED: db   0,  -1,  -1,   8,   8,   8,  -1

; landing in underworld
#_0D92F4: db  -1,  -1,  -1

; lifting item
#_0D92F7: db  -1,   7,  10 ; up
#_0D92FA: db  -1,   5,   8 ; down
#_0D92FD: db  -1,   8,  12 ; left
#_0D9300: db  -1,   8,  12 ; right

; fast swim
#_0D9303: db   2,   7,  13,  -1 ; up
#_0D9307: db  20,  14,   7,  -1 ; down
#_0D930B: db  20,  21,  20,  -1 ; left
#_0D930F: db  20,  21,  20,  -1 ; right

; medallion spin
#_0D9313: db  -1,  -1,  -1,  -1

; ether
#_0D9317: db  -1,  -1,  -1,  -1

; bombos
#_0D931B: db  -1,  -1,  -1,  -8,  -8
#_0D9320: db  -1,  -1,  -1,  -1,  -1

; quake
#_0D9325: db  -1,  -1,  -1,  -1,  -1

; pull switch
#_0D932A: db  -1,   5,  11,  -1,  -1

; TODO
#_0D932F: db  -1,  -1,  -1,  -1

; ped pull
#_0D9333: db  -1,  -1

; grabbing
#_0D9335: db  -1,   5,  11,  -1 ; up
#_0D9339: db  -1,   6,   1,  -1 ; down
#_0D933D: db  -1,  13,  15,  -1 ; left
#_0D9341: db  -1,  13,  15,  -1 ; right

; sword slash
#_0D9345: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D934E: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D9357: db  -1,  -1,  -1,  -1,  12,  12,  12,  -1,  -1 ; left
#_0D9360: db  -1,  -1,  -1,  -1,  12,  12,  12,  -1,  -1 ; right

;===================================================================================================

LinkOAM_Aux1Offset_X:
; falling
#_0D9369: db   8,  -1,  -1,   4,   4,   4,  -1

; landing in underworld
#_0D9370: db  -1,  -1,  -1

; lifting item
#_0D9373: db  -1,  -7,  -9 ; up
#_0D9376: db  -1,  -8, -10 ; down
#_0D9379: db  -1,  13,  16 ; left
#_0D937C: db  -1,  -5,  -8 ; right

; fast swim
#_0D937F: db  -2,  -6,  -5,  -1 ; up
#_0D9383: db  -1,  -5,  -6,  -1 ; down
#_0D9387: db  -3,   4,   9,  -1 ; left
#_0D938B: db  11,   4,  -1,  -1 ; right

; medallion spin
#_0D938F: db  -1,  -1,  -1,  -1

; ether
#_0D9393: db  -1,  -1,  -1,  -1

; bombos
#_0D9397: db  -1,  -1,  -1,   4,   4
#_0D939C: db  -1,  -1,  -1,  -1,  -1

; quake
#_0D93A1: db  -1,  -1,  -1,  -1,  -1

; pull switch
#_0D93A6: db  -1,  -5,  -8,  -1,  -1

; TODO
#_0D93AB: db  -1,  -1,  -1,  -1

; ped pull
#_0D93AF: db  -1,  -1

; grabbing
#_0D93B1: db  -1,  -5,  -8,  -1 ; up
#_0D93B5: db  -1,  -5,  -8,  -1 ; down
#_0D93B9: db  -1,  15,  17,  -1 ; left
#_0D93BD: db  -1,  -7,  -9,  -1 ; right

; sword slash
#_0D93C1: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D93CA: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D93D3: db  -1,  -1,  -1,  -1,  -3,  -7,  -3,  -1,  -1 ; left
#_0D93DC: db  -1,  -1,  -1,  -1,  11,  15,  11,  -1,  -1 ; right

;===================================================================================================

LinkOAM_Aux2Offset_Y:
; falling
#_0D93E5: db  16,  -1,  -1,  -1,  -1,  -1,  -1

; landing in underworld
#_0D93EC: db  -1,  -1,  -1

; lifting item
#_0D93EF: db  -1,   7,  10 ; up
#_0D93F2: db  -1,   5,   8 ; down
#_0D93F5: db  -1,  -1,  -1 ; left
#_0D93F8: db  -1,  -1,  -1 ; right

; fast swim
#_0D93FB: db   2,   7,  13,  -1 ; up
#_0D93FF: db  20,  14,   7,  -1 ; down
#_0D9403: db  -1,  -1,  -1,  -1 ; left
#_0D9407: db  -1,  -1,  -1,  -1 ; right

; medallion spin
#_0D940B: db  -1,  -1,  -1,  -1

; ether
#_0D940F: db  -1,  -1,  -1,  -1

; bombos
#_0D9413: db  -1,  -1,  -1,  -1,  -1
#_0D9418: db  -1,  -1,  -1,  -1,  -1

; quake
#_0D941D: db  -1,  -1,  -1,  -1,  -1

; pull switch
#_0D9422: db  -1,   5,  11,  -1,  -1

; TODO
#_0D9427: db  -1,  -1,  -1,  -1

; ped pull
#_0D942B: db  -1,  -1

; grabbing
#_0D942D: db  -1,   5,  11,  -1 ; up
#_0D9431: db  -1,   6,   1,  -1 ; down
#_0D9435: db  -1,  -1,  -1,  -1 ; left
#_0D9439: db  -1,  -1,  -1,  -1 ; right

; sword slash
#_0D943D: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D9446: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D944F: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D9458: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; right

;===================================================================================================

LinkOAM_Aux2Offset_X:
; falling
#_0D9461: db  -8,  -1,  -1,  -1,  -1,  -1,  -1

; landing in underworld
#_0D9468: db  -1,  -1,  -1

; lifting item
#_0D946B: db  -1,  15,  17 ; up
#_0D946E: db  -1,  16,  18 ; down
#_0D9471: db  -1,  -1,  -1 ; left
#_0D9474: db  -1,  -1,  -1 ; right

; fast swim
#_0D9477: db  10,  14,  13,  -1 ; up
#_0D947B: db   9,  14,  14,  -1 ; down
#_0D947F: db  -1,  -1,  -1,  -1 ; left
#_0D9483: db  -1,  -1,  -1,  -1 ; right

; medallion spin
#_0D9487: db  -1,  -1,  -1,  -1

; ether
#_0D948B: db  -1,  -1,  -1,  -1

; bombos
#_0D948F: db  -1,  -1,  -1,  -1,  -1
#_0D9494: db  -1,  -1,  -1,  -1,  -1

; quake
#_0D9499: db  -1,  -1,  -1,  -1,  -1

; pull switch
#_0D949E: db  -1,  13,  16,  -1,  -1

; TODO
#_0D94A3: db  -1,  -1,  -1,  -1

; ped pull
#_0D94A7: db  -1,  -1

; grabbing
#_0D94A9: db  -1,  13,  16,  -1 ; up
#_0D94AD: db  -1,  13,  16,  -1 ; down
#_0D94B1: db  -1,  -1,  -1,  -1 ; left
#_0D94B5: db  -1,  -1,  -1,  -1 ; right

; sword slash
#_0D94B9: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D94C2: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D94CB: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D94D4: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ; right

;===================================================================================================

LinkOAM_ShieldOffsetY:
; walking
; charging dash
; index 0 used for standing still
#_0D94DD: db   5,   5,   4,   3,   5,   5,   4,   3,   5 ; up
#_0D94E6: db   9,  10,   9,   7,   8,  10,   9,   7,   8 ; down
#_0D94EF: db   5,   5,   4,   3,   4,   5,   4,   3,   4 ; left
#_0D94F8: db   5,   5,   4,   3,   4,   5,   4,   3,   4 ; right

; powder
#_0D9501: db  12,  12,   8,   8,   6,   6,   6,   6,   6 ; up
#_0D950A: db   1,   1,   3,   3,   7,   7,   7,   7,   7 ; down
#_0D9513: db   5,   5,   5,   5,   5,   5,   5,   5,   5 ; left
#_0D951C: db   5,   5,   5,   5,   5,   5,   5,   5,   5 ; right

; walking with sword out
#_0D9525: db   5,   6,   7,   5,   6,   7 ; up
#_0D952B: db   6,   7,   8,   6,   7,   8 ; down
#_0D9531: db  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D9537: db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; poking with sword
#_0D953D: db   7,   5,   7 ; up
#_0D9540: db   7,   8,   7 ; down
#_0D9543: db   5,   5,   5 ; left
#_0D9546: db   5,   5,   5 ; right

; falling
#_0D9549: db  16,  -1,  -1,  -1,  -1,  -1

; landing in underworld
#_0D954F: db  -1,  -1,  -1,  -1

; bonk
#_0D9553: db   5 ; up
#_0D9554: db   8 ; down
#_0D9555: db   7 ; left
#_0D9556: db   7 ; right

; hammer
; rods
#_0D9557: db   6,   5,   5 ; up
#_0D955A: db   7,   7,   7 ; down
#_0D955D: db   5,   5,   5 ; left
#_0D9560: db   5,   5,   5 ; right

; bow
#_0D9563: db  -1,  -1,  -1 ; up
#_0D9566: db  -1,  -1,  -1 ; down
#_0D9569: db  -1,  -1,  -1 ; left
#_0D956C: db  -1,  -1,  -1 ; right

; boomerang
#_0D956F: db   6,   6 ; up
#_0D9571: db  11,   7 ; down
#_0D9573: db   4,   8 ; left
#_0D9575: db   4,   8 ; right

; tall grass
#_0D9577: db   4,   5,   6,   4,   5,   6 ; up
#_0D957D: db  10,  11,  12,  10,  11,  12 ; down
#_0D9583: db   5,   6,   7,   5,   6,   7 ; left
#_0D9589: db   5,   6,   7,   5,   6,   7 ; right

; desert prayer
#_0D958F: db  -1,  -1,  -1,  -1

; shovel
#_0D9593: db  -1,  -1,  -1,  -1,  -1,  -1

; walk carrying item
#_0D9599: db  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D959F: db  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D95A5: db  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D95AB: db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; throwing item
#_0D95B1: db  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D95B7: db  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D95BD: db  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D95C3: db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; spin attack
#_0D95C9: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1
#_0D95D1: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1

; lifting item
#_0D95D9: db  -1,  -1,  -1 ; up
#_0D95DC: db  -1,  -1,  -1 ; down
#_0D95DF: db  -1,  -1,  -1 ; left
#_0D95E2: db  -1,  -1,  -1 ; right

; treading water
#_0D95E5: db  -1,  -1 ; up
#_0D95E7: db  -1,  -1 ; down
#_0D95E9: db  -1,  -1 ; left
#_0D95EB: db  -1,  -1 ; right

; fast swim
#_0D95ED: db  -1,  -1,  -1,  -1 ; up
#_0D95F1: db  -1,  -1,  -1,  -1 ; down
#_0D95F5: db  -1,  -1,  -1,  -1 ; left
#_0D95F9: db  -1,  -1,  -1,  -1 ; right

; slow swim
#_0D95FD: db  -1,  -1,  -1 ; up
#_0D9600: db  -1,  -1,  -1 ; down
#_0D9603: db  -1,  -1,  -1 ; left
#_0D9606: db  -1,  -1,  -1 ; right

; zap
#_0D9609: db  -1,  -1,  -1,  -1 ; up
#_0D960D: db  -1,  -1,  -1,  -1 ; down
#_0D9611: db  -1,  -1,  -1,  -1 ; left
#_0D9615: db  -1,  -1,  -1,  -1 ; right

; medallion spin
#_0D9619: db  10,   5,   4,   5

; ether
#_0D961D: db  10,  10,  10,  10

; bombos
#_0D9621: db  10,  10,  10,  10,  10
#_0D9626: db   7,   7,   7,   7,   7

; quake
#_0D962B: db  10,  10,   1,  10,  10

; pushing
#_0D9630: db  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D9636: db  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D963C: db  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D9642: db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; pull switch
#_0D9648: db  -1,  -1,  -1,  -1,  -1

; TODO
#_0D964D: db  -1,  -1,  -1,  -1

; ped pull
#_0D9651: db  -1,  -1

; grabbing
#_0D9653: db  -1,  -1,  -1,  -1 ; up
#_0D9657: db  -1,  -1,  -1,  -1 ; down
#_0D965B: db  -1,  -1,  -1,  -1 ; left
#_0D965F: db  -1,  -1,  -1,  -1 ; right

; walking up spiral stairs
#_0D9663: db  -1,  -1,  -1 ; lower
#_0D9666: db  -1,  -1,  -1 ; higher

; walking down spiral stairs
#_0D9669: db  -1,  -1,  -1 ; higher
#_0D966C: db  -1,  -1,  -1 ; lower

; death
#_0D966F: db  -1,  -1,  -1,  -1,  -1,  -1

; TODO
#_0D9675: db   5,   5,   5 ; up
#_0D9678: db   7,   7,   7 ; down
#_0D967B: db  -1,  -1,  -1 ; left
#_0D967E: db  -1,  -1,  -1 ; right

; item gets
#_0D9681: db   9 ; normal
#_0D9682: db  -1 ; crystal/triforce

; sleep
#_0D9683: db  -1,  -1

; hookshot
#_0D9685: db   5 ; up
#_0D9686: db   7 ; down
#_0D9687: db  -1 ; left
#_0D9688: db  -1 ; right

; bunny walk
; first frame used for standing still
#_0D9689: db  -1,  -1,  -1,  -1 ; up
#_0D968D: db  -1,  -1,  -1,  -1 ; down
#_0D9691: db  -1,  -1,  -1,  -1 ; left
#_0D9695: db  -1,  -1,  -1,  -1 ; right

; cane
#_0D9699: db  -1,  -1,  -1 ; up
#_0D969C: db  -1,  -1,  -1 ; down
#_0D969F: db  -1,  -1,  -1 ; left
#_0D96A2: db  -1,  -1,  -1 ; right

; net
#_0D96A5: db  -1
#_0D96A6: db  -1,  -1,  -1,  -1,  -1
#_0D96AB: db  -1,  -1,  -1,  -1,  -1,  -1
#_0D96B1: db  -1

; tree pull
#_0D96B2: db  -1
#_0D96B3: db  -1,  -1,  -1,  -1,  -1

; sword slash
#_0D96B8: db   8,   8,   6,   6,   4,   2,   5,   6,   6 ; up
#_0D96C1: db   1,   1,   4,   4,   6,   8,   6,   6,   6 ; down
#_0D96CA: db   4,   4,   4,   4,   4,   4,   4,   4,   4 ; left
#_0D96D3: db   4,   4,   4,   4,   4,   4,   4,   4,   4 ; right

;===================================================================================================

LinkOAM_ShieldOffsetX:
; walking
; charging dash
; index 0 used for standing still
#_0D96DC: db   5,   5,   5,   5,   5,   5,   5,   5,   5 ; up
#_0D96E5: db  -4,  -4,  -4,  -4,  -4,  -4,  -4,  -4,  -4 ; down
#_0D96EE: db  -8,  -8,  -8,  -8,  -8,  -8,  -8,  -8,  -8 ; left
#_0D96F7: db   8,   8,   8,   8,   8,   8,   8,   8,   8 ; right

; powder
#_0D9700: db   6,   6,   8,   8,  10,  10,  10,  10,  10 ; up
#_0D9709: db  -5,  -5,  -7,  -7, -10, -10, -10, -10, -10 ; down
#_0D9712: db   1,   1,   1,   1,   0,   0,   0,   0,   0 ; left
#_0D971B: db  -1,  -1,  -1,  -1,   0,   0,   0,   0,   0 ; right

; walking with sword out
#_0D9724: db   9,   9,   9,   9,   9,   9 ; up
#_0D972A: db  -9,  -9,  -9,  -9,  -9,  -9 ; down
#_0D9730: db  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D9736: db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; poking with sword
#_0D973C: db  10,  10,  10 ; up
#_0D973F: db -10, -10, -10 ; down
#_0D9742: db   0,  -1,   0 ; left
#_0D9745: db   0,   1,   0 ; right

; falling
#_0D9748: db  -4,  -1,  -1,  -1,  -1,  -1

; landing in underworld
#_0D974E: db  -1,  -1,  -1,  -1

; bonk
#_0D9752: db   8 ; up
#_0D9753: db  -4 ; down
#_0D9754: db   2 ; left
#_0D9755: db  -3 ; right

; hammer
; rods
#_0D9756: db   9,   9,   9 ; up
#_0D9759: db -10, -10, -10 ; down
#_0D975C: db   0,   0,   0 ; left
#_0D975F: db   0,   0,   0 ; right

; bow
#_0D9762: db  -1,  -1,  -1 ; up
#_0D9765: db  -1,  -1,  -1 ; down
#_0D9768: db  -1,  -1,  -1 ; left
#_0D976B: db  -1,  -1,  -1 ; right

; boomerang
#_0D976E: db   5,   9 ; up
#_0D9770: db  -4, -10 ; down
#_0D9772: db   0,   0 ; left
#_0D9774: db   8,   0 ; right

; tall grass
#_0D9776: db   5,   5,   5,   5,   5,   5 ; up
#_0D977C: db  -4,  -4,  -4,  -4,  -4,  -4 ; down
#_0D9782: db  -8,  -8,  -8,  -8,  -8,  -8 ; left
#_0D9788: db   8,   8,   8,   8,   8,   8 ; right

; desert prayer
#_0D978E: db  -1,  -1,  -1,  -1

; shovel
#_0D9792: db  -1,  -1,  -1,  -1,  -1,  -1

; walk carrying item
#_0D9798: db  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D979E: db  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D97A4: db  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D97AA: db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; throwing item
#_0D97B0: db  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D97B6: db  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D97BC: db  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D97C2: db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; spin attack
#_0D97C8: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1
#_0D97D0: db  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1

; lifting item
#_0D97D8: db  -1,  -1,  -1 ; up
#_0D97DB: db  -1,  -1,  -1 ; down
#_0D97DE: db  -1,  -1,  -1 ; left
#_0D97E1: db  -1,  -1,  -1 ; right

; treading water
#_0D97E4: db  -1,  -1 ; up
#_0D97E6: db  -1,  -1 ; down
#_0D97E8: db  -1,  -1 ; left
#_0D97EA: db  -1,  -1 ; right

; fast swim
#_0D97EC: db  -1,  -1,  -1,  -1 ; up
#_0D97F0: db  -1,  -1,  -1,  -1 ; down
#_0D97F4: db  -1,  -1,  -1,  -1 ; left
#_0D97F8: db  -1,  -1,  -1,  -1 ; right

; slow swim
#_0D97FC: db  -1,  -1,  -1 ; up
#_0D97FF: db  -1,  -1,  -1 ; down
#_0D9802: db  -1,  -1,  -1 ; left
#_0D9805: db  -1,  -1,  -1 ; right

; zap
#_0D9808: db  -1,  -1,  -1,  -1 ; up
#_0D980C: db  -1,  -1,  -1,  -1 ; down
#_0D9810: db  -1,  -1,  -1,  -1 ; left
#_0D9814: db  -1,  -1,  -1,  -1 ; right

; medallion spin
#_0D9818: db  -4,  -8,   5,   8

; ether
#_0D981C: db  -4,  -4,  -4,  -4

; bombos
#_0D9820: db  -5,  -5,  -5,  -5,  -5
#_0D9825: db -10, -10, -10, -10, -10

; quake
#_0D982A: db  -5,  -5,  -7,  -4,  -4

; pushing
#_0D982F: db  -1,  -1,  -1,  -1,  -1,  -1 ; up
#_0D9835: db  -1,  -1,  -1,  -1,  -1,  -1 ; down
#_0D983B: db  -1,  -1,  -1,  -1,  -1,  -1 ; left
#_0D9841: db  -1,  -1,  -1,  -1,  -1,  -1 ; right

; pull switch
#_0D9847: db  -1,  -1,  -1,  -1,  -1

; TODO
#_0D984C: db  -1,  -1,  -1,  -1

; ped pull
#_0D9850: db  -1,  -1

; grabbing
#_0D9852: db  -1,  -1,  -1,  -1 ; up
#_0D9856: db  -1,  -1,  -1,  -1 ; down
#_0D985A: db  -1,  -1,  -1,  -1 ; left
#_0D985E: db  -1,  -1,  -1,  -1 ; right

; walking up spiral stairs
#_0D9862: db  -1,  -1,  -1 ; lower
#_0D9865: db  -1,  -1,  -1 ; higher

; walking down spiral stairs
#_0D9868: db  -1,  -1,  -1 ; higher
#_0D986B: db  -1,  -1,  -1 ; lower

; death
#_0D986E: db  -1,  -1,  -1,  -1,  -1,  -1

; TODO
#_0D9874: db   9,   9,   9 ; up
#_0D9877: db -10, -10, -10 ; down
#_0D987A: db  -1,  -1,  -1 ; left
#_0D987D: db  -1,  -1,  -1 ; right

; item gets
#_0D9880: db  -6 ; normal
#_0D9881: db  -1 ; crystal/triforce

; sleep
#_0D9882: db  -1,  -1

; hookshot
#_0D9884: db  10 ; up
#_0D9885: db -10 ; down
#_0D9886: db  -1 ; left
#_0D9887: db  -1 ; right

; bunny walk
; first frame used for standing still
#_0D9888: db  -1,  -1,  -1,  -1 ; up
#_0D988C: db  -1,  -1,  -1,  -1 ; down
#_0D9890: db  -1,  -1,  -1,  -1 ; left
#_0D9894: db  -1,  -1,  -1,  -1 ; right

; cane
#_0D9898: db  -1,  -1,  -1 ; up
#_0D989B: db  -1,  -1,  -1 ; down
#_0D989E: db  -1,  -1,  -1 ; left
#_0D98A1: db  -1,  -1,  -1 ; right

; net
#_0D98A4: db  -1
#_0D98A5: db  -1,  -1,  -1,  -1,  -1
#_0D98AA: db  -1,  -1,  -1,  -1,  -1,  -1
#_0D98B0: db  -1

; tree pull
#_0D98B1: db  -1
#_0D98B2: db  -1,  -1,  -1,  -1,  -1

; sword slash
#_0D98B7: db  10,  10,  10,  10,  10,  10,  10,  10,  10 ; up
#_0D98C0: db  -9,  -9,  -9,  -9, -10, -10, -10, -10, -10 ; down
#_0D98C9: db   1,   1,   1,   2,   2,   2,   1,   2,   2 ; left
#_0D98D2: db  -1,  -1,  -1,  -2,  -2,  -2,  -1,  -2,  -2 ; right

;===================================================================================================

LinkOAM_ShadowOffset_Y:
#_0D98DB: db  16,  16,  17,  17
#_0D98DF: db  16,  16,  16,  16
#_0D98E3: db  18,  18,  18,  18

;===================================================================================================

LinkOAM_ShadowOffset_X:
#_0D98E7: db   0,   0,  -1,   1
#_0D98EB: db   0,   0,   0,   0
#_0D98EF: db   0,   0,   0,   0

;===================================================================================================

AttackHitboxOffset_Y:
; walking
; charging dash
; index 0 used for standing still
#_0D98F3: db $80, $80, $80, $80, $80, $80, $80, $80, $80 ; up
#_0D98FC: db $80, $80, $80, $80, $80, $80, $80, $80, $80 ; down
#_0D9905: db $80, $80, $80, $80, $80, $80, $80, $80, $80 ; left
#_0D990E: db $80, $80, $80, $80, $80, $80, $80, $80, $80 ; right

; powder
#_0D9917: db   9,   5,  -2,  -6,  -8,  -5,  -3,   7,   9 ; up
#_0D9920: db  11,  15,  21,  25,  27,  25,  23,  13,  11 ; down
#_0D9929: db  -2,   2,   3,  12,  12,  15,  22,  27,  27 ; left
#_0D9932: db  -2,   2,   3,  12,  12,  15,  22,  27,  27 ; right

; walking with sword out
#_0D993B: db  -5,  -4,  -3,  -5,  -4,  -3 ; up
#_0D9941: db  24,  25,  26,  24,  25,  26 ; down
#_0D9947: db  13,  14,  15,  13,  14,  15 ; left
#_0D994D: db  13,  14,  15,  13,  14,  15 ; right

; poking with sword
#_0D9953: db  -3,  -7,   2 ; up
#_0D9956: db  20,  26,  24 ; down
#_0D9959: db  10,  13,  15 ; left
#_0D995C: db  10,  13,  15 ; right

; falling
#_0D995F: db $80, $80, $80, $80, $80, $80

; landing in underworld
#_0D9965: db $80, $80, $80, $80

; bonk
#_0D9969: db $80 ; up
#_0D996A: db $80 ; down
#_0D996B: db $80 ; left
#_0D996C: db $80 ; right

; hammer
; rods
#_0D996D: db  -7,  -1,  -2 ; up
#_0D9970: db  -3,  10,  26 ; down
#_0D9973: db  -2,   3,  14 ; left
#_0D9976: db  -2,   3,  14 ; right

; bow
#_0D9979: db $80, $80, $80 ; up
#_0D997C: db $80, $80, $80 ; down
#_0D997F: db $80, $80, $80 ; left
#_0D9982: db $80, $80, $80 ; right

; boomerang
#_0D9985: db $80, $80 ; up
#_0D9987: db $80, $80 ; down
#_0D9989: db $80, $80 ; left
#_0D998B: db $80, $80 ; right

; tall grass
#_0D998D: db $80, $80, $80, $80, $80, $80 ; up
#_0D9993: db $80, $80, $80, $80, $80, $80 ; down
#_0D9999: db $80, $80, $80, $80, $80, $80 ; left
#_0D999F: db $80, $80, $80, $80, $80, $80 ; right

; desert prayer
#_0D99A5: db $80, $80, $80, $80

; shovel
#_0D99A9: db $80, $80, $80, $80, $80, $80

; walk carrying item
#_0D99AF: db $80, $80, $80, $80, $80, $80 ; up
#_0D99B5: db $80, $80, $80, $80, $80, $80 ; down
#_0D99BB: db $80, $80, $80, $80, $80, $80 ; left
#_0D99C1: db $80, $80, $80, $80, $80, $80 ; right

; throwing item
#_0D99C7: db $80, $80, $80, $80, $80, $80 ; up
#_0D99CD: db $80, $80, $80, $80, $80, $80 ; down
#_0D99D3: db $80, $80, $80, $80, $80, $80 ; left
#_0D99D9: db $80, $80, $80, $80, $80, $80 ; right

; spin attack
#_0D99DF: db  -4,  -8,   6,  15,  26,  26,  14,   6
#_0D99E7: db  -7,  -7,  22,  26,  16,   8,   5,  12

; lifting item
#_0D99EF: db $80, $80, $80 ; up
#_0D99F2: db $80, $80, $80 ; down
#_0D99F5: db $80, $80, $80 ; left
#_0D99F8: db $80, $80, $80 ; right

; treading water
#_0D99FB: db $80, $80 ; up
#_0D99FD: db $80, $80 ; down
#_0D99FF: db $80, $80 ; left
#_0D9A01: db $80, $80 ; right

; fast swim
#_0D9A03: db $80, $80, $80, $80 ; up
#_0D9A07: db $80, $80, $80, $80 ; down
#_0D9A0B: db $80, $80, $80, $80 ; left
#_0D9A0F: db $80, $80, $80, $80 ; right

; slow swim
#_0D9A13: db $80, $80, $80 ; up
#_0D9A16: db $80, $80, $80 ; down
#_0D9A19: db $80, $80, $80 ; left
#_0D9A1C: db $80, $80, $80 ; right

; zap
#_0D9A1F: db $80, $80, $80, $80 ; up
#_0D9A23: db $80, $80, $80, $80 ; down
#_0D9A27: db $80, $80, $80, $80 ; left
#_0D9A2B: db $80, $80, $80, $80 ; right

; medallion spin
#_0D9A2F: db  24,  16,  -5,  16

; ether
#_0D9A33: db  13,  -4,  -5,  -5

; bombos
#_0D9A37: db  -1,  -5,  -5,  -5,  -5
#_0D9A3C: db  11,  15,  21,  25,  27

; quake
#_0D9A41: db  13,  -3,  -7,  26,  18

; pushing
#_0D9A46: db $80, $80, $80, $80, $80, $80 ; up
#_0D9A4C: db $80, $80, $80, $80, $80, $80 ; down
#_0D9A52: db $80, $80, $80, $80, $80, $80 ; left
#_0D9A58: db $80, $80, $80, $80, $80, $80 ; right

; pull switch
#_0D9A5E: db $80, $80, $80, $80, $80

; TODO
#_0D9A63: db $80, $80, $80, $80

; ped pull
#_0D9A67: db $80, $80

; grabbing
#_0D9A69: db $80, $80, $80, $80 ; up
#_0D9A6D: db $80, $80, $80, $80 ; down
#_0D9A71: db $80, $80, $80, $80 ; left
#_0D9A75: db $80, $80, $80, $80 ; right

; walking up spiral stairs
#_0D9A79: db $80, $80, $80 ; lower
#_0D9A7C: db $80, $80, $80 ; higher

; walking down spiral stairs
#_0D9A7F: db $80, $80, $80 ; higher
#_0D9A82: db $80, $80, $80 ; lower

; death
#_0D9A85: db $80, $80, $80, $80, $80, $80

; TODO
#_0D9A8B: db $80, $80, $80 ; up
#_0D9A8E: db $80, $80, $80 ; down
#_0D9A91: db $80, $80, $80 ; left
#_0D9A94: db $80, $80, $80 ; right

; item gets
#_0D9A97: db $80 ; normal
#_0D9A98: db $80 ; crystal/triforce

; sleep
#_0D9A99: db $80, $80

; hookshot
#_0D9A9B: db $80 ; up
#_0D9A9C: db $80 ; down
#_0D9A9D: db $80 ; left
#_0D9A9E: db $80 ; right

; bunny walk
; first frame used for standing still
#_0D9A9F: db $80, $80, $80, $80 ; up
#_0D9AA3: db $80, $80, $80, $80 ; down
#_0D9AA7: db $80, $80, $80, $80 ; left
#_0D9AAB: db $80, $80, $80, $80 ; right

; cane
#_0D9AAF: db $80, $80, $80 ; up
#_0D9AB2: db $80, $80, $80 ; down
#_0D9AB5: db $80, $80, $80 ; left
#_0D9AB8: db $80, $80, $80 ; right

; net
#_0D9ABB: db  -4
#_0D9ABC: db  -5,   4,  14,  20,  15
#_0D9AC1: db   8,  -3,  -8,  14,  -3,  15
#_0D9AC7: db $80

; tree pull
#_0D9AC8: db $80
#_0D9AC9: db $80, $80, $80, $80, $80

; sword slash
#_0D9ACE: db   9,   5,  -3,  -9, -11, -15,  -9,  -4,   8 ; up
#_0D9AD7: db  11,  14,  20,  25,  27,  31,  25,  23,  13 ; down
#_0D9AE0: db  -2,  -1,   0,   8,   9,  12,  16,  24,  30 ; left
#_0D9AE9: db  -2,  -1,   0,   8,   9,  12,  16,  24,  30 ; right

;===================================================================================================

AttackHitboxOffset_X:
; walking
; charging dash
; index 0 used for standing still
#_0D9AF2: db $80, $80, $80, $80, $80, $80, $80, $80, $80 ; up
#_0D9AFB: db $80, $80, $80, $80, $80, $80, $80, $80, $80 ; down
#_0D9B04: db $80, $80, $80, $80, $80, $80, $80, $80, $80 ; left
#_0D9B0D: db $80, $80, $80, $80, $80, $80, $80, $80, $80 ; right

; powder
#_0D9B16: db  19,  18,  14,  10,   0,  -4, -10, -13, -15 ; up
#_0D9B1F: db  -8,  -6,  -5,   5,   8,  12,  18,  22,  23 ; down
#_0D9B28: db   3,  -2,  -7, -11, -14, -11,  -9,   1,   3 ; left
#_0D9B31: db   5,  10,  15,  19,  22,  19,  17,   7,   5 ; right

; walking with sword out
#_0D9B3A: db   0,   0,   0,   0,   0,   0 ; up
#_0D9B40: db   7,   7,   7,   7,   7,   7 ; down
#_0D9B46: db -10, -10, -10, -10, -10, -10 ; left
#_0D9B4C: db  18,  18,  18,  18,  18,  18 ; right

; poking with sword
#_0D9B52: db  -3,   2,  -3 ; up
#_0D9B55: db  10,   7,  10 ; down
#_0D9B58: db -16, -24, -20 ; left
#_0D9B5B: db  16,  24,  20 ; right

; falling
#_0D9B5E: db $80, $80, $80, $80, $80, $80

; landing in underworld
#_0D9B64: db $80, $80, $80, $80

; bonk
#_0D9B68: db $80 ; up
#_0D9B69: db $80 ; down
#_0D9B6A: db $80 ; left
#_0D9B6B: db $80 ; right

; hammer
; rods
#_0D9B6C: db  -2,  -2,  -2 ; up
#_0D9B6F: db  10,  10,  10 ; down
#_0D9B72: db   1, -10, -11 ; left
#_0D9B75: db   7,  18,  19 ; right

; bow
#_0D9B78: db $80, $80, $80 ; up
#_0D9B7B: db $80, $80, $80 ; down
#_0D9B7E: db $80, $80, $80 ; left
#_0D9B81: db $80, $80, $80 ; right

; boomerang
#_0D9B84: db $80, $80 ; up
#_0D9B86: db $80, $80 ; down
#_0D9B88: db $80, $80 ; left
#_0D9B8A: db $80, $80 ; right

; tall grass
#_0D9B8C: db $80, $80, $80, $80, $80, $80 ; up
#_0D9B92: db $80, $80, $80, $80, $80, $80 ; down
#_0D9B98: db $80, $80, $80, $80, $80, $80 ; left
#_0D9B9E: db $80, $80, $80, $80, $80, $80 ; right

; desert prayer
#_0D9BA4: db $80, $80, $80, $80

; shovel
#_0D9BA8: db $80, $80, $80, $80, $80, $80

; walk carrying item
#_0D9BAE: db $80, $80, $80, $80, $80, $80 ; up
#_0D9BB4: db $80, $80, $80, $80, $80, $80 ; down
#_0D9BBA: db $80, $80, $80, $80, $80, $80 ; left
#_0D9BC0: db $80, $80, $80, $80, $80, $80 ; right

; throwing item
#_0D9BC6: db $80, $80, $80, $80, $80, $80 ; up
#_0D9BCC: db $80, $80, $80, $80, $80, $80 ; down
#_0D9BD2: db $80, $80, $80, $80, $80, $80 ; left
#_0D9BD8: db $80, $80, $80, $80, $80, $80 ; right

; spin attack
#_0D9BDE: db  13,   6,  22,  22,   8,  -1, -14, -14
#_0D9BE6: db  -1,   9,  -5,   3,  18,  21, -11, -12

; lifting item
#_0D9BEE: db $80, $80, $80 ; up
#_0D9BF1: db $80, $80, $80 ; down
#_0D9BF4: db $80, $80, $80 ; left
#_0D9BF7: db $80, $80, $80 ; right

; treading water
#_0D9BFA: db $80, $80 ; up
#_0D9BFC: db $80, $80 ; down
#_0D9BFE: db $80, $80 ; left
#_0D9C00: db $80, $80 ; right

; fast swim
#_0D9C02: db $80, $80, $80, $80 ; up
#_0D9C06: db $80, $80, $80, $80 ; down
#_0D9C0A: db $80, $80, $80, $80 ; left
#_0D9C0E: db $80, $80, $80, $80 ; right

; slow swim
#_0D9C12: db $80, $80, $80 ; up
#_0D9C15: db $80, $80, $80 ; down
#_0D9C18: db $80, $80, $80 ; left
#_0D9C1B: db $80, $80, $80 ; right

; zap
#_0D9C1E: db $80, $80, $80, $80 ; up
#_0D9C22: db $80, $80, $80, $80 ; down
#_0D9C26: db $80, $80, $80, $80 ; left
#_0D9C2A: db $80, $80, $80, $80 ; right

; medallion spin
#_0D9C2E: db   7,  -9,   0,  17

; ether
#_0D9C32: db  22,  14,  10,  10

; bombos
#_0D9C36: db  14,  11,   8,   8,   8
#_0D9C3B: db  23,  22,  20,  12,   8

; quake
#_0D9C40: db  23,  14,  10,  12,  12

; pushing
#_0D9C45: db $80, $80, $80, $80, $80, $80 ; up
#_0D9C4B: db $80, $80, $80, $80, $80, $80 ; down
#_0D9C51: db $80, $80, $80, $80, $80, $80 ; left
#_0D9C57: db $80, $80, $80, $80, $80, $80 ; right

; pull switch
#_0D9C5D: db $80, $80, $80, $80, $80

; TODO
#_0D9C62: db $80, $80, $80, $80

; ped pull
#_0D9C66: db $80, $80

; grabbing
#_0D9C68: db $80, $80, $80, $80 ; up
#_0D9C6C: db $80, $80, $80, $80 ; down
#_0D9C70: db $80, $80, $80, $80 ; left
#_0D9C74: db $80, $80, $80, $80 ; right

; walking up spiral stairs
#_0D9C78: db $80, $80, $80 ; lower
#_0D9C7B: db $80, $80, $80 ; higher

; walking down spiral stairs
#_0D9C7E: db $80, $80, $80 ; higher
#_0D9C81: db $80, $80, $80 ; lower

; death
#_0D9C84: db $80, $80, $80, $80, $80, $80

; TODO
#_0D9C8A: db $80, $80, $80 ; up
#_0D9C8D: db $80, $80, $80 ; down
#_0D9C90: db $80, $80, $80 ; left
#_0D9C93: db $80, $80, $80 ; right

; item gets
#_0D9C96: db $80 ; normal
#_0D9C97: db $80 ; crystal/triforce

; sleep
#_0D9C98: db $80, $80

; hookshot
#_0D9C9A: db $80 ; up
#_0D9C9B: db $80 ; down
#_0D9C9C: db $80 ; left
#_0D9C9D: db $80 ; right

; bunny walk
; first frame used for standing still
#_0D9C9E: db $80, $80, $80, $80 ; up
#_0D9CA2: db $80, $80, $80, $80 ; down
#_0D9CA6: db $80, $80, $80, $80 ; left
#_0D9CAA: db $80, $80, $80, $80 ; right

; cane
#_0D9CAE: db $80, $80, $80 ; up
#_0D9CB1: db $80, $80, $80 ; down
#_0D9CB4: db $80, $80, $80 ; left
#_0D9CB7: db $80, $80, $80 ; right

; net
#_0D9CBA: db  13
#_0D9CBB: db  13,  16,  11,   2, -11
#_0D9CC0: db -16,  -9,   0,  11,  -9, -11
#_0D9CC6: db $80

; tree pull
#_0D9CC7: db $80
#_0D9CC8: db $80, $80, $80, $80, $80

; sword slash
#_0D9CCD: db  19,  17,  15,  14,   3,  -1,  -5, -11, -14 ; up
#_0D9CD6: db  -8,  -7,  -6,   3,   5,   8,  12,  18,  22 ; down
#_0D9CDF: db   3,  -2,  -8, -13, -16, -20, -15, -12,   1 ; left
#_0D9CE8: db   5,  10,  16,  21,  24,  28,  23,  20,   7 ; right

;===================================================================================================

LinkOAM_Priority:
; walking
; charging dash
; index 0 used for standing still
#_0D9CF1: db   2,   2,   2,   2,   2,   2,   2,   2,   2 ; up
#_0D9CFA: db  10,  10,  10,  10,  10,  10,  10,  10,  10 ; down
#_0D9D03: db   2,   2,   2,   2,   2,   2,   2,   2,   2 ; left
#_0D9D0C: db   2,   2,   2,   2,   2,   2,   2,   2,   2 ; right

; powder
#_0D9D15: db   3,   3,   3,   3,   3,   3,   3,   3,   1 ; up
#_0D9D1E: db   0,   0,   0,   0,  11,  11,  11,  11,  11 ; down
#_0D9D27: db   2,   2,   2,   2,   2,   2,   0,   0,   0 ; left
#_0D9D30: db   2,   2,   2,   2,   2,   2,   0,   0,   0 ; right

; walking with sword out
#_0D9D39: db   2,   2,   2,   2,   2,   2 ; up
#_0D9D3F: db   1,   1,   1,   1,   1,   1 ; down
#_0D9D45: db   0,   0,   0,   0,   0,   0 ; left
#_0D9D4B: db   0,   0,   0,   0,   0,   0 ; right

; poking with sword
#_0D9D51: db   3,   3,   3 ; up
#_0D9D54: db   6,   6,   6 ; down
#_0D9D57: db   5,   5,   5 ; left
#_0D9D5A: db   5,   5,   5 ; right

; falling
#_0D9D5D: db   1,   1,   1,   1,   1,   1

; landing in underworld
#_0D9D63: db   1,   1,   1,   1

; bonk
#_0D9D67: db   2 ; up
#_0D9D68: db   3 ; down
#_0D9D69: db   0 ; left
#_0D9D6A: db   0 ; right

; hammer
; rods
#_0D9D6B: db   0,   3,   3 ; up
#_0D9D6E: db   6,   6,   6 ; down
#_0D9D71: db   0,   0,   0 ; left
#_0D9D74: db   0,   0,   0 ; right

; bow
#_0D9D77: db   2,   2,   2 ; up
#_0D9D7A: db   0,   0,   0 ; down
#_0D9D7D: db   0,   0,   0 ; left
#_0D9D80: db   0,   0,   0 ; right

; boomerang
#_0D9D83: db   0,   3 ; up
#_0D9D85: db   3,   3 ; down
#_0D9D87: db   2,   0 ; left
#_0D9D89: db   2,   0 ; right

; tall grass
#_0D9D8B: db   2,   2,   2,   2,   2,   2 ; up
#_0D9D91: db  10,  10,  10,  10,  10,  10 ; down
#_0D9D97: db   2,   2,   2,   2,   2,   2 ; left
#_0D9D9D: db   2,   2,   2,   2,   2,   2 ; right

; desert prayer
#_0D9DA3: db   3,   3,   3,   3

; shovel
#_0D9DA7: db   1,   1,   2,   1,   1,   2

; walk carrying item
#_0D9DAD: db   4,   4,   4,   4,   4,   4 ; up
#_0D9DB3: db   3,   3,   3,   3,   3,   3 ; down
#_0D9DB9: db   2,   2,   2,   2,   2,   2 ; left
#_0D9DBF: db   2,   2,   2,   2,   2,   2 ; right

; throwing item
#_0D9DC5: db   4,   4,   4,   4,   4,   4 ; up
#_0D9DCB: db   3,   3,   3,   3,   3,   3 ; down
#_0D9DD1: db   2,   2,   2,   2,   2,   2 ; left
#_0D9DD7: db   2,   2,   2,   2,   2,   2 ; right

; spin attack
#_0D9DDD: db   2,   2,   5,   5,   5,   5,   5,   5
#_0D9DE5: db   2,   2,   5,   5,   5,   5,   2,   5

; lifting item
#_0D9DED: db   0,   0,   0 ; up
#_0D9DF0: db   0,   0,   0 ; down
#_0D9DF3: db   0,   0,   0 ; left
#_0D9DF6: db   0,   0,   0 ; right

; treading water
#_0D9DF9: db   0,   0 ; up
#_0D9DFB: db   0,   0 ; down
#_0D9DFD: db   0,   0 ; left
#_0D9DFF: db   0,   0 ; right

; fast swim
#_0D9E01: db   7,   7,   7,   7 ; up
#_0D9E05: db   8,   8,   8,   8 ; down
#_0D9E09: db   9,   9,   9,   9 ; left
#_0D9E0D: db   9,   9,   9,   9 ; right

; slow swim
#_0D9E11: db   0,   0,   0 ; up
#_0D9E14: db   7,   7,   7 ; down
#_0D9E17: db   7,   7,   7 ; left
#_0D9E1A: db   7,   7,   7 ; right

; zap
#_0D9E1D: db   0,   0,   0,   0 ; up
#_0D9E21: db   0,   0,   0,   0 ; down
#_0D9E25: db   0,   0,   0,   0 ; left
#_0D9E29: db   0,   0,   0,   0 ; right

; medallion spin
#_0D9E2D: db   1,   1,   2,   1

; ether
#_0D9E31: db   1,   1,   1,   1

; bombos
#_0D9E35: db   1,   3,   3,  10,  10
#_0D9E3A: db   1,   1,   1,   1,   1

; quake
#_0D9E3F: db   1,   1,   1,   1,   1

; pushing
#_0D9E44: db   0,   0,   0,   0,   0,   0 ; up
#_0D9E4A: db   0,   0,   0,   0,   0,   0 ; down
#_0D9E50: db   0,   0,   0,   0,   0,   0 ; left
#_0D9E56: db   0,   0,   0,   0,   0,   0 ; right

; pull switch
#_0D9E5C: db   2,   2,   2,   2,   2

; TODO
#_0D9E61: db   2,   2,   2,   2

; ped pull
#_0D9E65: db   2,   2

; grabbing
#_0D9E67: db   2,   2,   2,   2 ; up
#_0D9E6B: db   2,   2,   2,   2 ; down
#_0D9E6F: db   2,   2,   2,   2 ; left
#_0D9E73: db   2,   2,   2,   2 ; right

; walking up spiral stairs
#_0D9E77: db   2,   2,   2 ; lower
#_0D9E7A: db   2,   2,   2 ; higher

; walking down spiral stairs
#_0D9E7D: db   2,   2,   2 ; higher
#_0D9E80: db   2,   2,   2 ; lower

; death
#_0D9E83: db   2,   2,   2,   2,   2,   2

; TODO
#_0D9E89: db   2,   2,   2 ; up
#_0D9E8C: db   2,   2,   2 ; down
#_0D9E8F: db   2,   2,   2 ; left
#_0D9E92: db   2,   2,   2 ; right

; item gets
#_0D9E95: db   1 ; normal
#_0D9E96: db   1 ; crystal/triforce

; sleep
#_0D9E97: db   2,   2

; hookshot
#_0D9E99: db   3 ; up
#_0D9E9A: db   6 ; down
#_0D9E9B: db   5 ; left
#_0D9E9C: db   5 ; right

; bunny walk
; first frame used for standing still
#_0D9E9D: db   2,   2,   2,   2 ; up
#_0D9EA1: db   2,   2,   2,   2 ; down
#_0D9EA5: db   2,   2,   2,   2 ; left
#_0D9EA9: db   2,   2,   2,   2 ; right

; cane
#_0D9EAD: db   0,   0,   2 ; up
#_0D9EB0: db   2,   0,   0 ; down
#_0D9EB3: db   0,   0,   0 ; left
#_0D9EB6: db   0,   0,   0 ; right

; net
#_0D9EB9: db   2
#_0D9EBA: db   2,   0,   0,   0,   0
#_0D9EBF: db   0,   2,   2,   0,   2,   0
#_0D9EC5: db   5

; tree pull
#_0D9EC6: db   2
#_0D9EC7: db   0,   0,   0,   0,   0

; sword slash
#_0D9ECC: db   3,   3,   3,   3,   3,   3,   3,   3,   3 ; up
#_0D9ED5: db   0,  11,  11,  11,  11,  11,  11,  11,  11 ; down
#_0D9EDE: db   2,   2,   2,   2,   2,   0,   0,   0,   0 ; left
#_0D9EE7: db   2,   2,   2,   2,   2,   0,   0,   0,   0 ; right

;===================================================================================================

LinkOAM_AnimationStepDataOffsets:
#_0D9EF0: dw $0000 ; 0x00 - Walking
#_0D9EF2: dw $0024 ; 0x01 - TODO same as powder unused?
#_0D9EF4: dw $0048 ; 0x02 - Sword out/Dashing
#_0D9EF6: dw $0060 ; 0x03 - Sword poke
#_0D9EF8: dw $006C ; 0x04 - Falling
#_0D9EFA: dw $0076 ; 0x05 - Bonking/Recoil
#_0D9EFC: dw $007A ; 0x06 - Rods/Hammer
#_0D9EFE: dw $0086 ; 0x07 - Bow
#_0D9F00: dw $0024 ; 0x08 - Powder
#_0D9F02: dw $0092 ; 0x09 - Boom
#_0D9F04: dw $009A ; 0x0A - Sloshing/Stairs
#_0D9F06: dw $00B2 ; 0x0B - Prayer
#_0D9F08: dw $00B9 ; 0x0C - Shovel
#_0D9F0A: dw $00BC ; 0x0D - Carrying
#_0D9F0C: dw $00D4 ; 0x0E - Throwing
#_0D9F0E: dw $00EC ; 0x0F - Spin attack
#_0D9F10: dw $00FC ; 0x10 - Lifting
#_0D9F12: dw $0108 ; 0x11 - Treading water
#_0D9F14: dw $0110 ; 0x12 - Stroked swimming
#_0D9F16: dw $0120 ; 0x13 - Swimming
#_0D9F18: dw $012C ; 0x14 - Zapped
#_0D9F1A: dw $013C ; 0x15 - Medallions
#_0D9F1C: dw $0153 ; 0x16 - Pushing
#_0D9F1E: dw $016B ; 0x17 - Switch pull
#_0D9F20: dw $0176 ; 0x18 - Grabbing/Pulling
#_0D9F22: dw $0186 ; 0x19 - Diagonally up stairs
#_0D9F24: dw $018C ; 0x1A - Diagonally down stairs
#_0D9F26: dw $0192 ; 0x1B - Spin and die
#_0D9F28: dw $0198 ; 0x1C - TODO unused?
#_0D9F2A: dw $01A4 ; 0x1D - Item get
#_0D9F2C: dw $01A5 ; 0x1E - 2 handed item get
#_0D9F2E: dw $01A6 ; 0x1F - Sleeping
#_0D9F30: dw $01A8 ; 0x20 - Hookshot
#_0D9F32: dw $01AC ; 0x21 - Bunny
#_0D9F34: dw $01BC ; 0x22 - Cane
#_0D9F36: dw $01C8 ; 0x23 - Bug net
#_0D9F38: dw $01D4 ; 0x24 - Sword up
#_0D9F3A: dw $01D5 ; 0x25 - Book
#_0D9F3C: dw $01D6 ; 0x26 - Tree pull
#_0D9F3E: dw $01DB ; 0x27 - Sword slash

;---------------------------------------------------------------------------------------------------

#_0D9F40: dw $0009 ; 0x00 - Walking
#_0D9F42: dw $002D ; 0x01 - TODO same as powder unused?
#_0D9F44: dw $004E ; 0x02 - Sword out/Dashing
#_0D9F46: dw $0063 ; 0x03 - Sword poke
#_0D9F48: dw $006C ; 0x04 - Falling
#_0D9F4A: dw $0077 ; 0x05 - Bonking/Recoil
#_0D9F4C: dw $007D ; 0x06 - Rods/Hammer
#_0D9F4E: dw $0089 ; 0x07 - Bow
#_0D9F50: dw $002D ; 0x08 - Powder
#_0D9F52: dw $0094 ; 0x09 - Boom
#_0D9F54: dw $00A0 ; 0x0A - Sloshing/Stairs
#_0D9F56: dw $00B2 ; 0x0B - Prayer
#_0D9F58: dw $00B9 ; 0x0C - Shovel
#_0D9F5A: dw $00C2 ; 0x0D - Carrying
#_0D9F5C: dw $00DA ; 0x0E - Throwing
#_0D9F5E: dw $00EC ; 0x0F - Spin attack
#_0D9F60: dw $00FF ; 0x10 - Lifting
#_0D9F62: dw $010A ; 0x11 - Treading water
#_0D9F64: dw $0114 ; 0x12 - Stroked swimming
#_0D9F66: dw $0123 ; 0x13 - Swimming
#_0D9F68: dw $0130 ; 0x14 - Zapped
#_0D9F6A: dw $013C ; 0x15 - Medallions
#_0D9F6C: dw $0159 ; 0x16 - Pushing
#_0D9F6E: dw $016B ; 0x17 - Switch pull
#_0D9F70: dw $017A ; 0x18 - Grabbing/Pulling
#_0D9F72: dw $0189 ; 0x19 - Diagonally up stairs
#_0D9F74: dw $018F ; 0x1A - Diagonally down stairs
#_0D9F76: dw $0192 ; 0x1B - Spin and die
#_0D9F78: dw $019B ; 0x1C - TODO unused?
#_0D9F7A: dw $01A4 ; 0x1D - Item get
#_0D9F7C: dw $01A5 ; 0x1E - 2 handed item get
#_0D9F7E: dw $01A6 ; 0x1F - Sleeping
#_0D9F80: dw $01A9 ; 0x20 - Hookshot
#_0D9F82: dw $01B0 ; 0x21 - Bunny
#_0D9F84: dw $01BF ; 0x22 - Cane
#_0D9F86: dw $01C8 ; 0x23 - Bug net
#_0D9F88: dw $01D4 ; 0x24 - Sword up
#_0D9F8A: dw $01D5 ; 0x25 - Book
#_0D9F8C: dw $01D6 ; 0x26 - Tree pull
#_0D9F8E: dw $01E4 ; 0x27 - Sword slash

;---------------------------------------------------------------------------------------------------

#_0D9F90: dw $0012 ; 0x00 - Walking
#_0D9F92: dw $0036 ; 0x01 - TODO same as powder unused?
#_0D9F94: dw $0054 ; 0x02 - Sword out/Dashing
#_0D9F96: dw $0066 ; 0x03 - Sword poke
#_0D9F98: dw $006C ; 0x04 - Falling
#_0D9F9A: dw $0078 ; 0x05 - Bonking/Recoil
#_0D9F9C: dw $0080 ; 0x06 - Rods/Hammer
#_0D9F9E: dw $008C ; 0x07 - Bow
#_0D9FA0: dw $0036 ; 0x08 - Powder
#_0D9FA2: dw $0096 ; 0x09 - Boom
#_0D9FA4: dw $00A6 ; 0x0A - Sloshing/Stairs
#_0D9FA6: dw $00B2 ; 0x0B - Prayer
#_0D9FA8: dw $00B6 ; 0x0C - Shovel
#_0D9FAA: dw $00C8 ; 0x0D - Carrying
#_0D9FAC: dw $00E0 ; 0x0E - Throwing
#_0D9FAE: dw $00EC ; 0x0F - Spin attack
#_0D9FB0: dw $0102 ; 0x10 - Lifting
#_0D9FB2: dw $010C ; 0x11 - Treading water
#_0D9FB4: dw $0118 ; 0x12 - Stroked swimming
#_0D9FB6: dw $0126 ; 0x13 - Swimming
#_0D9FB8: dw $0134 ; 0x14 - Zapped
#_0D9FBA: dw $013C ; 0x15 - Medallions
#_0D9FBC: dw $015F ; 0x16 - Pushing
#_0D9FBE: dw $016B ; 0x17 - Switch pull
#_0D9FC0: dw $017E ; 0x18 - Grabbing/Pulling
#_0D9FC2: dw $0186 ; 0x19 - Diagonally up stairs
#_0D9FC4: dw $018C ; 0x1A - Diagonally down stairs
#_0D9FC6: dw $0192 ; 0x1B - Spin and die
#_0D9FC8: dw $019E ; 0x1C - TODO unused?
#_0D9FCA: dw $01A4 ; 0x1D - Item get
#_0D9FCC: dw $01A5 ; 0x1E - 2 handed item get
#_0D9FCE: dw $01A6 ; 0x1F - Sleeping
#_0D9FD0: dw $01AA ; 0x20 - Hookshot
#_0D9FD2: dw $01B4 ; 0x21 - Bunny
#_0D9FD4: dw $01C2 ; 0x22 - Cane
#_0D9FD6: dw $01C8 ; 0x23 - Bug net
#_0D9FD8: dw $01D4 ; 0x24 - Sword up
#_0D9FDA: dw $01D5 ; 0x25 - Book
#_0D9FDC: dw $01D6 ; 0x26 - Tree pull
#_0D9FDE: dw $01ED ; 0x27 - Sword slash

;---------------------------------------------------------------------------------------------------

#_0D9FE0: dw $001B ; 0x00 - Walking
#_0D9FE2: dw $003F ; 0x01 - TODO same as powder unused?
#_0D9FE4: dw $005A ; 0x02 - Sword out/Dashing
#_0D9FE6: dw $0069 ; 0x03 - Sword poke
#_0D9FE8: dw $006C ; 0x04 - Falling
#_0D9FEA: dw $0079 ; 0x05 - Bonking/Recoil
#_0D9FEC: dw $0083 ; 0x06 - Rods/Hammer
#_0D9FEE: dw $008F ; 0x07 - Bow
#_0D9FF0: dw $003F ; 0x08 - Powder
#_0D9FF2: dw $0098 ; 0x09 - Boom
#_0D9FF4: dw $00AC ; 0x0A - Sloshing/Stairs
#_0D9FF6: dw $00B2 ; 0x0B - Prayer
#_0D9FF8: dw $00B9 ; 0x0C - Shovel
#_0D9FFA: dw $00CE ; 0x0D - Carrying
#_0D9FFC: dw $00E6 ; 0x0E - Throwing
#_0D9FFE: dw $00EC ; 0x0F - Spin attack
#_0DA000: dw $0105 ; 0x10 - Lifting
#_0DA002: dw $010E ; 0x11 - Treading water
#_0DA004: dw $011C ; 0x12 - Stroked swimming
#_0DA006: dw $0129 ; 0x13 - Swimming
#_0DA008: dw $0138 ; 0x14 - Zapped
#_0DA00A: dw $013C ; 0x15 - Medallions
#_0DA00C: dw $0165 ; 0x16 - Pushing
#_0DA00E: dw $016B ; 0x17 - Switch pull
#_0DA010: dw $0182 ; 0x18 - Grabbing/Pulling
#_0DA012: dw $0189 ; 0x19 - Diagonally up stairs
#_0DA014: dw $018F ; 0x1A - Diagonally down stairs
#_0DA016: dw $0192 ; 0x1B - Spin and die
#_0DA018: dw $01A1 ; 0x1C - TODO unused?
#_0DA01A: dw $01A4 ; 0x1D - Item get
#_0DA01C: dw $01A5 ; 0x1E - 2 handed item get
#_0DA01E: dw $01A6 ; 0x1F - Sleeping
#_0DA020: dw $01AB ; 0x20 - Hookshot
#_0DA022: dw $01B8 ; 0x21 - Bunny
#_0DA024: dw $01C5 ; 0x22 - Cane
#_0DA026: dw $01C8 ; 0x23 - Bug net
#_0DA028: dw $01D4 ; 0x24 - Sword up
#_0DA02A: dw $01D5 ; 0x25 - Book
#_0DA02C: dw $01D6 ; 0x26 - Tree pull
#_0DA02E: dw $01F6 ; 0x27 - Sword slash

;===================================================================================================

LinkOAM_AnimationDirectionalStepIndexOffset:
#_0DA030: dw $0000 ; up
#_0DA032: dw $0050 ; down
#_0DA034: dw $00A0 ; left
#_0DA036: dw $00F0 ; right

;---------------------------------------------------------------------------------------------------

LinkOAM_AuxAnimationStepDataOffset:
; up
#_0DA038: dw $0000 ; falling
#_0DA03A: dw $000A ; lifting item
#_0DA03C: dw $0016 ; fast swim
#_0DA03E: dw $0026 ; medallions
#_0DA040: dw $003D ; pull switch
#_0DA042: dw $0048 ; grabbing
#_0DA044: dw $0058 ; sword slash

; down
#_0DA046: dw $0000 ; falling
#_0DA048: dw $000D ; lifting item
#_0DA04A: dw $001A ; fast swim
#_0DA04C: dw $0026 ; medallions
#_0DA04E: dw $003D ; pull switch
#_0DA050: dw $004C ; grabbing
#_0DA052: dw $0061 ; sword slash

; left
#_0DA054: dw $0000 ; falling
#_0DA056: dw $0010 ; lifting item
#_0DA058: dw $001E ; fast swim
#_0DA05A: dw $0026 ; medallions
#_0DA05C: dw $003D ; pull switch
#_0DA05E: dw $0050 ; grabbing
#_0DA060: dw $006A ; sword slash

; right
#_0DA062: dw $0000 ; falling
#_0DA064: dw $0013 ; lifting item
#_0DA066: dw $0022 ; fast swim
#_0DA068: dw $0026 ; medallions
#_0DA06A: dw $003D ; pull switch
#_0DA06C: dw $0054 ; grabbing
#_0DA06E: dw $0073 ; sword slash

;---------------------------------------------------------------------------------------------------

LinkOAM_AuxAnimationDirectionalStepIndexOffset:
#_0DA070: dw $0000 ; up
#_0DA072: dw $000E ; down
#_0DA074: dw $001C ; left
#_0DA076: dw $002A ; right

;===================================================================================================

LinkOAM_Aux1BufferOffsets_SetA:
#_0DA078: db $00, $08, $00, $08
#_0DA07C: db $08, $0C, $14, $08
#_0DA080: db $08, $00, $00, $00

LinkOAM_Aux2BufferOffsets_SetA:
#_0DA084: db $04, $0C, $04, $0C
#_0DA088: db $0C, $10, $18, $0C
#_0DA08C: db $0C, $0C, $04, $04

;---------------------------------------------------------------------------------------------------

LinkOAM_WeaponBufferOffsets_SetA:
#_0DA090: db $08, $10, $10, $18
#_0DA094: db $10, $00, $00, $10
#_0DA098: db $18, $10, $18, $10

LinkOAM_ElfBufferOffsets_SetA:
#_0DA09C: db $14, $1C, $08, $10
#_0DA0A0: db $00, $14, $18, $00
#_0DA0A4: db $10, $04, $10, $1C

;---------------------------------------------------------------------------------------------------

LinkOAM_ShieldBufferOffsets_SetA:
#_0DA0A8: db $1C, $00, $1C, $00
#_0DA0AC: db $18, $1C, $0C, $1C
#_0DA0B0: db $24, $1C, $08, $08

LinkOAM_ShadowBufferOffsets_SetA:
#_0DA0B4: db $28, $28, $28, $28
#_0DA0B8: db $28, $28, $28, $28
#_0DA0BC: db $00, $28, $28, $28

;---------------------------------------------------------------------------------------------------

LinkOAM_Aux1BufferOffsets_SetB:
#_0DA0C0: db $14, $1C, $08, $10
#_0DA0C4: db $10, $14, $1C, $10
#_0DA0C8: db $08, $08, $08, $14

LinkOAM_Aux2BufferOffsets_SetB:
#_0DA0CC: db $18, $20, $0C, $14
#_0DA0D0: db $14, $18, $20, $14
#_0DA0D4: db $0C, $14, $0C, $18

;---------------------------------------------------------------------------------------------------

LinkOAM_WeaponBufferOffsets_SetB:
#_0DA0D8: db $00, $00, $18, $20
#_0DA0DC: db $18, $00, $00, $18
#_0DA0E0: db $18, $18, $20, $00

LinkOAM_ElfBufferOffsets_SetB:
#_0DA0E4: db $1C, $24, $10, $18
#_0DA0E8: db $08, $1C, $24, $08
#_0DA0EC: db $10, $0C, $18, $24

;---------------------------------------------------------------------------------------------------

LinkOAM_ShieldBufferOffsets_SetB:
#_0DA0F0: db $24, $14, $24, $08
#_0DA0F4: db $20, $24, $14, $24
#_0DA0F8: db $24, $24, $10, $1C

LinkOAM_ShadowBufferOffsets_SetB:
#_0DA0FC: db $0C, $0C, $00, $00
#_0DA100: db $00, $0C, $0C, $00
#_0DA104: db $00, $00, $00, $0C

;===================================================================================================

LinkOAM_LinkOAM_Aux1BufferOffsetPointers:
#_0DA108: dw LinkOAM_Aux1BufferOffsets_SetA
#_0DA10A: dw LinkOAM_Aux1BufferOffsets_SetB

;---------------------------------------------------------------------------------------------------

LinkOAM_Aux2BufferOffsetPointers:
#_0DA10C: dw LinkOAM_Aux2BufferOffsets_SetA
#_0DA10E: dw LinkOAM_Aux2BufferOffsets_SetB

;---------------------------------------------------------------------------------------------------

LinkOAM_WeaponBufferOffsetPointers:
#_0DA110: dw LinkOAM_WeaponBufferOffsets_SetA
#_0DA112: dw LinkOAM_WeaponBufferOffsets_SetB

;---------------------------------------------------------------------------------------------------

LinkOAM_ElfBufferOffsetPointers:
#_0DA114: dw LinkOAM_ElfBufferOffsets_SetA
#_0DA116: dw LinkOAM_ElfBufferOffsets_SetB

;---------------------------------------------------------------------------------------------------

LinkOAM_ShieldBufferOffsetPointers:
#_0DA118: dw LinkOAM_ShieldBufferOffsets_SetA
#_0DA11A: dw LinkOAM_ShieldBufferOffsets_SetB

;---------------------------------------------------------------------------------------------------

LinkOAM_ShadowBufferOffsetPointers:
#_0DA11C: dw LinkOAM_ShadowBufferOffsets_SetA
#_0DA11E: dw LinkOAM_ShadowBufferOffsets_SetB

;===================================================================================================
; Works with $0352, so it appears to be OAM buffer offsets
;===================================================================================================
LinkOAM_OAMBufferOffset:
#_0DA120: dw $0190, $00E0, $0000

;===================================================================================================
; Link's priority bits for OAM via $EE
;===================================================================================================
LinkOAM_ObjectPriority:
#_0DA126: dw $2000, $1000, $3000, $2000

;===================================================================================================

LinkOAM_RodTypeID:
#_0DA12E: db $02 ; fire rod
#_0DA12F: db $04 ; ice rod
#_0DA130: db $04 ; ice rod

;===================================================================================================

LinkOAM_StairsSomething:
#_0DA131: db $00, $01, $02, $00, $01, $02, $00, $01
#_0DA139: db $02

;===================================================================================================

LinkOAM_ItemsAUseIndex:
#_0DA13A: db $06 ; rod
#_0DA13B: db $06 ; hammer
#_0DA13C: db $06 ; unused
#_0DA13D: db $06 ; unused
#_0DA13E: db $07 ; bow
#_0DA13F: db $07 ; unused
#_0DA140: db $08 ; powder
#_0DA141: db $09 ; boomerang

LinkOAM_ItemsBUseIndex:
#_0DA142: db $0C ; shovel
#_0DA143: db $0B ; unused prayer
#_0DA144: db $20 ; hookshot
#_0DA145: db $22 ; cane
#_0DA146: db $23 ; net
#_0DA147: db $25 ; book

;===================================================================================================

; Based on $0308
LinkOAM_WeirdGrabIndices:
#_0DA148: db $26 ; tree pull
#_0DA149: db $0B ; prayer
#_0DA14A: db $0B ; unused
#_0DA14B: db $0C ; TODO interesting...
#_0DA14C: db $0B ; unused
#_0DA14D: db $0B ; unused
#_0DA14E: db $0B ; unused
#_0DA14F: db $0D ; carry/toss

;===================================================================================================

LinkOAM_AnimationsWithAuxParts:
#_0DA150: dw $0004 ; falling
#_0DA152: dw $0010 ; lifting item
#_0DA154: dw $0012 ; fast swim
#_0DA156: dw $0015 ; medallions
#_0DA158: dw $0017 ; pull switch
#_0DA15A: dw $0018 ; grabbing
#_0DA15C: dw $0027 ; sword slash

;===================================================================================================

LinkOAM_StraightStairsYOffset:
#_0DA15E: dw  0, -2, -3,  0, -2, -3 ; up
#_0DA16A: dw  0,  0,  0,  0,  0,  0 ; up
#_0DA176: dw  0, -2, -3,  0, -2, -3 ; down
#_0DA182: dw  0,  0,  0,  0,  0,  0 ; down

;===================================================================================================
; This handles all of Link's drawingness
;===================================================================================================
LinkOAM_Main:
#_0DA18E: PHB
#_0DA18F: PHK
#_0DA190: PLB

#_0DA191: LDY.b #$00

; This seems to handle straight staircases in the underworld
; these submodules correspond to data transfers in the overworld module
; and do indeed run code, but the screen is blank
; so, ultimately, it appears to be irrelevant there
#_0DA193: LDA.b $11
#_0DA195: CMP.b #$12
#_0DA197: BEQ .stairs

#_0DA199: LDY.b #$18
#_0DA19B: CMP.b #$13
#_0DA19D: BNE .notstairs

.stairs
#_0DA19F: STY.b $00

#_0DA1A1: LDA.b $20 ; shoulda used PEI smdh
#_0DA1A3: PHA

#_0DA1A4: LDA.b $21
#_0DA1A6: PHA

#_0DA1A7: LDY.b #$00

#_0DA1A9: LDA.w $0462
#_0DA1AC: AND.b #$04
#_0DA1AE: BEQ .upwards_stairs

#_0DA1B0: LDY.b #$0C

.upwards_stairs
#_0DA1B2: TYA
#_0DA1B3: CLC
#_0DA1B4: ADC.b $00
#_0DA1B6: STA.b $00

#_0DA1B8: LDA.b $2E
#_0DA1BA: CMP.b #$06
#_0DA1BC: BCC .valid_stairs_animation_step

#_0DA1BE: LDA.b #$00

.valid_stairs_animation_step
#_0DA1C0: ASL A
#_0DA1C1: CLC
#_0DA1C2: ADC.b $00
#_0DA1C4: TAY

#_0DA1C5: REP #$20

#_0DA1C7: LDA.w LinkOAM_StraightStairsYOffset,Y
#_0DA1CA: CLC
#_0DA1CB: ADC.b $20
#_0DA1CD: STA.b $20

#_0DA1CF: SEP #$20

;---------------------------------------------------------------------------------------------------

.notstairs
; calculate a camera based offset
#_0DA1D1: LDA.b $20 ; Y coord
#_0DA1D3: SEC
#_0DA1D4: SBC.b $E8
#_0DA1D6: STA.b $01

#_0DA1D8: LDA.b $22 ; X coord
#_0DA1DA: SEC
#_0DA1DB: SBC.b $E2
#_0DA1DD: STA.b $00

#_0DA1DF: LDA.b #$80 ; some secondary offset
#_0DA1E1: STA.b $45
#_0DA1E3: STA.b $44

#_0DA1E5: LDX.b #$00

#_0DA1E7: LDA.w $0351 ; ripples or grass?
#_0DA1EA: BEQ .no_feet_stuff

#_0DA1EC: LDX.b #$01

.no_feet_stuff
#_0DA1EE: TXA ; why didn't you just use A for this and X for checking?
#_0DA1EF: ASL A
#_0DA1F0: STA.b $72
#_0DA1F2: STZ.b $73

;---------------------------------------------------------------------------------------------------

; use Link's layer to determine his objects' priority
#_0DA1F4: REP #$20

#_0DA1F6: LDA.b $EE
#_0DA1F8: AND.w #$00FF
#_0DA1FB: ASL A
#_0DA1FC: TAX

#_0DA1FD: LDA.w LinkOAM_ObjectPriority,X
#_0DA200: STA.b $64

#_0DA202: LDA.w $0FB3
#_0DA205: ASL A
#_0DA206: TAY

#_0DA207: LDA.w LinkOAM_OAMBufferOffset,Y
#_0DA20A: STA.w $0352

; here's where we start handling Link's state
#_0DA20D: SEP #$20

#_0DA20F: LDA.b $5D ; is Link asleep?
#_0DA211: CMP.b #$16 ; LINKSTATE 16
#_0DA213: BNE .not_in_bed

#_0DA215: LDY.b #$1F

#_0DA217: LDA.w $037D ; what stage of Link bed are we in?
#_0DA21A: CMP.b #$02
#_0DA21C: BEQ .not_in_bed

#_0DA21E: STA.b $02

#_0DA220: BRL LinkOAM_ContinueWithAnimation

;---------------------------------------------------------------------------------------------------

.not_in_bed
#_0DA223: LDA.w $03EF ; check sword up poses
#_0DA226: BEQ .not_sword_up

#_0DA228: LDY.b #$24
#_0DA22A: STZ.b $02

#_0DA22C: LDA.b $2F
#_0DA22E: STA.w $0323

#_0DA231: BRL LinkOAM_ContinueWithAnimation

;---------------------------------------------------------------------------------------------------

.not_sword_up
#_0DA234: LDA.w $02E0 ; check bunny graphics
#_0DA237: BEQ .not_bunny

#_0DA239: LDY.b #$21

#_0DA23B: LDA.b $2E
#_0DA23D: AND.b #$03
#_0DA23F: STA.b $02

#_0DA241: LDA.b $2F
#_0DA243: STA.w $0323

#_0DA246: BRL LinkOAM_ContinueWithAnimation

;---------------------------------------------------------------------------------------------------

.not_bunny
#_0DA249: LDY.b #$00

#_0DA24B: LDA.w $0351 ; are we in grass?
#_0DA24E: BEQ .not_grass

#_0DA250: LDY.b #$0A

.not_grass
; TODO we're looking at stairs module here?
#_0DA252: LDA.b $11
#_0DA254: CMP.b #$0E
#_0DA256: BNE .skip_stairs_direction_check

#_0DA258: LDA.b $10
#_0DA25A: CMP.b #$12
#_0DA25C: BEQ .skip_stairs_direction_check

#_0DA25E: LDY.b #$0A
#_0DA260: LDA.b $28
#_0DA262: BEQ .skip_stairs_direction_check

;---------------------------------------------------------------------------------------------------

#_0DA264: LDX.b $2F
#_0DA266: CPX.b #$04
#_0DA268: BEQ .not_auto_left_or_right

#_0DA26A: CPX.b #$06
#_0DA26C: BEQ .not_auto_left_or_right

#_0DA26E: LDX.b $2E

#_0DA270: LDA.w LinkOAM_StairsSomething,X
#_0DA273: STA.b $02

#_0DA275: LDY.b #$19

#_0DA277: LDA.w $0462
#_0DA27A: AND.b #$04
#_0DA27C: BEQ .continue_a

#_0DA27E: LDY.b #$1A
#_0DA280: BRA .continue_a

;---------------------------------------------------------------------------------------------------

.skip_stairs_direction_check
#_0DA282: LDA.w $0376 ; is link grabbing something?
#_0DA285: AND.b #$03
#_0DA287: BEQ .not_grabbing

#_0DA289: LDY.b #$18

#_0DA28B: LDA.w $030A
#_0DA28E: STA.b $02
#_0DA290: BRA .continue_a

;---------------------------------------------------------------------------------------------------

.not_grabbing
#_0DA292: LDA.b $48
#_0DA294: AND.b #$0D
#_0DA296: BEQ .not_auto_left_or_right

#_0DA298: LDY.b #$16

#_0DA29A: LDA.b $2E
#_0DA29C: CMP.b #$05
#_0DA29E: BCC .not_auto_left_or_right

#_0DA2A0: STZ.b $2E

.not_auto_left_or_right
#_0DA2A2: LDA.b $2E
#_0DA2A4: STA.b $02

;---------------------------------------------------------------------------------------------------

.continue_a
#_0DA2A6: LDA.b $2F
#_0DA2A8: STA.w $0323

#_0DA2AB: LDA.w $0345
#_0DA2AE: BEQ .not_in_deep_water

#_0DA2B0: LDA.b #$20
#_0DA2B2: STA.b $65
#_0DA2B4: STZ.b $64

.not_in_deep_water
#_0DA2B6: LDA.b $5D ; is Link swimming?
#_0DA2B8: CMP.b #$04 ; LINKSTATE 04
#_0DA2BA: BNE .not_swimming

#_0DA2BC: LDY.b #$11

#_0DA2BE: LDA.b $02
#_0DA2C0: AND.b #$01
#_0DA2C2: STA.b $02

#_0DA2C4: LDA.b $11
#_0DA2C6: BNE .skip_stroke_check

#_0DA2C8: LDA.b $F0 ; look for button presses
#_0DA2CA: AND.b #$0F
#_0DA2CC: BNE .swim_strokes

;---------------------------------------------------------------------------------------------------

.skip_stroke_check
#_0DA2CE: LDA.w $033C
#_0DA2D1: ORA.w $033D
#_0DA2D4: ORA.w $033E
#_0DA2D7: ORA.w $033F
#_0DA2DA: BEQ .no_swim_accel

.swim_strokes
#_0DA2DC: LDY.b #$13

#_0DA2DE: LDA.w $02CC
#_0DA2E1: STA.b $02

.no_swim_accel
#_0DA2E3: LDA.w $032A
#_0DA2E6: BEQ .not_stroking_hard

#_0DA2E8: DEC A
#_0DA2E9: STA.b $02

#_0DA2EB: LDY.b #$12

.not_stroking_hard
#_0DA2ED: BRL LinkOAM_ContinueWithAnimation

;---------------------------------------------------------------------------------------------------

.not_swimming
#_0DA2F0: LDA.w $02DA
#_0DA2F3: BEQ .not_displaying_item

#_0DA2F5: STZ.b $02

#_0DA2F7: LDY.b #$1E

#_0DA2F9: CMP.b #$02
#_0DA2FB: BEQ .two_handed

#_0DA2FD: LDY.b #$1D

.two_handed
#_0DA2FF: BRA .not_stroking_hard

;---------------------------------------------------------------------------------------------------

.not_displaying_item
#_0DA301: LDA.w $036B
#_0DA304: AND.b #$01
#_0DA306: BEQ .nothing_with_desert_cutscene

#_0DA308: LDA.w $030A
#_0DA30B: STA.b $02

#_0DA30D: LDY.b #$1B
#_0DA30F: BRA .not_stroking_hard

.nothing_with_desert_cutscene
#_0DA311: LDA.b $4D
#_0DA313: BEQ .nothing_with_swim

#_0DA315: CMP.b #$01
#_0DA317: BEQ .check_if_som_platform

#_0DA319: CMP.b #$04
#_0DA31B: BNE .nothing_with_swim

#_0DA31D: LDY.b #$13

#_0DA31F: LDA.b $1A
#_0DA321: AND.b #$18

#_0DA323: LSR A
#_0DA324: LSR A
#_0DA325: LSR A
#_0DA326: TAX

#_0DA327: LDA.l LinkSwimming_anim_offset,X
#_0DA32B: STA.b $02

#_0DA32D: BRL LinkOAM_ContinueWithAnimation

;---------------------------------------------------------------------------------------------------

.check_if_som_platform
#_0DA330: LDA.b $5D
#_0DA332: CMP.b #$05 ; LINKSTATE 05
#_0DA334: BNE .not_on_tr_platform

#_0DA336: LDA.w $034E
#_0DA339: BNE .dont_somaria_priority

#_0DA33B: LDA.b #$30
#_0DA33D: STA.b $65
#_0DA33F: STZ.b $64

.dont_somaria_priority
#_0DA341: BRL .check_if_grabbing

;---------------------------------------------------------------------------------------------------

.not_on_tr_platform
#_0DA344: LDA.b $5D
#_0DA346: CMP.b #$13 ; LINKSTATE 13
#_0DA348: BEQ .nothing_with_swim

#_0DA34A: LDA.b $55
#_0DA34C: BNE .nothing_with_swim

#_0DA34E: LDY.b #$05

#_0DA350: LDA.w $0360
#_0DA353: BEQ .no_electroction_flag

#_0DA355: LDY.b #$14

#_0DA357: LDA.w $0300
#_0DA35A: AND.b #$03

.no_electroction_flag
#_0DA35C: STA.b $02

#_0DA35E: BRL LinkOAM_ContinueWithAnimation

;---------------------------------------------------------------------------------------------------

.nothing_with_swim
#_0DA361: LDA.b $5B
#_0DA363: BEQ .no_slip_drawing

#_0DA365: CMP.b #$01
#_0DA367: BEQ .no_slip_drawing

#_0DA369: CMP.b #$03
#_0DA36B: BNE .not_fully_falling

#_0DA36D: LDA.w LinkOAM_OAMBufferOffset+4
#_0DA370: STA.w $0352

#_0DA373: LDA.w LinkOAM_OAMBufferOffset+5
#_0DA376: STA.w $0353

.not_fully_falling
#_0DA379: LDA.b $5A
#_0DA37B: STA.b $02

#_0DA37D: CMP.b #$06
#_0DA37F: BCC .not_max_fall_priority

#_0DA381: LDA.b $65
#_0DA383: ORA.b #$30
#_0DA385: STA.b $65

.not_max_fall_priority
#_0DA387: LDY.b #$04

#_0DA389: BRL LinkOAM_ContinueWithAnimation

;---------------------------------------------------------------------------------------------------

.no_slip_drawing
#_0DA38C: LDA.w $0308
#_0DA38F: BEQ .check_if_grabbing

#_0DA391: JSR FindMostSignificantBit

#_0DA394: CPX.b #$06
#_0DA396: BCS .keep_lift_direction

; Set direction to down for prayer.
#_0DA398: LDA.b #$02
#_0DA39A: STA.w $0323

.keep_lift_direction
#_0DA39D: LDY.w LinkOAM_WeirdGrabIndices,X
#_0DA3A0: CPY.b #$0D
#_0DA3A2: BCC .check_desert_step_counter

#_0DA3A4: LDA.w $0309
#_0DA3A7: AND.b #$02
#_0DA3A9: BEQ .not_throwing_object

#_0DA3AB: INY

.not_throwing_object
#_0DA3AC: LDA.w $0309
#_0DA3AF: AND.b #$01
#_0DA3B1: BEQ .not_lifting_object

#_0DA3B3: LDY.b #$10
#_0DA3B5: BRA .check_desert_step_counter

.not_lifting_object
#_0DA3B7: LDA.w $0308
#_0DA3BA: AND.b #$80
#_0DA3BC: BEQ .check_desert_step_counter

#_0DA3BE: BRL LinkOAM_ContinueWithAnimation

.check_desert_step_counter
#_0DA3C1: LDA.w $030A
#_0DA3C4: BRA .set_item_use_anim

;---------------------------------------------------------------------------------------------------

.check_if_grabbing
#_0DA3C6: LDA.w $0377
#_0DA3C9: BEQ .not_grabbing_at_all

#_0DA3CB: DEC A

#_0DA3CC: LDY.b #$17
#_0DA3CE: BRA .set_item_use_anim

;---------------------------------------------------------------------------------------------------

.not_grabbing_at_all
#_0DA3D0: LDA.w $0301
#_0DA3D3: BEQ .not_using_items_a

#_0DA3D5: JSR FindMostSignificantBit

#_0DA3D8: LDY.w LinkOAM_ItemsAUseIndex,X
#_0DA3DB: BRA .continue_with_items_a

.not_using_items_a
#_0DA3DD: LDA.w $037A
#_0DA3E0: BEQ .not_using_items_b

#_0DA3E2: JSR FindMostSignificantBit
#_0DA3E5: LDY.w LinkOAM_ItemsBUseIndex,X

;---------------------------------------------------------------------------------------------------

.continue_with_items_a
#_0DA3E8: LDA.w $0300

.set_item_use_anim
#_0DA3EB: STA.b $02

#_0DA3ED: BRA LinkOAM_ContinueWithAnimation

;---------------------------------------------------------------------------------------------------

.not_using_items_b
#_0DA3EF: LDA.b $5D
#_0DA3F1: CMP.b #$0A ; LINKSTATE 0A
#_0DA3F3: BEQ .using_medallion

#_0DA3F5: CMP.b #$08 ; LINKSTATE 08
#_0DA3F7: BEQ .using_medallion

#_0DA3F9: CMP.b #$09 ; LINKSTATE 09
#_0DA3FB: BNE .not_using_medallion

.using_medallion
#_0DA3FD: LDY.b #$15
#_0DA3FF: BRA .continue_with_medallion

;---------------------------------------------------------------------------------------------------

.not_using_medallion
#_0DA401: CMP.b #$1E ; LINKSTATE 1E
#_0DA403: BEQ .using_spin_attack

#_0DA405: CMP.b #$03 ; LINKSTATE 03
#_0DA407: BNE .not_spinning

.using_spin_attack
#_0DA409: LDY.b #$0F

.continue_with_medallion
#_0DA40B: LDA.w $031C
#_0DA40E: STA.b $02

#_0DA410: BRA LinkOAM_ContinueWithAnimation

;---------------------------------------------------------------------------------------------------

.not_spinning
#_0DA412: LDA.b $3A
#_0DA414: AND.b #$80
#_0DA416: BEQ LinkOAM_ContinueWithAnimation

#_0DA418: LDA.b $3C
#_0DA41A: CMP.b #$09
#_0DA41C: BNE .not_fully_primed_sword

#_0DA41E: LDY.b #$02

#_0DA420: BRA LinkOAM_ContinueWithAnimation

.not_fully_primed_sword
#_0DA422: LDY.b #$27

#_0DA424: LDA.b $3C
#_0DA426: STA.b $02

#_0DA428: CMP.b #$09
#_0DA42A: BCC LinkOAM_ContinueWithAnimation

#_0DA42C: LDA.b $02
#_0DA42E: SEC
#_0DA42F: SBC.b #$0A
#_0DA431: STA.b $02

#_0DA433: LDY.b #$03

;===================================================================================================

LinkOAM_ContinueWithAnimation:
#_0DA435: STY.w $0354

#_0DA438: CPY.b #$05
#_0DA43A: BEQ .not_recoiling

#_0DA43C: LDA.b $64
#_0DA43E: STA.w $035D

#_0DA441: LDA.b $65
#_0DA443: STA.w $035E

.not_recoiling
#_0DA446: STZ.b $03

#_0DA448: LDA.b $02
#_0DA44A: STA.b $76

#_0DA44C: REP #$30

#_0DA44E: LDA.b $2F
#_0DA450: AND.w #$00FF
#_0DA453: TAX

#_0DA454: LDA.w LinkOAM_AuxAnimationDirectionalStepIndexOffset,X
#_0DA457: STA.b $74

#_0DA459: LDA.w LinkOAM_AnimationDirectionalStepIndexOffset,X
#_0DA45C: STA.b $04

#_0DA45E: TYA
#_0DA45F: AND.w #$00FF
#_0DA462: ASL A
#_0DA463: CLC
#_0DA464: ADC.b $04
#_0DA466: TAY

#_0DA467: LDA.w LinkOAM_AnimationStepDataOffsets,Y
#_0DA46A: CLC
#_0DA46B: ADC.b $02
#_0DA46D: STA.b $02

#_0DA46F: TAY

#_0DA470: LDA.w LinkOAM_Priority,Y
#_0DA473: AND.w #$00FF
#_0DA476: STA.b $04

#_0DA478: LDA.w #$0E00
#_0DA47B: STA.w $0346

#_0DA47E: LDA.w $0ABD
#_0DA481: BEQ .not_colormath_room

#_0DA483: STZ.w $0346

.not_colormath_room
#_0DA486: STZ.w $0102
#_0DA489: STZ.w $0104

;---------------------------------------------------------------------------------------------------

#_0DA48C: LDX.w #$000C

.check_next
#_0DA48F: LDA.w $0354
#_0DA492: AND.w #$00FF
#_0DA495: CMP.w LinkOAM_AnimationsWithAuxParts,X
#_0DA498: BEQ .match

#_0DA49A: DEX
#_0DA49B: DEX
#_0DA49C: BPL .check_next

#_0DA49E: BRL LinkOAM_NoAux

.match
#_0DA4A1: TXA
#_0DA4A2: AND.w #$00FF
#_0DA4A5: CLC
#_0DA4A6: ADC.b $74
#_0DA4A8: TAX

#_0DA4A9: LDA.b $76
#_0DA4AB: AND.w #$00FF
#_0DA4AE: CLC
#_0DA4AF: ADC.w LinkOAM_AuxAnimationStepDataOffset,X
#_0DA4B2: STA.b $74

#_0DA4B4: LDY.b $74

#_0DA4B6: LDA.w LinkOAM_Aux1GFXIndex,Y
#_0DA4B9: AND.w #$00FF
#_0DA4BC: CMP.w #$00FF
#_0DA4BF: BNE .continue_aux1

#_0DA4C1: BRL .no_aux1

;---------------------------------------------------------------------------------------------------

.continue_aux1
#_0DA4C4: ASL A
#_0DA4C5: STA.w $0102

#_0DA4C8: LDX.b $72

#_0DA4CA: LDA.w LinkOAM_LinkOAM_Aux1BufferOffsetPointers,X
#_0DA4CD: STA.b $0A

#_0DA4CF: LDY.b $04

#_0DA4D1: LDA.b ($0A),Y
#_0DA4D3: AND.w #$00FF
#_0DA4D6: CLC
#_0DA4D7: ADC.w $0352
#_0DA4DA: TAX

#_0DA4DB: LDY.b $74

#_0DA4DD: SEP #$20

#_0DA4DF: LDA.b $25
#_0DA4E1: BMI .aux1_z_negative

#_0DA4E3: LDA.b $24
#_0DA4E5: BRA .aux1_z_continue

.aux1_z_negative
#_0DA4E7: LDA.b $24
#_0DA4E9: CMP.b #$F0
#_0DA4EB: BCC .aux1_z_continue

#_0DA4ED: LDA.b #$00

.aux1_z_continue
#_0DA4EF: STA.b $0F
#_0DA4F1: STZ.b $0E

#_0DA4F3: LDA.w LinkOAM_Aux1Offset_Y,Y
#_0DA4F6: CLC
#_0DA4F7: ADC.b $01
#_0DA4F9: SEC
#_0DA4FA: SBC.b $0F
#_0DA4FC: STA.w $0801,X

#_0DA4FF: LDA.w LinkOAM_Aux1Offset_X,Y
#_0DA502: CLC
#_0DA503: ADC.b $00
#_0DA505: STA.w $0800,X

#_0DA508: REP #$20

#_0DA50A: LDA.w LinkOAM_Aux1GFXIndex,Y
#_0DA50D: AND.w #$00FF
#_0DA510: STA.b $06

#_0DA512: LSR A
#_0DA513: TAY

#_0DA514: LDA.w LinkOAM_AuxFlip-1,Y
#_0DA517: TAY

#_0DA518: LDA.b $06
#_0DA51A: AND.w #$0001
#_0DA51D: BEQ .dont_shift_aux1

#_0DA51F: TYA
#_0DA520: ASL A ; x16
#_0DA521: ASL A
#_0DA522: ASL A
#_0DA523: ASL A
#_0DA524: TAY

.dont_shift_aux1
#_0DA525: TYA
#_0DA526: AND.w #$C000
#_0DA529: ORA.b $64
#_0DA52B: ORA.w $0346
#_0DA52E: ORA.w #$0004
#_0DA531: STA.w $0802,X

#_0DA534: TXA
#_0DA535: LSR A
#_0DA536: LSR A
#_0DA537: TAX

#_0DA538: LDA.w $0A20,X
#_0DA53B: AND.w #$FF00
#_0DA53E: STA.w $0A20,X

;---------------------------------------------------------------------------------------------------

.no_aux1
#_0DA541: LDY.b $74

#_0DA543: LDA.w LinkOAM_Aux2GFXIndex,Y
#_0DA546: AND.w #$00FF
#_0DA549: CMP.w #$00FF
#_0DA54C: BNE .continue_aux2

#_0DA54E: BRL LinkOAM_NoAux

.continue_aux2
#_0DA551: ASL A
#_0DA552: STA.w $0104

#_0DA555: LDX.b $72

#_0DA557: LDA.w LinkOAM_Aux2BufferOffsetPointers,X
#_0DA55A: STA.b $0A

#_0DA55C: LDY.b $04

#_0DA55E: LDA.b ($0A),Y
#_0DA560: AND.w #$00FF
#_0DA563: CLC
#_0DA564: ADC.w $0352
#_0DA567: TAX

#_0DA568: LDY.b $74

#_0DA56A: SEP #$20

#_0DA56C: LDA.b $25
#_0DA56E: BMI .aux_2_z_negative

#_0DA570: LDA.b $24
#_0DA572: BRA .aux_2_z_continue

.aux_2_z_negative
#_0DA574: LDA.b $24
#_0DA576: CMP.b #$F0
#_0DA578: BCC .aux_2_z_continue

#_0DA57A: LDA.b #$00

.aux_2_z_continue
#_0DA57C: STA.b $0F
#_0DA57E: STZ.b $0E

#_0DA580: LDA.w LinkOAM_Aux2Offset_Y,Y
#_0DA583: CLC
#_0DA584: ADC.b $01
#_0DA586: SEC
#_0DA587: SBC.b $0F
#_0DA589: STA.w $0801,X

#_0DA58C: LDA.w LinkOAM_Aux2Offset_X,Y
#_0DA58F: CLC
#_0DA590: ADC.b $00
#_0DA592: STA.w $0800,X

#_0DA595: REP #$20

#_0DA597: LDA.w LinkOAM_Aux2GFXIndex,Y
#_0DA59A: AND.w #$00FF
#_0DA59D: STA.b $06

#_0DA59F: LSR A
#_0DA5A0: TAY

#_0DA5A1: LDA.w LinkOAM_AuxFlip-1,Y
#_0DA5A4: TAY

#_0DA5A5: LDA.b $06
#_0DA5A7: AND.w #$0001
#_0DA5AA: BEQ .dont_shift_aux2

#_0DA5AC: TYA
#_0DA5AD: ASL A ; x16
#_0DA5AE: ASL A
#_0DA5AF: ASL A
#_0DA5B0: ASL A
#_0DA5B1: TAY

.dont_shift_aux2
#_0DA5B2: TYA
#_0DA5B3: AND.w #$C000
#_0DA5B6: ORA.b $64
#_0DA5B8: ORA.w $0346
#_0DA5BB: ORA.w #$0014
#_0DA5BE: STA.w $0802,X

#_0DA5C1: TXA
#_0DA5C2: LSR A
#_0DA5C3: LSR A
#_0DA5C4: TAX

#_0DA5C5: LDA.w $0A20,X
#_0DA5C8: AND.w #$FF00
#_0DA5CB: STA.w $0A20,X

;===================================================================================================

LinkOAM_NoAux:
; I can't find any place this bit would be set
#_0DA5CE: LDA.w $0309
#_0DA5D1: AND.w #$0004
#_0DA5D4: BEQ .always_taken

#_0DA5D6: JSR LinkOAM_UnusedWeaponSettings
#_0DA5D9: BRA .skip_sword_vram

.always_taken
#_0DA5DB: LDA.b $5D
#_0DA5DD: AND.w #$00FF

#_0DA5E0: CMP.w #$0008 ; LINKSTATE 08
#_0DA5E3: BEQ .check_sword

#_0DA5E5: CMP.w #$0009 ; LINKSTATE 09
#_0DA5E8: BEQ .check_sword

#_0DA5EA: CMP.w #$000A ; LINKSTATE 0A
#_0DA5ED: BEQ .check_sword

#_0DA5EF: CMP.w #$0003 ; LINKSTATE 03
#_0DA5F2: BEQ .check_sword

#_0DA5F4: CMP.w #$001E ; LINKSTATE 1E
#_0DA5F7: BEQ .check_sword

#_0DA5F9: LDA.w $0308
#_0DA5FC: AND.w #$00FF
#_0DA5FF: BNE .check_sword

#_0DA601: LDA.w $03EF
#_0DA604: ORA.w $0360
#_0DA607: AND.w #$00FF
#_0DA60A: BNE .check_sword

#_0DA60C: LDA.w $0301
#_0DA60F: AND.w #$0040
#_0DA612: BNE .skip_sword_vram

#_0DA614: LDA.w $037A
#_0DA617: AND.w #$003D
#_0DA61A: BNE .using_some_item

#_0DA61C: LDA.w $0301
#_0DA61F: AND.w #$0093
#_0DA622: BNE .using_some_item

#_0DA624: LDA.b $3A
#_0DA626: AND.w #$0080
#_0DA629: BEQ .skip_sword_vram

;---------------------------------------------------------------------------------------------------

.check_sword
#_0DA62B: LDA.l $7EF359
#_0DA62F: INC A
#_0DA630: AND.w #$00FE
#_0DA633: BEQ .skip_sword_vram

.using_some_item
#_0DA635: JSR LinkOAM_SetWeaponVRAMOffsets
#_0DA638: BCC .continue_with_weapon

.skip_sword_vram
#_0DA63A: BRL LinkOAM_DrawShield

;---------------------------------------------------------------------------------------------------

.continue_with_weapon
#_0DA63D: LDY.b $02

#_0DA63F: SEP #$20

#_0DA641: LDA.b $25
#_0DA643: BMI .possible_grounded

#_0DA645: LDA.b $24
#_0DA647: BRA .airborne

.possible_grounded
#_0DA649: LDA.b $24
#_0DA64B: CMP.b #$F0
#_0DA64D: BCC .airborne

#_0DA64F: LDA.b #$00

.airborne
#_0DA651: STA.b $0B

;---------------------------------------------------------------------------------------------------

#_0DA653: LDA.b $01
#_0DA655: CLC
#_0DA656: ADC.w LinkOAM_SwordOffsetY,Y
#_0DA659: SEC
#_0DA65A: SBC.b $0B
#_0DA65C: STA.b $0B

#_0DA65E: LDA.b $00
#_0DA660: CLC
#_0DA661: ADC.w LinkOAM_SwordOffsetX,Y
#_0DA664: STA.b $0A
#_0DA666: STA.b $08

#_0DA668: LDA.w $0301
#_0DA66B: AND.b #$02
#_0DA66D: BEQ .not_hammer

#_0DA66F: LDA.w $0300
#_0DA672: CMP.b #$02
#_0DA674: BNE .skip_hitbox

#_0DA676: LDA.b $3D
#_0DA678: CMP.b #$0F
#_0DA67A: BNE .skip_hitbox

#_0DA67C: BRA .set_hitbox_offset

.not_hammer
#_0DA67E: LDA.w $0301
#_0DA681: AND.b #$05
#_0DA683: BNE .skip_hitbox

.set_hitbox_offset
#_0DA685: LDA.w AttackHitboxOffset_Y,Y
#_0DA688: STA.b $44

#_0DA68A: LDA.w AttackHitboxOffset_X,Y
#_0DA68D: STA.b $45

;---------------------------------------------------------------------------------------------------

.skip_hitbox
#_0DA68F: STZ.b $0E
#_0DA691: STZ.b $0F

#_0DA693: LDA.w $0301
#_0DA696: AND.b #$05
#_0DA698: BEQ .rodding

#_0DA69A: LDY.w $0307
#_0DA69D: DEY

#_0DA69E: LDA.w LinkOAM_RodTypeID,Y
#_0DA6A1: STA.b $0F

.rodding
#_0DA6A3: LDA.w $037A
#_0DA6A6: AND.b #$08
#_0DA6A8: BEQ .not_caning

#_0DA6AA: LDA.w $0303
#_0DA6AD: CMP.b #$0D
#_0DA6AF: BNE .not_caning

#_0DA6B1: LDA.b #$04
#_0DA6B3: STA.b $0F

.not_caning
#_0DA6B5: REP #$20

#_0DA6B7: LDA.b $06
#_0DA6B9: ASL A
#_0DA6BA: CLC
#_0DA6BB: ADC.b $06
#_0DA6BD: ASL A
#_0DA6BE: TAY

#_0DA6BF: STZ.b $06

#_0DA6C1: PHY

#_0DA6C2: LDX.b $72

#_0DA6C4: LDA.w LinkOAM_WeaponBufferOffsetPointers,X
#_0DA6C7: STA.b $74

#_0DA6C9: LDA.b $04
#_0DA6CB: AND.w #$00FF
#_0DA6CE: TAY

#_0DA6CF: LDA.b ($74),Y
#_0DA6D1: AND.w #$00FF
#_0DA6D4: CLC
#_0DA6D5: ADC.w $0352
#_0DA6D8: TAX

#_0DA6D9: PLY

#_0DA6DA: LDA.b $0E

#_0DA6DC: PHA

#_0DA6DD: JSR LinkOAM_CalculateSwordSparklePosition

#_0DA6E0: PLA

#_0DA6E1: STA.b $0E

;---------------------------------------------------------------------------------------------------

.merge_with_weapon_read
#_0DA6E3: REP #$20

#_0DA6E5: LDA.w LinkOAM_WeaponTiles,Y
#_0DA6E8: CMP.w #$FFFF
#_0DA6EB: BEQ .no_weapons

#_0DA6ED: AND.w #$CFFF
#_0DA6F0: ORA.b $64
#_0DA6F2: STA.w $0802,X

#_0DA6F5: AND.w #$0E00
#_0DA6F8: CMP.w #$0200
#_0DA6FB: BEQ .ignore_palette_adjustments

#_0DA6FD: LDA.w $0346
#_0DA700: BNE .ignore_palette_adjustments

#_0DA702: LDA.w $0802,X
#_0DA705: AND.w #$F1FF
#_0DA708: ORA.w #$0600
#_0DA70B: STA.w $0802,X

.ignore_palette_adjustments
#_0DA70E: LDA.b $0E
#_0DA710: BEQ .ignore_palette_adjustments_2

#_0DA712: LDA.w $0802,X
#_0DA715: AND.w #$F1FF
#_0DA718: ORA.b $0E
#_0DA71A: STA.w $0802,X

;---------------------------------------------------------------------------------------------------

.ignore_palette_adjustments_2
#_0DA71D: LDA.b $0A
#_0DA71F: STA.w $0800,X

#_0DA722: AND.w #$00FF
#_0DA725: STA.b $74

#_0DA727: LDA.b $00
#_0DA729: AND.w #$00FF
#_0DA72C: SEC
#_0DA72D: SBC.b $74
#_0DA72F: BPL .positive_a

#_0DA731: EOR.w #$FFFF
#_0DA734: INC A

.positive_a
#_0DA735: CMP.w #$0080
#_0DA738: BCC .positive_b

#_0DA73A: LDA.w #$0001
#_0DA73D: TSB.b $0C

.positive_b
#_0DA73F: PHY
#_0DA740: PHX

#_0DA741: TXA
#_0DA742: LSR A
#_0DA743: LSR A
#_0DA744: TAX

#_0DA745: SEP #$20

#_0DA747: LDA.b $0C
#_0DA749: STA.w $0A20,X

#_0DA74C: AND.b #$FE
#_0DA74E: STA.b $0C

#_0DA750: PLX
#_0DA751: PLY

#_0DA752: INX ; +4
#_0DA753: INX
#_0DA754: INX
#_0DA755: INX

;---------------------------------------------------------------------------------------------------

.no_weapons
#_0DA756: SEP #$20

#_0DA758: LDA.b $0A
#_0DA75A: CLC
#_0DA75B: ADC.b #$08
#_0DA75D: STA.b $0A

#_0DA75F: INY
#_0DA760: INY

#_0DA761: LDA.b $06
#_0DA763: INC A
#_0DA764: STA.b $06

#_0DA766: AND.b #$01
#_0DA768: BNE .no_offset

#_0DA76A: LDA.b $0B
#_0DA76C: CLC
#_0DA76D: ADC.b #$08
#_0DA76F: STA.b $0B

#_0DA771: LDA.b $08
#_0DA773: STA.b $0A

.no_offset
#_0DA775: LDA.b $06
#_0DA777: CMP.b #$03
#_0DA779: BEQ .clear_index_high

#_0DA77B: BRL .merge_with_weapon_read

.clear_index_high
#_0DA77E: SEP #$10 ; !USELESS ? might be clearing high byte

;===================================================================================================

LinkOAM_DrawShield:
#_0DA780: REP #$30

#_0DA782: LDA.l $7EF35A
#_0DA786: AND.w #$00FF
#_0DA789: BEQ .no_shield

#_0DA78B: LDA.l $7EF3C5
#_0DA78F: AND.w #$00FF
#_0DA792: BEQ .no_shield

#_0DA794: JSR LinkOAM_SetEquipmentVRAMOffsets
#_0DA797: BCC .shield_continue

.no_shield
#_0DA799: BRL LinkOAM_DrawShadow

;---------------------------------------------------------------------------------------------------

.shield_continue
#_0DA79C: LDY.b $02

#_0DA79E: SEP #$20

#_0DA7A0: LDA.b $25
#_0DA7A2: BMI .not_necessarily_airborne

#_0DA7A4: LDA.b $24
#_0DA7A6: BRA .airborne

.not_necessarily_airborne
#_0DA7A8: LDA.b $24
#_0DA7AA: CMP.b #$F0
#_0DA7AC: BCC .airborne

#_0DA7AE: LDA.b #$00

.airborne
#_0DA7B0: STA.b $0B

#_0DA7B2: LDA.b $01
#_0DA7B4: CLC
#_0DA7B5: ADC.w LinkOAM_ShieldOffsetY,Y
#_0DA7B8: DEC A

#_0DA7B9: SEC
#_0DA7BA: SBC.b $0B
#_0DA7BC: STA.b $0B

#_0DA7BE: LDA.b $00
#_0DA7C0: CLC
#_0DA7C1: ADC.w LinkOAM_ShieldOffsetX,Y
#_0DA7C4: STA.b $0A
#_0DA7C6: STA.b $08

#_0DA7C8: LDA.w LinkOAM_ShieldOffsetX,Y
#_0DA7CB: JSR LinkOAM_CalculateXOffsetRelativeLink

#_0DA7CE: STZ.b $0E

#_0DA7D0: LDA.b #$0A
#_0DA7D2: STA.b $0F

#_0DA7D4: LDA.w $0347
#_0DA7D7: BNE .leave_shield_palette

#_0DA7D9: LDA.b #$06
#_0DA7DB: STA.b $0F

;---------------------------------------------------------------------------------------------------

.leave_shield_palette
#_0DA7DD: REP #$30

#_0DA7DF: LDA.b $06
#_0DA7E1: ASL A
#_0DA7E2: CLC
#_0DA7E3: ADC.b $06
#_0DA7E5: ASL A
#_0DA7E6: TAY

#_0DA7E7: STZ.b $06

#_0DA7E9: PHY

#_0DA7EA: LDX.b $72

#_0DA7EC: LDA.w LinkOAM_ShieldBufferOffsetPointers,X
#_0DA7EF: STA.b $74

#_0DA7F1: LDA.b $04
#_0DA7F3: AND.w #$00FF
#_0DA7F6: TAY

#_0DA7F7: LDA.b ($74),Y
#_0DA7F9: AND.w #$00FF
#_0DA7FC: CLC
#_0DA7FD: ADC.w $0352
#_0DA800: TAX

#_0DA801: PLY

;---------------------------------------------------------------------------------------------------

.merge_with_tile_check
#_0DA802: REP #$20

#_0DA804: STZ.b $74

#_0DA806: LDA.w LinkOAM_ShieldTiles,Y

#_0DA809: CMP.w #$FFFF
#_0DA80C: BEQ .no_shield_to_draw

#_0DA80E: AND.w #$C1FF
#_0DA811: ORA.b $0E
#_0DA813: ORA.b $64
#_0DA815: STA.w $0802,X

#_0DA818: LDA.b $0A
#_0DA81A: STA.w $0800,X

#_0DA81D: PHX

#_0DA81E: TXA
#_0DA81F: LSR A
#_0DA820: LSR A
#_0DA821: TAX

#_0DA822: SEP #$20

#_0DA824: LDA.b $0C
#_0DA826: ORA.w $03FA
#_0DA829: STA.w $0A20,X

#_0DA82C: PLX
#_0DA82D: INX ; +4
#_0DA82E: INX
#_0DA82F: INX
#_0DA830: INX

;---------------------------------------------------------------------------------------------------

.no_shield_to_draw
#_0DA831: SEP #$20

#_0DA833: LDA.b $0A
#_0DA835: CLC
#_0DA836: ADC.b #$08
#_0DA838: STA.b $0A

#_0DA83A: INY
#_0DA83B: INY

#_0DA83C: INC.b $06

#_0DA83E: LDA.b $06
#_0DA840: AND.b #$01
#_0DA842: BNE .no_offset

#_0DA844: LDA.b $0B
#_0DA846: CLC
#_0DA847: ADC.b #$08
#_0DA849: STA.b $0B

#_0DA84B: LDA.b $08
#_0DA84D: STA.b $0A

.no_offset
#_0DA84F: LDA.b $06
#_0DA851: CMP.b #$03
#_0DA853: BNE .merge_with_tile_check

#_0DA855: SEP #$10

;===================================================================================================

LinkOAM_DrawShadow:
#_0DA857: SEP #$30

#_0DA859: LDA.b $4B
#_0DA85B: CMP.b #$0C
#_0DA85D: BNE .continue_with_shadow

#_0DA85F: BRL LinkOAM_DrawPose

;---------------------------------------------------------------------------------------------------

.continue_with_shadow
#_0DA862: LDA.b $5D
#_0DA864: CMP.b #$16 ; LINKSTATE 16
#_0DA866: BEQ .proceed_to_pose

#_0DA868: LDA.w $0354
#_0DA86B: CMP.b #$05
#_0DA86D: BEQ .recoil_check

#_0DA86F: LDA.w $0351
#_0DA872: BEQ .recoil_check

#_0DA874: JSR LinkOAM_DrawFootObject

#_0DA877: BRA .proceed_to_pose

;---------------------------------------------------------------------------------------------------

.recoil_check
#_0DA879: LDA.b $4D
#_0DA87B: CMP.b #$04
#_0DA87D: BEQ .proceed_to_pose

#_0DA87F: LDA.b $5D
#_0DA881: CMP.b #$04 ; LINKSTATE 04
#_0DA883: BEQ .proceed_to_pose

#_0DA885: LDY.b #$00

#_0DA887: LDA.b $5B
#_0DA889: BEQ .weak_slip

#_0DA88B: CMP.b #$01
#_0DA88D: BEQ .weak_slip

#_0DA88F: LDA.b $5A
#_0DA891: CMP.b #$06
#_0DA893: BCC .proceed_to_pose

#_0DA895: JSR LinkOAM_DrawUnderworldFallShadow

.proceed_to_pose
#_0DA898: BRL LinkOAM_DrawPose

;---------------------------------------------------------------------------------------------------

.weak_slip
#_0DA89B: LDA.b $4D
#_0DA89D: BEQ .big_shadow

#_0DA89F: CMP.b #$01
#_0DA8A1: BNE .tiny_shadow

#_0DA8A3: LDA.b $55
#_0DA8A5: BNE .big_shadow

.tiny_shadow
#_0DA8A7: LDY.b #$01

.big_shadow
#_0DA8A9: STY.b $0A

;---------------------------------------------------------------------------------------------------

#_0DA8AB: STZ.b $0B

#_0DA8AD: LDA.w $0323
#_0DA8B0: LSR A
#_0DA8B1: TAY

#_0DA8B2: REP #$20

#_0DA8B4: LDA.b $20
#_0DA8B6: SEC
#_0DA8B7: SBC.b $E8
#_0DA8B9: STA.b $06

#_0DA8BB: LDA.w LinkOAM_ShadowOffset_Y,Y

#_0DA8BE: AND.w #$00FF
#_0DA8C1: CMP.w #$0080
#_0DA8C4: BCC .positive_y

#_0DA8C6: ORA.w #$FF00

.positive_y
#_0DA8C9: CLC
#_0DA8CA: ADC.b $06
#_0DA8CC: STA.b $06

#_0DA8CE: SEP #$20

#_0DA8D0: LDA.b $07
#_0DA8D2: BNE .proceed_to_pose

#_0DA8D4: LDA.b $01
#_0DA8D6: CLC
#_0DA8D7: ADC.w LinkOAM_ShadowOffset_Y,Y
#_0DA8DA: STA.b $07

#_0DA8DC: LDA.b $00
#_0DA8DE: CLC
#_0DA8DF: ADC.w LinkOAM_ShadowOffset_X,Y
#_0DA8E2: STA.b $06

#_0DA8E4: REP #$30

#_0DA8E6: LDX.b $72

#_0DA8E8: LDA.w LinkOAM_ShadowBufferOffsetPointers,X
#_0DA8EB: STA.b $74

;---------------------------------------------------------------------------------------------------

#_0DA8ED: LDA.b $04
#_0DA8EF: AND.w #$00FF
#_0DA8F2: TAY

#_0DA8F3: LDA.b ($74),Y
#_0DA8F5: AND.w #$00FF
#_0DA8F8: CLC
#_0DA8F9: ADC.w $0352
#_0DA8FC: TAX

#_0DA8FD: LDA.b $0A
#_0DA8FF: ASL A
#_0DA900: ASL A
#_0DA901: TAY

#_0DA902: LDA.w LinkOAM_ShadowTiles+0,Y
#_0DA905: AND.w #$CFFF
#_0DA908: ORA.w $035D
#_0DA90B: STA.w $0802,X

#_0DA90E: AND.w #$3FFF
#_0DA911: ORA.w #$4000
#_0DA914: STA.w $0806,X

#_0DA917: LDA.b $06
#_0DA919: STA.w $0800,X

#_0DA91C: XBA
#_0DA91D: CLC
#_0DA91E: ADC.w #$0800

#_0DA921: XBA
#_0DA922: STA.w $0804,X

;---------------------------------------------------------------------------------------------------

#_0DA925: LDA.w $0346
#_0DA928: BNE .no_palette_adjustment

#_0DA92A: LDA.w $0802,X
#_0DA92D: AND.w #$F1FF
#_0DA930: ORA.w #$0600
#_0DA933: STA.w $0802,X

#_0DA936: LDA.w $0806,X
#_0DA939: AND.w #$F1FF
#_0DA93C: ORA.w #$0600
#_0DA93F: STA.w $0806,X

.no_palette_adjustment
#_0DA942: TXA
#_0DA943: LSR A
#_0DA944: LSR A
#_0DA945: TAX

#_0DA946: STZ.w $0A20,X

#_0DA949: SEP #$30

;===================================================================================================

LinkOAM_DrawPose:
#_0DA94B: REP #$30

#_0DA94D: LDX.b $72

#_0DA94F: LDA.w LinkOAM_ElfBufferOffsetPointers,X
#_0DA952: STA.b $74

#_0DA954: LDY.b $04

#_0DA956: LDA.b ($74),Y
#_0DA958: AND.w #$00FF
#_0DA95B: CLC
#_0DA95C: ADC.w $0352
#_0DA95F: TAX

#_0DA960: LDA.b $02
#_0DA962: ASL A
#_0DA963: TAY

#_0DA964: LDA.w LinkOAM_AnimationSteps,Y
#_0DA967: STA.b $0E

#_0DA969: ASL A
#_0DA96A: STA.w $0100

#_0DA96D: CLC
#_0DA96E: ADC.b $0E
#_0DA970: TAY

;---------------------------------------------------------------------------------------------------

#_0DA971: SEP #$20

#_0DA973: LDA.b $4B
#_0DA975: CMP.b #$0C
#_0DA977: BNE .not_invisible

#_0DA979: BRL LinkOAM_RunFinalAdjustments

.not_invisible
#_0DA97C: LDA.b $25
#_0DA97E: BMI .possibly_grounded

#_0DA980: LDA.b $24
#_0DA982: BRA .airborne

.possibly_grounded
#_0DA984: LDA.b $24
#_0DA986: CMP.b #$F0
#_0DA988: BCC .airborne

#_0DA98A: LDA.b #$00

.airborne
#_0DA98C: STA.b $0F
#_0DA98E: STZ.b $0E

;---------------------------------------------------------------------------------------------------

#_0DA990: LDA.b $01
#_0DA992: CLC
#_0DA993: ADC.w LinkOAM_PoseData+0,Y
#_0DA996: SEC
#_0DA997: SBC.b $0F
#_0DA999: STA.b $0B

#_0DA99B: LDA.b $00
#_0DA99D: CLC
#_0DA99E: ADC.w LinkOAM_PoseData+1,Y
#_0DA9A1: STA.b $0A

#_0DA9A3: REP #$20

#_0DA9A5: LDA.w LinkOAM_PoseData+2,Y
#_0DA9A8: XBA
#_0DA9A9: STA.b $06

#_0DA9AB: AND.w #$F000
#_0DA9AE: CMP.w #$F000
#_0DA9B1: BEQ .no_draw

#_0DA9B3: ORA.b $64
#_0DA9B5: ORA.w $0346
#_0DA9B8: STA.w $0802,X

#_0DA9BB: STZ.b $02

#_0DA9BD: LDA.b $0A
#_0DA9BF: STA.w $0800,X

#_0DA9C2: AND.w #$00FF
#_0DA9C5: CMP.w #$00F8
#_0DA9C8: BCC .on_screen_x

#_0DA9CA: LDA.w #$0001
#_0DA9CD: STA.b $02

.on_screen_x
#_0DA9CF: PHX

#_0DA9D0: TXA
#_0DA9D1: LSR A
#_0DA9D2: LSR A
#_0DA9D3: TAX

#_0DA9D4: LDA.w $0A20,X
#_0DA9D7: AND.w #$FF00
#_0DA9DA: ORA.b $02
#_0DA9DC: ORA.w #$0002
#_0DA9DF: STA.w $0A20,X

#_0DA9E2: PLX

;---------------------------------------------------------------------------------------------------

.no_draw
#_0DA9E3: LDA.b $06
#_0DA9E5: AND.w #$0F00
#_0DA9E8: CMP.w #$0F00
#_0DA9EB: BEQ LinkOAM_RunFinalAdjustments

#_0DA9ED: ASL A ; x16
#_0DA9EE: ASL A
#_0DA9EF: ASL A
#_0DA9F0: ASL A

#_0DA9F1: ORA.b $64
#_0DA9F3: ORA.w $0346
#_0DA9F6: ORA.w #$0002
#_0DA9F9: STA.w $0806,X

#_0DA9FC: LDA.b $00
#_0DA9FE: SEC
#_0DA9FF: SBC.b $0E
#_0DAA01: CLC
#_0DAA02: ADC.w #$0800
#_0DAA05: STA.w $0804,X

#_0DAA08: TXA
#_0DAA09: LSR A
#_0DAA0A: LSR A
#_0DAA0B: TAX

#_0DAA0C: LDA.w $0A21,X
#_0DAA0F: AND.w #$FF00
#_0DAA12: ORA.w #$0002
#_0DAA15: STA.w $0A21,X

;===================================================================================================

LinkOAM_RunFinalAdjustments:
#_0DAA18: SEP #$30

#_0DAA1A: LDA.b #$01
#_0DAA1C: STA.b $0E

#_0DAA1E: LDA.b $6C
#_0DAA20: BEQ .not_in_door

;---------------------------------------------------------------------------------------------------

#_0DAA22: REP #$20

#_0DAA24: LDA.b $22
#_0DAA26: SEC
#_0DAA27: SBC.b $E2
#_0DAA29: CMP.w #$0004
#_0DAA2C: BCC .looks_invisible

#_0DAA2E: CMP.w #$00FC
#_0DAA31: BCS .looks_invisible

#_0DAA33: LDA.b $20
#_0DAA35: SEC
#_0DAA36: SBC.b $E8
#_0DAA38: CMP.w #$0004
#_0DAA3B: BCC .looks_invisible

#_0DAA3D: CMP.w #$00E0
#_0DAA40: BCS .looks_invisible

#_0DAA42: SEP #$20

;---------------------------------------------------------------------------------------------------

.not_in_door
#_0DAA44: STZ.b $0E

#_0DAA46: LDA.b $11
#_0DAA48: BNE .check_stair_visibility

#_0DAA4A: LDA.w $031F
#_0DAA4D: BEQ .check_stair_visibility

#_0DAA4F: DEC A
#_0DAA50: STA.w $031F

#_0DAA53: CMP.b #$04
#_0DAA55: BCC .check_stair_visibility

#_0DAA57: AND.b #$01
#_0DAA59: BEQ .looks_invisible

.check_stair_visibility
#_0DAA5B: LDA.b $4B
#_0DAA5D: CMP.b #$0C
#_0DAA5F: BEQ .looks_invisible

#_0DAA61: LDA.b $55
#_0DAA63: BEQ .not_caping

.looks_invisible
#_0DAA65: REP #$30

#_0DAA67: LDA.w $0352
#_0DAA6A: LSR A
#_0DAA6B: LSR A
#_0DAA6C: TAX

#_0DAA6D: LDA.w #$0101
#_0DAA70: STA.w $0A20,X
#_0DAA73: STA.w $0A22,X
#_0DAA76: STA.w $0A24,X
#_0DAA79: STA.w $0A26,X
#_0DAA7C: STA.w $0A28,X
#_0DAA7F: STA.w $0A2A,X

;---------------------------------------------------------------------------------------------------

#_0DAA82: LDA.b $4B
#_0DAA84: AND.w #$00FF
#_0DAA87: CMP.w #$000C
#_0DAA8A: BEQ .check_position_restoration

#_0DAA8C: LDA.b $0E
#_0DAA8E: AND.w #$00FF
#_0DAA91: BNE .check_position_restoration

#_0DAA93: LDX.b $72

#_0DAA95: LDA.w LinkOAM_ShadowBufferOffsetPointers,X
#_0DAA98: STA.b $74

#_0DAA9A: LDA.b $04
#_0DAA9C: AND.w #$00FF
#_0DAA9F: TAY

#_0DAAA0: LDA.b ($74),Y
#_0DAAA2: AND.w #$00FF
#_0DAAA5: CLC
#_0DAAA6: ADC.w $0352

#_0DAAA9: LSR A
#_0DAAAA: LSR A
#_0DAAAB: TAX

#_0DAAAC: STZ.w $0A20,X

;---------------------------------------------------------------------------------------------------

.check_position_restoration
#_0DAAAF: SEP #$30

.not_caping
#_0DAAB1: LDA.b $11
#_0DAAB3: CMP.b #$12
#_0DAAB5: BEQ .restore_position

#_0DAAB7: CMP.b #$13
#_0DAAB9: BNE .exit

.restore_position
#_0DAABB: PLA
#_0DAABC: STA.b $21

#_0DAABE: PLA
#_0DAABF: STA.b $20

.exit
#_0DAAC1: PLB

#_0DAAC2: RTL

;===================================================================================================
; what it says
;===================================================================================================
FindMostSignificantBit:
#_0DAAC3: LDX.b #$07

.shift
#_0DAAC5: ASL A
#_0DAAC6: BCS .hit

#_0DAAC8: DEX
#_0DAAC9: BPL .shift

.hit
#_0DAACB: RTS

;===================================================================================================
; TODO analyze, format, annotate
LinkOAM_WeaponOffsetID:
#_0DAACC: db $06, $06, $04, $04, $04, $04, $00, $00
#_0DAAD4: db $08, $08, $08, $08, $02, $02, $02, $02
#_0DAADC: db $0A, $0A, $0A, $0A, $0C, $0C, $0C, $0C
#_0DAAE4: db $0E, $0E, $0E, $0E, $00, $09, $0C, $09
#_0DAAEC: db $0C, $0E, $0A, $08, $0D, $08, $0D, $12
#_0DAAF4: db $12, $11, $11, $10, $10, $10, $10, $40
#_0DAAFC: db $41, $40, $41, $18, $18, $19, $19, $24
#_0DAB04: db $21, $25, $23, $22, $20, $26, $23, $25
#_0DAB0C: db $26, $22, $28, $2A, $29, $29, $2C, $28
#_0DAB14: db $2B, $28, $2B, $30

;===================================================================================================

LinkOAM_RodOffsetID:
#_0DAB18: db $01, $04, $01, $04, $06, $02, $00, $05
#_0DAB20: db $00, $05

;===================================================================================================

LinkOAM_WeaponSize:
#_0DAB22: db $00, $00, $00, $00, $00, $00, $00, $00
#_0DAB2A: db $00, $00, $00, $00, $02, $02, $02, $02
#_0DAB32: db $02, $02, $02, $02, $02, $02, $02, $02
#_0DAB3A: db $02, $02, $02, $02, $00, $00, $00, $00
#_0DAB42: db $00, $00, $00, $02, $00, $02, $00, $00
#_0DAB4A: db $00, $00, $00, $02, $02, $02, $02, $02
#_0DAB52: db $00, $02, $00, $00, $00, $00, $00, $02
#_0DAB5A: db $02, $02, $02, $02, $02, $02, $02, $02
#_0DAB62: db $02, $02, $02, $00, $00, $00, $00, $02
#_0DAB6A: db $00, $02, $00, $02

;===================================================================================================

LinkOAM_SetWeaponVRAMOffsets:
#_0DAB6E: REP #$30

#_0DAB70: LDY.b $02

#_0DAB72: LDA.w LinkOAM_WeaponGFXIndex,Y
#_0DAB75: AND.w #$00FF
#_0DAB78: CMP.w #$00FF
#_0DAB7B: BEQ .fail

#_0DAB7D: STA.b $06

#_0DAB7F: TAX

#_0DAB80: LDA.w LinkOAM_WeaponSize,X
#_0DAB83: AND.w #$00FF
#_0DAB86: STA.b $0C

#_0DAB88: TXA

#_0DAB89: LDY.w LinkOAM_WeaponOffsetID,X
#_0DAB8C: CMP.w #$001D
#_0DAB8F: BCC .is_sword

#_0DAB91: LDA.w $0301
#_0DAB94: AND.w #$0005
#_0DAB97: BEQ .not_rod

#_0DAB99: TXA
#_0DAB9A: SEC
#_0DAB9B: SBC.w #$001D
#_0DAB9E: TAX

#_0DAB9F: LDY.w LinkOAM_RodOffsetID,X

;---------------------------------------------------------------------------------------------------

.not_rod
#_0DABA2: TYA
#_0DABA3: AND.w #$00FF
#_0DABA6: STA.b $0A

#_0DABA8: LDA.w $0109
#_0DABAB: AND.w #$FF00
#_0DABAE: ORA.b $0A
#_0DABB0: STA.w $0109

#_0DABB3: BRA .succeed

;---------------------------------------------------------------------------------------------------

.is_sword
#_0DABB5: TYA
#_0DABB6: AND.w #$00FF
#_0DABB9: STA.b $0A

#_0DABBB: LDA.w $0107
#_0DABBE: AND.w #$FF00
#_0DABC1: ORA.b $0A
#_0DABC3: STA.w $0107

;---------------------------------------------------------------------------------------------------

.succeed
#_0DABC6: CLC

#_0DABC7: RTS

.fail
#_0DABC8: SEC

#_0DABC9: RTS

;===================================================================================================
; TODO analyze
pool LinkOAM_SetEquipmentVRAMOffsets

.shield_id
#_0DABCA: db $00, $02, $04, $04, $04, $04, $04, $04
#_0DABD2: db $09, $0C, $09, $0C, $0E, $0A, $08, $0D
#_0DABDA: db $08, $0D

.rod_id
#_0DABDC: db $01, $04, $01, $04, $06, $02, $00, $05
#_0DABE4: db $00, $05

pool off

;---------------------------------------------------------------------------------------------------

LinkOAM_SetEquipmentVRAMOffsets:
#_0DABE6: REP #$30

#_0DABE8: STZ.b $0C

#_0DABEA: LDY.b $02

#_0DABEC: LDA.w LinkOAM_ShieldGFXIndex,Y
#_0DABEF: AND.w #$00FF
#_0DABF2: CMP.w #$00FF
#_0DABF5: BEQ .fail

#_0DABF7: STA.b $06

#_0DABF9: TAX

#_0DABFA: LDY.w .shield_id,X

#_0DABFD: AND.w #$00F8
#_0DAC00: BEQ .is_shield

#_0DAC02: LDA.w $0301
#_0DAC05: AND.w #$0005
#_0DAC08: BEQ .not_rod

#_0DAC0A: TXA
#_0DAC0B: SEC
#_0DAC0C: SBC.w #$0008
#_0DAC0F: TAX

#_0DAC10: LDY.w .rod_id,X

;---------------------------------------------------------------------------------------------------

.not_rod
#_0DAC13: TYA
#_0DAC14: AND.w #$00FF
#_0DAC17: STA.b $0A

#_0DAC19: LDA.w $0109
#_0DAC1C: AND.w #$FF00
#_0DAC1F: ORA.b $0A
#_0DAC21: STA.w $0109

#_0DAC24: AND.w #$0007
#_0DAC27: BEQ .dont_invert

#_0DAC29: BRA .succeed

.is_shield
#_0DAC2B: TYA
#_0DAC2C: AND.w #$00FF
#_0DAC2F: STA.b $0A

#_0DAC31: LDA.w $0108
#_0DAC34: AND.w #$FF00
#_0DAC37: ORA.b $0A
#_0DAC39: STA.w $0108

.dont_invert
#_0DAC3C: LDA.w #$0002
#_0DAC3F: STA.b $0C

;---------------------------------------------------------------------------------------------------

.succeed
#_0DAC41: CLC

#_0DAC42: RTS

.fail
#_0DAC43: SEC

#_0DAC44: RTS

;===================================================================================================

LinkOAM_SwordSwingSparkleTile:
.up
#_0DAC45: dw $FFFF
#_0DAC47: dw $FFFF
#_0DAC49: dw $6A3E
#_0DAC4B: dw $6A2F
#_0DAC4D: dw $6A2F
#_0DAC4F: dw $2A05
#_0DAC51: dw $2A2F
#_0DAC53: dw $2A3E
#_0DAC55: dw $FFFF

.down
#_0DAC57: dw $FFFF
#_0DAC59: dw $FFFF
#_0DAC5B: dw $AA3E
#_0DAC5D: dw $AA2F
#_0DAC5F: dw $AA2F
#_0DAC61: dw $AA05
#_0DAC63: dw $EA2F
#_0DAC65: dw $EA3E
#_0DAC67: dw $FFFF

.left
#_0DAC69: dw $FFFF
#_0DAC6B: dw $FFFF
#_0DAC6D: dw $2A3E
#_0DAC6F: dw $2A3F
#_0DAC71: dw $2A3F
#_0DAC73: dw $2A05
#_0DAC75: dw $AA3F
#_0DAC77: dw $AA3E
#_0DAC79: dw $FFFF

.right
#_0DAC7B: dw $FFFF
#_0DAC7D: dw $FFFF
#_0DAC7F: dw $6A3E
#_0DAC81: dw $6A3F
#_0DAC83: dw $6A3F
#_0DAC85: dw $6A05
#_0DAC87: dw $EA3F
#_0DAC89: dw $EA3E
#_0DAC8B: dw $FFFF

;===================================================================================================

LinkOAM_SwordSwingTipOffsetY:
.up
#_0DAC8D: db $FF
#_0DAC8E: db $FF
#_0DAC8F: db $FB
#_0DAC90: db $F3
#_0DAC91: db $F1
#_0DAC92: db $EB
#_0DAC93: db $F3
#_0DAC94: db $FB
#_0DAC95: db $FF

.down
#_0DAC96: db $FF
#_0DAC97: db $FF
#_0DAC98: db $16
#_0DAC99: db $1B
#_0DAC9A: db $1D
#_0DAC9B: db $23
#_0DAC9C: db $1B
#_0DAC9D: db $18
#_0DAC9E: db $FF

.left
#_0DAC9F: db $FF
#_0DACA0: db $FF
#_0DACA1: db $FF
#_0DACA2: db $02
#_0DACA3: db $05
#_0DACA4: db $0C
#_0DACA5: db $14
#_0DACA6: db $1A
#_0DACA7: db $FF

.right
#_0DACA8: db $FF
#_0DACA9: db $FF
#_0DACAA: db $FF
#_0DACAB: db $02
#_0DACAC: db $05
#_0DACAD: db $0C
#_0DACAE: db $14
#_0DACAF: db $1A
#_0DACB0: db $FF

;===================================================================================================

LinkOAM_SwordSwingTipOffsetX:
.up
#_0DACB1: db $FF
#_0DACB2: db $FF
#_0DACB3: db $0F
#_0DACB4: db $0D
#_0DACB5: db $08
#_0DACB6: db $FF
#_0DACB7: db $F6
#_0DACB8: db $F2
#_0DACB9: db $FF

.down
#_0DACBA: db $FF
#_0DACBB: db $FF
#_0DACBC: db $FA
#_0DACBD: db $FD
#_0DACBE: db $01
#_0DACBF: db $08
#_0DACC0: db $10
#_0DACC1: db $15
#_0DACC2: db $FF

.left
#_0DACC3: db $FF
#_0DACC4: db $FF
#_0DACC5: db $F5
#_0DACC6: db $F1
#_0DACC7: db $EE
#_0DACC8: db $E8
#_0DACC9: db $EF
#_0DACCA: db $F4
#_0DACCB: db $FF

.right
#_0DACCC: db $FF
#_0DACCD: db $FF
#_0DACCE: db $13
#_0DACCF: db $17
#_0DACD0: db $1A
#_0DACD1: db $20
#_0DACD2: db $19
#_0DACD3: db $14
#_0DACD4: db $FF

;===================================================================================================

LinkOAM_CalculateSwordSparklePosition:
#_0DACD5: LDA.b $0A
#_0DACD7: PHA

#_0DACD8: PHY

#_0DACD9: LDA.b $5D
#_0DACDB: BEQ .base_link_state

.give_up
#_0DACDD: BRL .reset_and_exit

;---------------------------------------------------------------------------------------------------

.base_link_state
#_0DACE0: LDA.l $7EF359
#_0DACE4: AND.w #$00FF
#_0DACE7: BEQ .give_up

#_0DACE9: CMP.w #$00FF
#_0DACEC: BEQ .give_up

#_0DACEE: CMP.w #$0001
#_0DACF1: BEQ .give_up

#_0DACF3: LDA.b $3A
#_0DACF5: AND.w #$0080
#_0DACF8: BEQ .give_up

#_0DACFA: LDA.b $3C
#_0DACFC: AND.w #$00FF
#_0DACFF: CMP.w #$0009
#_0DAD02: BCS .give_up

#_0DAD04: ASL A
#_0DAD05: STA.b $0A

#_0DAD07: LDA.b $2F
#_0DAD09: AND.w #$00FF
#_0DAD0C: LSR A
#_0DAD0D: STA.b $0E

#_0DAD0F: ASL A
#_0DAD10: ASL A
#_0DAD11: ASL A

#_0DAD12: CLC
#_0DAD13: ADC.b $0E

#_0DAD15: ASL A
#_0DAD16: CLC
#_0DAD17: ADC.b $0A
#_0DAD19: TAY

#_0DAD1A: LDA.w LinkOAM_SwordSwingSparkleTile,Y
#_0DAD1D: CMP.w #$FFFF
#_0DAD20: BEQ .reset_and_exit

#_0DAD22: AND.w #$CFFF
#_0DAD25: ORA.b $64
#_0DAD27: STA.w $0802,X

;---------------------------------------------------------------------------------------------------

#_0DAD2A: LDA.w $0346
#_0DAD2D: BNE .no_palette_adjust

#_0DAD2F: LDA.w $0802,X
#_0DAD32: AND.w #$F1FF
#_0DAD35: ORA.w #$0600
#_0DAD38: STA.w $0802,X

.no_palette_adjust
#_0DAD3B: TYA
#_0DAD3C: LSR A
#_0DAD3D: TAY

#_0DAD3E: SEP #$20

#_0DAD40: LDA.w LinkOAM_SwordSwingTipOffsetY,Y
#_0DAD43: CLC
#_0DAD44: ADC.b $01
#_0DAD46: STA.b $0B

#_0DAD48: LDA.w LinkOAM_SwordSwingTipOffsetX,Y
#_0DAD4B: CLC
#_0DAD4C: ADC.b $00
#_0DAD4E: STA.b $0A

#_0DAD50: LDA.w LinkOAM_SwordSwingTipOffsetY,Y
#_0DAD53: STA.b $44

#_0DAD55: LDA.w LinkOAM_SwordSwingTipOffsetX,Y
#_0DAD58: STA.b $45

#_0DAD5A: JSR LinkOAM_CalculateXOffsetRelativeLink

#_0DAD5D: REP #$20

#_0DAD5F: LDA.b $0A
#_0DAD61: STA.w $0800,X

#_0DAD64: INX ; +4
#_0DAD65: INX
#_0DAD66: INX
#_0DAD67: INX

#_0DAD68: PHX

#_0DAD69: TXA
#_0DAD6A: SEC
#_0DAD6B: SBC.w #$0004
#_0DAD6E: LSR A
#_0DAD6F: LSR A
#_0DAD70: TAX

#_0DAD71: LDA.w #$0000
#_0DAD74: ORA.w $03FA
#_0DAD77: STA.w $0A20,X

#_0DAD7A: PLX

;---------------------------------------------------------------------------------------------------

.reset_and_exit
#_0DAD7B: STZ.b $0E

#_0DAD7D: PLY

#_0DAD7E: PLA
#_0DAD7F: STA.b $0A

#_0DAD81: RTS

;===================================================================================================
; This has a caller, but it seems the branch that skips over it is always taken in practice.
; TODO should still figure out what this routine does
;===================================================================================================
pool LinkOAM_UnusedWeaponSettings

.props
#_0DAD82: dw $2609

.index
#_0DAD84: db $FF, $FF, $FF, $FF
#_0DAD88: db $00, $FF, $FF, $FF
#_0DAD8C: db $00, $00, $FF, $FF
#_0DAD90: db $00, $00, $00, $FF

.offset_x
#_0DAD94: db $FF, $FF, $FF, $FF
#_0DAD98: db   8, $FF, $FF, $FF
#_0DAD9C: db   8,   5, $FF, $FF
#_0DADA0: db   8,   5,   2, $FF

.offset_y
#_0DADA4: db $FF, $FF, $FF, $FF
#_0DADA8: db  14, $FF, $FF, $FF
#_0DADAC: db  14,  22, $FF, $FF
#_0DADB0: db  14,  22,  30, $FF

.offset
#_0DADB4: db $00
#_0DADB5: db $04

pool off

;---------------------------------------------------------------------------------------------------

LinkOAM_UnusedWeaponSettings:
#_0DADB6: SEP #$30

; The usage here doesn't make much sense either.
; If this routine were reachable, it would always enter with A=0x04.
; That means X will always be 0x00.
#_0DADB8: LSR A
#_0DADB9: LSR A
#_0DADBA: JSR FindMostSignificantBit

#_0DADBD: LDA.w .offset,X
#_0DADC0: CLC
#_0DADC1: ADC.w $030E
#_0DADC4: ASL A
#_0DADC5: ASL A
#_0DADC6: STA.b $06
#_0DADC8: STZ.b $07

;---------------------------------------------------------------------------------------------------

#_0DADCA: LDA.b #$42
#_0DADCC: STA.w $0109

#_0DADCF: REP #$30

#_0DADD1: LDX.b $72

#_0DADD3: LDA.w LinkOAM_WeaponBufferOffsetPointers,X
#_0DADD6: STA.b $74

#_0DADD8: LDA.b $04
#_0DADDA: AND.w #$00FF
#_0DADDD: TAY

#_0DADDE: LDA.b ($74),Y
#_0DADE0: AND.w #$00FF
#_0DADE3: CLC
#_0DADE4: ADC.w $0352
#_0DADE7: TAX

#_0DADE8: LDY.b $06
#_0DADEA: STZ.b $06

;---------------------------------------------------------------------------------------------------

.next_object
#_0DADEC: SEP #$20

#_0DADEE: LDA.b $01
#_0DADF0: CLC
#_0DADF1: ADC.w .offset_x,Y
#_0DADF4: STA.b $0B

#_0DADF6: LDA.b $00
#_0DADF8: CLC
#_0DADF9: ADC.w .offset_y,Y
#_0DADFC: STA.b $0A

#_0DADFE: PHY

#_0DADFF: LDA.w .index,Y
#_0DAE02: CMP.b #$FF
#_0DAE04: BEQ .skip

#_0DAE06: REP #$20

#_0DAE08: AND.w #$00FF
#_0DAE0B: TAY

#_0DAE0C: LDA.w .props,Y
#_0DAE0F: AND.w #$CFFF
#_0DAE12: ORA.b $64
#_0DAE14: STA.w $0802,X

#_0DAE17: LDA.b $0A
#_0DAE19: STA.w $0800,X

#_0DAE1C: PHX

#_0DAE1D: TXA
#_0DAE1E: LSR A
#_0DAE1F: LSR A
#_0DAE20: TAX

#_0DAE21: SEP #$20

#_0DAE23: STZ.w $0A20,X

#_0DAE26: PLX
#_0DAE27: INX ; +4
#_0DAE28: INX
#_0DAE29: INX
#_0DAE2A: INX

.skip
#_0DAE2B: PLY
#_0DAE2C: INY

#_0DAE2D: INC.b $06

#_0DAE2F: LDA.b $06
#_0DAE31: CMP.b #$04
#_0DAE33: BNE .next_object

#_0DAE35: REP #$30

#_0DAE37: RTS

;===================================================================================================

pool LinkOAM_DrawUnderworldFallShadow

.offset_x
#_0DAE38: db $00
#_0DAE39: db $00
#_0DAE3A: db $04

pool off

;---------------------------------------------------------------------------------------------------

LinkOAM_DrawUnderworldFallShadow:
; 0x00 = big shadow
; 0x04 = medium shadow
; 0x08 = tiny shadow
#_0DAE3B: LDY.b #$00

#_0DAE3D: LDA.b $51
#_0DAE3F: SEC
#_0DAE40: SBC.b #$0C

#_0DAE42: SEC
#_0DAE43: SBC.b $20

#_0DAE45: CMP.b #$F0
#_0DAE47: BCS .shadow_size_chosen

#_0DAE49: CMP.b #$30
#_0DAE4B: BCC .not_medium_shadow

#_0DAE4D: LDY.b #$04

.not_medium_shadow
#_0DAE4F: CMP.b #$60
#_0DAE51: BCC .shadow_size_chosen

#_0DAE53: LDY.b #$08

;---------------------------------------------------------------------------------------------------

.shadow_size_chosen
#_0DAE55: TYA
#_0DAE56: LSR A
#_0DAE57: LSR A
#_0DAE58: TAX

#_0DAE59: LDA.w .offset_x,X
#_0DAE5C: STA.b $06

#_0DAE5E: LDA.b $51
#_0DAE60: SEC
#_0DAE61: SBC.b #$0C

#_0DAE63: SEC
#_0DAE64: SBC.b $E8

#_0DAE66: CLC
#_0DAE67: ADC.b #$1D
#_0DAE69: STA.b $07

;---------------------------------------------------------------------------------------------------

#_0DAE6B: LDA.b $00
#_0DAE6D: CLC
#_0DAE6E: ADC.b $06
#_0DAE70: STA.b $06

#_0DAE72: STZ.b $04

#_0DAE74: REP #$30

#_0DAE76: PHY

#_0DAE77: LDX.b $72

#_0DAE79: LDA.w LinkOAM_ShadowBufferOffsetPointers,X
#_0DAE7C: STA.b $74

#_0DAE7E: LDA.b $03
#_0DAE80: AND.w #$00FF
#_0DAE83: TAY

#_0DAE84: LDA.b ($74),Y
#_0DAE86: AND.w #$00FF
#_0DAE89: CLC
#_0DAE8A: ADC.w $0352

#_0DAE8D: TAX

#_0DAE8E: PLY

;---------------------------------------------------------------------------------------------------

.next_object
#_0DAE8F: REP #$20

#_0DAE91: LDA.w LinkOAM_ShadowTiles+0,Y
#_0DAE94: CMP.w #$FFFF
#_0DAE97: BEQ .no_tile

#_0DAE99: AND.w #$CFFF
#_0DAE9C: ORA.w $035D
#_0DAE9F: STA.w $0802,X

#_0DAEA2: LDA.b $06
#_0DAEA4: STA.w $0800,X

.no_tile
#_0DAEA7: PHX

#_0DAEA8: TXA
#_0DAEA9: LSR A
#_0DAEAA: LSR A
#_0DAEAB: TAX

#_0DAEAC: SEP #$20

#_0DAEAE: STZ.w $0A20,X

#_0DAEB1: PLX

#_0DAEB2: LDA.b $06
#_0DAEB4: CLC
#_0DAEB5: ADC.b #$08
#_0DAEB7: STA.b $06

#_0DAEB9: INY
#_0DAEBA: INY

#_0DAEBB: INX ; +4
#_0DAEBC: INX
#_0DAEBD: INX
#_0DAEBE: INX

#_0DAEBF: INC.b $04

#_0DAEC1: LDA.b $04
#_0DAEC3: CMP.b #$02
#_0DAEC5: BNE .next_object

;---------------------------------------------------------------------------------------------------

#_0DAEC7: SEP #$10

#_0DAEC9: RTS

;===================================================================================================

pool LinkOAM_DrawFootObject

.aux_check
#_0DAECA: db $0A
#_0DAECB: db $02
#_0DAECC: db $0E

.shield_direction
#_0DAECD: db $04 ; up
#_0DAECE: db $04 ; down
#_0DAECF: db $08 ; left
#_0DAED0: db $08 ; right

pool off

;---------------------------------------------------------------------------------------------------

LinkOAM_DrawFootObject:
#_0DAED1: LDA.w $0356
#_0DAED4: INC A
#_0DAED5: AND.b #$0F
#_0DAED7: STA.w $0356

#_0DAEDA: CMP.b #$09
#_0DAEDC: BCC .dont_reset_foot_object

#_0DAEDE: STZ.w $0356

#_0DAEE1: LDA.w $0355
#_0DAEE4: INC A
#_0DAEE5: AND.b #$03
#_0DAEE7: STA.w $0355

#_0DAEEA: CMP.b #$03 ; !USELESS since there's an AND
#_0DAEEC: BNE .dont_reset_foot_object

#_0DAEEE: STZ.w $0355

.dont_reset_foot_object
#_0DAEF1: LDA.l $7EF35A
#_0DAEF5: TAY

#_0DAEF6: LDA.w $0323
#_0DAEF9: LSR A
#_0DAEFA: CLC
#_0DAEFB: ADC.w .shield_direction,Y
#_0DAEFE: TAY

#_0DAEFF: LDA.b $01
#_0DAF01: CLC
#_0DAF02: ADC.w LinkOAM_ShadowOffset_Y,Y
#_0DAF05: STA.b $07

#_0DAF07: LDA.b $00
#_0DAF09: CLC
#_0DAF0A: ADC.w LinkOAM_ShadowOffset_X,Y
#_0DAF0D: STA.b $06

#_0DAF0F: LDA.w $0355
#_0DAF12: ASL A
#_0DAF13: ASL A
#_0DAF14: STA.b $8D

;---------------------------------------------------------------------------------------------------

#_0DAF16: PHY

#_0DAF17: LDX.b $72

#_0DAF19: LDA.w LinkOAM_ShadowBufferOffsetPointers+0,X
#_0DAF1C: STA.b $74

#_0DAF1E: LDA.w LinkOAM_ShadowBufferOffsetPointers+1,X
#_0DAF21: STA.b $75

#_0DAF23: LDY.b $04

#_0DAF25: LDA.b ($74),Y
#_0DAF27: TAX

#_0DAF28: PLY

#_0DAF29: LDA.w $0351
#_0DAF2C: CMP.b #$02
#_0DAF2E: BNE .not_tall_grass

;---------------------------------------------------------------------------------------------------

#_0DAF30: LDY.b #$06

; TODO analyze
.check_next
#_0DAF32: LDA.w .aux_check,Y
#_0DAF35: CMP.w $0354
#_0DAF38: BNE .wrong

#_0DAF3A: STZ.b $8D

#_0DAF3C: BRA .check_step

.wrong
#_0DAF3E: DEY
#_0DAF3F: BPL .check_next

;---------------------------------------------------------------------------------------------------

.check_step
#_0DAF41: LDA.b $2E
#_0DAF43: CMP.b #$03
#_0DAF45: BCC .dont_reset_step

#_0DAF47: SEC
#_0DAF48: SBC.b #$03

.dont_reset_step
#_0DAF4A: ASL A
#_0DAF4B: ASL A
#_0DAF4C: STA.b $8D

#_0DAF4E: LDA.b #$08
#_0DAF50: ASL A
#_0DAF51: ASL A
#_0DAF52: CLC
#_0DAF53: ADC.b $8D
#_0DAF55: TAY

#_0DAF56: BRA .continue

;---------------------------------------------------------------------------------------------------

.not_tall_grass
#_0DAF58: LDA.b #$05
#_0DAF5A: ASL A
#_0DAF5B: ASL A
#_0DAF5C: CLC
#_0DAF5D: ADC.b $8D
#_0DAF5F: TAY

.continue
#_0DAF60: REP #$30

#_0DAF62: TYA
#_0DAF63: AND.w #$00FF
#_0DAF66: TAY

#_0DAF67: TXA
#_0DAF68: AND.w #$00FF
#_0DAF6B: CLC
#_0DAF6C: ADC.w $0352
#_0DAF6F: TAX

#_0DAF70: LDA.w LinkOAM_ShadowTiles+0,Y
#_0DAF73: AND.w #$CFFF
#_0DAF76: ORA.w $035D
#_0DAF79: STA.w $0802,X

#_0DAF7C: LDA.w LinkOAM_ShadowTiles+2,Y
#_0DAF7F: ORA.w $035D
#_0DAF82: STA.w $0806,X

#_0DAF85: LDA.b $06
#_0DAF87: STA.w $0800,X

#_0DAF8A: XBA
#_0DAF8B: CLC
#_0DAF8C: ADC.w #$0800
#_0DAF8F: XBA
#_0DAF90: STA.w $0804,X

#_0DAF93: TXA
#_0DAF94: LSR A
#_0DAF95: LSR A
#_0DAF96: TAX

#_0DAF97: STZ.w $0A20,X

#_0DAF9A: SEP #$30

#_0DAF9C: RTS

;===================================================================================================

pool UNREACHABLE_0DAFA6

.base
#_0DAF9D: db $00, $00, $00, $01
#_0DAFA1: db $00, $01, $01, $01
#_0DAFA5: db $00

pool off

;---------------------------------------------------------------------------------------------------

UNREACHABLE_0DAFA6:
#_0DAFA6: SEP #$30

#_0DAFA8: LDX.b $2E

#_0DAFAA: LDA.w $0354
#_0DAFAD: CMP.b #$19
#_0DAFAF: BNE .no_thanks

#_0DAFB1: LDA.w LinkOAM_StairsSomething,X
#_0DAFB4: TAX

.no_thanks
#_0DAFB5: LDA.w .base,X
#_0DAFB8: CLC
#_0DAFB9: ADC.b $01
#_0DAFBB: STA.b $01

#_0DAFBD: REP #$30

#_0DAFBF: RTS

;===================================================================================================

LinkOAM_CalculateXOffsetRelativeLink:
#_0DAFC0: REP #$20

#_0DAFC2: AND.w #$00FF
#_0DAFC5: CMP.w #$0080
#_0DAFC8: BCC .positive

#_0DAFCA: ORA.w #$FF00

.positive
#_0DAFCD: CLC
#_0DAFCE: ADC.b $22

#_0DAFD0: SEC
#_0DAFD1: SBC.b $E2

#_0DAFD3: XBA

#_0DAFD4: AND.w #$0001
#_0DAFD7: STA.w $03FA

#_0DAFDA: SEP #$20

#_0DAFDC: RTS

;===================================================================================================
; FREE ROM: 0xA3
;===================================================================================================
NULL_0DAFDD:
#_0DAFDD: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DAFE5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DAFED: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DAFF5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DAFFD: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DB005: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DB00D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DB015: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DB01D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DB025: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DB02D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DB035: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DB03D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DB045: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DB04D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DB055: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DB05D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DB065: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DB06D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DB075: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DB07D: db $FF, $FF, $FF

;===================================================================================================
; hmwo oooo
;   h - harmless sprite
;   m - seems unused in code
;   w - use a different tile hitbox and fewer checks
;   o - oam allocation
;===================================================================================================
SpriteData_OAMHarm:
#_0DB080: db $01 ; ... $01 | 0x00 - RAVEN
#_0DB081: db $02 ; ... $02 | 0x01 - VULTURE
#_0DB082: db $01 ; ... $01 | 0x02 - STALFOS HEAD
#_0DB083: db $82 ; h.. $02 | 0x03 - NULL
#_0DB084: db $81 ; h.. $01 | 0x04 - CORRECT PULL SWITCH
#_0DB085: db $84 ; h.. $04 | 0x05 - UNUSED CORRECT PULL SWITCH
#_0DB086: db $84 ; h.. $04 | 0x06 - WRONG PULL SWITCH
#_0DB087: db $84 ; h.. $04 | 0x07 - UNUSED WRONG PULL SWITCH
#_0DB088: db $02 ; ... $02 | 0x08 - OCTOROK
#_0DB089: db $0F ; ... $0F | 0x09 - MOLDORM
#_0DB08A: db $02 ; ... $02 | 0x0A - OCTOROK 4WAY
#_0DB08B: db $01 ; ... $01 | 0x0B - CUCCO
#_0DB08C: db $20 ; ..w $00 | 0x0C - OCTOROK STONE
#_0DB08D: db $03 ; ... $03 | 0x0D - BUZZBLOB
#_0DB08E: db $04 ; ... $04 | 0x0E - SNAPDRAGON
#_0DB08F: db $84 ; h.. $04 | 0x0F - OCTOBALLOON
#_0DB090: db $01 ; ... $01 | 0x10 - OCTOBALLOON BABY
#_0DB091: db $05 ; ... $05 | 0x11 - HINOX
#_0DB092: db $04 ; ... $04 | 0x12 - MOBLIN
#_0DB093: db $01 ; ... $01 | 0x13 - MINI HELMASAUR
#_0DB094: db $80 ; h.. $00 | 0x14 - THIEVES TOWN GRATE
#_0DB095: db $04 ; ... $04 | 0x15 - ANTIFAIRY
#_0DB096: db $A2 ; h.w $02 | 0x16 - SAHASRAHLA / AGINAH
#_0DB097: db $83 ; h.. $03 | 0x17 - HOARDER
#_0DB098: db $04 ; ... $04 | 0x18 - MINI MOLDORM
#_0DB099: db $02 ; ... $02 | 0x19 - POE
#_0DB09A: db $82 ; h.. $02 | 0x1A - SMITHY
#_0DB09B: db $62 ; .mw $02 | 0x1B - ARROW
#_0DB09C: db $82 ; h.. $02 | 0x1C - STATUE
#_0DB09D: db $80 ; h.. $00 | 0x1D - FLUTEQUEST
#_0DB09E: db $80 ; h.. $00 | 0x1E - CRYSTAL SWITCH
#_0DB09F: db $85 ; h.. $05 | 0x1F - SICK KID
#_0DB0A0: db $01 ; ... $01 | 0x20 - SLUGGULA
#_0DB0A1: db $A5 ; h.w $05 | 0x21 - WATER SWITCH
#_0DB0A2: db $03 ; ... $03 | 0x22 - ROPA
#_0DB0A3: db $04 ; ... $04 | 0x23 - RED BARI
#_0DB0A4: db $04 ; ... $04 | 0x24 - BLUE BARI
#_0DB0A5: db $83 ; h.. $03 | 0x25 - TALKING TREE
#_0DB0A6: db $02 ; ... $02 | 0x26 - HARDHAT BEETLE
#_0DB0A7: db $01 ; ... $01 | 0x27 - DEADROCK
#_0DB0A8: db $82 ; h.. $02 | 0x28 - DARK WORLD HINT NPC
#_0DB0A9: db $A2 ; h.w $02 | 0x29 - ADULT
#_0DB0AA: db $A2 ; h.w $02 | 0x2A - SWEEPING LADY
#_0DB0AB: db $A3 ; h.w $03 | 0x2B - HOBO
#_0DB0AC: db $AA ; h.w $0A | 0x2C - LUMBERJACKS
#_0DB0AD: db $A3 ; h.w $03 | 0x2D - TELEPATHIC TILE
#_0DB0AE: db $A4 ; h.w $04 | 0x2E - FLUTE KID
#_0DB0AF: db $82 ; h.. $02 | 0x2F - RACE GAME LADY
#_0DB0B0: db $82 ; h.. $02 | 0x30 - RACE GAME GUY
#_0DB0B1: db $83 ; h.. $03 | 0x31 - FORTUNE TELLER
#_0DB0B2: db $82 ; h.. $02 | 0x32 - ARGUE BROS
#_0DB0B3: db $80 ; h.. $00 | 0x33 - RUPEE PULL
#_0DB0B4: db $82 ; h.. $02 | 0x34 - YOUNG SNITCH
#_0DB0B5: db $82 ; h.. $02 | 0x35 - INNKEEPER
#_0DB0B6: db $A5 ; h.w $05 | 0x36 - WITCH
#_0DB0B7: db $80 ; h.. $00 | 0x37 - WATERFALL
#_0DB0B8: db $A4 ; h.w $04 | 0x38 - EYE STATUE
#_0DB0B9: db $82 ; h.. $02 | 0x39 - LOCKSMITH
#_0DB0BA: db $81 ; h.. $01 | 0x3A - MAGIC BAT
#_0DB0BB: db $82 ; h.. $02 | 0x3B - BONK ITEM
#_0DB0BC: db $82 ; h.. $02 | 0x3C - KID IN KAK
#_0DB0BD: db $82 ; h.. $02 | 0x3D - OLD SNITCH
#_0DB0BE: db $81 ; h.. $01 | 0x3E - HOARDER
#_0DB0BF: db $06 ; ... $06 | 0x3F - TUTORIAL GUARD
#_0DB0C0: db $08 ; ... $08 | 0x40 - LIGHTNING GATE
#_0DB0C1: db $08 ; ... $08 | 0x41 - BLUE GUARD
#_0DB0C2: db $08 ; ... $08 | 0x42 - GREEN GUARD
#_0DB0C3: db $08 ; ... $08 | 0x43 - RED SPEAR GUARD
#_0DB0C4: db $06 ; ... $06 | 0x44 - BLUESAIN BOLT
#_0DB0C5: db $08 ; ... $08 | 0x45 - USAIN BOLT
#_0DB0C6: db $08 ; ... $08 | 0x46 - BLUE ARCHER
#_0DB0C7: db $08 ; ... $08 | 0x47 - GREEN BUSH GUARD
#_0DB0C8: db $06 ; ... $06 | 0x48 - RED JAVELIN GUARD
#_0DB0C9: db $07 ; ... $07 | 0x49 - RED BUSH GUARD
#_0DB0CA: db $07 ; ... $07 | 0x4A - BOMB GUARD
#_0DB0CB: db $02 ; ... $02 | 0x4B - GREEN KNIFE GUARD
#_0DB0CC: db $02 ; ... $02 | 0x4C - GELDMAN
#_0DB0CD: db $22 ; ..w $02 | 0x4D - TOPPO
#_0DB0CE: db $01 ; ... $01 | 0x4E - POPO
#_0DB0CF: db $01 ; ... $01 | 0x4F - POPO
#_0DB0D0: db $20 ; ..w $00 | 0x50 - CANNONBALL
#_0DB0D1: db $82 ; h.. $02 | 0x51 - ARMOS STATUE
#_0DB0D2: db $07 ; ... $07 | 0x52 - KING ZORA
#_0DB0D3: db $85 ; h.. $05 | 0x53 - ARMOS KNIGHT
#_0DB0D4: db $0F ; ... $0F | 0x54 - LANMOLAS
#_0DB0D5: db $21 ; ..w $01 | 0x55 - ZORA / FIREBALL
#_0DB0D6: db $05 ; ... $05 | 0x56 - ZORA
#_0DB0D7: db $83 ; h.. $03 | 0x57 - DESERT STATUE
#_0DB0D8: db $02 ; ... $02 | 0x58 - CRAB
#_0DB0D9: db $01 ; ... $01 | 0x59 - LOST WOODS BIRD
#_0DB0DA: db $01 ; ... $01 | 0x5A - LOST WOODS SQUIRREL
#_0DB0DB: db $01 ; ... $01 | 0x5B - SPARK
#_0DB0DC: db $01 ; ... $01 | 0x5C - SPARK
#_0DB0DD: db $07 ; ... $07 | 0x5D - ROLLER VERTICAL DOWN FIRST
#_0DB0DE: db $07 ; ... $07 | 0x5E - ROLLER VERTICAL UP FIRST
#_0DB0DF: db $07 ; ... $07 | 0x5F - ROLLER HORIZONTAL RIGHT FIRST
#_0DB0E0: db $07 ; ... $07 | 0x60 - ROLLER HORIZONTAL LEFT FIRST
#_0DB0E1: db $00 ; ... $00 | 0x61 - BEAMOS
#_0DB0E2: db $85 ; h.. $05 | 0x62 - MASTERSWORD
#_0DB0E3: db $83 ; h.. $03 | 0x63 - DEBIRANDO PIT
#_0DB0E4: db $03 ; ... $03 | 0x64 - DEBIRANDO
#_0DB0E5: db $A4 ; h.w $04 | 0x65 - ARCHERY GUY
#_0DB0E6: db $00 ; ... $00 | 0x66 - WALL CANNON VERTICAL LEFT
#_0DB0E7: db $00 ; ... $00 | 0x67 - WALL CANNON VERTICAL RIGHT
#_0DB0E8: db $00 ; ... $00 | 0x68 - WALL CANNON HORIZONTAL TOP
#_0DB0E9: db $00 ; ... $00 | 0x69 - WALL CANNON HORIZONTAL BOTTOM
#_0DB0EA: db $09 ; ... $09 | 0x6A - BALL N CHAIN
#_0DB0EB: db $04 ; ... $04 | 0x6B - CANNONBALL / CANNON TROOPER
#_0DB0EC: db $A0 ; h.w $00 | 0x6C - MIRROR PORTAL
#_0DB0ED: db $00 ; ... $00 | 0x6D - RAT / CRICKET
#_0DB0EE: db $01 ; ... $01 | 0x6E - SNAKE
#_0DB0EF: db $00 ; ... $00 | 0x6F - KEESE
#_0DB0F0: db $00 ; ... $00 | 0x70 - KING HELMASAUR FIREBALL
#_0DB0F1: db $03 ; ... $03 | 0x71 - LEEVER
#_0DB0F2: db $8B ; h.. $0B | 0x72 - FAERIE POND TRIGGER
#_0DB0F3: db $86 ; h.. $06 | 0x73 - UNCLE / PRIEST / MANTLE
#_0DB0F4: db $C2 ; hm. $02 | 0x74 - RUNNING MAN
#_0DB0F5: db $82 ; h.. $02 | 0x75 - BOTTLE MERCHANT
#_0DB0F6: db $81 ; h.. $01 | 0x76 - ZELDA
#_0DB0F7: db $04 ; ... $04 | 0x77 - ANTIFAIRY
#_0DB0F8: db $82 ; h.. $02 | 0x78 - SAHASRAHLAS WIFE
#_0DB0F9: db $21 ; ..w $01 | 0x79 - BEE
#_0DB0FA: db $06 ; ... $06 | 0x7A - AGAHNIM
#_0DB0FB: db $03 ; ... $03 | 0x7B - AGAHNIMS BALLS
#_0DB0FC: db $01 ; ... $01 | 0x7C - GREEN STALFOS
#_0DB0FD: db $03 ; ... $03 | 0x7D - BIG SPIKE
#_0DB0FE: db $03 ; ... $03 | 0x7E - FIREBAR CLOCKWISE
#_0DB0FF: db $03 ; ... $03 | 0x7F - FIREBAR COUNTERCLOCKWISE
#_0DB100: db $00 ; ... $00 | 0x80 - FIRESNAKE
#_0DB101: db $00 ; ... $00 | 0x81 - HOVER
#_0DB102: db $04 ; ... $04 | 0x82 - ANTIFAIRY CIRCLE
#_0DB103: db $05 ; ... $05 | 0x83 - GREEN EYEGORE / GREEN MIMIC
#_0DB104: db $05 ; ... $05 | 0x84 - RED EYEGORE / RED MIMIC
#_0DB105: db $03 ; ... $03 | 0x85 - YELLOW STALFOS
#_0DB106: db $01 ; ... $01 | 0x86 - KODONGO
#_0DB107: db $02 ; ... $02 | 0x87 - KONDONGO FIRE
#_0DB108: db $00 ; ... $00 | 0x88 - MOTHULA
#_0DB109: db $00 ; ... $00 | 0x89 - MOTHULA BEAM
#_0DB10A: db $00 ; ... $00 | 0x8A - SPIKE BLOCK
#_0DB10B: db $02 ; ... $02 | 0x8B - GIBDO
#_0DB10C: db $07 ; ... $07 | 0x8C - ARRGHUS
#_0DB10D: db $00 ; ... $00 | 0x8D - ARRGHI
#_0DB10E: db $01 ; ... $01 | 0x8E - TERRORPIN
#_0DB10F: db $01 ; ... $01 | 0x8F - BLOB
#_0DB110: db $87 ; h.. $07 | 0x90 - WALLMASTER
#_0DB111: db $06 ; ... $06 | 0x91 - STALFOS KNIGHT
#_0DB112: db $00 ; ... $00 | 0x92 - KING HELMASAUR
#_0DB113: db $83 ; h.. $03 | 0x93 - BUMPER
#_0DB114: db $02 ; ... $02 | 0x94 - PIROGUSU
#_0DB115: db $22 ; ..w $02 | 0x95 - LASER EYE LEFT
#_0DB116: db $22 ; ..w $02 | 0x96 - LASER EYE RIGHT
#_0DB117: db $22 ; ..w $02 | 0x97 - LASER EYE TOP
#_0DB118: db $22 ; ..w $02 | 0x98 - LASER EYE BOTTOM
#_0DB119: db $04 ; ... $04 | 0x99 - PENGATOR
#_0DB11A: db $03 ; ... $03 | 0x9A - KYAMERON
#_0DB11B: db $05 ; ... $05 | 0x9B - WIZZROBE
#_0DB11C: db $01 ; ... $01 | 0x9C - ZORO
#_0DB11D: db $01 ; ... $01 | 0x9D - BABASU
#_0DB11E: db $04 ; ... $04 | 0x9E - HAUNTED GROVE OSTRITCH
#_0DB11F: db $01 ; ... $01 | 0x9F - HAUNTED GROVE RABBIT
#_0DB120: db $02 ; ... $02 | 0xA0 - HAUNTED GROVE BIRD
#_0DB121: db $08 ; ... $08 | 0xA1 - FREEZOR
#_0DB122: db $08 ; ... $08 | 0xA2 - KHOLDSTARE
#_0DB123: db $80 ; h.. $00 | 0xA3 - KHOLDSTARE SHELL
#_0DB124: db $21 ; ..w $01 | 0xA4 - FALLING ICE
#_0DB125: db $03 ; ... $03 | 0xA5 - BLUE ZAZAK
#_0DB126: db $03 ; ... $03 | 0xA6 - RED ZAZAK
#_0DB127: db $03 ; ... $03 | 0xA7 - STALFOS
#_0DB128: db $02 ; ... $02 | 0xA8 - GREEN ZIRRO
#_0DB129: db $02 ; ... $02 | 0xA9 - BLUE ZIRRO
#_0DB12A: db $08 ; ... $08 | 0xAA - PIKIT
#_0DB12B: db $8F ; h.. $0F | 0xAB - CRYSTAL MAIDEN
#_0DB12C: db $A1 ; h.w $01 | 0xAC - APPLE
#_0DB12D: db $81 ; h.. $01 | 0xAD - OLD MAN
#_0DB12E: db $80 ; h.. $00 | 0xAE - PIPE DOWN
#_0DB12F: db $80 ; h.. $00 | 0xAF - PIPE UP
#_0DB130: db $80 ; h.. $00 | 0xB0 - PIPE RIGHT
#_0DB131: db $80 ; h.. $00 | 0xB1 - PIPE LEFT
#_0DB132: db $A1 ; h.w $01 | 0xB2 - GOOD BEE
#_0DB133: db $80 ; h.. $00 | 0xB3 - PEDESTAL PLAQUE
#_0DB134: db $81 ; h.. $01 | 0xB4 - PURPLE CHEST
#_0DB135: db $81 ; h.. $01 | 0xB5 - BOMB SHOP GUY
#_0DB136: db $86 ; h.. $06 | 0xB6 - KIKI
#_0DB137: db $81 ; h.. $01 | 0xB7 - BLIND MAIDEN
#_0DB138: db $82 ; h.. $02 | 0xB8 - DIALOGUE TESTER
#_0DB139: db $82 ; h.. $02 | 0xB9 - BULLY / PINK BALL
#_0DB13A: db $80 ; h.. $00 | 0xBA - WHIRLPOOL
#_0DB13B: db $80 ; h.. $00 | 0xBB - SHOPKEEPER / CHEST GAME GUY
#_0DB13C: db $83 ; h.. $03 | 0xBC - DRUNKARD
#_0DB13D: db $06 ; ... $06 | 0xBD - VITREOUS
#_0DB13E: db $00 ; ... $00 | 0xBE - VITREOUS SMALL EYE
#_0DB13F: db $00 ; ... $00 | 0xBF - LIGHTNING
#_0DB140: db $05 ; ... $05 | 0xC0 - CATFISH
#_0DB141: db $04 ; ... $04 | 0xC1 - CUTSCENE AGAHNIM
#_0DB142: db $06 ; ... $06 | 0xC2 - BOULDER
#_0DB143: db $05 ; ... $05 | 0xC3 - GIBO
#_0DB144: db $02 ; ... $02 | 0xC4 - THIEF
#_0DB145: db $00 ; ... $00 | 0xC5 - MEDUSA
#_0DB146: db $00 ; ... $00 | 0xC6 - 4WAY SHOOTER
#_0DB147: db $05 ; ... $05 | 0xC7 - POKEY
#_0DB148: db $04 ; ... $04 | 0xC8 - BIG FAERIE
#_0DB149: db $04 ; ... $04 | 0xC9 - TEKTITE / FIREBAT
#_0DB14A: db $07 ; ... $07 | 0xCA - CHAIN CHOMP
#_0DB14B: db $0B ; ... $0B | 0xCB - TRINEXX ROCK HEAD
#_0DB14C: db $0C ; ... $0C | 0xCC - TRINEXX FIRE HEAD
#_0DB14D: db $0C ; ... $0C | 0xCD - TRINEXX ICE HEAD
#_0DB14E: db $06 ; ... $06 | 0xCE - BLIND
#_0DB14F: db $06 ; ... $06 | 0xCF - SWAMOLA
#_0DB150: db $03 ; ... $03 | 0xD0 - LYNEL
#_0DB151: db $A4 ; h.w $04 | 0xD1 - BUNNYBEAM / SMOKE
#_0DB152: db $04 ; ... $04 | 0xD2 - FLOPPING FISH
#_0DB153: db $82 ; h.. $02 | 0xD3 - STAL
#_0DB154: db $81 ; h.. $01 | 0xD4 - LANDMINE
#_0DB155: db $83 ; h.. $03 | 0xD5 - DIG GAME GUY
#_0DB156: db $10 ; ... $10 | 0xD6 - GANON
#_0DB157: db $10 ; ... $10 | 0xD7 - GANON
#_0DB158: db $81 ; h.. $01 | 0xD8 - HEART
#_0DB159: db $82 ; h.. $02 | 0xD9 - GREEN RUPEE
#_0DB15A: db $82 ; h.. $02 | 0xDA - BLUE RUPEE
#_0DB15B: db $82 ; h.. $02 | 0xDB - RED RUPEE
#_0DB15C: db $83 ; h.. $03 | 0xDC - BOMB REFILL 1
#_0DB15D: db $83 ; h.. $03 | 0xDD - BOMB REFILL 4
#_0DB15E: db $83 ; h.. $03 | 0xDE - BOMB REFILL 8
#_0DB15F: db $81 ; h.. $01 | 0xDF - SMALL MAGIC DECANTER
#_0DB160: db $82 ; h.. $02 | 0xE0 - LARGE MAGIC DECANTER
#_0DB161: db $83 ; h.. $03 | 0xE1 - ARROW REFILL 5
#_0DB162: db $83 ; h.. $03 | 0xE2 - ARROW REFILL 10
#_0DB163: db $81 ; h.. $01 | 0xE3 - FAERIE
#_0DB164: db $82 ; h.. $02 | 0xE4 - SMALL KEY
#_0DB165: db $81 ; h.. $01 | 0xE5 - BIG KEY
#_0DB166: db $82 ; h.. $02 | 0xE6 - STOLEN SHIELD
#_0DB167: db $A0 ; h.w $00 | 0xE7 - MUSHROOM
#_0DB168: db $A1 ; h.w $01 | 0xE8 - FAKE MASTER SWORD
#_0DB169: db $A3 ; h.w $03 | 0xE9 - MAGIC SHOP ASSISTANT
#_0DB16A: db $A1 ; h.w $01 | 0xEA - HEART CONTAINER
#_0DB16B: db $A1 ; h.w $01 | 0xEB - HEART PIECE
#_0DB16C: db $A1 ; h.w $01 | 0xEC - THROWN ITEM
#_0DB16D: db $83 ; h.. $03 | 0xED - SOMARIA PLATFORM
#_0DB16E: db $85 ; h.. $05 | 0xEE - CASTLE MANTLE
#_0DB16F: db $83 ; h.. $03 | 0xEF - UNUSED SOMARIA PLATFORM
#_0DB170: db $83 ; h.. $03 | 0xF0 - UNUSED SOMARIA PLATFORM
#_0DB171: db $83 ; h.. $03 | 0xF1 - UNUSED SOMARIA PLATFORM
#_0DB172: db $83 ; h.. $03 | 0xF2 - MEDALLION TABLET

;===================================================================================================
; Just a straight up number
;===================================================================================================
SpriteData_Health:
#_0DB173: db  12 ; 0x00 - RAVEN
#_0DB174: db   6 ; 0x01 - VULTURE
#_0DB175: db 255 ; 0x02 - STALFOS HEAD
#_0DB176: db   3 ; 0x03 - NULL
#_0DB177: db   3 ; 0x04 - CORRECT PULL SWITCH
#_0DB178: db   3 ; 0x05 - UNUSED CORRECT PULL SWITCH
#_0DB179: db   3 ; 0x06 - WRONG PULL SWITCH
#_0DB17A: db   3 ; 0x07 - UNUSED WRONG PULL SWITCH
#_0DB17B: db   2 ; 0x08 - OCTOROK
#_0DB17C: db  12 ; 0x09 - MOLDORM
#_0DB17D: db   4 ; 0x0A - OCTOROK 4WAY
#_0DB17E: db 255 ; 0x0B - CUCCO
#_0DB17F: db   0 ; 0x0C - OCTOROK STONE
#_0DB180: db   3 ; 0x0D - BUZZBLOB
#_0DB181: db  12 ; 0x0E - SNAPDRAGON
#_0DB182: db   2 ; 0x0F - OCTOBALLOON
#_0DB183: db   0 ; 0x10 - OCTOBALLOON BABY
#_0DB184: db  20 ; 0x11 - HINOX
#_0DB185: db   4 ; 0x12 - MOBLIN
#_0DB186: db   4 ; 0x13 - MINI HELMASAUR
#_0DB187: db   0 ; 0x14 - THIEVES TOWN GRATE
#_0DB188: db 255 ; 0x15 - ANTIFAIRY
#_0DB189: db   0 ; 0x16 - SAHASRAHLA / AGINAH
#_0DB18A: db   2 ; 0x17 - HOARDER
#_0DB18B: db   3 ; 0x18 - MINI MOLDORM
#_0DB18C: db   8 ; 0x19 - POE
#_0DB18D: db   0 ; 0x1A - SMITHY
#_0DB18E: db   0 ; 0x1B - ARROW
#_0DB18F: db   0 ; 0x1C - STATUE
#_0DB190: db   0 ; 0x1D - FLUTEQUEST
#_0DB191: db   0 ; 0x1E - CRYSTAL SWITCH
#_0DB192: db   0 ; 0x1F - SICK KID
#_0DB193: db   8 ; 0x20 - SLUGGULA
#_0DB194: db   3 ; 0x21 - WATER SWITCH
#_0DB195: db   8 ; 0x22 - ROPA
#_0DB196: db   2 ; 0x23 - RED BARI
#_0DB197: db   2 ; 0x24 - BLUE BARI
#_0DB198: db   0 ; 0x25 - TALKING TREE
#_0DB199: db   3 ; 0x26 - HARDHAT BEETLE
#_0DB19A: db 255 ; 0x27 - DEADROCK
#_0DB19B: db   0 ; 0x28 - DARK WORLD HINT NPC
#_0DB19C: db   3 ; 0x29 - ADULT
#_0DB19D: db   3 ; 0x2A - SWEEPING LADY
#_0DB19E: db   3 ; 0x2B - HOBO
#_0DB19F: db   3 ; 0x2C - LUMBERJACKS
#_0DB1A0: db   3 ; 0x2D - TELEPATHIC TILE
#_0DB1A1: db   3 ; 0x2E - FLUTE KID
#_0DB1A2: db   3 ; 0x2F - RACE GAME LADY
#_0DB1A3: db   3 ; 0x30 - RACE GAME GUY
#_0DB1A4: db   0 ; 0x31 - FORTUNE TELLER
#_0DB1A5: db   3 ; 0x32 - ARGUE BROS
#_0DB1A6: db   0 ; 0x33 - RUPEE PULL
#_0DB1A7: db   3 ; 0x34 - YOUNG SNITCH
#_0DB1A8: db   3 ; 0x35 - INNKEEPER
#_0DB1A9: db   3 ; 0x36 - WITCH
#_0DB1AA: db   0 ; 0x37 - WATERFALL
#_0DB1AB: db   3 ; 0x38 - EYE STATUE
#_0DB1AC: db   0 ; 0x39 - LOCKSMITH
#_0DB1AD: db   0 ; 0x3A - MAGIC BAT
#_0DB1AE: db   0 ; 0x3B - BONK ITEM
#_0DB1AF: db   0 ; 0x3C - KID IN KAK
#_0DB1B0: db   3 ; 0x3D - OLD SNITCH
#_0DB1B1: db   2 ; 0x3E - HOARDER
#_0DB1B2: db 255 ; 0x3F - TUTORIAL GUARD
#_0DB1B3: db   2 ; 0x40 - LIGHTNING GATE
#_0DB1B4: db   6 ; 0x41 - BLUE GUARD
#_0DB1B5: db   4 ; 0x42 - GREEN GUARD
#_0DB1B6: db   8 ; 0x43 - RED SPEAR GUARD
#_0DB1B7: db   6 ; 0x44 - BLUESAIN BOLT
#_0DB1B8: db   8 ; 0x45 - USAIN BOLT
#_0DB1B9: db   6 ; 0x46 - BLUE ARCHER
#_0DB1BA: db   4 ; 0x47 - GREEN BUSH GUARD
#_0DB1BB: db   8 ; 0x48 - RED JAVELIN GUARD
#_0DB1BC: db   8 ; 0x49 - RED BUSH GUARD
#_0DB1BD: db   8 ; 0x4A - BOMB GUARD
#_0DB1BE: db   4 ; 0x4B - GREEN KNIFE GUARD
#_0DB1BF: db   4 ; 0x4C - GELDMAN
#_0DB1C0: db   2 ; 0x4D - TOPPO
#_0DB1C1: db   2 ; 0x4E - POPO
#_0DB1C2: db   2 ; 0x4F - POPO
#_0DB1C3: db 255 ; 0x50 - CANNONBALL
#_0DB1C4: db   8 ; 0x51 - ARMOS STATUE
#_0DB1C5: db 255 ; 0x52 - KING ZORA
#_0DB1C6: db  48 ; 0x53 - ARMOS KNIGHT
#_0DB1C7: db  16 ; 0x54 - LANMOLAS
#_0DB1C8: db   8 ; 0x55 - ZORA / FIREBALL
#_0DB1C9: db   8 ; 0x56 - ZORA
#_0DB1CA: db 255 ; 0x57 - DESERT STATUE
#_0DB1CB: db   2 ; 0x58 - CRAB
#_0DB1CC: db   0 ; 0x59 - LOST WOODS BIRD
#_0DB1CD: db   0 ; 0x5A - LOST WOODS SQUIRREL
#_0DB1CE: db 255 ; 0x5B - SPARK
#_0DB1CF: db 255 ; 0x5C - SPARK
#_0DB1D0: db 255 ; 0x5D - ROLLER VERTICAL DOWN FIRST
#_0DB1D1: db 255 ; 0x5E - ROLLER VERTICAL UP FIRST
#_0DB1D2: db 255 ; 0x5F - ROLLER HORIZONTAL RIGHT FIRST
#_0DB1D3: db 255 ; 0x60 - ROLLER HORIZONTAL LEFT FIRST
#_0DB1D4: db 255 ; 0x61 - BEAMOS
#_0DB1D5: db 255 ; 0x62 - MASTERSWORD
#_0DB1D6: db 255 ; 0x63 - DEBIRANDO PIT
#_0DB1D7: db   4 ; 0x64 - DEBIRANDO
#_0DB1D8: db   4 ; 0x65 - ARCHERY GUY
#_0DB1D9: db 255 ; 0x66 - WALL CANNON VERTICAL LEFT
#_0DB1DA: db 255 ; 0x67 - WALL CANNON VERTICAL RIGHT
#_0DB1DB: db 255 ; 0x68 - WALL CANNON HORIZONTAL TOP
#_0DB1DC: db 255 ; 0x69 - WALL CANNON HORIZONTAL BOTTOM
#_0DB1DD: db  16 ; 0x6A - BALL N CHAIN
#_0DB1DE: db   3 ; 0x6B - CANNONBALL / CANNON TROOPER
#_0DB1DF: db   0 ; 0x6C - MIRROR PORTAL
#_0DB1E0: db   2 ; 0x6D - RAT / CRICKET
#_0DB1E1: db   4 ; 0x6E - SNAKE
#_0DB1E2: db   1 ; 0x6F - KEESE
#_0DB1E3: db 255 ; 0x70 - KING HELMASAUR FIREBALL
#_0DB1E4: db   4 ; 0x71 - LEEVER
#_0DB1E5: db 255 ; 0x72 - FAERIE POND TRIGGER
#_0DB1E6: db   0 ; 0x73 - UNCLE / PRIEST / MANTLE
#_0DB1E7: db   0 ; 0x74 - RUNNING MAN
#_0DB1E8: db   0 ; 0x75 - BOTTLE MERCHANT
#_0DB1E9: db   0 ; 0x76 - ZELDA
#_0DB1EA: db 255 ; 0x77 - ANTIFAIRY
#_0DB1EB: db   0 ; 0x78 - SAHASRAHLAS WIFE
#_0DB1EC: db   0 ; 0x79 - BEE
#_0DB1ED: db  96 ; 0x7A - AGAHNIM
#_0DB1EE: db 255 ; 0x7B - AGAHNIMS BALLS
#_0DB1EF: db  24 ; 0x7C - GREEN STALFOS
#_0DB1F0: db 255 ; 0x7D - BIG SPIKE
#_0DB1F1: db 255 ; 0x7E - FIREBAR CLOCKWISE
#_0DB1F2: db 255 ; 0x7F - FIREBAR COUNTERCLOCKWISE
#_0DB1F3: db   3 ; 0x80 - FIRESNAKE
#_0DB1F4: db   4 ; 0x81 - HOVER
#_0DB1F5: db 255 ; 0x82 - ANTIFAIRY CIRCLE
#_0DB1F6: db  16 ; 0x83 - GREEN EYEGORE / GREEN MIMIC
#_0DB1F7: db   8 ; 0x84 - RED EYEGORE / RED MIMIC
#_0DB1F8: db   8 ; 0x85 - YELLOW STALFOS
#_0DB1F9: db   0 ; 0x86 - KODONGO
#_0DB1FA: db 255 ; 0x87 - KONDONGO FIRE
#_0DB1FB: db  32 ; 0x88 - MOTHULA
#_0DB1FC: db  32 ; 0x89 - MOTHULA BEAM
#_0DB1FD: db  32 ; 0x8A - SPIKE BLOCK
#_0DB1FE: db  32 ; 0x8B - GIBDO
#_0DB1FF: db  32 ; 0x8C - ARRGHUS
#_0DB200: db   8 ; 0x8D - ARRGHI
#_0DB201: db   8 ; 0x8E - TERRORPIN
#_0DB202: db   4 ; 0x8F - BLOB
#_0DB203: db   8 ; 0x90 - WALLMASTER
#_0DB204: db  64 ; 0x91 - STALFOS KNIGHT
#_0DB205: db  48 ; 0x92 - KING HELMASAUR
#_0DB206: db 255 ; 0x93 - BUMPER
#_0DB207: db   2 ; 0x94 - PIROGUSU
#_0DB208: db 255 ; 0x95 - LASER EYE LEFT
#_0DB209: db 255 ; 0x96 - LASER EYE RIGHT
#_0DB20A: db 255 ; 0x97 - LASER EYE TOP
#_0DB20B: db 255 ; 0x98 - LASER EYE BOTTOM
#_0DB20C: db  16 ; 0x99 - PENGATOR
#_0DB20D: db   4 ; 0x9A - KYAMERON
#_0DB20E: db   2 ; 0x9B - WIZZROBE
#_0DB20F: db   4 ; 0x9C - ZORO
#_0DB210: db   4 ; 0x9D - BABASU
#_0DB211: db   8 ; 0x9E - HAUNTED GROVE OSTRITCH
#_0DB212: db   8 ; 0x9F - HAUNTED GROVE RABBIT
#_0DB213: db   8 ; 0xA0 - HAUNTED GROVE BIRD
#_0DB214: db  16 ; 0xA1 - FREEZOR
#_0DB215: db  64 ; 0xA2 - KHOLDSTARE
#_0DB216: db  64 ; 0xA3 - KHOLDSTARE SHELL
#_0DB217: db   8 ; 0xA4 - FALLING ICE
#_0DB218: db   4 ; 0xA5 - BLUE ZAZAK
#_0DB219: db   8 ; 0xA6 - RED ZAZAK
#_0DB21A: db   4 ; 0xA7 - STALFOS
#_0DB21B: db   4 ; 0xA8 - GREEN ZIRRO
#_0DB21C: db   8 ; 0xA9 - BLUE ZIRRO
#_0DB21D: db  12 ; 0xAA - PIKIT
#_0DB21E: db  16 ; 0xAB - CRYSTAL MAIDEN
#_0DB21F: db   0 ; 0xAC - APPLE
#_0DB220: db   0 ; 0xAD - OLD MAN
#_0DB221: db   0 ; 0xAE - PIPE DOWN
#_0DB222: db   0 ; 0xAF - PIPE UP
#_0DB223: db   0 ; 0xB0 - PIPE RIGHT
#_0DB224: db   0 ; 0xB1 - PIPE LEFT
#_0DB225: db   0 ; 0xB2 - GOOD BEE
#_0DB226: db   0 ; 0xB3 - PEDESTAL PLAQUE
#_0DB227: db   0 ; 0xB4 - PURPLE CHEST
#_0DB228: db   0 ; 0xB5 - BOMB SHOP GUY
#_0DB229: db   0 ; 0xB6 - KIKI
#_0DB22A: db   0 ; 0xB7 - BLIND MAIDEN
#_0DB22B: db   0 ; 0xB8 - DIALOGUE TESTER
#_0DB22C: db   0 ; 0xB9 - BULLY / PINK BALL
#_0DB22D: db   0 ; 0xBA - WHIRLPOOL
#_0DB22E: db   0 ; 0xBB - SHOPKEEPER / CHEST GAME GUY
#_0DB22F: db   0 ; 0xBC - DRUNKARD
#_0DB230: db 128 ; 0xBD - VITREOUS
#_0DB231: db  48 ; 0xBE - VITREOUS SMALL EYE
#_0DB232: db 255 ; 0xBF - LIGHTNING
#_0DB233: db 255 ; 0xC0 - CATFISH
#_0DB234: db 255 ; 0xC1 - CUTSCENE AGAHNIM
#_0DB235: db 255 ; 0xC2 - BOULDER
#_0DB236: db   8 ; 0xC3 - GIBO
#_0DB237: db   0 ; 0xC4 - THIEF
#_0DB238: db   0 ; 0xC5 - MEDUSA
#_0DB239: db   0 ; 0xC6 - 4WAY SHOOTER
#_0DB23A: db  32 ; 0xC7 - POKEY
#_0DB23B: db   0 ; 0xC8 - BIG FAERIE
#_0DB23C: db   8 ; 0xC9 - TEKTITE / FIREBAT
#_0DB23D: db   5 ; 0xCA - CHAIN CHOMP
#_0DB23E: db  40 ; 0xCB - TRINEXX ROCK HEAD
#_0DB23F: db  40 ; 0xCC - TRINEXX FIRE HEAD
#_0DB240: db  40 ; 0xCD - TRINEXX ICE HEAD
#_0DB241: db  90 ; 0xCE - BLIND
#_0DB242: db  16 ; 0xCF - SWAMOLA
#_0DB243: db  24 ; 0xD0 - LYNEL
#_0DB244: db  64 ; 0xD1 - BUNNYBEAM / SMOKE
#_0DB245: db   0 ; 0xD2 - FLOPPING FISH
#_0DB246: db   4 ; 0xD3 - STAL
#_0DB247: db   0 ; 0xD4 - LANDMINE
#_0DB248: db   0 ; 0xD5 - DIG GAME GUY
#_0DB249: db 255 ; 0xD6 - GANON
#_0DB24A: db 255 ; 0xD7 - GANON
#_0DB24B: db   0 ; 0xD8 - HEART
#_0DB24C: db   0 ; 0xD9 - GREEN RUPEE
#_0DB24D: db   0 ; 0xDA - BLUE RUPEE
#_0DB24E: db   0 ; 0xDB - RED RUPEE
#_0DB24F: db   0 ; 0xDC - BOMB REFILL 1
#_0DB250: db   0 ; 0xDD - BOMB REFILL 4
#_0DB251: db   0 ; 0xDE - BOMB REFILL 8
#_0DB252: db   0 ; 0xDF - SMALL MAGIC DECANTER
#_0DB253: db   0 ; 0xE0 - LARGE MAGIC DECANTER
#_0DB254: db   0 ; 0xE1 - ARROW REFILL 5
#_0DB255: db   0 ; 0xE2 - ARROW REFILL 10
#_0DB256: db   0 ; 0xE3 - FAERIE
#_0DB257: db   0 ; 0xE4 - SMALL KEY
#_0DB258: db   0 ; 0xE5 - BIG KEY
#_0DB259: db   0 ; 0xE6 - STOLEN SHIELD
#_0DB25A: db   0 ; 0xE7 - MUSHROOM
#_0DB25B: db   0 ; 0xE8 - FAKE MASTER SWORD
#_0DB25C: db   0 ; 0xE9 - MAGIC SHOP ASSISTANT
#_0DB25D: db   0 ; 0xEA - HEART CONTAINER
#_0DB25E: db   0 ; 0xEB - HEART PIECE
#_0DB25F: db   0 ; 0xEC - THROWN ITEM
#_0DB260: db   0 ; 0xED - SOMARIA PLATFORM
#_0DB261: db   0 ; 0xEE - CASTLE MANTLE
#_0DB262: db   0 ; 0xEF - UNUSED SOMARIA PLATFORM
#_0DB263: db   0 ; 0xF0 - UNUSED SOMARIA PLATFORM
#_0DB264: db   0 ; 0xF1 - UNUSED SOMARIA PLATFORM
#_0DB265: db   0 ; 0xF2 - MEDALLION TABLET

;===================================================================================================
; tzpd bbbb
;   t - ignore collision when recoiling
;   z - high priority target for bees
;   p - immune to powder
;   d - not deleted by boss sprite prep
;   b - bump damage class
;===================================================================================================
SpriteData_Bump:
#_0DB266: db $83 ; t... $3 | 0x00 - RAVEN
#_0DB267: db $83 ; t... $3 | 0x01 - VULTURE
#_0DB268: db $81 ; t... $1 | 0x02 - STALFOS HEAD
#_0DB269: db $02 ; .... $2 | 0x03 - NULL
#_0DB26A: db $02 ; .... $2 | 0x04 - CORRECT PULL SWITCH
#_0DB26B: db $02 ; .... $2 | 0x05 - UNUSED CORRECT PULL SWITCH
#_0DB26C: db $02 ; .... $2 | 0x06 - WRONG PULL SWITCH
#_0DB26D: db $02 ; .... $2 | 0x07 - UNUSED WRONG PULL SWITCH
#_0DB26E: db $01 ; .... $1 | 0x08 - OCTOROK
#_0DB26F: db $13 ; ...d $3 | 0x09 - MOLDORM
#_0DB270: db $01 ; .... $1 | 0x0A - OCTOROK 4WAY
#_0DB271: db $01 ; .... $1 | 0x0B - CUCCO
#_0DB272: db $01 ; .... $1 | 0x0C - OCTOROK STONE
#_0DB273: db $01 ; .... $1 | 0x0D - BUZZBLOB
#_0DB274: db $08 ; .... $8 | 0x0E - SNAPDRAGON
#_0DB275: db $01 ; .... $1 | 0x0F - OCTOBALLOON
#_0DB276: db $01 ; .... $1 | 0x10 - OCTOBALLOON BABY
#_0DB277: db $08 ; .... $8 | 0x11 - HINOX
#_0DB278: db $05 ; .... $5 | 0x12 - MOBLIN
#_0DB279: db $03 ; .... $3 | 0x13 - MINI HELMASAUR
#_0DB27A: db $40 ; .z.. $0 | 0x14 - THIEVES TOWN GRATE
#_0DB27B: db $04 ; .... $4 | 0x15 - ANTIFAIRY
#_0DB27C: db $00 ; .... $0 | 0x16 - SAHASRAHLA / AGINAH
#_0DB27D: db $02 ; .... $2 | 0x17 - HOARDER
#_0DB27E: db $03 ; .... $3 | 0x18 - MINI MOLDORM
#_0DB27F: db $85 ; t... $5 | 0x19 - POE
#_0DB280: db $00 ; .... $0 | 0x1A - SMITHY
#_0DB281: db $01 ; .... $1 | 0x1B - ARROW
#_0DB282: db $00 ; .... $0 | 0x1C - STATUE
#_0DB283: db $40 ; .z.. $0 | 0x1D - FLUTEQUEST
#_0DB284: db $00 ; .... $0 | 0x1E - CRYSTAL SWITCH
#_0DB285: db $00 ; .... $0 | 0x1F - SICK KID
#_0DB286: db $06 ; .... $6 | 0x20 - SLUGGULA
#_0DB287: db $00 ; .... $0 | 0x21 - WATER SWITCH
#_0DB288: db $05 ; .... $5 | 0x22 - ROPA
#_0DB289: db $03 ; .... $3 | 0x23 - RED BARI
#_0DB28A: db $01 ; .... $1 | 0x24 - BLUE BARI
#_0DB28B: db $00 ; .... $0 | 0x25 - TALKING TREE
#_0DB28C: db $00 ; .... $0 | 0x26 - HARDHAT BEETLE
#_0DB28D: db $03 ; .... $3 | 0x27 - DEADROCK
#_0DB28E: db $00 ; .... $0 | 0x28 - DARK WORLD HINT NPC
#_0DB28F: db $00 ; .... $0 | 0x29 - ADULT
#_0DB290: db $00 ; .... $0 | 0x2A - SWEEPING LADY
#_0DB291: db $00 ; .... $0 | 0x2B - HOBO
#_0DB292: db $00 ; .... $0 | 0x2C - LUMBERJACKS
#_0DB293: db $00 ; .... $0 | 0x2D - TELEPATHIC TILE
#_0DB294: db $00 ; .... $0 | 0x2E - FLUTE KID
#_0DB295: db $00 ; .... $0 | 0x2F - RACE GAME LADY
#_0DB296: db $00 ; .... $0 | 0x30 - RACE GAME GUY
#_0DB297: db $00 ; .... $0 | 0x31 - FORTUNE TELLER
#_0DB298: db $00 ; .... $0 | 0x32 - ARGUE BROS
#_0DB299: db $00 ; .... $0 | 0x33 - RUPEE PULL
#_0DB29A: db $00 ; .... $0 | 0x34 - YOUNG SNITCH
#_0DB29B: db $00 ; .... $0 | 0x35 - INNKEEPER
#_0DB29C: db $00 ; .... $0 | 0x36 - WITCH
#_0DB29D: db $40 ; .z.. $0 | 0x37 - WATERFALL
#_0DB29E: db $00 ; .... $0 | 0x38 - EYE STATUE
#_0DB29F: db $00 ; .... $0 | 0x39 - LOCKSMITH
#_0DB2A0: db $00 ; .... $0 | 0x3A - MAGIC BAT
#_0DB2A1: db $00 ; .... $0 | 0x3B - BONK ITEM
#_0DB2A2: db $00 ; .... $0 | 0x3C - KID IN KAK
#_0DB2A3: db $00 ; .... $0 | 0x3D - OLD SNITCH
#_0DB2A4: db $02 ; .... $2 | 0x3E - HOARDER
#_0DB2A5: db $02 ; .... $2 | 0x3F - TUTORIAL GUARD
#_0DB2A6: db $00 ; .... $0 | 0x40 - LIGHTNING GATE
#_0DB2A7: db $01 ; .... $1 | 0x41 - BLUE GUARD
#_0DB2A8: db $01 ; .... $1 | 0x42 - GREEN GUARD
#_0DB2A9: db $03 ; .... $3 | 0x43 - RED SPEAR GUARD
#_0DB2AA: db $01 ; .... $1 | 0x44 - BLUESAIN BOLT
#_0DB2AB: db $03 ; .... $3 | 0x45 - USAIN BOLT
#_0DB2AC: db $01 ; .... $1 | 0x46 - BLUE ARCHER
#_0DB2AD: db $01 ; .... $1 | 0x47 - GREEN BUSH GUARD
#_0DB2AE: db $03 ; .... $3 | 0x48 - RED JAVELIN GUARD
#_0DB2AF: db $03 ; .... $3 | 0x49 - RED BUSH GUARD
#_0DB2B0: db $03 ; .... $3 | 0x4A - BOMB GUARD
#_0DB2B1: db $01 ; .... $1 | 0x4B - GREEN KNIFE GUARD
#_0DB2B2: db $03 ; .... $3 | 0x4C - GELDMAN
#_0DB2B3: db $01 ; .... $1 | 0x4D - TOPPO
#_0DB2B4: db $01 ; .... $1 | 0x4E - POPO
#_0DB2B5: db $01 ; .... $1 | 0x4F - POPO
#_0DB2B6: db $01 ; .... $1 | 0x50 - CANNONBALL
#_0DB2B7: db $01 ; .... $1 | 0x51 - ARMOS STATUE
#_0DB2B8: db $01 ; .... $1 | 0x52 - KING ZORA
#_0DB2B9: db $11 ; ...d $1 | 0x53 - ARMOS KNIGHT
#_0DB2BA: db $14 ; ...d $4 | 0x54 - LANMOLAS
#_0DB2BB: db $01 ; .... $1 | 0x55 - ZORA / FIREBALL
#_0DB2BC: db $01 ; .... $1 | 0x56 - ZORA
#_0DB2BD: db $02 ; .... $2 | 0x57 - DESERT STATUE
#_0DB2BE: db $05 ; .... $5 | 0x58 - CRAB
#_0DB2BF: db $00 ; .... $0 | 0x59 - LOST WOODS BIRD
#_0DB2C0: db $00 ; .... $0 | 0x5A - LOST WOODS SQUIRREL
#_0DB2C1: db $04 ; .... $4 | 0x5B - SPARK
#_0DB2C2: db $04 ; .... $4 | 0x5C - SPARK
#_0DB2C3: db $08 ; .... $8 | 0x5D - ROLLER VERTICAL DOWN FIRST
#_0DB2C4: db $08 ; .... $8 | 0x5E - ROLLER VERTICAL UP FIRST
#_0DB2C5: db $08 ; .... $8 | 0x5F - ROLLER HORIZONTAL RIGHT FIRST
#_0DB2C6: db $08 ; .... $8 | 0x60 - ROLLER HORIZONTAL LEFT FIRST
#_0DB2C7: db $04 ; .... $4 | 0x61 - BEAMOS
#_0DB2C8: db $00 ; .... $0 | 0x62 - MASTERSWORD
#_0DB2C9: db $04 ; .... $4 | 0x63 - DEBIRANDO PIT
#_0DB2CA: db $03 ; .... $3 | 0x64 - DEBIRANDO
#_0DB2CB: db $02 ; .... $2 | 0x65 - ARCHERY GUY
#_0DB2CC: db $02 ; .... $2 | 0x66 - WALL CANNON VERTICAL LEFT
#_0DB2CD: db $02 ; .... $2 | 0x67 - WALL CANNON VERTICAL RIGHT
#_0DB2CE: db $02 ; .... $2 | 0x68 - WALL CANNON HORIZONTAL TOP
#_0DB2CF: db $02 ; .... $2 | 0x69 - WALL CANNON HORIZONTAL BOTTOM
#_0DB2D0: db $03 ; .... $3 | 0x6A - BALL N CHAIN
#_0DB2D1: db $01 ; .... $1 | 0x6B - CANNONBALL / CANNON TROOPER
#_0DB2D2: db $00 ; .... $0 | 0x6C - MIRROR PORTAL
#_0DB2D3: db $00 ; .... $0 | 0x6D - RAT / CRICKET
#_0DB2D4: db $01 ; .... $1 | 0x6E - SNAKE
#_0DB2D5: db $80 ; t... $0 | 0x6F - KEESE
#_0DB2D6: db $05 ; .... $5 | 0x70 - KING HELMASAUR FIREBALL
#_0DB2D7: db $01 ; .... $1 | 0x71 - LEEVER
#_0DB2D8: db $00 ; .... $0 | 0x72 - FAERIE POND TRIGGER
#_0DB2D9: db $00 ; .... $0 | 0x73 - UNCLE / PRIEST / MANTLE
#_0DB2DA: db $00 ; .... $0 | 0x74 - RUNNING MAN
#_0DB2DB: db $40 ; .z.. $0 | 0x75 - BOTTLE MERCHANT
#_0DB2DC: db $00 ; .... $0 | 0x76 - ZELDA
#_0DB2DD: db $04 ; .... $4 | 0x77 - ANTIFAIRY
#_0DB2DE: db $00 ; .... $0 | 0x78 - SAHASRAHLAS WIFE
#_0DB2DF: db $00 ; .... $0 | 0x79 - BEE
#_0DB2E0: db $14 ; ...d $4 | 0x7A - AGAHNIM
#_0DB2E1: db $04 ; .... $4 | 0x7B - AGAHNIMS BALLS
#_0DB2E2: db $06 ; .... $6 | 0x7C - GREEN STALFOS
#_0DB2E3: db $04 ; .... $4 | 0x7D - BIG SPIKE
#_0DB2E4: db $04 ; .... $4 | 0x7E - FIREBAR CLOCKWISE
#_0DB2E5: db $04 ; .... $4 | 0x7F - FIREBAR COUNTERCLOCKWISE
#_0DB2E6: db $04 ; .... $4 | 0x80 - FIRESNAKE
#_0DB2E7: db $03 ; .... $3 | 0x81 - HOVER
#_0DB2E8: db $04 ; .... $4 | 0x82 - ANTIFAIRY CIRCLE
#_0DB2E9: db $04 ; .... $4 | 0x83 - GREEN EYEGORE / GREEN MIMIC
#_0DB2EA: db $04 ; .... $4 | 0x84 - RED EYEGORE / RED MIMIC
#_0DB2EB: db $01 ; .... $1 | 0x85 - YELLOW STALFOS
#_0DB2EC: db $04 ; .... $4 | 0x86 - KODONGO
#_0DB2ED: db $04 ; .... $4 | 0x87 - KONDONGO FIRE
#_0DB2EE: db $15 ; ...d $5 | 0x88 - MOTHULA
#_0DB2EF: db $05 ; .... $5 | 0x89 - MOTHULA BEAM
#_0DB2F0: db $04 ; .... $4 | 0x8A - SPIKE BLOCK
#_0DB2F1: db $05 ; .... $5 | 0x8B - GIBDO
#_0DB2F2: db $15 ; ...d $5 | 0x8C - ARRGHUS
#_0DB2F3: db $15 ; ...d $5 | 0x8D - ARRGHI
#_0DB2F4: db $03 ; .... $3 | 0x8E - TERRORPIN
#_0DB2F5: db $05 ; .... $5 | 0x8F - BLOB
#_0DB2F6: db $00 ; .... $0 | 0x90 - WALLMASTER
#_0DB2F7: db $05 ; .... $5 | 0x91 - STALFOS KNIGHT
#_0DB2F8: db $15 ; ...d $5 | 0x92 - KING HELMASAUR
#_0DB2F9: db $05 ; .... $5 | 0x93 - BUMPER
#_0DB2FA: db $05 ; .... $5 | 0x94 - PIROGUSU
#_0DB2FB: db $06 ; .... $6 | 0x95 - LASER EYE LEFT
#_0DB2FC: db $06 ; .... $6 | 0x96 - LASER EYE RIGHT
#_0DB2FD: db $06 ; .... $6 | 0x97 - LASER EYE TOP
#_0DB2FE: db $06 ; .... $6 | 0x98 - LASER EYE BOTTOM
#_0DB2FF: db $05 ; .... $5 | 0x99 - PENGATOR
#_0DB300: db $03 ; .... $3 | 0x9A - KYAMERON
#_0DB301: db $06 ; .... $6 | 0x9B - WIZZROBE
#_0DB302: db $05 ; .... $5 | 0x9C - ZORO
#_0DB303: db $05 ; .... $5 | 0x9D - BABASU
#_0DB304: db $03 ; .... $3 | 0x9E - HAUNTED GROVE OSTRITCH
#_0DB305: db $03 ; .... $3 | 0x9F - HAUNTED GROVE RABBIT
#_0DB306: db $03 ; .... $3 | 0xA0 - HAUNTED GROVE BIRD
#_0DB307: db $06 ; .... $6 | 0xA1 - FREEZOR
#_0DB308: db $17 ; ...d $7 | 0xA2 - KHOLDSTARE
#_0DB309: db $15 ; ...d $5 | 0xA3 - KHOLDSTARE SHELL
#_0DB30A: db $15 ; ...d $5 | 0xA4 - FALLING ICE
#_0DB30B: db $05 ; .... $5 | 0xA5 - BLUE ZAZAK
#_0DB30C: db $05 ; .... $5 | 0xA6 - RED ZAZAK
#_0DB30D: db $01 ; .... $1 | 0xA7 - STALFOS
#_0DB30E: db $85 ; t... $5 | 0xA8 - GREEN ZIRRO
#_0DB30F: db $83 ; t... $3 | 0xA9 - BLUE ZIRRO
#_0DB310: db $05 ; .... $5 | 0xAA - PIKIT
#_0DB311: db $04 ; .... $4 | 0xAB - CRYSTAL MAIDEN
#_0DB312: db $00 ; .... $0 | 0xAC - APPLE
#_0DB313: db $00 ; .... $0 | 0xAD - OLD MAN
#_0DB314: db $00 ; .... $0 | 0xAE - PIPE DOWN
#_0DB315: db $00 ; .... $0 | 0xAF - PIPE UP
#_0DB316: db $00 ; .... $0 | 0xB0 - PIPE RIGHT
#_0DB317: db $00 ; .... $0 | 0xB1 - PIPE LEFT
#_0DB318: db $00 ; .... $0 | 0xB2 - GOOD BEE
#_0DB319: db $00 ; .... $0 | 0xB3 - PEDESTAL PLAQUE
#_0DB31A: db $00 ; .... $0 | 0xB4 - PURPLE CHEST
#_0DB31B: db $00 ; .... $0 | 0xB5 - BOMB SHOP GUY
#_0DB31C: db $00 ; .... $0 | 0xB6 - KIKI
#_0DB31D: db $00 ; .... $0 | 0xB7 - BLIND MAIDEN
#_0DB31E: db $00 ; .... $0 | 0xB8 - DIALOGUE TESTER
#_0DB31F: db $00 ; .... $0 | 0xB9 - BULLY / PINK BALL
#_0DB320: db $00 ; .... $0 | 0xBA - WHIRLPOOL
#_0DB321: db $00 ; .... $0 | 0xBB - SHOPKEEPER / CHEST GAME GUY
#_0DB322: db $00 ; .... $0 | 0xBC - DRUNKARD
#_0DB323: db $17 ; ...d $7 | 0xBD - VITREOUS
#_0DB324: db $17 ; ...d $7 | 0xBE - VITREOUS SMALL EYE
#_0DB325: db $05 ; .... $5 | 0xBF - LIGHTNING
#_0DB326: db $05 ; .... $5 | 0xC0 - CATFISH
#_0DB327: db $05 ; .... $5 | 0xC1 - CUTSCENE AGAHNIM
#_0DB328: db $04 ; .... $4 | 0xC2 - BOULDER
#_0DB329: db $03 ; .... $3 | 0xC3 - GIBO
#_0DB32A: db $02 ; .... $2 | 0xC4 - THIEF
#_0DB32B: db $10 ; ...d $0 | 0xC5 - MEDUSA
#_0DB32C: db $00 ; .... $0 | 0xC6 - 4WAY SHOOTER
#_0DB32D: db $06 ; .... $6 | 0xC7 - POKEY
#_0DB32E: db $00 ; .... $0 | 0xC8 - BIG FAERIE
#_0DB32F: db $05 ; .... $5 | 0xC9 - TEKTITE / FIREBAT
#_0DB330: db $07 ; .... $7 | 0xCA - CHAIN CHOMP
#_0DB331: db $17 ; ...d $7 | 0xCB - TRINEXX ROCK HEAD
#_0DB332: db $17 ; ...d $7 | 0xCC - TRINEXX FIRE HEAD
#_0DB333: db $17 ; ...d $7 | 0xCD - TRINEXX ICE HEAD
#_0DB334: db $15 ; ...d $5 | 0xCE - BLIND
#_0DB335: db $07 ; .... $7 | 0xCF - SWAMOLA
#_0DB336: db $06 ; .... $6 | 0xD0 - LYNEL
#_0DB337: db $10 ; ...d $0 | 0xD1 - BUNNYBEAM / SMOKE
#_0DB338: db $00 ; .... $0 | 0xD2 - FLOPPING FISH
#_0DB339: db $03 ; .... $3 | 0xD3 - STAL
#_0DB33A: db $03 ; .... $3 | 0xD4 - LANDMINE
#_0DB33B: db $00 ; .... $0 | 0xD5 - DIG GAME GUY
#_0DB33C: db $19 ; ...d $9 | 0xD6 - GANON
#_0DB33D: db $19 ; ...d $9 | 0xD7 - GANON
#_0DB33E: db $00 ; .... $0 | 0xD8 - HEART
#_0DB33F: db $00 ; .... $0 | 0xD9 - GREEN RUPEE
#_0DB340: db $00 ; .... $0 | 0xDA - BLUE RUPEE
#_0DB341: db $00 ; .... $0 | 0xDB - RED RUPEE
#_0DB342: db $00 ; .... $0 | 0xDC - BOMB REFILL 1
#_0DB343: db $00 ; .... $0 | 0xDD - BOMB REFILL 4
#_0DB344: db $00 ; .... $0 | 0xDE - BOMB REFILL 8
#_0DB345: db $00 ; .... $0 | 0xDF - SMALL MAGIC DECANTER
#_0DB346: db $00 ; .... $0 | 0xE0 - LARGE MAGIC DECANTER
#_0DB347: db $00 ; .... $0 | 0xE1 - ARROW REFILL 5
#_0DB348: db $00 ; .... $0 | 0xE2 - ARROW REFILL 10
#_0DB349: db $10 ; ...d $0 | 0xE3 - FAERIE
#_0DB34A: db $00 ; .... $0 | 0xE4 - SMALL KEY
#_0DB34B: db $00 ; .... $0 | 0xE5 - BIG KEY
#_0DB34C: db $00 ; .... $0 | 0xE6 - STOLEN SHIELD
#_0DB34D: db $00 ; .... $0 | 0xE7 - MUSHROOM
#_0DB34E: db $00 ; .... $0 | 0xE8 - FAKE MASTER SWORD
#_0DB34F: db $00 ; .... $0 | 0xE9 - MAGIC SHOP ASSISTANT
#_0DB350: db $00 ; .... $0 | 0xEA - HEART CONTAINER
#_0DB351: db $00 ; .... $0 | 0xEB - HEART PIECE
#_0DB352: db $00 ; .... $0 | 0xEC - THROWN ITEM
#_0DB353: db $00 ; .... $0 | 0xED - SOMARIA PLATFORM
#_0DB354: db $00 ; .... $0 | 0xEE - CASTLE MANTLE
#_0DB355: db $00 ; .... $0 | 0xEF - UNUSED SOMARIA PLATFORM
#_0DB356: db $00 ; .... $0 | 0xF0 - UNUSED SOMARIA PLATFORM
#_0DB357: db $00 ; .... $0 | 0xF1 - UNUSED SOMARIA PLATFORM
#_0DB358: db $00 ; .... $0 | 0xF2 - MEDALLION TABLET

;===================================================================================================
; nios pppt
;   n - custom death animation
;   i - impervious to attacks
;   o - shadow size (0: big | 1: small)
;   s - draw shadow? (0: no shadow | 1: draw shadow)
;   p - sprite palette, copied to OAM
;   t - sprite name table, copied to OAM
;===================================================================================================
SpriteData_OAMProp:
#_0DB359: db $19 ; ...s $1, 1 | 0x00 - RAVEN
#_0DB35A: db $0B ; .... $3, 1 | 0x01 - VULTURE
#_0DB35B: db $1B ; ...s $3, 1 | 0x02 - STALFOS HEAD
#_0DB35C: db $4B ; .i.. $3, 1 | 0x03 - NULL
#_0DB35D: db $41 ; .i.. $1, 1 | 0x04 - CORRECT PULL SWITCH
#_0DB35E: db $41 ; .i.. $1, 1 | 0x05 - UNUSED CORRECT PULL SWITCH
#_0DB35F: db $41 ; .i.. $1, 1 | 0x06 - WRONG PULL SWITCH
#_0DB360: db $4D ; .i.. $5, 1 | 0x07 - UNUSED WRONG PULL SWITCH
#_0DB361: db $1D ; ...s $5, 1 | 0x08 - OCTOROK
#_0DB362: db $01 ; .... $1, 1 | 0x09 - MOLDORM
#_0DB363: db $1D ; ...s $5, 1 | 0x0A - OCTOROK 4WAY
#_0DB364: db $19 ; ...s $1, 1 | 0x0B - CUCCO
#_0DB365: db $8D ; n... $5, 1 | 0x0C - OCTOROK STONE
#_0DB366: db $1B ; ...s $3, 1 | 0x0D - BUZZBLOB
#_0DB367: db $09 ; .... $1, 1 | 0x0E - SNAPDRAGON
#_0DB368: db $9D ; n..s $5, 1 | 0x0F - OCTOBALLOON
#_0DB369: db $3D ; ..os $5, 1 | 0x10 - OCTOBALLOON BABY
#_0DB36A: db $01 ; .... $1, 1 | 0x11 - HINOX
#_0DB36B: db $09 ; .... $1, 1 | 0x12 - MOBLIN
#_0DB36C: db $11 ; ...s $1, 1 | 0x13 - MINI HELMASAUR
#_0DB36D: db $40 ; .i.. $0, 0 | 0x14 - THIEVES TOWN GRATE
#_0DB36E: db $01 ; .... $1, 1 | 0x15 - ANTIFAIRY
#_0DB36F: db $4D ; .i.. $5, 1 | 0x16 - SAHASRAHLA / AGINAH
#_0DB370: db $19 ; ...s $1, 1 | 0x17 - HOARDER
#_0DB371: db $07 ; .... $7, 1 | 0x18 - MINI MOLDORM
#_0DB372: db $1D ; ...s $5, 1 | 0x19 - POE
#_0DB373: db $59 ; .i.s $1, 1 | 0x1A - SMITHY
#_0DB374: db $80 ; n... $0, 0 | 0x1B - ARROW
#_0DB375: db $4D ; .i.. $5, 1 | 0x1C - STATUE
#_0DB376: db $40 ; .i.. $0, 0 | 0x1D - FLUTEQUEST
#_0DB377: db $01 ; .... $1, 1 | 0x1E - CRYSTAL SWITCH
#_0DB378: db $49 ; .i.. $1, 1 | 0x1F - SICK KID
#_0DB379: db $1B ; ...s $3, 1 | 0x20 - SLUGGULA
#_0DB37A: db $41 ; .i.. $1, 1 | 0x21 - WATER SWITCH
#_0DB37B: db $03 ; .... $3, 1 | 0x22 - ROPA
#_0DB37C: db $13 ; ...s $3, 1 | 0x23 - RED BARI
#_0DB37D: db $15 ; ...s $5, 1 | 0x24 - BLUE BARI
#_0DB37E: db $41 ; .i.. $1, 1 | 0x25 - TALKING TREE
#_0DB37F: db $18 ; ...s $0, 0 | 0x26 - HARDHAT BEETLE
#_0DB380: db $1B ; ...s $3, 1 | 0x27 - DEADROCK
#_0DB381: db $41 ; .i.. $1, 1 | 0x28 - DARK WORLD HINT NPC
#_0DB382: db $47 ; .i.. $7, 1 | 0x29 - ADULT
#_0DB383: db $0F ; .... $7, 1 | 0x2A - SWEEPING LADY
#_0DB384: db $49 ; .i.. $1, 1 | 0x2B - HOBO
#_0DB385: db $4B ; .i.. $3, 1 | 0x2C - LUMBERJACKS
#_0DB386: db $4D ; .i.. $5, 1 | 0x2D - TELEPATHIC TILE
#_0DB387: db $41 ; .i.. $1, 1 | 0x2E - FLUTE KID
#_0DB388: db $47 ; .i.. $7, 1 | 0x2F - RACE GAME LADY
#_0DB389: db $49 ; .i.. $1, 1 | 0x30 - RACE GAME GUY
#_0DB38A: db $4D ; .i.. $5, 1 | 0x31 - FORTUNE TELLER
#_0DB38B: db $49 ; .i.. $1, 1 | 0x32 - ARGUE BROS
#_0DB38C: db $40 ; .i.. $0, 0 | 0x33 - RUPEE PULL
#_0DB38D: db $4D ; .i.. $5, 1 | 0x34 - YOUNG SNITCH
#_0DB38E: db $47 ; .i.. $7, 1 | 0x35 - INNKEEPER
#_0DB38F: db $49 ; .i.. $1, 1 | 0x36 - WITCH
#_0DB390: db $41 ; .i.. $1, 1 | 0x37 - WATERFALL
#_0DB391: db $74 ; .ios $4, 0 | 0x38 - EYE STATUE
#_0DB392: db $47 ; .i.. $7, 1 | 0x39 - LOCKSMITH
#_0DB393: db $5B ; .i.s $3, 1 | 0x3A - MAGIC BAT
#_0DB394: db $58 ; .i.s $0, 0 | 0x3B - BONK ITEM
#_0DB395: db $51 ; .i.s $1, 1 | 0x3C - KID IN KAK
#_0DB396: db $49 ; .i.. $1, 1 | 0x3D - OLD SNITCH
#_0DB397: db $1D ; ...s $5, 1 | 0x3E - HOARDER
#_0DB398: db $5D ; .i.s $5, 1 | 0x3F - TUTORIAL GUARD
#_0DB399: db $03 ; .... $3, 1 | 0x40 - LIGHTNING GATE
#_0DB39A: db $19 ; ...s $1, 1 | 0x41 - BLUE GUARD
#_0DB39B: db $1B ; ...s $3, 1 | 0x42 - GREEN GUARD
#_0DB39C: db $17 ; ...s $7, 1 | 0x43 - RED SPEAR GUARD
#_0DB39D: db $19 ; ...s $1, 1 | 0x44 - BLUESAIN BOLT
#_0DB39E: db $17 ; ...s $7, 1 | 0x45 - USAIN BOLT
#_0DB39F: db $19 ; ...s $1, 1 | 0x46 - BLUE ARCHER
#_0DB3A0: db $1B ; ...s $3, 1 | 0x47 - GREEN BUSH GUARD
#_0DB3A1: db $17 ; ...s $7, 1 | 0x48 - RED JAVELIN GUARD
#_0DB3A2: db $17 ; ...s $7, 1 | 0x49 - RED BUSH GUARD
#_0DB3A3: db $17 ; ...s $7, 1 | 0x4A - BOMB GUARD
#_0DB3A4: db $1B ; ...s $3, 1 | 0x4B - GREEN KNIFE GUARD
#_0DB3A5: db $0D ; .... $5, 1 | 0x4C - GELDMAN
#_0DB3A6: db $09 ; .... $1, 1 | 0x4D - TOPPO
#_0DB3A7: db $19 ; ...s $1, 1 | 0x4E - POPO
#_0DB3A8: db $19 ; ...s $1, 1 | 0x4F - POPO
#_0DB3A9: db $49 ; .i.. $1, 1 | 0x50 - CANNONBALL
#_0DB3AA: db $5D ; .i.s $5, 1 | 0x51 - ARMOS STATUE
#_0DB3AB: db $5B ; .i.s $3, 1 | 0x52 - KING ZORA
#_0DB3AC: db $49 ; .i.. $1, 1 | 0x53 - ARMOS KNIGHT
#_0DB3AD: db $0D ; .... $5, 1 | 0x54 - LANMOLAS
#_0DB3AE: db $03 ; .... $3, 1 | 0x55 - ZORA / FIREBALL
#_0DB3AF: db $13 ; ...s $3, 1 | 0x56 - ZORA
#_0DB3B0: db $41 ; .i.. $1, 1 | 0x57 - DESERT STATUE
#_0DB3B1: db $1B ; ...s $3, 1 | 0x58 - CRAB
#_0DB3B2: db $5B ; .i.s $3, 1 | 0x59 - LOST WOODS BIRD
#_0DB3B3: db $5D ; .i.s $5, 1 | 0x5A - LOST WOODS SQUIRREL
#_0DB3B4: db $43 ; .i.. $3, 1 | 0x5B - SPARK
#_0DB3B5: db $43 ; .i.. $3, 1 | 0x5C - SPARK
#_0DB3B6: db $4D ; .i.. $5, 1 | 0x5D - ROLLER VERTICAL DOWN FIRST
#_0DB3B7: db $4D ; .i.. $5, 1 | 0x5E - ROLLER VERTICAL UP FIRST
#_0DB3B8: db $4D ; .i.. $5, 1 | 0x5F - ROLLER HORIZONTAL RIGHT FIRST
#_0DB3B9: db $4D ; .i.. $5, 1 | 0x60 - ROLLER HORIZONTAL LEFT FIRST
#_0DB3BA: db $4D ; .i.. $5, 1 | 0x61 - BEAMOS
#_0DB3BB: db $49 ; .i.. $1, 1 | 0x62 - MASTERSWORD
#_0DB3BC: db $01 ; .... $1, 1 | 0x63 - DEBIRANDO PIT
#_0DB3BD: db $00 ; .... $0, 0 | 0x64 - DEBIRANDO
#_0DB3BE: db $41 ; .i.. $1, 1 | 0x65 - ARCHERY GUY
#_0DB3BF: db $4D ; .i.. $5, 1 | 0x66 - WALL CANNON VERTICAL LEFT
#_0DB3C0: db $4D ; .i.. $5, 1 | 0x67 - WALL CANNON VERTICAL RIGHT
#_0DB3C1: db $4D ; .i.. $5, 1 | 0x68 - WALL CANNON HORIZONTAL TOP
#_0DB3C2: db $4D ; .i.. $5, 1 | 0x69 - WALL CANNON HORIZONTAL BOTTOM
#_0DB3C3: db $1D ; ...s $5, 1 | 0x6A - BALL N CHAIN
#_0DB3C4: db $09 ; .... $1, 1 | 0x6B - CANNONBALL / CANNON TROOPER
#_0DB3C5: db $C4 ; ni.. $4, 0 | 0x6C - MIRROR PORTAL
#_0DB3C6: db $0D ; .... $5, 1 | 0x6D - RAT / CRICKET
#_0DB3C7: db $0D ; .... $5, 1 | 0x6E - SNAKE
#_0DB3C8: db $09 ; .... $1, 1 | 0x6F - KEESE
#_0DB3C9: db $03 ; .... $3, 1 | 0x70 - KING HELMASAUR FIREBALL
#_0DB3CA: db $03 ; .... $3, 1 | 0x71 - LEEVER
#_0DB3CB: db $4B ; .i.. $3, 1 | 0x72 - FAERIE POND TRIGGER
#_0DB3CC: db $47 ; .i.. $7, 1 | 0x73 - UNCLE / PRIEST / MANTLE
#_0DB3CD: db $47 ; .i.. $7, 1 | 0x74 - RUNNING MAN
#_0DB3CE: db $49 ; .i.. $1, 1 | 0x75 - BOTTLE MERCHANT
#_0DB3CF: db $49 ; .i.. $1, 1 | 0x76 - ZELDA
#_0DB3D0: db $41 ; .i.. $1, 1 | 0x77 - ANTIFAIRY
#_0DB3D1: db $47 ; .i.. $7, 1 | 0x78 - SAHASRAHLAS WIFE
#_0DB3D2: db $36 ; ..os $6, 0 | 0x79 - BEE
#_0DB3D3: db $8B ; n... $3, 1 | 0x7A - AGAHNIM
#_0DB3D4: db $49 ; .i.. $1, 1 | 0x7B - AGAHNIMS BALLS
#_0DB3D5: db $1D ; ...s $5, 1 | 0x7C - GREEN STALFOS
#_0DB3D6: db $49 ; .i.. $1, 1 | 0x7D - BIG SPIKE
#_0DB3D7: db $43 ; .i.. $3, 1 | 0x7E - FIREBAR CLOCKWISE
#_0DB3D8: db $43 ; .i.. $3, 1 | 0x7F - FIREBAR COUNTERCLOCKWISE
#_0DB3D9: db $43 ; .i.. $3, 1 | 0x80 - FIRESNAKE
#_0DB3DA: db $0B ; .... $3, 1 | 0x81 - HOVER
#_0DB3DB: db $41 ; .i.. $1, 1 | 0x82 - ANTIFAIRY CIRCLE
#_0DB3DC: db $0D ; .... $5, 1 | 0x83 - GREEN EYEGORE / GREEN MIMIC
#_0DB3DD: db $07 ; .... $7, 1 | 0x84 - RED EYEGORE / RED MIMIC
#_0DB3DE: db $0B ; .... $3, 1 | 0x85 - YELLOW STALFOS
#_0DB3DF: db $1D ; ...s $5, 1 | 0x86 - KODONGO
#_0DB3E0: db $43 ; .i.. $3, 1 | 0x87 - KONDONGO FIRE
#_0DB3E1: db $0D ; .... $5, 1 | 0x88 - MOTHULA
#_0DB3E2: db $43 ; .i.. $3, 1 | 0x89 - MOTHULA BEAM
#_0DB3E3: db $0D ; .... $5, 1 | 0x8A - SPIKE BLOCK
#_0DB3E4: db $1D ; ...s $5, 1 | 0x8B - GIBDO
#_0DB3E5: db $4D ; .i.. $5, 1 | 0x8C - ARRGHUS
#_0DB3E6: db $4D ; .i.. $5, 1 | 0x8D - ARRGHI
#_0DB3E7: db $1B ; ...s $3, 1 | 0x8E - TERRORPIN
#_0DB3E8: db $1B ; ...s $3, 1 | 0x8F - BLOB
#_0DB3E9: db $0A ; .... $2, 0 | 0x90 - WALLMASTER
#_0DB3EA: db $0B ; .... $3, 1 | 0x91 - STALFOS KNIGHT
#_0DB3EB: db $00 ; .... $0, 0 | 0x92 - KING HELMASAUR
#_0DB3EC: db $05 ; .... $5, 1 | 0x93 - BUMPER
#_0DB3ED: db $0D ; .... $5, 1 | 0x94 - PIROGUSU
#_0DB3EE: db $01 ; .... $1, 1 | 0x95 - LASER EYE LEFT
#_0DB3EF: db $01 ; .... $1, 1 | 0x96 - LASER EYE RIGHT
#_0DB3F0: db $01 ; .... $1, 1 | 0x97 - LASER EYE TOP
#_0DB3F1: db $01 ; .... $1, 1 | 0x98 - LASER EYE BOTTOM
#_0DB3F2: db $0B ; .... $3, 1 | 0x99 - PENGATOR
#_0DB3F3: db $05 ; .... $5, 1 | 0x9A - KYAMERON
#_0DB3F4: db $01 ; .... $1, 1 | 0x9B - WIZZROBE
#_0DB3F5: db $01 ; .... $1, 1 | 0x9C - ZORO
#_0DB3F6: db $01 ; .... $1, 1 | 0x9D - BABASU
#_0DB3F7: db $07 ; .... $7, 1 | 0x9E - HAUNTED GROVE OSTRITCH
#_0DB3F8: db $17 ; ...s $7, 1 | 0x9F - HAUNTED GROVE RABBIT
#_0DB3F9: db $19 ; ...s $1, 1 | 0xA0 - HAUNTED GROVE BIRD
#_0DB3FA: db $0D ; .... $5, 1 | 0xA1 - FREEZOR
#_0DB3FB: db $0D ; .... $5, 1 | 0xA2 - KHOLDSTARE
#_0DB3FC: db $80 ; n... $0, 0 | 0xA3 - KHOLDSTARE SHELL
#_0DB3FD: db $4D ; .i.. $5, 1 | 0xA4 - FALLING ICE
#_0DB3FE: db $19 ; ...s $1, 1 | 0xA5 - BLUE ZAZAK
#_0DB3FF: db $17 ; ...s $7, 1 | 0xA6 - RED ZAZAK
#_0DB400: db $19 ; ...s $1, 1 | 0xA7 - STALFOS
#_0DB401: db $0B ; .... $3, 1 | 0xA8 - GREEN ZIRRO
#_0DB402: db $09 ; .... $1, 1 | 0xA9 - BLUE ZIRRO
#_0DB403: db $0D ; .... $5, 1 | 0xAA - PIKIT
#_0DB404: db $4A ; .i.. $2, 0 | 0xAB - CRYSTAL MAIDEN
#_0DB405: db $12 ; ...s $2, 0 | 0xAC - APPLE
#_0DB406: db $49 ; .i.. $1, 1 | 0xAD - OLD MAN
#_0DB407: db $C3 ; ni.. $3, 1 | 0xAE - PIPE DOWN
#_0DB408: db $C3 ; ni.. $3, 1 | 0xAF - PIPE UP
#_0DB409: db $C3 ; ni.. $3, 1 | 0xB0 - PIPE RIGHT
#_0DB40A: db $C3 ; ni.. $3, 1 | 0xB1 - PIPE LEFT
#_0DB40B: db $76 ; .ios $6, 0 | 0xB2 - GOOD BEE
#_0DB40C: db $40 ; .i.. $0, 0 | 0xB3 - PEDESTAL PLAQUE
#_0DB40D: db $59 ; .i.s $1, 1 | 0xB4 - PURPLE CHEST
#_0DB40E: db $41 ; .i.. $1, 1 | 0xB5 - BOMB SHOP GUY
#_0DB40F: db $58 ; .i.s $0, 0 | 0xB6 - KIKI
#_0DB410: db $4F ; .i.. $7, 1 | 0xB7 - BLIND MAIDEN
#_0DB411: db $73 ; .ios $3, 1 | 0xB8 - DIALOGUE TESTER
#_0DB412: db $5B ; .i.s $3, 1 | 0xB9 - BULLY / PINK BALL
#_0DB413: db $44 ; .i.. $4, 0 | 0xBA - WHIRLPOOL
#_0DB414: db $41 ; .i.. $1, 1 | 0xBB - SHOPKEEPER / CHEST GAME GUY
#_0DB415: db $51 ; .i.s $1, 1 | 0xBC - DRUNKARD
#_0DB416: db $0A ; .... $2, 0 | 0xBD - VITREOUS
#_0DB417: db $0B ; .... $3, 1 | 0xBE - VITREOUS SMALL EYE
#_0DB418: db $0B ; .... $3, 1 | 0xBF - LIGHTNING
#_0DB419: db $4B ; .i.. $3, 1 | 0xC0 - CATFISH
#_0DB41A: db $00 ; .... $0, 0 | 0xC1 - CUTSCENE AGAHNIM
#_0DB41B: db $40 ; .i.. $0, 0 | 0xC2 - BOULDER
#_0DB41C: db $5B ; .i.s $3, 1 | 0xC3 - GIBO
#_0DB41D: db $0D ; .... $5, 1 | 0xC4 - THIEF
#_0DB41E: db $00 ; .... $0, 0 | 0xC5 - MEDUSA
#_0DB41F: db $00 ; .... $0, 0 | 0xC6 - 4WAY SHOOTER
#_0DB420: db $0D ; .... $5, 1 | 0xC7 - POKEY
#_0DB421: db $4B ; .i.. $3, 1 | 0xC8 - BIG FAERIE
#_0DB422: db $0B ; .... $3, 1 | 0xC9 - TEKTITE / FIREBAT
#_0DB423: db $59 ; .i.s $1, 1 | 0xCA - CHAIN CHOMP
#_0DB424: db $41 ; .i.. $1, 1 | 0xCB - TRINEXX ROCK HEAD
#_0DB425: db $0B ; .... $3, 1 | 0xCC - TRINEXX FIRE HEAD
#_0DB426: db $0D ; .... $5, 1 | 0xCD - TRINEXX ICE HEAD
#_0DB427: db $01 ; .... $1, 1 | 0xCE - BLIND
#_0DB428: db $0D ; .... $5, 1 | 0xCF - SWAMOLA
#_0DB429: db $0D ; .... $5, 1 | 0xD0 - LYNEL
#_0DB42A: db $00 ; .... $0, 0 | 0xD1 - BUNNYBEAM / SMOKE
#_0DB42B: db $50 ; .i.s $0, 0 | 0xD2 - FLOPPING FISH
#_0DB42C: db $4C ; .i.. $4, 0 | 0xD3 - STAL
#_0DB42D: db $44 ; .i.. $4, 0 | 0xD4 - LANDMINE
#_0DB42E: db $51 ; .i.s $1, 1 | 0xD5 - DIG GAME GUY
#_0DB42F: db $01 ; .... $1, 1 | 0xD6 - GANON
#_0DB430: db $01 ; .... $1, 1 | 0xD7 - GANON
#_0DB431: db $F2 ; nios $2, 0 | 0xD8 - HEART
#_0DB432: db $F8 ; nios $0, 0 | 0xD9 - GREEN RUPEE
#_0DB433: db $F4 ; nios $4, 0 | 0xDA - BLUE RUPEE
#_0DB434: db $F2 ; nios $2, 0 | 0xDB - RED RUPEE
#_0DB435: db $D4 ; ni.s $4, 0 | 0xDC - BOMB REFILL 1
#_0DB436: db $D4 ; ni.s $4, 0 | 0xDD - BOMB REFILL 4
#_0DB437: db $D4 ; ni.s $4, 0 | 0xDE - BOMB REFILL 8
#_0DB438: db $F8 ; nios $0, 0 | 0xDF - SMALL MAGIC DECANTER
#_0DB439: db $F8 ; nios $0, 0 | 0xE0 - LARGE MAGIC DECANTER
#_0DB43A: db $F4 ; nios $4, 0 | 0xE1 - ARROW REFILL 5
#_0DB43B: db $F4 ; nios $4, 0 | 0xE2 - ARROW REFILL 10
#_0DB43C: db $D8 ; ni.s $0, 0 | 0xE3 - FAERIE
#_0DB43D: db $F8 ; nios $0, 0 | 0xE4 - SMALL KEY
#_0DB43E: db $D8 ; ni.s $0, 0 | 0xE5 - BIG KEY
#_0DB43F: db $DF ; ni.s $7, 1 | 0xE6 - STOLEN SHIELD
#_0DB440: db $C8 ; ni.. $0, 0 | 0xE7 - MUSHROOM
#_0DB441: db $69 ; .io. $1, 1 | 0xE8 - FAKE MASTER SWORD
#_0DB442: db $C1 ; ni.. $1, 1 | 0xE9 - MAGIC SHOP ASSISTANT
#_0DB443: db $D2 ; ni.s $2, 0 | 0xEA - HEART CONTAINER
#_0DB444: db $D2 ; ni.s $2, 0 | 0xEB - HEART PIECE
#_0DB445: db $DC ; ni.s $4, 0 | 0xEC - THROWN ITEM
#_0DB446: db $C7 ; ni.. $7, 1 | 0xED - SOMARIA PLATFORM
#_0DB447: db $C1 ; ni.. $1, 1 | 0xEE - CASTLE MANTLE
#_0DB448: db $C7 ; ni.. $7, 1 | 0xEF - UNUSED SOMARIA PLATFORM
#_0DB449: db $C7 ; ni.. $7, 1 | 0xF0 - UNUSED SOMARIA PLATFORM
#_0DB44A: db $C7 ; ni.. $7, 1 | 0xF1 - UNUSED SOMARIA PLATFORM
#_0DB44B: db $C1 ; ni.. $1, 1 | 0xF2 - MEDALLION TABLET

;===================================================================================================
; isph hhhh
;   i - run collision on a single layer
;   s - kill room validity (0: sprite counts | 1: ignored by kill rooms)
;   p - overworld activeness (0: die off screen | 1: persists)
;   h - hitbox
;===================================================================================================
SpriteData_HitBox:
#_0DB44C: db $00 ; ... $00 | 0x00 - RAVEN
#_0DB44D: db $00 ; ... $00 | 0x01 - VULTURE
#_0DB44E: db $00 ; ... $00 | 0x02 - STALFOS HEAD
#_0DB44F: db $43 ; .s. $03 | 0x03 - NULL
#_0DB450: db $43 ; .s. $03 | 0x04 - CORRECT PULL SWITCH
#_0DB451: db $43 ; .s. $03 | 0x05 - UNUSED CORRECT PULL SWITCH
#_0DB452: db $43 ; .s. $03 | 0x06 - WRONG PULL SWITCH
#_0DB453: db $43 ; .s. $03 | 0x07 - UNUSED WRONG PULL SWITCH
#_0DB454: db $00 ; ... $00 | 0x08 - OCTOROK
#_0DB455: db $00 ; ... $00 | 0x09 - MOLDORM
#_0DB456: db $00 ; ... $00 | 0x0A - OCTOROK 4WAY
#_0DB457: db $00 ; ... $00 | 0x0B - CUCCO
#_0DB458: db $1C ; ... $1C | 0x0C - OCTOROK STONE
#_0DB459: db $00 ; ... $00 | 0x0D - BUZZBLOB
#_0DB45A: db $00 ; ... $00 | 0x0E - SNAPDRAGON
#_0DB45B: db $02 ; ... $02 | 0x0F - OCTOBALLOON
#_0DB45C: db $01 ; ... $01 | 0x10 - OCTOBALLOON BABY
#_0DB45D: db $03 ; ... $03 | 0x11 - HINOX
#_0DB45E: db $00 ; ... $00 | 0x12 - MOBLIN
#_0DB45F: db $00 ; ... $00 | 0x13 - MINI HELMASAUR
#_0DB460: db $03 ; ... $03 | 0x14 - THIEVES TOWN GRATE
#_0DB461: db $C0 ; is. $00 | 0x15 - ANTIFAIRY
#_0DB462: db $07 ; ... $07 | 0x16 - SAHASRAHLA / AGINAH
#_0DB463: db $00 ; ... $00 | 0x17 - HOARDER
#_0DB464: db $00 ; ... $00 | 0x18 - MINI MOLDORM
#_0DB465: db $00 ; ... $00 | 0x19 - POE
#_0DB466: db $07 ; ... $07 | 0x1A - SMITHY
#_0DB467: db $45 ; .s. $05 | 0x1B - ARROW
#_0DB468: db $43 ; .s. $03 | 0x1C - STATUE
#_0DB469: db $00 ; ... $00 | 0x1D - FLUTEQUEST
#_0DB46A: db $40 ; .s. $00 | 0x1E - CRYSTAL SWITCH
#_0DB46B: db $0D ; ... $0D | 0x1F - SICK KID
#_0DB46C: db $00 ; ... $00 | 0x20 - SLUGGULA
#_0DB46D: db $00 ; ... $00 | 0x21 - WATER SWITCH
#_0DB46E: db $00 ; ... $00 | 0x22 - ROPA
#_0DB46F: db $00 ; ... $00 | 0x23 - RED BARI
#_0DB470: db $00 ; ... $00 | 0x24 - BLUE BARI
#_0DB471: db $00 ; ... $00 | 0x25 - TALKING TREE
#_0DB472: db $00 ; ... $00 | 0x26 - HARDHAT BEETLE
#_0DB473: db $00 ; ... $00 | 0x27 - DEADROCK
#_0DB474: db $07 ; ... $07 | 0x28 - DARK WORLD HINT NPC
#_0DB475: db $07 ; ... $07 | 0x29 - ADULT
#_0DB476: db $07 ; ... $07 | 0x2A - SWEEPING LADY
#_0DB477: db $07 ; ... $07 | 0x2B - HOBO
#_0DB478: db $07 ; ... $07 | 0x2C - LUMBERJACKS
#_0DB479: db $07 ; ... $07 | 0x2D - TELEPATHIC TILE
#_0DB47A: db $0D ; ... $0D | 0x2E - FLUTE KID
#_0DB47B: db $07 ; ... $07 | 0x2F - RACE GAME LADY
#_0DB47C: db $07 ; ... $07 | 0x30 - RACE GAME GUY
#_0DB47D: db $07 ; ... $07 | 0x31 - FORTUNE TELLER
#_0DB47E: db $07 ; ... $07 | 0x32 - ARGUE BROS
#_0DB47F: db $03 ; ... $03 | 0x33 - RUPEE PULL
#_0DB480: db $07 ; ... $07 | 0x34 - YOUNG SNITCH
#_0DB481: db $07 ; ... $07 | 0x35 - INNKEEPER
#_0DB482: db $07 ; ... $07 | 0x36 - WITCH
#_0DB483: db $40 ; .s. $00 | 0x37 - WATERFALL
#_0DB484: db $03 ; ... $03 | 0x38 - EYE STATUE
#_0DB485: db $07 ; ... $07 | 0x39 - LOCKSMITH
#_0DB486: db $0D ; ... $0D | 0x3A - MAGIC BAT
#_0DB487: db $00 ; ... $00 | 0x3B - BONK ITEM
#_0DB488: db $07 ; ... $07 | 0x3C - KID IN KAK
#_0DB489: db $07 ; ... $07 | 0x3D - OLD SNITCH
#_0DB48A: db $00 ; ... $00 | 0x3E - HOARDER
#_0DB48B: db $00 ; ... $00 | 0x3F - TUTORIAL GUARD
#_0DB48C: db $09 ; ... $09 | 0x40 - LIGHTNING GATE
#_0DB48D: db $12 ; ... $12 | 0x41 - BLUE GUARD
#_0DB48E: db $12 ; ... $12 | 0x42 - GREEN GUARD
#_0DB48F: db $12 ; ... $12 | 0x43 - RED SPEAR GUARD
#_0DB490: db $12 ; ... $12 | 0x44 - BLUESAIN BOLT
#_0DB491: db $12 ; ... $12 | 0x45 - USAIN BOLT
#_0DB492: db $12 ; ... $12 | 0x46 - BLUE ARCHER
#_0DB493: db $12 ; ... $12 | 0x47 - GREEN BUSH GUARD
#_0DB494: db $12 ; ... $12 | 0x48 - RED JAVELIN GUARD
#_0DB495: db $12 ; ... $12 | 0x49 - RED BUSH GUARD
#_0DB496: db $12 ; ... $12 | 0x4A - BOMB GUARD
#_0DB497: db $12 ; ... $12 | 0x4B - GREEN KNIFE GUARD
#_0DB498: db $00 ; ... $00 | 0x4C - GELDMAN
#_0DB499: db $00 ; ... $00 | 0x4D - TOPPO
#_0DB49A: db $00 ; ... $00 | 0x4E - POPO
#_0DB49B: db $00 ; ... $00 | 0x4F - POPO
#_0DB49C: db $80 ; i.. $00 | 0x50 - CANNONBALL
#_0DB49D: db $12 ; ... $12 | 0x51 - ARMOS STATUE
#_0DB49E: db $09 ; ... $09 | 0x52 - KING ZORA
#_0DB49F: db $09 ; ... $09 | 0x53 - ARMOS KNIGHT
#_0DB4A0: db $00 ; ... $00 | 0x54 - LANMOLAS
#_0DB4A1: db $40 ; .s. $00 | 0x55 - ZORA / FIREBALL
#_0DB4A2: db $00 ; ... $00 | 0x56 - ZORA
#_0DB4A3: db $0C ; ... $0C | 0x57 - DESERT STATUE
#_0DB4A4: db $00 ; ... $00 | 0x58 - CRAB
#_0DB4A5: db $00 ; ... $00 | 0x59 - LOST WOODS BIRD
#_0DB4A6: db $00 ; ... $00 | 0x5A - LOST WOODS SQUIRREL
#_0DB4A7: db $40 ; .s. $00 | 0x5B - SPARK
#_0DB4A8: db $40 ; .s. $00 | 0x5C - SPARK
#_0DB4A9: db $10 ; ... $10 | 0x5D - ROLLER VERTICAL DOWN FIRST
#_0DB4AA: db $10 ; ... $10 | 0x5E - ROLLER VERTICAL UP FIRST
#_0DB4AB: db $2E ; ..p $0E | 0x5F - ROLLER HORIZONTAL RIGHT FIRST
#_0DB4AC: db $2E ; ..p $0E | 0x60 - ROLLER HORIZONTAL LEFT FIRST
#_0DB4AD: db $40 ; .s. $00 | 0x61 - BEAMOS
#_0DB4AE: db $1E ; ... $1E | 0x62 - MASTERSWORD
#_0DB4AF: db $53 ; .s. $13 | 0x63 - DEBIRANDO PIT
#_0DB4B0: db $00 ; ... $00 | 0x64 - DEBIRANDO
#_0DB4B1: db $0A ; ... $0A | 0x65 - ARCHERY GUY
#_0DB4B2: db $00 ; ... $00 | 0x66 - WALL CANNON VERTICAL LEFT
#_0DB4B3: db $00 ; ... $00 | 0x67 - WALL CANNON VERTICAL RIGHT
#_0DB4B4: db $00 ; ... $00 | 0x68 - WALL CANNON HORIZONTAL TOP
#_0DB4B5: db $00 ; ... $00 | 0x69 - WALL CANNON HORIZONTAL BOTTOM
#_0DB4B6: db $12 ; ... $12 | 0x6A - BALL N CHAIN
#_0DB4B7: db $12 ; ... $12 | 0x6B - CANNONBALL / CANNON TROOPER
#_0DB4B8: db $40 ; .s. $00 | 0x6C - MIRROR PORTAL
#_0DB4B9: db $00 ; ... $00 | 0x6D - RAT / CRICKET
#_0DB4BA: db $00 ; ... $00 | 0x6E - SNAKE
#_0DB4BB: db $40 ; .s. $00 | 0x6F - KEESE
#_0DB4BC: db $19 ; ... $19 | 0x70 - KING HELMASAUR FIREBALL
#_0DB4BD: db $00 ; ... $00 | 0x71 - LEEVER
#_0DB4BE: db $00 ; ... $00 | 0x72 - FAERIE POND TRIGGER
#_0DB4BF: db $0A ; ... $0A | 0x73 - UNCLE / PRIEST / MANTLE
#_0DB4C0: db $0D ; ... $0D | 0x74 - RUNNING MAN
#_0DB4C1: db $0A ; ... $0A | 0x75 - BOTTLE MERCHANT
#_0DB4C2: db $0A ; ... $0A | 0x76 - ZELDA
#_0DB4C3: db $80 ; i.. $00 | 0x77 - ANTIFAIRY
#_0DB4C4: db $0A ; ... $0A | 0x78 - SAHASRAHLAS WIFE
#_0DB4C5: db $41 ; .s. $01 | 0x79 - BEE
#_0DB4C6: db $00 ; ... $00 | 0x7A - AGAHNIM
#_0DB4C7: db $40 ; .s. $00 | 0x7B - AGAHNIMS BALLS
#_0DB4C8: db $00 ; ... $00 | 0x7C - GREEN STALFOS
#_0DB4C9: db $49 ; .s. $09 | 0x7D - BIG SPIKE
#_0DB4CA: db $00 ; ... $00 | 0x7E - FIREBAR CLOCKWISE
#_0DB4CB: db $00 ; ... $00 | 0x7F - FIREBAR COUNTERCLOCKWISE
#_0DB4CC: db $C0 ; is. $00 | 0x80 - FIRESNAKE
#_0DB4CD: db $00 ; ... $00 | 0x81 - HOVER
#_0DB4CE: db $40 ; .s. $00 | 0x82 - ANTIFAIRY CIRCLE
#_0DB4CF: db $00 ; ... $00 | 0x83 - GREEN EYEGORE / GREEN MIMIC
#_0DB4D0: db $00 ; ... $00 | 0x84 - RED EYEGORE / RED MIMIC
#_0DB4D1: db $40 ; .s. $00 | 0x85 - YELLOW STALFOS
#_0DB4D2: db $00 ; ... $00 | 0x86 - KODONGO
#_0DB4D3: db $00 ; ... $00 | 0x87 - KONDONGO FIRE
#_0DB4D4: db $09 ; ... $09 | 0x88 - MOTHULA
#_0DB4D5: db $80 ; i.. $00 | 0x89 - MOTHULA BEAM
#_0DB4D6: db $C0 ; is. $00 | 0x8A - SPIKE BLOCK
#_0DB4D7: db $00 ; ... $00 | 0x8B - GIBDO
#_0DB4D8: db $40 ; .s. $00 | 0x8C - ARRGHUS
#_0DB4D9: db $00 ; ... $00 | 0x8D - ARRGHI
#_0DB4DA: db $00 ; ... $00 | 0x8E - TERRORPIN
#_0DB4DB: db $80 ; i.. $00 | 0x8F - BLOB
#_0DB4DC: db $00 ; ... $00 | 0x90 - WALLMASTER
#_0DB4DD: db $00 ; ... $00 | 0x91 - STALFOS KNIGHT
#_0DB4DE: db $18 ; ... $18 | 0x92 - KING HELMASAUR
#_0DB4DF: db $5A ; .s. $1A | 0x93 - BUMPER
#_0DB4E0: db $00 ; ... $00 | 0x94 - PIROGUSU
#_0DB4E1: db $D4 ; is. $14 | 0x95 - LASER EYE LEFT
#_0DB4E2: db $D4 ; is. $14 | 0x96 - LASER EYE RIGHT
#_0DB4E3: db $D4 ; is. $14 | 0x97 - LASER EYE TOP
#_0DB4E4: db $D4 ; is. $14 | 0x98 - LASER EYE BOTTOM
#_0DB4E5: db $00 ; ... $00 | 0x99 - PENGATOR
#_0DB4E6: db $40 ; .s. $00 | 0x9A - KYAMERON
#_0DB4E7: db $00 ; ... $00 | 0x9B - WIZZROBE
#_0DB4E8: db $80 ; i.. $00 | 0x9C - ZORO
#_0DB4E9: db $80 ; i.. $00 | 0x9D - BABASU
#_0DB4EA: db $40 ; .s. $00 | 0x9E - HAUNTED GROVE OSTRITCH
#_0DB4EB: db $40 ; .s. $00 | 0x9F - HAUNTED GROVE RABBIT
#_0DB4EC: db $40 ; .s. $00 | 0xA0 - HAUNTED GROVE BIRD
#_0DB4ED: db $00 ; ... $00 | 0xA1 - FREEZOR
#_0DB4EE: db $09 ; ... $09 | 0xA2 - KHOLDSTARE
#_0DB4EF: db $1D ; ... $1D | 0xA3 - KHOLDSTARE SHELL
#_0DB4F0: db $00 ; ... $00 | 0xA4 - FALLING ICE
#_0DB4F1: db $00 ; ... $00 | 0xA5 - BLUE ZAZAK
#_0DB4F2: db $00 ; ... $00 | 0xA6 - RED ZAZAK
#_0DB4F3: db $00 ; ... $00 | 0xA7 - STALFOS
#_0DB4F4: db $00 ; ... $00 | 0xA8 - GREEN ZIRRO
#_0DB4F5: db $00 ; ... $00 | 0xA9 - BLUE ZIRRO
#_0DB4F6: db $00 ; ... $00 | 0xAA - PIKIT
#_0DB4F7: db $00 ; ... $00 | 0xAB - CRYSTAL MAIDEN
#_0DB4F8: db $00 ; ... $00 | 0xAC - APPLE
#_0DB4F9: db $0A ; ... $0A | 0xAD - OLD MAN
#_0DB4FA: db $1B ; ... $1B | 0xAE - PIPE DOWN
#_0DB4FB: db $1B ; ... $1B | 0xAF - PIPE UP
#_0DB4FC: db $1B ; ... $1B | 0xB0 - PIPE RIGHT
#_0DB4FD: db $1B ; ... $1B | 0xB1 - PIPE LEFT
#_0DB4FE: db $41 ; .s. $01 | 0xB2 - GOOD BEE
#_0DB4FF: db $00 ; ... $00 | 0xB3 - PEDESTAL PLAQUE
#_0DB500: db $03 ; ... $03 | 0xB4 - PURPLE CHEST
#_0DB501: db $07 ; ... $07 | 0xB5 - BOMB SHOP GUY
#_0DB502: db $07 ; ... $07 | 0xB6 - KIKI
#_0DB503: db $03 ; ... $03 | 0xB7 - BLIND MAIDEN
#_0DB504: db $0A ; ... $0A | 0xB8 - DIALOGUE TESTER
#_0DB505: db $00 ; ... $00 | 0xB9 - BULLY / PINK BALL
#_0DB506: db $01 ; ... $01 | 0xBA - WHIRLPOOL
#_0DB507: db $0A ; ... $0A | 0xBB - SHOPKEEPER / CHEST GAME GUY
#_0DB508: db $0A ; ... $0A | 0xBC - DRUNKARD
#_0DB509: db $09 ; ... $09 | 0xBD - VITREOUS
#_0DB50A: db $00 ; ... $00 | 0xBE - VITREOUS SMALL EYE
#_0DB50B: db $00 ; ... $00 | 0xBF - LIGHTNING
#_0DB50C: db $00 ; ... $00 | 0xC0 - CATFISH
#_0DB50D: db $00 ; ... $00 | 0xC1 - CUTSCENE AGAHNIM
#_0DB50E: db $09 ; ... $09 | 0xC2 - BOULDER
#_0DB50F: db $00 ; ... $00 | 0xC3 - GIBO
#_0DB510: db $00 ; ... $00 | 0xC4 - THIEF
#_0DB511: db $40 ; .s. $00 | 0xC5 - MEDUSA
#_0DB512: db $40 ; .s. $00 | 0xC6 - 4WAY SHOOTER
#_0DB513: db $00 ; ... $00 | 0xC7 - POKEY
#_0DB514: db $00 ; ... $00 | 0xC8 - BIG FAERIE
#_0DB515: db $00 ; ... $00 | 0xC9 - TEKTITE / FIREBAT
#_0DB516: db $00 ; ... $00 | 0xCA - CHAIN CHOMP
#_0DB517: db $89 ; i.. $09 | 0xCB - TRINEXX ROCK HEAD
#_0DB518: db $80 ; i.. $00 | 0xCC - TRINEXX FIRE HEAD
#_0DB519: db $80 ; i.. $00 | 0xCD - TRINEXX ICE HEAD
#_0DB51A: db $00 ; ... $00 | 0xCE - BLIND
#_0DB51B: db $1C ; ... $1C | 0xCF - SWAMOLA
#_0DB51C: db $00 ; ... $00 | 0xD0 - LYNEL
#_0DB51D: db $40 ; .s. $00 | 0xD1 - BUNNYBEAM / SMOKE
#_0DB51E: db $00 ; ... $00 | 0xD2 - FLOPPING FISH
#_0DB51F: db $00 ; ... $00 | 0xD3 - STAL
#_0DB520: db $1C ; ... $1C | 0xD4 - LANDMINE
#_0DB521: db $07 ; ... $07 | 0xD5 - DIG GAME GUY
#_0DB522: db $03 ; ... $03 | 0xD6 - GANON
#_0DB523: db $03 ; ... $03 | 0xD7 - GANON
#_0DB524: db $44 ; .s. $04 | 0xD8 - HEART
#_0DB525: db $44 ; .s. $04 | 0xD9 - GREEN RUPEE
#_0DB526: db $44 ; .s. $04 | 0xDA - BLUE RUPEE
#_0DB527: db $44 ; .s. $04 | 0xDB - RED RUPEE
#_0DB528: db $44 ; .s. $04 | 0xDC - BOMB REFILL 1
#_0DB529: db $44 ; .s. $04 | 0xDD - BOMB REFILL 4
#_0DB52A: db $44 ; .s. $04 | 0xDE - BOMB REFILL 8
#_0DB52B: db $44 ; .s. $04 | 0xDF - SMALL MAGIC DECANTER
#_0DB52C: db $44 ; .s. $04 | 0xE0 - LARGE MAGIC DECANTER
#_0DB52D: db $44 ; .s. $04 | 0xE1 - ARROW REFILL 5
#_0DB52E: db $44 ; .s. $04 | 0xE2 - ARROW REFILL 10
#_0DB52F: db $43 ; .s. $03 | 0xE3 - FAERIE
#_0DB530: db $44 ; .s. $04 | 0xE4 - SMALL KEY
#_0DB531: db $43 ; .s. $03 | 0xE5 - BIG KEY
#_0DB532: db $40 ; .s. $00 | 0xE6 - STOLEN SHIELD
#_0DB533: db $C0 ; is. $00 | 0xE7 - MUSHROOM
#_0DB534: db $C0 ; is. $00 | 0xE8 - FAKE MASTER SWORD
#_0DB535: db $C7 ; is. $07 | 0xE9 - MAGIC SHOP ASSISTANT
#_0DB536: db $C3 ; is. $03 | 0xEA - HEART CONTAINER
#_0DB537: db $C3 ; is. $03 | 0xEB - HEART PIECE
#_0DB538: db $C0 ; is. $00 | 0xEC - THROWN ITEM
#_0DB539: db $1B ; ... $1B | 0xED - SOMARIA PLATFORM
#_0DB53A: db $08 ; ... $08 | 0xEE - CASTLE MANTLE
#_0DB53B: db $1B ; ... $1B | 0xEF - UNUSED SOMARIA PLATFORM
#_0DB53C: db $1B ; ... $1B | 0xF0 - UNUSED SOMARIA PLATFORM
#_0DB53D: db $1B ; ... $1B | 0xF1 - UNUSED SOMARIA PLATFORM
#_0DB53E: db $03 ; ... $03 | 0xF2 - MEDALLION TABLET

;===================================================================================================
; tttt asbp
;   t - essentially acts as a tile hitbox
;   a - deflect arrows
;   s - allows hitting otherwise unslashable sprites
;   b - dies like a boss
;   p - ignore pits when thrown, or allow pits
;       This one is weird, because it does 2 distinct and opposite things.
;       For thrown sprites, this bit being set makes it ignore pits, and crash as if on land.
;       For other sprites, this bit being set means it can process pit collision and fall.
;===================================================================================================
SpriteData_TileInteraction:
#_0DB53F: db $00 ; .... $0 | 0x00 - RAVEN
#_0DB540: db $00 ; .... $0 | 0x01 - VULTURE
#_0DB541: db $00 ; .... $0 | 0x02 - STALFOS HEAD
#_0DB542: db $00 ; .... $0 | 0x03 - NULL
#_0DB543: db $00 ; .... $0 | 0x04 - CORRECT PULL SWITCH
#_0DB544: db $00 ; .... $0 | 0x05 - UNUSED CORRECT PULL SWITCH
#_0DB545: db $00 ; .... $0 | 0x06 - WRONG PULL SWITCH
#_0DB546: db $00 ; .... $0 | 0x07 - UNUSED WRONG PULL SWITCH
#_0DB547: db $00 ; .... $0 | 0x08 - OCTOROK
#_0DB548: db $0A ; a.b. $0 | 0x09 - MOLDORM
#_0DB549: db $00 ; .... $0 | 0x0A - OCTOROK 4WAY
#_0DB54A: db $01 ; ...p $0 | 0x0B - CUCCO
#_0DB54B: db $30 ; .... $0 | 0x0C - OCTOROK STONE
#_0DB54C: db $00 ; .... $0 | 0x0D - BUZZBLOB
#_0DB54D: db $00 ; .... $0 | 0x0E - SNAPDRAGON
#_0DB54E: db $20 ; .... $0 | 0x0F - OCTOBALLOON
#_0DB54F: db $10 ; .... $0 | 0x10 - OCTOBALLOON BABY
#_0DB550: db $00 ; .... $0 | 0x11 - HINOX
#_0DB551: db $00 ; .... $0 | 0x12 - MOBLIN
#_0DB552: db $01 ; ...p $0 | 0x13 - MINI HELMASAUR
#_0DB553: db $00 ; .... $0 | 0x14 - THIEVES TOWN GRATE
#_0DB554: db $00 ; .... $0 | 0x15 - ANTIFAIRY
#_0DB555: db $00 ; .... $0 | 0x16 - SAHASRAHLA / AGINAH
#_0DB556: db $00 ; .... $0 | 0x17 - HOARDER
#_0DB557: db $00 ; .... $0 | 0x18 - MINI MOLDORM
#_0DB558: db $00 ; .... $0 | 0x19 - POE
#_0DB559: db $00 ; .... $0 | 0x1A - SMITHY
#_0DB55A: db $08 ; a... $0 | 0x1B - ARROW
#_0DB55B: db $20 ; .... $0 | 0x1C - STATUE
#_0DB55C: db $00 ; .... $0 | 0x1D - FLUTEQUEST
#_0DB55D: db $04 ; .s.. $0 | 0x1E - CRYSTAL SWITCH
#_0DB55E: db $00 ; .... $0 | 0x1F - SICK KID
#_0DB55F: db $00 ; .... $0 | 0x20 - SLUGGULA
#_0DB560: db $00 ; .... $0 | 0x21 - WATER SWITCH
#_0DB561: db $00 ; .... $0 | 0x22 - ROPA
#_0DB562: db $00 ; .... $0 | 0x23 - RED BARI
#_0DB563: db $00 ; .... $0 | 0x24 - BLUE BARI
#_0DB564: db $00 ; .... $0 | 0x25 - TALKING TREE
#_0DB565: db $01 ; ...p $0 | 0x26 - HARDHAT BEETLE
#_0DB566: db $04 ; .s.. $0 | 0x27 - DEADROCK
#_0DB567: db $00 ; .... $0 | 0x28 - DARK WORLD HINT NPC
#_0DB568: db $00 ; .... $0 | 0x29 - ADULT
#_0DB569: db $00 ; .... $0 | 0x2A - SWEEPING LADY
#_0DB56A: db $00 ; .... $0 | 0x2B - HOBO
#_0DB56B: db $00 ; .... $0 | 0x2C - LUMBERJACKS
#_0DB56C: db $00 ; .... $0 | 0x2D - TELEPATHIC TILE
#_0DB56D: db $00 ; .... $0 | 0x2E - FLUTE KID
#_0DB56E: db $00 ; .... $0 | 0x2F - RACE GAME LADY
#_0DB56F: db $00 ; .... $0 | 0x30 - RACE GAME GUY
#_0DB570: db $00 ; .... $0 | 0x31 - FORTUNE TELLER
#_0DB571: db $00 ; .... $0 | 0x32 - ARGUE BROS
#_0DB572: db $00 ; .... $0 | 0x33 - RUPEE PULL
#_0DB573: db $00 ; .... $0 | 0x34 - YOUNG SNITCH
#_0DB574: db $00 ; .... $0 | 0x35 - INNKEEPER
#_0DB575: db $00 ; .... $0 | 0x36 - WITCH
#_0DB576: db $00 ; .... $0 | 0x37 - WATERFALL
#_0DB577: db $00 ; .... $0 | 0x38 - EYE STATUE
#_0DB578: db $00 ; .... $0 | 0x39 - LOCKSMITH
#_0DB579: db $00 ; .... $0 | 0x3A - MAGIC BAT
#_0DB57A: db $00 ; .... $0 | 0x3B - BONK ITEM
#_0DB57B: db $00 ; .... $0 | 0x3C - KID IN KAK
#_0DB57C: db $00 ; .... $0 | 0x3D - OLD SNITCH
#_0DB57D: db $00 ; .... $0 | 0x3E - HOARDER
#_0DB57E: db $68 ; a... $0 | 0x3F - TUTORIAL GUARD
#_0DB57F: db $60 ; .... $0 | 0x40 - LIGHTNING GATE
#_0DB580: db $61 ; ...p $0 | 0x41 - BLUE GUARD
#_0DB581: db $61 ; ...p $0 | 0x42 - GREEN GUARD
#_0DB582: db $61 ; ...p $0 | 0x43 - RED SPEAR GUARD
#_0DB583: db $61 ; ...p $0 | 0x44 - BLUESAIN BOLT
#_0DB584: db $61 ; ...p $0 | 0x45 - USAIN BOLT
#_0DB585: db $61 ; ...p $0 | 0x46 - BLUE ARCHER
#_0DB586: db $61 ; ...p $0 | 0x47 - GREEN BUSH GUARD
#_0DB587: db $61 ; ...p $0 | 0x48 - RED JAVELIN GUARD
#_0DB588: db $61 ; ...p $0 | 0x49 - RED BUSH GUARD
#_0DB589: db $61 ; ...p $0 | 0x4A - BOMB GUARD
#_0DB58A: db $61 ; ...p $0 | 0x4B - GREEN KNIFE GUARD
#_0DB58B: db $00 ; .... $0 | 0x4C - GELDMAN
#_0DB58C: db $00 ; .... $0 | 0x4D - TOPPO
#_0DB58D: db $00 ; .... $0 | 0x4E - POPO
#_0DB58E: db $00 ; .... $0 | 0x4F - POPO
#_0DB58F: db $00 ; .... $0 | 0x50 - CANNONBALL
#_0DB590: db $00 ; .... $0 | 0x51 - ARMOS STATUE
#_0DB591: db $02 ; ..b. $0 | 0x52 - KING ZORA
#_0DB592: db $02 ; ..b. $0 | 0x53 - ARMOS KNIGHT
#_0DB593: db $02 ; ..b. $0 | 0x54 - LANMOLAS
#_0DB594: db $00 ; .... $0 | 0x55 - ZORA / FIREBALL
#_0DB595: db $00 ; .... $0 | 0x56 - ZORA
#_0DB596: db $70 ; .... $0 | 0x57 - DESERT STATUE
#_0DB597: db $00 ; .... $0 | 0x58 - CRAB
#_0DB598: db $00 ; .... $0 | 0x59 - LOST WOODS BIRD
#_0DB599: db $00 ; .... $0 | 0x5A - LOST WOODS SQUIRREL
#_0DB59A: db $90 ; .... $0 | 0x5B - SPARK
#_0DB59B: db $90 ; .... $0 | 0x5C - SPARK
#_0DB59C: db $00 ; .... $0 | 0x5D - ROLLER VERTICAL DOWN FIRST
#_0DB59D: db $00 ; .... $0 | 0x5E - ROLLER VERTICAL UP FIRST
#_0DB59E: db $00 ; .... $0 | 0x5F - ROLLER HORIZONTAL RIGHT FIRST
#_0DB59F: db $00 ; .... $0 | 0x60 - ROLLER HORIZONTAL LEFT FIRST
#_0DB5A0: db $00 ; .... $0 | 0x61 - BEAMOS
#_0DB5A1: db $00 ; .... $0 | 0x62 - MASTERSWORD
#_0DB5A2: db $00 ; .... $0 | 0x63 - DEBIRANDO PIT
#_0DB5A3: db $00 ; .... $0 | 0x64 - DEBIRANDO
#_0DB5A4: db $00 ; .... $0 | 0x65 - ARCHERY GUY
#_0DB5A5: db $00 ; .... $0 | 0x66 - WALL CANNON VERTICAL LEFT
#_0DB5A6: db $00 ; .... $0 | 0x67 - WALL CANNON VERTICAL RIGHT
#_0DB5A7: db $00 ; .... $0 | 0x68 - WALL CANNON HORIZONTAL TOP
#_0DB5A8: db $00 ; .... $0 | 0x69 - WALL CANNON HORIZONTAL BOTTOM
#_0DB5A9: db $60 ; .... $0 | 0x6A - BALL N CHAIN
#_0DB5AA: db $60 ; .... $0 | 0x6B - CANNONBALL / CANNON TROOPER
#_0DB5AB: db $00 ; .... $0 | 0x6C - MIRROR PORTAL
#_0DB5AC: db $00 ; .... $0 | 0x6D - RAT / CRICKET
#_0DB5AD: db $00 ; .... $0 | 0x6E - SNAKE
#_0DB5AE: db $00 ; .... $0 | 0x6F - KEESE
#_0DB5AF: db $00 ; .... $0 | 0x70 - KING HELMASAUR FIREBALL
#_0DB5B0: db $00 ; .... $0 | 0x71 - LEEVER
#_0DB5B1: db $00 ; .... $0 | 0x72 - FAERIE POND TRIGGER
#_0DB5B2: db $00 ; .... $0 | 0x73 - UNCLE / PRIEST / MANTLE
#_0DB5B3: db $00 ; .... $0 | 0x74 - RUNNING MAN
#_0DB5B4: db $00 ; .... $0 | 0x75 - BOTTLE MERCHANT
#_0DB5B5: db $00 ; .... $0 | 0x76 - ZELDA
#_0DB5B6: db $80 ; .... $0 | 0x77 - ANTIFAIRY
#_0DB5B7: db $00 ; .... $0 | 0x78 - SAHASRAHLAS WIFE
#_0DB5B8: db $00 ; .... $0 | 0x79 - BEE
#_0DB5B9: db $02 ; ..b. $0 | 0x7A - AGAHNIM
#_0DB5BA: db $00 ; .... $0 | 0x7B - AGAHNIMS BALLS
#_0DB5BB: db $00 ; .... $0 | 0x7C - GREEN STALFOS
#_0DB5BC: db $70 ; .... $0 | 0x7D - BIG SPIKE
#_0DB5BD: db $00 ; .... $0 | 0x7E - FIREBAR CLOCKWISE
#_0DB5BE: db $00 ; .... $0 | 0x7F - FIREBAR COUNTERCLOCKWISE
#_0DB5BF: db $00 ; .... $0 | 0x80 - FIRESNAKE
#_0DB5C0: db $00 ; .... $0 | 0x81 - HOVER
#_0DB5C1: db $00 ; .... $0 | 0x82 - ANTIFAIRY CIRCLE
#_0DB5C2: db $00 ; .... $0 | 0x83 - GREEN EYEGORE / GREEN MIMIC
#_0DB5C3: db $00 ; .... $0 | 0x84 - RED EYEGORE / RED MIMIC
#_0DB5C4: db $00 ; .... $0 | 0x85 - YELLOW STALFOS
#_0DB5C5: db $B0 ; .... $0 | 0x86 - KODONGO
#_0DB5C6: db $00 ; .... $0 | 0x87 - KONDONGO FIRE
#_0DB5C7: db $C2 ; ..b. $0 | 0x88 - MOTHULA
#_0DB5C8: db $00 ; .... $0 | 0x89 - MOTHULA BEAM
#_0DB5C9: db $20 ; .... $0 | 0x8A - SPIKE BLOCK
#_0DB5CA: db $00 ; .... $0 | 0x8B - GIBDO
#_0DB5CB: db $02 ; ..b. $0 | 0x8C - ARRGHUS
#_0DB5CC: db $00 ; .... $0 | 0x8D - ARRGHI
#_0DB5CD: db $00 ; .... $0 | 0x8E - TERRORPIN
#_0DB5CE: db $00 ; .... $0 | 0x8F - BLOB
#_0DB5CF: db $00 ; .... $0 | 0x90 - WALLMASTER
#_0DB5D0: db $00 ; .... $0 | 0x91 - STALFOS KNIGHT
#_0DB5D1: db $02 ; ..b. $0 | 0x92 - KING HELMASAUR
#_0DB5D2: db $00 ; .... $0 | 0x93 - BUMPER
#_0DB5D3: db $B0 ; .... $0 | 0x94 - PIROGUSU
#_0DB5D4: db $00 ; .... $0 | 0x95 - LASER EYE LEFT
#_0DB5D5: db $00 ; .... $0 | 0x96 - LASER EYE RIGHT
#_0DB5D6: db $00 ; .... $0 | 0x97 - LASER EYE TOP
#_0DB5D7: db $00 ; .... $0 | 0x98 - LASER EYE BOTTOM
#_0DB5D8: db $00 ; .... $0 | 0x99 - PENGATOR
#_0DB5D9: db $00 ; .... $0 | 0x9A - KYAMERON
#_0DB5DA: db $00 ; .... $0 | 0x9B - WIZZROBE
#_0DB5DB: db $A0 ; .... $0 | 0x9C - ZORO
#_0DB5DC: db $A0 ; .... $0 | 0x9D - BABASU
#_0DB5DD: db $00 ; .... $0 | 0x9E - HAUNTED GROVE OSTRITCH
#_0DB5DE: db $00 ; .... $0 | 0x9F - HAUNTED GROVE RABBIT
#_0DB5DF: db $00 ; .... $0 | 0xA0 - HAUNTED GROVE BIRD
#_0DB5E0: db $04 ; .s.. $0 | 0xA1 - FREEZOR
#_0DB5E1: db $02 ; ..b. $0 | 0xA2 - KHOLDSTARE
#_0DB5E2: db $00 ; .... $0 | 0xA3 - KHOLDSTARE SHELL
#_0DB5E3: db $00 ; .... $0 | 0xA4 - FALLING ICE
#_0DB5E4: db $00 ; .... $0 | 0xA5 - BLUE ZAZAK
#_0DB5E5: db $00 ; .... $0 | 0xA6 - RED ZAZAK
#_0DB5E6: db $00 ; .... $0 | 0xA7 - STALFOS
#_0DB5E7: db $00 ; .... $0 | 0xA8 - GREEN ZIRRO
#_0DB5E8: db $00 ; .... $0 | 0xA9 - BLUE ZIRRO
#_0DB5E9: db $00 ; .... $0 | 0xAA - PIKIT
#_0DB5EA: db $00 ; .... $0 | 0xAB - CRYSTAL MAIDEN
#_0DB5EB: db $00 ; .... $0 | 0xAC - APPLE
#_0DB5EC: db $00 ; .... $0 | 0xAD - OLD MAN
#_0DB5ED: db $00 ; .... $0 | 0xAE - PIPE DOWN
#_0DB5EE: db $00 ; .... $0 | 0xAF - PIPE UP
#_0DB5EF: db $00 ; .... $0 | 0xB0 - PIPE RIGHT
#_0DB5F0: db $00 ; .... $0 | 0xB1 - PIPE LEFT
#_0DB5F1: db $00 ; .... $0 | 0xB2 - GOOD BEE
#_0DB5F2: db $00 ; .... $0 | 0xB3 - PEDESTAL PLAQUE
#_0DB5F3: db $00 ; .... $0 | 0xB4 - PURPLE CHEST
#_0DB5F4: db $00 ; .... $0 | 0xB5 - BOMB SHOP GUY
#_0DB5F5: db $00 ; .... $0 | 0xB6 - KIKI
#_0DB5F6: db $00 ; .... $0 | 0xB7 - BLIND MAIDEN
#_0DB5F7: db $00 ; .... $0 | 0xB8 - DIALOGUE TESTER
#_0DB5F8: db $00 ; .... $0 | 0xB9 - BULLY / PINK BALL
#_0DB5F9: db $00 ; .... $0 | 0xBA - WHIRLPOOL
#_0DB5FA: db $00 ; .... $0 | 0xBB - SHOPKEEPER / CHEST GAME GUY
#_0DB5FB: db $00 ; .... $0 | 0xBC - DRUNKARD
#_0DB5FC: db $C2 ; ..b. $0 | 0xBD - VITREOUS
#_0DB5FD: db $00 ; .... $0 | 0xBE - VITREOUS SMALL EYE
#_0DB5FE: db $00 ; .... $0 | 0xBF - LIGHTNING
#_0DB5FF: db $00 ; .... $0 | 0xC0 - CATFISH
#_0DB600: db $00 ; .... $0 | 0xC1 - CUTSCENE AGAHNIM
#_0DB601: db $00 ; .... $0 | 0xC2 - BOULDER
#_0DB602: db $00 ; .... $0 | 0xC3 - GIBO
#_0DB603: db $04 ; .s.. $0 | 0xC4 - THIEF
#_0DB604: db $00 ; .... $0 | 0xC5 - MEDUSA
#_0DB605: db $00 ; .... $0 | 0xC6 - 4WAY SHOOTER
#_0DB606: db $00 ; .... $0 | 0xC7 - POKEY
#_0DB607: db $00 ; .... $0 | 0xC8 - BIG FAERIE
#_0DB608: db $00 ; .... $0 | 0xC9 - TEKTITE / FIREBAT
#_0DB609: db $00 ; .... $0 | 0xCA - CHAIN CHOMP
#_0DB60A: db $02 ; ..b. $0 | 0xCB - TRINEXX ROCK HEAD
#_0DB60B: db $02 ; ..b. $0 | 0xCC - TRINEXX FIRE HEAD
#_0DB60C: db $02 ; ..b. $0 | 0xCD - TRINEXX ICE HEAD
#_0DB60D: db $02 ; ..b. $0 | 0xCE - BLIND
#_0DB60E: db $00 ; .... $0 | 0xCF - SWAMOLA
#_0DB60F: db $00 ; .... $0 | 0xD0 - LYNEL
#_0DB610: db $00 ; .... $0 | 0xD1 - BUNNYBEAM / SMOKE
#_0DB611: db $00 ; .... $0 | 0xD2 - FLOPPING FISH
#_0DB612: db $00 ; .... $0 | 0xD3 - STAL
#_0DB613: db $00 ; .... $0 | 0xD4 - LANDMINE
#_0DB614: db $00 ; .... $0 | 0xD5 - DIG GAME GUY
#_0DB615: db $0A ; a.b. $0 | 0xD6 - GANON
#_0DB616: db $0A ; a.b. $0 | 0xD7 - GANON
#_0DB617: db $10 ; .... $0 | 0xD8 - HEART
#_0DB618: db $10 ; .... $0 | 0xD9 - GREEN RUPEE
#_0DB619: db $10 ; .... $0 | 0xDA - BLUE RUPEE
#_0DB61A: db $10 ; .... $0 | 0xDB - RED RUPEE
#_0DB61B: db $00 ; .... $0 | 0xDC - BOMB REFILL 1
#_0DB61C: db $00 ; .... $0 | 0xDD - BOMB REFILL 4
#_0DB61D: db $00 ; .... $0 | 0xDE - BOMB REFILL 8
#_0DB61E: db $10 ; .... $0 | 0xDF - SMALL MAGIC DECANTER
#_0DB61F: db $10 ; .... $0 | 0xE0 - LARGE MAGIC DECANTER
#_0DB620: db $10 ; .... $0 | 0xE1 - ARROW REFILL 5
#_0DB621: db $10 ; .... $0 | 0xE2 - ARROW REFILL 10
#_0DB622: db $00 ; .... $0 | 0xE3 - FAERIE
#_0DB623: db $10 ; .... $0 | 0xE4 - SMALL KEY
#_0DB624: db $00 ; .... $0 | 0xE5 - BIG KEY
#_0DB625: db $00 ; .... $0 | 0xE6 - STOLEN SHIELD
#_0DB626: db $00 ; .... $0 | 0xE7 - MUSHROOM
#_0DB627: db $00 ; .... $0 | 0xE8 - FAKE MASTER SWORD
#_0DB628: db $00 ; .... $0 | 0xE9 - MAGIC SHOP ASSISTANT
#_0DB629: db $00 ; .... $0 | 0xEA - HEART CONTAINER
#_0DB62A: db $00 ; .... $0 | 0xEB - HEART PIECE
#_0DB62B: db $00 ; .... $0 | 0xEC - THROWN ITEM
#_0DB62C: db $00 ; .... $0 | 0xED - SOMARIA PLATFORM
#_0DB62D: db $00 ; .... $0 | 0xEE - CASTLE MANTLE
#_0DB62E: db $00 ; .... $0 | 0xEF - UNUSED SOMARIA PLATFORM
#_0DB62F: db $00 ; .... $0 | 0xF0 - UNUSED SOMARIA PLATFORM
#_0DB630: db $00 ; .... $0 | 0xF1 - UNUSED SOMARIA PLATFORM
#_0DB631: db $00 ; .... $0 | 0xF2 - MEDALLION TABLET

;===================================================================================================
; iwbs pppp
;   i - limits pit and conveyor interaction
;   w - check for water uniquely (0: skip | 1: check water)
;   b - blockable by shield
;   s - damage SFX (0: normal | 1: boss)
;   p - prize pack
;===================================================================================================
SpriteData_PrizePack:
#_0DB632: db $83 ; i... $3 | 0x00 - RAVEN
#_0DB633: db $96 ; i..s $6 | 0x01 - VULTURE
#_0DB634: db $84 ; i... $4 | 0x02 - STALFOS HEAD
#_0DB635: db $80 ; i... $0 | 0x03 - NULL
#_0DB636: db $80 ; i... $0 | 0x04 - CORRECT PULL SWITCH
#_0DB637: db $80 ; i... $0 | 0x05 - UNUSED CORRECT PULL SWITCH
#_0DB638: db $80 ; i... $0 | 0x06 - WRONG PULL SWITCH
#_0DB639: db $80 ; i... $0 | 0x07 - UNUSED WRONG PULL SWITCH
#_0DB63A: db $02 ; .... $2 | 0x08 - OCTOROK
#_0DB63B: db $00 ; .... $0 | 0x09 - MOLDORM
#_0DB63C: db $02 ; .... $2 | 0x0A - OCTOROK 4WAY
#_0DB63D: db $80 ; i... $0 | 0x0B - CUCCO
#_0DB63E: db $A0 ; i.b. $0 | 0x0C - OCTOROK STONE
#_0DB63F: db $83 ; i... $3 | 0x0D - BUZZBLOB
#_0DB640: db $97 ; i..s $7 | 0x0E - SNAPDRAGON
#_0DB641: db $80 ; i... $0 | 0x0F - OCTOBALLOON
#_0DB642: db $80 ; i... $0 | 0x10 - OCTOBALLOON BABY
#_0DB643: db $94 ; i..s $4 | 0x11 - HINOX
#_0DB644: db $91 ; i..s $1 | 0x12 - MOBLIN
#_0DB645: db $07 ; .... $7 | 0x13 - MINI HELMASAUR
#_0DB646: db $00 ; .... $0 | 0x14 - THIEVES TOWN GRATE
#_0DB647: db $80 ; i... $0 | 0x15 - ANTIFAIRY
#_0DB648: db $00 ; .... $0 | 0x16 - SAHASRAHLA / AGINAH
#_0DB649: db $80 ; i... $0 | 0x17 - HOARDER
#_0DB64A: db $92 ; i..s $2 | 0x18 - MINI MOLDORM
#_0DB64B: db $96 ; i..s $6 | 0x19 - POE
#_0DB64C: db $80 ; i... $0 | 0x1A - SMITHY
#_0DB64D: db $A0 ; i.b. $0 | 0x1B - ARROW
#_0DB64E: db $00 ; .... $0 | 0x1C - STATUE
#_0DB64F: db $00 ; .... $0 | 0x1D - FLUTEQUEST
#_0DB650: db $00 ; .... $0 | 0x1E - CRYSTAL SWITCH
#_0DB651: db $80 ; i... $0 | 0x1F - SICK KID
#_0DB652: db $04 ; .... $4 | 0x20 - SLUGGULA
#_0DB653: db $80 ; i... $0 | 0x21 - WATER SWITCH
#_0DB654: db $82 ; i... $2 | 0x22 - ROPA
#_0DB655: db $06 ; .... $6 | 0x23 - RED BARI
#_0DB656: db $06 ; .... $6 | 0x24 - BLUE BARI
#_0DB657: db $00 ; .... $0 | 0x25 - TALKING TREE
#_0DB658: db $00 ; .... $0 | 0x26 - HARDHAT BEETLE
#_0DB659: db $80 ; i... $0 | 0x27 - DEADROCK
#_0DB65A: db $80 ; i... $0 | 0x28 - DARK WORLD HINT NPC
#_0DB65B: db $80 ; i... $0 | 0x29 - ADULT
#_0DB65C: db $80 ; i... $0 | 0x2A - SWEEPING LADY
#_0DB65D: db $80 ; i... $0 | 0x2B - HOBO
#_0DB65E: db $80 ; i... $0 | 0x2C - LUMBERJACKS
#_0DB65F: db $80 ; i... $0 | 0x2D - TELEPATHIC TILE
#_0DB660: db $80 ; i... $0 | 0x2E - FLUTE KID
#_0DB661: db $80 ; i... $0 | 0x2F - RACE GAME LADY
#_0DB662: db $80 ; i... $0 | 0x30 - RACE GAME GUY
#_0DB663: db $80 ; i... $0 | 0x31 - FORTUNE TELLER
#_0DB664: db $80 ; i... $0 | 0x32 - ARGUE BROS
#_0DB665: db $80 ; i... $0 | 0x33 - RUPEE PULL
#_0DB666: db $80 ; i... $0 | 0x34 - YOUNG SNITCH
#_0DB667: db $80 ; i... $0 | 0x35 - INNKEEPER
#_0DB668: db $80 ; i... $0 | 0x36 - WITCH
#_0DB669: db $80 ; i... $0 | 0x37 - WATERFALL
#_0DB66A: db $80 ; i... $0 | 0x38 - EYE STATUE
#_0DB66B: db $80 ; i... $0 | 0x39 - LOCKSMITH
#_0DB66C: db $80 ; i... $0 | 0x3A - MAGIC BAT
#_0DB66D: db $00 ; .... $0 | 0x3B - BONK ITEM
#_0DB66E: db $00 ; .... $0 | 0x3C - KID IN KAK
#_0DB66F: db $80 ; i... $0 | 0x3D - OLD SNITCH
#_0DB670: db $80 ; i... $0 | 0x3E - HOARDER
#_0DB671: db $90 ; i..s $0 | 0x3F - TUTORIAL GUARD
#_0DB672: db $80 ; i... $0 | 0x40 - LIGHTNING GATE
#_0DB673: db $91 ; i..s $1 | 0x41 - BLUE GUARD
#_0DB674: db $91 ; i..s $1 | 0x42 - GREEN GUARD
#_0DB675: db $91 ; i..s $1 | 0x43 - RED SPEAR GUARD
#_0DB676: db $97 ; i..s $7 | 0x44 - BLUESAIN BOLT
#_0DB677: db $91 ; i..s $1 | 0x45 - USAIN BOLT
#_0DB678: db $95 ; i..s $5 | 0x46 - BLUE ARCHER
#_0DB679: db $95 ; i..s $5 | 0x47 - GREEN BUSH GUARD
#_0DB67A: db $93 ; i..s $3 | 0x48 - RED JAVELIN GUARD
#_0DB67B: db $97 ; i..s $7 | 0x49 - RED BUSH GUARD
#_0DB67C: db $14 ; ...s $4 | 0x4A - BOMB GUARD
#_0DB67D: db $91 ; i..s $1 | 0x4B - GREEN KNIFE GUARD
#_0DB67E: db $92 ; i..s $2 | 0x4C - GELDMAN
#_0DB67F: db $81 ; i... $1 | 0x4D - TOPPO
#_0DB680: db $82 ; i... $2 | 0x4E - POPO
#_0DB681: db $82 ; i... $2 | 0x4F - POPO
#_0DB682: db $80 ; i... $0 | 0x50 - CANNONBALL
#_0DB683: db $85 ; i... $5 | 0x51 - ARMOS STATUE
#_0DB684: db $80 ; i... $0 | 0x52 - KING ZORA
#_0DB685: db $80 ; i... $0 | 0x53 - ARMOS KNIGHT
#_0DB686: db $80 ; i... $0 | 0x54 - LANMOLAS
#_0DB687: db $04 ; .... $4 | 0x55 - ZORA / FIREBALL
#_0DB688: db $04 ; .... $4 | 0x56 - ZORA
#_0DB689: db $80 ; i... $0 | 0x57 - DESERT STATUE
#_0DB68A: db $91 ; i..s $1 | 0x58 - CRAB
#_0DB68B: db $80 ; i... $0 | 0x59 - LOST WOODS BIRD
#_0DB68C: db $80 ; i... $0 | 0x5A - LOST WOODS SQUIRREL
#_0DB68D: db $80 ; i... $0 | 0x5B - SPARK
#_0DB68E: db $80 ; i... $0 | 0x5C - SPARK
#_0DB68F: db $80 ; i... $0 | 0x5D - ROLLER VERTICAL DOWN FIRST
#_0DB690: db $80 ; i... $0 | 0x5E - ROLLER VERTICAL UP FIRST
#_0DB691: db $80 ; i... $0 | 0x5F - ROLLER HORIZONTAL RIGHT FIRST
#_0DB692: db $80 ; i... $0 | 0x60 - ROLLER HORIZONTAL LEFT FIRST
#_0DB693: db $00 ; .... $0 | 0x61 - BEAMOS
#_0DB694: db $80 ; i... $0 | 0x62 - MASTERSWORD
#_0DB695: db $80 ; i... $0 | 0x63 - DEBIRANDO PIT
#_0DB696: db $82 ; i... $2 | 0x64 - DEBIRANDO
#_0DB697: db $8A ; i... $A | 0x65 - ARCHERY GUY
#_0DB698: db $80 ; i... $0 | 0x66 - WALL CANNON VERTICAL LEFT
#_0DB699: db $80 ; i... $0 | 0x67 - WALL CANNON VERTICAL RIGHT
#_0DB69A: db $80 ; i... $0 | 0x68 - WALL CANNON HORIZONTAL TOP
#_0DB69B: db $80 ; i... $0 | 0x69 - WALL CANNON HORIZONTAL BOTTOM
#_0DB69C: db $92 ; i..s $2 | 0x6A - BALL N CHAIN
#_0DB69D: db $91 ; i..s $1 | 0x6B - CANNONBALL / CANNON TROOPER
#_0DB69E: db $80 ; i... $0 | 0x6C - MIRROR PORTAL
#_0DB69F: db $82 ; i... $2 | 0x6D - RAT / CRICKET
#_0DB6A0: db $81 ; i... $1 | 0x6E - SNAKE
#_0DB6A1: db $81 ; i... $1 | 0x6F - KEESE
#_0DB6A2: db $80 ; i... $0 | 0x70 - KING HELMASAUR FIREBALL
#_0DB6A3: db $81 ; i... $1 | 0x71 - LEEVER
#_0DB6A4: db $80 ; i... $0 | 0x72 - FAERIE POND TRIGGER
#_0DB6A5: db $80 ; i... $0 | 0x73 - UNCLE / PRIEST / MANTLE
#_0DB6A6: db $80 ; i... $0 | 0x74 - RUNNING MAN
#_0DB6A7: db $80 ; i... $0 | 0x75 - BOTTLE MERCHANT
#_0DB6A8: db $80 ; i... $0 | 0x76 - ZELDA
#_0DB6A9: db $80 ; i... $0 | 0x77 - ANTIFAIRY
#_0DB6AA: db $80 ; i... $0 | 0x78 - SAHASRAHLAS WIFE
#_0DB6AB: db $80 ; i... $0 | 0x79 - BEE
#_0DB6AC: db $80 ; i... $0 | 0x7A - AGAHNIM
#_0DB6AD: db $80 ; i... $0 | 0x7B - AGAHNIMS BALLS
#_0DB6AE: db $97 ; i..s $7 | 0x7C - GREEN STALFOS
#_0DB6AF: db $80 ; i... $0 | 0x7D - BIG SPIKE
#_0DB6B0: db $80 ; i... $0 | 0x7E - FIREBAR CLOCKWISE
#_0DB6B1: db $80 ; i... $0 | 0x7F - FIREBAR COUNTERCLOCKWISE
#_0DB6B2: db $80 ; i... $0 | 0x80 - FIRESNAKE
#_0DB6B3: db $C2 ; iw.. $2 | 0x81 - HOVER
#_0DB6B4: db $80 ; i... $0 | 0x82 - ANTIFAIRY CIRCLE
#_0DB6B5: db $15 ; ...s $5 | 0x83 - GREEN EYEGORE / GREEN MIMIC
#_0DB6B6: db $15 ; ...s $5 | 0x84 - RED EYEGORE / RED MIMIC
#_0DB6B7: db $17 ; ...s $7 | 0x85 - YELLOW STALFOS
#_0DB6B8: db $06 ; .... $6 | 0x86 - KODONGO
#_0DB6B9: db $00 ; .... $0 | 0x87 - KONDONGO FIRE
#_0DB6BA: db $80 ; i... $0 | 0x88 - MOTHULA
#_0DB6BB: db $00 ; .... $0 | 0x89 - MOTHULA BEAM
#_0DB6BC: db $C0 ; iw.. $0 | 0x8A - SPIKE BLOCK
#_0DB6BD: db $13 ; ...s $3 | 0x8B - GIBDO
#_0DB6BE: db $40 ; .w.. $0 | 0x8C - ARRGHUS
#_0DB6BF: db $00 ; .... $0 | 0x8D - ARRGHI
#_0DB6C0: db $02 ; .... $2 | 0x8E - TERRORPIN
#_0DB6C1: db $06 ; .... $6 | 0x8F - BLOB
#_0DB6C2: db $10 ; ...s $0 | 0x90 - WALLMASTER
#_0DB6C3: db $14 ; ...s $4 | 0x91 - STALFOS KNIGHT
#_0DB6C4: db $00 ; .... $0 | 0x92 - KING HELMASAUR
#_0DB6C5: db $00 ; .... $0 | 0x93 - BUMPER
#_0DB6C6: db $40 ; .w.. $0 | 0x94 - PIROGUSU
#_0DB6C7: db $00 ; .... $0 | 0x95 - LASER EYE LEFT
#_0DB6C8: db $00 ; .... $0 | 0x96 - LASER EYE RIGHT
#_0DB6C9: db $00 ; .... $0 | 0x97 - LASER EYE TOP
#_0DB6CA: db $00 ; .... $0 | 0x98 - LASER EYE BOTTOM
#_0DB6CB: db $13 ; ...s $3 | 0x99 - PENGATOR
#_0DB6CC: db $46 ; .w.. $6 | 0x9A - KYAMERON
#_0DB6CD: db $11 ; ...s $1 | 0x9B - WIZZROBE
#_0DB6CE: db $80 ; i... $0 | 0x9C - ZORO
#_0DB6CF: db $80 ; i... $0 | 0x9D - BABASU
#_0DB6D0: db $00 ; .... $0 | 0x9E - HAUNTED GROVE OSTRITCH
#_0DB6D1: db $00 ; .... $0 | 0x9F - HAUNTED GROVE RABBIT
#_0DB6D2: db $00 ; .... $0 | 0xA0 - HAUNTED GROVE BIRD
#_0DB6D3: db $10 ; ...s $0 | 0xA1 - FREEZOR
#_0DB6D4: db $00 ; .... $0 | 0xA2 - KHOLDSTARE
#_0DB6D5: db $00 ; .... $0 | 0xA3 - KHOLDSTARE SHELL
#_0DB6D6: db $00 ; .... $0 | 0xA4 - FALLING ICE
#_0DB6D7: db $16 ; ...s $6 | 0xA5 - BLUE ZAZAK
#_0DB6D8: db $16 ; ...s $6 | 0xA6 - RED ZAZAK
#_0DB6D9: db $16 ; ...s $6 | 0xA7 - STALFOS
#_0DB6DA: db $81 ; i... $1 | 0xA8 - GREEN ZIRRO
#_0DB6DB: db $87 ; i... $7 | 0xA9 - BLUE ZIRRO
#_0DB6DC: db $82 ; i... $2 | 0xAA - PIKIT
#_0DB6DD: db $00 ; .... $0 | 0xAB - CRYSTAL MAIDEN
#_0DB6DE: db $80 ; i... $0 | 0xAC - APPLE
#_0DB6DF: db $80 ; i... $0 | 0xAD - OLD MAN
#_0DB6E0: db $00 ; .... $0 | 0xAE - PIPE DOWN
#_0DB6E1: db $00 ; .... $0 | 0xAF - PIPE UP
#_0DB6E2: db $00 ; .... $0 | 0xB0 - PIPE RIGHT
#_0DB6E3: db $00 ; .... $0 | 0xB1 - PIPE LEFT
#_0DB6E4: db $80 ; i... $0 | 0xB2 - GOOD BEE
#_0DB6E5: db $80 ; i... $0 | 0xB3 - PEDESTAL PLAQUE
#_0DB6E6: db $00 ; .... $0 | 0xB4 - PURPLE CHEST
#_0DB6E7: db $00 ; .... $0 | 0xB5 - BOMB SHOP GUY
#_0DB6E8: db $00 ; .... $0 | 0xB6 - KIKI
#_0DB6E9: db $00 ; .... $0 | 0xB7 - BLIND MAIDEN
#_0DB6EA: db $00 ; .... $0 | 0xB8 - DIALOGUE TESTER
#_0DB6EB: db $00 ; .... $0 | 0xB9 - BULLY / PINK BALL
#_0DB6EC: db $00 ; .... $0 | 0xBA - WHIRLPOOL
#_0DB6ED: db $00 ; .... $0 | 0xBB - SHOPKEEPER / CHEST GAME GUY
#_0DB6EE: db $00 ; .... $0 | 0xBC - DRUNKARD
#_0DB6EF: db $00 ; .... $0 | 0xBD - VITREOUS
#_0DB6F0: db $00 ; .... $0 | 0xBE - VITREOUS SMALL EYE
#_0DB6F1: db $00 ; .... $0 | 0xBF - LIGHTNING
#_0DB6F2: db $00 ; .... $0 | 0xC0 - CATFISH
#_0DB6F3: db $00 ; .... $0 | 0xC1 - CUTSCENE AGAHNIM
#_0DB6F4: db $00 ; .... $0 | 0xC2 - BOULDER
#_0DB6F5: db $80 ; i... $0 | 0xC3 - GIBO
#_0DB6F6: db $00 ; .... $0 | 0xC4 - THIEF
#_0DB6F7: db $00 ; .... $0 | 0xC5 - MEDUSA
#_0DB6F8: db $00 ; .... $0 | 0xC6 - 4WAY SHOOTER
#_0DB6F9: db $17 ; ...s $7 | 0xC7 - POKEY
#_0DB6FA: db $00 ; .... $0 | 0xC8 - BIG FAERIE
#_0DB6FB: db $12 ; ...s $2 | 0xC9 - TEKTITE / FIREBAT
#_0DB6FC: db $00 ; .... $0 | 0xCA - CHAIN CHOMP
#_0DB6FD: db $00 ; .... $0 | 0xCB - TRINEXX ROCK HEAD
#_0DB6FE: db $00 ; .... $0 | 0xCC - TRINEXX FIRE HEAD
#_0DB6FF: db $00 ; .... $0 | 0xCD - TRINEXX ICE HEAD
#_0DB700: db $00 ; .... $0 | 0xCE - BLIND
#_0DB701: db $10 ; ...s $0 | 0xCF - SWAMOLA
#_0DB702: db $17 ; ...s $7 | 0xD0 - LYNEL
#_0DB703: db $00 ; .... $0 | 0xD1 - BUNNYBEAM / SMOKE
#_0DB704: db $40 ; .w.. $0 | 0xD2 - FLOPPING FISH
#_0DB705: db $01 ; .... $1 | 0xD3 - STAL
#_0DB706: db $00 ; .... $0 | 0xD4 - LANDMINE
#_0DB707: db $00 ; .... $0 | 0xD5 - DIG GAME GUY
#_0DB708: db $00 ; .... $0 | 0xD6 - GANON
#_0DB709: db $00 ; .... $0 | 0xD7 - GANON
#_0DB70A: db $00 ; .... $0 | 0xD8 - HEART
#_0DB70B: db $00 ; .... $0 | 0xD9 - GREEN RUPEE
#_0DB70C: db $00 ; .... $0 | 0xDA - BLUE RUPEE
#_0DB70D: db $00 ; .... $0 | 0xDB - RED RUPEE
#_0DB70E: db $00 ; .... $0 | 0xDC - BOMB REFILL 1
#_0DB70F: db $00 ; .... $0 | 0xDD - BOMB REFILL 4
#_0DB710: db $00 ; .... $0 | 0xDE - BOMB REFILL 8
#_0DB711: db $00 ; .... $0 | 0xDF - SMALL MAGIC DECANTER
#_0DB712: db $00 ; .... $0 | 0xE0 - LARGE MAGIC DECANTER
#_0DB713: db $00 ; .... $0 | 0xE1 - ARROW REFILL 5
#_0DB714: db $00 ; .... $0 | 0xE2 - ARROW REFILL 10
#_0DB715: db $40 ; .w.. $0 | 0xE3 - FAERIE
#_0DB716: db $00 ; .... $0 | 0xE4 - SMALL KEY
#_0DB717: db $00 ; .... $0 | 0xE5 - BIG KEY
#_0DB718: db $00 ; .... $0 | 0xE6 - STOLEN SHIELD
#_0DB719: db $00 ; .... $0 | 0xE7 - MUSHROOM
#_0DB71A: db $00 ; .... $0 | 0xE8 - FAKE MASTER SWORD
#_0DB71B: db $00 ; .... $0 | 0xE9 - MAGIC SHOP ASSISTANT
#_0DB71C: db $00 ; .... $0 | 0xEA - HEART CONTAINER
#_0DB71D: db $00 ; .... $0 | 0xEB - HEART PIECE
#_0DB71E: db $80 ; i... $0 | 0xEC - THROWN ITEM
#_0DB71F: db $00 ; .... $0 | 0xED - SOMARIA PLATFORM
#_0DB720: db $00 ; .... $0 | 0xEE - CASTLE MANTLE
#_0DB721: db $00 ; .... $0 | 0xEF - UNUSED SOMARIA PLATFORM
#_0DB722: db $00 ; .... $0 | 0xF0 - UNUSED SOMARIA PLATFORM
#_0DB723: db $00 ; .... $0 | 0xF1 - UNUSED SOMARIA PLATFORM
#_0DB724: db $00 ; .... $0 | 0xF2 - MEDALLION TABLET

;===================================================================================================
; aisp chbx
;   a - stay active off screen
;   i - always die if off screen
;   s - marks statues and things that move, but seems unused
;   p - deflect many projectiles (unused?)
;   c - use simplified tile properties
;   h - immune to sword and hammer
;   b - immune to arrows, boss friendly kill; prone to rumbling
;   x - prevents permadeath in underworld
;===================================================================================================
SpriteData_Deflection:
#_0DB725: db $00 ; .... .... | 0x00 - RAVEN
#_0DB726: db $00 ; .... .... | 0x01 - VULTURE
#_0DB727: db $44 ; .i.. .h.. | 0x02 - STALFOS HEAD
#_0DB728: db $20 ; ..s. .... | 0x03 - NULL
#_0DB729: db $20 ; ..s. .... | 0x04 - CORRECT PULL SWITCH
#_0DB72A: db $20 ; ..s. .... | 0x05 - UNUSED CORRECT PULL SWITCH
#_0DB72B: db $20 ; ..s. .... | 0x06 - WRONG PULL SWITCH
#_0DB72C: db $20 ; ..s. .... | 0x07 - UNUSED WRONG PULL SWITCH
#_0DB72D: db $00 ; .... .... | 0x08 - OCTOROK
#_0DB72E: db $81 ; a... ...x | 0x09 - MOLDORM
#_0DB72F: db $00 ; .... .... | 0x0A - OCTOROK 4WAY
#_0DB730: db $00 ; .... .... | 0x0B - CUCCO
#_0DB731: db $48 ; .i.. c... | 0x0C - OCTOROK STONE
#_0DB732: db $00 ; .... .... | 0x0D - BUZZBLOB
#_0DB733: db $00 ; .... .... | 0x0E - SNAPDRAGON
#_0DB734: db $00 ; .... .... | 0x0F - OCTOBALLOON
#_0DB735: db $00 ; .... .... | 0x10 - OCTOBALLOON BABY
#_0DB736: db $00 ; .... .... | 0x11 - HINOX
#_0DB737: db $00 ; .... .... | 0x12 - MOBLIN
#_0DB738: db $00 ; .... .... | 0x13 - MINI HELMASAUR
#_0DB739: db $00 ; .... .... | 0x14 - THIEVES TOWN GRATE
#_0DB73A: db $00 ; .... .... | 0x15 - ANTIFAIRY
#_0DB73B: db $04 ; .... .h.. | 0x16 - SAHASRAHLA / AGINAH
#_0DB73C: db $00 ; .... .... | 0x17 - HOARDER
#_0DB73D: db $00 ; .... .... | 0x18 - MINI MOLDORM
#_0DB73E: db $00 ; .... .... | 0x19 - POE
#_0DB73F: db $00 ; .... .... | 0x1A - SMITHY
#_0DB740: db $48 ; .i.. c... | 0x1B - ARROW
#_0DB741: db $24 ; ..s. .h.. | 0x1C - STATUE
#_0DB742: db $80 ; a... .... | 0x1D - FLUTEQUEST
#_0DB743: db $00 ; .... .... | 0x1E - CRYSTAL SWITCH
#_0DB744: db $00 ; .... .... | 0x1F - SICK KID
#_0DB745: db $00 ; .... .... | 0x20 - SLUGGULA
#_0DB746: db $20 ; ..s. .... | 0x21 - WATER SWITCH
#_0DB747: db $00 ; .... .... | 0x22 - ROPA
#_0DB748: db $00 ; .... .... | 0x23 - RED BARI
#_0DB749: db $00 ; .... .... | 0x24 - BLUE BARI
#_0DB74A: db $80 ; a... .... | 0x25 - TALKING TREE
#_0DB74B: db $00 ; .... .... | 0x26 - HARDHAT BEETLE
#_0DB74C: db $00 ; .... .... | 0x27 - DEADROCK
#_0DB74D: db $00 ; .... .... | 0x28 - DARK WORLD HINT NPC
#_0DB74E: db $00 ; .... .... | 0x29 - ADULT
#_0DB74F: db $00 ; .... .... | 0x2A - SWEEPING LADY
#_0DB750: db $00 ; .... .... | 0x2B - HOBO
#_0DB751: db $00 ; .... .... | 0x2C - LUMBERJACKS
#_0DB752: db $00 ; .... .... | 0x2D - TELEPATHIC TILE
#_0DB753: db $00 ; .... .... | 0x2E - FLUTE KID
#_0DB754: db $80 ; a... .... | 0x2F - RACE GAME LADY
#_0DB755: db $80 ; a... .... | 0x30 - RACE GAME GUY
#_0DB756: db $00 ; .... .... | 0x31 - FORTUNE TELLER
#_0DB757: db $00 ; .... .... | 0x32 - ARGUE BROS
#_0DB758: db $00 ; .... .... | 0x33 - RUPEE PULL
#_0DB759: db $00 ; .... .... | 0x34 - YOUNG SNITCH
#_0DB75A: db $00 ; .... .... | 0x35 - INNKEEPER
#_0DB75B: db $00 ; .... .... | 0x36 - WITCH
#_0DB75C: db $80 ; a... .... | 0x37 - WATERFALL
#_0DB75D: db $00 ; .... .... | 0x38 - EYE STATUE
#_0DB75E: db $80 ; a... .... | 0x39 - LOCKSMITH
#_0DB75F: db $00 ; .... .... | 0x3A - MAGIC BAT
#_0DB760: db $02 ; .... ..b. | 0x3B - BONK ITEM
#_0DB761: db $00 ; .... .... | 0x3C - KID IN KAK
#_0DB762: db $00 ; .... .... | 0x3D - OLD SNITCH
#_0DB763: db $00 ; .... .... | 0x3E - HOARDER
#_0DB764: db $04 ; .... .h.. | 0x3F - TUTORIAL GUARD
#_0DB765: db $80 ; a... .... | 0x40 - LIGHTNING GATE
#_0DB766: db $00 ; .... .... | 0x41 - BLUE GUARD
#_0DB767: db $00 ; .... .... | 0x42 - GREEN GUARD
#_0DB768: db $00 ; .... .... | 0x43 - RED SPEAR GUARD
#_0DB769: db $00 ; .... .... | 0x44 - BLUESAIN BOLT
#_0DB76A: db $00 ; .... .... | 0x45 - USAIN BOLT
#_0DB76B: db $00 ; .... .... | 0x46 - BLUE ARCHER
#_0DB76C: db $00 ; .... .... | 0x47 - GREEN BUSH GUARD
#_0DB76D: db $00 ; .... .... | 0x48 - RED JAVELIN GUARD
#_0DB76E: db $00 ; .... .... | 0x49 - RED BUSH GUARD
#_0DB76F: db $00 ; .... .... | 0x4A - BOMB GUARD
#_0DB770: db $00 ; .... .... | 0x4B - GREEN KNIFE GUARD
#_0DB771: db $00 ; .... .... | 0x4C - GELDMAN
#_0DB772: db $00 ; .... .... | 0x4D - TOPPO
#_0DB773: db $00 ; .... .... | 0x4E - POPO
#_0DB774: db $00 ; .... .... | 0x4F - POPO
#_0DB775: db $84 ; a... .h.. | 0x50 - CANNONBALL
#_0DB776: db $00 ; .... .... | 0x51 - ARMOS STATUE
#_0DB777: db $81 ; a... ...x | 0x52 - KING ZORA
#_0DB778: db $05 ; .... .h.x | 0x53 - ARMOS KNIGHT
#_0DB779: db $01 ; .... ...x | 0x54 - LANMOLAS
#_0DB77A: db $40 ; .i.. .... | 0x55 - ZORA / FIREBALL
#_0DB77B: db $08 ; .... c... | 0x56 - ZORA
#_0DB77C: db $A0 ; a.s. .... | 0x57 - DESERT STATUE
#_0DB77D: db $00 ; .... .... | 0x58 - CRAB
#_0DB77E: db $00 ; .... .... | 0x59 - LOST WOODS BIRD
#_0DB77F: db $00 ; .... .... | 0x5A - LOST WOODS SQUIRREL
#_0DB780: db $00 ; .... .... | 0x5B - SPARK
#_0DB781: db $00 ; .... .... | 0x5C - SPARK
#_0DB782: db $84 ; a... .h.. | 0x5D - ROLLER VERTICAL DOWN FIRST
#_0DB783: db $84 ; a... .h.. | 0x5E - ROLLER VERTICAL UP FIRST
#_0DB784: db $84 ; a... .h.. | 0x5F - ROLLER HORIZONTAL RIGHT FIRST
#_0DB785: db $84 ; a... .h.. | 0x60 - ROLLER HORIZONTAL LEFT FIRST
#_0DB786: db $08 ; .... c... | 0x61 - BEAMOS
#_0DB787: db $80 ; a... .... | 0x62 - MASTERSWORD
#_0DB788: db $80 ; a... .... | 0x63 - DEBIRANDO PIT
#_0DB789: db $80 ; a... .... | 0x64 - DEBIRANDO
#_0DB78A: db $00 ; .... .... | 0x65 - ARCHERY GUY
#_0DB78B: db $80 ; a... .... | 0x66 - WALL CANNON VERTICAL LEFT
#_0DB78C: db $80 ; a... .... | 0x67 - WALL CANNON VERTICAL RIGHT
#_0DB78D: db $80 ; a... .... | 0x68 - WALL CANNON HORIZONTAL TOP
#_0DB78E: db $80 ; a... .... | 0x69 - WALL CANNON HORIZONTAL BOTTOM
#_0DB78F: db $00 ; .... .... | 0x6A - BALL N CHAIN
#_0DB790: db $08 ; .... c... | 0x6B - CANNONBALL / CANNON TROOPER
#_0DB791: db $80 ; a... .... | 0x6C - MIRROR PORTAL
#_0DB792: db $00 ; .... .... | 0x6D - RAT / CRICKET
#_0DB793: db $00 ; .... .... | 0x6E - SNAKE
#_0DB794: db $00 ; .... .... | 0x6F - KEESE
#_0DB795: db $40 ; .i.. .... | 0x70 - KING HELMASAUR FIREBALL
#_0DB796: db $00 ; .... .... | 0x71 - LEEVER
#_0DB797: db $00 ; .... .... | 0x72 - FAERIE POND TRIGGER
#_0DB798: db $00 ; .... .... | 0x73 - UNCLE / PRIEST / MANTLE
#_0DB799: db $00 ; .... .... | 0x74 - RUNNING MAN
#_0DB79A: db $00 ; .... .... | 0x75 - BOTTLE MERCHANT
#_0DB79B: db $00 ; .... .... | 0x76 - ZELDA
#_0DB79C: db $00 ; .... .... | 0x77 - ANTIFAIRY
#_0DB79D: db $00 ; .... .... | 0x78 - SAHASRAHLAS WIFE
#_0DB79E: db $02 ; .... ..b. | 0x79 - BEE
#_0DB79F: db $01 ; .... ...x | 0x7A - AGAHNIM
#_0DB7A0: db $00 ; .... .... | 0x7B - AGAHNIMS BALLS
#_0DB7A1: db $00 ; .... .... | 0x7C - GREEN STALFOS
#_0DB7A2: db $04 ; .... .h.. | 0x7D - BIG SPIKE
#_0DB7A3: db $00 ; .... .... | 0x7E - FIREBAR CLOCKWISE
#_0DB7A4: db $00 ; .... .... | 0x7F - FIREBAR COUNTERCLOCKWISE
#_0DB7A5: db $00 ; .... .... | 0x80 - FIRESNAKE
#_0DB7A6: db $00 ; .... .... | 0x81 - HOVER
#_0DB7A7: db $80 ; a... .... | 0x82 - ANTIFAIRY CIRCLE
#_0DB7A8: db $04 ; .... .h.. | 0x83 - GREEN EYEGORE / GREEN MIMIC
#_0DB7A9: db $04 ; .... .h.. | 0x84 - RED EYEGORE / RED MIMIC
#_0DB7AA: db $00 ; .... .... | 0x85 - YELLOW STALFOS
#_0DB7AB: db $00 ; .... .... | 0x86 - KODONGO
#_0DB7AC: db $48 ; .i.. c... | 0x87 - KONDONGO FIRE
#_0DB7AD: db $00 ; .... .... | 0x88 - MOTHULA
#_0DB7AE: db $00 ; .... .... | 0x89 - MOTHULA BEAM
#_0DB7AF: db $04 ; .... .h.. | 0x8A - SPIKE BLOCK
#_0DB7B0: db $00 ; .... .... | 0x8B - GIBDO
#_0DB7B1: db $01 ; .... ...x | 0x8C - ARRGHUS
#_0DB7B2: db $01 ; .... ...x | 0x8D - ARRGHI
#_0DB7B3: db $00 ; .... .... | 0x8E - TERRORPIN
#_0DB7B4: db $00 ; .... .... | 0x8F - BLOB
#_0DB7B5: db $80 ; a... .... | 0x90 - WALLMASTER
#_0DB7B6: db $00 ; .... .... | 0x91 - STALFOS KNIGHT
#_0DB7B7: db $00 ; .... .... | 0x92 - KING HELMASAUR
#_0DB7B8: db $00 ; .... .... | 0x93 - BUMPER
#_0DB7B9: db $40 ; .i.. .... | 0x94 - PIROGUSU
#_0DB7BA: db $08 ; .... c... | 0x95 - LASER EYE LEFT
#_0DB7BB: db $08 ; .... c... | 0x96 - LASER EYE RIGHT
#_0DB7BC: db $08 ; .... c... | 0x97 - LASER EYE TOP
#_0DB7BD: db $08 ; .... c... | 0x98 - LASER EYE BOTTOM
#_0DB7BE: db $00 ; .... .... | 0x99 - PENGATOR
#_0DB7BF: db $00 ; .... .... | 0x9A - KYAMERON
#_0DB7C0: db $00 ; .... .... | 0x9B - WIZZROBE
#_0DB7C1: db $80 ; a... .... | 0x9C - ZORO
#_0DB7C2: db $80 ; a... .... | 0x9D - BABASU
#_0DB7C3: db $00 ; .... .... | 0x9E - HAUNTED GROVE OSTRITCH
#_0DB7C4: db $00 ; .... .... | 0x9F - HAUNTED GROVE RABBIT
#_0DB7C5: db $00 ; .... .... | 0xA0 - HAUNTED GROVE BIRD
#_0DB7C6: db $04 ; .... .h.. | 0xA1 - FREEZOR
#_0DB7C7: db $01 ; .... ...x | 0xA2 - KHOLDSTARE
#_0DB7C8: db $05 ; .... .h.x | 0xA3 - KHOLDSTARE SHELL
#_0DB7C9: db $00 ; .... .... | 0xA4 - FALLING ICE
#_0DB7CA: db $00 ; .... .... | 0xA5 - BLUE ZAZAK
#_0DB7CB: db $00 ; .... .... | 0xA6 - RED ZAZAK
#_0DB7CC: db $00 ; .... .... | 0xA7 - STALFOS
#_0DB7CD: db $00 ; .... .... | 0xA8 - GREEN ZIRRO
#_0DB7CE: db $00 ; .... .... | 0xA9 - BLUE ZIRRO
#_0DB7CF: db $00 ; .... .... | 0xAA - PIKIT
#_0DB7D0: db $04 ; .... .h.. | 0xAB - CRYSTAL MAIDEN
#_0DB7D1: db $02 ; .... ..b. | 0xAC - APPLE
#_0DB7D2: db $00 ; .... .... | 0xAD - OLD MAN
#_0DB7D3: db $80 ; a... .... | 0xAE - PIPE DOWN
#_0DB7D4: db $80 ; a... .... | 0xAF - PIPE UP
#_0DB7D5: db $80 ; a... .... | 0xB0 - PIPE RIGHT
#_0DB7D6: db $80 ; a... .... | 0xB1 - PIPE LEFT
#_0DB7D7: db $82 ; a... ..b. | 0xB2 - GOOD BEE
#_0DB7D8: db $80 ; a... .... | 0xB3 - PEDESTAL PLAQUE
#_0DB7D9: db $00 ; .... .... | 0xB4 - PURPLE CHEST
#_0DB7DA: db $00 ; .... .... | 0xB5 - BOMB SHOP GUY
#_0DB7DB: db $80 ; a... .... | 0xB6 - KIKI
#_0DB7DC: db $00 ; .... .... | 0xB7 - BLIND MAIDEN
#_0DB7DD: db $00 ; .... .... | 0xB8 - DIALOGUE TESTER
#_0DB7DE: db $80 ; a... .... | 0xB9 - BULLY / PINK BALL
#_0DB7DF: db $80 ; a... .... | 0xBA - WHIRLPOOL
#_0DB7E0: db $00 ; .... .... | 0xBB - SHOPKEEPER / CHEST GAME GUY
#_0DB7E1: db $00 ; .... .... | 0xBC - DRUNKARD
#_0DB7E2: db $01 ; .... ...x | 0xBD - VITREOUS
#_0DB7E3: db $01 ; .... ...x | 0xBE - VITREOUS SMALL EYE
#_0DB7E4: db $40 ; .i.. .... | 0xBF - LIGHTNING
#_0DB7E5: db $00 ; .... .... | 0xC0 - CATFISH
#_0DB7E6: db $00 ; .... .... | 0xC1 - CUTSCENE AGAHNIM
#_0DB7E7: db $04 ; .... .h.. | 0xC2 - BOULDER
#_0DB7E8: db $00 ; .... .... | 0xC3 - GIBO
#_0DB7E9: db $00 ; .... .... | 0xC4 - THIEF
#_0DB7EA: db $00 ; .... .... | 0xC5 - MEDUSA
#_0DB7EB: db $00 ; .... .... | 0xC6 - 4WAY SHOOTER
#_0DB7EC: db $00 ; .... .... | 0xC7 - POKEY
#_0DB7ED: db $00 ; .... .... | 0xC8 - BIG FAERIE
#_0DB7EE: db $00 ; .... .... | 0xC9 - TEKTITE / FIREBAT
#_0DB7EF: db $04 ; .... .h.. | 0xCA - CHAIN CHOMP
#_0DB7F0: db $05 ; .... .h.x | 0xCB - TRINEXX ROCK HEAD
#_0DB7F1: db $05 ; .... .h.x | 0xCC - TRINEXX FIRE HEAD
#_0DB7F2: db $05 ; .... .h.x | 0xCD - TRINEXX ICE HEAD
#_0DB7F3: db $80 ; a... .... | 0xCE - BLIND
#_0DB7F4: db $80 ; a... .... | 0xCF - SWAMOLA
#_0DB7F5: db $00 ; .... .... | 0xD0 - LYNEL
#_0DB7F6: db $00 ; .... .... | 0xD1 - BUNNYBEAM / SMOKE
#_0DB7F7: db $00 ; .... .... | 0xD2 - FLOPPING FISH
#_0DB7F8: db $00 ; .... .... | 0xD3 - STAL
#_0DB7F9: db $00 ; .... .... | 0xD4 - LANDMINE
#_0DB7FA: db $00 ; .... .... | 0xD5 - DIG GAME GUY
#_0DB7FB: db $00 ; .... .... | 0xD6 - GANON
#_0DB7FC: db $00 ; .... .... | 0xD7 - GANON
#_0DB7FD: db $02 ; .... ..b. | 0xD8 - HEART
#_0DB7FE: db $02 ; .... ..b. | 0xD9 - GREEN RUPEE
#_0DB7FF: db $02 ; .... ..b. | 0xDA - BLUE RUPEE
#_0DB800: db $02 ; .... ..b. | 0xDB - RED RUPEE
#_0DB801: db $02 ; .... ..b. | 0xDC - BOMB REFILL 1
#_0DB802: db $02 ; .... ..b. | 0xDD - BOMB REFILL 4
#_0DB803: db $02 ; .... ..b. | 0xDE - BOMB REFILL 8
#_0DB804: db $02 ; .... ..b. | 0xDF - SMALL MAGIC DECANTER
#_0DB805: db $02 ; .... ..b. | 0xE0 - LARGE MAGIC DECANTER
#_0DB806: db $02 ; .... ..b. | 0xE1 - ARROW REFILL 5
#_0DB807: db $02 ; .... ..b. | 0xE2 - ARROW REFILL 10
#_0DB808: db $02 ; .... ..b. | 0xE3 - FAERIE
#_0DB809: db $02 ; .... ..b. | 0xE4 - SMALL KEY
#_0DB80A: db $02 ; .... ..b. | 0xE5 - BIG KEY
#_0DB80B: db $02 ; .... ..b. | 0xE6 - STOLEN SHIELD
#_0DB80C: db $02 ; .... ..b. | 0xE7 - MUSHROOM
#_0DB80D: db $02 ; .... ..b. | 0xE8 - FAKE MASTER SWORD
#_0DB80E: db $00 ; .... .... | 0xE9 - MAGIC SHOP ASSISTANT
#_0DB80F: db $82 ; a... ..b. | 0xEA - HEART CONTAINER
#_0DB810: db $82 ; a... ..b. | 0xEB - HEART PIECE
#_0DB811: db $08 ; .... c... | 0xEC - THROWN ITEM
#_0DB812: db $80 ; a... .... | 0xED - SOMARIA PLATFORM
#_0DB813: db $20 ; ..s. .... | 0xEE - CASTLE MANTLE
#_0DB814: db $80 ; a... .... | 0xEF - UNUSED SOMARIA PLATFORM
#_0DB815: db $80 ; a... .... | 0xF0 - UNUSED SOMARIA PLATFORM
#_0DB816: db $80 ; a... .... | 0xF1 - UNUSED SOMARIA PLATFORM
#_0DB817: db $20 ; ..s. .... | 0xF2 - MEDALLION TABLET

;===================================================================================================

SpritePrep_LoadProperties:
#_0DB818: JSL SpritePrep_ResetProperties

#_0DB81C: PHY

#_0DB81D: PHB
#_0DB81E: PHK
#_0DB81F: PLB

#_0DB820: LDY.w $0E20,X

#_0DB823: LDA.w SpriteData_OAMHarm,Y
#_0DB826: STA.w $0E40,X

#_0DB829: LDA.w SpriteData_Health,Y
#_0DB82C: STA.w $0E50,X

#_0DB82F: LDA.w SpriteData_HitBox,Y
#_0DB832: STA.w $0F60,X

#_0DB835: LDA.w SpriteData_PrizePack,Y
#_0DB838: STA.w $0BE0,X

#_0DB83B: LDA.w SpriteData_Deflection,Y
#_0DB83E: STA.w $0CAA,X

#_0DB841: LDA.w SpriteData_Bump,Y
#_0DB844: STA.w $0CD2,X

#_0DB847: LDA.w SpriteData_TileInteraction,Y
#_0DB84A: STA.w $0B6B,X

#_0DB84D: LDA.w $040A

#_0DB850: LDY.b $1B
#_0DB852: BEQ .outdoors

#_0DB854: LDA.w $048E

.outdoors
#_0DB857: STA.w $0C9A,X

#_0DB85A: PLB
#_0DB85B: PLY

;===================================================================================================

SpritePrep_LoadPalette:
#_0DB85C: PHY

#_0DB85D: PHB
#_0DB85E: PHK
#_0DB85F: PLB

#_0DB860: LDY.w $0E20,X

#_0DB863: LDA.w SpriteData_OAMProp,Y
#_0DB866: STA.w $0E60,X

#_0DB869: AND.b #$0F
#_0DB86B: STA.w $0F50,X

#_0DB86E: PLB

#_0DB86F: PLY

#_0DB870: RTL

;===================================================================================================
; Clears a bunch of stuff
;===================================================================================================
SpritePrep_ResetProperties:
#_0DB871: STZ.w $0F00,X
#_0DB874: STZ.w $0E90,X
#_0DB877: STZ.w $0D50,X
#_0DB87A: STZ.w $0D40,X

#_0DB87D: STZ.w $0F80,X
#_0DB880: STZ.w $0D70,X
#_0DB883: STZ.w $0D60,X
#_0DB886: STZ.w $0F90,X

#_0DB889: STZ.w $0D80,X
#_0DB88C: STZ.w $0DC0,X
#_0DB88F: STZ.w $0DE0,X
#_0DB892: STZ.w $0DF0,X

#_0DB895: STZ.w $0E00,X
#_0DB898: STZ.w $0E10,X
#_0DB89B: STZ.w $0F10,X
#_0DB89E: STZ.w $0EB0,X

#_0DB8A1: STZ.w $0EC0,X
#_0DB8A4: STZ.w $0ED0,X
#_0DB8A7: STZ.w $0EF0,X
#_0DB8AA: STZ.w $0E70,X

#_0DB8AD: STZ.w $0F70,X
#_0DB8B0: STZ.w $0E50,X
#_0DB8B3: STZ.w $0EA0,X
#_0DB8B6: STZ.w $0F40,X

#_0DB8B9: STZ.w $0F30,X
#_0DB8BC: STZ.w $0D90,X
#_0DB8BF: STZ.w $0DA0,X
#_0DB8C2: STZ.w $0DB0,X

#_0DB8C5: STZ.w $0BB0,X
#_0DB8C8: STZ.w $0E80,X
#_0DB8CB: STZ.w $0BA0,X
#_0DB8CE: STZ.w $0B89,X

#_0DB8D1: STZ.w $0F50,X
#_0DB8D4: STZ.w $0B58,X
#_0DB8D7: STZ.w $0CE2,X

#_0DB8DA: LDA.b #$00
#_0DB8DC: STA.l $7FFA1C,X
#_0DB8E0: STA.l $7FFA2C,X
#_0DB8E4: STA.l $7FFA3C,X
#_0DB8E8: STA.l $7FFA4C,X
#_0DB8EC: STA.l $7FF9C2,X

#_0DB8F0: RTL

;===================================================================================================

DamageSubclassValue:
#_0DB8F1: db $00, $01, $20, $FF, $FC, $FB, $00, $00 ; 0x00 - Boomerang
#_0DB8F9: db $00, $02, $40, $04, $00, $00, $00, $00 ; 0x01 - Sword 1
#_0DB901: db $00, $04, $40, $02, $03, $00, $00, $00 ; 0x02 - Sword 2
#_0DB909: db $00, $08, $40, $04, $00, $00, $00, $00 ; 0x03 - Sword 3
#_0DB911: db $00, $10, $40, $08, $00, $00, $00, $00 ; 0x04 - Sword 4
#_0DB919: db $00, $10, $40, $08, $00, $00, $00, $00 ; 0x05 - Sword 5
#_0DB921: db $00, $04, $40, $10, $00, $00, $00, $00 ; 0x06 - Arrow
#_0DB929: db $00, $FF, $40, $FF, $FC, $FB, $00, $00 ; 0x07 - Hookshot
#_0DB931: db $00, $04, $40, $FF, $FC, $FB, $20, $00 ; 0x08 - Bomb
#_0DB939: db $00, $64, $18, $64, $00, $00, $00, $00 ; 0x09 - Silver arrow
#_0DB941: db $00, $F9, $FA, $FF, $64, $00, $00, $00 ; 0x0A - Powder
#_0DB949: db $00, $08, $40, $FD, $04, $10, $00, $00 ; 0x0B - Fire rod
#_0DB951: db $00, $08, $40, $FE, $04, $00, $00, $00 ; 0x0C - Ice rod
#_0DB959: db $00, $10, $40, $FD, $00, $00, $00, $00 ; 0x0D - Bombos
#_0DB961: db $00, $FE, $40, $10, $00, $00, $00, $00 ; 0x0E - Ether
#_0DB969: db $00, $20, $40, $FF, $00, $00, $00, $FA ; 0x0F - Quake

;===================================================================================================

SimplifiedTileAttributes:
#_0DB971: db $00, $01, $00, $00, $00, $00, $00, $00
#_0DB979: db $00, $00, $03, $00, $00, $00, $00, $00
#_0DB981: db $01, $01, $01, $01, $00, $00, $00, $00
#_0DB989: db $01, $01, $01, $01, $00, $03, $03, $03
#_0DB991: db $00, $00, $00, $00, $00, $00, $01, $01
#_0DB999: db $04, $04, $04, $04, $04, $04, $04, $04
#_0DB9A1: db $01, $01, $01, $01, $01, $01, $01, $01
#_0DB9A9: db $01, $01, $00, $00, $01, $01, $01, $01
#_0DB9B1: db $00, $00, $00, $00, $00, $00, $00, $00
#_0DB9B9: db $00, $00, $00, $00, $04, $04, $04, $04
#_0DB9C1: db $00, $00, $00, $00, $00, $00, $00, $00
#_0DB9C9: db $00, $00, $00, $00, $00, $00, $00, $00
#_0DB9D1: db $00, $00, $00, $00, $00, $00, $00, $00
#_0DB9D9: db $00, $00, $00, $00, $01, $01, $01, $01
#_0DB9E1: db $00, $00, $00, $00, $00, $00, $00, $00
#_0DB9E9: db $00, $00, $00, $00, $00, $00, $00, $00
#_0DB9F1: db $01, $01, $01, $01, $01, $01, $01, $01
#_0DB9F9: db $01, $01, $01, $01, $01, $01, $01, $01
#_0DBA01: db $01, $01, $01, $01, $01, $01, $01, $01
#_0DBA09: db $01, $01, $01, $01, $01, $01, $01, $01
#_0DBA11: db $01, $01, $01, $01, $01, $01, $01, $01
#_0DBA19: db $01, $01, $01, $01, $01, $01, $01, $01
#_0DBA21: db $00, $00, $00, $00, $00, $00, $00, $00
#_0DBA29: db $00, $00, $00, $00, $00, $00, $00, $00
#_0DBA31: db $00, $00, $00, $00, $00, $00, $00, $00
#_0DBA39: db $00, $00, $00, $00, $00, $00, $00, $00
#_0DBA41: db $00, $00, $00, $00, $00, $00, $00, $00
#_0DBA49: db $00, $00, $00, $00, $00, $00, $00, $00
#_0DBA51: db $00, $00, $00, $00, $00, $00, $00, $00
#_0DBA59: db $00, $00, $00, $00, $00, $00, $00, $00
#_0DBA61: db $01, $01, $01, $01, $01, $01, $01, $01
#_0DBA69: db $01, $01, $01, $01, $01, $01, $01, $01

;===================================================================================================
; A psuedo-psuedo-psuedo-psuedo-RNG
;===================================================================================================
GetRandomNumber:
#_0DBA71: LDA.w SLVH ; latch to request scanning beam update
#_0DBA74: LDA.w OPHCT ; get low byte of hcount

; take note that the carry is in an unknown state and never fixed
#_0DBA77: ADC.b $1A ; add frame counter
#_0DBA79: ADC.w $0FA1 ; add previous RNG value
#_0DBA7C: STA.w $0FA1 ; save it too

#_0DBA7F: RTL

;===================================================================================================

OAM_AllocateFromRegionA:
#_0DBA80: LDY.b #$00
#_0DBA82: BRA OAM_AllocateFromRegion

;===================================================================================================

OAM_AllocateFromRegionB:
#_0DBA84: LDY.b #$02
#_0DBA86: BRA OAM_AllocateFromRegion

;===================================================================================================

OAM_AllocateFromRegionC:
#_0DBA88: LDY.b #$04
#_0DBA8A: BRA OAM_AllocateFromRegion

;===================================================================================================

OAM_AllocateFromRegionD:
#_0DBA8C: LDY.b #$06
#_0DBA8E: BRA OAM_AllocateFromRegion

;===================================================================================================

OAM_AllocateFromRegionE:
#_0DBA90: LDY.b #$08
#_0DBA92: BRA OAM_AllocateFromRegion

;===================================================================================================

OAM_AllocateFromRegionF:
#_0DBA94: LDY.b #$0A

;===================================================================================================

OAM_AllocateFromRegion:
#_0DBA96: PHB
#_0DBA97: PHK
#_0DBA98: PLB

#_0DBA99: JSR OAM_GetBufferPosition

#_0DBA9C: PLB

#_0DBA9D: RTL

;===================================================================================================

pool OAM_GetBufferPosition

.region_location
#_0DBA9E: dw $0171 ; Region A
#_0DBAA0: dw $0201 ; Region B
#_0DBAA2: dw $0031 ; Region C
#_0DBAA4: dw $00C1 ; Region D
#_0DBAA6: dw $0141 ; Region E
#_0DBAA8: dw $01D1 ; Region F

;---------------------------------------------------------------------------------------------------

.backup_offset
#_0DBAAA: dw $0030, $0050, $0080, $00B0 ; Region A
#_0DBAB2: dw $00E0, $0110, $0140, $0170

#_0DBABA: dw $01D0, $01D4, $01DC, $01E0 ; Region B
#_0DBAC2: dw $01E4, $01EC, $01F0, $01F8

#_0DBACA: dw $0000, $0004, $0008, $000C ; Region C
#_0DBAD2: dw $0010, $0014, $0018, $001C

#_0DBADA: dw $0030, $0038, $0050, $0068 ; Region D
#_0DBAE2: dw $0080, $0098, $00B0, $00C8

#_0DBAEA: dw $0120, $0124, $0128, $012C ; Region E
#_0DBAF2: dw $0130, $0134, $0138, $013C

#_0DBAFA: dw $0140, $0150, $0160, $0170 ; Region F
#_0DBB02: dw $0180, $0190, $01A0, $01B8

pool off

;---------------------------------------------------------------------------------------------------

OAM_GetBufferPosition:
#_0DBB0A: STA.b $0E
#_0DBB0C: STZ.w $000F

#_0DBB0F: REP #$20

#_0DBB11: LDA.w $0FE0,Y
#_0DBB14: STA.b $90

#_0DBB16: CLC
#_0DBB17: ADC.b $0E
#_0DBB19: CMP.w .region_location,Y
#_0DBB1C: BCC .in_range

#_0DBB1E: STY.b $0C
#_0DBB20: STZ.b $0D

#_0DBB22: LDA.w $0FEC,Y
#_0DBB25: PHA

#_0DBB26: INC A
#_0DBB27: STA.w $0FEC,Y

#_0DBB2A: PLA
#_0DBB2B: AND.w #$0007
#_0DBB2E: ASL A
#_0DBB2F: STA.b $0E

#_0DBB31: LDA.b $0C
#_0DBB33: ASL A
#_0DBB34: ASL A
#_0DBB35: ASL A
#_0DBB36: ADC.b $0E
#_0DBB38: TAY

#_0DBB39: LDA.w .backup_offset,Y
#_0DBB3C: STA.b $90

#_0DBB3E: SEC ; !USELESS
#_0DBB3F: BRA .continue

;---------------------------------------------------------------------------------------------------

.in_range
#_0DBB41: STA.w $0FE0,Y

.continue
#_0DBB44: LDA.b $90
#_0DBB46: PHA

#_0DBB47: LSR A
#_0DBB48: LSR A

#_0DBB49: CLC
#_0DBB4A: ADC.w #$0A20
#_0DBB4D: STA.b $92

#_0DBB4F: PLA
#_0DBB50: CLC
#_0DBB51: ADC.w #$0800
#_0DBB54: STA.b $90

#_0DBB56: SEP #$20

#_0DBB58: LDY.b $90

#_0DBB5A: RTS

;===================================================================================================

CalculateSFXPan_flags:
#_0DBB5B: db $00 ; none
#_0DBB5C: db $80 ; left
#_0DBB5D: db $40 ; right

;===================================================================================================

Ancilla_CalculateSFXPan:
#_0DBB5E: LDA.w $0C18,X
#_0DBB61: XBA
#_0DBB62: LDA.w $0C04,X

#_0DBB65: BRA CalculateSFXPan

;===================================================================================================

Link_CalculateSFXPan:
#_0DBB67: LDA.b $23
#_0DBB69: XBA
#_0DBB6A: LDA.b $22

#_0DBB6C: BRA CalculateSFXPan

;===================================================================================================

SpriteSFX_QueueSFX1WithPan:
#_0DBB6E: PHY

#_0DBB6F: LDY.w $012D
#_0DBB72: BNE .sfx_already_queued

#_0DBB74: JSR SpriteSFX_ApplyPanning
#_0DBB77: STA.w $012D

.sfx_already_queued
#_0DBB7A: PLY

#_0DBB7B: RTL

;===================================================================================================

SpriteSFX_QueueSFX2WithPan:
#_0DBB7C: PHY

#_0DBB7D: LDY.w $012E
#_0DBB80: BNE .sfx_already_queued

#_0DBB82: JSR SpriteSFX_ApplyPanning
#_0DBB85: STA.w $012E

.sfx_already_queued
#_0DBB88: PLY

#_0DBB89: RTL

;===================================================================================================

SpriteSFX_QueueSFX3WithPan:
#_0DBB8A: PHY

#_0DBB8B: LDY.w $012F
#_0DBB8E: BNE .sfx_already_queued

#_0DBB90: JSR SpriteSFX_ApplyPanning
#_0DBB93: STA.w $012F

.sfx_already_queued
#_0DBB96: PLY

#_0DBB97: RTL

;===================================================================================================

SpriteSFX_ApplyPanning:
#_0DBB98: STA.b $0D

#_0DBB9A: JSL Sprite_CalculateSFXPan
#_0DBB9E: ORA.b $0D

#_0DBBA0: RTS

;===================================================================================================

Sprite_CalculateSFXPan:
#_0DBBA1: LDA.w $0D30,X
#_0DBBA4: XBA
#_0DBBA5: LDA.w $0D10,X

;===================================================================================================

CalculateSFXPan:
#_0DBBA8: REP #$20

#_0DBBAA: PHX

#_0DBBAB: LDX.b #$00

#_0DBBAD: SEC
#_0DBBAE: SBC.b $E2

#_0DBBB0: SEC
#_0DBBB1: SBC.w #$0050

#_0DBBB4: CMP.w #$0050
#_0DBBB7: BCC .grab_flag

#_0DBBB9: INX

#_0DBBBA: CMP.w #$0000
#_0DBBBD: BMI .grab_flag

#_0DBBBF: INX

;---------------------------------------------------------------------------------------------------

.grab_flag
#_0DBBC0: SEP #$20

#_0DBBC2: LDA.l CalculateSFXPan_flags,X

#_0DBBC6: PLX

#_0DBBC7: RTL

;===================================================================================================

pool CalculateSFXPan_Arbitrary

.bits
#_0DBBC8: db $80, $80, $80, $00, $00, $40, $40, $40

pool off

;---------------------------------------------------------------------------------------------------

CalculateSFXPan_Arbitrary:
#_0DBBD0: SEC
#_0DBBD1: SBC.b $E2

#_0DBBD3: LSR A
#_0DBBD4: LSR A
#_0DBBD5: LSR A
#_0DBBD6: LSR A
#_0DBBD7: LSR A

#_0DBBD8: PHX

#_0DBBD9: TAX

#_0DBBDA: LDA.l .bits,X

#_0DBBDE: PLX

#_0DBBDF: RTL

;===================================================================================================

pool SpriteDraw_Babasu

.oam_groups
; group00
#_0DBBE0: dw   0,   4 : db $80, $43, $00, $00
#_0DBBE8: dw   0,   4 : db $80, $43, $00, $00

; group01
#_0DBBF0: dw   0,   4 : db $B6, $43, $00, $00
#_0DBBF8: dw   0,   4 : db $B6, $43, $00, $00

; group02
#_0DBC00: dw   0,   4 : db $B7, $43, $00, $00
#_0DBC08: dw   8,   4 : db $80, $03, $00, $00

; group03
#_0DBC10: dw   0,   4 : db $80, $43, $00, $00
#_0DBC18: dw   8,   4 : db $B6, $03, $00, $00

; group04
#_0DBC20: dw   8,   4 : db $B7, $03, $00, $00
#_0DBC28: dw   8,   4 : db $B7, $03, $00, $00

; group05
#_0DBC30: dw   8,   4 : db $80, $03, $00, $00
#_0DBC38: dw   8,   4 : db $80, $03, $00, $00

; group06
#_0DBC40: dw   4,   0 : db $80, $83, $00, $00
#_0DBC48: dw   4,   0 : db $80, $83, $00, $00

; group07
#_0DBC50: dw   4,   0 : db $B6, $83, $00, $00
#_0DBC58: dw   4,   0 : db $B6, $83, $00, $00

; group08
#_0DBC60: dw   4,   0 : db $B7, $83, $00, $00
#_0DBC68: dw   4,   8 : db $80, $03, $00, $00

; group09
#_0DBC70: dw   4,   0 : db $80, $83, $00, $00
#_0DBC78: dw   4,   8 : db $B6, $03, $00, $00

; group0A
#_0DBC80: dw   4,   8 : db $B7, $03, $00, $00
#_0DBC88: dw   4,   8 : db $B7, $03, $00, $00

; group0B
#_0DBC90: dw   4,   8 : db $80, $03, $00, $00
#_0DBC98: dw   4,   8 : db $80, $03, $00, $00

; group0C
#_0DBCA0: dw   0,  -8 : db $4E, $0A, $00, $02
#_0DBCA8: dw   0,   0 : db $5E, $0A, $00, $02

; group0D
#_0DBCB0: dw   0,  -8 : db $4E, $4A, $00, $02
#_0DBCB8: dw   0,   0 : db $5E, $4A, $00, $02

; group0E
#_0DBCC0: dw   8,   0 : db $6C, $0A, $00, $02
#_0DBCC8: dw   0,   0 : db $6B, $0A, $00, $02

; group0F
#_0DBCD0: dw   8,   0 : db $6C, $8A, $00, $02
#_0DBCD8: dw   0,   0 : db $6B, $8A, $00, $02

; group10
#_0DBCE0: dw   0,   8 : db $4E, $8A, $00, $02
#_0DBCE8: dw   0,   0 : db $5E, $8A, $00, $02

; group11
#_0DBCF0: dw   0,   8 : db $4E, $CA, $00, $02
#_0DBCF8: dw   0,   0 : db $5E, $CA, $00, $02

; group12
#_0DBD00: dw  -8,   0 : db $6C, $4A, $00, $02
#_0DBD08: dw   0,   0 : db $6B, $4A, $00, $02

; group13
#_0DBD10: dw  -8,   0 : db $6C, $CA, $00, $02
#_0DBD18: dw   0,   0 : db $6B, $CA, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Babasu:
#_0DBD20: PHB
#_0DBD21: PHK
#_0DBD22: PLB

#_0DBD23: LDA.b #$00
#_0DBD25: XBA
#_0DBD26: LDA.w $0DC0,X
#_0DBD29: BMI .not_visible

#_0DBD2B: REP #$20

#_0DBD2D: ASL A ; x16
#_0DBD2E: ASL A
#_0DBD2F: ASL A
#_0DBD30: ASL A
#_0DBD31: ADC.w #.oam_groups
#_0DBD34: STA.b $08

#_0DBD36: SEP #$20

#_0DBD38: LDA.b #$02
#_0DBD3A: JSL Sprite_DrawMultiple

#_0DBD3E: PLB

#_0DBD3F: RTL

;---------------------------------------------------------------------------------------------------

.not_visible
#_0DBD40: JSL Sprite_PrepOAMCoord_long

#_0DBD44: PLB

#_0DBD45: RTL

;===================================================================================================

pool SpriteDraw_Wizzrobe

.oam_groups
; group00
#_0DBD46: dw   0,  -8 : db $B2, $00, $00, $00
#_0DBD4E: dw   8,  -8 : db $B3, $00, $00, $00
#_0DBD56: dw   0,   0 : db $88, $00, $00, $02

; group01
#_0DBD5E: dw   0,  -8 : db $B2, $00, $00, $00
#_0DBD66: dw   8,  -8 : db $B3, $00, $00, $00
#_0DBD6E: dw   0,   0 : db $86, $00, $00, $02

; group02
#_0DBD76: dw   0,  -8 : db $B2, $00, $00, $00
#_0DBD7E: dw   8,  -8 : db $B3, $00, $00, $00
#_0DBD86: dw   0,   0 : db $8C, $00, $00, $02

; group03
#_0DBD8E: dw   0,  -8 : db $B2, $00, $00, $00
#_0DBD96: dw   8,  -8 : db $B3, $00, $00, $00
#_0DBD9E: dw   0,   0 : db $8A, $00, $00, $02

; group04
#_0DBDA6: dw   0,  -8 : db $B2, $00, $00, $00
#_0DBDAE: dw   8,  -8 : db $B3, $00, $00, $00
#_0DBDB6: dw   0,   0 : db $8C, $40, $00, $02

; group05
#_0DBDBE: dw   0,  -8 : db $B2, $00, $00, $00
#_0DBDC6: dw   8,  -8 : db $B3, $00, $00, $00
#_0DBDCE: dw   0,   0 : db $8A, $40, $00, $02

; group06
#_0DBDD6: dw   0,  -8 : db $B2, $00, $00, $00
#_0DBDDE: dw   8,  -8 : db $B3, $00, $00, $00
#_0DBDE6: dw   0,   0 : db $A4, $00, $00, $02

; group07
#_0DBDEE: dw   0,  -8 : db $B2, $00, $00, $00
#_0DBDF6: dw   8,  -8 : db $B3, $00, $00, $00
#_0DBDFE: dw   0,   0 : db $8E, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Wizzrobe:
#_0DBE06: PHB
#_0DBE07: PHK
#_0DBE08: PLB

#_0DBE09: LDA.b #$00
#_0DBE0B: XBA
#_0DBE0C: LDA.w $0DC0,X

#_0DBE0F: REP #$20

#_0DBE11: ASL A
#_0DBE12: ASL A
#_0DBE13: ASL A
#_0DBE14: STA.b $00

#_0DBE16: ASL A
#_0DBE17: ADC.b $00
#_0DBE19: ADC.w #.oam_groups
#_0DBE1C: STA.b $08

#_0DBE1E: SEP #$20

#_0DBE20: LDA.b #$03
#_0DBE22: JSL Sprite_DrawMultiple

#_0DBE26: PLB

#_0DBE27: RTL

;===================================================================================================

pool SpriteDraw_WizzrobeBeam

.oam_groups
; group00
#_0DBE28: dw   0,  -4 : db $C5, $00, $00, $00
#_0DBE30: dw   0,   4 : db $C5, $80, $00, $00

; group01
#_0DBE38: dw   0,  -4 : db $C5, $40, $00, $00
#_0DBE40: dw   0,   4 : db $C5, $C0, $00, $00

; group02
#_0DBE48: dw  -4,   0 : db $D2, $40, $00, $00
#_0DBE50: dw   4,   0 : db $D2, $00, $00, $00

; group03
#_0DBE58: dw  -4,   0 : db $D2, $C0, $00, $00
#_0DBE60: dw   4,   0 : db $D2, $80, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_WizzrobeBeam:
#_0DBE68: PHB
#_0DBE69: PHK
#_0DBE6A: PLB

#_0DBE6B: LDA.b #$00
#_0DBE6D: XBA
#_0DBE6E: LDA.w $0DE0,X

#_0DBE71: REP #$20

#_0DBE73: ASL A ; x16
#_0DBE74: ASL A
#_0DBE75: ASL A
#_0DBE76: ASL A
#_0DBE77: ADC.w #.oam_groups
#_0DBE7A: STA.b $08

#_0DBE7C: SEP #$20

#_0DBE7E: LDA.b #$02
#_0DBE80: JSL Sprite_DrawMultiple

#_0DBE84: PLB

#_0DBE85: RTL

;===================================================================================================

pool SpriteDraw_Freezor

.oam_groups_mobile
; group00
#_0DBE86: dw  -8,   0 : db $A6, $00, $00, $02
#_0DBE8E: dw   8,   0 : db $A6, $40, $00, $02
#_0DBE96: dw  -8,   0 : db $A6, $00, $00, $02
#_0DBE9E: dw   8,   0 : db $A6, $40, $00, $02

; group01
#_0DBEA6: dw  -8,   0 : db $A6, $00, $00, $02
#_0DBEAE: dw   8,   0 : db $A6, $40, $00, $02
#_0DBEB6: dw   0,  11 : db $AB, $00, $00, $00
#_0DBEBE: dw   8,  11 : db $AB, $40, $00, $00

; group02
#_0DBEC6: dw  -8,   0 : db $AC, $00, $00, $02
#_0DBECE: dw   8,   0 : db $A8, $40, $00, $02
#_0DBED6: dw   0,  11 : db $BA, $00, $00, $00
#_0DBEDE: dw   8,  11 : db $BB, $00, $00, $00

; group03
#_0DBEE6: dw  -8,   0 : db $A8, $00, $00, $02
#_0DBEEE: dw   8,   0 : db $AC, $40, $00, $02
#_0DBEF6: dw   0,  11 : db $BB, $40, $00, $00
#_0DBEFE: dw   8,  11 : db $BA, $40, $00, $00

; group04
#_0DBF06: dw   0,   2 : db $AE, $00, $00, $00
#_0DBF0E: dw   8,   2 : db $AE, $40, $00, $00
#_0DBF16: dw   0,  10 : db $BE, $00, $00, $00
#_0DBF1E: dw   8,  10 : db $BE, $40, $00, $00

; group05
#_0DBF26: dw   0,   4 : db $AF, $00, $00, $00
#_0DBF2E: dw   8,   4 : db $AF, $40, $00, $00
#_0DBF36: dw   0,  12 : db $BF, $00, $00, $00
#_0DBF3E: dw   8,  12 : db $BF, $40, $00, $00

; group06
#_0DBF46: dw   0,   8 : db $AA, $00, $00, $00
#_0DBF4E: dw   8,   8 : db $AA, $40, $00, $00
#_0DBF56: dw   0,   8 : db $AA, $00, $00, $00
#_0DBF5E: dw   8,   8 : db $AA, $40, $00, $00

;---------------------------------------------------------------------------------------------------

.oam_groups_melting
#_0DBF66: dw   0,   0 : db $AE, $00, $00, $00
#_0DBF6E: dw   8,   0 : db $AE, $40, $00, $00
#_0DBF76: dw   0,   8 : db $BE, $00, $00, $00
#_0DBF7E: dw   8,   8 : db $BE, $40, $00, $00
#_0DBF86: dw  -2,   0 : db $AE, $00, $00, $00
#_0DBF8E: dw  10,   0 : db $AE, $40, $00, $00
#_0DBF96: dw  -2,   8 : db $BE, $00, $00, $00
#_0DBF9E: dw  10,   8 : db $BE, $40, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Freezor:
#_0DBFA6: PHB
#_0DBFA7: PHK
#_0DBFA8: PLB

#_0DBFA9: LDA.b #$00
#_0DBFAB: XBA
#_0DBFAC: LDA.w $0DC0,X

#_0DBFAF: CMP.b #$07
#_0DBFB1: BEQ .is_melting

#_0DBFB3: REP #$20

#_0DBFB5: ASL A ; x32
#_0DBFB6: ASL A
#_0DBFB7: ASL A
#_0DBFB8: ASL A
#_0DBFB9: ASL A
#_0DBFBA: ADC.w #.oam_groups_mobile
#_0DBFBD: STA.b $08

#_0DBFBF: SEP #$20

#_0DBFC1: LDA.b #$04

.do_draw
#_0DBFC3: JSL Sprite_DrawMultiple

#_0DBFC7: PLB

#_0DBFC8: RTL

;---------------------------------------------------------------------------------------------------

.is_melting
#_0DBFC9: REP #$20

#_0DBFCB: LDA.w #.oam_groups_melting
#_0DBFCE: STA.b $08

#_0DBFD0: SEP #$20

#_0DBFD2: LDA.b #$08
#_0DBFD4: BRA .do_draw

;===================================================================================================

pool SpriteDraw_Zazak

.oam_groups
; group00
#_0DBFD6: dw   0,  -8 : db $08, $00, $00, $02
#_0DBFDE: dw  -4,   0 : db $A0, $00, $00, $02
#_0DBFE6: dw   4,   0 : db $A1, $00, $00, $02

; group01
#_0DBFEE: dw   0,  -7 : db $08, $00, $00, $02
#_0DBFF6: dw  -4,   1 : db $A1, $40, $00, $02
#_0DBFFE: dw   4,   1 : db $A0, $40, $00, $02

; group02
#_0DC006: dw   0,  -8 : db $0E, $00, $00, $02
#_0DC00E: dw  -4,   0 : db $A3, $00, $00, $02
#_0DC016: dw   4,   0 : db $A4, $00, $00, $02

; group03
#_0DC01E: dw   0,  -7 : db $0E, $00, $00, $02
#_0DC026: dw  -4,   1 : db $A4, $40, $00, $02
#_0DC02E: dw   4,   1 : db $A3, $40, $00, $02

; group04
#_0DC036: dw   0,  -9 : db $0C, $00, $00, $02
#_0DC03E: dw   0,   0 : db $A6, $00, $00, $02
#_0DC046: dw   0,   0 : db $A6, $00, $00, $02

; group05
#_0DC04E: dw   0,  -8 : db $0C, $00, $00, $02
#_0DC056: dw   0,   0 : db $A8, $00, $00, $02
#_0DC05E: dw   0,   0 : db $A8, $00, $00, $02

; group06
#_0DC066: dw   0,  -9 : db $0C, $40, $00, $02
#_0DC06E: dw   0,   0 : db $A6, $40, $00, $02
#_0DC076: dw   0,   0 : db $A6, $40, $00, $02

; group07
#_0DC07E: dw   0,  -8 : db $0C, $40, $00, $02
#_0DC086: dw   0,   0 : db $A8, $40, $00, $02
#_0DC08E: dw   0,   0 : db $A8, $40, $00, $02

;---------------------------------------------------------------------------------------------------

.head_char
#_0DC096: db $82
#_0DC097: db $82
#_0DC098: db $80
#_0DC099: db $84
#_0DC09A: db $88
#_0DC09B: db $88
#_0DC09C: db $86
#_0DC09D: db $84

.head_flip
#_0DC09E: db $40
#_0DC09F: db $00
#_0DC0A0: db $00
#_0DC0A1: db $00
#_0DC0A2: db $40
#_0DC0A3: db $00
#_0DC0A4: db $00
#_0DC0A5: db $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Zazak:
#_0DC0A6: PHB
#_0DC0A7: PHK
#_0DC0A8: PLB

#_0DC0A9: LDA.b #$00
#_0DC0AB: XBA
#_0DC0AC: LDA.w $0DC0,X

#_0DC0AF: REP #$20

#_0DC0B1: ASL A
#_0DC0B2: ASL A
#_0DC0B3: ASL A
#_0DC0B4: STA.b $00

#_0DC0B6: ASL A
#_0DC0B7: ADC.b $00
#_0DC0B9: ADC.w #.oam_groups
#_0DC0BC: STA.b $08

#_0DC0BE: SEP #$20

#_0DC0C0: LDA.b #$03
#_0DC0C2: JSL Sprite_DrawMultiple

#_0DC0C6: LDA.w $0F00,X
#_0DC0C9: BNE .no_head_adjustment

#_0DC0CB: LDA.w $0E00,X
#_0DC0CE: CMP.b #$01

#_0DC0D0: PHX

#_0DC0D1: LDA.w $0EB0,X
#_0DC0D4: TAX

#_0DC0D5: BCC .not_facing_up

#_0DC0D7: INX
#_0DC0D8: INX
#_0DC0D9: INX
#_0DC0DA: INX

.not_facing_up
#_0DC0DB: LDA.w .head_char,X

#_0DC0DE: LDY.b #$02
#_0DC0E0: STA.b ($90),Y

#_0DC0E2: INY

#_0DC0E3: LDA.b ($90),Y
#_0DC0E5: AND.b #$BF
#_0DC0E7: ORA.w .head_flip,X
#_0DC0EA: STA.b ($90),Y

#_0DC0EC: PLX

#_0DC0ED: JSL SpriteDraw_Shadow_long

.no_head_adjustment
#_0DC0F1: PLB

#_0DC0F2: RTL

;===================================================================================================

pool SpriteDraw_Stalfos

.oam_groups
; group00
#_0DC0F3: dw   0, -10 : db $00, $00, $00, $02
#_0DC0FB: dw   0,   0 : db $06, $00, $00, $02
#_0DC103: dw   0,   0 : db $06, $00, $00, $02

; group01
#_0DC10B: dw   0,  -9 : db $00, $00, $00, $02
#_0DC113: dw   0,   1 : db $06, $40, $00, $02
#_0DC11B: dw   0,   1 : db $06, $40, $00, $02

; group02
#_0DC123: dw   0, -10 : db $04, $00, $00, $02
#_0DC12B: dw   0,   0 : db $06, $00, $00, $02
#_0DC133: dw   0,   0 : db $06, $00, $00, $02

; group03
#_0DC13B: dw   0,  -9 : db $04, $00, $00, $02
#_0DC143: dw   0,   1 : db $06, $40, $00, $02
#_0DC14B: dw   0,   1 : db $06, $40, $00, $02

; group04
#_0DC153: dw   0, -10 : db $02, $00, $00, $02
#_0DC15B: dw   5,   5 : db $2E, $00, $00, $00
#_0DC163: dw   0,   0 : db $24, $00, $00, $02

; group05
#_0DC16B: dw   0, -10 : db $02, $00, $00, $02
#_0DC173: dw   0,   0 : db $0E, $00, $00, $02
#_0DC17B: dw   0,   0 : db $0E, $00, $00, $02

; group06
#_0DC183: dw   0, -10 : db $02, $40, $00, $02
#_0DC18B: dw   3,   5 : db $2E, $40, $00, $00
#_0DC193: dw   0,   0 : db $24, $40, $00, $02

; group07
#_0DC19B: dw   0, -10 : db $02, $40, $00, $02
#_0DC1A3: dw   0,   0 : db $0E, $40, $00, $02
#_0DC1AB: dw   0,   0 : db $0E, $00, $00, $02

; group08
#_0DC1B3: dw   2,  -8 : db $02, $40, $00, $02
#_0DC1BB: dw   0,   0 : db $08, $40, $00, $02
#_0DC1C3: dw   0,   0 : db $08, $40, $00, $02

; group09
#_0DC1CB: dw  -2,  -8 : db $02, $00, $00, $02
#_0DC1D3: dw   0,   0 : db $08, $00, $00, $02
#_0DC1DB: dw   0,   0 : db $08, $00, $00, $02

; group0A
#_0DC1E3: dw   0,  -6 : db $00, $00, $00, $02
#_0DC1EB: dw   0,   0 : db $0A, $00, $00, $02
#_0DC1F3: dw   0,   0 : db $0A, $00, $00, $02

; group0B
#_0DC1FB: dw   0,   0 : db $0A, $00, $00, $02
#_0DC203: dw   0,  -6 : db $04, $00, $00, $02
#_0DC20B: dw   0,  -6 : db $04, $00, $00, $02

;---------------------------------------------------------------------------------------------------

.head_char
#_0DC213: db $02, $02, $00, $04

pool off

;===================================================================================================

SpriteDontDraw_Stalfos:
#_0DC217: JSL Sprite_PrepOAMCoord_long

#_0DC21B: RTL

;===================================================================================================

SpriteDraw_Stalfos:
#_0DC21C: LDA.w $0E10,X
#_0DC21F: BNE SpriteDontDraw_Stalfos

#_0DC221: PHB
#_0DC222: PHK
#_0DC223: PLB

#_0DC224: LDA.b #$00
#_0DC226: XBA
#_0DC227: LDA.w $0DC0,X

#_0DC22A: REP #$20

#_0DC22C: ASL A
#_0DC22D: ASL A
#_0DC22E: ASL A
#_0DC22F: STA.b $00

#_0DC231: ASL A
#_0DC232: ADC.b $00
#_0DC234: ADC.w #.oam_groups
#_0DC237: STA.b $08

#_0DC239: SEP #$20

#_0DC23B: LDA.b #$03
#_0DC23D: JSL Sprite_DrawMultiple

#_0DC241: LDA.w $0DC0,X
#_0DC244: CMP.b #$08
#_0DC246: BCS .skip_head

#_0DC248: LDA.w $0F00,X
#_0DC24B: BNE .skip_head

#_0DC24D: PHX

#_0DC24E: LDA.w $0EB0,X
#_0DC251: TAX

#_0DC252: LDA.w .head_char,X
#_0DC255: LDY.b #$02
#_0DC257: STA.b ($90),Y

#_0DC259: INY

#_0DC25A: LDA.b ($90),Y
#_0DC25C: AND.b #$8F
#_0DC25E: ORA.w .prop,X
#_0DC261: STA.b ($90),Y

#_0DC263: PLX

.skip_head
#_0DC264: JSL SpriteDraw_Shadow_long

#_0DC268: PLB

#_0DC269: RTL

;---------------------------------------------------------------------------------------------------

.prop
#_0DC26A: db $70, $30, $30, $30

;===================================================================================================

Probe_CheckTileSolidity:
#_0DC26E: LDA.w $0F20,X
#_0DC271: CMP.b #$01

#_0DC273: REP #$30

#_0DC275: STZ.b $05

#_0DC277: BCC .lower_layer

#_0DC279: LDA.w #$1000
#_0DC27C: STA.b $05

.lower_layer
#_0DC27E: SEP #$20

#_0DC280: LDA.b $1B

#_0DC282: REP #$20
#_0DC284: BEQ .on_overworld

;---------------------------------------------------------------------------------------------------

.in_underworld
#_0DC286: LDA.w $0FD8
#_0DC289: AND.w #$01FF
#_0DC28C: LSR A
#_0DC28D: LSR A
#_0DC28E: LSR A
#_0DC28F: STA.b $04

#_0DC291: LDA.w $0FDA
#_0DC294: AND.w #$01F8
#_0DC297: ASL A
#_0DC298: ASL A
#_0DC299: ASL A
#_0DC29A: CLC
#_0DC29B: ADC.b $04
#_0DC29D: CLC
#_0DC29E: ADC.b $05

#_0DC2A0: PHX

#_0DC2A1: TAX
#_0DC2A2: LDA.l $7F2000,X

#_0DC2A6: PLX
#_0DC2A7: BRA .perform_check

;---------------------------------------------------------------------------------------------------

.on_overworld
#_0DC2A9: PHX
#_0DC2AA: PHY

#_0DC2AB: LDA.w $0FD8
#_0DC2AE: LSR A
#_0DC2AF: LSR A
#_0DC2B0: LSR A
#_0DC2B1: STA.b $02

#_0DC2B3: LDA.w $0FDA
#_0DC2B6: STA.b $00

#_0DC2B8: SEP #$30

#_0DC2BA: JSL Overworld_ReadTileAttribute

#_0DC2BE: REP #$10

#_0DC2C0: PLY
#_0DC2C1: PLX

;---------------------------------------------------------------------------------------------------

.perform_check
#_0DC2C2: SEP #$30

#_0DC2C4: PHX

#_0DC2C5: STA.w $0FA5

#_0DC2C8: TAX

#_0DC2C9: LDA.l SimplifiedTileAttributes,X

#_0DC2CD: PLX

#_0DC2CE: CMP.b #$01

#_0DC2D0: RTL

;===================================================================================================

Sprite_29_Adult:
#_0DC2D1: PHB
#_0DC2D2: PHK
#_0DC2D3: PLB

#_0DC2D4: JSR .main

#_0DC2D7: PLB

#_0DC2D8: RTL

;---------------------------------------------------------------------------------------------------

.main
#_0DC2D9: LDA.w $0E80,X
#_0DC2DC: JSL JumpTableLocal
#_0DC2E0: dw Sprite_FluteDad
#_0DC2E2: dw Sprite_ThiefHideoutGuy
#_0DC2E4: dw Sprite_BlindsHutGuy

;===================================================================================================

Sprite_BlindsHutGuy:
#_0DC2E6: JSR SpriteDraw_BlindsHutGuy

#_0DC2E9: JSR Sprite_CheckIfActive_Bank0D
#_0DC2EC: JSL Sprite_BehaveAsBarrier
#_0DC2F0: JSL Sprite_TrackBodyToHead

#_0DC2F4: STZ.w $0EB0,X

; Message 0170
#_0DC2F7: LDA.b #$70
#_0DC2F9: LDY.b #$01
#_0DC2FB: JSL Sprite_ShowSolicitedMessage
#_0DC2FF: BCC .exit

#_0DC301: STA.w $0DE0,X
#_0DC304: STA.w $0EB0,X

.exit
#_0DC307: RTS

;===================================================================================================

Sprite_ThiefHideoutGuy:
#_0DC308: LDA.b $1A
#_0DC30A: AND.b #$03
#_0DC30C: BNE .delay

#_0DC30E: LDA.b #$02
#_0DC310: STA.w $0DC0,X

#_0DC313: JSL Sprite_DirectionToFaceLink_long

#_0DC317: CPY.b #$03
#_0DC319: BNE .not_upwards

#_0DC31B: LDY.b #$02

.not_upwards
#_0DC31D: TYA
#_0DC31E: STA.w $0EB0,X

.delay
#_0DC321: LDA.b #$0F
#_0DC323: STA.w $0F50,X

#_0DC326: JSL OAM_AllocateDeferToPlayer_long
#_0DC32A: JSL SpriteDraw_Thief
#_0DC32E: JSR Sprite_CheckIfActive_Bank0D
#_0DC331: JSL Sprite_BehaveAsBarrier

; Message 016F
#_0DC335: LDA.b #$6F
#_0DC337: LDY.b #$01
#_0DC339: JSL Sprite_ShowSolicitedMessage

#_0DC33D: LDA.b #$02
#_0DC33F: STA.w $0DC0,X

#_0DC342: RTS

;===================================================================================================

Sprite_FluteDad:
#_0DC343: JSR SpriteDraw_FluteDad
#_0DC346: JSR Sprite_CheckIfActive_Bank0D
#_0DC349: JSL Sprite_BehaveAsBarrier

#_0DC34D: LDA.b $1A
#_0DC34F: CMP.b #$30
#_0DC351: BCS .zzzzzz

#_0DC353: LDA.b #$02
#_0DC355: BRA .continue

.zzzzzz
#_0DC357: ASL A
#_0DC358: ROL A
#_0DC359: AND.b #$01

.continue
#_0DC35B: STA.w $0DC0,X

#_0DC35E: LDA.w $0D80,X
#_0DC361: BNE .aware_of_situation

#_0DC363: LDA.l $7EF34C
#_0DC367: CMP.b #$02
#_0DC369: BCS .have_flute

; Message 009F
#_0DC36B: LDA.b #$9F
#_0DC36D: LDY.b #$00
#_0DC36F: JSL Sprite_ShowSolicitedMessage
#_0DC373: BCC .useless_branch

.useless_branch
#_0DC375: RTS

.have_flute
; Message 00A2
#_0DC376: LDA.b #$A2
#_0DC378: LDY.b #$00
#_0DC37A: JSL Sprite_ShowSolicitedMessage
#_0DC37E: BCC .not_talking

#_0DC380: RTS

.not_talking
#_0DC381: LDA.w $0202
#_0DC384: CMP.b #$0D
#_0DC386: BNE .exit

#_0DC388: BIT.b $F0
#_0DC38A: BVC .exit

#_0DC38C: JSL Sprite_CheckDamageToLink_same_layer_long
#_0DC390: BCC .exit

; Message 00A0
#_0DC392: LDA.b #$A0
#_0DC394: LDY.b #$00
#_0DC396: JSL Sprite_ShowMessageUnconditional

#_0DC39A: INC.w $0D80,X

#_0DC39D: LDA.b #$02
#_0DC39F: STA.w $0DC0,X

.exit
#_0DC3A2: RTS

;---------------------------------------------------------------------------------------------------

.aware_of_situation
; Message 00A1
#_0DC3A3: LDA.b #$A1
#_0DC3A5: LDY.b #$00
#_0DC3A7: JSL Sprite_ShowSolicitedMessage

#_0DC3AB: LDA.b #$02
#_0DC3AD: STA.w $0DC0,X

#_0DC3B0: RTS

;===================================================================================================

pool SpriteDraw_FluteDad

.oam_groups
; group00
#_0DC3B1: dw   0,  -7 : db $86, $00, $00, $02
#_0DC3B9: dw   0,   0 : db $88, $00, $00, $02

; group01
#_0DC3C1: dw   0,  -6 : db $86, $00, $00, $02
#_0DC3C9: dw   0,   0 : db $88, $00, $00, $02

; group02
#_0DC3D1: dw   0,  -8 : db $84, $00, $00, $02
#_0DC3D9: dw   0,   0 : db $88, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_FluteDad:
#_0DC3E1: LDA.b #$02
#_0DC3E3: STA.b $06
#_0DC3E5: STZ.b $07

#_0DC3E7: LDA.w $0DC0,X
#_0DC3EA: ASL A
#_0DC3EB: ASL A
#_0DC3EC: ASL A
#_0DC3ED: ASL A

#_0DC3EE: ADC.b #.oam_groups>>0
#_0DC3F0: STA.b $08

#_0DC3F2: LDA.b #.oam_groups>>8
#_0DC3F4: ADC.b #$00
#_0DC3F6: STA.b $09

#_0DC3F8: JSL Sprite_DrawMultiple_player_deferred
#_0DC3FC: JSL SpriteDraw_Shadow_long

#_0DC400: RTS

;===================================================================================================

pool SpriteDraw_BlindsHutGuy

.oam_groups
; group00
#_0DC401: dw   0,  -8 : db $0C, $00, $00, $02
#_0DC409: dw   0,   0 : db $CA, $00, $00, $02

; group01
#_0DC411: dw   0,  -8 : db $0C, $00, $00, $02
#_0DC419: dw   0,   0 : db $CA, $40, $00, $02

; group02
#_0DC421: dw   0,  -8 : db $0C, $00, $00, $02
#_0DC429: dw   0,   0 : db $CA, $00, $00, $02

; group03
#_0DC431: dw   0,  -8 : db $0C, $00, $00, $02
#_0DC439: dw   0,   0 : db $CA, $40, $00, $02

; group04
#_0DC441: dw   0,  -8 : db $0E, $00, $00, $02
#_0DC449: dw   0,   0 : db $CA, $00, $00, $02

; group05
#_0DC451: dw   0,  -8 : db $0E, $00, $00, $02
#_0DC459: dw   0,   0 : db $CA, $40, $00, $02

; group06
#_0DC461: dw   0,  -8 : db $0E, $40, $00, $02
#_0DC469: dw   0,   0 : db $CA, $00, $00, $02

; group07
#_0DC471: dw   0,  -8 : db $0E, $40, $00, $02
#_0DC479: dw   0,   0 : db $CA, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_BlindsHutGuy:
#_0DC481: LDA.b #$02
#_0DC483: STA.b $06
#_0DC485: STZ.b $07

#_0DC487: LDA.w $0DE0,X
#_0DC48A: ASL A

#_0DC48B: ADC.w $0DC0,X

#_0DC48E: ASL A
#_0DC48F: ASL A
#_0DC490: ASL A
#_0DC491: ASL A

#_0DC492: ADC.b #.oam_groups>>0
#_0DC494: STA.b $08

#_0DC496: LDA.b #.oam_groups>>8
#_0DC498: ADC.b #$00
#_0DC49A: STA.b $09

#_0DC49C: JSL Sprite_DrawMultiple_player_deferred
#_0DC4A0: JSL SpriteDraw_Shadow_long

#_0DC4A4: RTS

;===================================================================================================

Sprite_2A_SweepingLady:
#_0DC4A5: PHB
#_0DC4A6: PHK
#_0DC4A7: PLB

#_0DC4A8: JSR .main

#_0DC4AB: PLB

#_0DC4AC: RTL

;---------------------------------------------------------------------------------------------------

.main
#_0DC4AD: JSR SpriteDraw_SweepingLady
#_0DC4B0: JSR Sprite_CheckIfActive_Bank0D

; Message 00A3
#_0DC4B3: LDA.b #$A3
#_0DC4B5: LDY.b #$00
#_0DC4B7: JSL Sprite_ShowSolicitedMessage

#_0DC4BB: JSL Sprite_BehaveAsBarrier

#_0DC4BF: LDA.b $1A
#_0DC4C1: LSR A ; /16
#_0DC4C2: LSR A
#_0DC4C3: LSR A
#_0DC4C4: LSR A
#_0DC4C5: AND.b #$01
#_0DC4C7: STA.w $0DC0,X

#_0DC4CA: RTS

;===================================================================================================

pool SpriteDraw_SweepingLady

.oam_groups
; group00
#_0DC4CB: dw   0,  -7 : db $8E, $00, $00, $02
#_0DC4D3: dw   0,   5 : db $8A, $00, $00, $02

; group01
#_0DC4DB: dw   0,  -8 : db $8E, $00, $00, $02
#_0DC4E3: dw   0,   4 : db $8C, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_SweepingLady:
#_0DC4EB: LDA.b #$02
#_0DC4ED: STA.b $06
#_0DC4EF: STZ.b $07

#_0DC4F1: LDA.w $0DC0,X
#_0DC4F4: ASL A ; x16
#_0DC4F5: ASL A
#_0DC4F6: ASL A
#_0DC4F7: ASL A
#_0DC4F8: ADC.b #.oam_groups>>0
#_0DC4FA: STA.b $08

#_0DC4FC: LDA.b #.oam_groups>>8
#_0DC4FE: ADC.b #$00
#_0DC500: STA.b $09

#_0DC502: JSL Sprite_DrawMultiple_player_deferred
#_0DC506: JSL SpriteDraw_Shadow_long

#_0DC50A: RTS

;===================================================================================================

Sprite_2C_Lumberjacks:
#_0DC50B: PHB
#_0DC50C: PHK
#_0DC50D: PLB

#_0DC50E: JSR .main

#_0DC511: PLB

#_0DC512: RTL

;---------------------------------------------------------------------------------------------------

.message_low
#_0DC513: db $2A ; Message 012A
#_0DC514: db $2B ; Message 012B
#_0DC515: db $2C ; Message 012C
#_0DC516: db $2B ; Message 012B

.message_high
#_0DC517: db $01
#_0DC518: db $01
#_0DC519: db $01
#_0DC51A: db $01

;---------------------------------------------------------------------------------------------------

.main
#_0DC51B: JSR SpriteDraw_Lumberjack
#_0DC51E: JSR Sprite_CheckIfActive_Bank0D

#_0DC521: LDY.b #$00
#_0DC523: JSR Lumberjack_CheckProximity
#_0DC526: BCS .check_outer

#_0DC528: PHX

#_0DC529: JSL Sprite_CancelHookshot

#_0DC52D: STZ.b $5E

#_0DC52F: JSL Link_CancelDash_long

#_0DC533: PLX

.check_outer
#_0DC534: JSL CheckIfLinkIsBusy
#_0DC538: BCS .no_talking

#_0DC53A: LDY.b #$02
#_0DC53C: JSR Lumberjack_CheckProximity
#_0DC53F: BCS .no_talking

#_0DC541: LDA.b $F6
#_0DC543: AND.b #$80
#_0DC545: BEQ .no_talking

#_0DC547: LDA.b $22
#_0DC549: CMP.w $0D10,X

#_0DC54C: ROL A
#_0DC54D: AND.b #$01
#_0DC54F: STA.b $00
#_0DC551: STZ.b $01

#_0DC553: LDA.l $7EF359
#_0DC557: CMP.b #$02
#_0DC559: BCC .weak_sword

#_0DC55B: LDA.b #$02
#_0DC55D: STA.b $01

.weak_sword
#_0DC55F: LDA.b $01
#_0DC561: CLC
#_0DC562: ADC.b $00
#_0DC564: TAY

#_0DC565: LDA.w .message_low,Y
#_0DC568: XBA

#_0DC569: LDA.w .message_high,Y
#_0DC56C: TAY

#_0DC56D: XBA
#_0DC56E: JSL Sprite_ShowMessageUnconditional

;---------------------------------------------------------------------------------------------------

.no_talking
#_0DC572: LDA.b $1A
#_0DC574: LSR A ; / 32
#_0DC575: LSR A
#_0DC576: LSR A
#_0DC577: LSR A
#_0DC578: LSR A
#_0DC579: AND.b #$01
#_0DC57B: STA.w $0DC0,X

#_0DC57E: RTS

;===================================================================================================

pool Lumberjack_CheckProximity

.boundary_x_lower
#_0DC57F: dw $0030, $0034

.boundary_y_lower
#_0DC583: dw $0013, $0014

.boundary_x_higher
#_0DC587: dw $0062, $006A

.boundary_y_higher
#_0DC58B: dw $0025, $0028

pool off

;---------------------------------------------------------------------------------------------------

Lumberjack_CheckProximity:
#_0DC58F: REP #$20

#_0DC591: LDA.w $0FD8
#_0DC594: SEC
#_0DC595: SBC.b $22

#_0DC597: CLC
#_0DC598: ADC.w .boundary_x_lower,Y
#_0DC59B: CMP.w .boundary_x_higher,Y
#_0DC59E: BCS .not_close

#_0DC5A0: LDA.w $0FDA
#_0DC5A3: SEC
#_0DC5A4: SBC.b $20

#_0DC5A6: CLC
#_0DC5A7: ADC.w .boundary_y_lower,Y
#_0DC5AA: CMP.w .boundary_y_higher,Y
#_0DC5AD: BCS .not_close

.not_close
#_0DC5AF: SEP #$30

#_0DC5B1: RTS

;===================================================================================================

pool SpriteDraw_Lumberjack

.oam_groups
; group00
#_0DC5B2: dw -23,   5 : db $BE, $02, $00, $00
#_0DC5BA: dw -15,   5 : db $BF, $02, $00, $00
#_0DC5C2: dw  -7,   5 : db $BF, $02, $00, $00
#_0DC5CA: dw   1,   5 : db $BF, $02, $00, $00
#_0DC5D2: dw   9,   5 : db $BF, $02, $00, $00
#_0DC5DA: dw  17,   5 : db $BF, $02, $00, $00
#_0DC5E2: dw  25,   5 : db $BE, $42, $00, $00
#_0DC5EA: dw -32,  -8 : db $A8, $40, $00, $02
#_0DC5F2: dw -32,   4 : db $A6, $40, $00, $02
#_0DC5FA: dw  30,  -8 : db $A8, $00, $00, $02
#_0DC602: dw  31,   4 : db $A4, $00, $00, $02

; group01
#_0DC60A: dw -19,   5 : db $BE, $02, $00, $00
#_0DC612: dw -11,   5 : db $BF, $02, $00, $00
#_0DC61A: dw  -3,   5 : db $BF, $02, $00, $00
#_0DC622: dw   5,   5 : db $BF, $02, $00, $00
#_0DC62A: dw  13,   5 : db $BF, $02, $00, $00
#_0DC632: dw  21,   5 : db $BF, $02, $00, $00
#_0DC63A: dw  29,   5 : db $BE, $42, $00, $00
#_0DC642: dw -31,  -8 : db $A8, $40, $00, $02
#_0DC64A: dw -32,   4 : db $A4, $40, $00, $02
#_0DC652: dw  31,  -8 : db $A8, $00, $00, $02
#_0DC65A: dw  31,   4 : db $A6, $00, $00, $02

; group02
#_0DC662: dw -19,   5 : db $BE, $02, $00, $00
#_0DC66A: dw -11,   5 : db $BF, $02, $00, $00
#_0DC672: dw  -3,   5 : db $BF, $02, $00, $00
#_0DC67A: dw   5,   5 : db $BF, $02, $00, $00
#_0DC682: dw  13,   5 : db $BF, $02, $00, $00
#_0DC68A: dw  21,   5 : db $BF, $02, $00, $00
#_0DC692: dw  29,   5 : db $BE, $42, $00, $00
#_0DC69A: dw -32,  -8 : db $0E, $40, $00, $02
#_0DC6A2: dw -32,   4 : db $A4, $40, $00, $02
#_0DC6AA: dw  32,  -8 : db $0E, $00, $00, $02
#_0DC6B2: dw  31,   4 : db $A6, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Lumberjack:
#_0DC6BA: LDA.b #$0B
#_0DC6BC: STA.b $06
#_0DC6BE: STZ.b $07

#_0DC6C0: LDA.w $0DC0,X
#_0DC6C3: ASL A
#_0DC6C4: ASL A

#_0DC6C5: ADC.w $0DC0,X
#_0DC6C8: ASL A
#_0DC6C9: ADC.w $0DC0,X

#_0DC6CC: ASL A
#_0DC6CD: ASL A
#_0DC6CE: ASL A

#_0DC6CF: ADC.b #.oam_groups>>0
#_0DC6D1: STA.b $08

#_0DC6D3: LDA.b #.oam_groups>>8
#_0DC6D5: ADC.b #$00
#_0DC6D7: STA.b $09

#_0DC6D9: JSL Sprite_DrawMultiple_preset_quantity

#_0DC6DD: RTS

;===================================================================================================

Sprite_2D_TelepathicTile:
#_0DC6DE: PHB
#_0DC6DF: PHK
#_0DC6E0: PLB

#_0DC6E1: JSR .main

#_0DC6E4: PLB

#_0DC6E5: RTL

;---------------------------------------------------------------------------------------------------

.main
#_0DC6E6: JSR SpriteDraw_TelepathicTile
#_0DC6E9: JSR Sprite_CheckIfActive_Bank0D

; Message 00B3
#_0DC6EC: LDA.b #$B3
#_0DC6EE: LDY.b #$00
#_0DC6F0: JSL Sprite_ShowSolicitedMessage

#_0DC6F4: JSL Sprite_BehaveAsBarrier

#_0DC6F8: LDA.b $1A
#_0DC6FA: LSR A
#_0DC6FB: ORA.b $1A

#_0DC6FD: LSR A
#_0DC6FE: LSR A
#_0DC6FF: LSR A
#_0DC700: LSR A

#_0DC701: AND.b #$01
#_0DC703: STA.w $0DC0,X

#_0DC706: RTS

;===================================================================================================

pool SpriteDraw_TelepathicTile

.oam_groups
; group00
#_0DC707: dw   4, -14 : db $AE, $00, $00, $00
#_0DC70F: dw   0, -16 : db $82, $00, $00, $02
#_0DC717: dw   0,   0 : db $AA, $00, $00, $02

; group01
#_0DC71F: dw   4, -16 : db $AE, $00, $00, $00
#_0DC727: dw   0, -16 : db $80, $00, $00, $02
#_0DC72F: dw   0,   0 : db $A0, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_TelepathicTile:
#_0DC737: LDA.b #$03
#_0DC739: STA.b $06
#_0DC73B: STZ.b $07

#_0DC73D: LDA.w $0DC0,X
#_0DC740: ASL A
#_0DC741: ADC.w $0DC0,X

#_0DC744: ASL A
#_0DC745: ASL A
#_0DC746: ASL A

#_0DC747: ADC.b #.oam_groups>>0
#_0DC749: STA.b $08

#_0DC74B: LDA.b #.oam_groups>>8
#_0DC74D: ADC.b #$00
#_0DC74F: STA.b $09

#_0DC751: JSL Sprite_DrawMultiple_player_deferred
#_0DC755: JSL SpriteDraw_Shadow_long

#_0DC759: RTS

;===================================================================================================

Sprite_31_FortuneTeller:
#_0DC75A: PHB
#_0DC75B: PHK
#_0DC75C: PLB

#_0DC75D: JSR .main

#_0DC760: PLB

#_0DC761: RTL

;---------------------------------------------------------------------------------------------------

.main
#_0DC762: LDA.w $0E80,X
#_0DC765: JSL JumpTableLocal
#_0DC769: dw FortuneTeller
#_0DC76B: dw SmithyBlockade

;===================================================================================================
; This is so dumb.
;===================================================================================================
SmithyBlockade:
#_0DC76D: JSR Sprite_CheckIfActive_Bank0D

#_0DC770: JSL Sprite_CheckDamageToLink_same_layer_long
#_0DC774: BCC .exit

#_0DC776: PHX

#_0DC777: JSL Sprite_CancelHookshot

#_0DC77B: STZ.b $5E

#_0DC77D: JSL Link_CancelDash_long

#_0DC781: PLX

.exit
#_0DC782: RTS

;===================================================================================================

FortuneTeller:
#_0DC783: JSR SpriteDraw_FortuneTeller
#_0DC786: JSR Sprite_CheckIfActive_Bank0D

#_0DC789: LDA.l $7EF3CA
#_0DC78D: ASL A
#_0DC78E: ROL A
#_0DC78F: ROL A
#_0DC790: AND.b #$01

#_0DC792: JSL JumpTableLocal
#_0DC796: dw FortuneTeller_LightWorld
#_0DC798: dw FortuneTeller_DarkWorld

;===================================================================================================

FortuneTeller_LightWorld:
#_0DC79A: LDA.w $0D80,X
#_0DC79D: JSL JumpTableLocal
#_0DC7A1: dw FortuneTeller_LightWorld_PrecognizantResponse
#_0DC7A3: dw FortuneTeller_LightWorld_Reject
#_0DC7A5: dw FortuneTeller_LightWorld_OfferReading
#_0DC7A7: dw FortuneTeller_LightWorld_HandleResponse
#_0DC7A9: dw FortuneTeller_PerformPseudoScience
#_0DC7AB: dw FortuneTeller_LightWorld_DemandPayment
#_0DC7AD: dw FortuneTeller_LightWorld_TakeMoney
#_0DC7AF: dw FortuneTeller_LightWorld_DoNothing

;===================================================================================================

FortuneTeller_Prices:
#_0DC7B1: dw  10,  15,  20,  30

;===================================================================================================

FortuneTeller_LightWorld_PrecognizantResponse:
#_0DC7B9: STZ.w $0DC0,X

#_0DC7BC: JSL GetRandomNumber
#_0DC7C0: AND.b #$03
#_0DC7C2: ASL A
#_0DC7C3: STA.w $0D90,X

#_0DC7C6: TAY

#_0DC7C7: REP #$20

#_0DC7C9: LDA.l $7EF360
#_0DC7CD: CMP.w FortuneTeller_Prices,Y

#_0DC7D0: SEP #$30
#_0DC7D2: BCS .enough_rupees

#_0DC7D4: INC.w $0D80,X

#_0DC7D7: RTS

.enough_rupees
#_0DC7D8: LDA.b #$02
#_0DC7DA: STA.w $0D80,X

#_0DC7DD: RTS

;===================================================================================================

FortuneTeller_LightWorld_Reject:
; Message 00F0
#_0DC7DE: LDA.b #$F0
#_0DC7E0: LDY.b #$00
#_0DC7E2: JSL Sprite_ShowSolicitedMessage

#_0DC7E6: RTS

;===================================================================================================

FortuneTeller_LightWorld_OfferReading:
; Message 00F1
#_0DC7E7: LDA.b #$F1
#_0DC7E9: LDY.b #$00
#_0DC7EB: JSL Sprite_ShowSolicitedMessage
#_0DC7EF: BCC .exit

#_0DC7F1: INC.w $0D80,X

#_0DC7F4: LDA.b #$FF
#_0DC7F6: STA.w $0DF0,X

#_0DC7F9: LDA.b #$01
#_0DC7FB: STA.w $02E4

.exit
#_0DC7FE: RTS

;===================================================================================================

FortuneTeller_LightWorld_HandleResponse:
#_0DC7FF: LDA.w $1CE8
#_0DC802: BNE .rejected

#_0DC804: LDA.w $0DF0,X
#_0DC807: BNE .delay

#_0DC809: INC.w $0D80,X

.delay
#_0DC80C: LDA.b $1A
#_0DC80E: LSR A
#_0DC80F: LSR A
#_0DC810: LSR A
#_0DC811: LSR A

#_0DC812: AND.b #$01
#_0DC814: STA.w $0DC0,X

#_0DC817: RTS

.rejected
#_0DC818: LDA.b #$02
#_0DC81A: STA.w $0D80,X

#_0DC81D: STZ.w $02E4

#_0DC820: RTS

;===================================================================================================

FortuneTellerMessage:
.low
#_0DC821: db $E8 ; Message 00E8
#_0DC822: db $E9 ; Message 00E9
#_0DC823: db $EA ; Message 00EA
#_0DC824: db $EB ; Message 00EB
#_0DC825: db $EC ; Message 00EC
#_0DC826: db $ED ; Message 00ED
#_0DC827: db $EE ; Message 00EE
#_0DC828: db $EF ; Message 00EF
#_0DC829: db $F4 ; Message 00F4
#_0DC82A: db $F5 ; Message 00F5
#_0DC82B: db $F6 ; Message 00F6
#_0DC82C: db $F7 ; Message 00F7
#_0DC82D: db $F8 ; Message 00F8
#_0DC82E: db $F9 ; Message 00F9
#_0DC82F: db $FA ; Message 00FA
#_0DC830: db $FB ; Message 00FB

.high
#_0DC831: db $00
#_0DC832: db $00
#_0DC833: db $00
#_0DC834: db $00
#_0DC835: db $00
#_0DC836: db $00
#_0DC837: db $00
#_0DC838: db $00
#_0DC839: db $00
#_0DC83A: db $00
#_0DC83B: db $00
#_0DC83C: db $00
#_0DC83D: db $00
#_0DC83E: db $00
#_0DC83F: db $00
#_0DC840: db $00

;===================================================================================================

FortuneTeller_PerformPseudoScience:
#_0DC841: STZ.w $0DC0,X

#_0DC844: INC.w $0D80,X

#_0DC847: STZ.b $03

#_0DC849: LDA.l $7EF3C7
#_0DC84D: CMP.b #$03
#_0DC84F: BCS .map_icon_past_pendants

#_0DC851: STZ.b $00
#_0DC853: STZ.b $01

#_0DC855: JMP.w FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.map_icon_past_pendants
#_0DC858: LDA.l $7EF34E
#_0DC85C: BNE .have_book

#_0DC85E: LDA.b #$02
#_0DC860: JSR FortuneTeller_PrepareNextMessage
#_0DC863: BCC .have_book

#_0DC865: JMP.w FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_book
#_0DC868: LDA.l $7EF374
#_0DC86C: AND.b #$02
#_0DC86E: BNE .have_wisdom

#_0DC870: LDA.b #$01
#_0DC872: JSR FortuneTeller_PrepareNextMessage
#_0DC875: BCC .have_wisdom

#_0DC877: JMP.w FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_wisdom
#_0DC87A: LDA.l $7EF344
#_0DC87E: CMP.b #$02
#_0DC880: BCS .have_powder

#_0DC882: LDA.b #$03
#_0DC884: JSR FortuneTeller_PrepareNextMessage
#_0DC887: BCC .have_powder

#_0DC889: JMP.w FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_powder
#_0DC88C: LDA.l $7EF356
#_0DC890: BNE .have_flippers

#_0DC892: LDA.b #$04
#_0DC894: JSR FortuneTeller_PrepareNextMessage
#_0DC897: BCC .have_flippers

#_0DC899: JMP.w FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_flippers
#_0DC89C: LDA.l $7EF357
#_0DC8A0: BNE .have_pearl

#_0DC8A2: LDA.b #$05
#_0DC8A4: JSR FortuneTeller_PrepareNextMessage
#_0DC8A7: BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_pearl
#_0DC8A9: LDA.l $7EF3C5
#_0DC8AD: CMP.b #$03
#_0DC8AF: BCS .aga_defeated

#_0DC8B1: LDA.b #$06
#_0DC8B3: JSR FortuneTeller_PrepareNextMessage
#_0DC8B6: BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.aga_defeated
#_0DC8B8: LDA.l $7EF37B
#_0DC8BC: BNE .have_magic_upgrade

#_0DC8BE: LDA.b #$07
#_0DC8C0: JSR FortuneTeller_PrepareNextMessage
#_0DC8C3: BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_magic_upgrade
#_0DC8C5: LDA.l $7EF347
#_0DC8C9: BNE .have_bombos

#_0DC8CB: LDA.b #$08
#_0DC8CD: JSR FortuneTeller_PrepareNextMessage
#_0DC8D0: BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_bombos
#_0DC8D2: LDA.l $7EF3C9
#_0DC8D6: AND.b #$10
#_0DC8D8: BNE .have_purple_chest_bottle

#_0DC8DA: LDA.b #$09
#_0DC8DC: JSR FortuneTeller_PrepareNextMessage
#_0DC8DF: BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_purple_chest_bottle
#_0DC8E1: LDA.l $7EF3C9
#_0DC8E5: AND.b #$20
#_0DC8E7: BNE .rescued_smithy

#_0DC8E9: LDA.b #$0A
#_0DC8EB: JSR FortuneTeller_PrepareNextMessage
#_0DC8EE: BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.rescued_smithy
#_0DC8F0: LDA.l $7EF352
#_0DC8F4: BNE .have_cape

#_0DC8F6: LDA.b #$0B
#_0DC8F8: JSR FortuneTeller_PrepareNextMessage
#_0DC8FB: BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_cape
#_0DC8FD: LDA.l $7EF2DB
#_0DC901: AND.b #$02
#_0DC903: BNE .opened_fat_fairy

#_0DC905: LDA.b #$0C
#_0DC907: JSR FortuneTeller_PrepareNextMessage
#_0DC90A: BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.opened_fat_fairy
#_0DC90C: LDA.l $7EF359
#_0DC910: CMP.b #$04
#_0DC912: BCS .have_butter

#_0DC914: LDA.b #$0D
#_0DC916: JSR FortuneTeller_PrepareNextMessage
#_0DC919: BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

.have_butter
#_0DC91B: LDA.b #$0E
#_0DC91D: JSR FortuneTeller_PrepareNextMessage
#_0DC920: BCS FortuneTeller_DisplayMessage

;---------------------------------------------------------------------------------------------------

#_0DC922: LDA.b #$0F
#_0DC924: JSR FortuneTeller_PrepareNextMessage

;===================================================================================================

FortuneTeller_DisplayMessage:
#_0DC927: LDA.l $7EF3C6
#_0DC92B: EOR.b #$40
#_0DC92D: STA.l $7EF3C6

#_0DC931: AND.b #$40
#_0DC933: ROL A
#_0DC934: ROL A
#_0DC935: ROL A
#_0DC936: AND.b #$01
#_0DC938: TAY

#_0DC939: LDA.w $0000,Y
#_0DC93C: TAY

#_0DC93D: LDA.w FortuneTellerMessage_low,Y
#_0DC940: XBA

#_0DC941: LDA.w FortuneTellerMessage_high,Y
#_0DC944: TAY

#_0DC945: XBA
#_0DC946: JSL Sprite_ShowMessageUnconditional

#_0DC94A: RTS

;===================================================================================================

FortuneTeller_PrepareNextMessage:
#_0DC94B: LDY.b $03

#_0DC94D: STA.w $0000,Y

#_0DC950: INY
#_0DC951: CPY.b #$02
#_0DC953: BCS .exit

#_0DC955: STY.b $03

.exit
#_0DC957: RTS

;===================================================================================================

FortuneTeller_LightWorld_DemandPayment:
#_0DC958: STZ.w $0DC0,X

#_0DC95B: REP #$20

#_0DC95D: STZ.b $00
#_0DC95F: STZ.b $02
#_0DC961: STZ.b $04
#_0DC963: STZ.b $06

#_0DC965: LDY.w $0D90,X

#_0DC968: LDA.w FortuneTeller_Prices,Y
#_0DC96B: JMP.w FortuneTeller_DemandPayment

;===================================================================================================

FortuneTeller_LightWorld_TakeMoney:
#_0DC96E: LDY.w $0D90,X

#_0DC971: REP #$20

#_0DC973: LDA.l $7EF360
#_0DC977: SEC
#_0DC978: SBC.w FortuneTeller_Prices,Y
#_0DC97B: STA.l $7EF360

#_0DC97F: SEP #$30

#_0DC981: INC.w $0D80,X

#_0DC984: LDA.b #$A0
#_0DC986: STA.l $7EF372

#_0DC98A: STZ.w $02E4

;===================================================================================================

FortuneTeller_LightWorld_DoNothing:
#_0DC98D: RTS

;===================================================================================================

FortuneTeller_DarkWorld:
#_0DC98E: LDA.w $0D80,X
#_0DC991: JSL JumpTableLocal
#_0DC995: dw FortuneTeller_DarkWorld_PrecognizantResponse
#_0DC997: dw FortuneTeller_DarkWorld_Reject
#_0DC999: dw FortuneTeller_DarkWorld_OfferReading
#_0DC99B: dw FortuneTeller_DarkWorld_HandleResponse
#_0DC99D: dw FortuneTeller_PerformPseudoScience
#_0DC99F: dw FortuneTeller_DarkWorld_DemandPayment
#_0DC9A1: dw FortuneTeller_DarkWorld_TakeMoney
#_0DC9A3: dw FortuneTeller_DarkWorld_DoNothing

;===================================================================================================

FortuneTeller_DarkWorld_PrecognizantResponse:
#_0DC9A5: STZ.w $0DC0,X

#_0DC9A8: JSL GetRandomNumber
#_0DC9AC: AND.b #$03
#_0DC9AE: ASL A
#_0DC9AF: STA.w $0D90,X

#_0DC9B2: TAY

#_0DC9B3: REP #$20

#_0DC9B5: LDA.l $7EF360
#_0DC9B9: CMP.w FortuneTeller_Prices,Y

#_0DC9BC: SEP #$30
#_0DC9BE: BCS .too_poor

#_0DC9C0: INC.w $0D80,X

#_0DC9C3: RTS

.too_poor
#_0DC9C4: LDA.b #$02
#_0DC9C6: STA.w $0D80,X

#_0DC9C9: RTS

;===================================================================================================

FortuneTeller_DarkWorld_Reject:
; Message 00F0
#_0DC9CA: LDA.b #$F0
#_0DC9CC: LDY.b #$00
#_0DC9CE: JSL Sprite_ShowSolicitedMessage

#_0DC9D2: RTS

;===================================================================================================

FortuneTeller_DarkWorld_OfferReading:
; Message 00F1
#_0DC9D3: LDA.b #$F1
#_0DC9D5: LDY.b #$00
#_0DC9D7: JSL Sprite_ShowSolicitedMessage
#_0DC9DB: BCC .exit

#_0DC9DD: INC.w $0D80,X

#_0DC9E0: LDA.b #$FF
#_0DC9E2: STA.w $0DF0,X

#_0DC9E5: LDA.b #$01
#_0DC9E7: STA.w $02E4

.exit
#_0DC9EA: RTS

;===================================================================================================

FortuneTeller_DarkWorld_HandleResponse:
#_0DC9EB: LDA.w $1CE8
#_0DC9EE: BNE .rejected

#_0DC9F0: LDA.b $1A
#_0DC9F2: LSR A ; /16
#_0DC9F3: LSR A
#_0DC9F4: LSR A
#_0DC9F5: LSR A
#_0DC9F6: AND.b #$01
#_0DC9F8: STA.w $0DC0,X

#_0DC9FB: LDA.w $0DF0,X
#_0DC9FE: BNE .exit

#_0DCA00: INC.w $0D80,X

.exit
#_0DCA03: RTS

.rejected
#_0DCA04: LDA.b #$02
#_0DCA06: STA.w $0D80,X

#_0DCA09: STZ.w $02E4

#_0DCA0C: RTS

;===================================================================================================

FortuneTeller_DarkWorld_DemandPayment:
#_0DCA0D: REP #$20

#_0DCA0F: STZ.b $00
#_0DCA11: STZ.b $02
#_0DCA13: STZ.b $04
#_0DCA15: STZ.b $06

#_0DCA17: LDY.w $0D90,X

#_0DCA1A: LDA.w FortuneTeller_Prices,Y

;===================================================================================================

FortuneTeller_DemandPayment:

.count1E4
#_0DCA1D: CMP.w #10000
#_0DCA20: BCC .count1E3

#_0DCA22: SBC.w #10000
#_0DCA25: BRA .count1E4

;---------------------------------------------------------------------------------------------------

.count1E3
#_0DCA27: CMP.w #1000
#_0DCA2A: BCC .count1E2

#_0DCA2C: SBC.w #100 ; Yes, this is 100. It should be 1000.

#_0DCA2F: INC.b $06

#_0DCA31: BRA .count1E3

;---------------------------------------------------------------------------------------------------

.count1E2
#_0DCA33: CMP.w #100
#_0DCA36: BCC .count1E1

#_0DCA38: SBC.w #100

#_0DCA3B: INC.b $04

#_0DCA3D: BRA .count1E2

;---------------------------------------------------------------------------------------------------

.count1E1
#_0DCA3F: CMP.w #10
#_0DCA42: BCC .under10

#_0DCA44: SBC.w #10

#_0DCA47: INC.b $02

#_0DCA49: BRA .count1E1

;---------------------------------------------------------------------------------------------------

.under10

#_0DCA4B: STA.b $00

#_0DCA4D: SEP #$30

#_0DCA4F: LDA.b $00
#_0DCA51: ASL A
#_0DCA52: ASL A
#_0DCA53: ASL A
#_0DCA54: ASL A

#_0DCA55: ORA.b $02
#_0DCA57: STA.w $1CF2

#_0DCA5A: LDA.b $06
#_0DCA5C: ASL A
#_0DCA5D: ASL A
#_0DCA5E: ASL A
#_0DCA5F: ASL A

#_0DCA60: ORA.b $04
#_0DCA62: STA.w $1CF3

; Message 00F2
#_0DCA65: LDA.b #$F2
#_0DCA67: LDY.b #$00
#_0DCA69: JSL Sprite_ShowMessageUnconditional

#_0DCA6D: INC.w $0D80,X

#_0DCA70: RTS

;===================================================================================================

FortuneTeller_DarkWorld_TakeMoney:
#_0DCA71: LDY.w $0D90,X

#_0DCA74: REP #$20

#_0DCA76: LDA.l $7EF360
#_0DCA7A: SEC
#_0DCA7B: SBC.w FortuneTeller_Prices,Y
#_0DCA7E: STA.l $7EF360

#_0DCA82: SEP #$30

#_0DCA84: INC.w $0D80,X

#_0DCA87: LDA.b #$A0
#_0DCA89: STA.l $7EF372

#_0DCA8D: STZ.w $02E4

;===================================================================================================

FortuneTeller_DarkWorld_DoNothing:
#_0DCA90: RTS

;===================================================================================================

pool SpriteDraw_FortuneTeller

.oam_groups
; group00
#_0DCA91: dw   0, -48 : db $0C, $00, $00, $02
#_0DCA99: dw   0, -32 : db $2C, $00, $00, $00
#_0DCAA1: dw   8, -32 : db $2C, $40, $00, $00

; group01
#_0DCAA9: dw   0, -48 : db $0A, $00, $00, $02
#_0DCAB1: dw   0, -32 : db $2A, $00, $00, $00
#_0DCAB9: dw   8, -32 : db $2A, $40, $00, $00

; group02
#_0DCAC1: dw  -4, -40 : db $66, $00, $00, $02
#_0DCAC9: dw   4, -40 : db $66, $40, $00, $02
#_0DCAD1: dw  -4, -40 : db $66, $00, $00, $02

; group03
#_0DCAD9: dw  -4, -40 : db $68, $00, $00, $02
#_0DCAE1: dw   4, -40 : db $68, $40, $00, $02
#_0DCAE9: dw  -4, -40 : db $68, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_FortuneTeller:
#_0DCAF1: LDA.l $7EF3CA
#_0DCAF5: ASL A
#_0DCAF6: ROL A
#_0DCAF7: ROL A
#_0DCAF8: AND.b #$01
#_0DCAFA: STA.b $00

#_0DCAFC: ASL A
#_0DCAFD: ADC.b $00
#_0DCAFF: ADC.w $0DC0,X

#_0DCB02: ASL A
#_0DCB03: ADC.w $0DC0,X

#_0DCB06: ASL A
#_0DCB07: ASL A
#_0DCB08: ASL A

#_0DCB09: ADC.b #.oam_groups>>0
#_0DCB0B: STA.b $08

#_0DCB0D: LDA.b #.oam_groups>>8
#_0DCB0F: ADC.b #$00
#_0DCB11: STA.b $09

#_0DCB13: LDA.b #$03
#_0DCB15: JSL Sprite_DrawMultiple

#_0DCB19: RTS

;===================================================================================================

Smithy_SpawnDumbBarrierSprite:
#_0DCB1A: LDA.b #$31 ; SPRITE 31
#_0DCB1C: JSL Sprite_SpawnDynamically

#_0DCB20: LDA.b $00
#_0DCB22: STA.w $0D10,Y

#_0DCB25: LDA.b $01
#_0DCB27: STA.w $0D30,Y

#_0DCB2A: LDA.b $02
#_0DCB2C: STA.w $0D00,Y

#_0DCB2F: LDA.b $03
#_0DCB31: STA.w $0D20,Y

#_0DCB34: LDA.b #$01
#_0DCB36: STA.w $0E80,Y

#_0DCB39: LDA.b #$00
#_0DCB3B: STA.w $0F60,Y

#_0DCB3E: LDA.b #$01
#_0DCB40: STA.w $0BA0,Y

#_0DCB43: RTL

;===================================================================================================

Sprite_2F_RaceGameLady:
#_0DCB44: PHB
#_0DCB45: PHK
#_0DCB46: PLB

#_0DCB47: JSR .main

#_0DCB4A: PLB

#_0DCB4B: RTL

;---------------------------------------------------------------------------------------------------

.main
#_0DCB4C: JSL SpriteDraw_RaceGameLady

#_0DCB50: JSR Sprite_CheckIfActive_Bank0D

#_0DCB53: JSL Sprite_TrackBodyToHead
#_0DCB57: JSL Sprite_DirectionToFaceLink_long

#_0DCB5B: TYA
#_0DCB5C: EOR.b #$03
#_0DCB5E: STA.w $0EB0,X

#_0DCB61: LDA.w $0D80,X
#_0DCB64: JSL JumpTableLocal
#_0DCB68: dw RaceGameLady_Idle
#_0DCB6A: dw RaceGameLady_FireStarterPistol
#_0DCB6C: dw RaceGameLady_TimeRun

;===================================================================================================

RaceGameLady_Idle:
#_0DCB6E: LDA.w $0D10,X
#_0DCB71: CMP.b $22
#_0DCB73: BCS .cheater

; Message 00CA
#_0DCB75: LDA.b #$CA
#_0DCB77: LDY.b #$00
#_0DCB79: JSL Sprite_ShowMessageOnContact
#_0DCB7D: BCC .exit

#_0DCB7F: STA.w $0EB0,X
#_0DCB82: STA.w $0DE0,X

#_0DCB85: INC.w $0D80,X

#_0DCB88: LDA.b #$00
#_0DCB8A: STA.l $7FFE00
#_0DCB8E: STA.l $7FFE01
#_0DCB92: STA.l $7FFE02
#_0DCB96: STA.l $7FFE03

#_0DCB9A: STZ.w $0D90,X

#_0DCB9D: STZ.w $0ABF

.exit
#_0DCBA0: RTS

.cheater
; Message 00CE
#_0DCBA1: LDA.b #$CE
#_0DCBA3: LDY.b #$00
#_0DCBA5: JSL Sprite_ShowMessageOnContact

#_0DCBA9: RTS

;===================================================================================================

RaceGameLady_TimeRun:
#_0DCBAA: INC.w $0D90,X

#_0DCBAD: LDA.w $0D90,X
#_0DCBB0: CMP.b #$3F
#_0DCBB2: BNE .exit

#_0DCBB4: STZ.w $0D90,X

#_0DCBB7: REP #$20

#_0DCBB9: LDA.l $7FFE00
#_0DCBBD: INC A
#_0DCBBE: STA.l $7FFE00

#_0DCBC2: BNE .dont_increment_higher

#_0DCBC4: LDA.l $7FFE02
#_0DCBC8: INC A
#_0DCBC9: STA.l $7FFE02

.dont_increment_higher
#_0DCBCD: SEP #$30

.exit
#_0DCBCF: RTS

;===================================================================================================

RaceGameLady_FireStarterPistol:
#_0DCBD0: LDA.b #$07 ; SFX3.07
#_0DCBD2: JSL SpriteSFX_QueueSFX3WithPan

#_0DCBD6: INC.w $0D80,X

#_0DCBD9: RTS

;===================================================================================================

Sprite_30_RaceGameGuy:
#_0DCBDA: PHB
#_0DCBDB: PHK
#_0DCBDC: PLB

#_0DCBDD: JSR .main

#_0DCBE0: PLB

#_0DCBE1: RTL

;---------------------------------------------------------------------------------------------------

.main
#_0DCBE2: JSL SpriteDraw_YoungGameGuy
#_0DCBE6: JSR Sprite_CheckIfActive_Bank0D
#_0DCBE9: JSL Sprite_TrackBodyToHead

#_0DCBED: STZ.w $0EB0,X

#_0DCBF0: JSL Sprite_BehaveAsBarrier

#_0DCBF4: LDA.b $1A
#_0DCBF6: LSR A
#_0DCBF7: LSR A
#_0DCBF8: LSR A
#_0DCBF9: AND.b #$01
#_0DCBFB: STA.w $0DC0,X

#_0DCBFE: LDA.w $0ABF
#_0DCC01: BNE .disqualify_cheater

#_0DCC03: LDA.w $0D80,X
#_0DCC06: JSL JumpTableLocal
#_0DCC0A: dw RaceGameGuy_VerifyRun
#_0DCC0C: dw RaceGameGuy_MakeModDecision
#_0DCC0E: dw RaceGameGuy_RejectRun
#_0DCC10: dw RaceGameGuy_AcceptRun
#_0DCC12: dw RaceGameGuy_IdleInDiscord

;---------------------------------------------------------------------------------------------------

.disqualify_cheater
; Message 00CE
#_0DCC14: LDA.b #$CE
#_0DCC16: LDY.b #$00
#_0DCC18: JSL Sprite_ShowMessageOnContact

#_0DCC1C: RTS

;===================================================================================================

RaceGameGuy_VerifyRun:
#_0DCC1D: REP #$20

#_0DCC1F: LDA.l $7FFE00
#_0DCC23: STA.l $7FFE04

#_0DCC27: LDA.l $7FFE02
#_0DCC2B: STA.l $7FFE06

#_0DCC2F: STZ.b $00
#_0DCC31: STZ.b $02
#_0DCC33: STZ.b $04
#_0DCC35: STZ.b $06

#_0DCC37: LDA.l $7FFE04

;---------------------------------------------------------------------------------------------------

.count6E3
#_0DCC3B: CMP.w #6000
#_0DCC3E: BCC .count6E2

#_0DCC40: SBC.w #6000
#_0DCC43: BRA .count6E3

;---------------------------------------------------------------------------------------------------

.count6E2
#_0DCC45: CMP.w #600
#_0DCC48: BCC .count6E1

#_0DCC4A: SBC.w #600

#_0DCC4D: INC.b $06

#_0DCC4F: BRA .count6E2

;---------------------------------------------------------------------------------------------------

.count6E1
#_0DCC51: CMP.w #60
#_0DCC54: BCC .count1E1

#_0DCC56: SBC.w #60

#_0DCC59: INC.b $04

#_0DCC5B: BRA .count6E1

;---------------------------------------------------------------------------------------------------

.count1E1
#_0DCC5D: CMP.w #10
#_0DCC60: BCC .under10

#_0DCC62: SBC.w #10

#_0DCC65: INC.b $02

#_0DCC67: BRA .count1E1

;---------------------------------------------------------------------------------------------------

.under10
#_0DCC69: STA.b $00

#_0DCC6B: SEP #$30

#_0DCC6D: LDA.b $02
#_0DCC6F: ASL A
#_0DCC70: ASL A
#_0DCC71: ASL A
#_0DCC72: ASL A

#_0DCC73: ORA.b $00
#_0DCC75: STA.w $1CF2

#_0DCC78: LDA.b $06
#_0DCC7A: ASL A
#_0DCC7B: ASL A
#_0DCC7C: ASL A
#_0DCC7D: ASL A

#_0DCC7E: ORA.b $04
#_0DCC80: STA.w $1CF3

; Message 00C9
#_0DCC83: LDA.b #$C9
#_0DCC85: LDY.b #$00
#_0DCC87: JSL Sprite_ShowMessageOnContact
#_0DCC8B: BCC .exit

#_0DCC8D: STA.w $0DE0,X
#_0DCC90: STA.w $0EB0,X

#_0DCC93: INC.w $0D80,X

.exit
#_0DCC96: RTS

;===================================================================================================

RaceGameGuy_MakeModDecision:
#_0DCC97: INC.w $0D80,X

#_0DCC9A: TXY

#_0DCC9B: LDX.b $8A
#_0DCC9D: LDA.l $7EF280,X

#_0DCCA1: TYX

#_0DCCA2: AND.b #$40
#_0DCCA4: BEQ .prize_available

.prize_obtained
#_0DCCA6: INC.w $0D80,X
#_0DCCA9: INC.w $0D80,X

; Message 00CD
#_0DCCAC: LDA.b #$CD
#_0DCCAE: LDY.b #$00
#_0DCCB0: JSL Sprite_ShowMessageUnconditional

#_0DCCB4: RTS

;---------------------------------------------------------------------------------------------------

.prize_available
#_0DCCB5: LDA.l $7FFE05
#_0DCCB9: BNE .run_doesnt_belong_on_boards

#_0DCCBB: LDA.l $7FFE04
#_0DCCBF: CMP.b #$10
#_0DCCC1: BCS .run_doesnt_belong_on_boards

;---------------------------------------------------------------------------------------------------

.gg
#_0DCCC3: INC.w $0D80,X

; Message 00CB
#_0DCCC6: LDA.b #$CB
#_0DCCC8: LDY.b #$00
#_0DCCCA: JSL Sprite_ShowMessageUnconditional

#_0DCCCE: STA.w $0EB0,X
#_0DCCD1: STA.w $0DE0,X

#_0DCCD4: RTS

;---------------------------------------------------------------------------------------------------

.run_doesnt_belong_on_boards
; Message 00CC
#_0DCCD5: LDA.b #$CC
#_0DCCD7: LDY.b #$00
#_0DCCD9: JSL Sprite_ShowMessageUnconditional

#_0DCCDD: STA.w $0EB0,X
#_0DCCE0: STA.w $0DE0,X

#_0DCCE3: RTS

;===================================================================================================

RaceGameGuy_RejectRun:
; Message 00CC
#_0DCCE4: LDA.b #$CC
#_0DCCE6: LDY.b #$00
#_0DCCE8: JSL Sprite_ShowMessageOnContact
#_0DCCEC: BCC .exit

#_0DCCEE: STA.w $0EB0,X
#_0DCCF1: STA.w $0DE0,X

.exit
#_0DCCF4: RTS

;===================================================================================================

RaceGameGuy_AcceptRun:
; Message 00CB
#_0DCCF5: LDA.b #$CB
#_0DCCF7: LDY.b #$00
#_0DCCF9: JSL Sprite_ShowSolicitedMessage
#_0DCCFD: BCC .exit

#_0DCCFF: STA.w $0EB0,X
#_0DCD02: STA.w $0DE0,X

.exit
#_0DCD05: RTS

;===================================================================================================

RaceGameGuy_IdleInDiscord:
; Message 00CD
#_0DCD06: LDA.b #$CD
#_0DCD08: LDY.b #$00
#_0DCD0A: JSL Sprite_ShowSolicitedMessage
#_0DCD0E: BCC .exit

#_0DCD10: STA.w $0EB0,X
#_0DCD13: STA.w $0DE0,X

.exit
#_0DCD16: RTS

;===================================================================================================

pool SpriteDraw_YoungGameGuy

.oam_groups
; group00
#_0DCD17: dw   0, -10 : db $00, $00, $00, $02
#_0DCD1F: dw   0,   0 : db $20, $00, $00, $02

; group01
#_0DCD27: dw   0, -10 : db $00, $00, $00, $02
#_0DCD2F: dw   0,   0 : db $20, $00, $00, $02

; group02
#_0DCD37: dw   0, -10 : db $00, $00, $00, $02
#_0DCD3F: dw   0,   0 : db $20, $00, $00, $02

; group03
#_0DCD47: dw   0, -10 : db $00, $00, $00, $02
#_0DCD4F: dw   0,   0 : db $20, $00, $00, $02

; group04
#_0DCD57: dw   0, -10 : db $02, $40, $00, $02
#_0DCD5F: dw   0,   0 : db $20, $00, $00, $02

; group05
#_0DCD67: dw   0, -10 : db $02, $40, $00, $02
#_0DCD6F: dw   0,   0 : db $20, $00, $00, $02

; group06
#_0DCD77: dw   0, -10 : db $02, $00, $00, $02
#_0DCD7F: dw   0,   0 : db $20, $00, $00, $02

; group07
#_0DCD87: dw   0, -10 : db $02, $00, $00, $02
#_0DCD8F: dw   0,   0 : db $20, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_YoungGameGuy:
#_0DCD97: PHB
#_0DCD98: PHK
#_0DCD99: PLB

#_0DCD9A: LDA.b #$02
#_0DCD9C: STA.b $06
#_0DCD9E: STZ.b $07

#_0DCDA0: LDA.w $0DE0,X
#_0DCDA3: ASL A
#_0DCDA4: ADC.w $0DC0,X

#_0DCDA7: ASL A
#_0DCDA8: ASL A
#_0DCDA9: ASL A
#_0DCDAA: ASL A

#_0DCDAB: ADC.b #.oam_groups>>0
#_0DCDAD: STA.b $08

#_0DCDAF: LDA.b #.oam_groups>>8
#_0DCDB1: ADC.b #$00
#_0DCDB3: STA.b $09

#_0DCDB5: JSL Sprite_DrawMultiple_player_deferred
#_0DCDB9: JSL SpriteDraw_Shadow_long

#_0DCDBD: PLB

#_0DCDBE: RTL

;===================================================================================================

pool SpriteDraw_Maiden

.oam_groups
; group00
#_0DCDBF: dw   1,  -7 : db $20, $01, $00, $02
#_0DCDC7: dw   1,   3 : db $22, $01, $00, $02

; group01
#_0DCDCF: dw   1,  -7 : db $20, $01, $00, $02
#_0DCDD7: dw   1,   3 : db $22, $41, $00, $02

; group02
#_0DCDDF: dw   1,  -7 : db $20, $01, $00, $02
#_0DCDE7: dw   1,   3 : db $22, $01, $00, $02

; group03
#_0DCDEF: dw   1,  -7 : db $20, $01, $00, $02
#_0DCDF7: dw   1,   3 : db $22, $41, $00, $02

; group04
#_0DCDFF: dw   1,  -7 : db $20, $01, $00, $02
#_0DCE07: dw   1,   3 : db $22, $01, $00, $02

; group05
#_0DCE0F: dw   1,  -7 : db $20, $01, $00, $02
#_0DCE17: dw   1,   3 : db $22, $01, $00, $02

; group06
#_0DCE1F: dw   1,  -7 : db $20, $41, $00, $02
#_0DCE27: dw   1,   3 : db $22, $41, $00, $02

; group07
#_0DCE2F: dw   1,  -7 : db $20, $41, $00, $02
#_0DCE37: dw   1,   3 : db $22, $41, $00, $02

;---------------------------------------------------------------------------------------------------

.gfx_offset
#_0DCE3F: db $20, $C0
#_0DCE41: db $20, $C0
#_0DCE43: db $00, $A0
#_0DCE45: db $00, $A0
#_0DCE47: db $40, $80
#_0DCE49: db $40, $60
#_0DCE4B: db $40, $80
#_0DCE4D: db $40, $60

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Maiden:
#_0DCE4F: PHB
#_0DCE50: PHK
#_0DCE51: PLB

#_0DCE52: LDA.b #$02
#_0DCE54: STA.b $06
#_0DCE56: STZ.b $07

#_0DCE58: LDA.w $0DE0,X
#_0DCE5B: ASL A
#_0DCE5C: ADC.w $0DC0,X
#_0DCE5F: ASL A
#_0DCE60: TAY

#_0DCE61: LDA.w .gfx_offset+0,Y
#_0DCE64: STA.w $0AE8

#_0DCE67: LDA.w .gfx_offset+1,Y
#_0DCE6A: STA.w $0AEA

#_0DCE6D: TYA
#_0DCE6E: ASL A
#_0DCE6F: ASL A
#_0DCE70: ASL A

#_0DCE71: ADC.b #.oam_groups>>0
#_0DCE73: STA.b $08

#_0DCE75: LDA.b #.oam_groups>>8
#_0DCE77: ADC.b #$00
#_0DCE79: STA.b $09

#_0DCE7B: JSL Sprite_DrawMultiple_player_deferred

#_0DCE7F: PLB

#_0DCE80: RTL

;===================================================================================================

pool SpriteDraw_Priest

.oam_groups
; group00
#_0DCE81: dw   0,  -8 : db $20, $0E, $00, $02
#_0DCE89: dw   0,   0 : db $26, $0E, $00, $02

; group01
#_0DCE91: dw   0,  -8 : db $20, $0E, $00, $02
#_0DCE99: dw   0,   0 : db $26, $4E, $00, $02

; group02
#_0DCEA1: dw   0,  -8 : db $0E, $0E, $00, $02
#_0DCEA9: dw   0,   0 : db $24, $0E, $00, $02

; group03
#_0DCEB1: dw   0,  -8 : db $0E, $0E, $00, $02
#_0DCEB9: dw   0,   0 : db $24, $0E, $00, $02

; group04
#_0DCEC1: dw   0,  -8 : db $22, $0E, $00, $02
#_0DCEC9: dw   0,   0 : db $28, $0E, $00, $02

; group05
#_0DCED1: dw   0,  -8 : db $22, $0E, $00, $02
#_0DCED9: dw   0,   0 : db $2A, $0E, $00, $02

; group06
#_0DCEE1: dw   0,  -8 : db $22, $4E, $00, $02
#_0DCEE9: dw   0,   0 : db $28, $4E, $00, $02

; group07
#_0DCEF1: dw   0,  -8 : db $22, $4E, $00, $02
#_0DCEF9: dw   0,   0 : db $2A, $4E, $00, $02

; group08
#_0DCF01: dw  -7,   1 : db $0A, $0E, $00, $02
#_0DCF09: dw   3,   3 : db $0C, $0E, $00, $02

; group09
#_0DCF11: dw  -7,   1 : db $0A, $0E, $00, $02
#_0DCF19: dw   3,   3 : db $0C, $0E, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Priest:
#_0DCF21: PHB
#_0DCF22: PHK
#_0DCF23: PLB

#_0DCF24: LDA.w $0DE0,X
#_0DCF27: ASL A
#_0DCF28: ADC.w $0DC0,X

#_0DCF2B: ASL A
#_0DCF2C: ASL A
#_0DCF2D: ASL A
#_0DCF2E: ASL A

#_0DCF2F: ADC.b #.oam_groups>>0
#_0DCF31: STA.b $08

#_0DCF33: LDA.b #$00
#_0DCF35: ADC.b #.oam_groups>>8
#_0DCF37: STA.b $09

#_0DCF39: LDA.b #$02
#_0DCF3B: STA.b $06
#_0DCF3D: STZ.b $07

#_0DCF3F: JSL Sprite_DrawMultiple_player_deferred
#_0DCF43: JSL SpriteDraw_Shadow_long

#_0DCF47: PLB

#_0DCF48: RTL

;===================================================================================================

pool SpriteDraw_FluteKid

.oam_groups
; group00
#_0DCF49: dw  -1,  -1 : db $BE, $0A, $00, $00
#_0DCF51: dw   0,   0 : db $AA, $0A, $00, $02
#_0DCF59: dw   0, -10 : db $A8, $0A, $00, $02
#_0DCF61: dw   0,   0 : db $AA, $0A, $00, $02

; group01
#_0DCF69: dw  -1,  -1 : db $BE, $0A, $00, $00
#_0DCF71: dw   0,   8 : db $BF, $0A, $00, $00
#_0DCF79: dw   0, -10 : db $A8, $0A, $00, $02
#_0DCF81: dw   0,   0 : db $AA, $0A, $00, $02

; group02
#_0DCF89: dw  -1,  -1 : db $BE, $0A, $00, $00
#_0DCF91: dw   0,   0 : db $AA, $0A, $00, $02
#_0DCF99: dw   0, -10 : db $A8, $0A, $00, $02
#_0DCFA1: dw   0,   0 : db $AA, $0A, $00, $02

; group03
#_0DCFA9: dw  -1,  -1 : db $BE, $0A, $00, $00
#_0DCFB1: dw   0,   8 : db $BF, $0A, $00, $00
#_0DCFB9: dw   0, -10 : db $A8, $0A, $00, $02
#_0DCFC1: dw   0,   0 : db $AA, $0A, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_FluteKid:
#_0DCFC9: PHB
#_0DCFCA: PHK
#_0DCFCB: PLB

#_0DCFCC: LDA.b #$10
#_0DCFCE: JSL OAM_AllocateFromRegionB

#_0DCFD2: LDA.w $0DE0,X
#_0DCFD5: ASL A
#_0DCFD6: ADC.w $0DC0,X

#_0DCFD9: ASL A
#_0DCFDA: ASL A
#_0DCFDB: ASL A
#_0DCFDC: ASL A
#_0DCFDD: ASL A

#_0DCFDE: ADC.b #.oam_groups>>0
#_0DCFE0: STA.b $08

#_0DCFE2: LDA.b #.oam_groups>>8
#_0DCFE4: ADC.b #$00
#_0DCFE6: STA.b $09

#_0DCFE8: LDA.b #$04
#_0DCFEA: JSL Sprite_DrawMultiple

#_0DCFEE: PLB

#_0DCFEF: RTL

;===================================================================================================

pool SpriteDraw_Stumpy

.oam_groups
; group00
#_0DCFF0: dw   0, -16 : db $E6, $06, $00, $02
#_0DCFF8: dw   0,  -8 : db $C8, $06, $00, $02

; group01
#_0DD000: dw   0, -16 : db $E6, $06, $00, $02
#_0DD008: dw   0,  -8 : db $CA, $06, $00, $02

; group02
#_0DD010: dw   0, -16 : db $E8, $06, $00, $02
#_0DD018: dw   0,  -8 : db $CA, $06, $00, $02

; group03
#_0DD020: dw   0, -16 : db $CC, $00, $00, $02
#_0DD028: dw   0,  -8 : db $DC, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Stumpy:
#_0DD030: PHB
#_0DD031: PHK
#_0DD032: PLB

#_0DD033: LDA.b #$02
#_0DD035: STA.b $06
#_0DD037: STZ.b $07

#_0DD039: LDA.w $0DC0,X
#_0DD03C: ASL A
#_0DD03D: ASL A
#_0DD03E: ASL A
#_0DD03F: ASL A

#_0DD040: ADC.b #.oam_groups>>0
#_0DD042: STA.b $08

#_0DD044: LDA.b #.oam_groups>>8
#_0DD046: ADC.b #$00
#_0DD048: STA.b $09

#_0DD04A: JSL Sprite_DrawMultiple_player_deferred

#_0DD04E: PLB

#_0DD04F: RTL

;===================================================================================================

pool SpriteDraw_MedallionTabletDebris

.oam_groups
; group00
#_0DD050: dw   0,  -3 : db $8B, $00, $00, $00
#_0DD058: dw   3,   0 : db $9B, $00, $00, $00
#_0DD060: dw  -3,   0 : db $8B, $C0, $00, $00
#_0DD068: dw   0,   3 : db $9B, $C0, $00, $00

; group01
#_0DD070: dw   0,  -5 : db $8A, $00, $00, $02
#_0DD078: dw   5,   0 : db $8A, $00, $00, $02
#_0DD080: dw  -5,   0 : db $8A, $00, $00, $02
#_0DD088: dw   0,   5 : db $8A, $00, $00, $02

; group02
#_0DD090: dw   0,  -7 : db $86, $00, $00, $02
#_0DD098: dw   7,   0 : db $86, $00, $00, $02
#_0DD0A0: dw  -7,   0 : db $86, $00, $00, $02
#_0DD0A8: dw   0,   7 : db $86, $00, $00, $02

; group03
#_0DD0B0: dw   0,  -9 : db $86, $80, $00, $02
#_0DD0B8: dw   9,   0 : db $86, $80, $00, $02
#_0DD0C0: dw  -9,   0 : db $86, $80, $00, $02
#_0DD0C8: dw   0,   9 : db $86, $80, $00, $02

; group04
#_0DD0D0: dw   0,  -9 : db $86, $C0, $00, $02
#_0DD0D8: dw   9,   0 : db $86, $C0, $00, $02
#_0DD0E0: dw  -9,   0 : db $86, $C0, $00, $02
#_0DD0E8: dw   0,   9 : db $86, $C0, $00, $02

; group05
#_0DD0F0: dw   0,  -7 : db $86, $40, $00, $02
#_0DD0F8: dw   7,   0 : db $86, $40, $00, $02
#_0DD100: dw  -7,   0 : db $86, $40, $00, $02
#_0DD108: dw   0,   7 : db $86, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_MedallionTabletDebris:
#_0DD110: PHB
#_0DD111: PHK
#_0DD112: PLB

#_0DD113: LDA.b #$14
#_0DD115: STA.w $0F50,X

#_0DD118: LDA.w $0DC0,X
#_0DD11B: ASL A
#_0DD11C: ASL A
#_0DD11D: ASL A
#_0DD11E: ASL A
#_0DD11F: ASL A

#_0DD120: ADC.b #.oam_groups>>0
#_0DD122: STA.b $08

#_0DD124: LDA.b #.oam_groups>>8
#_0DD126: ADC.b #$00
#_0DD128: STA.b $09

#_0DD12A: LDA.b #$04
#_0DD12C: JSL Sprite_DrawMultiple

#_0DD130: PLB

#_0DD131: RTL

;===================================================================================================

pool SpriteDraw_MedallionTablet

.oam_groups
; group00
#_0DD132: dw  -8, -16 : db $8C, $00, $00, $02
#_0DD13A: dw   8, -16 : db $8C, $40, $00, $02
#_0DD142: dw  -8,   0 : db $AC, $00, $00, $02
#_0DD14A: dw   8,   0 : db $AC, $40, $00, $02

; group01
#_0DD152: dw  -8, -13 : db $8A, $00, $00, $02
#_0DD15A: dw   8, -13 : db $8A, $40, $00, $02
#_0DD162: dw  -8,   0 : db $AC, $00, $00, $02
#_0DD16A: dw   8,   0 : db $AC, $40, $00, $02

; group02
#_0DD172: dw  -8,  -8 : db $8A, $00, $00, $02
#_0DD17A: dw   8,  -8 : db $8A, $40, $00, $02
#_0DD182: dw  -8,   0 : db $AC, $00, $00, $02
#_0DD18A: dw   8,   0 : db $AC, $40, $00, $02

; group03
#_0DD192: dw  -8,  -4 : db $8A, $00, $00, $02
#_0DD19A: dw   8,  -4 : db $8A, $40, $00, $02
#_0DD1A2: dw  -8,   0 : db $AA, $00, $00, $02
#_0DD1AA: dw   8,   0 : db $AA, $40, $00, $02

; group04
#_0DD1B2: dw  -8,   0 : db $AA, $00, $00, $02
#_0DD1BA: dw   8,   0 : db $AA, $40, $00, $02
#_0DD1C2: dw  -8,   0 : db $AA, $00, $00, $02
#_0DD1CA: dw   8,   0 : db $AA, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_MedallionTablet:
#_0DD1D2: PHB
#_0DD1D3: PHK
#_0DD1D4: PLB

#_0DD1D5: LDA.w $0DC0,X
#_0DD1D8: ASL A
#_0DD1D9: ASL A
#_0DD1DA: ASL A
#_0DD1DB: ASL A
#_0DD1DC: ASL A

#_0DD1DD: ADC.b #.oam_groups>>0
#_0DD1DF: STA.b $08

#_0DD1E1: LDA.b #.oam_groups>>8
#_0DD1E3: ADC.b #$00
#_0DD1E5: STA.b $09

#_0DD1E7: LDA.b #$04
#_0DD1E9: STA.b $06
#_0DD1EB: STZ.b $07

#_0DD1ED: JSL Sprite_DrawMultiple_player_deferred

#_0DD1F1: PLB

#_0DD1F2: RTL

;===================================================================================================

pool SpriteDraw_Uncle

.oam_groups
; group00
#_0DD1F3: dw   0, -10 : db $00, $0E, $00, $02
#_0DD1FB: dw   0,   0 : db $06, $0C, $00, $02
#_0DD203: dw   0, -10 : db $00, $0E, $00, $02
#_0DD20B: dw   0,   0 : db $06, $0C, $00, $02
#_0DD213: dw   0, -10 : db $00, $0E, $00, $02
#_0DD21B: dw   0,   0 : db $06, $0C, $00, $02

; group01
#_0DD223: dw   0, -10 : db $02, $0E, $00, $02
#_0DD22B: dw   0,   0 : db $06, $0C, $00, $02
#_0DD233: dw   0, -10 : db $02, $0E, $00, $02
#_0DD23B: dw   0,   0 : db $06, $0C, $00, $02
#_0DD243: dw   0, -10 : db $02, $0E, $00, $02
#_0DD24B: dw   0,   0 : db $06, $0C, $00, $02

; group02
#_0DD253: dw  -7,   2 : db $07, $0D, $00, $02
#_0DD25B: dw  -7,   2 : db $07, $0D, $00, $02
#_0DD263: dw  10,  12 : db $05, $8D, $00, $00
#_0DD26B: dw  10,   4 : db $15, $8D, $00, $00
#_0DD273: dw   0, -10 : db $00, $0E, $00, $02
#_0DD27B: dw   0,   0 : db $04, $0C, $00, $02

; group03
#_0DD283: dw  -7,   1 : db $07, $0D, $00, $02
#_0DD28B: dw  -7,   1 : db $07, $0D, $00, $02
#_0DD293: dw  10,  13 : db $05, $8D, $00, $00
#_0DD29B: dw  10,   5 : db $15, $8D, $00, $00
#_0DD2A3: dw   0,  -9 : db $00, $0E, $00, $02
#_0DD2AB: dw   0,   1 : db $04, $4C, $00, $02

; group04
#_0DD2B3: dw  -7,   8 : db $05, $8D, $00, $00
#_0DD2BB: dw   1,   8 : db $06, $8D, $00, $00
#_0DD2C3: dw   0, -10 : db $02, $0E, $00, $02
#_0DD2CB: dw  -6,  -1 : db $07, $4D, $00, $02
#_0DD2D3: dw   0,   0 : db $23, $0C, $00, $02
#_0DD2DB: dw   0,   0 : db $23, $0C, $00, $02

; group05
#_0DD2E3: dw  -9,   7 : db $05, $8D, $00, $00
#_0DD2EB: dw  -1,   7 : db $06, $8D, $00, $00
#_0DD2F3: dw   0,  -9 : db $02, $0E, $00, $02
#_0DD2FB: dw  -6,   0 : db $07, $4D, $00, $02
#_0DD303: dw   0,   1 : db $25, $0C, $00, $02
#_0DD30B: dw   0,   1 : db $25, $0C, $00, $02

; group06
#_0DD313: dw -10, -17 : db $07, $0D, $00, $02
#_0DD31B: dw  15, -12 : db $15, $8D, $00, $00
#_0DD323: dw  15,  -4 : db $05, $8D, $00, $00
#_0DD32B: dw   0, -28 : db $08, $0E, $00, $02
#_0DD333: dw  -8, -19 : db $20, $0C, $00, $02
#_0DD33B: dw   8, -19 : db $20, $4C, $00, $02

; group07
#_0DD343: dw   0, -28 : db $08, $0E, $00, $02
#_0DD34B: dw   0, -28 : db $08, $0E, $00, $02
#_0DD353: dw  -8, -19 : db $20, $0C, $00, $02
#_0DD35B: dw   8, -19 : db $20, $4C, $00, $02
#_0DD363: dw  -8, -19 : db $20, $0C, $00, $02
#_0DD36B: dw   8, -19 : db $20, $4C, $00, $02

;---------------------------------------------------------------------------------------------------

.source_1
#_0DD373: db $08
#_0DD374: db $08
#_0DD375: db $00
#_0DD376: db $00
#_0DD377: db $06
#_0DD378: db $06
#_0DD379: db $00

;---------------------------------------------------------------------------------------------------

.source_2
#_0DD37A: db $00
#_0DD37B: db $00
#_0DD37C: db $00
#_0DD37D: db $00
#_0DD37E: db $04
#_0DD37F: db $04
#_0DD380: db $00

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Uncle:
#_0DD381: PHB
#_0DD382: PHK
#_0DD383: PLB

#_0DD384: LDA.b #$18
#_0DD386: JSL OAM_AllocateFromRegionB

#_0DD38A: REP #$20

#_0DD38C: LDA.w $0DC0,X
#_0DD38F: AND.w #$00FF
#_0DD392: STA.b $00

#_0DD394: LDA.w $0DE0,X
#_0DD397: AND.w #$00FF
#_0DD39A: STA.b $02

#_0DD39C: ASL A
#_0DD39D: ADC.b $02
#_0DD39F: ADC.b $00

#_0DD3A1: ASL A
#_0DD3A2: ADC.b $00

#_0DD3A4: ASL A
#_0DD3A5: ASL A
#_0DD3A6: ASL A
#_0DD3A7: ASL A

#_0DD3A8: ADC.w #.oam_groups
#_0DD3AB: STA.b $08

#_0DD3AD: LDA.w #$0006
#_0DD3B0: STA.b $06

#_0DD3B2: SEP #$30

#_0DD3B4: LDA.w $0DE0,X
#_0DD3B7: ASL A
#_0DD3B8: ADC.w $0DC0,X
#_0DD3BB: TAY

#_0DD3BC: LDA.w .source_1,Y
#_0DD3BF: STA.w $0107

#_0DD3C2: LDA.w .source_2,Y
#_0DD3C5: STA.w $0108

#_0DD3C8: JSL Sprite_DrawMultiple_preset_quantity

#_0DD3CC: LDA.w $0DE0,X
#_0DD3CF: BEQ .no_shadow

#_0DD3D1: CMP.b #$03
#_0DD3D3: BEQ .no_shadow

#_0DD3D5: JSL SpriteDraw_Shadow_long

.no_shadow
#_0DD3D9: PLB

#_0DD3DA: RTL

;===================================================================================================

pool SpriteDraw_SickKid

.oam_groups
; group00
#_0DD3DB: dw   4,   0 : db $27, $00, $00, $00
#_0DD3E3: dw   0,  -5 : db $0E, $00, $00, $02
#_0DD3EB: dw  -8,   6 : db $0A, $04, $00, $02
#_0DD3F3: dw   8,   6 : db $0A, $44, $00, $02
#_0DD3FB: dw  -8,  14 : db $0A, $84, $00, $02
#_0DD403: dw   8,  14 : db $0A, $C4, $00, $02

; group01
#_0DD40B: dw   0,  -5 : db $0E, $00, $00, $02
#_0DD413: dw   0,  -5 : db $0E, $00, $00, $02
#_0DD41B: dw  -8,   6 : db $0A, $04, $00, $02
#_0DD423: dw   8,   6 : db $0A, $44, $00, $02
#_0DD42B: dw  -8,  14 : db $0A, $84, $00, $02
#_0DD433: dw   8,  14 : db $0A, $C4, $00, $02

; group02
#_0DD43B: dw   0,  -5 : db $2E, $00, $00, $02
#_0DD443: dw   0,  -5 : db $2E, $00, $00, $02
#_0DD44B: dw  -8,   7 : db $0A, $04, $00, $02
#_0DD453: dw   8,   7 : db $0A, $44, $00, $02
#_0DD45B: dw  -8,  14 : db $0A, $84, $00, $02
#_0DD463: dw   8,  14 : db $0A, $C4, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_SickKid:
#_0DD46B: PHB
#_0DD46C: PHK
#_0DD46D: PLB

#_0DD46E: LDA.b #$06
#_0DD470: STA.b $06
#_0DD472: STZ.b $07

#_0DD474: LDA.w $0DC0,X
#_0DD477: ASL A
#_0DD478: ADC.w $0DC0,X

#_0DD47B: ASL A
#_0DD47C: ASL A
#_0DD47D: ASL A
#_0DD47E: ASL A

#_0DD47F: ADC.b #.oam_groups>>0
#_0DD481: STA.b $08

#_0DD483: LDA.b #.oam_groups>>8
#_0DD485: ADC.b #$00
#_0DD487: STA.b $09

#_0DD489: JSL Sprite_DrawMultiple_player_deferred

#_0DD48D: PLB

#_0DD48E: RTL

;===================================================================================================

Sprite_CheckIfActive_Bank0D:
#_0DD48F: LDA.w $0DD0,X
#_0DD492: CMP.b #$09
#_0DD494: BNE .inactive

#_0DD496: LDA.w $0FC1
#_0DD499: BNE .inactive

#_0DD49B: LDA.b $11
#_0DD49D: BNE .inactive

#_0DD49F: LDA.w $0CAA,X
#_0DD4A2: BMI .active

#_0DD4A4: LDA.w $0F00,X
#_0DD4A7: BEQ .active

.inactive
#_0DD4A9: PLA
#_0DD4AA: PLA

.active
#_0DD4AB: RTS

;===================================================================================================

pool SpriteDraw_Zirro

.oam_groups
; group00
#_0DD4AC: dw   0,   0 : db $C6, $40, $00, $02
#_0DD4B4: dw   0,   0 : db $C6, $40, $00, $02

; group01
#_0DD4BC: dw   0,   0 : db $C4, $40, $00, $02
#_0DD4C4: dw   0,   0 : db $C4, $40, $00, $02

; group02
#_0DD4CC: dw   0,   0 : db $C6, $00, $00, $02
#_0DD4D4: dw   0,   0 : db $C6, $00, $00, $02

; group03
#_0DD4DC: dw   0,   0 : db $C4, $00, $00, $02
#_0DD4E4: dw   0,   0 : db $C4, $00, $00, $02

; group04
#_0DD4EC: dw  -8,   0 : db $C0, $00, $00, $02
#_0DD4F4: dw   8,   0 : db $C0, $40, $00, $02

; group05
#_0DD4FC: dw  -8,   0 : db $C2, $00, $00, $02
#_0DD504: dw   8,   0 : db $C2, $40, $00, $02

; group06
#_0DD50C: dw  -8,   0 : db $E0, $00, $00, $02
#_0DD514: dw   8,   0 : db $E0, $40, $00, $02

; group07
#_0DD51C: dw  -8,   0 : db $E2, $00, $00, $02
#_0DD524: dw   8,   0 : db $E2, $40, $00, $02

; group08
#_0DD52C: dw  -8,   0 : db $E4, $00, $00, $02
#_0DD534: dw   8,   0 : db $E4, $40, $00, $02

; group09
#_0DD53C: dw   0,   0 : db $E6, $40, $00, $02
#_0DD544: dw   0,   0 : db $E6, $40, $00, $02

; group0A
#_0DD54C: dw   0,   0 : db $E6, $00, $00, $02
#_0DD554: dw   0,   0 : db $E6, $00, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Zirro:
#_0DD55C: PHB
#_0DD55D: PHK
#_0DD55E: PLB

#_0DD55F: LDA.b #$00
#_0DD561: XBA
#_0DD562: LDA.w $0DC0,X

#_0DD565: REP #$20

#_0DD567: ASL A
#_0DD568: ASL A
#_0DD569: ASL A
#_0DD56A: ASL A

#_0DD56B: ADC.w #.oam_groups
#_0DD56E: STA.b $08

#_0DD570: SEP #$20

#_0DD572: LDA.b #$02
#_0DD574: JSL Sprite_DrawMultiple

#_0DD578: JSL SpriteDraw_Shadow_long

#_0DD57C: PLB

#_0DD57D: RTL

;===================================================================================================

pool SpriteDraw_ZirroBomb

.oam_groups
; group00
#_0DD57E: dw -11,   0 : db $9B, $01, $00, $00
#_0DD586: dw   0,  -8 : db $9B, $C1, $00, $00
#_0DD58E: dw   6,   6 : db $9B, $41, $00, $00

; group01
#_0DD596: dw -15,  -6 : db $8A, $01, $00, $02
#_0DD59E: dw  -4, -14 : db $8A, $01, $00, $02
#_0DD5A6: dw   2,   0 : db $8A, $01, $00, $02

; group02
#_0DD5AE: dw -15,  -6 : db $86, $01, $00, $02
#_0DD5B6: dw  -4, -14 : db $86, $01, $00, $02
#_0DD5BE: dw   2,   0 : db $86, $01, $00, $02

; group03
#_0DD5C6: dw  -4,  -4 : db $86, $01, $00, $02
#_0DD5CE: dw  -4,  -4 : db $86, $01, $00, $02
#_0DD5D6: dw  -4,  -4 : db $86, $01, $00, $02

; group04
#_0DD5DE: dw  -4,  -4 : db $AA, $01, $00, $02
#_0DD5E6: dw  -4,  -4 : db $AA, $01, $00, $02
#_0DD5EE: dw  -4,  -4 : db $AA, $01, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_ZirroBomb:
#_0DD5F6: PHB
#_0DD5F7: PHK
#_0DD5F8: PLB

#_0DD5F9: LDA.w $0DF0,X
#_0DD5FC: BNE .dont_delete_self

#_0DD5FE: STZ.w $0DD0,X

.dont_delete_self
#_0DD601: LSR A
#_0DD602: LSR A
#_0DD603: PHA

#_0DD604: LDA.b #$00
#_0DD606: XBA

#_0DD607: PLA

#_0DD608: REP #$20

#_0DD60A: ASL A
#_0DD60B: ASL A
#_0DD60C: ASL A
#_0DD60D: STA.b $00

#_0DD60F: ASL A
#_0DD610: ADC.b $00
#_0DD612: ADC.w #.oam_groups
#_0DD615: STA.b $08

#_0DD617: SEP #$20

#_0DD619: LDA.b #$03
#_0DD61B: JSL Sprite_DrawMultiple

#_0DD61F: PLB

#_0DD620: RTL

;===================================================================================================

PlayerBee_HoneInOnTarget:
#_0DD621: LDA.w $0E20,Y
#_0DD624: CMP.b #$88 ; SPRITE 88
#_0DD626: BEQ .attack_mothula

; ignore other bosses
#_0DD628: LDA.w $0B6B,Y
#_0DD62B: AND.b #$02
#_0DD62D: BNE .exit

.attack_mothula
#_0DD62F: LDA.w $0D10,Y
#_0DD632: STA.b $00

#_0DD634: LDA.w $0D30,Y
#_0DD637: STA.b $01

#_0DD639: LDA.w $0D00,Y
#_0DD63C: STA.b $02

#_0DD63E: LDA.w $0D20,Y
#_0DD641: STA.b $03

#_0DD643: REP #$20

#_0DD645: LDA.w $0FD8
#_0DD648: SEC
#_0DD649: SBC.b $00
#_0DD64B: CLC
#_0DD64C: ADC.w #$0010

#_0DD64F: CMP.w #$0018
#_0DD652: BCS .exit

#_0DD654: LDA.w $0FDA
#_0DD657: SEC
#_0DD658: SBC.b $02
#_0DD65A: CLC
#_0DD65B: ADC.w #$FFF8

#_0DD65E: CMP.w #$0018
#_0DD661: BCS .exit

#_0DD663: SEP #$20

#_0DD665: LDA.w $0E20,Y

#_0DD668: CMP.b #$75 ; SPRITE 75
#_0DD66A: BNE .not_bottle_vendor

#_0DD66C: TXA
#_0DD66D: INC A
#_0DD66E: STA.w $0E90,Y

#_0DD671: RTL

;---------------------------------------------------------------------------------------------------

.not_bottle_vendor
#_0DD672: LDA.b #$01

#_0DD674: PHY
#_0DD675: PHX

#_0DD676: TYX

#_0DD677: JSL Ancilla_CheckDamageToSprite_preset

#_0DD67B: PLX
#_0DD67C: PLY

#_0DD67D: LDA.b #$0F
#_0DD67F: STA.w $0EA0,Y

#_0DD682: LDA.w $0D50,X
#_0DD685: ASL A
#_0DD686: STA.w $0F40,Y

#_0DD689: LDA.w $0D40,X
#_0DD68C: ASL A
#_0DD68D: STA.w $0F30,Y

#_0DD690: INC.w $0DA0,X

.exit
#_0DD693: SEP #$20

#_0DD695: RTL

;===================================================================================================

pool SpriteDraw_Pikit

.oam_groups
; group00
#_0DD696: dw   0,   0 : db $C8, $00, $00, $02
#_0DD69E: dw   0,   0 : db $C8, $00, $00, $02

; group01
#_0DD6A6: dw   0,   0 : db $CA, $00, $00, $02
#_0DD6AE: dw   0,   0 : db $CA, $00, $00, $02

; group02
#_0DD6B6: dw  -8,   0 : db $CC, $00, $00, $02
#_0DD6BE: dw   8,   0 : db $CC, $40, $00, $02

; group03
#_0DD6C6: dw  -8,   0 : db $CE, $00, $00, $02
#_0DD6CE: dw   8,   0 : db $CE, $40, $00, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Pikit:
#_0DD6D6: PHB
#_0DD6D7: PHK
#_0DD6D8: PLB

#_0DD6D9: JSR SpriteDraw_Pikit_Tongue

;---------------------------------------------------------------------------------------------------

#_0DD6DC: LDY.b #$00

#_0DD6DE: LDA.b ($90),Y
#_0DD6E0: STA.w $0FB5

#_0DD6E3: INY

#_0DD6E4: LDA.b ($90),Y
#_0DD6E6: STA.w $0FB6

#_0DD6E9: LDA.b #$00
#_0DD6EB: XBA
#_0DD6EC: LDA.w $0DC0,X

#_0DD6EF: REP #$20

#_0DD6F1: ASL A
#_0DD6F2: ASL A
#_0DD6F3: ASL A
#_0DD6F4: ASL A

#_0DD6F5: ADC.w #.oam_groups
#_0DD6F8: STA.b $08

#_0DD6FA: LDA.b $90
#_0DD6FC: CLC
#_0DD6FD: ADC.w #$0018
#_0DD700: STA.b $90

#_0DD702: LDA.b $92
#_0DD704: CLC
#_0DD705: ADC.w #$0006
#_0DD708: STA.b $92

#_0DD70A: SEP #$20

#_0DD70C: LDA.b #$02
#_0DD70E: JSL Sprite_DrawMultiple

;---------------------------------------------------------------------------------------------------

#_0DD712: LDA.w $0E40,X
#_0DD715: PHA

#_0DD716: SEC
#_0DD717: SBC.b #$06
#_0DD719: STA.w $0E40,X

#_0DD71C: JSL SpriteDraw_Shadow_long

#_0DD720: PLA
#_0DD721: STA.w $0E40,X

#_0DD724: JSR SpriteDraw_Pikit_Loot

#_0DD727: PLB

#_0DD728: RTL

;---------------------------------------------------------------------------------------------------

#EXIT_0DD729:
#_0DD729: RTS

;===================================================================================================

pool SpriteDraw_Pikit_Tongue

.tongue_char
#_0DD72A: db $EE, $FD, $ED, $FD, $EE, $FD, $ED, $FD

.tongue_flip
#_0DD732: db $00, $00, $00, $40, $40, $C0, $80, $80

pool off

;---------------------------------------------------------------------------------------------------


SpriteDraw_Pikit_Tongue:
#_0DD73A: LDA.w $0D80,X
#_0DD73D: CMP.b #$02
#_0DD73F: BNE EXIT_0DD729

#_0DD741: LDA.w $0F00,X
#_0DD744: BNE EXIT_0DD729

#_0DD746: LDA.b $00
#_0DD748: CLC
#_0DD749: ADC.b #$04
#_0DD74B: STA.b $00

#_0DD74D: LDY.b #$14
#_0DD74F: STA.b ($90),Y

#_0DD751: CLC
#_0DD752: ADC.w $0D90,X

#_0DD755: LDY.b #$00
#_0DD757: STA.b ($90),Y

#_0DD759: LDA.b $02
#_0DD75B: CLC
#_0DD75C: ADC.b #$03
#_0DD75E: STA.b $02

#_0DD760: LDY.b #$15
#_0DD762: STA.b ($90),Y

#_0DD764: CLC
#_0DD765: ADC.w $0DA0,X

#_0DD768: LDY.b #$01
#_0DD76A: STA.b ($90),Y

#_0DD76C: LDA.b #$FE
#_0DD76E: LDY.b #$16
#_0DD770: STA.b ($90),Y

#_0DD772: LDY.b #$02
#_0DD774: STA.b ($90),Y

#_0DD776: LDA.b $05
#_0DD778: LDY.b #$17
#_0DD77A: STA.b ($90),Y

#_0DD77C: LDY.b #$03
#_0DD77E: STA.b ($90),Y

#_0DD780: LDA.w $0DE0,X
#_0DD783: STA.b $0B

#_0DD785: LDA.w $0D90,X
#_0DD788: STA.b $0E

#_0DD78A: BPL .positive_x

#_0DD78C: EOR.b #$FF
#_0DD78E: INC A

.positive_x
#_0DD78F: STA.b $0C

#_0DD791: LDA.w $0DA0,X
#_0DD794: STA.b $0F

#_0DD796: BPL .positive_y

#_0DD798: EOR.b #$FF
#_0DD79A: INC A

.positive_y
#_0DD79B: STA.b $0D

#_0DD79D: LDY.b #$04

#_0DD79F: PHX

#_0DD7A0: LDX.b #$03

;---------------------------------------------------------------------------------------------------

.next_tongue_object
#_0DD7A2: LDA.b $0C
#_0DD7A4: STA.w CPUMULTA

#_0DD7A7: LDA.w .multipliers,X
#_0DD7AA: STA.w CPUMULTB

#_0DD7AD: JSR Three_NOP

#_0DD7B0: LDA.b $0E
#_0DD7B2: ASL A

#_0DD7B3: LDA.w CPUPRODUCTH
#_0DD7B6: BCC .positive_x_2

#_0DD7B8: EOR.b #$FF
#_0DD7BA: INC A

.positive_x_2
#_0DD7BB: CLC
#_0DD7BC: ADC.b $00
#_0DD7BE: STA.b ($90),Y

#_0DD7C0: LDA.b $0D
#_0DD7C2: STA.w CPUMULTA

#_0DD7C5: LDA.w .multipliers,X
#_0DD7C8: STA.w CPUMULTB

#_0DD7CB: JSR Three_NOP

#_0DD7CE: LDA.b $0F
#_0DD7D0: ASL A

#_0DD7D1: LDA.w CPUPRODUCTH
#_0DD7D4: BCC .positive_y_2

#_0DD7D6: EOR.b #$FF
#_0DD7D8: INC A

.positive_y_2
#_0DD7D9: CLC
#_0DD7DA: ADC.b $02
#_0DD7DC: INY
#_0DD7DD: STA.b ($90),Y

#_0DD7DF: PHX

#_0DD7E0: LDX.b $0B

#_0DD7E2: LDA.w .tongue_char,X
#_0DD7E5: INY
#_0DD7E6: STA.b ($90),Y

#_0DD7E8: INY
#_0DD7E9: LDA.w .tongue_flip,X
#_0DD7EC: ORA.b $05
#_0DD7EE: STA.b ($90),Y

#_0DD7F0: PLX

#_0DD7F1: INY

#_0DD7F2: DEX
#_0DD7F3: BPL .next_tongue_object

;---------------------------------------------------------------------------------------------------

#_0DD7F5: PLX

#_0DD7F6: LDY.b #$00
#_0DD7F8: LDA.b #$05
#_0DD7FA: JSL Sprite_CorrectOAMEntries_long

#_0DD7FE: RTS

;---------------------------------------------------------------------------------------------------

.multipliers
#_0DD7FF: db $33, $66, $99, $CC

;===================================================================================================

Three_NOP:
#_0DD803: NOP ; A one
#_0DD804: NOP ; A two
#_0DD805: NOP ; A three

#_0DD806: RTS ; CHOMP

;===================================================================================================

pool SpriteDraw_Pikit_Loot

.loot_offset_x
#_0DD807: db  -4,   4,  -4,   4
#_0DD80B: db   0,   8,   0,   8
#_0DD80F: db   0,   8,   0,   8
#_0DD813: db   0,   8,   0,   8
#_0DD817: db  -4,   4,  -4,   4

.loot_offset_y
#_0DD81B: db  -4,  -4,   4,   4
#_0DD81F: db  -4,  -4,   4,   4
#_0DD823: db  -4,  -4,   4,   4
#_0DD827: db  -4,  -4,   4,   4
#_0DD82B: db  -4,  -4,   4,   4

.loot_char
#_0DD82F: db $6E, $6F, $7E, $7F
#_0DD833: db $63, $7C, $73, $7C
#_0DD837: db $0B, $7C, $1B, $7C
#_0DD83B: db $EC, $F9, $FC, $F9
#_0DD83F: db $EA, $EB, $FA, $FB

.loot_prop
#_0DD843: db $24
#_0DD844: db $24
#_0DD845: db $28
#_0DD846: db $29
#_0DD847: db $2F

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Pikit_Loot:
#_0DD848: LDA.w $0ED0,X
#_0DD84B: BEQ .exit

#_0DD84D: DEC A
#_0DD84E: CMP.b #$03
#_0DD850: BNE .not_shield

#_0DD852: LDA.w $0E30,X
#_0DD855: CLC
#_0DD856: ADC.b #$02

.not_shield
#_0DD858: STA.b $02

#_0DD85A: LDA.b #$10
#_0DD85C: JSL OAM_AllocateFromRegionC

#_0DD860: LDY.b #$00

#_0DD862: PHX

#_0DD863: LDX.b #$03

.next_loot_object
#_0DD865: STX.b $03

#_0DD867: LDA.b $02
#_0DD869: ASL A
#_0DD86A: ASL A
#_0DD86B: ORA.b $03
#_0DD86D: TAX

#_0DD86E: LDA.w $0FB5
#_0DD871: CLC
#_0DD872: ADC.w .loot_offset_x,X
#_0DD875: STA.b ($90),Y

#_0DD877: LDA.w $0FB6
#_0DD87A: CLC
#_0DD87B: ADC.w .loot_offset_y,X

#_0DD87E: INY
#_0DD87F: STA.b ($90),Y

#_0DD881: LDA.w .loot_char,X
#_0DD884: INY
#_0DD885: STA.b ($90),Y

#_0DD887: LDX.b $02

#_0DD889: LDA.w .loot_prop,X
#_0DD88C: INY
#_0DD88D: STA.b ($90),Y

#_0DD88F: INY

#_0DD890: LDX.b $03
#_0DD892: DEX
#_0DD893: BPL .next_loot_object

;---------------------------------------------------------------------------------------------------

#_0DD895: PLX

#_0DD896: LDY.b #$00
#_0DD898: LDA.b #$03
#_0DD89A: JSL Sprite_CorrectOAMEntries_long

.exit
#_0DD89E: RTS

;===================================================================================================

pool SpriteDraw_Kholdstare

.oam_groups
; group00
#_0DD89F: dw  -8,  -8 : db $80, $00, $00, $02
#_0DD8A7: dw   8,  -8 : db $82, $00, $00, $02
#_0DD8AF: dw  -8,   8 : db $A0, $00, $00, $02
#_0DD8B7: dw   8,   8 : db $A2, $00, $00, $02

; group01
#_0DD8BF: dw  -7,  -7 : db $80, $00, $00, $02
#_0DD8C7: dw   7,  -7 : db $82, $00, $00, $02
#_0DD8CF: dw  -7,   7 : db $A0, $00, $00, $02
#_0DD8D7: dw   7,   7 : db $A2, $00, $00, $02

; group02
#_0DD8DF: dw  -7,  -7 : db $84, $00, $00, $02
#_0DD8E7: dw   7,  -7 : db $86, $00, $00, $02
#_0DD8EF: dw  -7,   7 : db $A4, $00, $00, $02
#_0DD8F7: dw   7,   7 : db $A6, $00, $00, $02

; group03
#_0DD8FF: dw  -8,  -8 : db $84, $00, $00, $02
#_0DD907: dw   8,  -8 : db $86, $00, $00, $02
#_0DD90F: dw  -8,   8 : db $A4, $00, $00, $02
#_0DD917: dw   8,   8 : db $A6, $00, $00, $02

;---------------------------------------------------------------------------------------------------

.offset_x
#_0DD91F: dw   8,   7,   4,   2
#_0DD927: dw   0,  -2,  -4,  -7
#_0DD92F: dw  -8,  -7,  -4,  -2
#_0DD937: dw   0,   2,   4,   7

.offset_y
#_0DD93F: dw   0,   2,   4,   7
#_0DD947: dw   8,   7,   4,   2
#_0DD94F: dw   0,  -2,  -4,  -7
#_0DD957: dw  -8,  -7,  -4,  -2

.char
#_0DD95F: db $AC, $AC, $AA, $8C
#_0DD963: db $8C, $8C, $AA, $AC
#_0DD967: db $AC, $AA, $AA, $8C
#_0DD96B: db $8C, $8C, $AA, $AC

.flip
#_0DD96F: db $40, $40, $40, $00
#_0DD973: db $00, $00, $00, $00
#_0DD977: db $80, $80, $80, $80
#_0DD97B: db $80, $80, $C0, $C0

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_Kholdstare:
#_0DD97F: PHB
#_0DD980: PHK
#_0DD981: PLB

#_0DD982: JSL Sprite_PrepOAMCoord_long
#_0DD986: BCS .exit

;---------------------------------------------------------------------------------------------------

#_0DD988: PHX

#_0DD989: LDA.w $0D90,X
#_0DD98C: PHA

#_0DD98D: ASL A
#_0DD98E: TAX

#_0DD98F: REP #$20

#_0DD991: LDA.b $00
#_0DD993: CLC
#_0DD994: ADC.w .offset_x,X
#_0DD997: STA.b ($90),Y

#_0DD999: AND.w #$0100
#_0DD99C: STA.b $0E

#_0DD99E: LDA.b $02
#_0DD9A0: CLC
#_0DD9A1: ADC.w .offset_y,X

#_0DD9A4: INY
#_0DD9A5: STA.b ($90),Y

#_0DD9A7: CLC
#_0DD9A8: ADC.w #$0010
#_0DD9AB: CMP.w #$0100

#_0DD9AE: SEP #$20
#_0DD9B0: BCC .on_screen

#_0DD9B2: LDA.b #$F0
#_0DD9B4: STA.b ($90),Y

.on_screen
#_0DD9B6: PLX

#_0DD9B7: LDA.w .char,X
#_0DD9BA: INY
#_0DD9BB: STA.b ($90),Y

#_0DD9BD: LDA.w .flip,X
#_0DD9C0: ORA.b $05
#_0DD9C2: INY
#_0DD9C3: STA.b ($90),Y

#_0DD9C5: TYA
#_0DD9C6: LSR A
#_0DD9C7: LSR A
#_0DD9C8: TAY

#_0DD9C9: LDA.b #$02
#_0DD9CB: ORA.b $0F
#_0DD9CD: STA.b ($92),Y

;---------------------------------------------------------------------------------------------------

#_0DD9CF: PLX

#_0DD9D0: LDA.b #$00
#_0DD9D2: XBA
#_0DD9D3: LDA.w $0DC0,X

#_0DD9D6: REP #$20

#_0DD9D8: ASL A
#_0DD9D9: ASL A
#_0DD9DA: ASL A
#_0DD9DB: ASL A
#_0DD9DC: ASL A

#_0DD9DD: ADC.w #.oam_groups
#_0DD9E0: STA.b $08

#_0DD9E2: LDA.b $90
#_0DD9E4: CLC
#_0DD9E5: ADC.w #$0004
#_0DD9E8: STA.b $90

#_0DD9EA: INC.b $92

#_0DD9EC: SEP #$20

#_0DD9EE: LDA.b #$04
#_0DD9F0: JSL Sprite_DrawMultiple

.exit
#_0DD9F4: PLB

#_0DD9F5: RTL

;===================================================================================================

Sprite_SpawnFireball:
#_0DD9F6: PHB
#_0DD9F7: PHK
#_0DD9F8: PLB

#_0DD9F9: LDA.b #$19 ; SFX3.19
#_0DD9FB: JSL SpriteSFX_QueueSFX3WithPan

#_0DD9FF: LDY.b #$0D
#_0DDA01: LDA.b #$55 ; SPRITE 55
#_0DDA03: JSL Sprite_SpawnDynamically_slot_limited
#_0DDA07: BMI .no_space

#_0DDA09: LDA.b $00
#_0DDA0B: CLC
#_0DDA0C: ADC.b #$04
#_0DDA0E: STA.w $0D10,Y

#_0DDA11: LDA.b $01
#_0DDA13: ADC.b #$00
#_0DDA15: STA.w $0D30,Y

#_0DDA18: LDA.b $02
#_0DDA1A: CLC
#_0DDA1B: ADC.b #$04
#_0DDA1D: PHP

#_0DDA1E: SEC
#_0DDA1F: SBC.b $04
#_0DDA21: STA.w $0D00,Y

#_0DDA24: LDA.b $03
#_0DDA26: SBC.b #$00

#_0DDA28: PLP
#_0DDA29: ADC.b #$00
#_0DDA2B: STA.w $0D20,Y

#_0DDA2E: LDA.w $0E60,Y
#_0DDA31: AND.b #$FE
#_0DDA33: ORA.b #$40
#_0DDA35: STA.w $0E60,Y

#_0DDA38: LDA.b #$06
#_0DDA3A: STA.w $0F50,Y

#_0DDA3D: LDA.b #$54
#_0DDA3F: STA.w $0F60,Y
#_0DDA42: STA.w $0E90,Y

#_0DDA45: LDA.b #$20
#_0DDA47: STA.w $0E40,Y

#_0DDA4A: PHX

#_0DDA4B: TYX

#_0DDA4C: LDA.b #$20
#_0DDA4E: JSL Sprite_ApplySpeedTowardsLink_long

#_0DDA52: LDA.b #$14
#_0DDA54: STA.w $0DF0,X

#_0DDA57: LDA.b #$10
#_0DDA59: STA.w $0E00,X

#_0DDA5C: STZ.w $0BE0,X

#_0DDA5F: LDA.b #$48
#_0DDA61: STA.w $0CAA,X

#_0DDA64: TXY

#_0DDA65: PLX

.no_space
#_0DDA66: PLB

#_0DDA67: TYA

#_0DDA68: RTL

;===================================================================================================

pool SpriteDraw_ArcheryGame_Host

.offset_x
#_0DDA69: db   0,   0,   0
#_0DDA6C: db   0,   0,  -5
#_0DDA6F: db   0,  -1,  -1
#_0DDA72: db   0,   0,   0
#_0DDA75: db   0,   1,   1

.offset_y
#_0DDA78: db   0, -10, -10
#_0DDA7B: db   0, -10,  -3
#_0DDA7E: db   0, -10, -10
#_0DDA81: db   0, -10, -10
#_0DDA84: db   0, -10, -10

.char
#_0DDA87: db $26, $06, $06
#_0DDA8A: db $08, $06, $3A
#_0DDA8D: db $26, $06, $06
#_0DDA90: db $26, $06, $06
#_0DDA93: db $26, $06, $06

.prop
#_0DDA96: db $08, $06, $06
#_0DDA99: db $08, $06, $08
#_0DDA9C: db $08, $06, $06
#_0DDA9F: db $08, $06, $06
#_0DDAA2: db $08, $06, $06

.size
#_0DDAA5: db $02, $02, $02
#_0DDAA8: db $02, $02, $00
#_0DDAAB: db $02, $02, $02
#_0DDAAE: db $02, $02, $02
#_0DDAB1: db $02, $02, $02

pool off

;---------------------------------------------------------------------------------------------------

SpriteDraw_ArcheryGame_Host:
#_0DDAB4: PHB
#_0DDAB5: PHK
#_0DDAB6: PLB

#_0DDAB7: JSL OAM_AllocateDeferToPlayer_long
#_0DDABB: JSL Sprite_PrepOAMCoord_long

#_0DDABF: LDA.w $0DC0,X
#_0DDAC2: ASL A
#_0DDAC3: ADC.w $0DC0,X
#_0DDAC6: STA.b $06

#_0DDAC8: PHX

#_0DDAC9: LDX.b #$02

.next_object
#_0DDACB: PHX

#_0DDACC: TXA
#_0DDACD: CLC
#_0DDACE: ADC.b $06
#_0DDAD0: TAX

#_0DDAD1: LDA.b $00
#_0DDAD3: CLC
#_0DDAD4: ADC.w .offset_x,X
#_0DDAD7: STA.b ($90),Y

#_0DDAD9: LDA.b $02
#_0DDADB: CLC
#_0DDADC: ADC.w .offset_y,X

#_0DDADF: INY
#_0DDAE0: STA.b ($90),Y

#_0DDAE2: LDA.w .char,X
#_0DDAE5: INY
#_0DDAE6: STA.b ($90),Y

#_0DDAE8: LDA.b $05
#_0DDAEA: ORA.w .prop,X
#_0DDAED: INY
#_0DDAEE: STA.b ($90),Y

#_0DDAF0: PHY

#_0DDAF1: TYA
#_0DDAF2: LSR A
#_0DDAF3: LSR A
#_0DDAF4: TAY

#_0DDAF5: LDA.w .size,X
#_0DDAF8: STA.b ($92),Y

#_0DDAFA: PLY
#_0DDAFB: INY

#_0DDAFC: PLX
#_0DDAFD: DEX
#_0DDAFE: BPL .next_object

#_0DDB00: PLX
#_0DDB01: JSL SpriteDraw_Shadow_long

#_0DDB05: PLB

#_0DDB06: RTL

;===================================================================================================
; FREE ROM: 0x39
;===================================================================================================
NULL_0DDB07:
#_0DDB07: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DDB0F: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DDB17: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DDB1F: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DDB27: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DDB2F: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DDB37: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DDB3F: db $FF

;===================================================================================================

CapacityUpgrades:
.bombs_bcd
#_0DDB40: db $10, $15, $20, $25, $30, $35, $40, $50

.bombs_hex
#_0DDB48: db  10,  15,  20,  25,  30,  35,  40,  50

.arrows_bcd
#_0DDB50: db $30, $35, $40, $45, $50, $55, $60, $70

.arrows_hex
#_0DDB58: db  30,  35,  40,  45,  50,  55,  60,  70

;===================================================================================================

HeartBeepThresholds:
#_0DDB60: db $09, $09, $09, $09, $09, $09, $09, $09
#_0DDB68: db $11, $11, $11, $11, $11, $11, $11, $19
#_0DDB70: db $19, $19, $19, $19, $19

;===================================================================================================

RefillLogic_long:
#_0DDB75: PHB
#_0DDB76: PHK
#_0DDB77: PLB

#_0DDB78: LDA.w $0200
#_0DDB7B: BEQ RefillLogic

#_0DDB7D: PLB

#_0DDB7E: RTL

;===================================================================================================

RefreshIcon_long:
#_0DDB7F: PHB
#_0DDB80: PHK
#_0DDB81: PLB

#_0DDB82: JSR SearchForEquippedItem
#_0DDB85: JSR UpdateHUD
#_0DDB88: JSR RebuildHUD

#_0DDB8B: SEP #$30

#_0DDB8D: STZ.w $0200

#_0DDB90: PLB

#_0DDB91: RTL

;===================================================================================================

RefillLogic:
#_0DDB92: LDA.l $7EF373 ; check magic refill
#_0DDB96: BEQ .magic_refill_done

#_0DDB98: LDA.l $7EF36E ; cap at 128
#_0DDB9C: CMP.b #$80
#_0DDB9E: BCC .need_more_magic

#_0DDBA0: LDA.b #$80 ; hard cap in case we went over max
#_0DDBA2: STA.l $7EF36E

#_0DDBA6: LDA.b #$00
#_0DDBA8: STA.l $7EF373
#_0DDBAC: BRA .magic_refill_done

.need_more_magic
#_0DDBAE: LDA.l $7EF373 ; transfer from refill buffer to magic
#_0DDBB2: DEC A
#_0DDBB3: STA.l $7EF373

#_0DDBB7: LDA.l $7EF36E
#_0DDBBB: INC A
#_0DDBBC: STA.l $7EF36E

#_0DDBC0: LDA.b $1A ; play the noise every 4 frames
#_0DDBC2: AND.b #$03
#_0DDBC4: BNE .magic_refill_done

#_0DDBC6: LDA.w $012E ; unless something is queued already
#_0DDBC9: BNE .magic_refill_done

#_0DDBCB: LDA.b #$2D ; SFX2.2D
#_0DDBCD: STA.w $012E

;---------------------------------------------------------------------------------------------------

.magic_refill_done
#_0DDBD0: REP #$30

#_0DDBD2: LDA.l $7EF362 ; compare rupee to rupee fill
#_0DDBD6: CMP.l $7EF360
#_0DDBDA: BEQ .rupee_refill_done
#_0DDBDC: BMI .gaining_rupees

#_0DDBDE: DEC A ; we're losing rupees
#_0DDBDF: BPL .losing_rupees

#_0DDBE1: LDA.w #$0000 ; don't go into the negatives
#_0DDBE4: STA.l $7EF360

#_0DDBE8: BRA .losing_rupees

.gaining_rupees
#_0DDBEA: INC A
#_0DDBEB: CMP.w #1000
#_0DDBEE: BCC .losing_rupees

#_0DDBF0: LDA.w #999
#_0DDBF3: STA.l $7EF360

.losing_rupees
#_0DDBF7: STA.l $7EF362

#_0DDBFB: SEP #$30

#_0DDBFD: LDA.w $012E ; if a sfx is queued, let it play
#_0DDC00: BNE .rupee_refill_done

#_0DDC02: LDA.w $0CFD ; rupee refill sound timer
#_0DDC05: INC.w $0CFD ; why not frame counter?
#_0DDC08: AND.b #$07
#_0DDC0A: BNE .rupee_sound_done

#_0DDC0C: LDA.b #$29 ; SFX2.29
#_0DDC0E: STA.w $012E

#_0DDC11: BRA .rupee_sound_done

.rupee_refill_done
#_0DDC13: SEP #$30

#_0DDC15: STZ.w $0CFD

;---------------------------------------------------------------------------------------------------

.rupee_sound_done
#_0DDC18: LDA.l $7EF375 ; bombs
#_0DDC1C: BEQ .bomb_refill_done

#_0DDC1E: LDA.l $7EF375
#_0DDC22: DEC A
#_0DDC23: STA.l $7EF375

#_0DDC27: LDA.l $7EF370
#_0DDC2B: TAY

#_0DDC2C: LDA.l $7EF343
#_0DDC30: CMP.w CapacityUpgrades_bombs_hex,Y
#_0DDC33: BEQ .bomb_refill_done

#_0DDC35: INC A
#_0DDC36: STA.l $7EF343

;---------------------------------------------------------------------------------------------------

.bomb_refill_done
#_0DDC3A: LDA.l $7EF376 ; arrows
#_0DDC3E: BEQ .arrow_refill_done

#_0DDC40: LDA.l $7EF376
#_0DDC44: DEC A
#_0DDC45: STA.l $7EF376

#_0DDC49: LDA.l $7EF371
#_0DDC4D: TAY

#_0DDC4E: LDA.l $7EF377
#_0DDC52: CMP.w CapacityUpgrades_arrows_hex,Y
#_0DDC55: BEQ .too_many_arrows

#_0DDC57: INC A
#_0DDC58: STA.l $7EF377

.too_many_arrows
#_0DDC5C: LDA.l $7EF340
#_0DDC60: BEQ .arrow_refill_done

#_0DDC62: AND.b #$01
#_0DDC64: CMP.b #$01
#_0DDC66: BNE .arrow_refill_done

#_0DDC68: LDA.l $7EF340 ; change bow icon to have arrows
#_0DDC6C: INC A
#_0DDC6D: STA.l $7EF340

#_0DDC71: JSL RefreshIcon_long

;---------------------------------------------------------------------------------------------------

.arrow_refill_done
#_0DDC75: LDA.w $02E4 ; don't beep during cutscenes
#_0DDC78: BNE .done_beeping

#_0DDC7A: LDA.l $7EF372 ; or during healing
#_0DDC7E: BNE .done_beeping

#_0DDC80: LDA.l $7EF36C
#_0DDC84: LSR A
#_0DDC85: LSR A
#_0DDC86: LSR A
#_0DDC87: TAX

#_0DDC88: LDA.l $7EF36D
#_0DDC8C: CMP.w HeartBeepThresholds,X
#_0DDC8F: BCS .done_beeping

#_0DDC91: LDA.w $04CA
#_0DDC94: BNE .tick_beep_timer

#_0DDC96: LDA.w $012E ; don't overwrite a queued sfx
#_0DDC99: BNE .done_beeping

#_0DDC9B: LDA.b #$20 ; beep timer is every 32 frames
#_0DDC9D: STA.w $04CA

#_0DDCA0: LDA.b #$2B ; SFX2.2B
#_0DDCA2: STA.w $012E

.tick_beep_timer
#_0DDCA5: DEC.w $04CA

;---------------------------------------------------------------------------------------------------

.done_beeping
#_0DDCA8: LDA.w $020A
#_0DDCAB: BNE .no_heart_refill_yet

#_0DDCAD: LDA.l $7EF372
#_0DDCB1: BEQ .heart_refill_done

#_0DDCB3: LDA.l $7EF36D
#_0DDCB7: CMP.l $7EF36C
#_0DDCBB: BCC .keep_healing

#_0DDCBD: LDA.l $7EF36C ; prevent health overflow
#_0DDCC1: STA.l $7EF36D

#_0DDCC5: LDA.b #$00
#_0DDCC7: STA.l $7EF372

#_0DDCCB: BRA .heart_refill_done

.keep_healing
#_0DDCCD: LDA.l $7EF36D
#_0DDCD1: CLC
#_0DDCD2: ADC.b #$08
#_0DDCD4: STA.l $7EF36D

#_0DDCD8: LDA.w $012F ; don't interrupt queued sfx
#_0DDCDB: BNE .skip_heal_sfx

#_0DDCDD: LDA.b #$0D ; SFX3.0D
#_0DDCDF: STA.w $012F

.skip_heal_sfx
#_0DDCE2: LDA.l $7EF36D
#_0DDCE6: CMP.l $7EF36C
#_0DDCEA: BCC .health_is_in_range

#_0DDCEC: LDA.l $7EF36C
#_0DDCF0: STA.l $7EF36D

.health_is_in_range
#_0DDCF4: LDA.l $7EF372
#_0DDCF8: SEC
#_0DDCF9: SBC.b #$08
#_0DDCFB: STA.l $7EF372

#_0DDCFF: INC.w $020A ; trigger heart refill animation

#_0DDD02: LDA.b #$07
#_0DDD04: STA.w $0208

;---------------------------------------------------------------------------------------------------

.no_heart_refill_yet
#_0DDD07: REP #$30

#_0DDD09: LDA.w #$FFFF ; this appears to be unused
#_0DDD0C: STA.b $0E

#_0DDD0E: JSR UpdateHUDBuffer_skip_hearts
#_0DDD11: JSR AnimateHeartRefill

#_0DDD14: SEP #$30

#_0DDD16: INC.b $16

#_0DDD18: PLB

#_0DDD19: RTL

;---------------------------------------------------------------------------------------------------

.heart_refill_done
#_0DDD1A: REP #$30

#_0DDD1C: LDA.w #$FFFF ; this appears to be unused
#_0DDD1F: STA.b $0E

#_0DDD21: JSR UpdateHUDBuffer_skip_item

#_0DDD24: SEP #$30

#_0DDD26: INC.b $16

#_0DDD28: PLB

#_0DDD29: RTL

;===================================================================================================

Module0E_01_ItemMenu:
#_0DDD2A: PHB
#_0DDD2B: PHK
#_0DDD2C: PLB

#_0DDD2D: JSR Handle_ItemMenu

#_0DDD30: PLB

#_0DDD31: RTL

;===================================================================================================

UpdateEquippedItem_long:
#_0DDD32: JSR UpdateEquippedItem

#_0DDD35: RTL

;===================================================================================================

Handle_ItemMenu:
#_0DDD36: INC.w $0206

#_0DDD39: LDA.w $0200
#_0DDD3C: JSL JumpTableLocal
#_0DDD40: dw ItemMenu_ClearTilemap           ; 0x00
#_0DDD42: dw ItemMenu_Initialize             ; 0x01
#_0DDD44: dw ItemMenu_Open                   ; 0x02
#_0DDD46: dw ItemMenu_NextMode               ; 0x03
#_0DDD48: dw ItemMenu_YItemSelection         ; 0x04
#_0DDD4A: dw UpdateHUD                       ; 0x05
#_0DDD4C: dw ItemMenu_Close                  ; 0x06
#_0DDD4E: dw ItemMenu_BottleMenu_Go          ; 0x07
#_0DDD50: dw ItemMenu_BottleMenu_Initialize  ; 0x08
#_0DDD52: dw ItemMenu_BottleMenu_Open        ; 0x09
#_0DDD54: dw ItemMenu_BottleMenu             ; 0x0A
#_0DDD56: dw ItemMenu_BottleMenu_Close       ; 0x0B
#_0DDD58: dw ItemMenu_BottleMenu_RestoreMenu ; 0x0C

;===================================================================================================

ItemMenu_ClearTilemap:
#_0DDD5A: REP #$20

#_0DDD5C: LDX.b #$00
#_0DDD5E: LDA.w #$207F

.clear_buffer_loop
#_0DDD61: STA.w $1000,X
#_0DDD64: STA.w $1080,X
#_0DDD67: STA.w $1100,X
#_0DDD6A: STA.w $1180,X
#_0DDD6D: STA.w $1200,X
#_0DDD70: STA.w $1280,X
#_0DDD73: STA.w $1300,X
#_0DDD76: STA.w $1380,X
#_0DDD79: STA.w $1400,X
#_0DDD7C: STA.w $1480,X
#_0DDD7F: STA.w $1500,X
#_0DDD82: STA.w $1580,X
#_0DDD85: STA.w $1600,X
#_0DDD88: STA.w $1680,X
#_0DDD8B: STA.w $1700,X
#_0DDD8E: STA.w $1780,X

#_0DDD91: INX
#_0DDD92: INX
#_0DDD93: CPX.b #$80
#_0DDD95: BNE .clear_buffer_loop

;---------------------------------------------------------------------------------------------------

#_0DDD97: SEP #$20

#_0DDD99: LDA.b #$11 ; SFX3.11
#_0DDD9B: STA.w $012F

; trigger an update and tell it where to update from
#_0DDD9E: LDA.b #$01
#_0DDDA0: STA.b $17

#_0DDDA2: LDA.b #$22
#_0DDDA4: STA.w $0116

#_0DDDA7: INC.w $0200

#_0DDDAA: RTS

;===================================================================================================

ItemMenu_Initialize:
#_0DDDAB: JSR SearchForEquippedItem

#_0DDDAE: LDA.b #$01
#_0DDDB0: JSR ItemMenu_GetPaletteMask
#_0DDDB3: JSR ItemMenu_DrawYItems

#_0DDDB6: LDA.b #$01
#_0DDDB8: JSR ItemMenu_GetPaletteMask
#_0DDDBB: JSR ItemMenu_DrawEquippedItemBox

#_0DDDBE: LDA.b #$01
#_0DDDC0: JSR ItemMenu_GetPaletteMask

#_0DDDC3: JSR ItemMenu_DrawAbilityText
#_0DDDC6: JSR ItemMenu_DrawAbilityIcons

#_0DDDC9: JSR ItemMenu_DrawProgressIcons
#_0DDDCC: JSR ItemMenu_DrawMoonPearl

#_0DDDCF: JSR NotAsGoodAsSMT029032

#_0DDDD2: LDA.b #$01
#_0DDDD4: JSR ItemMenu_GetPaletteMask

#_0DDDD7: JSR ItemMenu_DrawEquipment
#_0DDDDA: JSR ItemMenu_DrawShield
#_0DDDDD: JSR ItemMenu_DrawMail

#_0DDDE0: JSR ItemMenu_DrawMapAndBigKey
#_0DDDE3: JSR ItemMenu_DrawCompass

;---------------------------------------------------------------------------------------------------

; Loops through every item looking for any nonzero value
#_0DDDE6: LDX.b #$12

#_0DDDE8: LDA.l $7EF340

.next_item_check
#_0DDDEC: ORA.l $7EF341,X

#_0DDDF0: DEX
#_0DDDF1: BPL .next_item_check

;---------------------------------------------------------------------------------------------------

#_0DDDF3: CMP.b #$00
#_0DDDF5: BEQ .no_items

#_0DDDF7: LDA.l $7EF35C ; checks for any bottles
#_0DDDFB: ORA.l $7EF35D
#_0DDDFF: ORA.l $7EF35E
#_0DDE03: ORA.l $7EF35F

#_0DDE07: BNE .bottles_yes
#_0DDE09: BRA .no_bottles

;---------------------------------------------------------------------------------------------------

.bottles_yes
#_0DDE0B: LDA.l $7EF34F ; is one of our bottles selected?
#_0DDE0F: BNE .bottle_selected

#_0DDE11: TAY ; otherwise, look for a bottle to hold

#_0DDE12: INY
#_0DDE13: LDA.l $7EF35C
#_0DDE17: BNE .choose_this_bottle

#_0DDE19: INY
#_0DDE1A: LDA.l $7EF35D
#_0DDE1E: BNE .choose_this_bottle

#_0DDE20: INY
#_0DDE21: LDA.l $7EF35E
#_0DDE25: BNE .choose_this_bottle

#_0DDE27: INY

.choose_this_bottle
#_0DDE28: TYA

.no_bottles
#_0DDE29: STA.l $7EF34F

;---------------------------------------------------------------------------------------------------

.bottle_selected
; try to find our selected item
; otherwise, look further
#_0DDE2D: JSR ItemMenu_CheckForOwnership
#_0DDE30: BCS .we_have_it

#_0DDE32: JSR ItemMenu_LookForItem_Right

.we_have_it
#_0DDE35: JSR ItemMenu_DrawEquippedYItem

#_0DDE38: LDA.w $0202 ; are we selecting a bottle?
#_0DDE3B: CMP.b #$10
#_0DDE3D: BNE .no_items

#_0DDE3F: LDA.b #$01
#_0DDE41: JSR ItemMenu_GetPaletteMask
#_0DDE44: JSR ItemMenu_DrawBottleSubmenu

.no_items
#_0DDE47: LDA.b #$10
#_0DDE49: STA.w $0207

; trigger and locate a vram update
#_0DDE4C: LDA.b #$01
#_0DDE4E: STA.b $17

#_0DDE50: LDA.b #$22
#_0DDE52: STA.w $0116

#_0DDE55: INC.w $0200

#_0DDE58: RTS

;===================================================================================================
; Scrolls the background by 8 pixels every frame until it's in position
; scrolls to -232 over the course of 29 frames
;===================================================================================================
ItemMenu_Open:
#_0DDE59: REP #$20 ; shoulda REP #$21 : SBC.w #7

#_0DDE5B: LDA.b $EA
#_0DDE5D: SEC
#_0DDE5E: SBC.w #$0008
#_0DDE61: STA.b $EA

#_0DDE63: CMP.w #$FF18

#_0DDE66: SEP #$20
#_0DDE68: BNE .still_going

#_0DDE6A: INC.w $0200

.still_going
#_0DDE6D: RTS

;===================================================================================================
; Decide which submode to go to next, based on what's equipped
;===================================================================================================
ItemMenu_NextMode:
; look for some nonzero value in item menu
#_0DDE6E: LDX.b #$12

#_0DDE70: LDA.l $7EF340

.check_next_item
#_0DDE74: ORA.l $7EF341,X
#_0DDE78: DEX
#_0DDE79: BPL .check_next_item

;---------------------------------------------------------------------------------------------------

#_0DDE7B: CMP.b #$00
#_0DDE7D: BEQ .no_items_at_all

; trigger and locate a vram update for NMI
#_0DDE7F: LDA.b #$01
#_0DDE81: STA.b $17

#_0DDE83: LDA.b #$22
#_0DDE85: STA.w $0116

#_0DDE88: JSR ItemMenu_CheckForOwnership
#_0DDE8B: BCS .item_is_owned

#_0DDE8D: JSR ItemMenu_LookForItem_Right

.item_is_owned
#_0DDE90: JSR ItemMenu_DrawEquippedYItem

#_0DDE93: LDA.b #$04 ; go to Y-item selection
#_0DDE95: STA.w $0200

#_0DDE98: LDA.w $0202
#_0DDE9B: CMP.b #$10
#_0DDE9D: BNE .not_bottle

#_0DDE9F: LDA.b #$0A ; nevermind, go to bottle menu
#_0DDEA1: STA.w $0200

.not_bottle
#_0DDEA4: RTS

;---------------------------------------------------------------------------------------------------

; just wait for an input then close the menu
.no_items_at_all
#_0DDEA5: LDA.b $F4
#_0DDEA7: BEQ .wait_for_button

#_0DDEA9: LDA.b #$05
#_0DDEAB: STA.w $0200

#_0DDEAE: RTS

.wait_for_button
#_0DDEAF: RTS

;===================================================================================================
; Returns carry set if the equipped item is owned
; This could have been done more efficieintly with
; CMP.b #$01
; RTS
;===================================================================================================
ItemMenu_CheckForOwnership:
#_0DDEB0: LDX.w $0202

#_0DDEB3: LDA.l $7EF33F,X
#_0DDEB7: BNE .owned

#_0DDEB9: CLC

#_0DDEBA: RTS

.owned
#_0DDEBB: SEC

#_0DDEBC: RTS

;===================================================================================================
; Get the item slot 1 less than current
;===================================================================================================
ItemMenu_PreviousItem:
#_0DDEBD: LDA.w $0202
#_0DDEC0: DEC A

#_0DDEC1: CMP.b #$01
#_0DDEC3: BCS .nowrap

#_0DDEC5: LDA.b #$14 ; slot 20

.nowrap
#_0DDEC7: STA.w $0202

#_0DDECA: RTS

;===================================================================================================
; Get the item slot 1 more than current
;===================================================================================================
ItemMenu_NextItem:
#_0DDECB: LDA.w $0202
#_0DDECE: INC A
#_0DDECF: CMP.b #$15 ; wrap at 21
#_0DDED1: BCC .nowrap

#_0DDED3: LDA.b #$01

.nowrap
#_0DDED5: STA.w $0202

#_0DDED8: RTS

;===================================================================================================
; Looks in the specified direction for the next non-empty slot
;===================================================================================================
ItemMenu_LookForItem_Left:
.retry
#_0DDED9: JSR ItemMenu_PreviousItem

#_0DDEDC: JSR ItemMenu_CheckForOwnership
#_0DDEDF: BCC .retry

#_0DDEE1: RTS

;---------------------------------------------------------------------------------------------------

ItemMenu_LookForItem_Right:
.retry
#_0DDEE2: JSR ItemMenu_NextItem

#_0DDEE5: JSR ItemMenu_CheckForOwnership
#_0DDEE8: BCC .retry

#_0DDEEA: RTS

;---------------------------------------------------------------------------------------------------

ItemMenu_LookForItem_Up:
.retry
#_0DDEEB: JSR ItemMenu_PreviousItem
#_0DDEEE: JSR ItemMenu_PreviousItem
#_0DDEF1: JSR ItemMenu_PreviousItem
#_0DDEF4: JSR ItemMenu_PreviousItem
#_0DDEF7: JSR ItemMenu_PreviousItem

#_0DDEFA: JSR ItemMenu_CheckForOwnership
#_0DDEFD: BCC .retry

#_0DDEFF: RTS

;---------------------------------------------------------------------------------------------------

ItemMenu_LookForItem_Down:
.retry
#_0DDF00: JSR ItemMenu_NextItem
#_0DDF03: JSR ItemMenu_NextItem
#_0DDF06: JSR ItemMenu_NextItem
#_0DDF09: JSR ItemMenu_NextItem
#_0DDF0C: JSR ItemMenu_NextItem

#_0DDF0F: JSR ItemMenu_CheckForOwnership
#_0DDF12: BCC .retry

#_0DDF14: RTS

;===================================================================================================
; The normal item selection menu controller
;===================================================================================================
ItemMenu_YItemSelection:
#_0DDF15: INC.w $0207

#_0DDF18: LDA.b $F0
#_0DDF1A: BNE .input

#_0DDF1C: STZ.b $BD ; can only move after a frame of no input

.input
#_0DDF1E: LDA.b $F4 ; check for start press to close menu
#_0DDF20: AND.b #$10
#_0DDF22: BEQ .keepmenuing

#_0DDF24: LDA.b #$05
#_0DDF26: STA.w $0200

#_0DDF29: LDA.b #$12 ; SFX3.12
#_0DDF2B: STA.w $012F

#_0DDF2E: RTS

;---------------------------------------------------------------------------------------------------

.keepmenuing
#_0DDF2F: LDA.b $BD ; not allowed to do anything
#_0DDF31: BNE .do_item_draw

#_0DDF33: LDA.w $0202
#_0DDF36: STA.b $00

; check for R-button on joy2 to delete items
#_0DDF38: LDA.b $F7
#_0DDF3A: AND.b #$10
#_0DDF3C: BEQ .no_delete

; bye bye
#_0DDF3E: LDX.w $0202

#_0DDF41: LDA.b #$00
#_0DDF43: STA.l $7EF33F,X

#_0DDF47: BRA .picked_item

;---------------------------------------------------------------------------------------------------

.no_delete
; check for direction presses
; the devs should have used BIT instead of AND
#_0DDF49: LDA.b $F4
#_0DDF4B: AND.b #$08
#_0DDF4D: BEQ .not_up

#_0DDF4F: JSR ItemMenu_LookForItem_Up
#_0DDF52: BRA .picked_item

.not_up
#_0DDF54: LDA.b $F4
#_0DDF56: AND.b #$04
#_0DDF58: BEQ .not_down

#_0DDF5A: JSR ItemMenu_LookForItem_Down
#_0DDF5D: BRA .picked_item

.not_down
#_0DDF5F: LDA.b $F4
#_0DDF61: AND.b #$02
#_0DDF63: BEQ .not_left

#_0DDF65: JSR ItemMenu_LookForItem_Left
#_0DDF68: BRA .picked_item

.not_left
#_0DDF6A: LDA.b $F4
#_0DDF6C: AND.b #$01
#_0DDF6E: BEQ .do_item_draw

#_0DDF70: JSR ItemMenu_LookForItem_Right

;---------------------------------------------------------------------------------------------------

.picked_item
#_0DDF73: LDA.b $F4
#_0DDF75: STA.b $BD

#_0DDF77: LDA.w $0202 ; compare new item to old item
#_0DDF7A: CMP.b $00
#_0DDF7C: BEQ .do_item_draw

#_0DDF7E: LDA.b #$10 ; if different, reset blink timer
#_0DDF80: STA.w $0207

#_0DDF83: LDA.b #$20 ; SFX3.20
#_0DDF85: STA.w $012F

.do_item_draw
#_0DDF88: LDA.b #$01
#_0DDF8A: JSR ItemMenu_GetPaletteMask

#_0DDF8D: JSR ItemMenu_DrawYItems
#_0DDF90: JSR ItemMenu_DrawEquippedYItem

#_0DDF93: LDA.w $0202 ; if bottle, go to submenu
#_0DDF96: CMP.b #$10
#_0DDF98: BNE .not_bottle

#_0DDF9A: LDA.b #$07
#_0DDF9C: STA.w $0200

.not_bottle
#_0DDF9F: LDA.b #$01 ; update hud triggers for NMI
#_0DDFA1: STA.b $17

#_0DDFA3: LDA.b #$22
#_0DDFA5: STA.w $0116

#_0DDFA8: RTS

;===================================================================================================

UpdateHUD:
#_0DDFA9: INC.w $0200

#_0DDFAC: JSR RebuildHUD_update

;===================================================================================================

UpdateEquippedItem:
#_0DDFAF: LDX.w $0202

#_0DDFB2: LDA.l MenuID_to_EquipID,X
#_0DDFB6: STA.w $0303

#_0DDFB9: RTS

;===================================================================================================
; Scrolls the background by 8 pixels every frame until it's in position
; scrolls to 0 over the course of 29 frames
;===================================================================================================
ItemMenu_Close:
#_0DDFBA: REP #$20

#_0DDFBC: LDA.b $EA
#_0DDFBE: CLC
#_0DDFBF: ADC.w #$0008
#_0DDFC2: STA.b $EA

#_0DDFC4: SEP #$20
#_0DDFC6: BNE .exit

#_0DDFC8: JSR RebuildHUD ; rebuild hud when we're done

#_0DDFCB: STZ.w $0200
#_0DDFCE: STZ.b $11

#_0DDFD0: LDA.w $010C ; restore OW/UW for game mode
#_0DDFD3: STA.b $10

#_0DDFD5: LDA.b $11 ; pointless, it's always 0
#_0DDFD7: BEQ .road_always_taken

#_0DDFD9: JSL RestoreTorchBackground ; unreachable

.road_always_taken
#_0DDFDD: LDA.w $0303
#_0DDFE0: CMP.b #$05
#_0DDFE2: BEQ .rods

#_0DDFE4: CMP.b #$06
#_0DDFE6: BEQ .rods

#_0DDFE8: LDA.b #$02
#_0DDFEA: STA.w $034B

#_0DDFED: STZ.w $020B

#_0DDFF0: BRA .exit

.rods
; If this flag is set, then, for some reason
; ice and fire rod scroll the menu another 8 pixels
#_0DDFF2: LDA.w $020B
#_0DDFF5: BNE ItemMenu_Close

#_0DDFF7: STZ.w $034B

.exit
#_0DDFFA: RTS

;===================================================================================================
; I don't see why this needs to be its own submode
;===================================================================================================
ItemMenu_BottleMenu_Go:
#_0DDFFB: STZ.w $0205

#_0DDFFE: INC.w $0200

#_0DE001: RTS

;===================================================================================================

ItemMenu_BottleMenu_Initialize:
#_0DE002: REP #$30

#_0DE004: LDA.w $0205
#_0DE007: AND.w #$00FF
#_0DE00A: ASL A ; x64
#_0DE00B: ASL A
#_0DE00C: ASL A
#_0DE00D: ASL A
#_0DE00E: ASL A
#_0DE00F: ASL A
#_0DE010: TAX

#_0DE011: LDA.w #$207F
#_0DE014: STA.w $12EA,X
#_0DE017: STA.w $12EC,X
#_0DE01A: STA.w $12EE,X
#_0DE01D: STA.w $12F0,X
#_0DE020: STA.w $12F2,X
#_0DE023: STA.w $12F4,X
#_0DE026: STA.w $12F6,X
#_0DE029: STA.w $12F8,X
#_0DE02C: STA.w $12FA,X
#_0DE02F: STA.w $12FC,X

;---------------------------------------------------------------------------------------------------

#_0DE032: SEP #$30

#_0DE034: INC.w $0205

#_0DE037: LDA.w $0205

#_0DE03A: CMP.b #$13
#_0DE03C: BNE .still_erasing

#_0DE03E: INC.w $0200

#_0DE041: LDA.b #$11
#_0DE043: STA.w $0205

.still_erasing
#_0DE046: LDA.b #$01
#_0DE048: STA.b $17

#_0DE04A: LDA.b #$22
#_0DE04C: STA.w $0116

#_0DE04F: RTS

;===================================================================================================

pool ItemMenu_BottleMenu_Open

.border_tile_top
#_0DE050: dw $28FB, $28F9, $28F9, $28F9
#_0DE058: dw $28F9, $28F9, $28F9, $28F9
#_0DE060: dw $28F9, $68FB

.border_tile_row
#_0DE064: dw $28FC, $24F5, $24F5, $24F5
#_0DE06C: dw $24F5, $24F5, $24F5, $24F5
#_0DE074: dw $24F5, $68FC

.border_tile_bottom
#_0DE078: dw $A8FB, $A8F9, $A8F9, $A8F9
#_0DE080: dw $A8F9, $A8F9, $A8F9, $A8F9
#_0DE088: dw $A8F9, $E8FB

pool off

;---------------------------------------------------------------------------------------------------

ItemMenu_BottleMenu_Open:
#_0DE08C: REP #$30

#_0DE08E: LDA.w $0205
#_0DE091: AND.w #$00FF

#_0DE094: ASL A ; x64
#_0DE095: ASL A
#_0DE096: ASL A
#_0DE097: ASL A
#_0DE098: ASL A
#_0DE099: ASL A

#_0DE09A: TAX
#_0DE09B: PHX

;---------------------------------------------------------------------------------------------------

#_0DE09C: LDY.w #$0012

.next_top_tile
#_0DE09F: LDA.w .border_tile_top,Y
#_0DE0A2: STA.w $12FC,X

#_0DE0A5: DEX
#_0DE0A6: DEX

#_0DE0A7: DEY
#_0DE0A8: DEY
#_0DE0A9: BPL .next_top_tile

;---------------------------------------------------------------------------------------------------

#_0DE0AB: PLX

#_0DE0AC: LDY.w #$0012

.next_row_tile
#_0DE0AF: LDA.w .border_tile_row,Y
#_0DE0B2: STA.w $133C,X

#_0DE0B5: DEX
#_0DE0B6: DEX

#_0DE0B7: DEY
#_0DE0B8: DEY
#_0DE0B9: BPL .next_row_tile

;---------------------------------------------------------------------------------------------------

#_0DE0BB: LDX.w #$0012

.next_bottom_tile
#_0DE0BE: LDA.w .border_tile_bottom,X
#_0DE0C1: STA.w $176A,X

#_0DE0C4: DEX
#_0DE0C5: DEX
#_0DE0C6: BPL .next_bottom_tile

;---------------------------------------------------------------------------------------------------

#_0DE0C8: SEP #$30

#_0DE0CA: DEC.w $0205

#_0DE0CD: LDA.w $0205 ; useless, as it was already flagged
#_0DE0D0: BPL .not_fully_extended

#_0DE0D2: INC.w $0200

.not_fully_extended
#_0DE0D5: LDA.b #$01
#_0DE0D7: STA.b $17

#_0DE0D9: LDA.b #$22
#_0DE0DB: STA.w $0116

#_0DE0DE: RTS

;===================================================================================================

ItemMenu_BottleMenu:
#_0DE0DF: INC.w $0207

#_0DE0E2: LDA.b $F4
#_0DE0E4: AND.b #$10
#_0DE0E6: BEQ .dont_close_menu

#_0DE0E8: LDA.b #$12 ; SFX3.12
#_0DE0EA: STA.w $012F

#_0DE0ED: LDA.b #$05
#_0DE0EF: STA.w $0200

#_0DE0F2: BRA .continue

;---------------------------------------------------------------------------------------------------

.dont_close_menu
#_0DE0F4: LDA.b $F4
#_0DE0F6: AND.b #$03
#_0DE0F8: BEQ .continue

#_0DE0FA: LDA.b $F4
#_0DE0FC: AND.b #$02
#_0DE0FE: BEQ .not_left

#_0DE100: JSR ItemMenu_LookForItem_Left

#_0DE103: BRA .handle_lr

.not_left
#_0DE105: LDA.b $F4
#_0DE107: AND.b #$01
#_0DE109: BEQ .handle_lr

#_0DE10B: JSR ItemMenu_LookForItem_Right

.handle_lr
#_0DE10E: LDA.b #$10
#_0DE110: STA.w $0207

#_0DE113: LDA.b #$20 ; SFX3.20
#_0DE115: STA.w $012F

#_0DE118: LDA.b #$01
#_0DE11A: JSR ItemMenu_GetPaletteMask

#_0DE11D: JSR ItemMenu_DrawYItems
#_0DE120: JSR ItemMenu_DrawEquippedYItem

#_0DE123: INC.w $0200
#_0DE126: STZ.w $0205

#_0DE129: RTS

;---------------------------------------------------------------------------------------------------

.continue
#_0DE12A: JSR ItemMenu_BottleMenu_Update

#_0DE12D: LDA.b $F4
#_0DE12F: AND.b #$0C
#_0DE131: BNE .pressed_up_or_down

#_0DE133: RTS

;---------------------------------------------------------------------------------------------------

.pressed_up_or_down
#_0DE134: LDA.l $7EF34F
#_0DE138: DEC A
#_0DE139: STA.b $00
#_0DE13B: STA.b $02

#_0DE13D: LDA.b $F4
#_0DE13F: AND.b #$08
#_0DE141: BEQ .down_one

;---------------------------------------------------------------------------------------------------

.up_one
#_0DE143: LDA.b $00
#_0DE145: DEC A
#_0DE146: AND.b #$03
#_0DE148: STA.b $00

#_0DE14A: TAX
#_0DE14B: LDA.l $7EF35C,X

#_0DE14F: BEQ .up_one
#_0DE151: BRA .use_bottle

;---------------------------------------------------------------------------------------------------

.down_one
#_0DE153: LDA.b $00
#_0DE155: INC A
#_0DE156: AND.b #$03
#_0DE158: STA.b $00

#_0DE15A: TAX
#_0DE15B: LDA.l $7EF35C,X

#_0DE15F: BEQ .down_one

;---------------------------------------------------------------------------------------------------

.use_bottle
; Was it the same bottle we already had?
#_0DE161: LDA.b $00
#_0DE163: CMP.b $02
#_0DE165: BEQ .exit

#_0DE167: INC A
#_0DE168: STA.l $7EF34F

#_0DE16C: LDA.b #$10
#_0DE16E: STA.w $0207

#_0DE171: LDA.b #$20 ; SFX3.20
#_0DE173: STA.w $012F

.exit
#_0DE176: RTS

;===================================================================================================

BottleMenuCursorPosition:
#_0DE177: dw $0088
#_0DE179: dw $0188
#_0DE17B: dw $0288
#_0DE17D: dw $0388

;===================================================================================================

ItemMenu_BottleMenu_Update:
#_0DE17F: REP #$30

#_0DE181: LDX.w #$0000
#_0DE184: LDY.w #$0007
#_0DE187: LDA.w #$24F5

.empty_next
#_0DE18A: STA.w $132C,X
#_0DE18D: STA.w $136C,X
#_0DE190: STA.w $13AC,X
#_0DE193: STA.w $13EC,X
#_0DE196: STA.w $142C,X
#_0DE199: STA.w $146C,X
#_0DE19C: STA.w $14AC,X
#_0DE19F: STA.w $14EC,X
#_0DE1A2: STA.w $152C,X
#_0DE1A5: STA.w $156C,X
#_0DE1A8: STA.w $15AC,X
#_0DE1AB: STA.w $15EC,X
#_0DE1AE: STA.w $162C,X
#_0DE1B1: STA.w $166C,X
#_0DE1B4: STA.w $16AC,X
#_0DE1B7: STA.w $16EC,X
#_0DE1BA: STA.w $172C,X

#_0DE1BD: INX
#_0DE1BE: INX

#_0DE1BF: DEY
#_0DE1C0: BPL .empty_next

;---------------------------------------------------------------------------------------------------

; Bottle 1
#_0DE1C2: LDA.w #$1372
#_0DE1C5: STA.b $00

#_0DE1C7: LDA.l $7EF35C
#_0DE1CB: AND.w #$00FF
#_0DE1CE: STA.b $02

#_0DE1D0: LDA.w #ItemMenu_ItemIcons_bottles
#_0DE1D3: STA.b $04

#_0DE1D5: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

; Bottle 2
#_0DE1D8: LDA.w #$1472
#_0DE1DB: STA.b $00

#_0DE1DD: LDA.l $7EF35D
#_0DE1E1: AND.w #$00FF
#_0DE1E4: STA.b $02

#_0DE1E6: LDA.w #ItemMenu_ItemIcons_bottles
#_0DE1E9: STA.b $04

#_0DE1EB: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

; Bottle 3
#_0DE1EE: LDA.w #$1572
#_0DE1F1: STA.b $00

#_0DE1F3: LDA.l $7EF35E
#_0DE1F7: AND.w #$00FF
#_0DE1FA: STA.b $02

#_0DE1FC: LDA.w #ItemMenu_ItemIcons_bottles
#_0DE1FF: STA.b $04

#_0DE201: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

; Bottle 4
#_0DE204: LDA.w #$1672
#_0DE207: STA.b $00

#_0DE209: LDA.l $7EF35F
#_0DE20D: AND.w #$00FF
#_0DE210: STA.b $02

#_0DE212: LDA.w #ItemMenu_ItemIcons_bottles
#_0DE215: STA.b $04

#_0DE217: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE21A: LDA.w #$1408
#_0DE21D: STA.b $00

#_0DE21F: LDA.l $7EF34F
#_0DE223: AND.w #$00FF
#_0DE226: TAX
#_0DE227: BNE .some_bottle_selected

#_0DE229: LDA.w #$0000
#_0DE22C: BRA .continue

.some_bottle_selected
#_0DE22E: LDA.l $7EF35B,X
#_0DE232: AND.w #$00FF

.continue
#_0DE235: STA.b $02

#_0DE237: LDA.w #ItemMenu_ItemIcons_bottles
#_0DE23A: STA.b $04

#_0DE23C: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE23F: LDA.w $0202
#_0DE242: AND.w #$00FF
#_0DE245: DEC A
#_0DE246: ASL A
#_0DE247: TAX

#_0DE248: LDY.w ItemMenu_CursorPositions,X

#_0DE24B: LDA.w $0000,Y
#_0DE24E: STA.w $11B2

#_0DE251: LDA.w $0002,Y
#_0DE254: STA.w $11B4

#_0DE257: LDA.w $0040,Y
#_0DE25A: STA.w $11F2

#_0DE25D: LDA.w $0042,Y
#_0DE260: STA.w $11F4

#_0DE263: LDA.l $7EF34F
#_0DE267: DEC A
#_0DE268: AND.w #$00FF
#_0DE26B: ASL A
#_0DE26C: TAY

#_0DE26D: LDA.w BottleMenuCursorPosition,Y
#_0DE270: TAY

#_0DE271: LDA.w $0207
#_0DE274: AND.w #$0010
#_0DE277: BEQ .exit

#_0DE279: LDA.w #$3C61
#_0DE27C: STA.w $12AA,Y

#_0DE27F: ORA.w #$4000
#_0DE282: STA.w $12AC,Y

#_0DE285: LDA.w #$3C70
#_0DE288: STA.w $12E8,Y

#_0DE28B: ORA.w #$4000
#_0DE28E: STA.w $12EE,Y

#_0DE291: LDA.w #$BC70
#_0DE294: STA.w $1328,Y

#_0DE297: ORA.w #$4000
#_0DE29A: STA.w $132E,Y

#_0DE29D: LDA.w #$BC61
#_0DE2A0: STA.w $136A,Y

#_0DE2A3: ORA.w #$4000
#_0DE2A6: STA.w $136C,Y

#_0DE2A9: LDA.w #$3C60
#_0DE2AC: STA.w $12A8,Y

#_0DE2AF: ORA.w #$4000
#_0DE2B2: STA.w $12AE,Y

#_0DE2B5: ORA.w #$8000
#_0DE2B8: STA.w $136E,Y

#_0DE2BB: EOR.w #$4000
#_0DE2BE: STA.w $1368,Y

;---------------------------------------------------------------------------------------------------

#_0DE2C1: LDA.l $7EF34F
#_0DE2C5: AND.w #$00FF
#_0DE2C8: BEQ .exit

#_0DE2CA: TAX

#_0DE2CB: LDA.l $7EF35B,X
#_0DE2CF: AND.w #$00FF
#_0DE2D2: DEC A
#_0DE2D3: ASL A ; x32
#_0DE2D4: ASL A
#_0DE2D5: ASL A
#_0DE2D6: ASL A
#_0DE2D7: ASL A
#_0DE2D8: TAX

#_0DE2D9: LDY.w #$0000

.next_tile
#_0DE2DC: LDA.w ItemMenu_Names_Bottles+$00,X
#_0DE2DF: STA.w $122C,Y

#_0DE2E2: LDA.w ItemMenu_Names_Bottles+$10,X
#_0DE2E5: STA.w $126C,Y

#_0DE2E8: INX
#_0DE2E9: INX

#_0DE2EA: INY
#_0DE2EB: INY
#_0DE2EC: CPY.w #$0010
#_0DE2EF: BCC .next_tile

.exit
#_0DE2F1: SEP #$30

#_0DE2F3: LDA.b #$01
#_0DE2F5: STA.b $17

#_0DE2F7: LDA.b #$22
#_0DE2F9: STA.w $0116

#_0DE2FC: RTS

;===================================================================================================

ItemMenu_BottleMenu_Close:
#_0DE2FD: REP #$30

#_0DE2FF: LDA.w $0205
#_0DE302: AND.w #$00FF

#_0DE305: ASL A ; x64
#_0DE306: ASL A
#_0DE307: ASL A
#_0DE308: ASL A
#_0DE309: ASL A
#_0DE30A: ASL A

#_0DE30B: TAX

#_0DE30C: LDA.w #$207F
#_0DE30F: STA.w $12EA,X
#_0DE312: STA.w $12EC,X
#_0DE315: STA.w $12EE,X
#_0DE318: STA.w $12F0,X
#_0DE31B: STA.w $12F2,X
#_0DE31E: STA.w $12F4,X
#_0DE321: STA.w $12F6,X
#_0DE324: STA.w $12F8,X
#_0DE327: STA.w $12FA,X
#_0DE32A: STA.w $12FC,X

#_0DE32D: SEP #$30

#_0DE32F: INC.w $0205

#_0DE332: LDA.w $0205
#_0DE335: CMP.b #$13
#_0DE337: BNE .still_closing

#_0DE339: INC.w $0200

.still_closing
#_0DE33C: LDA.b #$01
#_0DE33E: STA.b $17

#_0DE340: LDA.b #$22
#_0DE342: STA.w $0116

#_0DE345: RTS

;===================================================================================================

ItemMenu_BottleMenu_RestoreMenu:
#_0DE346: JSR ItemMenu_DrawProgressIcons
#_0DE349: JSR ItemMenu_DrawMoonPearl

#_0DE34C: JSR NotAsGoodAsSMT029032

#_0DE34F: LDA.b #$01
#_0DE351: JSR ItemMenu_GetPaletteMask

#_0DE354: JSR ItemMenu_DrawEquipment
#_0DE357: JSR ItemMenu_DrawShield
#_0DE35A: JSR ItemMenu_DrawMail

#_0DE35D: JSR ItemMenu_DrawMapAndBigKey
#_0DE360: JSR ItemMenu_DrawCompass

#_0DE363: LDA.b #$04
#_0DE365: STA.w $0200

#_0DE368: LDA.b #$01
#_0DE36A: STA.b $17

#_0DE36C: LDA.b #$22
#_0DE36E: STA.w $0116

#_0DE371: RTS

;===================================================================================================

ItemMenu_DrawItem:
#_0DE372: LDA.b $02
#_0DE374: ASL A
#_0DE375: ASL A
#_0DE376: ASL A
#_0DE377: TAY

#_0DE378: LDX.b $00

#_0DE37A: LDA.b ($04),Y
#_0DE37C: STA.w $0000,X

#_0DE37F: INY
#_0DE380: INY

#_0DE381: LDA.b ($04),Y
#_0DE383: STA.w $0002,X

#_0DE386: INY
#_0DE387: INY

#_0DE388: LDA.b ($04),Y
#_0DE38A: STA.w $0040,X

#_0DE38D: INY
#_0DE38E: INY

#_0DE38F: LDA.b ($04),Y
#_0DE391: STA.w $0042,X

#_0DE394: RTS

;===================================================================================================

SearchForEquippedItem_long:
#_0DE395: JSR SearchForEquippedItem

#_0DE398: RTL

;===================================================================================================

SearchForEquippedItem:
#_0DE399: SEP #$30

#_0DE39B: LDX.b #$12

#_0DE39D: LDA.l $7EF340

.next_check
#_0DE3A1: ORA.l $7EF341,X

#_0DE3A5: DEX
#_0DE3A6: BPL .next_check

#_0DE3A8: CMP.b #$00
#_0DE3AA: BNE .item_found

#_0DE3AC: STZ.w $0202
#_0DE3AF: STZ.w $0203
#_0DE3B2: STZ.w $0204

.exit
#_0DE3B5: RTS

;---------------------------------------------------------------------------------------------------

.item_found
#_0DE3B6: LDA.w $0202
#_0DE3B9: BNE .already_equipped

#_0DE3BB: LDA.b #$01
#_0DE3BD: STA.w $0202

.already_equipped
#_0DE3C0: JSR ItemMenu_CheckForOwnership
#_0DE3C3: BCS .exit

#_0DE3C5: JMP.w ItemMenu_LookForItem_Right

;===================================================================================================

ItemMenu_GetPaletteMask:
#_0DE3C8: SEP #$30

#_0DE3CA: LDX.b #$E3

#_0DE3CC: CMP.b #$00
#_0DE3CE: BEQ .pal0

#_0DE3D0: LDX.b #$FF

.pal0
#_0DE3D2: STX.b $01

#_0DE3D4: LDA.b #$FF
#_0DE3D6: STA.b $00

#_0DE3D8: RTS

;===================================================================================================

ItemMenu_DrawYItems:
#_0DE3D9: REP #$30

; draw menu corners
#_0DE3DB: LDA.w #$3CFB
#_0DE3DE: AND.b $00
#_0DE3E0: STA.w $1142

#_0DE3E3: ORA.w #$8000
#_0DE3E6: STA.w $14C2

#_0DE3E9: ORA.w #$4000
#_0DE3EC: STA.w $14E6

#_0DE3EF: EOR.w #$8000
#_0DE3F2: STA.w $1166

;---------------------------------------------------------------------------------------------------

; draw edges
#_0DE3F5: LDX.w #$0000
#_0DE3F8: LDY.w #$000C

.next_vertical_edge
#_0DE3FB: LDA.w #$3CFC
#_0DE3FE: AND.b $00
#_0DE400: STA.w $1182,X

#_0DE403: ORA.w #$4000
#_0DE406: STA.w $11A6,X

#_0DE409: TXA
#_0DE40A: CLC
#_0DE40B: ADC.w #$0040
#_0DE40E: TAX

#_0DE40F: DEY
#_0DE410: BPL .next_vertical_edge

;---------------------------------------------------------------------------------------------------

#_0DE412: LDX.w #$0000
#_0DE415: LDY.w #$0010

.next_horizontal_edge
#_0DE418: LDA.w #$3CF9
#_0DE41B: AND.b $00
#_0DE41D: STA.w $1144,X

#_0DE420: ORA.w #$8000
#_0DE423: STA.w $14C4,X

#_0DE426: INX
#_0DE427: INX

#_0DE428: DEY
#_0DE429: BPL .next_horizontal_edge

;---------------------------------------------------------------------------------------------------

; fill with black
#_0DE42B: LDX.w #$0000
#_0DE42E: LDY.w #$0010

#_0DE431: LDA.w #$24F5

.paint_it_black
#_0DE434: STA.w $1184,X
#_0DE437: STA.w $11C4,X
#_0DE43A: STA.w $1204,X
#_0DE43D: STA.w $1244,X
#_0DE440: STA.w $1284,X
#_0DE443: STA.w $12C4,X
#_0DE446: STA.w $1304,X
#_0DE449: STA.w $1344,X
#_0DE44C: STA.w $1384,X
#_0DE44F: STA.w $13C4,X
#_0DE452: STA.w $1404,X
#_0DE455: STA.w $1444,X
#_0DE458: STA.w $1484,X

#_0DE45B: INX
#_0DE45C: INX

#_0DE45D: DEY
#_0DE45E: BPL .paint_it_black

;---------------------------------------------------------------------------------------------------

; Y
#_0DE460: LDA.w #$3CF0
#_0DE463: STA.w $1184

#_0DE466: LDA.w #$3CF1
#_0DE469: STA.w $11C4

#_0DE46C: LDA.w #$246E
#_0DE46F: STA.w $1146

#_0DE472: LDA.w #$246F
#_0DE475: STA.w $1148

;---------------------------------------------------------------------------------------------------
; Draw each item
;---------------------------------------------------------------------------------------------------
#_0DE478: LDA.w #$11C8
#_0DE47B: STA.b $00

#_0DE47D: LDA.l $7EF340
#_0DE481: AND.w #$00FF
#_0DE484: STA.b $02

#_0DE486: LDA.w #ItemMenu_ItemIcons_bows
#_0DE489: STA.b $04

#_0DE48B: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE48E: LDA.w #$11CE
#_0DE491: STA.b $00

#_0DE493: LDA.l $7EF341
#_0DE497: AND.w #$00FF
#_0DE49A: STA.b $02

#_0DE49C: LDA.w #ItemMenu_ItemIcons_booms
#_0DE49F: STA.b $04

#_0DE4A1: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE4A4: LDA.w #$11D4
#_0DE4A7: STA.b $00

#_0DE4A9: LDA.l $7EF342
#_0DE4AD: AND.w #$00FF
#_0DE4B0: STA.b $02

#_0DE4B2: LDA.w #ItemMenu_ItemIcons_hook
#_0DE4B5: STA.b $04

#_0DE4B7: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE4BA: LDA.w #$11DA
#_0DE4BD: STA.b $00

#_0DE4BF: LDA.l $7EF343
#_0DE4C3: AND.w #$00FF
#_0DE4C6: BEQ .no_bombs

#_0DE4C8: LDA.w #$0001

.no_bombs
#_0DE4CB: STA.b $02

#_0DE4CD: LDA.w #ItemMenu_ItemIcons_bombs
#_0DE4D0: STA.b $04

#_0DE4D2: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE4D5: LDA.w #$11E0
#_0DE4D8: STA.b $00

#_0DE4DA: LDA.l $7EF344
#_0DE4DE: AND.w #$00FF
#_0DE4E1: STA.b $02

#_0DE4E3: LDA.w #ItemMenu_ItemIcons_powder
#_0DE4E6: STA.b $04

#_0DE4E8: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE4EB: LDA.w #$1288
#_0DE4EE: STA.b $00

#_0DE4F0: LDA.l $7EF345
#_0DE4F4: AND.w #$00FF
#_0DE4F7: STA.b $02

#_0DE4F9: LDA.w #ItemMenu_ItemIcons_fire_rod
#_0DE4FC: STA.b $04

#_0DE4FE: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE501: LDA.w #$128E
#_0DE504: STA.b $00

#_0DE506: LDA.l $7EF346
#_0DE50A: AND.w #$00FF
#_0DE50D: STA.b $02

#_0DE50F: LDA.w #ItemMenu_ItemIcons_ice_rod
#_0DE512: STA.b $04

#_0DE514: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE517: LDA.w #$1294
#_0DE51A: STA.b $00

#_0DE51C: LDA.l $7EF347
#_0DE520: AND.w #$00FF
#_0DE523: STA.b $02

#_0DE525: LDA.w #ItemMenu_ItemIcons_bombos
#_0DE528: STA.b $04

#_0DE52A: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE52D: LDA.w #$129A
#_0DE530: STA.b $00

#_0DE532: LDA.l $7EF348
#_0DE536: AND.w #$00FF
#_0DE539: STA.b $02

#_0DE53B: LDA.w #ItemMenu_ItemIcons_ether
#_0DE53E: STA.b $04

#_0DE540: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE543: LDA.w #$12A0
#_0DE546: STA.b $00

#_0DE548: LDA.l $7EF349
#_0DE54C: AND.w #$00FF
#_0DE54F: STA.b $02

#_0DE551: LDA.w #ItemMenu_ItemIcons_quake
#_0DE554: STA.b $04

#_0DE556: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE559: LDA.w #$1348
#_0DE55C: STA.b $00

#_0DE55E: LDA.l $7EF34A
#_0DE562: AND.w #$00FF
#_0DE565: STA.b $02

#_0DE567: LDA.w #ItemMenu_ItemIcons_lamp
#_0DE56A: STA.b $04

#_0DE56C: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE56F: LDA.w #$134E
#_0DE572: STA.b $00

#_0DE574: LDA.l $7EF34B
#_0DE578: AND.w #$00FF
#_0DE57B: STA.b $02

#_0DE57D: LDA.w #ItemMenu_ItemIcons_hammer
#_0DE580: STA.b $04

#_0DE582: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE585: LDA.w #$1354
#_0DE588: STA.b $00

#_0DE58A: LDA.l $7EF34C
#_0DE58E: AND.w #$00FF
#_0DE591: STA.b $02

#_0DE593: LDA.w #ItemMenu_ItemIcons_flute
#_0DE596: STA.b $04

#_0DE598: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE59B: LDA.w #$135A
#_0DE59E: STA.b $00

#_0DE5A0: LDA.l $7EF34D
#_0DE5A4: AND.w #$00FF
#_0DE5A7: STA.b $02

#_0DE5A9: LDA.w #ItemMenu_ItemIcons_net
#_0DE5AC: STA.b $04

#_0DE5AE: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE5B1: LDA.w #$1360
#_0DE5B4: STA.b $00

#_0DE5B6: LDA.l $7EF34E
#_0DE5BA: AND.w #$00FF
#_0DE5BD: STA.b $02

#_0DE5BF: LDA.w #ItemMenu_ItemIcons_book
#_0DE5C2: STA.b $04

#_0DE5C4: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE5C7: LDA.w #$1408
#_0DE5CA: STA.b $00

#_0DE5CC: LDA.l $7EF34F
#_0DE5D0: AND.w #$00FF
#_0DE5D3: TAX

#_0DE5D4: BNE .bottle_selected

#_0DE5D6: LDA.w #$0000

#_0DE5D9: BRA .bottle_draw

.bottle_selected
#_0DE5DB: LDA.l $7EF35B,X
#_0DE5DF: AND.w #$00FF

.bottle_draw
#_0DE5E2: STA.b $02

#_0DE5E4: LDA.w #ItemMenu_ItemIcons_bottles
#_0DE5E7: STA.b $04

#_0DE5E9: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE5EC: LDA.w #$140E
#_0DE5EF: STA.b $00

#_0DE5F1: LDA.l $7EF350
#_0DE5F5: AND.w #$00FF
#_0DE5F8: STA.b $02

#_0DE5FA: LDA.w #ItemMenu_ItemIcons_somaria
#_0DE5FD: STA.b $04

#_0DE5FF: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE602: LDA.w #$1414
#_0DE605: STA.b $00

#_0DE607: LDA.l $7EF351
#_0DE60B: AND.w #$00FF
#_0DE60E: STA.b $02

#_0DE610: LDA.w #ItemMenu_ItemIcons_byrna
#_0DE613: STA.b $04

#_0DE615: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE618: LDA.w #$141A
#_0DE61B: STA.b $00

#_0DE61D: LDA.l $7EF352
#_0DE621: AND.w #$00FF
#_0DE624: STA.b $02

#_0DE626: LDA.w #ItemMenu_ItemIcons_cape
#_0DE629: STA.b $04

#_0DE62B: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE62E: LDA.w #$1420
#_0DE631: STA.b $00

#_0DE633: LDA.l $7EF353
#_0DE637: AND.w #$00FF
#_0DE63A: STA.b $02

#_0DE63C: LDA.w #ItemMenu_ItemIcons_mirror
#_0DE63F: STA.b $04

#_0DE641: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE644: SEP #$30

#_0DE646: RTS

;===================================================================================================

ItemMenu_DrawEquippedItemBox:
#_0DE647: REP #$30

#_0DE649: LDA.w #$3CFB
#_0DE64C: AND.b $00
#_0DE64E: STA.w $116A

#_0DE651: ORA.w #$8000
#_0DE654: STA.w $12AA

#_0DE657: ORA.w #$4000
#_0DE65A: STA.w $12BC

#_0DE65D: EOR.w #$8000
#_0DE660: STA.w $117C

;---------------------------------------------------------------------------------------------------

#_0DE663: LDX.w #$0000
#_0DE666: LDY.w #$0003

.next_vertical
#_0DE669: LDA.w #$3CFC
#_0DE66C: AND.b $00
#_0DE66E: STA.w $11AA,X

#_0DE671: ORA.w #$4000
#_0DE674: STA.w $11BC,X

#_0DE677: TXA
#_0DE678: CLC
#_0DE679: ADC.w #$0040
#_0DE67C: TAX

#_0DE67D: DEY
#_0DE67E: BPL .next_vertical

;---------------------------------------------------------------------------------------------------

#_0DE680: LDX.w #$0000
#_0DE683: LDY.w #$0007

.next_horizontal
#_0DE686: LDA.w #$3CF9
#_0DE689: AND.b $00
#_0DE68B: STA.w $116C,X

#_0DE68E: ORA.w #$8000
#_0DE691: STA.w $12AC,X

#_0DE694: INX
#_0DE695: INX

#_0DE696: DEY
#_0DE697: BPL .next_horizontal

;---------------------------------------------------------------------------------------------------

#_0DE699: LDX.w #$0000
#_0DE69C: LDY.w #$0007
#_0DE69F: LDA.w #$24F5

.paint_it_black
#_0DE6A2: STA.w $11AC,X
#_0DE6A5: STA.w $11EC,X
#_0DE6A8: STA.w $122C,X
#_0DE6AB: STA.w $126C,X

#_0DE6AE: INX
#_0DE6AF: INX

#_0DE6B0: DEY
#_0DE6B1: BPL .paint_it_black

#_0DE6B3: SEP #$30

#_0DE6B5: RTS

;===================================================================================================

ItemMenu_DrawAbilityText:
#_0DE6B6: REP #$30

#_0DE6B8: LDX.w #$0000
#_0DE6BB: LDY.w #$0010
#_0DE6BE: LDA.w #$24F5

.paint_it_black
#_0DE6C1: STA.w $1584,X
#_0DE6C4: STA.w $15C4,X
#_0DE6C7: STA.w $1604,X
#_0DE6CA: STA.w $1644,X
#_0DE6CD: STA.w $1684,X
#_0DE6D0: STA.w $16C4,X
#_0DE6D3: STA.w $1704,X

#_0DE6D6: INX
#_0DE6D7: INX

#_0DE6D8: DEY
#_0DE6D9: BPL .paint_it_black

;---------------------------------------------------------------------------------------------------

#_0DE6DB: LDA.l $7EF378
#_0DE6DF: AND.w #$FF00
#_0DE6E2: STA.b $02

#_0DE6E4: LDA.w #$0003
#_0DE6E7: STA.b $04

#_0DE6E9: LDY.w #$0000
#_0DE6EC: TYX

;---------------------------------------------------------------------------------------------------

.next_line
#_0DE6ED: LDA.w #$0004
#_0DE6F0: STA.b $06

;---------------------------------------------------------------------------------------------------

.next_ability
#_0DE6F2: ASL.b $02
#_0DE6F4: BCC .lacking_ability

#_0DE6F6: LDA.w ItemMenu_AbilityText_main_jumble+0,X
#_0DE6F9: STA.w $1586,Y

#_0DE6FC: LDA.w ItemMenu_AbilityText_main_jumble+2,X
#_0DE6FF: STA.w $1588,Y

#_0DE702: LDA.w ItemMenu_AbilityText_main_jumble+4,X
#_0DE705: STA.w $158A,Y

#_0DE708: LDA.w ItemMenu_AbilityText_main_jumble+6,X
#_0DE70B: STA.w $158C,Y

#_0DE70E: LDA.w ItemMenu_AbilityText_main_jumble+8,X
#_0DE711: STA.w $158E,Y

#_0DE714: LDA.w ItemMenu_AbilityText_main_jumble+10,X
#_0DE717: STA.w $15C6,Y

#_0DE71A: LDA.w ItemMenu_AbilityText_main_jumble+12,X
#_0DE71D: STA.w $15C8,Y

#_0DE720: LDA.w ItemMenu_AbilityText_main_jumble+14,X
#_0DE723: STA.w $15CA,Y

#_0DE726: LDA.w ItemMenu_AbilityText_main_jumble+16,X
#_0DE729: STA.w $15CC,Y

#_0DE72C: LDA.w ItemMenu_AbilityText_main_jumble+18,X
#_0DE72F: STA.w $15CE,Y

;---------------------------------------------------------------------------------------------------

.lacking_ability
#_0DE732: TXA
#_0DE733: CLC
#_0DE734: ADC.w #$0014
#_0DE737: TAX

#_0DE738: TYA
#_0DE739: CLC
#_0DE73A: ADC.w #$000A
#_0DE73D: TAY

#_0DE73E: DEC.b $06
#_0DE740: BNE .next_ability

;---------------------------------------------------------------------------------------------------

#_0DE742: TYA
#_0DE743: CLC
#_0DE744: ADC.w #$005A
#_0DE747: TAY

#_0DE748: DEC.b $04
#_0DE74A: BNE .next_line

;---------------------------------------------------------------------------------------------------

#_0DE74C: LDA.w #$24FB
#_0DE74F: AND.b $00
#_0DE751: STA.w $1542

#_0DE754: ORA.w #$8000
#_0DE757: STA.w $1742

#_0DE75A: ORA.w #$4000
#_0DE75D: STA.w $1766

#_0DE760: EOR.w #$8000
#_0DE763: STA.w $1566

;---------------------------------------------------------------------------------------------------

#_0DE766: LDX.w #$0000
#_0DE769: LDY.w #$0006

.next_vertical
#_0DE76C: LDA.w #$24FC
#_0DE76F: AND.b $00
#_0DE771: STA.w $1582,X

#_0DE774: ORA.w #$4000
#_0DE777: STA.w $15A6,X

#_0DE77A: TXA
#_0DE77B: CLC
#_0DE77C: ADC.w #$0040
#_0DE77F: TAX

#_0DE780: DEY
#_0DE781: BPL .next_vertical

;===================================================================================================

#_0DE783: LDX.w #$0000
#_0DE786: LDY.w #$0010

.next_horizontal
#_0DE789: LDA.w #$24F9
#_0DE78C: AND.b $00
#_0DE78E: STA.w $1544,X

#_0DE791: ORA.w #$8000
#_0DE794: STA.w $1744,X

#_0DE797: INX
#_0DE798: INX

#_0DE799: DEY
#_0DE79A: BPL .next_horizontal

;---------------------------------------------------------------------------------------------------

#_0DE79C: LDA.w #$A4F0
#_0DE79F: STA.w $1584

#_0DE7A2: LDA.w #$24F2
#_0DE7A5: STA.w $15C4

#_0DE7A8: LDA.w #$2482
#_0DE7AB: STA.w $1546

#_0DE7AE: LDA.w #$2483
#_0DE7B1: STA.w $1548

#_0DE7B4: SEP #$30

#_0DE7B6: RTS

;===================================================================================================

ItemMenu_DrawAbilityIcons:
#_0DE7B7: REP #$30

;---------------------------------------------------------------------------------------------------

#_0DE7B9: LDA.w #$16D0
#_0DE7BC: STA.b $00

#_0DE7BE: LDA.l $7EF354
#_0DE7C2: AND.w #$00FF
#_0DE7C5: STA.b $02

#_0DE7C7: LDA.w #ItemMenu_ItemIcons_gloves
#_0DE7CA: STA.b $04

#_0DE7CC: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE7CF: LDA.w #$16C8
#_0DE7D2: STA.b $00

#_0DE7D4: LDA.l $7EF355
#_0DE7D8: AND.w #$00FF
#_0DE7DB: STA.b $02

#_0DE7DD: LDA.w #ItemMenu_ItemIcons_boots
#_0DE7E0: STA.b $04

#_0DE7E2: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE7E5: LDA.w #$16D8
#_0DE7E8: STA.b $00

#_0DE7EA: LDA.l $7EF356
#_0DE7EE: AND.w #$00FF
#_0DE7F1: STA.b $02

#_0DE7F3: LDA.w #ItemMenu_ItemIcons_flippers
#_0DE7F6: STA.b $04

#_0DE7F8: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DE7FB: LDA.l $7EF354
#_0DE7FF: AND.w #$00FF
#_0DE802: BEQ .exit

#_0DE804: CMP.w #$0001
#_0DE807: BNE .titans_mitts

.power_glove
#_0DE809: LDA.w #$0000
#_0DE80C: JSR ItemMenu_AbilityText_ChangeLift

#_0DE80F: BRA .exit

.titans_mitts
#_0DE811: LDA.w #$0001
#_0DE814: JSR ItemMenu_AbilityText_ChangeLift

.exit
#_0DE817: SEP #$30

#_0DE819: RTS

;===================================================================================================
; Changes our ability text to LIFT2 (A=0000) or LIFT3 (A=0001)
;===================================================================================================
ItemMenu_AbilityText_ChangeLift:
#_0DE81A: STA.b $00 ; X = (4*A+1)*4 = 20*A

#_0DE81C: ASL A
#_0DE81D: ASL A
#_0DE81E: ADC.b $00
#_0DE820: ASL A
#_0DE821: ASL A
#_0DE822: TAX

;---------------------------------------------------------------------------------------------------

#_0DE823: LDA.w ItemMenu_AbilityText_lifts+0,X
#_0DE826: STA.w $1586

#_0DE829: LDA.w ItemMenu_AbilityText_lifts+2,X
#_0DE82C: STA.w $1588

#_0DE82F: LDA.w ItemMenu_AbilityText_lifts+4,X
#_0DE832: STA.w $158A

#_0DE835: LDA.w ItemMenu_AbilityText_lifts+6,X
#_0DE838: STA.w $158C

#_0DE83B: LDA.w ItemMenu_AbilityText_lifts+8,X
#_0DE83E: STA.w $158E

#_0DE841: LDA.w ItemMenu_AbilityText_lifts+10,X
#_0DE844: STA.w $15C6

#_0DE847: LDA.w ItemMenu_AbilityText_lifts+12,X
#_0DE84A: STA.w $15C8

#_0DE84D: LDA.w ItemMenu_AbilityText_lifts+14,X
#_0DE850: STA.w $15CA

#_0DE853: LDA.w ItemMenu_AbilityText_lifts+16,X
#_0DE856: STA.w $15CC

#_0DE859: LDA.w ItemMenu_AbilityText_lifts+18,X
#_0DE85C: STA.w $15CE

#_0DE85F: RTS

;===================================================================================================
; Data for blank pendant and crystal windows
;===================================================================================================
ItemMenu_ItemIcons_PendantWindow:
.row0
#_0DE860: dw $28FB, $28F9, $28F9, $28F9, $28F9
#_0DE86A: dw $28F9, $28F9, $28F9, $28F9, $68FB

.row1
#_0DE874: dw $28FC, $2521, $2522, $2523, $2524
#_0DE87E: dw $253F, $24F5, $24F5, $24F5, $68FC

.row2
#_0DE888: dw $28FC, $24F5, $24F5, $24F5, $24F5
#_0DE892: dw $24F5, $24F5, $24F5, $24F5, $68FC

.row3
#_0DE89C: dw $28FC, $24F5, $24F5, $24F5, $213B
#_0DE8A6: dw $213C, $24F5, $24F5, $24F5, $68FC

.row4
#_0DE8B0: dw $28FC, $24F5, $24F5, $24F5, $213D
#_0DE8BA: dw $213E, $24F5, $24F5, $24F5, $68FC

.row5
#_0DE8C4: dw $28FC, $24F5, $24F5, $24F5, $24F5
#_0DE8CE: dw $24F5, $24F5, $24F5, $24F5, $68FC

.row6
#_0DE8D8: dw $28FC, $24F5, $213B, $213C, $24F5
#_0DE8E2: dw $24F5, $213B, $213C, $24F5, $68FC

.row7
#_0DE8EC: dw $28FC, $24F5, $213D, $213E, $24F5
#_0DE8F6: dw $24F5, $213D, $213E, $24F5, $68FC

.row8
#_0DE900: dw $A8FB, $A8F9, $A8F9, $A8F9, $A8F9
#_0DE90A: dw $A8F9, $A8F9, $A8F9, $A8F9, $E8FB

;===================================================================================================

ItemMenu_ItemIcons_CrystalWindow:
.row0
#_0DE914: dw $28FB, $28F9, $28F9, $28F9, $28F9
#_0DE91E: dw $28F9, $28F9, $28F9, $28F9, $68FB

.row1
#_0DE928: dw $28FC, $252F, $2534, $2535, $2536
#_0DE932: dw $2537, $24F5, $24F5, $24F5, $68FC

.row2
#_0DE93C: dw $28FC, $24F5, $24F5, $24F5, $24F5
#_0DE946: dw $24F5, $24F5, $24F5, $24F5, $68FC

.row3
#_0DE950: dw $28FC, $24F5, $24F5, $3146, $3147
#_0DE95A: dw $3146, $3147, $24F5, $24F5, $68FC

.row4
#_0DE964: dw $28FC, $24F5, $24F5, $24F5, $24F5
#_0DE96E: dw $24F5, $24F5, $24F5, $24F5, $68FC

.row5
#_0DE978: dw $28FC, $24F5, $3146, $3147, $3146
#_0DE982: dw $3147, $3146, $3147, $24F5, $68FC

.row6
#_0DE98C: dw $28FC, $24F5, $24F5, $24F5, $24F5
#_0DE996: dw $24F5, $24F5, $24F5, $24F5, $68FC

.row7
#_0DE9A0: dw $28FC, $24F5, $24F5, $3146, $3147
#_0DE9AA: dw $3146, $3147, $24F5, $24F5, $68FC

.row8
#_0DE9B4: dw $A8FB, $A8F9, $A8F9, $A8F9, $A8F9
#_0DE9BE: dw $A8F9, $A8F9, $A8F9, $A8F9, $E8FB

;===================================================================================================
; Draws dungeon prizes, depending on our map marker
;===================================================================================================
ItemMenu_DrawProgressIcons:
#_0DE9C8: LDA.l $7EF3C5
#_0DE9CC: CMP.b #$03
#_0DE9CE: BCC ItemMenu_DrawPendants

#_0DE9D0: JMP.w ItemMenu_DrawCrystals

;===================================================================================================

ItemMenu_DrawPendants:
#_0DE9D3: REP #$30

#_0DE9D5: LDX.w #$0000

.next_row
#_0DE9D8: LDA.w ItemMenu_ItemIcons_PendantWindow_row0,X
#_0DE9DB: STA.w $12EA,X

#_0DE9DE: LDA.w ItemMenu_ItemIcons_PendantWindow_row1,X
#_0DE9E1: STA.w $132A,X

#_0DE9E4: LDA.w ItemMenu_ItemIcons_PendantWindow_row2,X
#_0DE9E7: STA.w $136A,X

#_0DE9EA: LDA.w ItemMenu_ItemIcons_PendantWindow_row3,X
#_0DE9ED: STA.w $13AA,X

#_0DE9F0: LDA.w ItemMenu_ItemIcons_PendantWindow_row4,X
#_0DE9F3: STA.w $13EA,X

#_0DE9F6: LDA.w ItemMenu_ItemIcons_PendantWindow_row5,X
#_0DE9F9: STA.w $142A,X

#_0DE9FC: LDA.w ItemMenu_ItemIcons_PendantWindow_row6,X
#_0DE9FF: STA.w $146A,X

#_0DEA02: LDA.w ItemMenu_ItemIcons_PendantWindow_row7,X
#_0DEA05: STA.w $14AA,X

#_0DEA08: LDA.w ItemMenu_ItemIcons_PendantWindow_row8,X
#_0DEA0B: STA.w $14EA,X

#_0DEA0E: INX
#_0DEA0F: INX
#_0DEA10: CPX.w #$0014
#_0DEA13: BCC .next_row

;---------------------------------------------------------------------------------------------------

#_0DEA15: LDA.w #$13B2
#_0DEA18: STA.b $00

#_0DEA1A: LDA.l $7EF374
#_0DEA1E: AND.w #$0001
#_0DEA21: STA.b $02

#_0DEA23: LDA.w #ItemMenu_ItemIcons_pendant_red
#_0DEA26: STA.b $04

#_0DEA28: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DEA2B: LDA.w #$146E
#_0DEA2E: STA.b $00
#_0DEA30: STZ.b $02

#_0DEA32: LDA.l $7EF374
#_0DEA36: AND.w #$0002
#_0DEA39: BEQ .missing_blue

#_0DEA3B: INC.b $02

.missing_blue
#_0DEA3D: LDA.w #ItemMenu_ItemIcons_pendant_blue
#_0DEA40: STA.b $04

#_0DEA42: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DEA45: LDA.w #$1476
#_0DEA48: STA.b $00
#_0DEA4A: STZ.b $02

#_0DEA4C: LDA.l $7EF374
#_0DEA50: AND.w #$0004
#_0DEA53: BEQ .missing_green

#_0DEA55: INC.b $02

.missing_green
#_0DEA57: LDA.w #ItemMenu_ItemIcons_pendant_green
#_0DEA5A: STA.b $04

#_0DEA5C: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DEA5F: SEP #$30

#_0DEA61: RTS

;===================================================================================================

ItemMenu_DrawCrystals:
#_0DEA62: REP #$30

#_0DEA64: LDX.w #$0000

.next_row
#_0DEA67: LDA.w ItemMenu_ItemIcons_CrystalWindow_row0,X
#_0DEA6A: STA.w $12EA,X

#_0DEA6D: LDA.w ItemMenu_ItemIcons_CrystalWindow_row1,X
#_0DEA70: STA.w $132A,X

#_0DEA73: LDA.w ItemMenu_ItemIcons_CrystalWindow_row2,X
#_0DEA76: STA.w $136A,X

#_0DEA79: LDA.w ItemMenu_ItemIcons_CrystalWindow_row3,X
#_0DEA7C: STA.w $13AA,X

#_0DEA7F: LDA.w ItemMenu_ItemIcons_CrystalWindow_row4,X
#_0DEA82: STA.w $13EA,X

#_0DEA85: LDA.w ItemMenu_ItemIcons_CrystalWindow_row5,X
#_0DEA88: STA.w $142A,X

#_0DEA8B: LDA.w ItemMenu_ItemIcons_CrystalWindow_row6,X
#_0DEA8E: STA.w $146A,X

#_0DEA91: LDA.w ItemMenu_ItemIcons_CrystalWindow_row7,X
#_0DEA94: STA.w $14AA,X

#_0DEA97: LDA.w ItemMenu_ItemIcons_CrystalWindow_row8,X
#_0DEA9A: STA.w $14EA,X

#_0DEA9D: INX
#_0DEA9E: INX
#_0DEA9F: CPX.w #$0014
#_0DEAA2: BCC .next_row

;---------------------------------------------------------------------------------------------------

#_0DEAA4: LDA.l $7EF37A
#_0DEAA8: AND.w #$0001
#_0DEAAB: BEQ .missing_crystal_6

#_0DEAAD: LDA.w #$2D44
#_0DEAB0: STA.w $13B0

#_0DEAB3: LDA.w #$2D45
#_0DEAB6: STA.w $13B2

;---------------------------------------------------------------------------------------------------

.missing_crystal_6
#_0DEAB9: LDA.l $7EF37A
#_0DEABD: AND.w #$0002
#_0DEAC0: BEQ .missing_crystal_1

#_0DEAC2: LDA.w #$2D44
#_0DEAC5: STA.w $13B4

#_0DEAC8: LDA.w #$2D45
#_0DEACB: STA.w $13B6

;---------------------------------------------------------------------------------------------------

.missing_crystal_1
#_0DEACE: LDA.l $7EF37A
#_0DEAD2: AND.w #$0004
#_0DEAD5: BEQ .missing_crystal_5

#_0DEAD7: LDA.w #$2D44
#_0DEADA: STA.w $142E

#_0DEADD: LDA.w #$2D45
#_0DEAE0: STA.w $1430

;---------------------------------------------------------------------------------------------------

.missing_crystal_5
#_0DEAE3: LDA.l $7EF37A
#_0DEAE7: AND.w #$0008
#_0DEAEA: BEQ .missing_crystal_7

#_0DEAEC: LDA.w #$2D44
#_0DEAEF: STA.w $1432

#_0DEAF2: LDA.w #$2D45
#_0DEAF5: STA.w $1434

;---------------------------------------------------------------------------------------------------

.missing_crystal_7
#_0DEAF8: LDA.l $7EF37A
#_0DEAFC: AND.w #$0010
#_0DEAFF: BEQ .missing_crystal_2

#_0DEB01: LDA.w #$2D44
#_0DEB04: STA.w $1436

#_0DEB07: LDA.w #$2D45
#_0DEB0A: STA.w $1438

;---------------------------------------------------------------------------------------------------

.missing_crystal_2
#_0DEB0D: LDA.l $7EF37A
#_0DEB11: AND.w #$0020
#_0DEB14: BEQ .missing_crystal_4

#_0DEB16: LDA.w #$2D44
#_0DEB19: STA.w $14B0

#_0DEB1C: LDA.w #$2D45
#_0DEB1F: STA.w $14B2

;---------------------------------------------------------------------------------------------------

.missing_crystal_4
#_0DEB22: LDA.l $7EF37A
#_0DEB26: AND.w #$0040
#_0DEB29: BEQ .missing_crystal_3

#_0DEB2B: LDA.w #$2D44
#_0DEB2E: STA.w $14B4

#_0DEB31: LDA.w #$2D45
#_0DEB34: STA.w $14B6

;---------------------------------------------------------------------------------------------------

.missing_crystal_3
#_0DEB37: SEP #$30

#_0DEB39: RTS

;===================================================================================================

ItemMenu_DrawEquippedYItem:
#_0DEB3A: REP #$30

#_0DEB3C: LDA.w $0202
#_0DEB3F: AND.w #$00FF
#_0DEB42: DEC A
#_0DEB43: ASL A
#_0DEB44: TAX

#_0DEB45: LDY.w ItemMenu_CursorPositions,X

#_0DEB48: LDA.w $0000,Y
#_0DEB4B: STA.w $11B2

#_0DEB4E: LDA.w $0002,Y
#_0DEB51: STA.w $11B4

#_0DEB54: LDA.w $0040,Y
#_0DEB57: STA.w $11F2

#_0DEB5A: LDA.w $0042,Y
#_0DEB5D: STA.w $11F4

#_0DEB60: LDA.w $0207
#_0DEB63: AND.w #$0010
#_0DEB66: BEQ .dont_flicker

;---------------------------------------------------------------------------------------------------

; These "ROM" writes end up in the $1100 range
#_0DEB68: LDA.w #$3C61
#_0DEB6B: STA.w $0DFFC0,Y

#_0DEB6E: ORA.w #$4000
#_0DEB71: STA.w $0DFFC2,Y

#_0DEB74: LDA.w #$3C70
#_0DEB77: STA.w $0DFFFE,Y

#_0DEB7A: ORA.w #$4000
#_0DEB7D: STA.w $0004,Y

#_0DEB80: LDA.w #$BC70
#_0DEB83: STA.w $003E,Y

#_0DEB86: ORA.w #$4000
#_0DEB89: STA.w $0044,Y

#_0DEB8C: LDA.w #$BC61
#_0DEB8F: STA.w $0080,Y

#_0DEB92: ORA.w #$4000
#_0DEB95: STA.w $0082,Y

#_0DEB98: LDA.w #$3C60
#_0DEB9B: STA.w $0DFFBE,Y

#_0DEB9E: ORA.w #$4000
#_0DEBA1: STA.w $0DFFC4,Y

#_0DEBA4: ORA.w #$8000
#_0DEBA7: STA.w $0084,Y

#_0DEBAA: EOR.w #$4000
#_0DEBAD: STA.w $007E,Y

;---------------------------------------------------------------------------------------------------

.dont_flicker
#_0DEBB0: LDA.w $0202
#_0DEBB3: AND.w #$00FF
#_0DEBB6: CMP.w #$0010
#_0DEBB9: BNE .not_bottle

#_0DEBBB: LDA.l $7EF34F
#_0DEBBF: AND.w #$00FF
#_0DEBC2: BEQ .not_bottle

#_0DEBC4: TAX

#_0DEBC5: LDA.l $7EF35B,X
#_0DEBC9: AND.w #$00FF
#_0DEBCC: DEC A

#_0DEBCD: ASL A ; x32
#_0DEBCE: ASL A
#_0DEBCF: ASL A
#_0DEBD0: ASL A
#_0DEBD1: ASL A

#_0DEBD2: TAX

#_0DEBD3: LDY.w #$0000

.next_character_bottle
#_0DEBD6: LDA.w ItemMenu_Names_Bottles+$00,X
#_0DEBD9: STA.w $122C,Y

#_0DEBDC: LDA.w ItemMenu_Names_Bottles+$10,X
#_0DEBDF: STA.w $126C,Y

#_0DEBE2: INX
#_0DEBE3: INX

#_0DEBE4: INY
#_0DEBE5: INY
#_0DEBE6: CPY.w #$0010
#_0DEBE9: BCC .next_character_bottle

#_0DEBEB: JMP.w .exit

;---------------------------------------------------------------------------------------------------

.not_bottle
#_0DEBEE: LDA.w $0202
#_0DEBF1: AND.w #$00FF
#_0DEBF4: CMP.w #$0005
#_0DEBF7: BNE .not_powder

#_0DEBF9: LDA.l $7EF344
#_0DEBFD: AND.w #$00FF
#_0DEC00: DEC A
#_0DEC01: BEQ .not_powder

#_0DEC03: DEC A

#_0DEC04: ASL A ; x32
#_0DEC05: ASL A
#_0DEC06: ASL A
#_0DEC07: ASL A
#_0DEC08: ASL A

#_0DEC09: TAX

#_0DEC0A: LDY.w #$0000

.next_character_powder
#_0DEC0D: LDA.w ItemMenu_Names_Powder+$00,X
#_0DEC10: STA.w $122C,Y

#_0DEC13: LDA.w ItemMenu_Names_Powder+$10,X
#_0DEC16: STA.w $126C,Y

#_0DEC19: INX
#_0DEC1A: INX

#_0DEC1B: INY
#_0DEC1C: INY
#_0DEC1D: CPY.w #$0010
#_0DEC20: BCC .next_character_powder

#_0DEC22: JMP.w .exit

;---------------------------------------------------------------------------------------------------

.not_powder
#_0DEC25: LDA.w $0202
#_0DEC28: AND.w #$00FF
#_0DEC2B: CMP.w #$0014
#_0DEC2E: BNE .not_mirror

#_0DEC30: LDA.l $7EF353
#_0DEC34: AND.w #$00FF
#_0DEC37: DEC A
#_0DEC38: BEQ .not_mirror

#_0DEC3A: DEC A
#_0DEC3B: ASL A  ; x32
#_0DEC3C: ASL A
#_0DEC3D: ASL A
#_0DEC3E: ASL A
#_0DEC3F: ASL A
#_0DEC40: TAX

#_0DEC41: LDY.w #$0000

.next_character_mirror
#_0DEC44: LDA.w ItemMenu_Names_Mirror+$00,X
#_0DEC47: STA.w $122C,Y

#_0DEC4A: LDA.w ItemMenu_Names_Mirror+$10,X
#_0DEC4D: STA.w $126C,Y

#_0DEC50: INX
#_0DEC51: INX

#_0DEC52: INY
#_0DEC53: INY
#_0DEC54: CPY.w #$0010
#_0DEC57: BCC .next_character_mirror

#_0DEC59: JMP.w .exit

;===================================================================================================

.not_mirror
#_0DEC5C: LDA.w $0202
#_0DEC5F: AND.w #$00FF
#_0DEC62: CMP.w #$000D
#_0DEC65: BNE .not_flute

#_0DEC67: LDA.l $7EF34C
#_0DEC6B: AND.w #$00FF
#_0DEC6E: DEC A
#_0DEC6F: BEQ .not_flute

#_0DEC71: DEC A
#_0DEC72: ASL A ; x32
#_0DEC73: ASL A
#_0DEC74: ASL A
#_0DEC75: ASL A
#_0DEC76: ASL A
#_0DEC77: TAX

#_0DEC78: LDY.w #$0000

.next_character_flute
#_0DEC7B: LDA.w ItemMenu_Names_Flute+$00,X
#_0DEC7E: STA.w $122C,Y

#_0DEC81: LDA.w ItemMenu_Names_Flute+$10,X
#_0DEC84: STA.w $126C,Y

#_0DEC87: INX
#_0DEC88: INX

#_0DEC89: INY
#_0DEC8A: INY
#_0DEC8B: CPY.w #$0010
#_0DEC8E: BCC .next_character_flute

#_0DEC90: BRA .exit

;---------------------------------------------------------------------------------------------------

.not_flute
#_0DEC92: LDA.w $0202
#_0DEC95: AND.w #$00FF
#_0DEC98: CMP.w #$0001
#_0DEC9B: BNE .not_bow

#_0DEC9D: LDA.l $7EF340
#_0DECA1: AND.w #$00FF
#_0DECA4: DEC A
#_0DECA5: BEQ .not_bow

#_0DECA7: DEC A
#_0DECA8: ASL A ; x32
#_0DECA9: ASL A
#_0DECAA: ASL A
#_0DECAB: ASL A
#_0DECAC: ASL A
#_0DECAD: TAX

#_0DECAE: LDY.w #$0000

.next_character_bow
#_0DECB1: LDA.w ItemMenu_Names_Bow+$00,X
#_0DECB4: STA.w $122C,Y

#_0DECB7: LDA.w ItemMenu_Names_Bow+$10,X
#_0DECBA: STA.w $126C,Y

#_0DECBD: INX
#_0DECBE: INX

#_0DECBF: INY
#_0DECC0: INY
#_0DECC1: CPY.w #$0010
#_0DECC4: BCC .next_character_bow

#_0DECC6: BRA .exit

;---------------------------------------------------------------------------------------------------

.not_bow
#_0DECC8: TXA
#_0DECC9: ASL A ; x16
#_0DECCA: ASL A
#_0DECCB: ASL A
#_0DECCC: ASL A
#_0DECCD: TAX

#_0DECCE: LDY.w #$0000

.next_character_default
#_0DECD1: LDA.w ItemMenu_Names_YItems+$00,X
#_0DECD4: STA.w $122C,Y

#_0DECD7: LDA.w ItemMenu_Names_YItems+$10,X
#_0DECDA: STA.w $126C,Y

#_0DECDD: INX
#_0DECDE: INX

#_0DECDF: INY
#_0DECE0: INY
#_0DECE1: CPY.w #$0010
#_0DECE4: BCC .next_character_default

;---------------------------------------------------------------------------------------------------

.exit
#_0DECE6: SEP #$30

#_0DECE8: RTS

;===================================================================================================

ItemMenu_DrawMoonPearl:
#_0DECE9: REP #$30

#_0DECEB: LDA.w #$16E0
#_0DECEE: STA.b $00

#_0DECF0: LDA.l $7EF357
#_0DECF4: AND.w #$00FF
#_0DECF7: STA.b $02

#_0DECF9: LDA.w #ItemMenu_ItemIcons_pearl
#_0DECFC: STA.b $04

#_0DECFE: JSR ItemMenu_DrawItem

#_0DED01: SEP #$30

#_0DED03: RTS

;===================================================================================================
; This routine is vastly inferior to the routine I found in Shin Megami Tensei's Bank 02.
;===================================================================================================
NotAsGoodAsSMT029032:
#_0DED04: REP #$30
#_0DED06: SEP #$30

#_0DED08: RTS

;===================================================================================================

ItemMenu_EQUIPMENT:
#_0DED09: dw $2479, $247A, $247B, $247C
#_0DED11: dw $248C, $24F5, $24F5, $24F5

;===================================================================================================

ItemMenu_DUNGEONITEM:
#_0DED19: dw $2469, $246A, $246B, $246C
#_0DED21: dw $246D, $246E, $246F, $24F5

;===================================================================================================

ItemMenu_DrawEquipment:
#_0DED29: REP #$30

; Draw corners
#_0DED2B: LDA.w #$28FB
#_0DED2E: AND.b $00
#_0DED30: STA.w $156A

#_0DED33: ORA.w #$8000
#_0DED36: STA.w $176A

#_0DED39: ORA.w #$4000
#_0DED3C: STA.w $177C

#_0DED3F: EOR.w #$8000
#_0DED42: STA.w $157C

;---------------------------------------------------------------------------------------------------

#_0DED45: LDX.w #$0000
#_0DED48: LDY.w #$0006

.next_vertical
#_0DED4B: LDA.w #$28FC
#_0DED4E: AND.b $00
#_0DED50: STA.w $15AA,X

#_0DED53: ORA.w #$4000
#_0DED56: STA.w $15BC,X

#_0DED59: TXA
#_0DED5A: CLC
#_0DED5B: ADC.w #$0040
#_0DED5E: TAX

#_0DED5F: DEY
#_0DED60: BPL .next_vertical

;---------------------------------------------------------------------------------------------------

#_0DED62: LDX.w #$0000
#_0DED65: LDY.w #$0007

.next_horizontal
#_0DED68: LDA.w #$28F9
#_0DED6B: AND.b $00
#_0DED6D: STA.w $156C,X

#_0DED70: ORA.w #$8000
#_0DED73: STA.w $176C,X

#_0DED76: INX
#_0DED77: INX

#_0DED78: DEY
#_0DED79: BPL .next_horizontal

;---------------------------------------------------------------------------------------------------

#_0DED7B: LDX.w #$0000
#_0DED7E: LDY.w #$0007

#_0DED81: LDA.w #$24F5

.next_empty
#_0DED84: STA.w $15AC,X
#_0DED87: STA.w $15EC,X
#_0DED8A: STA.w $162C,X
#_0DED8D: STA.w $166C,X
#_0DED90: STA.w $16AC,X
#_0DED93: STA.w $16EC,X
#_0DED96: STA.w $172C,X

#_0DED99: INX
#_0DED9A: INX

#_0DED9B: DEY
#_0DED9C: BPL .next_empty

;---------------------------------------------------------------------------------------------------

#_0DED9E: LDX.w #$0000
#_0DEDA1: LDY.w #$0007

#_0DEDA4: LDA.w #$28D7
#_0DEDA7: AND.b $00

.next_horizontal_rule
#_0DEDA9: STA.w $166C,X

#_0DEDAC: INX
#_0DEDAD: INX

#_0DEDAE: DEY
#_0DEDAF: BPL .next_horizontal_rule

;---------------------------------------------------------------------------------------------------

#_0DEDB1: LDX.w #$0000
#_0DEDB4: LDY.w #$0007

.next_label_letter
#_0DEDB7: LDA.w ItemMenu_EQUIPMENT,X
#_0DEDBA: AND.b $00
#_0DEDBC: STA.w $15AC,X

#_0DEDBF: LDA.w ItemMenu_DUNGEONITEM,X
#_0DEDC2: AND.b $00
#_0DEDC4: STA.w $16AC,X

#_0DEDC7: INX
#_0DEDC8: INX

#_0DEDC9: DEY
#_0DEDCA: BPL .next_label_letter

;---------------------------------------------------------------------------------------------------

#_0DEDCC: LDA.w $040C
#_0DEDCF: AND.w #$00FF
#_0DEDD2: CMP.w #$00FF
#_0DEDD5: BNE .in_a_dungeon

;---------------------------------------------------------------------------------------------------

#_0DEDD7: LDX.w #$0000
#_0DEDDA: LDY.w #$0007

#_0DEDDD: LDA.w #$24F5

.delete_dungeon_item_letters
#_0DEDE0: STA.w $16AC,X

#_0DEDE3: INX
#_0DEDE4: INX

#_0DEDE5: DEY
#_0DEDE6: BPL .delete_dungeon_item_letters

;---------------------------------------------------------------------------------------------------

#_0DEDE8: LDA.w #$16F2
#_0DEDEB: STA.b $00

#_0DEDED: LDA.l $7EF36B
#_0DEDF1: AND.w #$00FF
#_0DEDF4: STA.b $02

#_0DEDF6: LDA.w #ItemMenu_ItemIcons_heart_pieces
#_0DEDF9: STA.b $04

#_0DEDFB: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

.in_a_dungeon
#_0DEDFE: REP #$30

#_0DEE00: LDA.w #$15EC
#_0DEE03: STA.b $00

#_0DEE05: LDA.l $7EF359
#_0DEE09: AND.w #$00FF
#_0DEE0C: CMP.w #$00FF
#_0DEE0F: BNE .have_sword

#_0DEE11: LDA.w #$0000

.have_sword
#_0DEE14: STA.b $02

#_0DEE16: LDA.w #ItemMenu_ItemIcons_sword
#_0DEE19: STA.b $04

#_0DEE1B: JSR ItemMenu_DrawItem

#_0DEE1E: SEP #$30

#_0DEE20: RTS

;===================================================================================================

ItemMenu_DrawShield:
#_0DEE21: REP #$30

#_0DEE23: LDA.w #$15F2
#_0DEE26: STA.b $00

#_0DEE28: LDA.l $7EF35A
#_0DEE2C: AND.w #$00FF
#_0DEE2F: STA.b $02

#_0DEE31: LDA.w #ItemMenu_ItemIcons_shield
#_0DEE34: STA.b $04

#_0DEE36: JSR ItemMenu_DrawItem

#_0DEE39: SEP #$30

#_0DEE3B: RTS

;===================================================================================================

ItemMenu_DrawMail:
#_0DEE3C: REP #$30

#_0DEE3E: LDA.w #$15F8
#_0DEE41: STA.b $00

#_0DEE43: LDA.l $7EF35B
#_0DEE47: AND.w #$00FF
#_0DEE4A: STA.b $02

#_0DEE4C: LDA.w #ItemMenu_ItemIcons_mail
#_0DEE4F: STA.b $04

#_0DEE51: JSR ItemMenu_DrawItem

#_0DEE54: SEP #$30

#_0DEE56: RTS

;===================================================================================================

ItemMenu_DrawMapAndBigKey:
#_0DEE57: REP #$30

#_0DEE59: LDA.w $040C
#_0DEE5C: AND.w #$00FF
#_0DEE5F: CMP.w #$00FF
#_0DEE62: BEQ .no_big_key

#_0DEE64: LSR A
#_0DEE65: TAX

#_0DEE66: LDA.l $7EF366

.shift_for_key
#_0DEE6A: ASL A

#_0DEE6B: DEX
#_0DEE6C: BPL .shift_for_key

#_0DEE6E: BCC .no_big_key

;---------------------------------------------------------------------------------------------------

#_0DEE70: JSR ItemMenu_CheckForDungeonPrize

#_0DEE73: REP #$30

#_0DEE75: LDA.w #$16F8
#_0DEE78: STA.b $00

#_0DEE7A: LDA.w #$0001
#_0DEE7D: CLC
#_0DEE7E: ADC.b $02
#_0DEE80: STA.b $02

#_0DEE82: LDA.w #ItemMenu_ItemIcons_big_key

#_0DEE85: STA.b $04

#_0DEE87: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

.no_big_key
#_0DEE8A: LDA.w $040C
#_0DEE8D: AND.w #$00FF
#_0DEE90: CMP.w #$00FF
#_0DEE93: BEQ .no_map

#_0DEE95: LSR A
#_0DEE96: TAX

#_0DEE97: LDA.l $7EF368

.look_for_next_map
#_0DEE9B: ASL A

#_0DEE9C: DEX
#_0DEE9D: BPL .look_for_next_map

#_0DEE9F: BCC .no_map

;---------------------------------------------------------------------------------------------------

#_0DEEA1: LDA.w #$16EC
#_0DEEA4: STA.b $00

#_0DEEA6: LDA.w #$0001
#_0DEEA9: STA.b $02

#_0DEEAB: LDA.w #ItemMenu_ItemIcons_map
#_0DEEAE: STA.b $04

#_0DEEB0: JSR ItemMenu_DrawItem

.no_map
#_0DEEB3: SEP #$30

#_0DEEB5: RTS

;===================================================================================================

ItemMenu_CheckForDungeonPrize:
#_0DEEB6: SEP #$30

#_0DEEB8: LDA.w $040C
#_0DEEBB: LSR A
#_0DEEBC: JSL JumpTableLocal
#_0DEEC0: dw ItemMenu_NoPrizeHad           ; Sewers
#_0DEEC2: dw ItemMenu_NoPrizeHad           ; Hyrule Castle
#_0DEEC4: dw ItemMenu_CheckForBow          ; Eastern Palace
#_0DEEC6: dw ItemMenu_CheckForGloves       ; Desert Palace
#_0DEEC8: dw ItemMenu_NoPrizeHad           ; Agahnim's Tower
#_0DEECA: dw ItemMenu_CheckForHookshot     ; Swamp Palace
#_0DEECC: dw ItemMenu_CheckForHammer       ; Palace of Darkness
#_0DEECE: dw ItemMenu_CheckForSomaria      ; Misery Mire
#_0DEED0: dw ItemMenu_CheckForFireRod      ; Skull Woods
#_0DEED2: dw ItemMenu_CheckForBlueMail     ; Ice Palace
#_0DEED4: dw ItemMenu_CheckForMoonPearl    ; Tower of Hera
#_0DEED6: dw ItemMenu_CheckForTitansMitt   ; Thieves' Town
#_0DEED8: dw ItemMenu_CheckForMirrorShield ; Turtle Rock
#_0DEEDA: dw ItemMenu_CheckForRedMail      ; Ganon's Tower

;===================================================================================================

ItemMenu_NoPrizeHad:
#_0DEEDC: STZ.b $02
#_0DEEDE: STZ.b $03

#_0DEEE0: RTS

;===================================================================================================

ItemMenu_CheckForBow:
#_0DEEE1: LDA.l $7EF340

;===================================================================================================

ItemMenu_CheckThePrize:
#_0DEEE5: BEQ ItemMenu_NoPrizeHad

;===================================================================================================

ItemMenu_HaveThePrize:
#_0DEEE7: LDA.b #$01
#_0DEEE9: STA.b $02
#_0DEEEB: STZ.b $03

#_0DEEED: RTS

;===================================================================================================

ItemMenu_CheckForGloves:
#_0DEEEE: LDA.l $7EF354
#_0DEEF2: BRA ItemMenu_CheckThePrize

;===================================================================================================

ItemMenu_CheckForHookshot:
#_0DEEF4: LDA.l $7EF342
#_0DEEF8: BRA ItemMenu_CheckThePrize

;===================================================================================================

ItemMenu_CheckForHammer:
#_0DEEFA: LDA.l $7EF34B
#_0DEEFE: BRA ItemMenu_CheckThePrize

;===================================================================================================

ItemMenu_CheckForSomaria:
#_0DEF00: LDA.l $7EF350
#_0DEF04: BRA ItemMenu_CheckThePrize

;===================================================================================================

ItemMenu_CheckForFireRod:
#_0DEF06: LDA.l $7EF345
#_0DEF0A: BRA ItemMenu_CheckThePrize

;===================================================================================================

ItemMenu_CheckForBlueMail:
#_0DEF0C: LDA.l $7EF35B
#_0DEF10: BRA ItemMenu_CheckThePrize

;===================================================================================================

ItemMenu_CheckForMoonPearl:
#_0DEF12: LDA.l $7EF357
#_0DEF16: BRA ItemMenu_CheckThePrize

;===================================================================================================

ItemMenu_CheckForTitansMitt:
#_0DEF18: LDA.l $7EF354
#_0DEF1C: DEC A
#_0DEF1D: BRA ItemMenu_CheckThePrize

;===================================================================================================

ItemMenu_CheckForMirrorShield:
#_0DEF1F: LDA.l $7EF35A
#_0DEF23: CMP.b #$03
#_0DEF25: BEQ ItemMenu_HaveThePrize

#_0DEF27: STZ.b $02
#_0DEF29: STZ.b $03

#_0DEF2B: RTS

;===================================================================================================

ItemMenu_CheckForRedMail:
#_0DEF2C: LDA.l $7EF35B
#_0DEF30: CMP.b #$02
#_0DEF32: BEQ ItemMenu_HaveThePrize

#_0DEF34: STZ.b $02
#_0DEF36: STZ.b $03

#_0DEF38: RTS

;===================================================================================================

ItemMenu_DrawCompass:
#_0DEF39: REP #$30

#_0DEF3B: LDA.w $040C
#_0DEF3E: AND.w #$00FF
#_0DEF41: CMP.w #$00FF
#_0DEF44: BEQ .no_compass

#_0DEF46: LSR A
#_0DEF47: TAX

#_0DEF48: LDA.l $7EF364

.find_compass_bit
#_0DEF4C: ASL A

#_0DEF4D: DEX
#_0DEF4E: BPL .find_compass_bit

#_0DEF50: BCC .no_compass

;---------------------------------------------------------------------------------------------------

#_0DEF52: LDA.w #$16F2
#_0DEF55: STA.b $00

#_0DEF57: LDA.w #$0001
#_0DEF5A: STA.b $02

#_0DEF5C: LDA.w #ItemMenu_ItemIcons_compass
#_0DEF5F: STA.b $04

#_0DEF61: JSR ItemMenu_DrawItem

.no_compass
#_0DEF64: SEP #$30

#_0DEF66: RTS

;===================================================================================================

ItemMenu_DrawBottleSubmenu:
#_0DEF67: REP #$30

; Draw corners
#_0DEF69: LDA.w #$28FB
#_0DEF6C: AND.b $00
#_0DEF6E: STA.w $12EA

#_0DEF71: ORA.w #$8000
#_0DEF74: STA.w $176A

#_0DEF77: ORA.w #$4000
#_0DEF7A: STA.w $177C

#_0DEF7D: EOR.w #$8000
#_0DEF80: STA.w $12FC

;---------------------------------------------------------------------------------------------------

#_0DEF83: LDX.w #$0000
#_0DEF86: LDY.w #$0010

.next_vertical
#_0DEF89: LDA.w #$28FC
#_0DEF8C: AND.b $00
#_0DEF8E: STA.w $132A,X

#_0DEF91: ORA.w #$4000
#_0DEF94: STA.w $133C,X

#_0DEF97: TXA
#_0DEF98: CLC
#_0DEF99: ADC.w #$0040
#_0DEF9C: TAX

#_0DEF9D: DEY
#_0DEF9E: BPL .next_vertical

;---------------------------------------------------------------------------------------------------

#_0DEFA0: LDX.w #$0000
#_0DEFA3: LDY.w #$0007

.next_horizontal
#_0DEFA6: LDA.w #$28F9
#_0DEFA9: AND.b $00
#_0DEFAB: STA.w $12EC,X

#_0DEFAE: ORA.w #$8000
#_0DEFB1: STA.w $176C,X

#_0DEFB4: INX
#_0DEFB5: INX

#_0DEFB6: DEY
#_0DEFB7: BPL .next_horizontal

;---------------------------------------------------------------------------------------------------

#_0DEFB9: LDX.w #$0000
#_0DEFBC: LDY.w #$0007

#_0DEFBF: LDA.w #$24F5

.next_empty
#_0DEFC2: STA.w $132C,X
#_0DEFC5: STA.w $136C,X
#_0DEFC8: STA.w $13AC,X
#_0DEFCB: STA.w $13EC,X
#_0DEFCE: STA.w $142C,X
#_0DEFD1: STA.w $146C,X
#_0DEFD4: STA.w $14AC,X
#_0DEFD7: STA.w $14EC,X
#_0DEFDA: STA.w $152C,X
#_0DEFDD: STA.w $156C,X
#_0DEFE0: STA.w $15AC,X
#_0DEFE3: STA.w $15EC,X
#_0DEFE6: STA.w $162C,X
#_0DEFE9: STA.w $166C,X
#_0DEFEC: STA.w $16AC,X
#_0DEFEF: STA.w $16EC,X
#_0DEFF2: STA.w $172C,X

#_0DEFF5: INX
#_0DEFF6: INX

#_0DEFF7: DEY
#_0DEFF8: BPL .next_empty

;---------------------------------------------------------------------------------------------------

#_0DEFFA: REP #$30

#_0DEFFC: LDA.w #$1372
#_0DEFFF: STA.b $00

#_0DF001: LDA.l $7EF35C
#_0DF005: AND.w #$00FF
#_0DF008: STA.b $02

#_0DF00A: LDA.w #ItemMenu_ItemIcons_bottles
#_0DF00D: STA.b $04

#_0DF00F: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DF012: LDA.w #$1472
#_0DF015: STA.b $00

#_0DF017: LDA.l $7EF35D
#_0DF01B: AND.w #$00FF
#_0DF01E: STA.b $02

#_0DF020: LDA.w #ItemMenu_ItemIcons_bottles
#_0DF023: STA.b $04

#_0DF025: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DF028: LDA.w #$1572
#_0DF02B: STA.b $00

#_0DF02D: LDA.l $7EF35E
#_0DF031: AND.w #$00FF
#_0DF034: STA.b $02

#_0DF036: LDA.w #ItemMenu_ItemIcons_bottles
#_0DF039: STA.b $04

#_0DF03B: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DF03E: LDA.w #$1672
#_0DF041: STA.b $00

#_0DF043: LDA.l $7EF35F
#_0DF047: AND.w #$00FF
#_0DF04A: STA.b $02

#_0DF04C: LDA.w #ItemMenu_ItemIcons_bottles
#_0DF04F: STA.b $04

#_0DF051: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------
; Draw selected bottle
;---------------------------------------------------------------------------------------------------
#_0DF054: LDA.w #$1408
#_0DF057: STA.b $00

#_0DF059: LDA.l $7EF34F
#_0DF05D: AND.w #$00FF
#_0DF060: TAX

#_0DF061: LDA.l $7EF35B,X
#_0DF065: AND.w #$00FF
#_0DF068: STA.b $02

#_0DF06A: LDA.w #ItemMenu_ItemIcons_bottles
#_0DF06D: STA.b $04

#_0DF06F: JSR ItemMenu_DrawItem

;---------------------------------------------------------------------------------------------------

#_0DF072: LDA.w $0202
#_0DF075: AND.w #$00FF
#_0DF078: DEC A
#_0DF079: ASL A
#_0DF07A: TAX

#_0DF07B: LDY.w ItemMenu_CursorPositions,X

#_0DF07E: LDA.w $0000,Y
#_0DF081: STA.w $11B2

#_0DF084: LDA.w $0002,Y
#_0DF087: STA.w $11B4

#_0DF08A: LDA.w $0040,Y
#_0DF08D: STA.w $11F2

#_0DF090: LDA.w $0042,Y
#_0DF093: STA.w $11F4

;---------------------------------------------------------------------------------------------------

#_0DF096: LDA.l $7EF34F
#_0DF09A: DEC A
#_0DF09B: AND.w #$00FF
#_0DF09E: ASL A
#_0DF09F: TAY

#_0DF0A0: LDA.w BottleMenuCursorPosition,Y
#_0DF0A3: TAY

#_0DF0A4: LDA.w $0207 ; Does nothing. Just roll with it.

#_0DF0A7: LDA.w #$3C61
#_0DF0AA: STA.w $12AA,Y

#_0DF0AD: ORA.w #$4000
#_0DF0B0: STA.w $12AC,Y

#_0DF0B3: LDA.w #$3C70
#_0DF0B6: STA.w $12E8,Y

#_0DF0B9: ORA.w #$4000
#_0DF0BC: STA.w $12EE,Y

#_0DF0BF: LDA.w #$BC70
#_0DF0C2: STA.w $1328,Y

#_0DF0C5: ORA.w #$4000
#_0DF0C8: STA.w $132E,Y

#_0DF0CB: LDA.w #$BC61
#_0DF0CE: STA.w $136A,Y

#_0DF0D1: ORA.w #$4000
#_0DF0D4: STA.w $136C,Y

#_0DF0D7: LDA.w #$3C60
#_0DF0DA: STA.w $12A8,Y

#_0DF0DD: ORA.w #$4000
#_0DF0E0: STA.w $12AE,Y

#_0DF0E3: ORA.w #$8000
#_0DF0E6: STA.w $136E,Y

#_0DF0E9: EOR.w #$4000
#_0DF0EC: STA.w $1368,Y

#_0DF0EF: SEP #$30

#_0DF0F1: LDA.b #$10
#_0DF0F3: STA.w $0207

#_0DF0F6: RTS

;===================================================================================================

UpdateHUDBuffer_HEXtoDEC:
#_0DF0F7: REP #$30

#_0DF0F9: STZ.w $0003

#_0DF0FC: LDX.w #$0000
#_0DF0FF: LDY.w #$0002

;---------------------------------------------------------------------------------------------------

.next_power_check
#_0DF102: CMP.w HUD_HEXtoDEC_PowersOf10,Y
#_0DF105: BCC .under_power_of_10

#_0DF107: SEC
#_0DF108: SBC.w HUD_HEXtoDEC_PowersOf10,Y

#_0DF10B: INC.b $03,X

#_0DF10D: BRA .next_power_check

.under_power_of_10
#_0DF10F: INX

#_0DF110: DEY
#_0DF111: DEY
#_0DF112: BPL .next_power_check

#_0DF114: STA.b $05

;---------------------------------------------------------------------------------------------------

#_0DF116: SEP #$30

#_0DF118: LDX.b #$02

.next_digit
#_0DF11A: LDA.b $03,X
#_0DF11C: CMP.b #$7F
#_0DF11E: BEQ .not_zero

#_0DF120: ORA.b #$90

.not_zero
#_0DF122: STA.b $03,X

#_0DF124: DEX
#_0DF125: BPL .next_digit

#_0DF127: RTS

;===================================================================================================

AnimatedRefill_Health:
#_0DF128: LDA.l $7EF36D ; while current HP < MAX_HP
#_0DF12C: CMP.l $7EF36C
#_0DF130: BCC .keep_healing

#_0DF132: LDA.l $7EF36C
#_0DF136: STA.l $7EF36D

#_0DF13A: LDA.b #$00 ; no more healing
#_0DF13C: STA.l $7EF372

#_0DF140: LDA.w $020A ; refill flag
#_0DF143: BNE .flag_as_done

#_0DF145: SEC

#_0DF146: RTL

.keep_healing
#_0DF147: LDA.b #$A0 ; set heal target to 20 hearts
#_0DF149: STA.l $7EF372

.flag_as_done
#_0DF14D: CLC

#_0DF14E: RTL

;===================================================================================================

AnimateHeartRefill:
#_0DF14F: SEP #$30

#_0DF151: LDA.b #$7EC768>>0
#_0DF153: STA.b $00

#_0DF155: LDA.b #$7EC768>>8
#_0DF157: STA.b $01

#_0DF159: LDA.b #$7EC768>>16
#_0DF15B: STA.b $02

#_0DF15D: DEC.w $0208
#_0DF160: BNE .exit

;---------------------------------------------------------------------------------------------------

#_0DF162: REP #$30

#_0DF164: LDA.l $7EF36D
#_0DF168: AND.w #$00F8

#_0DF16B: DEC A

#_0DF16C: LSR A ; /8
#_0DF16D: LSR A
#_0DF16E: LSR A
#_0DF16F: ASL A ; /4 net
#_0DF170: TAY

#_0DF171: CMP.w #$0014
#_0DF174: BCC .same_row

#_0DF176: SBC.w #$0014
#_0DF179: TAY

#_0DF17A: LDA.b $00
#_0DF17C: CLC
#_0DF17D: ADC.w #$0040
#_0DF180: STA.b $00

;---------------------------------------------------------------------------------------------------

.same_row
#_0DF182: SEP #$30

#_0DF184: LDX.w $0209

#_0DF187: LDA.l HUD_AllOnes,X
#_0DF18B: STA.w $0208

#_0DF18E: TXA
#_0DF18F: ASL A
#_0DF190: TAX

#_0DF191: LDA.l HUD_HeartDisplayFrames+0,X
#_0DF195: STA.b [$00],Y

#_0DF197: INY

#_0DF198: LDA.l HUD_HeartDisplayFrames+1,X
#_0DF19C: STA.b [$00],Y

#_0DF19E: LDA.w $0209
#_0DF1A1: INC A
#_0DF1A2: AND.b #$03
#_0DF1A4: STA.w $0209

#_0DF1A7: BNE .exit

#_0DF1A9: SEP #$30

#_0DF1AB: JSR RebuildHUD

#_0DF1AE: STZ.w $020A

.exit
#_0DF1B1: CLC

#_0DF1B2: RTS

;===================================================================================================

AnimatedRefill_Magic:
#_0DF1B3: SEP #$30

#_0DF1B5: LDA.l $7EF36E
#_0DF1B9: CMP.b #$80
#_0DF1BB: BCS .done

#_0DF1BD: LDA.b #$80 ; full magic refill
#_0DF1BF: STA.l $7EF373

#_0DF1C3: SEP #$30 ; !USELESS

#_0DF1C5: RTL

.done
#_0DF1C6: SEP #$31 ; shoulda just exited

#_0DF1C8: RTL

;===================================================================================================

ItemMenu_Names_YItems:
#_0DF1C9: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; ユミ
#_0DF1D9: dw $24F5, $24F5, $2574, $24F5, $24F5, $256F, $24F5, $24F5 ; bow

#_0DF1E9: dw $24F5, $242F, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; ブーメラン
#_0DF1F9: dw $24F5, $256B, $243F, $2571, $2576, $257C, $24F5, $24F5 ; boomerang

#_0DF209: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; フックショット
#_0DF219: dw $256B, $257E, $2557, $255B, $257D, $257E, $2563, $24F5 ; hookshot

#_0DF229: dw $24F5, $24F5, $242F, $24F5, $242F, $24F5, $24F5, $24F5 ; ばくだん
#_0DF239: dw $24F5, $24F5, $2419, $2407, $240F, $242D, $24F5, $24F5 ; bombs

#_0DF249: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; きのこ
#_0DF259: dw $24F5, $24F5, $2406, $2418, $2409, $24F5, $24F5, $24F5 ; mushroom

#_0DF269: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $242F, $24F5 ; ファイアロッド
#_0DF279: dw $256B, $24AA, $2551, $2550, $257A, $257E, $2563, $24F5 ; fire rod

#_0DF289: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $242F, $24F5 ; アイスロッド
#_0DF299: dw $24F5, $2550, $2551, $255C, $257A, $257E, $2563, $24F5 ; ice rod

#_0DF2A9: dw $24F5, $24F5, $242F, $24F5, $242F, $24F5, $24F5, $24F5 ; ボンバー
#_0DF2B9: dw $24F5, $24F5, $256D, $257C, $2569, $243F, $24F5, $24F5 ; bombos

#_0DF2C9: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; エーテル
#_0DF2D9: dw $24F5, $24F5, $2553, $243F, $2562, $2578, $24F5, $24F5 ; ether

#_0DF2E9: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; シェイク
#_0DF2F9: dw $24F5, $24F5, $255B, $244B, $2551, $2557, $24F5, $24F5 ; quake

#_0DF309: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; カンテラ
#_0DF319: dw $24F5, $24F5, $2555, $257C, $2562, $2576, $24F5, $24F5 ; lamp

#_0DF329: dw $24F5, $242F, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; マジックハンマー
#_0DF339: dw $256E, $255B, $257E, $2557, $2569, $257C, $256E, $243F ; magic hammer

#_0DF349: dw $24F5, $24F5, $24F5, $24F5, $242F, $24F5, $24F5, $24F5 ; シャベル
#_0DF359: dw $24F5, $24F5, $255B, $244F, $256C, $2578, $24F5, $24F5 ; shovel

#_0DF369: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; むしとリアミ
#_0DF379: dw $24F5, $2420, $240B, $2413, $2427, $2550, $256F, $24F5 ; bug net

#_0DF389: dw $24F5, $24F5, $242F, $24F5, $24F5, $24F5, $24F5, $24F5 ; ムドラのしょ
#_0DF399: dw $24F5, $2570, $2563, $2576, $2418, $240B, $2430, $24F5 ; book of mudora

#_0DF3A9: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; きのこ
#_0DF3B9: dw $24F5, $24F5, $2406, $2418, $2409, $24F5, $24F5, $24F5 ; mushroom

#_0DF3C9: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; ソマリアのツエ
#_0DF3D9: dw $255E, $256E, $2577, $2550, $2418, $2561, $2553, $24F5 ; cane of somaria

#_0DF3E9: dw $24F5, $242F, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; バイラのツエ
#_0DF3F9: dw $24F5, $2569, $2551, $2576, $2418, $2561, $2553, $24F5 ; cane of byrna

#_0DF409: dw $24F5, $242F, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; マジックマント
#_0DF419: dw $256E, $255B, $257E, $2557, $256E, $257C, $2563, $24F5 ; magic cape

#_0DF429: dw $24F5, $24F5, $24F5, $242F, $24F5, $24F5, $24F5, $24F5 ; てがみ
#_0DF439: dw $24F5, $24F5, $2412, $2405, $241F, $24F5, $24F5, $24F5 ; letter

;===================================================================================================

ItemMenu_Names_Bottles:
#_0DF449: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; きのこ
#_0DF459: dw $24F5, $24F5, $2406, $2418, $2409, $24F5, $24F5, $24F5 ; mushroom

#_0DF469: dw $24F5, $24F5, $242F, $24F5, $24F5, $24F5, $24F5, $24F5 ; びん
#_0DF479: dw $24F5, $24F5, $241A, $24F5, $24F5, $242D, $24F5, $24F5 ; bottle

#_0DF489: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; いのちの　クスリ
#_0DF499: dw $2401, $2418, $2410, $2418, $24F5, $2557, $255C, $2577 ; life potion

#_0DF4A9: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; まほうの　クスリ
#_0DF4B9: dw $241E, $241D, $2402, $2418, $24F5, $2557, $255C, $2577 ; magic potion

#_0DF4C9: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; いのちとまほう
#_0DF4D9: dw $2401, $2418, $2410, $2413, $241E, $241D, $2402, $24F5 ; life and magic

#_0DF4E9: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; ようせい
#_0DF4F9: dw $24F5, $24F5, $2425, $2402, $240D, $2401, $24F5, $24F5 ; fairy

#_0DF509: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; ハチ
#_0DF519: dw $24F5, $24F5, $2569, $24F5, $24F5, $2560, $24F5, $24F5 ; bee

#_0DF529: dw $24F5, $24F5, $242F, $24F5, $24F5, $24F5, $24F5, $24F5 ; おうごんのハチ
#_0DF539: dw $2404, $2402, $2409, $242D, $2418, $2569, $2560, $24F5 ; golden bee

;===================================================================================================

ItemMenu_Names_Powder:
#_0DF549: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; まほうのこな
#_0DF559: dw $24F5, $241E, $241D, $2402, $2418, $2409, $2414, $24F5 ; magic powder

;===================================================================================================

ItemMenu_Names_Flute:
#_0DF569: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; オカリナ
#_0DF579: dw $24F5, $24F5, $2554, $2555, $2577, $2564, $24F5, $24F5 ; ocarina

#_0DF589: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; オカリナ
#_0DF599: dw $24F5, $24F5, $2554, $2555, $2577, $2564, $24F5, $24F5 ; ocarina

;===================================================================================================

ItemMenu_Names_Mirror:
#_0DF5A9: dw $24F5, $242F, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; マジカルミラー
#_0DF5B9: dw $256E, $255B, $2555, $2578, $256F, $2576, $243F, $24F5 ; magic mirror

#_0DF5C9: dw $2563, $2576, $2551, $24F5, $24F5, $24F5, $24F5, $24F5 ; トライ / フォース
#_0DF5D9: dw $24F5, $256B, $24AF, $243F, $255C, $24F5, $24F5, $24F5 ; triforce

;===================================================================================================

ItemMenu_Names_Bow:
#_0DF5E9: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; ヤ　と　ユミ
#_0DF5F9: dw $24F5, $2573, $24F5, $2413, $24F5, $2574, $256F, $24F5 ; bow and arrows

#_0DF609: dw $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; ユミ
#_0DF619: dw $24F5, $24F5, $2574, $24F5, $24F5, $256F, $24F5, $24F5 ; bow

#_0DF629: dw $242F, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5, $24F5 ; ぎんのヤとユミ
#_0DF639: dw $2406, $242D, $2418, $2573, $2413, $2574, $256F, $24F5 ; bow and silver arrows

;===================================================================================================

ItemMenu_ItemIcons:

.bows
#_0DF649: dw $20F5, $20F5, $20F5, $20F5 ; No bow
#_0DF651: dw $28BA, $28E9, $28E8, $28CB ; Empty bow
#_0DF659: dw $28BA, $284A, $2849, $28CB ; Bow and arrows
#_0DF661: dw $28BA, $28E9, $28E8, $28CB ; Empty silvers bow
#_0DF669: dw $28BA, $28BB, $24CA, $28CB ; Silver bow and arrows

.booms
#_0DF671: dw $20F5, $20F5, $20F5, $20F5 ; No boomerang
#_0DF679: dw $2CB8, $2CB9, $2CF5, $2CC9 ; Blue boomerang
#_0DF681: dw $24B8, $24B9, $24F5, $24C9 ; Red boomerang

.hook
#_0DF689: dw $20F5, $20F5, $20F5, $20F5 ; No hookshot
#_0DF691: dw $24F5, $24F6, $24C0, $24F5 ; Hookshot

.bombs
#_0DF699: dw $20F5, $20F5, $20F5, $20F5 ; No bombs
#_0DF6A1: dw $2CB2, $2CB3, $2CC2, $6CC2 ; Bombs

.powder
#_0DF6A9: dw $20F5, $20F5, $20F5, $20F5 ; No powder
#_0DF6B1: dw $2444, $2445, $2446, $2447 ; Mushroom
#_0DF6B9: dw $203B, $203C, $203D, $203E ; Powder

.fire_rod
#_0DF6C1: dw $20F5, $20F5, $20F5, $20F5 ; No fire rod
#_0DF6C9: dw $24B0, $24B1, $24C0, $24C1 ; Fire rod

.ice_rod
#_0DF6D1: dw $20F5, $20F5, $20F5, $20F5 ; No ice rod
#_0DF6D9: dw $2CB0, $2CBE, $2CC0, $2CC1 ; Ice rod

.bombos
#_0DF6E1: dw $20F5, $20F5, $20F5, $20F5 ; No bombos
#_0DF6E9: dw $287D, $287E, $E87E, $E87D ; Bombos

.ether
#_0DF6F1: dw $20F5, $20F5, $20F5, $20F5 ; No ether
#_0DF6F9: dw $2876, $2877, $E877, $E876 ; Ether

.quake
#_0DF701: dw $20F5, $20F5, $20F5, $20F5 ; No quake
#_0DF709: dw $2866, $2867, $E867, $E866 ; Quake

.lamp
#_0DF711: dw $20F5, $20F5, $20F5, $20F5 ; No lamp
#_0DF719: dw $24BC, $24BD, $24CC, $24CD ; Lamp

.hammer
#_0DF721: dw $20F5, $20F5, $20F5, $20F5 ; No hammer
#_0DF729: dw $20B6, $20B7, $20C6, $20C7 ; Hammer

.flute
#_0DF731: dw $20F5, $20F5, $20F5, $20F5 ; No flute
#_0DF739: dw $20D0, $20D1, $20E0, $20E1 ; Shovel
#_0DF741: dw $2CD4, $2CD5, $2CE4, $2CE5 ; Flute (inactive)
#_0DF749: dw $2CD4, $2CD5, $2CE4, $2CE5 ; Flute (active)

.net
#_0DF751: dw $20F5, $20F5, $20F5, $20F5 ; No net
#_0DF759: dw $3C40, $3C41, $2842, $3C43 ; Net

.book
#_0DF761: dw $20F5, $20F5, $20F5, $20F5 ; No book
#_0DF769: dw $3CA5, $3CA6, $3CD8, $3CD9 ; Book of Mudora

.bottles
#_0DF771: dw $20F5, $20F5, $20F5, $20F5 ; No bottle
#_0DF779: dw $2044, $2045, $2046, $2047 ; Mushroom
#_0DF781: dw $2837, $2838, $2CC3, $2CD3 ; Empty bottle
#_0DF789: dw $24D2, $64D2, $24E2, $24E3 ; Red potion
#_0DF791: dw $3CD2, $7CD2, $3CE2, $3CE3 ; Green potion
#_0DF799: dw $2CD2, $6CD2, $2CE2, $2CE3 ; Blue potion
#_0DF7A1: dw $2855, $6855, $2C57, $2C5A ; Fairy
#_0DF7A9: dw $2837, $2838, $2839, $283A ; Bee
#_0DF7B1: dw $2837, $2838, $2839, $283A ; Good bee

.somaria
#_0DF7B9: dw $20F5, $20F5, $20F5, $20F5 ; No somaria
#_0DF7C1: dw $24DC, $24DD, $24EC, $24ED ; Cane of Somaria

.byrna
#_0DF7C9: dw $20F5, $20F5, $20F5, $20F5 ; No byrna
#_0DF7D1: dw $2CDC, $2CDD, $2CEC, $2CED ; Cane of Byrna

.cape
#_0DF7D9: dw $20F5, $20F5, $20F5, $20F5 ; No cape
#_0DF7E1: dw $24B4, $24B5, $24C4, $24C5 ; Cape

.mirror
#_0DF7E9: dw $20F5, $20F5, $20F5, $20F5 ; No mirror
#_0DF7F1: dw $28DE, $28DF, $28EE, $28EF ; Map
#_0DF7F9: dw $2C62, $2C63, $2C72, $2C73 ; Mirror
#_0DF801: dw $2886, $2887, $2888, $2889 ; Triforce (displays as arrows and bombs)

.gloves
#_0DF809: dw $20F5, $20F5, $20F5, $20F5 ; No glove
#_0DF811: dw $2130, $2131, $2140, $2141 ; Power glove
#_0DF819: dw $28DA, $28DB, $28EA, $28EB ; Titan's mitt

.boots
#_0DF821: dw $20F5, $20F5, $20F5, $20F5 ; No boots
#_0DF829: dw $3429, $342A, $342B, $342C ; Pegasus boots

.flippers
#_0DF831: dw $20F5, $20F5, $20F5, $20F5 ; No flippers
#_0DF839: dw $2C9A, $2C9B, $2C9D, $2C9E ; Flippers

.pearl
#_0DF841: dw $20F5, $20F5, $20F5, $20F5 ; No pearl
#_0DF849: dw $2433, $2434, $2435, $2436 ; Moon pearl

.unused_nothing
#_0DF851: dw $20F5, $20F5, $20F5, $20F5 ; Nothing

.sword
#_0DF859: dw $20F5, $20F5, $20F5, $20F5 ; No sword
#_0DF861: dw $2C64, $2CCE, $2C75, $3D25 ; Fighter sword
#_0DF869: dw $2C8A, $2C65, $2474, $3D26 ; Master sword
#_0DF871: dw $248A, $2465, $3C74, $2D48 ; Tempered sword
#_0DF879: dw $288A, $2865, $2C74, $2D39 ; Gold sword

.shield
#_0DF881: dw $24F5, $24F5, $24F5, $24F5 ; No shield
#_0DF889: dw $2CFD, $6CFD, $2CFE, $6CFE ; Fighter shield
#_0DF891: dw $34FF, $74FF, $349F, $749F ; Fire shield
#_0DF899: dw $2880, $2881, $288D, $288E ; Mirror shield

.mail
#_0DF8A1: dw $3C68, $7C68, $3C78, $7C78 ; Green mail
#_0DF8A9: dw $2C68, $6C68, $2C78, $6C78 ; Blue mail
#_0DF8B1: dw $2468, $6468, $2478, $6478 ; Red mail

.compass
#_0DF8B9: dw $20F5, $20F5, $20F5, $20F5 ; No compass
#_0DF8C1: dw $24BF, $64BF, $2CCF, $6CCF ; Compass

.big_key
#_0DF8C9: dw $20F5, $20F5, $20F5, $20F5 ; No big key
#_0DF8D1: dw $28D6, $68D6, $28E6, $28E7 ; Big key
#_0DF8D9: dw $354B, $354C, $354D, $354E ; Big key and chest

.map
#_0DF8E1: dw $20F5, $20F5, $20F5, $20F5 ; No map
#_0DF8E9: dw $28DE, $28DF, $28EE, $28EF ; Map

.pendant_red
#_0DF8F1: dw $313B, $313C, $313D, $313E ; No red pendant
#_0DF8F9: dw $252B, $252C, $252D, $252E ; Red pendant

.pendant_blue
#_0DF901: dw $313B, $313C, $313D, $313E ; No blue pendant
#_0DF909: dw $2D2B, $2D2C, $2D2D, $2D2E ; Blue pendant

.pendant_green
#_0DF911: dw $313B, $313C, $313D, $313E ; No green pendant
#_0DF919: dw $3D2B, $3D2C, $3D2D, $3D2E ; Green pendant

.white_glove
#_0DF921: dw $20F5, $20F5, $20F5, $20F5 ; No white glove?
#_0DF929: dw $3D30, $3D31, $3D40, $3D41 ; White glove?

.heart_pieces
#_0DF931: dw $2484, $6484, $2485, $6485 ; 0 heart pieces
#_0DF939: dw $24AD, $6484, $2485, $6485 ; 1 heart piece
#_0DF941: dw $24AD, $6484, $24AE, $6485 ; 2 heart pieces
#_0DF949: dw $24AD, $64AD, $24AE, $6485 ; 3 heart pieces

;===================================================================================================

ItemMenu_AbilityText:

.lifts
.lift2
#_0DF951: dw $2CF5, $2CF5, $2CF5, $2C2F, $2CF5 ; かつぐ.2
#_0DF95B: dw $2CF5, $2C05, $2C11, $2C07, $2D28 ; lift 2

.lift3
#_0DF965: dw $2CF5, $2CF5, $2CF5, $2C2F, $2CF5 ; かつぐ.3
#_0DF96F: dw $2CF5, $2C05, $2C11, $2C07, $2D29 ; lift 3

;---------------------------------------------------------------------------------------------------

.main_jumble
#_0DF979: dw $2CF5, $2CF5, $2CF5, $2C2F, $2CF5 ; かつぐ.1
#_0DF983: dw $2CF5, $2C05, $2C11, $2C07, $2D27 ; lift 1

#_0DF98D: dw $2CF5, $2CF5, $2CF5, $2CF5, $2CF5 ; よむ
#_0DF997: dw $2CF5, $2CF5, $2C25, $2C20, $2CF5 ; read

#_0DF9A1: dw $2CF5, $2CF5, $2CF5, $2CF5, $2CF5 ; はなす
#_0DF9AB: dw $2CF5, $2CF5, $2C19, $2C14, $2C0C ; talk

#_0DF9B5: dw $2CF5, $2CF5, $207F, $207F, $207F ; nothing
#_0DF9BF: dw $2CF5, $2CF5, $207F, $207F, $207F ; nothing

#_0DF9C9: dw $2CF5, $2CF5, $2C2E, $2CF5, $2CF5 ; ひっぱる
#_0DF9D3: dw $2C1A, $2C31, $2C19, $2C28, $2CF5 ; pull

#_0DF9DD: dw $2CF5, $2CF5, $2CF5, $2CF5, $2CF5 ; はしる
#_0DF9E7: dw $2CF5, $2C19, $2C0B, $2C28, $2CF5 ; run

#_0DF9F1: dw $2CF5, $2CF5, $2CF5, $2C2F, $2CF5 ; およぐ
#_0DF9FB: dw $2CF5, $2C04, $2C25, $2C07, $2CF5 ; swim

#_0DFA05: dw $2CF5, $2CF5, $2CF5, $207F, $207F ; いのる
#_0DFA0F: dw $2C01, $2C18, $2C28, $207F, $207F ; pray

;===================================================================================================

HUD_HEXtoDEC_PowersOf10:
#_0DFA19: dw  10
#_0DFA1B: dw 100

;===================================================================================================

HUD_HeartGFXTiles:
#_0DFA1D: dw $24A2, $24A2, $24A2

;===================================================================================================

HUD_HeartTiles:
#_0DFA23: dw $24A2, $24A1, $24A0

;===================================================================================================

HUD_HeartDisplayFrames:
#_0DFA29: dw $24A3, $24A4, $24A3, $24A0

;===================================================================================================

HUD_AllOnes:
#_0DFA31: db $01, $01, $01, $01

;===================================================================================================

MenuID_to_EquipID:
#_0DFA35: db $00 ; 0x00 - Nothing

#_0DFA36: db $03 ; 0x01 - Bow
#_0DFA37: db $02 ; 0x02 - Boomerang
#_0DFA38: db $0E ; 0x03 - Hookshot
#_0DFA39: db $01 ; 0x04 - Bombs
#_0DFA3A: db $0A ; 0x05 - Mushroom/Powder
#_0DFA3B: db $05 ; 0x06 - Fire rod
#_0DFA3C: db $06 ; 0x07 - Ice rod
#_0DFA3D: db $0F ; 0x08 - Bombos
#_0DFA3E: db $10 ; 0x09 - Ether
#_0DFA3F: db $11 ; 0x0A - Quake
#_0DFA40: db $09 ; 0x0B - Lamp
#_0DFA41: db $04 ; 0x0C - Hammer
#_0DFA42: db $08 ; 0x0D - Shovel/Flute
#_0DFA43: db $07 ; 0x0E - Net
#_0DFA44: db $0C ; 0x0F - Book
#_0DFA45: db $0B ; 0x10 - Bottle
#_0DFA46: db $12 ; 0x11 - Somaria
#_0DFA47: db $0D ; 0x12 - Byrna
#_0DFA48: db $13 ; 0x13 - Cape
#_0DFA49: db $14 ; 0x14 - Mirror

; Theese seem unused
#_0DFA4A: db $00 ; 0x15 - Nothing
#_0DFA4B: db $01 ; 0x16 - Bombs
#_0DFA4C: db $06 ; 0x17 - Ice rod
#_0DFA4D: db $02 ; 0x18 - Boomerang
#_0DFA4E: db $07 ; 0x19 - Net
#_0DFA4F: db $03 ; 0x1A - Bow
#_0DFA50: db $05 ; 0x1B - Fire rod
#_0DFA51: db $04 ; 0x1C - Hammer
#_0DFA52: db $08 ; 0x1D - Shovel/Flute

;===================================================================================================

RestoreTorchBackground:
#_0DFA53: LDA.l $7EF34A
#_0DFA57: BEQ .exit

#_0DFA59: LDA.l $7EC005
#_0DFA5D: BEQ .exit

#_0DFA5F: LDA.w $0458
#_0DFA62: BNE .exit

#_0DFA64: LDA.w $045A
#_0DFA67: BNE .exit

#_0DFA69: INC.w $0458

#_0DFA6C: LDA.w $0414
#_0DFA6F: CMP.b #$02
#_0DFA71: BEQ .exit

#_0DFA73: LDA.b #$01
#_0DFA75: STA.b $1D

.exit
#_0DFA77: RTL

;===================================================================================================

RebuildHUD_long:
#_0DFA78: PHB
#_0DFA79: PHK
#_0DFA7A: PLB

#_0DFA7B: JSR RebuildHUD

#_0DFA7E: PLB

#_0DFA7F: RTL

;===================================================================================================

RebuildHUD_ZeroKeys:
#_0DFA80: LDA.b #$00
#_0DFA82: STA.l $7EC017

#_0DFA86: LDA.b #$FF

;===================================================================================================

RebuildHUD_Keys:
#_0DFA88: STA.l $7EF36F

;===================================================================================================
; Why though?
;===================================================================================================
RebuildHUD_long2:
#_0DFA8C: JSR RebuildHUD

#_0DFA8F: RTL

;===================================================================================================
; Seriously, why?
;===================================================================================================
RebuildHUD:
#_0DFA90: REP #$30

#_0DFA92: PHB

#_0DFA93: LDA.w #$0149
#_0DFA96: LDX.w #HUD_TilemapTemplate
#_0DFA99: LDY.w #$7EC700
#_0DFA9C: %MVN(HUD_TilemapTemplate>>16, $7E) ; MVN $0D, $7E

#_0DFA9F: PLB ; PLB : PHB useless here
#_0DFAA0: PHB

#_0DFAA1: PHK
#_0DFAA2: PLB

#_0DFAA3: BRA .handle_buffer

;===================================================================================================

#RebuildHUD_update:
#_0DFAA5: REP #$30

#_0DFAA7: PHB
#_0DFAA8: PHK
#_0DFAA9: PLB

.handle_buffer
#_0DFAAA: JSR UpdateHUDBuffer

#_0DFAAD: PLB

#_0DFAAE: SEP #$30

#_0DFAB0: INC.b $16

#_0DFAB2: RTS

;===================================================================================================

ItemMenu_ItemGFXPointers:
#_0DFAB3: dw ItemMenu_ItemIcons_bows
#_0DFAB5: dw ItemMenu_ItemIcons_booms
#_0DFAB7: dw ItemMenu_ItemIcons_hook
#_0DFAB9: dw ItemMenu_ItemIcons_bombs
#_0DFABB: dw ItemMenu_ItemIcons_powder

#_0DFABD: dw ItemMenu_ItemIcons_fire_rod
#_0DFABF: dw ItemMenu_ItemIcons_ice_rod
#_0DFAC1: dw ItemMenu_ItemIcons_bombos
#_0DFAC3: dw ItemMenu_ItemIcons_ether
#_0DFAC5: dw ItemMenu_ItemIcons_quake

#_0DFAC7: dw ItemMenu_ItemIcons_lamp
#_0DFAC9: dw ItemMenu_ItemIcons_hammer
#_0DFACB: dw ItemMenu_ItemIcons_flute
#_0DFACD: dw ItemMenu_ItemIcons_net
#_0DFACF: dw ItemMenu_ItemIcons_book

#_0DFAD1: dw ItemMenu_ItemIcons_bottles
#_0DFAD3: dw ItemMenu_ItemIcons_somaria
#_0DFAD5: dw ItemMenu_ItemIcons_byrna
#_0DFAD7: dw ItemMenu_ItemIcons_cape
#_0DFAD9: dw ItemMenu_ItemIcons_mirror

#_0DFADB: dw ItemMenu_ItemIcons_gloves
#_0DFADD: dw ItemMenu_ItemIcons_boots
#_0DFADF: dw ItemMenu_ItemIcons_flippers
#_0DFAE1: dw ItemMenu_ItemIcons_pearl

#_0DFAE3: dw ItemMenu_ItemIcons_unused_nothing

#_0DFAE5: dw ItemMenu_ItemIcons_sword
#_0DFAE7: dw ItemMenu_ItemIcons_shield
#_0DFAE9: dw ItemMenu_ItemIcons_mail

#_0DFAEB: dw ItemMenu_ItemIcons_bottles
#_0DFAED: dw ItemMenu_ItemIcons_bottles
#_0DFAEF: dw ItemMenu_ItemIcons_bottles
#_0DFAF1: dw ItemMenu_ItemIcons_bottles

; !WEIRD
#_0DFAF3: dw ItemMenu_ItemIcons_white_glove

;===================================================================================================

ItemMenu_CursorPositions:
#_0DFAF5: dw $11C8, $11CE, $11D4, $11DA, $11E0
#_0DFAFF: dw $1288, $128E, $1294, $129A, $12A0
#_0DFB09: dw $1348, $134E, $1354, $135A, $1360
#_0DFB13: dw $1408, $140E, $1414, $141A, $1420

;===================================================================================================

UpdateHUDBuffer_update_item:
#_0DFB1D: SEP #$30

#_0DFB1F: LDA.l $7EF340
#_0DFB23: BEQ .no_bow

#_0DFB25: CMP.b #$03
#_0DFB27: BCC .wooden_arrows

#_0DFB29: LDA.b #$86
#_0DFB2B: STA.l $7EC71E

#_0DFB2F: LDA.b #$24
#_0DFB31: STA.l $7EC71F

#_0DFB35: LDA.b #$87
#_0DFB37: STA.l $7EC720

#_0DFB3B: LDA.b #$24
#_0DFB3D: STA.l $7EC721

#_0DFB41: LDX.b #$04

#_0DFB43: LDA.l $7EF377
#_0DFB47: BNE .set_bow_level

#_0DFB49: LDX.b #$03
#_0DFB4B: BRA .set_bow_level

;---------------------------------------------------------------------------------------------------

.wooden_arrows
#_0DFB4D: LDX.b #$02

#_0DFB4F: LDA.l $7EF377
#_0DFB53: BNE .set_bow_level

#_0DFB55: LDX.b #$01

;---------------------------------------------------------------------------------------------------

.set_bow_level
#_0DFB57: TXA
#_0DFB58: STA.l $7EF340

.no_bow
#_0DFB5C: REP #$30

#_0DFB5E: LDX.w $0202
#_0DFB61: BEQ .exit

;---------------------------------------------------------------------------------------------------

#_0DFB63: LDA.l $7EF33F,X
#_0DFB67: AND.w #$00FF

#_0DFB6A: CPX.w #$0004
#_0DFB6D: BNE .not_bombs

#_0DFB6F: LDA.w #$0001

.not_bombs
#_0DFB72: CPX.w #$0010
#_0DFB75: BNE .not_bottle

#_0DFB77: TXY
#_0DFB78: TAX

#_0DFB79: LDA.l $7EF35B,X
#_0DFB7D: AND.w #$00FF

#_0DFB80: TYX

.not_bottle
#_0DFB81: STA.b $02

;---------------------------------------------------------------------------------------------------

#_0DFB83: TXA
#_0DFB84: DEC A
#_0DFB85: ASL A
#_0DFB86: TAX

#_0DFB87: LDA.w ItemMenu_ItemGFXPointers,X
#_0DFB8A: STA.b $04

#_0DFB8C: LDA.b $02
#_0DFB8E: ASL A ; x8
#_0DFB8F: ASL A
#_0DFB90: ASL A
#_0DFB91: TAY

#_0DFB92: LDA.b ($04),Y
#_0DFB94: STA.l $7EC74A

#_0DFB98: INY
#_0DFB99: INY

#_0DFB9A: LDA.b ($04),Y
#_0DFB9C: STA.l $7EC74C

#_0DFBA0: INY
#_0DFBA1: INY

#_0DFBA2: LDA.b ($04),Y
#_0DFBA4: STA.l $7EC78A

#_0DFBA8: INY
#_0DFBA9: INY

#_0DFBAA: LDA.b ($04),Y
#_0DFBAC: STA.l $7EC78C

.exit
#_0DFBB0: RTS

;===================================================================================================

UpdateHUDBuffer:
#_0DFBB1: JSR UpdateHUDBuffer_update_item

;===================================================================================================

#UpdateHUDBuffer_skip_item:
#_0DFBB4: SEP #$30

#_0DFBB6: LDA.b #HUD_HeartGFXTiles>>0
#_0DFBB8: STA.b $0A

#_0DFBBA: LDA.b #HUD_HeartGFXTiles>>8
#_0DFBBC: STA.b $0B

#_0DFBBE: LDA.b #HUD_HeartGFXTiles>>16
#_0DFBC0: STA.b $0C

#_0DFBC2: LDA.b #$7EC768>>0
#_0DFBC4: STA.b $07

#_0DFBC6: LDA.b #$7EC768>>8
#_0DFBC8: STA.b $08

#_0DFBCA: LDA.b #$7EC768>>16
#_0DFBCC: STA.b $09

#_0DFBCE: REP #$30

#_0DFBD0: LDA.l $7EF36C
#_0DFBD4: AND.w #$00FF
#_0DFBD7: STA.b $00
#_0DFBD9: STA.b $02
#_0DFBDB: STA.b $04

#_0DFBDD: JSR UpdateHUDBuffer_UpdateHearts

;---------------------------------------------------------------------------------------------------

#_0DFBE0: SEP #$30

#_0DFBE2: LDA.b #HUD_HeartTiles>>0
#_0DFBE4: STA.b $0A

#_0DFBE6: LDA.b #HUD_HeartTiles>>8
#_0DFBE8: STA.b $0B

#_0DFBEA: LDA.b #HUD_HeartTiles>>16
#_0DFBEC: STA.b $0C

#_0DFBEE: LDA.b #$7EC768>>0
#_0DFBF0: STA.b $07

#_0DFBF2: LDA.b #$7EC768>>8
#_0DFBF4: STA.b $08

#_0DFBF6: LDA.b #$7EC768>>16
#_0DFBF8: STA.b $09

#_0DFBFA: LDA.l $7EF36C
#_0DFBFE: CMP.l $7EF36D
#_0DFC02: BEQ .hps_match

#_0DFC04: SEC
#_0DFC05: SBC.b #$04
#_0DFC07: CMP.l $7EF36D
#_0DFC0B: BCS .hps_match ; !USELESS branch

.hps_match
#_0DFC0D: LDA.l $7EF36D
#_0DFC11: CLC
#_0DFC12: ADC.b #$03

#_0DFC14: REP #$30

#_0DFC16: AND.w #$00FC
#_0DFC19: STA.b $00
#_0DFC1B: STA.b $04

#_0DFC1D: LDA.l $7EF36C
#_0DFC21: AND.w #$00FF
#_0DFC24: STA.b $02

#_0DFC26: JSR UpdateHUDBuffer_UpdateHearts

;===================================================================================================

#UpdateHUDBuffer_skip_hearts:
#_0DFC29: REP #$30

#_0DFC2B: LDA.l $7EF37B
#_0DFC2F: AND.w #$00FF
#_0DFC32: CMP.w #$0001
#_0DFC35: BCC .not_half_magic

#_0DFC37: LDA.w #$28F7
#_0DFC3A: STA.l $7EC704

#_0DFC3E: LDA.w #$2851
#_0DFC41: STA.l $7EC706

#_0DFC45: LDA.w #$28FA
#_0DFC48: STA.l $7EC708

;---------------------------------------------------------------------------------------------------

.not_half_magic
#_0DFC4C: LDA.l $7EF36E
#_0DFC50: AND.w #$00FF
#_0DFC53: CLC
#_0DFC54: ADC.w #$0007
#_0DFC57: AND.w #$FFF8
#_0DFC5A: TAX

#_0DFC5B: LDA.w HUD_MagicGaugeTiles+0,X
#_0DFC5E: STA.l $7EC746

#_0DFC62: LDA.w HUD_MagicGaugeTiles+2,X
#_0DFC65: STA.l $7EC786

#_0DFC69: LDA.w HUD_MagicGaugeTiles+4,X
#_0DFC6C: STA.l $7EC7C6

#_0DFC70: LDA.w HUD_MagicGaugeTiles+6,X
#_0DFC73: STA.l $7EC806

;---------------------------------------------------------------------------------------------------
; Rupees
;---------------------------------------------------------------------------------------------------
#_0DFC77: LDA.l $7EF362
#_0DFC7B: JSR UpdateHUDBuffer_HEXtoDEC

#_0DFC7E: REP #$30

#_0DFC80: LDA.b $03
#_0DFC82: AND.w #$00FF
#_0DFC85: ORA.w #$2400
#_0DFC88: STA.l $7EC750

#_0DFC8C: LDA.b $04
#_0DFC8E: AND.w #$00FF
#_0DFC91: ORA.w #$2400
#_0DFC94: STA.l $7EC752

#_0DFC98: LDA.b $05
#_0DFC9A: AND.w #$00FF
#_0DFC9D: ORA.w #$2400
#_0DFCA0: STA.l $7EC754

;---------------------------------------------------------------------------------------------------
; Bombs
;---------------------------------------------------------------------------------------------------
#_0DFCA4: LDA.l $7EF343
#_0DFCA8: AND.w #$00FF
#_0DFCAB: JSR UpdateHUDBuffer_HEXtoDEC

#_0DFCAE: REP #$30

#_0DFCB0: LDA.b $04
#_0DFCB2: AND.w #$00FF
#_0DFCB5: ORA.w #$2400
#_0DFCB8: STA.l $7EC758

#_0DFCBC: LDA.b $05
#_0DFCBE: AND.w #$00FF
#_0DFCC1: ORA.w #$2400
#_0DFCC4: STA.l $7EC75A

;---------------------------------------------------------------------------------------------------
; Arrows
;---------------------------------------------------------------------------------------------------
#_0DFCC8: LDA.l $7EF377
#_0DFCCC: AND.w #$00FF
#_0DFCCF: JSR UpdateHUDBuffer_HEXtoDEC

#_0DFCD2: REP #$30

#_0DFCD4: LDA.b $04
#_0DFCD6: AND.w #$00FF
#_0DFCD9: ORA.w #$2400
#_0DFCDC: STA.l $7EC75E

#_0DFCE0: LDA.b $05
#_0DFCE2: AND.w #$00FF
#_0DFCE5: ORA.w #$2400
#_0DFCE8: STA.l $7EC760

#_0DFCEC: LDA.w #$007F
#_0DFCEF: STA.b $05

;---------------------------------------------------------------------------------------------------
; Keys
;---------------------------------------------------------------------------------------------------
#_0DFCF1: LDA.l $7EF36F
#_0DFCF5: AND.w #$00FF
#_0DFCF8: CMP.w #$00FF
#_0DFCFB: BEQ .no_keys

#_0DFCFD: JSR UpdateHUDBuffer_HEXtoDEC

.no_keys
#_0DFD00: REP #$30

#_0DFD02: LDA.b $05
#_0DFD04: AND.w #$00FF
#_0DFD07: ORA.w #$2400
#_0DFD0A: STA.l $7EC764

#_0DFD0E: CMP.w #$247F
#_0DFD11: BNE .show_keys

#_0DFD13: STA.l $7EC724

.show_keys
#_0DFD17: SEP #$30

#_0DFD19: RTS

;===================================================================================================
; TODO figure out what this was maybe meant to do
; some sort of in game tile editor using $020B?
; HUD_DisplayDebugTiles?
;===================================================================================================
UNREACHABLE_0DFD1A:
#_0DFD1A: REP #$30

; Check magic for bit 5
#_0DFD1C: LDA.l $7EF36E
#_0DFD20: AND.w #$0020
#_0DFD23: BNE .continue

#_0DFD25: BRL .exit

;---------------------------------------------------------------------------------------------------

.continue
#_0DFD28: LDA.w #$0C00
#_0DFD2B: STA.b $0E

#_0DFD2D: LDA.w $020B
#_0DFD30: CMP.w #$0020
#_0DFD33: BCC .dont_clear

#_0DFD35: LDA.w $0010
#_0DFD38: AND.w #$00FF
#_0DFD3B: CMP.w #$000E
#_0DFD3E: BEQ .dont_clear

#_0DFD40: LDA.w $001A
#_0DFD43: AND.w #$0004
#_0DFD46: BNE .clear

;---------------------------------------------------------------------------------------------------

.dont_clear
#_0DFD48: LDA.w $020B
#_0DFD4B: BEQ .exit

#_0DFD4D: LDX.w #$0000

#_0DFD50: LDA.w $020B
#_0DFD53: LSR A
#_0DFD54: LSR A
#_0DFD55: BEQ .exit

#_0DFD57: TAY

#_0DFD58: LDA.w #$2082
#_0DFD5B: ORA.b $0E

.next_tile
#_0DFD5D: STA.l $7EC742,X

#_0DFD61: INX
#_0DFD62: INX

#_0DFD63: DEY
#_0DFD64: BNE .next_tile

#_0DFD66: LDA.w $020B
#_0DFD69: CMP.w #$0020
#_0DFD6C: BRA .skip_ahead

;---------------------------------------------------------------------------------------------------
; This is extra unreachable!
;---------------------------------------------------------------------------------------------------
#UNREACHABLE_0DFD6E:
#_0DFD6E: LDA.w #$20A5
#_0DFD71: ORA.b $0E
#_0DFD73: STA.l $7EC742,X

#_0DFD77: LDA.w #$20A6
#_0DFD7A: ORA.b $0E
#_0DFD7C: STA.l $7EC744,X

#_0DFD80: BRA .exit

;---------------------------------------------------------------------------------------------------

.skip_ahead
#_0DFD82: LDA.w $020B
#_0DFD85: LSR A
#_0DFD86: LSR A
#_0DFD87: BCS .draw_b

;---------------------------------------------------------------------------------------------------

.draw_a
#_0DFD89: LDA.w #$2080
#_0DFD8C: ORA.b $0E
#_0DFD8E: STA.l $7EC742,X

#_0DFD92: LDA.w #$2081
#_0DFD95: ORA.b $0E
#_0DFD97: STA.l $7EC744,X

#_0DFD9B: BRA .exit

;---------------------------------------------------------------------------------------------------

.draw_b
#_0DFD9D: LDA.w #$2083
#_0DFDA0: ORA.b $0E
#_0DFDA2: STA.l $7EC742,X

#_0DFDA6: LDA.w #$2084
#_0DFDA9: ORA.b $0E
#_0DFDAB: STA.l $7EC744,X

#_0DFDAF: LDA.w #$2085
#_0DFDB2: ORA.b $0E
#_0DFDB4: STA.l $7EC746,X

;---------------------------------------------------------------------------------------------------

.exit
#_0DFDB8: SEP #$30

#_0DFDBA: RTS

;---------------------------------------------------------------------------------------------------

.clear
#_0DFDBB: LDX.w #$0012
#_0DFDBE: LDA.w #$207F

.clear_next
#_0DFDC1: STA.l $7EC742,X

#_0DFDC5: DEX
#_0DFDC6: DEX
#_0DFDC7: BPL .clear_next

#_0DFDC9: BRA .exit

;===================================================================================================

UpdateHUDBuffer_UpdateHearts:
#_0DFDCB: LDX.w #$0000

.next_heart
#_0DFDCE: LDA.b $00
#_0DFDD0: CMP.w #$0008
#_0DFDD3: BCC .less_than_1_heart

#_0DFDD5: SBC.w #$0008
#_0DFDD8: STA.b $00

#_0DFDDA: LDY.w #$0004
#_0DFDDD: JSR UpdateHUDBuffer_DrawSingleHeart

#_0DFDE0: INX
#_0DFDE1: INX

#_0DFDE2: BRA .next_heart

;---------------------------------------------------------------------------------------------------

.less_than_1_heart
#_0DFDE4: CMP.w #$0005
#_0DFDE7: BCC .less_than_half_a_heart

#_0DFDE9: LDY.w #$0004
#_0DFDEC: BRA UpdateHUDBuffer_DrawSingleHeart

.less_than_half_a_heart
#_0DFDEE: CMP.w #$0001
#_0DFDF1: BCC .empty_heart

#_0DFDF3: LDY.w #$0002
#_0DFDF6: BRA UpdateHUDBuffer_DrawSingleHeart

.empty_heart
#_0DFDF8: RTS

;===================================================================================================

UpdateHUDBuffer_DrawSingleHeart:
#_0DFDF9: CPX.w #$0014
#_0DFDFC: BCC .dont_advance_row

#_0DFDFE: LDX.w #$0000

#_0DFE01: LDA.b $07
#_0DFE03: CLC
#_0DFE04: ADC.w #$0040
#_0DFE07: STA.b $07

.dont_advance_row
#_0DFE09: LDA.b [$0A],Y

#_0DFE0B: TXY

#_0DFE0C: STA.b [$07],Y

#_0DFE0E: RTS

;===================================================================================================

HUD_MagicGaugeTiles:
#_0DFE0F: dw $3CF5, $3CF5, $3CF5, $3CF5
#_0DFE17: dw $3CF5, $3CF5, $3CF5, $3C5F
#_0DFE1F: dw $3CF5, $3CF5, $3CF5, $3C4C
#_0DFE27: dw $3CF5, $3CF5, $3CF5, $3C4D
#_0DFE2F: dw $3CF5, $3CF5, $3CF5, $3C4E
#_0DFE37: dw $3CF5, $3CF5, $3C5F, $3C5E
#_0DFE3F: dw $3CF5, $3CF5, $3C4C, $3C5E
#_0DFE47: dw $3CF5, $3CF5, $3C4D, $3C5E
#_0DFE4F: dw $3CF5, $3CF5, $3C4E, $3C5E
#_0DFE57: dw $3CF5, $3C5F, $3C5E, $3C5E
#_0DFE5F: dw $3CF5, $3C4C, $3C5E, $3C5E
#_0DFE67: dw $3CF5, $3C4D, $3C5E, $3C5E
#_0DFE6F: dw $3CF5, $3C4E, $3C5E, $3C5E
#_0DFE77: dw $3C5F, $3C5E, $3C5E, $3C5E
#_0DFE7F: dw $3C4C, $3C5E, $3C5E, $3C5E
#_0DFE87: dw $3C4D, $3C5E, $3C5E, $3C5E
#_0DFE8F: dw $3C4E, $3C5E, $3C5E, $3C5E

;===================================================================================================

HUD_TilemapTemplate:
#_0DFE97: dw $207F, $207F, $2850, $A856
#_0DFE9F: dw $2852, $285B, $285B, $285C
#_0DFEA7: dw $207F, $3CA8, $207F, $207F
#_0DFEAF: dw $2C88, $2C89, $207F, $20A7
#_0DFEB7: dw $20A9, $207F, $2871, $207F
#_0DFEBF: dw $207F, $207F, $288B, $288F
#_0DFEC7: dw $24AB, $24AC, $688F, $688B
#_0DFECF: dw $207F, $207F, $207F, $207F

#_0DFED7: dw $207F, $207F, $2854, $2871
#_0DFEDF: dw $2858, $207F, $207F, $285D
#_0DFEE7: dw $207F, $207F, $207F, $207F
#_0DFEEF: dw $207F, $207F, $207F, $207F
#_0DFEF7: dw $207F, $207F, $207F, $207F
#_0DFEFF: dw $207F, $207F, $207F, $207F
#_0DFF07: dw $207F, $207F, $207F, $207F
#_0DFF0F: dw $207F, $207F, $207F, $207F

#_0DFF17: dw $207F, $207F, $2854, $304E
#_0DFF1F: dw $2858, $207F, $207F, $285D
#_0DFF27: dw $207F, $207F, $207F, $207F
#_0DFF2F: dw $207F, $207F, $207F, $207F
#_0DFF37: dw $207F, $207F, $207F, $207F
#_0DFF3F: dw $207F, $207F, $207F, $207F
#_0DFF47: dw $207F, $207F, $207F, $207F
#_0DFF4F: dw $207F, $207F, $207F, $207F

#_0DFF57: dw $207F, $207F, $2854, $305E
#_0DFF5F: dw $2859, $A85B, $A85B, $A85C
#_0DFF67: dw $207F, $207F, $207F, $207F
#_0DFF6F: dw $207F, $207F, $207F, $207F
#_0DFF77: dw $207F, $207F, $207F, $207F
#_0DFF7F: dw $207F, $207F, $207F, $207F
#_0DFF87: dw $207F, $207F, $207F, $207F
#_0DFF8F: dw $207F, $207F, $207F, $207F

#_0DFF97: dw $207F, $207F, $2854, $305E
#_0DFF9F: dw $6854, $207F, $207F, $207F
#_0DFFA7: dw $207F, $207F, $207F, $207F
#_0DFFAF: dw $207F, $207F, $207F, $207F
#_0DFFB7: dw $207F, $207F, $207F, $207F
#_0DFFBF: dw $207F, $207F, $207F, $207F
#_0DFFC7: dw $207F, $207F, $207F, $207F
#_0DFFCF: dw $207F, $207F, $207F, $207F

#_0DFFD7: dw $207F, $207F, $A850, $2856
#_0DFFDF: dw $E850

;===================================================================================================
; FREE ROM: 0x1F
;===================================================================================================
NULL_0DFFE1:
#_0DFFE1: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DFFE9: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DFFF1: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_0DFFF9: db $FF, $FF, $FF, $FF, $FF, $FF, $FF

org $1B8000

;===================================================================================================

SongBank_Underworld_Main:
|1B8000| dw $2CBF, SONG_POINTERS ; Transfer size, transfer address

site SONG_POINTERS

|1B8004:D000| dw $0000
|1B8006:D002| dw $0000
|1B8008:D004| dw $0000
|1B800A:D006| dw $0000
|1B800C:D008| dw $0000
|1B800E:D00A| dw $0000
|1B8010:D00C| dw $0000
|1B8012:D00E| dw $0000
|1B8014:D010| dw $0000
|1B8016:D012| dw $0000
|1B8018:D014| dw Song0B_FairyTheme
|1B801A:D016| dw $0000
|1B801C:D018| dw $0000
|1B801E:D01A| dw $0000
|1B8020:D01C| dw $0000
|1B8022:D01E| dw Song10_HyruleCastle
|1B8024:D020| dw Song11_PendantDungeon
|1B8026:D022| dw Song12_Cave
|1B8028:D024| dw Song13_Fanfare
|1B802A:D026| dw Song14_Sanctuary
|1B802C:D028| dw Song15_Boss
|1B802E:D02A| dw Song16_CrystalDungeon
|1B8030:D02C| dw Song17_Shop
|1B8032:D02E| dw Song12_Cave
|1B8034:D030| dw Song19_ZeldaRescue
|1B8036:D032| dw Song1A_CrystalMaiden
|1B8038:D034| dw Song1B_BigFairy
|1B803A:D036| dw Song1C_Suspense
|1B803C:D038| dw Song1D_AgahnimEscapes
|1B803E:D03A| dw Song1E_MeetingGanon
|1B8040:D03C| dw Song1F_KingOfThieves
|1B8042:D03E| dw $0000
|1B8044:D040| dw Song1D_AgahnimEscapes
|1B8046:D042| dw Song1E_MeetingGanon
|1B8048:D044| dw Song1F_KingOfThieves

;===================================================================================================

Song10_HyruleCastle:
|1B804A:D046| dw Song10_Segment0
|1B804C:D048| dw Song10_Segment1

Song10_Loop:
|1B804E:D04A| dw Song10_Segment2
|1B8050:D04C| dw Song10_Segment2
|1B8052:D04E| dw Song10_Segment3
|1B8054:D050| dw Song10_Segment2
|1B8056:D052| dw Song10_Segment4
|1B8058:D054| dw Song10_Segment5
|1B805A:D056| dw Song10_Segment6
|1B805C:D058| dw Song10_Segment7
|1B805E:D05A| dw Song10_Segment8
|1B8060:D05C| dw Song10_Segment9
|1B8062:D05E| dw Song10_SegmentA
|1B8064:D060| dw $00FF, Song10_Loop ; Loop point
|1B8068:D064| dw $0000

Song10_Segment1:
|1B806A:D066| dw Song10_Segment1_Track0
|1B806C:D068| dw Song10_Segment1_Track1
|1B806E:D06A| dw Song10_Segment1_Track2
|1B8070:D06C| dw Song10_Segment1_Track3
|1B8072:D06E| dw Song10_Segment1_Track4
|1B8074:D070| dw $0000
|1B8076:D072| dw $0000
|1B8078:D074| dw Song10_Segment1_Track5

Song10_Segment0:
|1B807A:D076| dw Song10_Segment0_Track0
|1B807C:D078| dw Song10_Segment0_Track1
|1B807E:D07A| dw Song10_Segment0_Track2
|1B8080:D07C| dw Song10_Segment0_Track3
|1B8082:D07E| dw Song10_Segment0_Track4
|1B8084:D080| dw Song10_Segment0_Track5
|1B8086:D082| dw Song10_Segment0_Track6
|1B8088:D084| dw Song10_Segment0_Track7

Song10_Segment2:
|1B808A:D086| dw Song10_Segment2_Track0
|1B808C:D088| dw Song10_Segment2_Track1
|1B808E:D08A| dw Song10_Segment2_Track2
|1B8090:D08C| dw Song10_Segment2_Track3
|1B8092:D08E| dw Song10_Segment2_Track4
|1B8094:D090| dw Song10_Segment2_Track5
|1B8096:D092| dw Song10_Segment2_Track6
|1B8098:D094| dw $0000

Song10_Segment3:
|1B809A:D096| dw Song10_Segment3_Track0
|1B809C:D098| dw Song10_Segment3_Track1
|1B809E:D09A| dw Song10_Segment3_Track2
|1B80A0:D09C| dw Song10_Segment3_Track3
|1B80A2:D09E| dw Song10_Segment3_Track4
|1B80A4:D0A0| dw Song10_Segment3_Track5
|1B80A6:D0A2| dw Song10_Segment3_Track6
|1B80A8:D0A4| dw $0000

Song10_Segment4:
|1B80AA:D0A6| dw Song10_Segment4_Track0
|1B80AC:D0A8| dw Song10_Segment4_Track1
|1B80AE:D0AA| dw Song10_Segment4_Track2
|1B80B0:D0AC| dw Song10_Segment4_Track3
|1B80B2:D0AE| dw Song10_Segment4_Track4
|1B80B4:D0B0| dw Song10_Segment4_Track5
|1B80B6:D0B2| dw Song10_Segment4_Track6
|1B80B8:D0B4| dw $0000

Song10_Segment5:
|1B80BA:D0B6| dw Song10_Segment5_Track0
|1B80BC:D0B8| dw Song10_Segment5_Track1
|1B80BE:D0BA| dw Song10_Segment5_Track2
|1B80C0:D0BC| dw Song10_Segment5_Track3
|1B80C2:D0BE| dw Song10_Segment5_Track4
|1B80C4:D0C0| dw Song10_Segment5_Track5
|1B80C6:D0C2| dw Song10_Segment5_Track6
|1B80C8:D0C4| dw Song10_Segment5_Track7

Song10_Segment8:
|1B80CA:D0C6| dw Song10_Segment8_Track0
|1B80CC:D0C8| dw Song10_Segment8_Track1
|1B80CE:D0CA| dw Song10_Segment8_Track2
|1B80D0:D0CC| dw Song10_Segment8_Track3
|1B80D2:D0CE| dw Song10_Segment8_Track4
|1B80D4:D0D0| dw $0000
|1B80D6:D0D2| dw Song10_Segment8_Track6
|1B80D8:D0D4| dw $0000

Song10_Segment6:
|1B80DA:D0D6| dw Song10_Segment6_Track0
|1B80DC:D0D8| dw Song10_Segment6_Track1
|1B80DE:D0DA| dw Song10_Segment6_Track2
|1B80E0:D0DC| dw Song10_Segment6_Track3
|1B80E2:D0DE| dw Song10_Segment6_Track4
|1B80E4:D0E0| dw $0000
|1B80E6:D0E2| dw Song10_Segment6_Track6
|1B80E8:D0E4| dw $0000

Song10_Segment7:
|1B80EA:D0E6| dw Song10_Segment7_Track0
|1B80EC:D0E8| dw Song10_Segment7_Track1
|1B80EE:D0EA| dw Song10_Segment7_Track2
|1B80F0:D0EC| dw Song10_Segment7_Track3
|1B80F2:D0EE| dw Song10_Segment7_Track4
|1B80F4:D0F0| dw Song10_Segment7_Track5
|1B80F6:D0F2| dw Song10_Segment7_Track6
|1B80F8:D0F4| dw $0000

Song10_Segment9:
|1B80FA:D0F6| dw Song10_Segment9_Track0
|1B80FC:D0F8| dw Song10_Segment9_Track1
|1B80FE:D0FA| dw Song10_Segment9_Track2
|1B8100:D0FC| dw Song10_Segment9_Track3
|1B8102:D0FE| dw Song10_Segment9_Track4
|1B8104:D100| dw Song10_Segment9_Track5
|1B8106:D102| dw Song10_Segment9_Track6
|1B8108:D104| dw $0000

Song10_SegmentA:
|1B810A:D106| dw Song10_SegmentA_Track0
|1B810C:D108| dw Song10_SegmentA_Track1
|1B810E:D10A| dw Song10_SegmentA_Track2
|1B8110:D10C| dw Song10_SegmentA_Track3
|1B8112:D10E| dw Song10_SegmentA_Track4
|1B8114:D110| dw $0000
|1B8116:D112| dw Song10_SegmentA_Track6
|1B8118:D114| dw Song10_SegmentA_Track7

;---------------------------------------------------------------------------------------------------

Song10_Segment1_Track0:
|1B811A:D116| db $E7, $1B ; set song tempo
|1B811C:D118| db $ED, $C8 ; set channel volume
|1B811E:D11A| db $E0, $0B ; set instrument - trombone
|1B8120:D11C| db $E3, $14, $1E, $14 ; enable vibrato
|1B8124:D120| db $60 ; duration
|1B8125:D121| db $C9 ; rest
|1B8126:D122| db $C9 ; rest
|1B8127:D123| db $EF : dw Song10_Sub_D90C : db $01 ; call segment subroutine
|1B812B:D127| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment1_Track1:
|1B812C:D128| db $EF : dw Song10_Sub_D925 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment1_Track2:
|1B8130:D12C| db $EF : dw Song10_Sub_D93F : db $01 ; call segment subroutine
|1B8134:D130| db $EF : dw Song10_Sub_D960 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment1_Track3:
|1B8138:D134| db $ED, $C8 ; set channel volume
|1B813A:D136| db $E0, $0A ; set instrument - strings B
|1B813C:D138| db $E3, $1D, $14, $1E ; enable vibrato
|1B8140:D13C| db $E1, $0F ; set panning - leaning left
|1B8142:D13E| db $60 ; duration
|1B8143:D13F| db $C9 ; rest
|1B8144:D140| db $C9 ; rest
|1B8145:D141| db $C9 ; rest
|1B8146:D142| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment1_Track4:
|1B8147:D143| db $EF : dw Song10_Sub_D976 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment1_Track5:
|1B814B:D147| db $ED, $8C ; set channel volume
|1B814D:D149| db $E0, $0A ; set instrument - strings B
|1B814F:D14B| db $E3, $1D, $14, $1E ; enable vibrato
|1B8153:D14F| db $60 ; duration
|1B8154:D150| db $C9 ; rest
|1B8155:D151| db $C9 ; rest
|1B8156:D152| db $C9 ; rest
|1B8157:D153| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment0_Track0:
|1B8158:D154| db $FA, $17 ; set base percussion sample
|1B815A:D156| db $E5, $C8 ; set song volume
|1B815C:D158| db $E7, $15 ; set song tempo
|1B815E:D15A| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1B8162:D15E| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1B8166:D162| db $F8, $1E, $1E, $1E ; initiate gradual echo volume change
|1B816A:D166| db $ED, $C8 ; set channel volume
|1B816C:D168| db $E0, $0B ; set instrument - trombone
|1B816E:D16A| db $E3, $14, $1E, $14 ; enable vibrato
|1B8172:D16E| db $08 ; duration
|1B8173:D16F| db $C9 ; rest
|1B8174:D170| db $10 ; duration
|1B8175:D171| db $C9 ; rest
|1B8176:D172| db $04, $3D ; duration, params
|1B8178:D174| db $AB ; play note G4
|1B8179:D175| db $AB ; play note G4
|1B817A:D176| db $0C ; duration
|1B817B:D177| db $AB ; play note G4
|1B817C:D178| db $A9 ; play note F4
|1B817D:D179| db $18, $6D ; duration, params
|1B817F:D17B| db $AB ; play note G4
|1B8180:D17C| db $12 ; duration
|1B8181:D17D| db $AC ; play note G#4
|1B8182:D17E| db $06, $3D ; duration, params
|1B8184:D180| db $AF ; play note B4
|1B8185:D181| db $60, $6D ; duration, params
|1B8187:D183| db $AB ; play note G4
|1B8188:D184| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment0_Track1:
|1B8189:D185| db $ED, $C8 ; set channel volume
|1B818B:D187| db $E0, $11 ; set instrument - trumpet
|1B818D:D189| db $E3, $14, $1E, $14 ; enable vibrato
|1B8191:D18D| db $E1, $05 ; set panning - leaning right
|1B8193:D18F| db $08 ; duration
|1B8194:D190| db $C9 ; rest
|1B8195:D191| db $48, $7F ; duration, params
|1B8197:D193| db $93 ; play note G2
|1B8198:D194| db $18, $6D ; duration, params
|1B819A:D196| db $94 ; play note G#2
|1B819B:D197| db $60 ; duration
|1B819C:D198| db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song10_Segment0_Track2:
|1B819D:D199| db $ED, $C8 ; set channel volume
|1B819F:D19B| db $E0, $0B ; set instrument - trombone
|1B81A1:D19D| db $E3, $14, $1E, $14 ; enable vibrato
|1B81A5:D1A1| db $E1, $08 ; set panning - leaning right
|1B81A7:D1A3| db $08 ; duration
|1B81A8:D1A4| db $C9 ; rest
|1B81A9:D1A5| db $10 ; duration
|1B81AA:D1A6| db $C9 ; rest
|1B81AB:D1A7| db $04, $3D ; duration, params
|1B81AD:D1A9| db $A6 ; play note D4
|1B81AE:D1AA| db $A6 ; play note D4
|1B81AF:D1AB| db $0C ; duration
|1B81B0:D1AC| db $A6 ; play note D4
|1B81B1:D1AD| db $A4 ; play note C4
|1B81B2:D1AE| db $18, $6D ; duration, params
|1B81B4:D1B0| db $A6 ; play note D4
|1B81B5:D1B1| db $12 ; duration
|1B81B6:D1B2| db $A7 ; play note D#4
|1B81B7:D1B3| db $06, $3D ; duration, params
|1B81B9:D1B5| db $AA ; play note F#4
|1B81BA:D1B6| db $60, $6D ; duration, params
|1B81BC:D1B8| db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song10_Segment0_Track3:
|1B81BD:D1B9| db $ED, $C8 ; set channel volume
|1B81BF:D1BB| db $E0, $0B ; set instrument - trombone
|1B81C1:D1BD| db $E3, $14, $1E, $14 ; enable vibrato
|1B81C5:D1C1| db $E1, $0C ; set panning - leaning left
|1B81C7:D1C3| db $08 ; duration
|1B81C8:D1C4| db $C9 ; rest
|1B81C9:D1C5| db $10 ; duration
|1B81CA:D1C6| db $C9 ; rest
|1B81CB:D1C7| db $04, $3D ; duration, params
|1B81CD:D1C9| db $A1 ; play note A3
|1B81CE:D1CA| db $A1 ; play note A3
|1B81CF:D1CB| db $0C ; duration
|1B81D0:D1CC| db $A1 ; play note A3
|1B81D1:D1CD| db $9F ; play note G3
|1B81D2:D1CE| db $18, $6D ; duration, params
|1B81D4:D1D0| db $A1 ; play note A3
|1B81D5:D1D1| db $12 ; duration
|1B81D6:D1D2| db $A2 ; play note A#3
|1B81D7:D1D3| db $06, $3D ; duration, params
|1B81D9:D1D5| db $A5 ; play note C#4
|1B81DA:D1D6| db $60, $6D ; duration, params
|1B81DC:D1D8| db $A1 ; play note A3

;---------------------------------------------------------------------------------------------------

Song10_Segment0_Track4:
|1B81DD:D1D9| db $ED, $FA ; set channel volume
|1B81DF:D1DB| db $E0, $02 ; set instrument - timpani
|1B81E1:D1DD| db $04, $7D ; duration, params
|1B81E3:D1DF| db $87 ; play note G1
|1B81E4:D1E0| db $87 ; play note G1
|1B81E5:D1E1| db $48, $7F ; duration, params
|1B81E7:D1E3| db $87 ; play note G1
|1B81E8:D1E4| db $06, $7D ; duration, params
|1B81EA:D1E6| db $88 ; play note G#1
|1B81EB:D1E7| db $06, $7B ; duration, params
|1B81ED:D1E9| db $88 ; play note G#1
|1B81EE:D1EA| db $09, $7C ; duration, params
|1B81F0:D1EC| db $88 ; play note G#1
|1B81F1:D1ED| db $03 ; duration
|1B81F2:D1EE| db $C9 ; rest
|1B81F3:D1EF| db $06, $7E ; duration, params
|1B81F5:D1F1| db $87 ; play note G1
|1B81F6:D1F2| db $06, $7A ; duration, params
|1B81F8:D1F4| db $87 ; play note G1
|1B81F9:D1F5| db $06, $78 ; duration, params
|1B81FB:D1F7| db $87 ; play note G1
|1B81FC:D1F8| db $06, $76 ; duration, params
|1B81FE:D1FA| db $87 ; play note G1
|1B81FF:D1FB| db $06, $77 ; duration, params
|1B8201:D1FD| db $87 ; play note G1
|1B8202:D1FE| db $06, $78 ; duration, params
|1B8204:D200| db $87 ; play note G1
|1B8205:D201| db $06, $79 ; duration, params
|1B8207:D203| db $87 ; play note G1
|1B8208:D204| db $06, $7A ; duration, params
|1B820A:D206| db $87 ; play note G1
|1B820B:D207| db $06, $7B ; duration, params
|1B820D:D209| db $87 ; play note G1
|1B820E:D20A| db $06, $7C ; duration, params
|1B8210:D20C| db $87 ; play note G1
|1B8211:D20D| db $06, $7D ; duration, params
|1B8213:D20F| db $87 ; play note G1
|1B8214:D210| db $06, $7E ; duration, params
|1B8216:D212| db $87 ; play note G1
|1B8217:D213| db $06, $7F ; duration, params
|1B8219:D215| db $87 ; play note G1
|1B821A:D216| db $87 ; play note G1
|1B821B:D217| db $0C ; duration
|1B821C:D218| db $87 ; play note G1

;---------------------------------------------------------------------------------------------------

Song10_Segment0_Track5:
|1B821D:D219| db $ED, $FA ; set channel volume
|1B821F:D21B| db $E0, $02 ; set instrument - timpani
|1B8221:D21D| db $08 ; duration
|1B8222:D21E| db $C9 ; rest
|1B8223:D21F| db $E0, $0C ; set instrument - cymbal
|1B8225:D221| db $4B, $7F ; duration, params
|1B8227:D223| db $95 ; play note A2
|1B8228:D224| db $E0, $02 ; set instrument - timpani
|1B822A:D226| db $06, $7B ; duration, params
|1B822C:D228| db $88 ; play note G#1
|1B822D:D229| db $06, $7C ; duration, params
|1B822F:D22B| db $88 ; play note G#1
|1B8230:D22C| db $03 ; duration
|1B8231:D22D| db $C9 ; rest
|1B8232:D22E| db $C9 ; rest
|1B8233:D22F| db $06, $7E ; duration, params
|1B8235:D231| db $87 ; play note G1
|1B8236:D232| db $06, $7A ; duration, params
|1B8238:D234| db $87 ; play note G1
|1B8239:D235| db $06, $78 ; duration, params
|1B823B:D237| db $87 ; play note G1
|1B823C:D238| db $06, $76 ; duration, params
|1B823E:D23A| db $87 ; play note G1
|1B823F:D23B| db $06, $77 ; duration, params
|1B8241:D23D| db $87 ; play note G1
|1B8242:D23E| db $06, $78 ; duration, params
|1B8244:D240| db $87 ; play note G1
|1B8245:D241| db $06, $79 ; duration, params
|1B8247:D243| db $87 ; play note G1
|1B8248:D244| db $06, $7A ; duration, params
|1B824A:D246| db $87 ; play note G1
|1B824B:D247| db $06, $7B ; duration, params
|1B824D:D249| db $87 ; play note G1
|1B824E:D24A| db $06, $7C ; duration, params
|1B8250:D24C| db $87 ; play note G1
|1B8251:D24D| db $06, $7D ; duration, params
|1B8253:D24F| db $87 ; play note G1
|1B8254:D250| db $06, $7E ; duration, params
|1B8256:D252| db $87 ; play note G1
|1B8257:D253| db $15, $7F ; duration, params
|1B8259:D255| db $87 ; play note G1
|1B825A:D256| db $06 ; duration
|1B825B:D257| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment0_Track6:
|1B825C:D258| db $ED, $8C ; set channel volume
|1B825E:D25A| db $E0, $16 ; set instrument - flute
|1B8260:D25C| db $E3, $14, $1E, $14 ; enable vibrato
|1B8264:D260| db $E1, $07 ; set panning - leaning right
|1B8266:D262| db $08 ; duration
|1B8267:D263| db $C9 ; rest
|1B8268:D264| db $10 ; duration
|1B8269:D265| db $C9 ; rest
|1B826A:D266| db $04, $3D ; duration, params
|1B826C:D268| db $B2 ; play note D5
|1B826D:D269| db $B2 ; play note D5
|1B826E:D26A| db $0C ; duration
|1B826F:D26B| db $B2 ; play note D5
|1B8270:D26C| db $B0 ; play note C5
|1B8271:D26D| db $18, $6D ; duration, params
|1B8273:D26F| db $B2 ; play note D5
|1B8274:D270| db $12 ; duration
|1B8275:D271| db $B3 ; play note D#5
|1B8276:D272| db $06, $3D ; duration, params
|1B8278:D274| db $B6 ; play note F#5
|1B8279:D275| db $60, $6D ; duration, params
|1B827B:D277| db $B2 ; play note D5

;---------------------------------------------------------------------------------------------------

Song10_Segment0_Track7:
|1B827C:D278| db $ED, $A0 ; set channel volume
|1B827E:D27A| db $E0, $0B ; set instrument - trombone
|1B8280:D27C| db $E3, $17, $1E, $12 ; enable vibrato
|1B8284:D280| db $E1, $09 ; set panning - leaning right
|1B8286:D282| db $10 ; duration
|1B8287:D283| db $C9 ; rest
|1B8288:D284| db $C9 ; rest
|1B8289:D285| db $04, $3D ; duration, params
|1B828B:D287| db $AB ; play note G4
|1B828C:D288| db $AB ; play note G4
|1B828D:D289| db $0C ; duration
|1B828E:D28A| db $AB ; play note G4
|1B828F:D28B| db $A9 ; play note F4
|1B8290:D28C| db $18, $6D ; duration, params
|1B8292:D28E| db $AB ; play note G4
|1B8293:D28F| db $12 ; duration
|1B8294:D290| db $AC ; play note G#4
|1B8295:D291| db $06, $3D ; duration, params
|1B8297:D293| db $AF ; play note B4
|1B8298:D294| db $58, $6D ; duration, params
|1B829A:D296| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song10_Segment2_Track0:
|1B829B:D297| db $ED, $C8 ; set channel volume
|1B829D:D299| db $E0, $0B ; set instrument - trombone
|1B829F:D29B| db $E3, $14, $1E, $14 ; enable vibrato
|1B82A3:D29F| db $EF : dw Song10_Sub_D90C : db $01 ; call segment subroutine
|1B82A7:D2A3| db $C9 ; rest
|1B82A8:D2A4| db $AB ; play note G4
|1B82A9:D2A5| db $C9 ; rest
|1B82AA:D2A6| db $AB ; play note G4
|1B82AB:D2A7| db $A9 ; play note F4
|1B82AC:D2A8| db $C9 ; rest
|1B82AD:D2A9| db $A9 ; play note F4
|1B82AE:D2AA| db $AB ; play note G4
|1B82AF:D2AB| db $C9 ; rest
|1B82B0:D2AC| db $AB ; play note G4
|1B82B1:D2AD| db $AB ; play note G4
|1B82B2:D2AE| db $06, $4D ; duration, params
|1B82B4:D2B0| db $AB ; play note G4
|1B82B5:D2B1| db $AB ; play note G4
|1B82B6:D2B2| db $0C, $2D ; duration, params
|1B82B8:D2B4| db $AB ; play note G4
|1B82B9:D2B5| db $AB ; play note G4
|1B82BA:D2B6| db $AC ; play note G#4
|1B82BB:D2B7| db $AA ; play note F#4
|1B82BC:D2B8| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment2_Track1:
|1B82BD:D2B9| db $ED, $8C ; set channel volume
|1B82BF:D2BB| db $E0, $0A ; set instrument - strings B
|1B82C1:D2BD| db $E3, $14, $1E, $14 ; enable vibrato
|1B82C5:D2C1| db $EF : dw Song10_Sub_D9A7 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment2_Track2:
|1B82C9:D2C5| db $EF : dw Song10_Sub_D93F : db $01 ; call segment subroutine
|1B82CD:D2C9| db $C9 ; rest
|1B82CE:D2CA| db $A6 ; play note D4
|1B82CF:D2CB| db $C9 ; rest
|1B82D0:D2CC| db $A6 ; play note D4
|1B82D1:D2CD| db $A4 ; play note C4
|1B82D2:D2CE| db $C9 ; rest
|1B82D3:D2CF| db $A4 ; play note C4
|1B82D4:D2D0| db $A6 ; play note D4
|1B82D5:D2D1| db $C9 ; rest
|1B82D6:D2D2| db $A6 ; play note D4
|1B82D7:D2D3| db $A6 ; play note D4
|1B82D8:D2D4| db $06 ; duration
|1B82D9:D2D5| db $A6 ; play note D4
|1B82DA:D2D6| db $A6 ; play note D4
|1B82DB:D2D7| db $0C ; duration
|1B82DC:D2D8| db $A6 ; play note D4
|1B82DD:D2D9| db $A6 ; play note D4
|1B82DE:D2DA| db $A7 ; play note D#4
|1B82DF:D2DB| db $A5 ; play note C#4

;---------------------------------------------------------------------------------------------------

Song10_Segment2_Track3:
|1B82E0:D2DC| db $ED, $C8 ; set channel volume
|1B82E2:D2DE| db $E0, $0A ; set instrument - strings B
|1B82E4:D2E0| db $E3, $1D, $14, $1E ; enable vibrato
|1B82E8:D2E4| db $60, $7D ; duration, params
|1B82EA:D2E6| db $AB ; play note G4
|1B82EB:D2E7| db $F9, $24, $0C, $A6 ; slide to note
|1B82EF:D2EB| db $24, $6D ; duration, params
|1B82F1:D2ED| db $C8 ; sustain current note
|1B82F2:D2EE| db $0C ; duration
|1B82F3:D2EF| db $AB ; play note G4
|1B82F4:D2F0| db $AC ; play note G#4
|1B82F5:D2F1| db $AE ; play note A#4
|1B82F6:D2F2| db $08 ; duration
|1B82F7:D2F3| db $C8 ; sustain current note
|1B82F8:D2F4| db $AA ; play note F#4
|1B82F9:D2F5| db $AE ; play note A#4
|1B82FA:D2F6| db $60, $7D ; duration, params
|1B82FC:D2F8| db $AB ; play note G4
|1B82FD:D2F9| db $F9, $24, $0C, $A6 ; slide to note
|1B8301:D2FD| db $30, $68 ; duration, params
|1B8303:D2FF| db $C8 ; sustain current note
|1B8304:D300| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment2_Track4:
|1B8305:D301| db $ED, $C8 ; set channel volume
|1B8307:D303| db $E0, $02 ; set instrument - timpani
|1B8309:D305| db $EF : dw Song10_Sub_D9B7 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment2_Track5:
|1B830D:D309| db $ED, $C8 ; set channel volume
|1B830F:D30B| db $E0, $0B ; set instrument - trombone
|1B8311:D30D| db $E3, $19, $1E, $17 ; enable vibrato
|1B8315:D311| db $E1, $07 ; set panning - leaning right
|1B8317:D313| db $60 ; duration
|1B8318:D314| db $C9 ; rest
|1B8319:D315| db $C9 ; rest
|1B831A:D316| db $40 ; duration
|1B831B:D317| db $C9 ; rest
|1B831C:D318| db $04, $79 ; duration, params
|1B831E:D31A| db $AB ; play note G4
|1B831F:D31B| db $04, $7A ; duration, params
|1B8321:D31D| db $AD ; play note A4
|1B8322:D31E| db $04, $7B ; duration, params
|1B8324:D320| db $AE ; play note A#4
|1B8325:D321| db $04, $7C ; duration, params
|1B8327:D323| db $AF ; play note B4
|1B8328:D324| db $04, $7D ; duration, params
|1B832A:D326| db $B1 ; play note C#5
|1B832B:D327| db $0C, $2D ; duration, params
|1B832D:D329| db $B2 ; play note D5
|1B832E:D32A| db $C9 ; rest
|1B832F:D32B| db $B2 ; play note D5
|1B8330:D32C| db $B2 ; play note D5
|1B8331:D32D| db $06 ; duration
|1B8332:D32E| db $B2 ; play note D5
|1B8333:D32F| db $B2 ; play note D5
|1B8334:D330| db $0C ; duration
|1B8335:D331| db $B5 ; play note F5
|1B8336:D332| db $B5 ; play note F5
|1B8337:D333| db $06, $7B ; duration, params
|1B8339:D335| db $B3 ; play note D#5
|1B833A:D336| db $B2 ; play note D5
|1B833B:D337| db $B1 ; play note C#5
|1B833C:D338| db $06, $2B ; duration, params
|1B833E:D33A| db $B0 ; play note C5

;---------------------------------------------------------------------------------------------------

Song10_Segment2_Track6:
|1B833F:D33B| db $ED, $8C ; set channel volume
|1B8341:D33D| db $E0, $0A ; set instrument - strings B
|1B8343:D33F| db $E3, $1D, $14, $1E ; enable vibrato
|1B8347:D343| db $08 ; duration
|1B8348:D344| db $C9 ; rest
|1B8349:D345| db $30, $6D ; duration, params
|1B834B:D347| db $AB ; play note G4
|1B834C:D348| db $A6 ; play note D4
|1B834D:D349| db $24 ; duration
|1B834E:D34A| db $C8 ; sustain current note
|1B834F:D34B| db $0C ; duration
|1B8350:D34C| db $AB ; play note G4
|1B8351:D34D| db $AC ; play note G#4
|1B8352:D34E| db $AE ; play note A#4
|1B8353:D34F| db $08 ; duration
|1B8354:D350| db $C8 ; sustain current note
|1B8355:D351| db $AA ; play note F#4
|1B8356:D352| db $AE ; play note A#4
|1B8357:D353| db $30 ; duration
|1B8358:D354| db $AB ; play note G4
|1B8359:D355| db $A6 ; play note D4
|1B835A:D356| db $C8 ; sustain current note
|1B835B:D357| db $28 ; duration
|1B835C:D358| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment3_Track0:
|1B835D:D359| db $ED, $C8 ; set channel volume
|1B835F:D35B| db $E0, $0B ; set instrument - trombone
|1B8361:D35D| db $E3, $14, $1E, $14 ; enable vibrato
|1B8365:D361| db $0C ; duration
|1B8366:D362| db $C9 ; rest
|1B8367:D363| db $0C, $2D ; duration, params
|1B8369:D365| db $B0 ; play note C5
|1B836A:D366| db $C9 ; rest
|1B836B:D367| db $B0 ; play note C5
|1B836C:D368| db $AE ; play note A#4
|1B836D:D369| db $C9 ; rest
|1B836E:D36A| db $AE ; play note A#4
|1B836F:D36B| db $B0 ; play note C5
|1B8370:D36C| db $C9 ; rest
|1B8371:D36D| db $B0 ; play note C5
|1B8372:D36E| db $B0 ; play note C5
|1B8373:D36F| db $06, $4D ; duration, params
|1B8375:D371| db $B0 ; play note C5
|1B8376:D372| db $B0 ; play note C5
|1B8377:D373| db $0C, $2D ; duration, params
|1B8379:D375| db $B0 ; play note C5
|1B837A:D376| db $B0 ; play note C5
|1B837B:D377| db $B1 ; play note C#5
|1B837C:D378| db $AF ; play note B4
|1B837D:D379| db $C9 ; rest
|1B837E:D37A| db $B0 ; play note C5
|1B837F:D37B| db $C9 ; rest
|1B8380:D37C| db $B0 ; play note C5
|1B8381:D37D| db $AE ; play note A#4
|1B8382:D37E| db $C9 ; rest
|1B8383:D37F| db $AE ; play note A#4
|1B8384:D380| db $B0 ; play note C5
|1B8385:D381| db $C9 ; rest
|1B8386:D382| db $B0 ; play note C5
|1B8387:D383| db $B0 ; play note C5
|1B8388:D384| db $06, $4D ; duration, params
|1B838A:D386| db $B0 ; play note C5
|1B838B:D387| db $B0 ; play note C5
|1B838C:D388| db $0C, $2D ; duration, params
|1B838E:D38A| db $B0 ; play note C5
|1B838F:D38B| db $B0 ; play note C5
|1B8390:D38C| db $B1 ; play note C#5
|1B8391:D38D| db $AF ; play note B4
|1B8392:D38E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment3_Track1:
|1B8393:D38F| db $ED, $8C ; set channel volume
|1B8395:D391| db $E0, $0A ; set instrument - strings B
|1B8397:D393| db $E3, $14, $1E, $14 ; enable vibrato
|1B839B:D397| db $30, $7D ; duration, params
|1B839D:D399| db $A4 ; play note C4
|1B839E:D39A| db $A2 ; play note A#3
|1B839F:D39B| db $A4 ; play note C4
|1B83A0:D39C| db $18 ; duration
|1B83A1:D39D| db $A5 ; play note C#4
|1B83A2:D39E| db $A3 ; play note B3
|1B83A3:D39F| db $30 ; duration
|1B83A4:D3A0| db $A4 ; play note C4
|1B83A5:D3A1| db $A2 ; play note A#3
|1B83A6:D3A2| db $A4 ; play note C4
|1B83A7:D3A3| db $18 ; duration
|1B83A8:D3A4| db $A5 ; play note C#4
|1B83A9:D3A5| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song10_Segment3_Track2:
|1B83AA:D3A6| db $ED, $C8 ; set channel volume
|1B83AC:D3A8| db $E0, $0B ; set instrument - trombone
|1B83AE:D3AA| db $E3, $19, $1E, $17 ; enable vibrato
|1B83B2:D3AE| db $EF : dw Song10_Sub_D90C : db $01 ; call segment subroutine
|1B83B6:D3B2| db $C9 ; rest
|1B83B7:D3B3| db $AB ; play note G4
|1B83B8:D3B4| db $C9 ; rest
|1B83B9:D3B5| db $AB ; play note G4
|1B83BA:D3B6| db $A9 ; play note F4
|1B83BB:D3B7| db $C9 ; rest
|1B83BC:D3B8| db $A9 ; play note F4
|1B83BD:D3B9| db $AB ; play note G4
|1B83BE:D3BA| db $C9 ; rest
|1B83BF:D3BB| db $AB ; play note G4
|1B83C0:D3BC| db $AB ; play note G4
|1B83C1:D3BD| db $06 ; duration
|1B83C2:D3BE| db $AB ; play note G4
|1B83C3:D3BF| db $AB ; play note G4
|1B83C4:D3C0| db $0C ; duration
|1B83C5:D3C1| db $AB ; play note G4
|1B83C6:D3C2| db $AB ; play note G4
|1B83C7:D3C3| db $AC ; play note G#4
|1B83C8:D3C4| db $AA ; play note F#4

;---------------------------------------------------------------------------------------------------

Song10_Segment3_Track3:
|1B83C9:D3C5| db $ED, $C8 ; set channel volume
|1B83CB:D3C7| db $E0, $0A ; set instrument - strings B
|1B83CD:D3C9| db $E3, $1D, $14, $1E ; enable vibrato
|1B83D1:D3CD| db $60, $7D ; duration, params
|1B83D3:D3CF| db $B0 ; play note C5
|1B83D4:D3D0| db $F9, $24, $0C, $AB ; slide to note
|1B83D8:D3D4| db $24, $6D ; duration, params
|1B83DA:D3D6| db $C8 ; sustain current note
|1B83DB:D3D7| db $0C ; duration
|1B83DC:D3D8| db $B0 ; play note C5
|1B83DD:D3D9| db $10 ; duration
|1B83DE:D3DA| db $B5 ; play note F5
|1B83DF:D3DB| db $08 ; duration
|1B83E0:D3DC| db $B3 ; play note D#5
|1B83E1:D3DD| db $C8 ; sustain current note
|1B83E2:D3DE| db $B1 ; play note C#5
|1B83E3:D3DF| db $AF ; play note B4
|1B83E4:D3E0| db $60, $7D ; duration, params
|1B83E6:D3E2| db $B0 ; play note C5
|1B83E7:D3E3| db $F9, $24, $0C, $AB ; slide to note
|1B83EB:D3E7| db $30, $68 ; duration, params
|1B83ED:D3E9| db $C8 ; sustain current note
|1B83EE:D3EA| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment3_Track4:
|1B83EF:D3EB| db $ED, $C8 ; set channel volume
|1B83F1:D3ED| db $E0, $02 ; set instrument - timpani
|1B83F3:D3EF| db $EF : dw Song10_Sub_D9CF : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment3_Track5:
|1B83F7:D3F3| db $ED, $C8 ; set channel volume
|1B83F9:D3F5| db $E0, $0B ; set instrument - trombone
|1B83FB:D3F7| db $E3, $19, $1E, $17 ; enable vibrato
|1B83FF:D3FB| db $60 ; duration
|1B8400:D3FC| db $C9 ; rest
|1B8401:D3FD| db $C9 ; rest
|1B8402:D3FE| db $40 ; duration
|1B8403:D3FF| db $C9 ; rest
|1B8404:D400| db $04, $79 ; duration, params
|1B8406:D402| db $B0 ; play note C5
|1B8407:D403| db $04, $7A ; duration, params
|1B8409:D405| db $B2 ; play note D5
|1B840A:D406| db $04, $7B ; duration, params
|1B840C:D408| db $B3 ; play note D#5
|1B840D:D409| db $04, $7C ; duration, params
|1B840F:D40B| db $B4 ; play note E5
|1B8410:D40C| db $04, $7D ; duration, params
|1B8412:D40E| db $B6 ; play note F#5
|1B8413:D40F| db $0C ; duration
|1B8414:D410| db $B7 ; play note G5
|1B8415:D411| db $24, $4D ; duration, params
|1B8417:D413| db $C8 ; sustain current note
|1B8418:D414| db $06, $2D ; duration, params
|1B841A:D416| db $B7 ; play note G5
|1B841B:D417| db $B7 ; play note G5
|1B841C:D418| db $0C ; duration
|1B841D:D419| db $BA ; play note A#5
|1B841E:D41A| db $BA ; play note A#5
|1B841F:D41B| db $06, $7D ; duration, params
|1B8421:D41D| db $B8 ; play note G#5
|1B8422:D41E| db $06, $6D ; duration, params
|1B8424:D420| db $B7 ; play note G5
|1B8425:D421| db $06, $7D ; duration, params
|1B8427:D423| db $B6 ; play note F#5
|1B8428:D424| db $06, $2D ; duration, params
|1B842A:D426| db $B5 ; play note F5

;---------------------------------------------------------------------------------------------------

Song10_Segment3_Track6:
|1B842B:D427| db $ED, $8C ; set channel volume
|1B842D:D429| db $E0, $0A ; set instrument - strings B
|1B842F:D42B| db $E3, $1D, $14, $1E ; enable vibrato
|1B8433:D42F| db $08 ; duration
|1B8434:D430| db $C9 ; rest
|1B8435:D431| db $30, $6D ; duration, params
|1B8437:D433| db $B0 ; play note C5
|1B8438:D434| db $AB ; play note G4
|1B8439:D435| db $24 ; duration
|1B843A:D436| db $C8 ; sustain current note
|1B843B:D437| db $0C ; duration
|1B843C:D438| db $B0 ; play note C5
|1B843D:D439| db $10 ; duration
|1B843E:D43A| db $B5 ; play note F5
|1B843F:D43B| db $08 ; duration
|1B8440:D43C| db $B3 ; play note D#5
|1B8441:D43D| db $C8 ; sustain current note
|1B8442:D43E| db $B1 ; play note C#5
|1B8443:D43F| db $AF ; play note B4
|1B8444:D440| db $30 ; duration
|1B8445:D441| db $B0 ; play note C5
|1B8446:D442| db $AB ; play note G4
|1B8447:D443| db $C8 ; sustain current note
|1B8448:D444| db $28 ; duration
|1B8449:D445| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment4_Track0:
|1B844A:D446| db $ED, $C8 ; set channel volume
|1B844C:D448| db $E0, $0B ; set instrument - trombone
|1B844E:D44A| db $E3, $19, $1E, $17 ; enable vibrato
|1B8452:D44E| db $E1, $08 ; set panning - leaning right
|1B8454:D450| db $60 ; duration
|1B8455:D451| db $C9 ; rest
|1B8456:D452| db $18 ; duration
|1B8457:D453| db $C9 ; rest
|1B8458:D454| db $04, $2D ; duration, params
|1B845A:D456| db $B2 ; play note D5
|1B845B:D457| db $B2 ; play note D5
|1B845C:D458| db $08 ; duration
|1B845D:D459| db $B2 ; play note D5
|1B845E:D45A| db $B2 ; play note D5
|1B845F:D45B| db $0C ; duration
|1B8460:D45C| db $B2 ; play note D5
|1B8461:D45D| db $B3 ; play note D#5
|1B8462:D45E| db $08 ; duration
|1B8463:D45F| db $B5 ; play note F5
|1B8464:D460| db $B3 ; play note D#5
|1B8465:D461| db $B2 ; play note D5
|1B8466:D462| db $60 ; duration
|1B8467:D463| db $C9 ; rest
|1B8468:D464| db $18 ; duration
|1B8469:D465| db $C9 ; rest
|1B846A:D466| db $04 ; duration
|1B846B:D467| db $B2 ; play note D5
|1B846C:D468| db $B2 ; play note D5
|1B846D:D469| db $08 ; duration
|1B846E:D46A| db $B2 ; play note D5
|1B846F:D46B| db $B2 ; play note D5
|1B8470:D46C| db $0C ; duration
|1B8471:D46D| db $B2 ; play note D5
|1B8472:D46E| db $B3 ; play note D#5
|1B8473:D46F| db $08 ; duration
|1B8474:D470| db $B5 ; play note F5
|1B8475:D471| db $B3 ; play note D#5
|1B8476:D472| db $B2 ; play note D5
|1B8477:D473| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment4_Track1:
|1B8478:D474| db $ED, $C8 ; set channel volume
|1B847A:D476| db $E0, $0A ; set instrument - strings B
|1B847C:D478| db $E3, $14, $1E, $14 ; enable vibrato
|1B8480:D47C| db $20, $7D ; duration, params
|1B8482:D47E| db $94 ; play note G#2
|1B8483:D47F| db $08 ; duration
|1B8484:D480| db $9B ; play note D#3
|1B8485:D481| db $A0 ; play note G#3
|1B8486:D482| db $30 ; duration
|1B8487:D483| db $A7 ; play note D#4
|1B8488:D484| db $20 ; duration
|1B8489:D485| db $93 ; play note G2
|1B848A:D486| db $08 ; duration
|1B848B:D487| db $9A ; play note D3
|1B848C:D488| db $9F ; play note G3
|1B848D:D489| db $30 ; duration
|1B848E:D48A| db $A6 ; play note D4
|1B848F:D48B| db $20 ; duration
|1B8490:D48C| db $94 ; play note G#2
|1B8491:D48D| db $08 ; duration
|1B8492:D48E| db $9B ; play note D#3
|1B8493:D48F| db $A0 ; play note G#3
|1B8494:D490| db $30 ; duration
|1B8495:D491| db $A7 ; play note D#4
|1B8496:D492| db $20 ; duration
|1B8497:D493| db $93 ; play note G2
|1B8498:D494| db $08 ; duration
|1B8499:D495| db $9A ; play note D3
|1B849A:D496| db $9F ; play note G3
|1B849B:D497| db $30 ; duration
|1B849C:D498| db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song10_Segment4_Track2:
|1B849D:D499| db $ED, $C8 ; set channel volume
|1B849F:D49B| db $E0, $0B ; set instrument - trombone
|1B84A1:D49D| db $E3, $19, $1E, $17 ; enable vibrato
|1B84A5:D4A1| db $E1, $06 ; set panning - leaning right
|1B84A7:D4A3| db $60 ; duration
|1B84A8:D4A4| db $C9 ; rest
|1B84A9:D4A5| db $18 ; duration
|1B84AA:D4A6| db $C9 ; rest
|1B84AB:D4A7| db $04, $2D ; duration, params
|1B84AD:D4A9| db $AF ; play note B4
|1B84AE:D4AA| db $AF ; play note B4
|1B84AF:D4AB| db $08 ; duration
|1B84B0:D4AC| db $AF ; play note B4
|1B84B1:D4AD| db $AF ; play note B4
|1B84B2:D4AE| db $0C ; duration
|1B84B3:D4AF| db $AF ; play note B4
|1B84B4:D4B0| db $B0 ; play note C5
|1B84B5:D4B1| db $08 ; duration
|1B84B6:D4B2| db $B2 ; play note D5
|1B84B7:D4B3| db $B0 ; play note C5
|1B84B8:D4B4| db $AF ; play note B4
|1B84B9:D4B5| db $60 ; duration
|1B84BA:D4B6| db $C9 ; rest
|1B84BB:D4B7| db $18 ; duration
|1B84BC:D4B8| db $C9 ; rest
|1B84BD:D4B9| db $04 ; duration
|1B84BE:D4BA| db $AF ; play note B4
|1B84BF:D4BB| db $AF ; play note B4
|1B84C0:D4BC| db $08 ; duration
|1B84C1:D4BD| db $AF ; play note B4
|1B84C2:D4BE| db $AF ; play note B4
|1B84C3:D4BF| db $0C ; duration
|1B84C4:D4C0| db $AF ; play note B4
|1B84C5:D4C1| db $B0 ; play note C5
|1B84C6:D4C2| db $08 ; duration
|1B84C7:D4C3| db $B2 ; play note D5
|1B84C8:D4C4| db $B0 ; play note C5
|1B84C9:D4C5| db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song10_Segment4_Track3:
|1B84CA:D4C6| db $ED, $C8 ; set channel volume
|1B84CC:D4C8| db $E0, $0A ; set instrument - strings B
|1B84CE:D4CA| db $E3, $1D, $14, $1E ; enable vibrato
|1B84D2:D4CE| db $E1, $0F ; set panning - leaning left
|1B84D4:D4D0| db $20, $6D ; duration, params
|1B84D6:D4D2| db $A9 ; play note F4
|1B84D7:D4D3| db $08 ; duration
|1B84D8:D4D4| db $A7 ; play note D#4
|1B84D9:D4D5| db $A6 ; play note D4
|1B84DA:D4D6| db $0C ; duration
|1B84DB:D4D7| db $A4 ; play note C4
|1B84DC:D4D8| db $0C, $4D ; duration, params
|1B84DE:D4DA| db $A6 ; play note D4
|1B84DF:D4DB| db $0C, $3D ; duration, params
|1B84E1:D4DD| db $A9 ; play note F4
|1B84E2:D4DE| db $B0 ; play note C5
|1B84E3:D4DF| db $EF : dw Song10_Sub_D9E7 : db $01 ; call segment subroutine
|1B84E7:D4E3| db $60, $5D ; duration, params
|1B84E9:D4E5| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song10_Segment4_Track4:
|1B84EA:D4E6| db $ED, $C8 ; set channel volume
|1B84EC:D4E8| db $E0, $02 ; set instrument - timpani
|1B84EE:D4EA| db $EF : dw Song10_Sub_D9FA : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment4_Track5:
|1B84F2:D4EE| db $ED, $C8 ; set channel volume
|1B84F4:D4F0| db $E0, $02 ; set instrument - timpani
|1B84F6:D4F2| db $E1, $0A ; set panning - balanced
|1B84F8:D4F4| db $03, $6D ; duration, params
|1B84FA:D4F6| db $88 ; play note G#1
|1B84FB:D4F7| db $06, $6B ; duration, params
|1B84FD:D4F9| db $88 ; play note G#1
|1B84FE:D4FA| db $06, $68 ; duration, params
|1B8500:D4FC| db $88 ; play note G#1
|1B8501:D4FD| db $06, $69 ; duration, params
|1B8503:D4FF| db $88 ; play note G#1
|1B8504:D500| db $06, $6A ; duration, params
|1B8506:D502| db $88 ; play note G#1
|1B8507:D503| db $06, $6B ; duration, params
|1B8509:D505| db $88 ; play note G#1
|1B850A:D506| db $06, $6C ; duration, params
|1B850C:D508| db $88 ; play note G#1
|1B850D:D509| db $06, $6D ; duration, params
|1B850F:D50B| db $88 ; play note G#1
|1B8510:D50C| db $33 ; duration
|1B8511:D50D| db $C9 ; rest
|1B8512:D50E| db $60 ; duration
|1B8513:D50F| db $C9 ; rest
|1B8514:D510| db $03 ; duration
|1B8515:D511| db $88 ; play note G#1
|1B8516:D512| db $06, $6B ; duration, params
|1B8518:D514| db $88 ; play note G#1
|1B8519:D515| db $06, $68 ; duration, params
|1B851B:D517| db $88 ; play note G#1
|1B851C:D518| db $06, $69 ; duration, params
|1B851E:D51A| db $88 ; play note G#1
|1B851F:D51B| db $06, $6A ; duration, params
|1B8521:D51D| db $88 ; play note G#1
|1B8522:D51E| db $06, $6B ; duration, params
|1B8524:D520| db $88 ; play note G#1
|1B8525:D521| db $06, $6C ; duration, params
|1B8527:D523| db $88 ; play note G#1
|1B8528:D524| db $06, $6D ; duration, params
|1B852A:D526| db $88 ; play note G#1
|1B852B:D527| db $33 ; duration
|1B852C:D528| db $C9 ; rest
|1B852D:D529| db $60 ; duration
|1B852E:D52A| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment4_Track6:
|1B852F:D52B| db $08 ; duration
|1B8530:D52C| db $C9 ; rest
|1B8531:D52D| db $20, $6D ; duration, params
|1B8533:D52F| db $A9 ; play note F4
|1B8534:D530| db $08 ; duration
|1B8535:D531| db $A7 ; play note D#4
|1B8536:D532| db $A6 ; play note D4
|1B8537:D533| db $0C ; duration
|1B8538:D534| db $A4 ; play note C4
|1B8539:D535| db $0C, $4D ; duration, params
|1B853B:D537| db $A6 ; play note D4
|1B853C:D538| db $0C, $3D ; duration, params
|1B853E:D53A| db $A9 ; play note F4
|1B853F:D53B| db $B0 ; play note C5
|1B8540:D53C| db $EF : dw Song10_Sub_D9E7 : db $01 ; call segment subroutine
|1B8544:D540| db $58, $5D ; duration, params
|1B8546:D542| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song10_Segment5_Track0:
|1B8547:D543| db $E0, $0A ; set instrument - strings B
|1B8549:D545| db $ED, $C8 ; set channel volume
|1B854B:D547| db $E1, $0C ; set panning - leaning left
|1B854D:D549| db $60 ; duration
|1B854E:D54A| db $C9 ; rest
|1B854F:D54B| db $20, $6D ; duration, params
|1B8551:D54D| db $A6 ; play note D4
|1B8552:D54E| db $08 ; duration
|1B8553:D54F| db $A4 ; play note C4
|1B8554:D550| db $A2 ; play note A#3
|1B8555:D551| db $0C ; duration
|1B8556:D552| db $A0 ; play note G#3
|1B8557:D553| db $0C, $4D ; duration, params
|1B8559:D555| db $A2 ; play note A#3
|1B855A:D556| db $0C, $3D ; duration, params
|1B855C:D558| db $A4 ; play note C4
|1B855D:D559| db $A6 ; play note D4
|1B855E:D55A| db $20, $6D ; duration, params
|1B8560:D55C| db $A7 ; play note D#4
|1B8561:D55D| db $08 ; duration
|1B8562:D55E| db $A6 ; play note D4
|1B8563:D55F| db $A4 ; play note C4
|1B8564:D560| db $0C ; duration
|1B8565:D561| db $A2 ; play note A#3
|1B8566:D562| db $0C, $4D ; duration, params
|1B8568:D564| db $A4 ; play note C4
|1B8569:D565| db $0C, $3D ; duration, params
|1B856B:D567| db $A6 ; play note D4
|1B856C:D568| db $A7 ; play note D#4
|1B856D:D569| db $30, $6D ; duration, params
|1B856F:D56B| db $AB ; play note G4
|1B8570:D56C| db $AA ; play note F#4
|1B8571:D56D| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment5_Track1:
|1B8572:D56E| db $ED, $C8 ; set channel volume
|1B8574:D570| db $E0, $0A ; set instrument - strings B
|1B8576:D572| db $E3, $14, $1E, $14 ; enable vibrato
|1B857A:D576| db $28, $7D ; duration, params
|1B857C:D578| db $96 ; play note A#2
|1B857D:D579| db $08 ; duration
|1B857E:D57A| db $9D ; play note F3
|1B857F:D57B| db $30, $78 ; duration, params
|1B8581:D57D| db $A2 ; play note A#3
|1B8582:D57E| db $28, $7D ; duration, params
|1B8584:D580| db $94 ; play note G#2
|1B8585:D581| db $08 ; duration
|1B8586:D582| db $9B ; play note D#3
|1B8587:D583| db $30, $78 ; duration, params
|1B8589:D585| db $A0 ; play note G#3
|1B858A:D586| db $28, $7D ; duration, params
|1B858C:D588| db $95 ; play note A2
|1B858D:D589| db $08 ; duration
|1B858E:D58A| db $9B ; play note D#3
|1B858F:D58B| db $30, $78 ; duration, params
|1B8591:D58D| db $A1 ; play note A3
|1B8592:D58E| db $28, $7D ; duration, params
|1B8594:D590| db $9A ; play note D3
|1B8595:D591| db $08 ; duration
|1B8596:D592| db $A1 ; play note A3
|1B8597:D593| db $30, $78 ; duration, params
|1B8599:D595| db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song10_Segment5_Track2:
|1B859A:D596| db $E0, $0B ; set instrument - trombone
|1B859C:D598| db $ED, $C8 ; set channel volume
|1B859E:D59A| db $E1, $09 ; set panning - leaning right
|1B85A0:D59C| db $40 ; duration
|1B85A1:D59D| db $C9 ; rest
|1B85A2:D59E| db $04, $5D ; duration, params
|1B85A4:D5A0| db $B5 ; play note F5
|1B85A5:D5A1| db $04, $3D ; duration, params
|1B85A7:D5A3| db $B5 ; play note F5
|1B85A8:D5A4| db $08 ; duration
|1B85A9:D5A5| db $B5 ; play note F5
|1B85AA:D5A6| db $B5 ; play note F5
|1B85AB:D5A7| db $B5 ; play note F5
|1B85AC:D5A8| db $EF : dw Song10_Sub_DA27 : db $02 ; call segment subroutine
|1B85B0:D5AC| db $60, $5D ; duration, params
|1B85B2:D5AE| db $B9 ; play note A5

;---------------------------------------------------------------------------------------------------

Song10_Segment5_Track3:
|1B85B3:D5AF| db $ED, $C8 ; set channel volume
|1B85B5:D5B1| db $E0, $0A ; set instrument - strings B
|1B85B7:D5B3| db $20, $6D ; duration, params
|1B85B9:D5B5| db $A9 ; play note F4
|1B85BA:D5B6| db $08 ; duration
|1B85BB:D5B7| db $A7 ; play note D#4
|1B85BC:D5B8| db $A6 ; play note D4
|1B85BD:D5B9| db $0C ; duration
|1B85BE:D5BA| db $A4 ; play note C4
|1B85BF:D5BB| db $0C, $4D ; duration, params
|1B85C1:D5BD| db $A6 ; play note D4
|1B85C2:D5BE| db $0C, $3D ; duration, params
|1B85C4:D5C0| db $A9 ; play note F4
|1B85C5:D5C1| db $AB ; play note G4
|1B85C6:D5C2| db $EF : dw Song10_Sub_DA33 : db $01 ; call segment subroutine
|1B85CA:D5C6| db $60, $6D ; duration, params
|1B85CC:D5C8| db $B2 ; play note D5

;---------------------------------------------------------------------------------------------------

Song10_Segment5_Track4:
|1B85CD:D5C9| db $ED, $C8 ; set channel volume
|1B85CF:D5CB| db $E0, $02 ; set instrument - timpani
|1B85D1:D5CD| db $06, $6D ; duration, params
|1B85D3:D5CF| db $8A ; play note A#1
|1B85D4:D5D0| db $06, $6B ; duration, params
|1B85D6:D5D2| db $8A ; play note A#1
|1B85D7:D5D3| db $06, $68 ; duration, params
|1B85D9:D5D5| db $8A ; play note A#1
|1B85DA:D5D6| db $06, $69 ; duration, params
|1B85DC:D5D8| db $8A ; play note A#1
|1B85DD:D5D9| db $06, $6A ; duration, params
|1B85DF:D5DB| db $8A ; play note A#1
|1B85E0:D5DC| db $06, $6B ; duration, params
|1B85E2:D5DE| db $8A ; play note A#1
|1B85E3:D5DF| db $06, $6C ; duration, params
|1B85E5:D5E1| db $8A ; play note A#1
|1B85E6:D5E2| db $06, $6D ; duration, params
|1B85E8:D5E4| db $8A ; play note A#1
|1B85E9:D5E5| db $0C ; duration
|1B85EA:D5E6| db $8A ; play note A#1
|1B85EB:D5E7| db $8A ; play note A#1
|1B85EC:D5E8| db $0C, $2D ; duration, params
|1B85EE:D5EA| db $8A ; play note A#1
|1B85EF:D5EB| db $8A ; play note A#1
|1B85F0:D5EC| db $20, $5D ; duration, params
|1B85F2:D5EE| db $88 ; play note G#1
|1B85F3:D5EF| db $08 ; duration
|1B85F4:D5F0| db $88 ; play note G#1
|1B85F5:D5F1| db $88 ; play note G#1
|1B85F6:D5F2| db $0C ; duration
|1B85F7:D5F3| db $88 ; play note G#1
|1B85F8:D5F4| db $88 ; play note G#1
|1B85F9:D5F5| db $08 ; duration
|1B85FA:D5F6| db $88 ; play note G#1
|1B85FB:D5F7| db $88 ; play note G#1
|1B85FC:D5F8| db $88 ; play note G#1
|1B85FD:D5F9| db $06, $6D ; duration, params
|1B85FF:D5FB| db $89 ; play note A1
|1B8600:D5FC| db $06, $6B ; duration, params
|1B8602:D5FE| db $89 ; play note A1
|1B8603:D5FF| db $06, $68 ; duration, params
|1B8605:D601| db $89 ; play note A1
|1B8606:D602| db $06, $69 ; duration, params
|1B8608:D604| db $89 ; play note A1
|1B8609:D605| db $06, $6A ; duration, params
|1B860B:D607| db $89 ; play note A1
|1B860C:D608| db $06, $6B ; duration, params
|1B860E:D60A| db $89 ; play note A1
|1B860F:D60B| db $06, $6C ; duration, params
|1B8611:D60D| db $89 ; play note A1
|1B8612:D60E| db $06, $6D ; duration, params
|1B8614:D610| db $89 ; play note A1
|1B8615:D611| db $0C ; duration
|1B8616:D612| db $89 ; play note A1
|1B8617:D613| db $89 ; play note A1
|1B8618:D614| db $0C, $2D ; duration, params
|1B861A:D616| db $89 ; play note A1
|1B861B:D617| db $89 ; play note A1
|1B861C:D618| db $20, $5D ; duration, params
|1B861E:D61A| db $8E ; play note D2
|1B861F:D61B| db $08 ; duration
|1B8620:D61C| db $8E ; play note D2
|1B8621:D61D| db $8E ; play note D2
|1B8622:D61E| db $0C ; duration
|1B8623:D61F| db $8E ; play note D2
|1B8624:D620| db $8E ; play note D2
|1B8625:D621| db $08 ; duration
|1B8626:D622| db $8E ; play note D2
|1B8627:D623| db $8E ; play note D2
|1B8628:D624| db $8E ; play note D2

;---------------------------------------------------------------------------------------------------

Song10_Segment5_Track5:
|1B8629:D625| db $ED, $C8 ; set channel volume
|1B862B:D627| db $E0, $02 ; set instrument - timpani
|1B862D:D629| db $E1, $0A ; set panning - balanced
|1B862F:D62B| db $03, $6D ; duration, params
|1B8631:D62D| db $8A ; play note A#1
|1B8632:D62E| db $06, $6B ; duration, params
|1B8634:D630| db $8A ; play note A#1
|1B8635:D631| db $06, $68 ; duration, params
|1B8637:D633| db $8A ; play note A#1
|1B8638:D634| db $06, $69 ; duration, params
|1B863A:D636| db $8A ; play note A#1
|1B863B:D637| db $06, $6A ; duration, params
|1B863D:D639| db $8A ; play note A#1
|1B863E:D63A| db $06, $6B ; duration, params
|1B8640:D63C| db $8A ; play note A#1
|1B8641:D63D| db $06, $6C ; duration, params
|1B8643:D63F| db $8A ; play note A#1
|1B8644:D640| db $06, $6D ; duration, params
|1B8646:D642| db $8A ; play note A#1
|1B8647:D643| db $33 ; duration
|1B8648:D644| db $C9 ; rest
|1B8649:D645| db $60 ; duration
|1B864A:D646| db $C9 ; rest
|1B864B:D647| db $03 ; duration
|1B864C:D648| db $89 ; play note A1
|1B864D:D649| db $06, $6B ; duration, params
|1B864F:D64B| db $89 ; play note A1
|1B8650:D64C| db $06, $68 ; duration, params
|1B8652:D64E| db $89 ; play note A1
|1B8653:D64F| db $06, $69 ; duration, params
|1B8655:D651| db $89 ; play note A1
|1B8656:D652| db $06, $6A ; duration, params
|1B8658:D654| db $89 ; play note A1
|1B8659:D655| db $06, $6B ; duration, params
|1B865B:D657| db $89 ; play note A1
|1B865C:D658| db $06, $6C ; duration, params
|1B865E:D65A| db $89 ; play note A1
|1B865F:D65B| db $06, $6D ; duration, params
|1B8661:D65D| db $89 ; play note A1
|1B8662:D65E| db $33 ; duration
|1B8663:D65F| db $C9 ; rest
|1B8664:D660| db $60 ; duration
|1B8665:D661| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment5_Track6:
|1B8666:D662| db $08 ; duration
|1B8667:D663| db $C9 ; rest
|1B8668:D664| db $20, $6D ; duration, params
|1B866A:D666| db $A9 ; play note F4
|1B866B:D667| db $08 ; duration
|1B866C:D668| db $A7 ; play note D#4
|1B866D:D669| db $A6 ; play note D4
|1B866E:D66A| db $0C ; duration
|1B866F:D66B| db $A4 ; play note C4
|1B8670:D66C| db $0C, $4D ; duration, params
|1B8672:D66E| db $A6 ; play note D4
|1B8673:D66F| db $0C, $3D ; duration, params
|1B8675:D671| db $A9 ; play note F4
|1B8676:D672| db $AB ; play note G4
|1B8677:D673| db $EF : dw Song10_Sub_DA33 : db $01 ; call segment subroutine
|1B867B:D677| db $58, $6D ; duration, params
|1B867D:D679| db $B2 ; play note D5

;---------------------------------------------------------------------------------------------------

Song10_Segment5_Track7:
|1B867E:D67A| db $E0, $0B ; set instrument - trombone
|1B8680:D67C| db $ED, $C8 ; set channel volume
|1B8682:D67E| db $E1, $07 ; set panning - leaning right
|1B8684:D680| db $40 ; duration
|1B8685:D681| db $C9 ; rest
|1B8686:D682| db $04, $5D ; duration, params
|1B8688:D684| db $B2 ; play note D5
|1B8689:D685| db $04, $3D ; duration, params
|1B868B:D687| db $B2 ; play note D5
|1B868C:D688| db $08 ; duration
|1B868D:D689| db $B2 ; play note D5
|1B868E:D68A| db $B2 ; play note D5
|1B868F:D68B| db $B2 ; play note D5
|1B8690:D68C| db $EF : dw Song10_Sub_DA52 : db $02 ; call segment subroutine
|1B8694:D690| db $60, $5D ; duration, params
|1B8696:D692| db $B0 ; play note C5

;---------------------------------------------------------------------------------------------------

Song10_Segment8_Track0:
|1B8697:D693| db $EF : dw Song10_Sub_DA5E : db $01 ; call segment subroutine
|1B869B:D697| db $EF : dw Song10_Sub_DA73 : db $01 ; call segment subroutine
|1B869F:D69B| db $60, $6D ; duration, params
|1B86A1:D69D| db $AE ; play note A#4
|1B86A2:D69E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment8_Track1:
|1B86A3:D69F| db $EF : dw Song10_Sub_DA82 : db $01 ; call segment subroutine
|1B86A7:D6A3| db $0C ; duration
|1B86A8:D6A4| db $93 ; play note G2
|1B86A9:D6A5| db $93 ; play note G2
|1B86AA:D6A6| db $93 ; play note G2
|1B86AB:D6A7| db $93 ; play note G2
|1B86AC:D6A8| db $93 ; play note G2
|1B86AD:D6A9| db $93 ; play note G2
|1B86AE:D6AA| db $08 ; duration
|1B86AF:D6AB| db $93 ; play note G2
|1B86B0:D6AC| db $93 ; play note G2
|1B86B1:D6AD| db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song10_Segment8_Track2:
|1B86B2:D6AE| db $E0, $0A ; set instrument - strings B
|1B86B4:D6B0| db $E1, $0F ; set panning - leaning left
|1B86B6:D6B2| db $EF : dw Song10_Sub_DAA7 : db $03 ; call segment subroutine
|1B86BA:D6B6| db $0C, $59 ; duration, params
|1B86BC:D6B8| db $AB ; play note G4
|1B86BD:D6B9| db $C9 ; rest
|1B86BE:D6BA| db $08, $49 ; duration, params
|1B86C0:D6BC| db $AB ; play note G4
|1B86C1:D6BD| db $AB ; play note G4
|1B86C2:D6BE| db $AB ; play note G4
|1B86C3:D6BF| db $0C, $69 ; duration, params
|1B86C5:D6C1| db $AB ; play note G4
|1B86C6:D6C2| db $C9 ; rest
|1B86C7:D6C3| db $0C, $49 ; duration, params
|1B86C9:D6C5| db $AB ; play note G4
|1B86CA:D6C6| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment8_Track3:
|1B86CB:D6C7| db $E1, $0C ; set panning - leaning left
|1B86CD:D6C9| db $EF : dw Song10_Sub_DAB9 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment8_Track4:
|1B86D1:D6CD| db $18, $6F ; duration, params
|1B86D3:D6CF| db $8C ; play note C2
|1B86D4:D6D0| db $08 ; duration
|1B86D5:D6D1| db $8C ; play note C2
|1B86D6:D6D2| db $8C ; play note C2
|1B86D7:D6D3| db $8C ; play note C2
|1B86D8:D6D4| db $24 ; duration
|1B86D9:D6D5| db $8C ; play note C2
|1B86DA:D6D6| db $06, $4D ; duration, params
|1B86DC:D6D8| db $8A ; play note A#1
|1B86DD:D6D9| db $8A ; play note A#1
|1B86DE:D6DA| db $18, $6F ; duration, params
|1B86E0:D6DC| db $8A ; play note A#1
|1B86E1:D6DD| db $08 ; duration
|1B86E2:D6DE| db $8A ; play note A#1
|1B86E3:D6DF| db $8A ; play note A#1
|1B86E4:D6E0| db $8A ; play note A#1
|1B86E5:D6E1| db $24 ; duration
|1B86E6:D6E2| db $8A ; play note A#1
|1B86E7:D6E3| db $06, $4D ; duration, params
|1B86E9:D6E5| db $89 ; play note A1
|1B86EA:D6E6| db $89 ; play note A1
|1B86EB:D6E7| db $18, $6F ; duration, params
|1B86ED:D6E9| db $89 ; play note A1
|1B86EE:D6EA| db $08 ; duration
|1B86EF:D6EB| db $89 ; play note A1
|1B86F0:D6EC| db $89 ; play note A1
|1B86F1:D6ED| db $89 ; play note A1
|1B86F2:D6EE| db $24 ; duration
|1B86F3:D6EF| db $89 ; play note A1
|1B86F4:D6F0| db $06, $4D ; duration, params
|1B86F6:D6F2| db $87 ; play note G1
|1B86F7:D6F3| db $87 ; play note G1
|1B86F8:D6F4| db $18, $6F ; duration, params
|1B86FA:D6F6| db $87 ; play note G1
|1B86FB:D6F7| db $08 ; duration
|1B86FC:D6F8| db $87 ; play note G1
|1B86FD:D6F9| db $87 ; play note G1
|1B86FE:D6FA| db $87 ; play note G1
|1B86FF:D6FB| db $24 ; duration
|1B8700:D6FC| db $87 ; play note G1
|1B8701:D6FD| db $06, $4D ; duration, params
|1B8703:D6FF| db $8C ; play note C2
|1B8704:D700| db $8C ; play note C2

;---------------------------------------------------------------------------------------------------

Song10_Segment8_Track6:
|1B8705:D701| db $EF : dw Song10_Sub_DAE8 : db $01 ; call segment subroutine
|1B8709:D705| db $EF : dw Song10_Sub_DA73 : db $01 ; call segment subroutine
|1B870D:D709| db $5A, $6D ; duration, params
|1B870F:D70B| db $AE ; play note A#4

;---------------------------------------------------------------------------------------------------

Song10_Segment6_Track0:
|1B8710:D70C| db $EF : dw Song10_Sub_DAFF : db $01 ; call segment subroutine
|1B8714:D710| db $30 ; duration
|1B8715:D711| db $A5 ; play note C#4
|1B8716:D712| db $A1 ; play note A3
|1B8717:D713| db $A4 ; play note C4
|1B8718:D714| db $10 ; duration
|1B8719:D715| db $A2 ; play note A#3
|1B871A:D716| db $9E ; play note F#3
|1B871B:D717| db $A2 ; play note A#3
|1B871C:D718| db $60 ; duration
|1B871D:D719| db $9F ; play note G3
|1B871E:D71A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment6_Track1:
|1B871F:D71B| db $EF : dw Song10_Sub_DB0B : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment6_Track2:
|1B8723:D71F| db $ED, $B4 ; set channel volume
|1B8725:D721| db $E0, $0A ; set instrument - strings B
|1B8727:D723| db $E1, $0F ; set panning - leaning left
|1B8729:D725| db $EF : dw Song10_Sub_DAA7 : db $02 ; call segment subroutine
|1B872D:D729| db $EF : dw Song10_Sub_DB3B : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment6_Track3:
|1B8731:D72D| db $ED, $B4 ; set channel volume
|1B8733:D72F| db $E1, $0C ; set panning - leaning left
|1B8735:D731| db $EF : dw Song10_Sub_DB5E : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment6_Track4:
|1B8739:D735| db $EF : dw Song10_Sub_DBC3 : db $01 ; call segment subroutine
|1B873D:D739| db $54, $6F ; duration, params
|1B873F:D73B| db $87 ; play note G1
|1B8740:D73C| db $06, $4D ; duration, params
|1B8742:D73E| db $82 ; play note D1
|1B8743:D73F| db $82 ; play note D1

;---------------------------------------------------------------------------------------------------

Song10_Segment6_Track6:
|1B8744:D740| db $E0, $0A ; set instrument - strings B
|1B8746:D742| db $08 ; duration
|1B8747:D743| db $C9 ; rest
|1B8748:D744| db $3C, $6D ; duration, params
|1B874A:D746| db $9F ; play note G3
|1B874B:D747| db $0C ; duration
|1B874C:D748| db $A1 ; play note A3
|1B874D:D749| db $A2 ; play note A#3
|1B874E:D74A| db $A6 ; play note D4
|1B874F:D74B| db $30 ; duration
|1B8750:D74C| db $A5 ; play note C#4
|1B8751:D74D| db $A1 ; play note A3
|1B8752:D74E| db $48 ; duration
|1B8753:D74F| db $A4 ; play note C4
|1B8754:D750| db $0C ; duration
|1B8755:D751| db $9E ; play note F#3
|1B8756:D752| db $A1 ; play note A3
|1B8757:D753| db $58 ; duration
|1B8758:D754| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song10_Segment7_Track0:
|1B8759:D755| db $EF : dw Song10_Sub_DAFF : db $01 ; call segment subroutine
|1B875D:D759| db $30 ; duration
|1B875E:D75A| db $A5 ; play note C#4
|1B875F:D75B| db $A1 ; play note A3
|1B8760:D75C| db $A4 ; play note C4
|1B8761:D75D| db $10 ; duration
|1B8762:D75E| db $A2 ; play note A#3
|1B8763:D75F| db $9E ; play note F#3
|1B8764:D760| db $A2 ; play note A#3
|1B8765:D761| db $42 ; duration
|1B8766:D762| db $9F ; play note G3
|1B8767:D763| db $E0, $0B ; set instrument - trombone
|1B8769:D765| db $06 ; duration
|1B876A:D766| db $AB ; play note G4
|1B876B:D767| db $AD ; play note A4
|1B876C:D768| db $AE ; play note A#4
|1B876D:D769| db $B0 ; play note C5
|1B876E:D76A| db $B2 ; play note D5
|1B876F:D76B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment7_Track1:
|1B8770:D76C| db $EF : dw Song10_Sub_DB0B : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment7_Track2:
|1B8774:D770| db $E0, $0A ; set instrument - strings B
|1B8776:D772| db $E1, $0F ; set panning - leaning left
|1B8778:D774| db $EF : dw Song10_Sub_DAA7 : db $02 ; call segment subroutine
|1B877C:D778| db $EF : dw Song10_Sub_DB3B : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment7_Track3:
|1B8780:D77C| db $E1, $0C ; set panning - leaning left
|1B8782:D77E| db $EF : dw Song10_Sub_DB5E : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment7_Track4:
|1B8786:D782| db $EF : dw Song10_Sub_DBC3 : db $01 ; call segment subroutine
|1B878A:D786| db $54, $6F ; duration, params
|1B878C:D788| db $87 ; play note G1
|1B878D:D789| db $06, $4D ; duration, params
|1B878F:D78B| db $8C ; play note C2
|1B8790:D78C| db $8C ; play note C2

;---------------------------------------------------------------------------------------------------

Song10_Segment7_Track5:
|1B8791:D78D| db $E0, $16 ; set instrument - flute
|1B8793:D78F| db $E1, $0B ; set panning - leaning left
|1B8795:D791| db $ED, $8C ; set channel volume
|1B8797:D793| db $E3, $1E, $14, $14 ; enable vibrato
|1B879B:D797| db $3C, $6D ; duration, params
|1B879D:D799| db $AB ; play note G4
|1B879E:D79A| db $0C ; duration
|1B879F:D79B| db $AD ; play note A4
|1B87A0:D79C| db $AE ; play note A#4
|1B87A1:D79D| db $B2 ; play note D5
|1B87A2:D79E| db $30 ; duration
|1B87A3:D79F| db $B1 ; play note C#5
|1B87A4:D7A0| db $AD ; play note A4
|1B87A5:D7A1| db $B0 ; play note C5
|1B87A6:D7A2| db $10 ; duration
|1B87A7:D7A3| db $AE ; play note A#4
|1B87A8:D7A4| db $AA ; play note F#4
|1B87A9:D7A5| db $AE ; play note A#4
|1B87AA:D7A6| db $60 ; duration
|1B87AB:D7A7| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song10_Segment7_Track6:
|1B87AC:D7A8| db $E0, $0A ; set instrument - strings B
|1B87AE:D7AA| db $08 ; duration
|1B87AF:D7AB| db $C9 ; rest
|1B87B0:D7AC| db $3C, $6D ; duration, params
|1B87B2:D7AE| db $9F ; play note G3
|1B87B3:D7AF| db $0C ; duration
|1B87B4:D7B0| db $A1 ; play note A3
|1B87B5:D7B1| db $A2 ; play note A#3
|1B87B6:D7B2| db $A6 ; play note D4
|1B87B7:D7B3| db $30 ; duration
|1B87B8:D7B4| db $A5 ; play note C#4
|1B87B9:D7B5| db $A1 ; play note A3
|1B87BA:D7B6| db $48 ; duration
|1B87BB:D7B7| db $A4 ; play note C4
|1B87BC:D7B8| db $0C ; duration
|1B87BD:D7B9| db $9E ; play note F#3
|1B87BE:D7BA| db $A1 ; play note A3
|1B87BF:D7BB| db $58 ; duration
|1B87C0:D7BC| db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song10_Segment9_Track0:
|1B87C1:D7BD| db $EF : dw Song10_Sub_DA5E : db $01 ; call segment subroutine
|1B87C5:D7C1| db $24, $6D ; duration, params
|1B87C7:D7C3| db $B2 ; play note D5
|1B87C8:D7C4| db $06, $2D ; duration, params
|1B87CA:D7C6| db $B2 ; play note D5
|1B87CB:D7C7| db $B2 ; play note D5
|1B87CC:D7C8| db $0C ; duration
|1B87CD:D7C9| db $B2 ; play note D5
|1B87CE:D7CA| db $AE ; play note A#4
|1B87CF:D7CB| db $AB ; play note G4
|1B87D0:D7CC| db $B2 ; play note D5
|1B87D1:D7CD| db $24, $6D ; duration, params
|1B87D3:D7CF| db $B0 ; play note C5
|1B87D4:D7D0| db $06, $2D ; duration, params
|1B87D6:D7D2| db $B0 ; play note C5
|1B87D7:D7D3| db $B0 ; play note C5
|1B87D8:D7D4| db $0C ; duration
|1B87D9:D7D5| db $B0 ; play note C5
|1B87DA:D7D6| db $AA ; play note F#4
|1B87DB:D7D7| db $A7 ; play note D#4
|1B87DC:D7D8| db $B0 ; play note C5
|1B87DD:D7D9| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment9_Track1:
|1B87DE:D7DA| db $EF : dw Song10_Sub_DA82 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment9_Track2:
|1B87E2:D7DE| db $ED, $C8 ; set channel volume
|1B87E4:D7E0| db $E0, $0A ; set instrument - strings B
|1B87E6:D7E2| db $E1, $0F ; set panning - leaning left
|1B87E8:D7E4| db $EF : dw Song10_Sub_DBD9 : db $02 ; call segment subroutine
|1B87EC:D7E8| db $0C, $59 ; duration, params
|1B87EE:D7EA| db $AA ; play note F#4
|1B87EF:D7EB| db $C9 ; rest
|1B87F0:D7EC| db $08, $49 ; duration, params
|1B87F2:D7EE| db $AA ; play note F#4
|1B87F3:D7EF| db $AA ; play note F#4
|1B87F4:D7F0| db $AA ; play note F#4
|1B87F5:D7F1| db $0C, $59 ; duration, params
|1B87F7:D7F3| db $AA ; play note F#4
|1B87F8:D7F4| db $C9 ; rest
|1B87F9:D7F5| db $08, $49 ; duration, params
|1B87FB:D7F7| db $AA ; play note F#4
|1B87FC:D7F8| db $AA ; play note F#4
|1B87FD:D7F9| db $AA ; play note F#4

;---------------------------------------------------------------------------------------------------

Song10_Segment9_Track3:
|1B87FE:D7FA| db $ED, $C8 ; set channel volume
|1B8800:D7FC| db $E1, $0C ; set panning - leaning left
|1B8802:D7FE| db $0C, $5D ; duration, params
|1B8804:D800| db $B0 ; play note C5
|1B8805:D801| db $0C, $39 ; duration, params
|1B8807:D803| db $A7 ; play note D#4
|1B8808:D804| db $08, $4B ; duration, params
|1B880A:D806| db $B0 ; play note C5
|1B880B:D807| db $B0 ; play note C5
|1B880C:D808| db $B0 ; play note C5
|1B880D:D809| db $0C, $5C ; duration, params
|1B880F:D80B| db $B0 ; play note C5
|1B8810:D80C| db $0C, $39 ; duration, params
|1B8812:D80E| db $A7 ; play note D#4
|1B8813:D80F| db $08, $4B ; duration, params
|1B8815:D811| db $B0 ; play note C5
|1B8816:D812| db $08, $39 ; duration, params
|1B8818:D814| db $B0 ; play note C5
|1B8819:D815| db $B0 ; play note C5
|1B881A:D816| db $0C, $5D ; duration, params
|1B881C:D818| db $AE ; play note A#4
|1B881D:D819| db $0C, $39 ; duration, params
|1B881F:D81B| db $A6 ; play note D4
|1B8820:D81C| db $08, $4B ; duration, params
|1B8822:D81E| db $AE ; play note A#4
|1B8823:D81F| db $AE ; play note A#4
|1B8824:D820| db $AE ; play note A#4
|1B8825:D821| db $0C, $5C ; duration, params
|1B8827:D823| db $AE ; play note A#4
|1B8828:D824| db $0C, $39 ; duration, params
|1B882A:D826| db $A6 ; play note D4
|1B882B:D827| db $08, $4B ; duration, params
|1B882D:D829| db $AE ; play note A#4
|1B882E:D82A| db $08, $39 ; duration, params
|1B8830:D82C| db $AE ; play note A#4
|1B8831:D82D| db $AE ; play note A#4
|1B8832:D82E| db $0C, $5D ; duration, params
|1B8834:D830| db $AD ; play note A4
|1B8835:D831| db $0C, $39 ; duration, params
|1B8837:D833| db $A7 ; play note D#4
|1B8838:D834| db $08, $4B ; duration, params
|1B883A:D836| db $AD ; play note A4
|1B883B:D837| db $AD ; play note A4
|1B883C:D838| db $AD ; play note A4
|1B883D:D839| db $0C, $5C ; duration, params
|1B883F:D83B| db $AD ; play note A4
|1B8840:D83C| db $0C, $39 ; duration, params
|1B8842:D83E| db $A7 ; play note D#4
|1B8843:D83F| db $08, $4B ; duration, params
|1B8845:D841| db $AD ; play note A4
|1B8846:D842| db $08, $39 ; duration, params
|1B8848:D844| db $AD ; play note A4
|1B8849:D845| db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song10_Segment9_Track4:
|1B884A:D846| db $20, $6F ; duration, params
|1B884C:D848| db $8C ; play note C2
|1B884D:D849| db $08, $4F ; duration, params
|1B884F:D84B| db $8C ; play note C2
|1B8850:D84C| db $8C ; play note C2
|1B8851:D84D| db $0C, $6F ; duration, params
|1B8853:D84F| db $8C ; play note C2
|1B8854:D850| db $8C ; play note C2
|1B8855:D851| db $08, $4D ; duration, params
|1B8857:D853| db $8C ; play note C2
|1B8858:D854| db $8C ; play note C2
|1B8859:D855| db $8C ; play note C2
|1B885A:D856| db $20, $6F ; duration, params
|1B885C:D858| db $8A ; play note A#1
|1B885D:D859| db $08, $4F ; duration, params
|1B885F:D85B| db $8A ; play note A#1
|1B8860:D85C| db $8A ; play note A#1
|1B8861:D85D| db $0C, $6F ; duration, params
|1B8863:D85F| db $8A ; play note A#1
|1B8864:D860| db $8A ; play note A#1
|1B8865:D861| db $08, $4D ; duration, params
|1B8867:D863| db $8A ; play note A#1
|1B8868:D864| db $8A ; play note A#1
|1B8869:D865| db $8A ; play note A#1
|1B886A:D866| db $20, $6F ; duration, params
|1B886C:D868| db $89 ; play note A1
|1B886D:D869| db $08 ; duration
|1B886E:D86A| db $89 ; play note A1
|1B886F:D86B| db $89 ; play note A1
|1B8870:D86C| db $0C ; duration
|1B8871:D86D| db $89 ; play note A1
|1B8872:D86E| db $89 ; play note A1
|1B8873:D86F| db $08, $4D ; duration, params
|1B8875:D871| db $87 ; play note G1
|1B8876:D872| db $87 ; play note G1
|1B8877:D873| db $87 ; play note G1

;---------------------------------------------------------------------------------------------------

Song10_Segment9_Track5:
|1B8878:D874| db $E0, $0B ; set instrument - trombone
|1B887A:D876| db $ED, $C8 ; set channel volume
|1B887C:D878| db $E1, $09 ; set panning - leaning right
|1B887E:D87A| db $E3, $1D, $1B, $18 ; enable vibrato
|1B8882:D87E| db $24, $6D ; duration, params
|1B8884:D880| db $AB ; play note G4
|1B8885:D881| db $06, $2D ; duration, params
|1B8887:D883| db $AB ; play note G4
|1B8888:D884| db $AB ; play note G4
|1B8889:D885| db $0C ; duration
|1B888A:D886| db $AB ; play note G4
|1B888B:D887| db $A8 ; play note E4
|1B888C:D888| db $A3 ; play note B3
|1B888D:D889| db $AB ; play note G4
|1B888E:D88A| db $24, $6D ; duration, params
|1B8890:D88C| db $A9 ; play note F4
|1B8891:D88D| db $06, $2D ; duration, params
|1B8893:D88F| db $A9 ; play note F4
|1B8894:D890| db $A9 ; play note F4
|1B8895:D891| db $0C ; duration
|1B8896:D892| db $A9 ; play note F4
|1B8897:D893| db $A6 ; play note D4
|1B8898:D894| db $A2 ; play note A#3
|1B8899:D895| db $A9 ; play note F4
|1B889A:D896| db $24, $6D ; duration, params
|1B889C:D898| db $A7 ; play note D#4
|1B889D:D899| db $06, $2D ; duration, params
|1B889F:D89B| db $A7 ; play note D#4
|1B88A0:D89C| db $A7 ; play note D#4
|1B88A1:D89D| db $0C ; duration
|1B88A2:D89E| db $A7 ; play note D#4
|1B88A3:D89F| db $A4 ; play note C4
|1B88A4:D8A0| db $A2 ; play note A#3
|1B88A5:D8A1| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song10_Segment9_Track6:
|1B88A6:D8A2| db $EF : dw Song10_Sub_DAE8 : db $01 ; call segment subroutine
|1B88AA:D8A6| db $24, $6D ; duration, params
|1B88AC:D8A8| db $B2 ; play note D5
|1B88AD:D8A9| db $06, $2D ; duration, params
|1B88AF:D8AB| db $B2 ; play note D5
|1B88B0:D8AC| db $B2 ; play note D5
|1B88B1:D8AD| db $0C ; duration
|1B88B2:D8AE| db $B2 ; play note D5
|1B88B3:D8AF| db $AE ; play note A#4
|1B88B4:D8B0| db $AB ; play note G4
|1B88B5:D8B1| db $B2 ; play note D5
|1B88B6:D8B2| db $24, $6D ; duration, params
|1B88B8:D8B4| db $B0 ; play note C5
|1B88B9:D8B5| db $06, $2D ; duration, params
|1B88BB:D8B7| db $B0 ; play note C5
|1B88BC:D8B8| db $B0 ; play note C5
|1B88BD:D8B9| db $0C ; duration
|1B88BE:D8BA| db $B0 ; play note C5
|1B88BF:D8BB| db $AA ; play note F#4
|1B88C0:D8BC| db $A7 ; play note D#4
|1B88C1:D8BD| db $06 ; duration
|1B88C2:D8BE| db $B0 ; play note C5

;---------------------------------------------------------------------------------------------------

Song10_SegmentA_Track0:
|1B88C3:D8BF| db $E7, $1B ; set song tempo
|1B88C5:D8C1| db $ED, $C8 ; set channel volume
|1B88C7:D8C3| db $E0, $0B ; set instrument - trombone
|1B88C9:D8C5| db $E3, $14, $1E, $14 ; enable vibrato
|1B88CD:D8C9| db $60, $6D ; duration, params
|1B88CF:D8CB| db $A6 ; play note D4
|1B88D0:D8CC| db $C9 ; rest
|1B88D1:D8CD| db $EF : dw Song10_Sub_D90C : db $01 ; call segment subroutine
|1B88D5:D8D1| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_SegmentA_Track1:
|1B88D6:D8D2| db $EF : dw Song10_Sub_D925 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_SegmentA_Track2:
|1B88DA:D8D6| db $EF : dw Song10_Sub_D93F : db $01 ; call segment subroutine
|1B88DE:D8DA| db $EF : dw Song10_Sub_D960 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_SegmentA_Track3:
|1B88E2:D8DE| db $ED, $C8 ; set channel volume
|1B88E4:D8E0| db $E0, $0B ; set instrument - trombone
|1B88E6:D8E2| db $E3, $1D, $14, $1E ; enable vibrato
|1B88EA:D8E6| db $E1, $07 ; set panning - leaning right
|1B88EC:D8E8| db $60, $6D ; duration, params
|1B88EE:D8EA| db $AE ; play note A#4
|1B88EF:D8EB| db $E1, $0F ; set panning - leaning left
|1B88F1:D8ED| db $C9 ; rest
|1B88F2:D8EE| db $C9 ; rest
|1B88F3:D8EF| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_SegmentA_Track4:
|1B88F4:D8F0| db $EF : dw Song10_Sub_D976 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_SegmentA_Track6:
|1B88F8:D8F4| db $06 ; duration
|1B88F9:D8F5| db $C9 ; rest
|1B88FA:D8F6| db $60, $6D ; duration, params
|1B88FC:D8F8| db $AE ; play note A#4
|1B88FD:D8F9| db $5A ; duration
|1B88FE:D8FA| db $C9 ; rest
|1B88FF:D8FB| db $60 ; duration
|1B8900:D8FC| db $C9 ; rest
|1B8901:D8FD| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_SegmentA_Track7:
|1B8902:D8FE| db $ED, $8C ; set channel volume
|1B8904:D900| db $E0, $0A ; set instrument - strings B
|1B8906:D902| db $E3, $1D, $14, $1E ; enable vibrato
|1B890A:D906| db $60 ; duration
|1B890B:D907| db $C9 ; rest
|1B890C:D908| db $C9 ; rest
|1B890D:D909| db $C9 ; rest
|1B890E:D90A| db $C9 ; rest
|1B890F:D90B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D90C:
|1B8910:D90C| db $0C ; duration
|1B8911:D90D| db $C9 ; rest
|1B8912:D90E| db $0C, $2D ; duration, params
|1B8914:D910| db $AB ; play note G4
|1B8915:D911| db $C9 ; rest
|1B8916:D912| db $AB ; play note G4
|1B8917:D913| db $A9 ; play note F4
|1B8918:D914| db $C9 ; rest
|1B8919:D915| db $A9 ; play note F4
|1B891A:D916| db $AB ; play note G4
|1B891B:D917| db $C9 ; rest
|1B891C:D918| db $AB ; play note G4
|1B891D:D919| db $AB ; play note G4
|1B891E:D91A| db $06, $4D ; duration, params
|1B8920:D91C| db $AB ; play note G4
|1B8921:D91D| db $AB ; play note G4
|1B8922:D91E| db $0C, $2D ; duration, params
|1B8924:D920| db $AB ; play note G4
|1B8925:D921| db $AB ; play note G4
|1B8926:D922| db $AC ; play note G#4
|1B8927:D923| db $AA ; play note F#4
|1B8928:D924| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D925:
|1B8929:D925| db $ED, $8C ; set channel volume
|1B892B:D927| db $E0, $0A ; set instrument - strings B
|1B892D:D929| db $E3, $14, $1E, $14 ; enable vibrato
|1B8931:D92D| db $E1, $05 ; set panning - leaning right
|1B8933:D92F| db $30, $7D ; duration, params
|1B8935:D931| db $9F ; play note G3
|1B8936:D932| db $9D ; play note F3
|1B8937:D933| db $9F ; play note G3
|1B8938:D934| db $18 ; duration
|1B8939:D935| db $A0 ; play note G#3
|1B893A:D936| db $9E ; play note F#3
|1B893B:D937| db $30 ; duration
|1B893C:D938| db $9F ; play note G3
|1B893D:D939| db $9D ; play note F3
|1B893E:D93A| db $9F ; play note G3
|1B893F:D93B| db $18 ; duration
|1B8940:D93C| db $A0 ; play note G#3
|1B8941:D93D| db $9E ; play note F#3
|1B8942:D93E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D93F:
|1B8943:D93F| db $ED, $C8 ; set channel volume
|1B8945:D941| db $E0, $0B ; set instrument - trombone
|1B8947:D943| db $E3, $19, $1E, $17 ; enable vibrato
|1B894B:D947| db $0C ; duration
|1B894C:D948| db $C9 ; rest
|1B894D:D949| db $0C, $2D ; duration, params
|1B894F:D94B| db $A6 ; play note D4
|1B8950:D94C| db $C9 ; rest
|1B8951:D94D| db $A6 ; play note D4
|1B8952:D94E| db $A4 ; play note C4
|1B8953:D94F| db $C9 ; rest
|1B8954:D950| db $A4 ; play note C4
|1B8955:D951| db $A6 ; play note D4
|1B8956:D952| db $C9 ; rest
|1B8957:D953| db $A6 ; play note D4
|1B8958:D954| db $A6 ; play note D4
|1B8959:D955| db $06, $4D ; duration, params
|1B895B:D957| db $A6 ; play note D4
|1B895C:D958| db $A6 ; play note D4
|1B895D:D959| db $0C, $2D ; duration, params
|1B895F:D95B| db $A6 ; play note D4
|1B8960:D95C| db $A6 ; play note D4
|1B8961:D95D| db $A7 ; play note D#4
|1B8962:D95E| db $A5 ; play note C#4
|1B8963:D95F| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D960:
|1B8964:D960| db $C9 ; rest
|1B8965:D961| db $A6 ; play note D4
|1B8966:D962| db $C9 ; rest
|1B8967:D963| db $A6 ; play note D4
|1B8968:D964| db $A4 ; play note C4
|1B8969:D965| db $C9 ; rest
|1B896A:D966| db $A4 ; play note C4
|1B896B:D967| db $A6 ; play note D4
|1B896C:D968| db $C9 ; rest
|1B896D:D969| db $A6 ; play note D4
|1B896E:D96A| db $A6 ; play note D4
|1B896F:D96B| db $06, $4D ; duration, params
|1B8971:D96D| db $A6 ; play note D4
|1B8972:D96E| db $A6 ; play note D4
|1B8973:D96F| db $0C, $2D ; duration, params
|1B8975:D971| db $A6 ; play note D4
|1B8976:D972| db $A6 ; play note D4
|1B8977:D973| db $A7 ; play note D#4
|1B8978:D974| db $A5 ; play note C#4
|1B8979:D975| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D976:
|1B897A:D976| db $ED, $C8 ; set channel volume
|1B897C:D978| db $E0, $02 ; set instrument - timpani
|1B897E:D97A| db $0C, $6D ; duration, params
|1B8980:D97C| db $87 ; play note G1
|1B8981:D97D| db $18 ; duration
|1B8982:D97E| db $87 ; play note G1
|1B8983:D97F| db $0C ; duration
|1B8984:D980| db $87 ; play note G1
|1B8985:D981| db $24 ; duration
|1B8986:D982| db $85 ; play note F1
|1B8987:D983| db $0C ; duration
|1B8988:D984| db $87 ; play note G1
|1B8989:D985| db $C9 ; rest
|1B898A:D986| db $87 ; play note G1
|1B898B:D987| db $87 ; play note G1
|1B898C:D988| db $06 ; duration
|1B898D:D989| db $87 ; play note G1
|1B898E:D98A| db $87 ; play note G1
|1B898F:D98B| db $0C ; duration
|1B8990:D98C| db $87 ; play note G1
|1B8991:D98D| db $87 ; play note G1
|1B8992:D98E| db $88 ; play note G#1
|1B8993:D98F| db $86 ; play note F#1
|1B8994:D990| db $87 ; play note G1
|1B8995:D991| db $18, $3D ; duration, params
|1B8997:D993| db $87 ; play note G1
|1B8998:D994| db $0C ; duration
|1B8999:D995| db $87 ; play note G1
|1B899A:D996| db $24 ; duration
|1B899B:D997| db $85 ; play note F1
|1B899C:D998| db $0C, $6D ; duration, params
|1B899E:D99A| db $87 ; play note G1
|1B899F:D99B| db $C9 ; rest
|1B89A0:D99C| db $87 ; play note G1
|1B89A1:D99D| db $87 ; play note G1
|1B89A2:D99E| db $06 ; duration
|1B89A3:D99F| db $87 ; play note G1
|1B89A4:D9A0| db $87 ; play note G1
|1B89A5:D9A1| db $0C ; duration
|1B89A6:D9A2| db $87 ; play note G1
|1B89A7:D9A3| db $87 ; play note G1
|1B89A8:D9A4| db $88 ; play note G#1
|1B89A9:D9A5| db $86 ; play note F#1
|1B89AA:D9A6| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D9A7:
|1B89AB:D9A7| db $30, $7D ; duration, params
|1B89AD:D9A9| db $9F ; play note G3
|1B89AE:D9AA| db $9D ; play note F3
|1B89AF:D9AB| db $9F ; play note G3
|1B89B0:D9AC| db $18 ; duration
|1B89B1:D9AD| db $A0 ; play note G#3
|1B89B2:D9AE| db $9E ; play note F#3
|1B89B3:D9AF| db $30 ; duration
|1B89B4:D9B0| db $9F ; play note G3
|1B89B5:D9B1| db $9D ; play note F3
|1B89B6:D9B2| db $9F ; play note G3
|1B89B7:D9B3| db $18 ; duration
|1B89B8:D9B4| db $A0 ; play note G#3
|1B89B9:D9B5| db $9E ; play note F#3
|1B89BA:D9B6| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D9B7:
|1B89BB:D9B7| db $0C, $3D ; duration, params
|1B89BD:D9B9| db $87 ; play note G1
|1B89BE:D9BA| db $18 ; duration
|1B89BF:D9BB| db $87 ; play note G1
|1B89C0:D9BC| db $0C ; duration
|1B89C1:D9BD| db $87 ; play note G1
|1B89C2:D9BE| db $24 ; duration
|1B89C3:D9BF| db $85 ; play note F1
|1B89C4:D9C0| db $0C, $6D ; duration, params
|1B89C6:D9C2| db $87 ; play note G1
|1B89C7:D9C3| db $C9 ; rest
|1B89C8:D9C4| db $87 ; play note G1
|1B89C9:D9C5| db $87 ; play note G1
|1B89CA:D9C6| db $06 ; duration
|1B89CB:D9C7| db $87 ; play note G1
|1B89CC:D9C8| db $87 ; play note G1
|1B89CD:D9C9| db $0C ; duration
|1B89CE:D9CA| db $87 ; play note G1
|1B89CF:D9CB| db $87 ; play note G1
|1B89D0:D9CC| db $88 ; play note G#1
|1B89D1:D9CD| db $86 ; play note F#1
|1B89D2:D9CE| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D9CF:
|1B89D3:D9CF| db $0C, $3D ; duration, params
|1B89D5:D9D1| db $8C ; play note C2
|1B89D6:D9D2| db $18 ; duration
|1B89D7:D9D3| db $8C ; play note C2
|1B89D8:D9D4| db $0C ; duration
|1B89D9:D9D5| db $8C ; play note C2
|1B89DA:D9D6| db $24 ; duration
|1B89DB:D9D7| db $8A ; play note A#1
|1B89DC:D9D8| db $0C, $6D ; duration, params
|1B89DE:D9DA| db $8C ; play note C2
|1B89DF:D9DB| db $C9 ; rest
|1B89E0:D9DC| db $8C ; play note C2
|1B89E1:D9DD| db $8C ; play note C2
|1B89E2:D9DE| db $06 ; duration
|1B89E3:D9DF| db $8C ; play note C2
|1B89E4:D9E0| db $8C ; play note C2
|1B89E5:D9E1| db $0C ; duration
|1B89E6:D9E2| db $8C ; play note C2
|1B89E7:D9E3| db $8C ; play note C2
|1B89E8:D9E4| db $8D ; play note C#2
|1B89E9:D9E5| db $8B ; play note B1
|1B89EA:D9E6| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D9E7:
|1B89EB:D9E7| db $60, $5D ; duration, params
|1B89ED:D9E9| db $AB ; play note G4
|1B89EE:D9EA| db $20, $6D ; duration, params
|1B89F0:D9EC| db $A9 ; play note F4
|1B89F1:D9ED| db $08 ; duration
|1B89F2:D9EE| db $A7 ; play note D#4
|1B89F3:D9EF| db $A6 ; play note D4
|1B89F4:D9F0| db $0C ; duration
|1B89F5:D9F1| db $A4 ; play note C4
|1B89F6:D9F2| db $0C, $4D ; duration, params
|1B89F8:D9F4| db $A6 ; play note D4
|1B89F9:D9F5| db $0C, $3D ; duration, params
|1B89FB:D9F7| db $A9 ; play note F4
|1B89FC:D9F8| db $B0 ; play note C5
|1B89FD:D9F9| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D9FA:
|1B89FE:D9FA| db $06, $6D ; duration, params
|1B8A00:D9FC| db $88 ; play note G#1
|1B8A01:D9FD| db $06, $6B ; duration, params
|1B8A03:D9FF| db $88 ; play note G#1
|1B8A04:DA00| db $06, $68 ; duration, params
|1B8A06:DA02| db $88 ; play note G#1
|1B8A07:DA03| db $06, $69 ; duration, params
|1B8A09:DA05| db $88 ; play note G#1
|1B8A0A:DA06| db $06, $6A ; duration, params
|1B8A0C:DA08| db $88 ; play note G#1
|1B8A0D:DA09| db $06, $6B ; duration, params
|1B8A0F:DA0B| db $88 ; play note G#1
|1B8A10:DA0C| db $06, $6C ; duration, params
|1B8A12:DA0E| db $88 ; play note G#1
|1B8A13:DA0F| db $06, $6D ; duration, params
|1B8A15:DA11| db $88 ; play note G#1
|1B8A16:DA12| db $0C ; duration
|1B8A17:DA13| db $88 ; play note G#1
|1B8A18:DA14| db $88 ; play note G#1
|1B8A19:DA15| db $0C, $2D ; duration, params
|1B8A1B:DA17| db $88 ; play note G#1
|1B8A1C:DA18| db $88 ; play note G#1
|1B8A1D:DA19| db $20, $5D ; duration, params
|1B8A1F:DA1B| db $87 ; play note G1
|1B8A20:DA1C| db $08 ; duration
|1B8A21:DA1D| db $87 ; play note G1
|1B8A22:DA1E| db $87 ; play note G1
|1B8A23:DA1F| db $0C ; duration
|1B8A24:DA20| db $87 ; play note G1
|1B8A25:DA21| db $87 ; play note G1
|1B8A26:DA22| db $08 ; duration
|1B8A27:DA23| db $87 ; play note G1
|1B8A28:DA24| db $87 ; play note G1
|1B8A29:DA25| db $87 ; play note G1
|1B8A2A:DA26| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DA27:
|1B8A2B:DA27| db $40, $5D ; duration, params
|1B8A2D:DA29| db $B7 ; play note G5
|1B8A2E:DA2A| db $04, $3D ; duration, params
|1B8A30:DA2C| db $B7 ; play note G5
|1B8A31:DA2D| db $B7 ; play note G5
|1B8A32:DA2E| db $08 ; duration
|1B8A33:DA2F| db $B7 ; play note G5
|1B8A34:DA30| db $B7 ; play note G5
|1B8A35:DA31| db $B7 ; play note G5
|1B8A36:DA32| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DA33:
|1B8A37:DA33| db $20, $6D ; duration, params
|1B8A39:DA35| db $AE ; play note A#4
|1B8A3A:DA36| db $08 ; duration
|1B8A3B:DA37| db $AC ; play note G#4
|1B8A3C:DA38| db $AB ; play note G4
|1B8A3D:DA39| db $0C ; duration
|1B8A3E:DA3A| db $A9 ; play note F4
|1B8A3F:DA3B| db $0C, $4D ; duration, params
|1B8A41:DA3D| db $AB ; play note G4
|1B8A42:DA3E| db $0C, $3D ; duration, params
|1B8A44:DA40| db $AC ; play note G#4
|1B8A45:DA41| db $AE ; play note A#4
|1B8A46:DA42| db $20, $6D ; duration, params
|1B8A48:DA44| db $B0 ; play note C5
|1B8A49:DA45| db $08 ; duration
|1B8A4A:DA46| db $AE ; play note A#4
|1B8A4B:DA47| db $AD ; play note A4
|1B8A4C:DA48| db $0C ; duration
|1B8A4D:DA49| db $AB ; play note G4
|1B8A4E:DA4A| db $0C, $4D ; duration, params
|1B8A50:DA4C| db $AD ; play note A4
|1B8A51:DA4D| db $0C, $3D ; duration, params
|1B8A53:DA4F| db $AE ; play note A#4
|1B8A54:DA50| db $B0 ; play note C5
|1B8A55:DA51| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DA52:
|1B8A56:DA52| db $40, $5D ; duration, params
|1B8A58:DA54| db $B0 ; play note C5
|1B8A59:DA55| db $04, $3D ; duration, params
|1B8A5B:DA57| db $B0 ; play note C5
|1B8A5C:DA58| db $B0 ; play note C5
|1B8A5D:DA59| db $08 ; duration
|1B8A5E:DA5A| db $B0 ; play note C5
|1B8A5F:DA5B| db $B0 ; play note C5
|1B8A60:DA5C| db $B0 ; play note C5
|1B8A61:DA5D| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DA5E:
|1B8A62:DA5E| db $E0, $0B ; set instrument - trombone
|1B8A64:DA60| db $E1, $07 ; set panning - leaning right
|1B8A66:DA62| db $E3, $1E, $1A, $14 ; enable vibrato
|1B8A6A:DA66| db $24, $6D ; duration, params
|1B8A6C:DA68| db $B3 ; play note D#5
|1B8A6D:DA69| db $06, $2D ; duration, params
|1B8A6F:DA6B| db $B3 ; play note D#5
|1B8A70:DA6C| db $B3 ; play note D#5
|1B8A71:DA6D| db $0C ; duration
|1B8A72:DA6E| db $B3 ; play note D#5
|1B8A73:DA6F| db $B0 ; play note C5
|1B8A74:DA70| db $AB ; play note G4
|1B8A75:DA71| db $B3 ; play note D#5
|1B8A76:DA72| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DA73:
|1B8A77:DA73| db $60, $6D ; duration, params
|1B8A79:DA75| db $B2 ; play note D5
|1B8A7A:DA76| db $24 ; duration
|1B8A7B:DA77| db $B0 ; play note C5
|1B8A7C:DA78| db $06, $2D ; duration, params
|1B8A7E:DA7A| db $B0 ; play note C5
|1B8A7F:DA7B| db $B0 ; play note C5
|1B8A80:DA7C| db $0C ; duration
|1B8A81:DA7D| db $B0 ; play note C5
|1B8A82:DA7E| db $AB ; play note G4
|1B8A83:DA7F| db $A7 ; play note D#4
|1B8A84:DA80| db $B0 ; play note C5
|1B8A85:DA81| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DA82:
|1B8A86:DA82| db $E0, $0A ; set instrument - strings B
|1B8A88:DA84| db $0C, $6D ; duration, params
|1B8A8A:DA86| db $98 ; play note C3
|1B8A8B:DA87| db $98 ; play note C3
|1B8A8C:DA88| db $98 ; play note C3
|1B8A8D:DA89| db $98 ; play note C3
|1B8A8E:DA8A| db $98 ; play note C3
|1B8A8F:DA8B| db $98 ; play note C3
|1B8A90:DA8C| db $08 ; duration
|1B8A91:DA8D| db $98 ; play note C3
|1B8A92:DA8E| db $98 ; play note C3
|1B8A93:DA8F| db $98 ; play note C3
|1B8A94:DA90| db $0C ; duration
|1B8A95:DA91| db $96 ; play note A#2
|1B8A96:DA92| db $96 ; play note A#2
|1B8A97:DA93| db $96 ; play note A#2
|1B8A98:DA94| db $96 ; play note A#2
|1B8A99:DA95| db $96 ; play note A#2
|1B8A9A:DA96| db $96 ; play note A#2
|1B8A9B:DA97| db $08 ; duration
|1B8A9C:DA98| db $96 ; play note A#2
|1B8A9D:DA99| db $96 ; play note A#2
|1B8A9E:DA9A| db $96 ; play note A#2
|1B8A9F:DA9B| db $0C ; duration
|1B8AA0:DA9C| db $95 ; play note A2
|1B8AA1:DA9D| db $95 ; play note A2
|1B8AA2:DA9E| db $95 ; play note A2
|1B8AA3:DA9F| db $95 ; play note A2
|1B8AA4:DAA0| db $95 ; play note A2
|1B8AA5:DAA1| db $95 ; play note A2
|1B8AA6:DAA2| db $08 ; duration
|1B8AA7:DAA3| db $95 ; play note A2
|1B8AA8:DAA4| db $95 ; play note A2
|1B8AA9:DAA5| db $95 ; play note A2
|1B8AAA:DAA6| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DAA7:
|1B8AAB:DAA7| db $0C, $59 ; duration, params
|1B8AAD:DAA9| db $AB ; play note G4
|1B8AAE:DAAA| db $C9 ; rest
|1B8AAF:DAAB| db $08, $49 ; duration, params
|1B8AB1:DAAD| db $AB ; play note G4
|1B8AB2:DAAE| db $AB ; play note G4
|1B8AB3:DAAF| db $AB ; play note G4
|1B8AB4:DAB0| db $0C, $59 ; duration, params
|1B8AB6:DAB2| db $AB ; play note G4
|1B8AB7:DAB3| db $C9 ; rest
|1B8AB8:DAB4| db $0C, $49 ; duration, params
|1B8ABA:DAB6| db $AB ; play note G4
|1B8ABB:DAB7| db $C9 ; rest
|1B8ABC:DAB8| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DAB9:
|1B8ABD:DAB9| db $0C, $5D ; duration, params
|1B8ABF:DABB| db $B0 ; play note C5
|1B8AC0:DABC| db $0C, $39 ; duration, params
|1B8AC2:DABE| db $A7 ; play note D#4
|1B8AC3:DABF| db $08, $4B ; duration, params
|1B8AC5:DAC1| db $B0 ; play note C5
|1B8AC6:DAC2| db $B0 ; play note C5
|1B8AC7:DAC3| db $B0 ; play note C5
|1B8AC8:DAC4| db $0C, $5C ; duration, params
|1B8ACA:DAC6| db $B0 ; play note C5
|1B8ACB:DAC7| db $0C, $39 ; duration, params
|1B8ACD:DAC9| db $A7 ; play note D#4
|1B8ACE:DACA| db $0C, $4B ; duration, params
|1B8AD0:DACC| db $B0 ; play note C5
|1B8AD1:DACD| db $0C, $39 ; duration, params
|1B8AD3:DACF| db $A7 ; play note D#4
|1B8AD4:DAD0| db $0C, $5D ; duration, params
|1B8AD6:DAD2| db $AE ; play note A#4
|1B8AD7:DAD3| db $0C, $39 ; duration, params
|1B8AD9:DAD5| db $A6 ; play note D4
|1B8ADA:DAD6| db $08, $4B ; duration, params
|1B8ADC:DAD8| db $AE ; play note A#4
|1B8ADD:DAD9| db $AE ; play note A#4
|1B8ADE:DADA| db $AE ; play note A#4
|1B8ADF:DADB| db $0C, $5C ; duration, params
|1B8AE1:DADD| db $AE ; play note A#4
|1B8AE2:DADE| db $0C, $39 ; duration, params
|1B8AE4:DAE0| db $A6 ; play note D4
|1B8AE5:DAE1| db $0C, $4B ; duration, params
|1B8AE7:DAE3| db $AE ; play note A#4
|1B8AE8:DAE4| db $0C, $39 ; duration, params
|1B8AEA:DAE6| db $A6 ; play note D4
|1B8AEB:DAE7| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DAE8:
|1B8AEC:DAE8| db $E0, $0B ; set instrument - trombone
|1B8AEE:DAEA| db $E1, $0E ; set panning - leaning left
|1B8AF0:DAEC| db $E3, $1E, $14, $14 ; enable vibrato
|1B8AF4:DAF0| db $06 ; duration
|1B8AF5:DAF1| db $C9 ; rest
|1B8AF6:DAF2| db $24, $6D ; duration, params
|1B8AF8:DAF4| db $B3 ; play note D#5
|1B8AF9:DAF5| db $06, $2D ; duration, params
|1B8AFB:DAF7| db $B3 ; play note D#5
|1B8AFC:DAF8| db $B3 ; play note D#5
|1B8AFD:DAF9| db $0C ; duration
|1B8AFE:DAFA| db $B3 ; play note D#5
|1B8AFF:DAFB| db $B0 ; play note C5
|1B8B00:DAFC| db $AB ; play note G4
|1B8B01:DAFD| db $B3 ; play note D#5
|1B8B02:DAFE| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DAFF:
|1B8B03:DAFF| db $E0, $0A ; set instrument - strings B
|1B8B05:DB01| db $E1, $07 ; set panning - leaning right
|1B8B07:DB03| db $3C, $6D ; duration, params
|1B8B09:DB05| db $9F ; play note G3
|1B8B0A:DB06| db $0C ; duration
|1B8B0B:DB07| db $A1 ; play note A3
|1B8B0C:DB08| db $A2 ; play note A#3
|1B8B0D:DB09| db $A6 ; play note D4
|1B8B0E:DB0A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DB0B:
|1B8B0F:DB0B| db $E0, $0A ; set instrument - strings B
|1B8B11:DB0D| db $0C, $6D ; duration, params
|1B8B13:DB0F| db $93 ; play note G2
|1B8B14:DB10| db $93 ; play note G2
|1B8B15:DB11| db $93 ; play note G2
|1B8B16:DB12| db $93 ; play note G2
|1B8B17:DB13| db $93 ; play note G2
|1B8B18:DB14| db $93 ; play note G2
|1B8B19:DB15| db $08 ; duration
|1B8B1A:DB16| db $93 ; play note G2
|1B8B1B:DB17| db $93 ; play note G2
|1B8B1C:DB18| db $93 ; play note G2
|1B8B1D:DB19| db $0C ; duration
|1B8B1E:DB1A| db $95 ; play note A2
|1B8B1F:DB1B| db $95 ; play note A2
|1B8B20:DB1C| db $95 ; play note A2
|1B8B21:DB1D| db $95 ; play note A2
|1B8B22:DB1E| db $95 ; play note A2
|1B8B23:DB1F| db $95 ; play note A2
|1B8B24:DB20| db $08 ; duration
|1B8B25:DB21| db $95 ; play note A2
|1B8B26:DB22| db $95 ; play note A2
|1B8B27:DB23| db $95 ; play note A2
|1B8B28:DB24| db $0C ; duration
|1B8B29:DB25| db $92 ; play note F#2
|1B8B2A:DB26| db $92 ; play note F#2
|1B8B2B:DB27| db $92 ; play note F#2
|1B8B2C:DB28| db $92 ; play note F#2
|1B8B2D:DB29| db $92 ; play note F#2
|1B8B2E:DB2A| db $92 ; play note F#2
|1B8B2F:DB2B| db $08 ; duration
|1B8B30:DB2C| db $92 ; play note F#2
|1B8B31:DB2D| db $92 ; play note F#2
|1B8B32:DB2E| db $92 ; play note F#2
|1B8B33:DB2F| db $0C ; duration
|1B8B34:DB30| db $93 ; play note G2
|1B8B35:DB31| db $93 ; play note G2
|1B8B36:DB32| db $93 ; play note G2
|1B8B37:DB33| db $93 ; play note G2
|1B8B38:DB34| db $93 ; play note G2
|1B8B39:DB35| db $93 ; play note G2
|1B8B3A:DB36| db $08 ; duration
|1B8B3B:DB37| db $93 ; play note G2
|1B8B3C:DB38| db $93 ; play note G2
|1B8B3D:DB39| db $93 ; play note G2
|1B8B3E:DB3A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DB3B:
|1B8B3F:DB3B| db $0C, $59 ; duration, params
|1B8B41:DB3D| db $AD ; play note A4
|1B8B42:DB3E| db $C9 ; rest
|1B8B43:DB3F| db $08, $49 ; duration, params
|1B8B45:DB41| db $AD ; play note A4
|1B8B46:DB42| db $AD ; play note A4
|1B8B47:DB43| db $AD ; play note A4
|1B8B48:DB44| db $0C, $59 ; duration, params
|1B8B4A:DB46| db $AD ; play note A4
|1B8B4B:DB47| db $C9 ; rest
|1B8B4C:DB48| db $0C, $49 ; duration, params
|1B8B4E:DB4A| db $AD ; play note A4
|1B8B4F:DB4B| db $C9 ; rest
|1B8B50:DB4C| db $0C, $59 ; duration, params
|1B8B52:DB4E| db $AB ; play note G4
|1B8B53:DB4F| db $C9 ; rest
|1B8B54:DB50| db $08, $49 ; duration, params
|1B8B56:DB52| db $AB ; play note G4
|1B8B57:DB53| db $AB ; play note G4
|1B8B58:DB54| db $AB ; play note G4
|1B8B59:DB55| db $0C, $59 ; duration, params
|1B8B5B:DB57| db $AB ; play note G4
|1B8B5C:DB58| db $C9 ; rest
|1B8B5D:DB59| db $0C, $49 ; duration, params
|1B8B5F:DB5B| db $AB ; play note G4
|1B8B60:DB5C| db $C9 ; rest
|1B8B61:DB5D| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DB5E:
|1B8B62:DB5E| db $0C, $5D ; duration, params
|1B8B64:DB60| db $AE ; play note A#4
|1B8B65:DB61| db $0C, $39 ; duration, params
|1B8B67:DB63| db $A6 ; play note D4
|1B8B68:DB64| db $08, $4B ; duration, params
|1B8B6A:DB66| db $AE ; play note A#4
|1B8B6B:DB67| db $08, $39 ; duration, params
|1B8B6D:DB69| db $AE ; play note A#4
|1B8B6E:DB6A| db $AE ; play note A#4
|1B8B6F:DB6B| db $0C, $5C ; duration, params
|1B8B71:DB6D| db $AE ; play note A#4
|1B8B72:DB6E| db $0C, $39 ; duration, params
|1B8B74:DB70| db $A6 ; play note D4
|1B8B75:DB71| db $0C, $4B ; duration, params
|1B8B77:DB73| db $AE ; play note A#4
|1B8B78:DB74| db $0C, $39 ; duration, params
|1B8B7A:DB76| db $A6 ; play note D4
|1B8B7B:DB77| db $0C, $5D ; duration, params
|1B8B7D:DB79| db $B1 ; play note C#5
|1B8B7E:DB7A| db $0C, $39 ; duration, params
|1B8B80:DB7C| db $A8 ; play note E4
|1B8B81:DB7D| db $08, $4B ; duration, params
|1B8B83:DB7F| db $B1 ; play note C#5
|1B8B84:DB80| db $08, $39 ; duration, params
|1B8B86:DB82| db $B1 ; play note C#5
|1B8B87:DB83| db $B1 ; play note C#5
|1B8B88:DB84| db $0C, $5C ; duration, params
|1B8B8A:DB86| db $B1 ; play note C#5
|1B8B8B:DB87| db $0C, $39 ; duration, params
|1B8B8D:DB89| db $A8 ; play note E4
|1B8B8E:DB8A| db $0C, $4B ; duration, params
|1B8B90:DB8C| db $B1 ; play note C#5
|1B8B91:DB8D| db $0C, $39 ; duration, params
|1B8B93:DB8F| db $A8 ; play note E4
|1B8B94:DB90| db $0C, $5D ; duration, params
|1B8B96:DB92| db $B0 ; play note C5
|1B8B97:DB93| db $0C, $39 ; duration, params
|1B8B99:DB95| db $A7 ; play note D#4
|1B8B9A:DB96| db $08, $4B ; duration, params
|1B8B9C:DB98| db $B0 ; play note C5
|1B8B9D:DB99| db $08, $39 ; duration, params
|1B8B9F:DB9B| db $B0 ; play note C5
|1B8BA0:DB9C| db $B0 ; play note C5
|1B8BA1:DB9D| db $0C, $5C ; duration, params
|1B8BA3:DB9F| db $B0 ; play note C5
|1B8BA4:DBA0| db $0C, $39 ; duration, params
|1B8BA6:DBA2| db $A7 ; play note D#4
|1B8BA7:DBA3| db $0C, $4B ; duration, params
|1B8BA9:DBA5| db $B0 ; play note C5
|1B8BAA:DBA6| db $0C, $39 ; duration, params
|1B8BAC:DBA8| db $A7 ; play note D#4
|1B8BAD:DBA9| db $0C, $5D ; duration, params
|1B8BAF:DBAB| db $AE ; play note A#4
|1B8BB0:DBAC| db $0C, $39 ; duration, params
|1B8BB2:DBAE| db $A6 ; play note D4
|1B8BB3:DBAF| db $08, $4B ; duration, params
|1B8BB5:DBB1| db $AE ; play note A#4
|1B8BB6:DBB2| db $08, $39 ; duration, params
|1B8BB8:DBB4| db $AE ; play note A#4
|1B8BB9:DBB5| db $AE ; play note A#4
|1B8BBA:DBB6| db $0C, $5C ; duration, params
|1B8BBC:DBB8| db $AE ; play note A#4
|1B8BBD:DBB9| db $0C, $39 ; duration, params
|1B8BBF:DBBB| db $A6 ; play note D4
|1B8BC0:DBBC| db $0C, $4B ; duration, params
|1B8BC2:DBBE| db $AE ; play note A#4
|1B8BC3:DBBF| db $0C, $39 ; duration, params
|1B8BC5:DBC1| db $A6 ; play note D4
|1B8BC6:DBC2| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DBC3:
|1B8BC7:DBC3| db $54, $6F ; duration, params
|1B8BC9:DBC5| db $87 ; play note G1
|1B8BCA:DBC6| db $06, $4D ; duration, params
|1B8BCC:DBC8| db $89 ; play note A1
|1B8BCD:DBC9| db $89 ; play note A1
|1B8BCE:DBCA| db $54, $6F ; duration, params
|1B8BD0:DBCC| db $89 ; play note A1
|1B8BD1:DBCD| db $06, $4D ; duration, params
|1B8BD3:DBCF| db $86 ; play note F#1
|1B8BD4:DBD0| db $86 ; play note F#1
|1B8BD5:DBD1| db $54, $6F ; duration, params
|1B8BD7:DBD3| db $86 ; play note F#1
|1B8BD8:DBD4| db $06, $4D ; duration, params
|1B8BDA:DBD6| db $87 ; play note G1
|1B8BDB:DBD7| db $87 ; play note G1
|1B8BDC:DBD8| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DBD9:
|1B8BDD:DBD9| db $0C, $59 ; duration, params
|1B8BDF:DBDB| db $AB ; play note G4
|1B8BE0:DBDC| db $C9 ; rest
|1B8BE1:DBDD| db $08, $49 ; duration, params
|1B8BE3:DBDF| db $AB ; play note G4
|1B8BE4:DBE0| db $AB ; play note G4
|1B8BE5:DBE1| db $AB ; play note G4
|1B8BE6:DBE2| db $0C, $59 ; duration, params
|1B8BE8:DBE4| db $AB ; play note G4
|1B8BE9:DBE5| db $C9 ; rest
|1B8BEA:DBE6| db $08, $49 ; duration, params
|1B8BEC:DBE8| db $AB ; play note G4
|1B8BED:DBE9| db $AB ; play note G4
|1B8BEE:DBEA| db $AB ; play note G4
|1B8BEF:DBEB| db $00 ; End

;===================================================================================================

Song11_PendantDungeon:
|1B8BF0:DBEC| dw Song11_Segment0
|1B8BF2:DBEE| dw Song11_Segment1
|1B8BF4:DBF0| dw Song11_Segment2

Song11_Loop:
|1B8BF6:DBF2| dw Song11_Segment3
|1B8BF8:DBF4| dw Song11_Segment4
|1B8BFA:DBF6| dw Song11_Segment5
|1B8BFC:DBF8| dw $00FF, Song11_Loop ; Loop point
|1B8C00:DBFC| dw $0000

Song11_Segment0:
|1B8C02:DBFE| dw Song11_Segment0_Track0
|1B8C04:DC00| dw Song11_Segment0_Track1
|1B8C06:DC02| dw Song11_Segment0_Track2
|1B8C08:DC04| dw Song11_Segment0_Track3
|1B8C0A:DC06| dw Song11_Segment0_Track4
|1B8C0C:DC08| dw $0000
|1B8C0E:DC0A| dw $0000
|1B8C10:DC0C| dw $0000

Song11_Segment1:
|1B8C12:DC0E| dw Song11_Segment1_Track0
|1B8C14:DC10| dw Song11_Segment1_Track1
|1B8C16:DC12| dw Song11_Segment1_Track2
|1B8C18:DC14| dw Song11_Segment1_Track3
|1B8C1A:DC16| dw Song11_Segment1_Track4
|1B8C1C:DC18| dw Song11_Segment1_Track5
|1B8C1E:DC1A| dw $0000
|1B8C20:DC1C| dw $0000

Song11_Segment2:
|1B8C22:DC1E| dw Song11_Segment2_Track0
|1B8C24:DC20| dw Song11_Segment2_Track1
|1B8C26:DC22| dw Song11_Segment2_Track2
|1B8C28:DC24| dw Song11_Segment2_Track3
|1B8C2A:DC26| dw Song11_Segment2_Track4
|1B8C2C:DC28| dw Song11_Segment2_Track5
|1B8C2E:DC2A| dw $0000
|1B8C30:DC2C| dw $0000

Song11_Segment3:
|1B8C32:DC2E| dw Song11_Segment3_Track0
|1B8C34:DC30| dw Song11_Segment3_Track1
|1B8C36:DC32| dw Song11_Segment3_Track2
|1B8C38:DC34| dw Song11_Segment3_Track3
|1B8C3A:DC36| dw $0000
|1B8C3C:DC38| dw $0000
|1B8C3E:DC3A| dw $0000
|1B8C40:DC3C| dw $0000

Song11_Segment4:
|1B8C42:DC3E| dw Song11_Segment4_Track0
|1B8C44:DC40| dw Song11_Segment4_Track1
|1B8C46:DC42| dw Song11_Segment4_Track2
|1B8C48:DC44| dw Song11_Segment4_Track3
|1B8C4A:DC46| dw Song11_Segment4_Track4
|1B8C4C:DC48| dw $0000
|1B8C4E:DC4A| dw $0000
|1B8C50:DC4C| dw $0000

Song11_Segment5:
|1B8C52:DC4E| dw Song11_Segment5_Track0
|1B8C54:DC50| dw Song11_Segment5_Track1
|1B8C56:DC52| dw Song11_Segment5_Track2
|1B8C58:DC54| dw Song11_Segment5_Track3
|1B8C5A:DC56| dw Song11_Segment5_Track4
|1B8C5C:DC58| dw Song11_Segment5_Track5
|1B8C5E:DC5A| dw $0000
|1B8C60:DC5C| dw $0000

Song11_Unused0:
|1B8C62:DC5E| dw Song11_Unused0_Track0
|1B8C64:DC60| dw Song11_Unused0_Track1
|1B8C66:DC62| dw Song11_Unused0_Track2
|1B8C68:DC64| dw Song11_Unused0_Track3
|1B8C6A:DC66| dw Song11_Unused0_Track4
|1B8C6C:DC68| dw Song11_Unused0_Track5
|1B8C6E:DC6A| dw $0000
|1B8C70:DC6C| dw $0000

Song11_Unused1:
|1B8C72:DC6E| dw Song11_Unused1_Track0
|1B8C74:DC70| dw Song11_Unused1_Track1
|1B8C76:DC72| dw Song11_Unused1_Track2
|1B8C78:DC74| dw Song11_Unused1_Track3
|1B8C7A:DC76| dw $0000
|1B8C7C:DC78| dw $0000
|1B8C7E:DC7A| dw $0000
|1B8C80:DC7C| dw $0000

;---------------------------------------------------------------------------------------------------

Song11_Segment0_Track0:
|1B8C82:DC7E| db $FA, $17 ; set base percussion sample
|1B8C84:DC80| db $E5, $C8 ; set song volume
|1B8C86:DC82| db $E7, $0E ; set song tempo
|1B8C88:DC84| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1B8C8C:DC88| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1B8C90:DC8C| db $F8, $1E, $28, $28 ; initiate gradual echo volume change
|1B8C94:DC90| db $E0, $0A ; set instrument - strings B
|1B8C96:DC92| db $ED, $C8 ; set channel volume
|1B8C98:DC94| db $E3, $14, $18, $1E ; enable vibrato
|1B8C9C:DC98| db $60, $7D ; duration, params
|1B8C9E:DC9A| db $99 ; play note C#3
|1B8C9F:DC9B| db $C8 ; sustain current note
|1B8CA0:DC9C| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Segment0_Track1:
|1B8CA1:DC9D| db $E0, $0A ; set instrument - strings B
|1B8CA3:DC9F| db $ED, $C8 ; set channel volume
|1B8CA5:DCA1| db $E3, $14, $18, $1E ; enable vibrato
|1B8CA9:DCA5| db $0C ; duration
|1B8CAA:DCA6| db $C9 ; rest
|1B8CAB:DCA7| db $54, $7D ; duration, params
|1B8CAD:DCA9| db $93 ; play note G2
|1B8CAE:DCAA| db $60 ; duration
|1B8CAF:DCAB| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment0_Track2:
|1B8CB0:DCAC| db $E0, $0A ; set instrument - strings B
|1B8CB2:DCAE| db $ED, $C8 ; set channel volume
|1B8CB4:DCB0| db $E3, $14, $18, $1E ; enable vibrato
|1B8CB8:DCB4| db $18 ; duration
|1B8CB9:DCB5| db $C9 ; rest
|1B8CBA:DCB6| db $48, $7D ; duration, params
|1B8CBC:DCB8| db $92 ; play note F#2
|1B8CBD:DCB9| db $60 ; duration
|1B8CBE:DCBA| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment0_Track3:
|1B8CBF:DCBB| db $E0, $0A ; set instrument - strings B
|1B8CC1:DCBD| db $ED, $C8 ; set channel volume
|1B8CC3:DCBF| db $E3, $14, $18, $1E ; enable vibrato
|1B8CC7:DCC3| db $24 ; duration
|1B8CC8:DCC4| db $C9 ; rest
|1B8CC9:DCC5| db $3C, $7D ; duration, params
|1B8CCB:DCC7| db $9E ; play note F#3
|1B8CCC:DCC8| db $60 ; duration
|1B8CCD:DCC9| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment0_Track4:
|1B8CCE:DCCA| db $E0, $0A ; set instrument - strings B
|1B8CD0:DCCC| db $ED, $C8 ; set channel volume
|1B8CD2:DCCE| db $E3, $14, $18, $1E ; enable vibrato
|1B8CD6:DCD2| db $30 ; duration
|1B8CD7:DCD3| db $C9 ; rest
|1B8CD8:DCD4| db $30, $7D ; duration, params
|1B8CDA:DCD6| db $98 ; play note C3
|1B8CDB:DCD7| db $60 ; duration
|1B8CDC:DCD8| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment1_Track0:
|1B8CDD:DCD9| db $60, $7D ; duration, params
|1B8CDF:DCDB| db $99 ; play note C#3
|1B8CE0:DCDC| db $C8 ; sustain current note
|1B8CE1:DCDD| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Segment1_Track1:
|1B8CE2:DCDE| db $0C ; duration
|1B8CE3:DCDF| db $C9 ; rest
|1B8CE4:DCE0| db $54, $7D ; duration, params
|1B8CE6:DCE2| db $93 ; play note G2
|1B8CE7:DCE3| db $60 ; duration
|1B8CE8:DCE4| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment1_Track2:
|1B8CE9:DCE5| db $18 ; duration
|1B8CEA:DCE6| db $C9 ; rest
|1B8CEB:DCE7| db $48, $7D ; duration, params
|1B8CED:DCE9| db $92 ; play note F#2
|1B8CEE:DCEA| db $60 ; duration
|1B8CEF:DCEB| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment1_Track3:
|1B8CF0:DCEC| db $24 ; duration
|1B8CF1:DCED| db $C9 ; rest
|1B8CF2:DCEE| db $3C, $7D ; duration, params
|1B8CF4:DCF0| db $9E ; play note F#3
|1B8CF5:DCF1| db $60 ; duration
|1B8CF6:DCF2| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment1_Track4:
|1B8CF7:DCF3| db $30 ; duration
|1B8CF8:DCF4| db $C9 ; rest
|1B8CF9:DCF5| db $30, $7D ; duration, params
|1B8CFB:DCF7| db $98 ; play note C3
|1B8CFC:DCF8| db $60 ; duration
|1B8CFD:DCF9| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment1_Track5:
|1B8CFE:DCFA| db $E0, $0A ; set instrument - strings B
|1B8D00:DCFC| db $ED, $C8 ; set channel volume
|1B8D02:DCFE| db $E3, $14, $19, $1E ; enable vibrato
|1B8D06:DD02| db $3C ; duration
|1B8D07:DD03| db $C9 ; rest
|1B8D08:DD04| db $24, $7D ; duration, params
|1B8D0A:DD06| db $9A ; play note D3
|1B8D0B:DD07| db $60 ; duration
|1B8D0C:DD08| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment2_Track0:
|1B8D0D:DD09| db $48, $7D ; duration, params
|1B8D0F:DD0B| db $9B ; play note D#3
|1B8D10:DD0C| db $18 ; duration
|1B8D11:DD0D| db $97 ; play note B2
|1B8D12:DD0E| db $30 ; duration
|1B8D13:DD0F| db $C8 ; sustain current note
|1B8D14:DD10| db $18 ; duration
|1B8D15:DD11| db $C8 ; sustain current note
|1B8D16:DD12| db $48 ; duration
|1B8D17:DD13| db $9F ; play note G3
|1B8D18:DD14| db $0C ; duration
|1B8D19:DD15| db $C8 ; sustain current note
|1B8D1A:DD16| db $54 ; duration
|1B8D1B:DD17| db $94 ; play note G#2
|1B8D1C:DD18| db $E8, $60, $1D ; initiate gradual tempo change
|1B8D1F:DD1B| db $48 ; duration
|1B8D20:DD1C| db $93 ; play note G2
|1B8D21:DD1D| db $18 ; duration
|1B8D22:DD1E| db $A2 ; play note A#3
|1B8D23:DD1F| db $60 ; duration
|1B8D24:DD20| db $A2 ; play note A#3
|1B8D25:DD21| db $60, $58 ; duration, params
|1B8D27:DD23| db $C8 ; sustain current note
|1B8D28:DD24| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Segment2_Track1:
|1B8D29:DD25| db $0C ; duration
|1B8D2A:DD26| db $C9 ; rest
|1B8D2B:DD27| db $54, $7D ; duration, params
|1B8D2D:DD29| db $9C ; play note E3
|1B8D2E:DD2A| db $30 ; duration
|1B8D2F:DD2B| db $C8 ; sustain current note
|1B8D30:DD2C| db $24 ; duration
|1B8D31:DD2D| db $C8 ; sustain current note
|1B8D32:DD2E| db $3C ; duration
|1B8D33:DD2F| db $9E ; play note F#3
|1B8D34:DD30| db $18 ; duration
|1B8D35:DD31| db $C8 ; sustain current note
|1B8D36:DD32| db $48 ; duration
|1B8D37:DD33| db $93 ; play note G2
|1B8D38:DD34| db $0C ; duration
|1B8D39:DD35| db $C8 ; sustain current note
|1B8D3A:DD36| db $48 ; duration
|1B8D3B:DD37| db $92 ; play note F#2
|1B8D3C:DD38| db $0C ; duration
|1B8D3D:DD39| db $A1 ; play note A3
|1B8D3E:DD3A| db $60 ; duration
|1B8D3F:DD3B| db $A1 ; play note A3
|1B8D40:DD3C| db $60, $58 ; duration, params
|1B8D42:DD3E| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment2_Track2:
|1B8D43:DD3F| db $18 ; duration
|1B8D44:DD40| db $C9 ; rest
|1B8D45:DD41| db $48, $7D ; duration, params
|1B8D47:DD43| db $9D ; play note F3
|1B8D48:DD44| db $30 ; duration
|1B8D49:DD45| db $C8 ; sustain current note
|1B8D4A:DD46| db $C8 ; sustain current note
|1B8D4B:DD47| db $96 ; play note A#2
|1B8D4C:DD48| db $60 ; duration
|1B8D4D:DD49| db $C8 ; sustain current note
|1B8D4E:DD4A| db $18 ; duration
|1B8D4F:DD4B| db $C8 ; sustain current note
|1B8D50:DD4C| db $48 ; duration
|1B8D51:DD4D| db $98 ; play note C3
|1B8D52:DD4E| db $60 ; duration
|1B8D53:DD4F| db $A7 ; play note D#4
|1B8D54:DD50| db $60, $58 ; duration, params
|1B8D56:DD52| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment2_Track3:
|1B8D57:DD53| db $24 ; duration
|1B8D58:DD54| db $C9 ; rest
|1B8D59:DD55| db $3C, $7D ; duration, params
|1B8D5B:DD57| db $A1 ; play note A3
|1B8D5C:DD58| db $30 ; duration
|1B8D5D:DD59| db $C8 ; sustain current note
|1B8D5E:DD5A| db $3C ; duration
|1B8D5F:DD5B| db $C8 ; sustain current note
|1B8D60:DD5C| db $24 ; duration
|1B8D61:DD5D| db $95 ; play note A2
|1B8D62:DD5E| db $60 ; duration
|1B8D63:DD5F| db $C8 ; sustain current note
|1B8D64:DD60| db $24 ; duration
|1B8D65:DD61| db $C8 ; sustain current note
|1B8D66:DD62| db $3C ; duration
|1B8D67:DD63| db $97 ; play note B2
|1B8D68:DD64| db $60 ; duration
|1B8D69:DD65| db $97 ; play note B2
|1B8D6A:DD66| db $E0, $09 ; set instrument - strings A
|1B8D6C:DD68| db $0C, $7F ; duration, params
|1B8D6E:DD6A| db $97 ; play note B2
|1B8D6F:DD6B| db $0C, $7D ; duration, params
|1B8D71:DD6D| db $97 ; play note B2
|1B8D72:DD6E| db $97 ; play note B2
|1B8D73:DD6F| db $97 ; play note B2
|1B8D74:DD70| db $0C, $7F ; duration, params
|1B8D76:DD72| db $97 ; play note B2
|1B8D77:DD73| db $0C, $7D ; duration, params
|1B8D79:DD75| db $97 ; play note B2
|1B8D7A:DD76| db $97 ; play note B2
|1B8D7B:DD77| db $97 ; play note B2

;---------------------------------------------------------------------------------------------------

Song11_Segment2_Track4:
|1B8D7C:DD78| db $30 ; duration
|1B8D7D:DD79| db $C9 ; rest
|1B8D7E:DD7A| db $30, $7D ; duration, params
|1B8D80:DD7C| db $A0 ; play note G#3
|1B8D81:DD7D| db $C8 ; sustain current note
|1B8D82:DD7E| db $54 ; duration
|1B8D83:DD7F| db $C8 ; sustain current note
|1B8D84:DD80| db $0C ; duration
|1B8D85:DD81| db $9D ; play note F3
|1B8D86:DD82| db $60 ; duration
|1B8D87:DD83| db $C8 ; sustain current note
|1B8D88:DD84| db $30 ; duration
|1B8D89:DD85| db $C8 ; sustain current note
|1B8D8A:DD86| db $9D ; play note F3
|1B8D8B:DD87| db $60 ; duration
|1B8D8C:DD88| db $9D ; play note F3
|1B8D8D:DD89| db $60, $58 ; duration, params
|1B8D8F:DD8B| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment2_Track5:
|1B8D90:DD8C| db $3C ; duration
|1B8D91:DD8D| db $C9 ; rest
|1B8D92:DD8E| db $24, $7D ; duration, params
|1B8D94:DD90| db $98 ; play note C3
|1B8D95:DD91| db $30 ; duration
|1B8D96:DD92| db $C8 ; sustain current note
|1B8D97:DD93| db $60 ; duration
|1B8D98:DD94| db $C8 ; sustain current note
|1B8D99:DD95| db $9C ; play note E3
|1B8D9A:DD96| db $3C ; duration
|1B8D9B:DD97| db $C8 ; sustain current note
|1B8D9C:DD98| db $24 ; duration
|1B8D9D:DD99| db $9C ; play note E3
|1B8D9E:DD9A| db $60 ; duration
|1B8D9F:DD9B| db $9C ; play note E3
|1B8DA0:DD9C| db $60, $58 ; duration, params
|1B8DA2:DD9E| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment3_Track0:
|1B8DA3:DD9F| db $EF : dw Song11_Sub_E015 : db $01 ; call segment subroutine
|1B8DA7:DDA3| db $EF : dw Song11_Sub_E021 : db $01 ; call segment subroutine
|1B8DAB:DDA7| db $EF : dw Song11_Sub_E02C : db $01 ; call segment subroutine
|1B8DAF:DDAB| db $EF : dw Song11_Sub_E021 : db $01 ; call segment subroutine
|1B8DB3:DDAF| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Segment3_Track1:
|1B8DB4:DDB0| db $EF : dw Song11_Sub_E037 : db $01 ; call segment subroutine
|1B8DB8:DDB4| db $EF : dw Song11_Sub_E042 : db $01 ; call segment subroutine
|1B8DBC:DDB8| db $EF : dw Song11_Sub_E04C : db $01 ; call segment subroutine
|1B8DC0:DDBC| db $EF : dw Song11_Sub_E042 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Segment3_Track2:
|1B8DC4:DDC0| db $EF : dw Song11_Sub_E056 : db $01 ; call segment subroutine
|1B8DC8:DDC4| db $EF : dw Song11_Sub_E062 : db $01 ; call segment subroutine
|1B8DCC:DDC8| db $EF : dw Song11_Sub_E06D : db $01 ; call segment subroutine
|1B8DD0:DDCC| db $EF : dw Song11_Sub_E062 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Segment3_Track3:
|1B8DD4:DDD0| db $EF : dw Song11_Sub_E078 : db $02 ; call segment subroutine
|1B8DD8:DDD4| db $EF : dw Song11_Sub_E085 : db $02 ; call segment subroutine
|1B8DDC:DDD8| db $EF : dw Song11_Sub_E092 : db $02 ; call segment subroutine
|1B8DE0:DDDC| db $EF : dw Song11_Sub_E085 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Segment4_Track0:
|1B8DE4:DDE0| db $EF : dw Song11_Sub_E015 : db $01 ; call segment subroutine
|1B8DE8:DDE4| db $EF : dw Song11_Sub_E021 : db $01 ; call segment subroutine
|1B8DEC:DDE8| db $EF : dw Song11_Sub_E02C : db $01 ; call segment subroutine
|1B8DF0:DDEC| db $EF : dw Song11_Sub_E09F : db $01 ; call segment subroutine
|1B8DF4:DDF0| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Segment4_Track1:
|1B8DF5:DDF1| db $EF : dw Song11_Sub_E037 : db $01 ; call segment subroutine
|1B8DF9:DDF5| db $EF : dw Song11_Sub_E042 : db $01 ; call segment subroutine
|1B8DFD:DDF9| db $EF : dw Song11_Sub_E04C : db $01 ; call segment subroutine
|1B8E01:DDFD| db $18 ; duration
|1B8E02:DDFE| db $C9 ; rest
|1B8E03:DDFF| db $30 ; duration
|1B8E04:DE00| db $A3 ; play note B3
|1B8E05:DE01| db $18 ; duration
|1B8E06:DE02| db $A3 ; play note B3
|1B8E07:DE03| db $C8 ; sustain current note
|1B8E08:DE04| db $48 ; duration
|1B8E09:DE05| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song11_Segment4_Track2:
|1B8E0A:DE06| db $EF : dw Song11_Sub_E056 : db $01 ; call segment subroutine
|1B8E0E:DE0A| db $EF : dw Song11_Sub_E062 : db $01 ; call segment subroutine
|1B8E12:DE0E| db $EF : dw Song11_Sub_E06D : db $01 ; call segment subroutine
|1B8E16:DE12| db $EF : dw Song11_Sub_E0AA : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Segment4_Track3:
|1B8E1A:DE16| db $EF : dw Song11_Sub_E078 : db $02 ; call segment subroutine
|1B8E1E:DE1A| db $EF : dw Song11_Sub_E085 : db $02 ; call segment subroutine
|1B8E22:DE1E| db $EF : dw Song11_Sub_E092 : db $02 ; call segment subroutine
|1B8E26:DE22| db $EF : dw Song11_Sub_E0B5 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Segment4_Track4:
|1B8E2A:DE26| db $E0, $11 ; set instrument - trumpet
|1B8E2C:DE28| db $ED, $DC ; set channel volume
|1B8E2E:DE2A| db $48, $7D ; duration, params
|1B8E30:DE2C| db $AD ; play note A4
|1B8E31:DE2D| db $0C ; duration
|1B8E32:DE2E| db $AC ; play note G#4
|1B8E33:DE2F| db $AD ; play note A4
|1B8E34:DE30| db $48 ; duration
|1B8E35:DE31| db $AF ; play note B4
|1B8E36:DE32| db $0C ; duration
|1B8E37:DE33| db $AD ; play note A4
|1B8E38:DE34| db $AC ; play note G#4
|1B8E39:DE35| db $60 ; duration
|1B8E3A:DE36| db $A5 ; play note C#4
|1B8E3B:DE37| db $48 ; duration
|1B8E3C:DE38| db $C8 ; sustain current note
|1B8E3D:DE39| db $08 ; duration
|1B8E3E:DE3A| db $A5 ; play note C#4
|1B8E3F:DE3B| db $A4 ; play note C4
|1B8E40:DE3C| db $08, $78 ; duration, params
|1B8E42:DE3E| db $A5 ; play note C#4
|1B8E43:DE3F| db $48, $7D ; duration, params
|1B8E45:DE41| db $AB ; play note G4
|1B8E46:DE42| db $0C ; duration
|1B8E47:DE43| db $AA ; play note F#4
|1B8E48:DE44| db $AB ; play note G4
|1B8E49:DE45| db $48 ; duration
|1B8E4A:DE46| db $AD ; play note A4
|1B8E4B:DE47| db $0C ; duration
|1B8E4C:DE48| db $AB ; play note G4
|1B8E4D:DE49| db $AA ; play note F#4
|1B8E4E:DE4A| db $60 ; duration
|1B8E4F:DE4B| db $A3 ; play note B3
|1B8E50:DE4C| db $48 ; duration
|1B8E51:DE4D| db $C8 ; sustain current note
|1B8E52:DE4E| db $08 ; duration
|1B8E53:DE4F| db $A3 ; play note B3
|1B8E54:DE50| db $A2 ; play note A#3
|1B8E55:DE51| db $08, $78 ; duration, params
|1B8E57:DE53| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song11_Segment5_Track0:
|1B8E58:DE54| db $0C ; duration
|1B8E59:DE55| db $C9 ; rest
|1B8E5A:DE56| db $30, $7D ; duration, params
|1B8E5C:DE58| db $A9 ; play note F4
|1B8E5D:DE59| db $24 ; duration
|1B8E5E:DE5A| db $A9 ; play note F4
|1B8E5F:DE5B| db $0C, $6D ; duration, params
|1B8E61:DE5D| db $C8 ; sustain current note
|1B8E62:DE5E| db $54, $7D ; duration, params
|1B8E64:DE60| db $A9 ; play note F4
|1B8E65:DE61| db $0C ; duration
|1B8E66:DE62| db $C9 ; rest
|1B8E67:DE63| db $30 ; duration
|1B8E68:DE64| db $A8 ; play note E4
|1B8E69:DE65| db $24 ; duration
|1B8E6A:DE66| db $A8 ; play note E4
|1B8E6B:DE67| db $0C, $6D ; duration, params
|1B8E6D:DE69| db $C8 ; sustain current note
|1B8E6E:DE6A| db $54, $7D ; duration, params
|1B8E70:DE6C| db $A8 ; play note E4
|1B8E71:DE6D| db $0C ; duration
|1B8E72:DE6E| db $C9 ; rest
|1B8E73:DE6F| db $30 ; duration
|1B8E74:DE70| db $AB ; play note G4
|1B8E75:DE71| db $24 ; duration
|1B8E76:DE72| db $AB ; play note G4
|1B8E77:DE73| db $0C, $6D ; duration, params
|1B8E79:DE75| db $C8 ; sustain current note
|1B8E7A:DE76| db $54, $7D ; duration, params
|1B8E7C:DE78| db $AB ; play note G4
|1B8E7D:DE79| db $0C ; duration
|1B8E7E:DE7A| db $C9 ; rest
|1B8E7F:DE7B| db $30 ; duration
|1B8E80:DE7C| db $AC ; play note G#4
|1B8E81:DE7D| db $24 ; duration
|1B8E82:DE7E| db $AC ; play note G#4
|1B8E83:DE7F| db $0C, $6D ; duration, params
|1B8E85:DE81| db $C8 ; sustain current note
|1B8E86:DE82| db $54, $7D ; duration, params
|1B8E88:DE84| db $AC ; play note G#4
|1B8E89:DE85| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Segment5_Track1:
|1B8E8A:DE86| db $18 ; duration
|1B8E8B:DE87| db $C9 ; rest
|1B8E8C:DE88| db $30, $7D ; duration, params
|1B8E8E:DE8A| db $AA ; play note F#4
|1B8E8F:DE8B| db $18 ; duration
|1B8E90:DE8C| db $AA ; play note F#4
|1B8E91:DE8D| db $18, $6D ; duration, params
|1B8E93:DE8F| db $C8 ; sustain current note
|1B8E94:DE90| db $48, $7D ; duration, params
|1B8E96:DE92| db $AA ; play note F#4
|1B8E97:DE93| db $18 ; duration
|1B8E98:DE94| db $C9 ; rest
|1B8E99:DE95| db $30 ; duration
|1B8E9A:DE96| db $A9 ; play note F4
|1B8E9B:DE97| db $18 ; duration
|1B8E9C:DE98| db $A9 ; play note F4
|1B8E9D:DE99| db $18, $6D ; duration, params
|1B8E9F:DE9B| db $C8 ; sustain current note
|1B8EA0:DE9C| db $48, $7D ; duration, params
|1B8EA2:DE9E| db $A9 ; play note F4
|1B8EA3:DE9F| db $18 ; duration
|1B8EA4:DEA0| db $C9 ; rest
|1B8EA5:DEA1| db $30 ; duration
|1B8EA6:DEA2| db $AC ; play note G#4
|1B8EA7:DEA3| db $18 ; duration
|1B8EA8:DEA4| db $AC ; play note G#4
|1B8EA9:DEA5| db $18, $6D ; duration, params
|1B8EAB:DEA7| db $C8 ; sustain current note
|1B8EAC:DEA8| db $48, $7D ; duration, params
|1B8EAE:DEAA| db $AC ; play note G#4
|1B8EAF:DEAB| db $18 ; duration
|1B8EB0:DEAC| db $C9 ; rest
|1B8EB1:DEAD| db $30 ; duration
|1B8EB2:DEAE| db $AD ; play note A4
|1B8EB3:DEAF| db $18 ; duration
|1B8EB4:DEB0| db $AD ; play note A4
|1B8EB5:DEB1| db $18, $6D ; duration, params
|1B8EB7:DEB3| db $C8 ; sustain current note
|1B8EB8:DEB4| db $48, $7D ; duration, params
|1B8EBA:DEB6| db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song11_Segment5_Track2:
|1B8EBB:DEB7| db $24 ; duration
|1B8EBC:DEB8| db $C9 ; rest
|1B8EBD:DEB9| db $30, $7D ; duration, params
|1B8EBF:DEBB| db $B1 ; play note C#5
|1B8EC0:DEBC| db $0C ; duration
|1B8EC1:DEBD| db $B1 ; play note C#5
|1B8EC2:DEBE| db $24, $6D ; duration, params
|1B8EC4:DEC0| db $C8 ; sustain current note
|1B8EC5:DEC1| db $3C, $7D ; duration, params
|1B8EC7:DEC3| db $B1 ; play note C#5
|1B8EC8:DEC4| db $24 ; duration
|1B8EC9:DEC5| db $C9 ; rest
|1B8ECA:DEC6| db $30 ; duration
|1B8ECB:DEC7| db $B0 ; play note C5
|1B8ECC:DEC8| db $0C ; duration
|1B8ECD:DEC9| db $B0 ; play note C5
|1B8ECE:DECA| db $24, $6D ; duration, params
|1B8ED0:DECC| db $C8 ; sustain current note
|1B8ED1:DECD| db $3C, $7D ; duration, params
|1B8ED3:DECF| db $B0 ; play note C5
|1B8ED4:DED0| db $24 ; duration
|1B8ED5:DED1| db $C9 ; rest
|1B8ED6:DED2| db $30 ; duration
|1B8ED7:DED3| db $B3 ; play note D#5
|1B8ED8:DED4| db $0C ; duration
|1B8ED9:DED5| db $B3 ; play note D#5
|1B8EDA:DED6| db $24, $6D ; duration, params
|1B8EDC:DED8| db $C8 ; sustain current note
|1B8EDD:DED9| db $3C, $7D ; duration, params
|1B8EDF:DEDB| db $B3 ; play note D#5
|1B8EE0:DEDC| db $24 ; duration
|1B8EE1:DEDD| db $C9 ; rest
|1B8EE2:DEDE| db $30 ; duration
|1B8EE3:DEDF| db $B4 ; play note E5
|1B8EE4:DEE0| db $0C ; duration
|1B8EE5:DEE1| db $B4 ; play note E5
|1B8EE6:DEE2| db $24, $6D ; duration, params
|1B8EE8:DEE4| db $C8 ; sustain current note
|1B8EE9:DEE5| db $3C, $7D ; duration, params
|1B8EEB:DEE7| db $B4 ; play note E5

;---------------------------------------------------------------------------------------------------

Song11_Segment5_Track3:
|1B8EEC:DEE8| db $EF : dw Song11_Sub_E0C2 : db $02 ; call segment subroutine
|1B8EF0:DEEC| db $EF : dw Song11_Sub_E0CF : db $02 ; call segment subroutine
|1B8EF4:DEF0| db $0C, $5F ; duration, params
|1B8EF6:DEF2| db $9D ; play note F3
|1B8EF7:DEF3| db $0C, $5D ; duration, params
|1B8EF9:DEF5| db $9D ; play note F3
|1B8EFA:DEF6| db $9D ; play note F3
|1B8EFB:DEF7| db $9D ; play note F3
|1B8EFC:DEF8| db $9D ; play note F3
|1B8EFD:DEF9| db $9D ; play note F3
|1B8EFE:DEFA| db $9D ; play note F3
|1B8EFF:DEFB| db $9D ; play note F3
|1B8F00:DEFC| db $9D ; play note F3
|1B8F01:DEFD| db $9D ; play note F3
|1B8F02:DEFE| db $9D ; play note F3
|1B8F03:DEFF| db $9D ; play note F3
|1B8F04:DF00| db $9D ; play note F3
|1B8F05:DF01| db $9D ; play note F3
|1B8F06:DF02| db $9D ; play note F3
|1B8F07:DF03| db $9D ; play note F3
|1B8F08:DF04| db $EF : dw Song11_Sub_E0DC : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Segment5_Track4:
|1B8F0C:DF08| db $ED, $DC ; set channel volume
|1B8F0E:DF0A| db $EF : dw Song11_Sub_E0E5 : db $01 ; call segment subroutine
|1B8F12:DF0E| db $0C ; duration
|1B8F13:DF0F| db $B0 ; play note C5
|1B8F14:DF10| db $3C ; duration
|1B8F15:DF11| db $AF ; play note B4
|1B8F16:DF12| db $0C ; duration
|1B8F17:DF13| db $A9 ; play note F4
|1B8F18:DF14| db $A8 ; play note E4
|1B8F19:DF15| db $60 ; duration
|1B8F1A:DF16| db $C8 ; sustain current note
|1B8F1B:DF17| db $3C ; duration
|1B8F1C:DF18| db $A7 ; play note D#4
|1B8F1D:DF19| db $0C ; duration
|1B8F1E:DF1A| db $A6 ; play note D4
|1B8F1F:DF1B| db $A7 ; play note D#4
|1B8F20:DF1C| db $AC ; play note G#4
|1B8F21:DF1D| db $48 ; duration
|1B8F22:DF1E| db $B2 ; play note D5
|1B8F23:DF1F| db $18 ; duration
|1B8F24:DF20| db $AE ; play note A#4
|1B8F25:DF21| db $60 ; duration
|1B8F26:DF22| db $AD ; play note A4
|1B8F27:DF23| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment5_Track5:
|1B8F28:DF24| db $EF : dw Song11_Sub_E0F1 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Unused0_Track0:
|1B8F2C:DF28| db $0C ; duration
|1B8F2D:DF29| db $C9 ; rest
|1B8F2E:DF2A| db $30, $7D ; duration, params
|1B8F30:DF2C| db $A9 ; play note F4
|1B8F31:DF2D| db $24 ; duration
|1B8F32:DF2E| db $A9 ; play note F4
|1B8F33:DF2F| db $0C ; duration
|1B8F34:DF30| db $C8 ; sustain current note
|1B8F35:DF31| db $54 ; duration
|1B8F36:DF32| db $A9 ; play note F4
|1B8F37:DF33| db $0C ; duration
|1B8F38:DF34| db $C9 ; rest
|1B8F39:DF35| db $30 ; duration
|1B8F3A:DF36| db $A8 ; play note E4
|1B8F3B:DF37| db $24 ; duration
|1B8F3C:DF38| db $A8 ; play note E4
|1B8F3D:DF39| db $0C ; duration
|1B8F3E:DF3A| db $C8 ; sustain current note
|1B8F3F:DF3B| db $54 ; duration
|1B8F40:DF3C| db $A8 ; play note E4
|1B8F41:DF3D| db $0C ; duration
|1B8F42:DF3E| db $C9 ; rest
|1B8F43:DF3F| db $30 ; duration
|1B8F44:DF40| db $A7 ; play note D#4
|1B8F45:DF41| db $24 ; duration
|1B8F46:DF42| db $A7 ; play note D#4
|1B8F47:DF43| db $0C ; duration
|1B8F48:DF44| db $C8 ; sustain current note
|1B8F49:DF45| db $54 ; duration
|1B8F4A:DF46| db $A7 ; play note D#4
|1B8F4B:DF47| db $0C ; duration
|1B8F4C:DF48| db $C9 ; rest
|1B8F4D:DF49| db $30 ; duration
|1B8F4E:DF4A| db $A6 ; play note D4
|1B8F4F:DF4B| db $24 ; duration
|1B8F50:DF4C| db $A6 ; play note D4
|1B8F51:DF4D| db $0C ; duration
|1B8F52:DF4E| db $C8 ; sustain current note
|1B8F53:DF4F| db $54 ; duration
|1B8F54:DF50| db $A6 ; play note D4
|1B8F55:DF51| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Unused0_Track1:
|1B8F56:DF52| db $18 ; duration
|1B8F57:DF53| db $C9 ; rest
|1B8F58:DF54| db $30, $7D ; duration, params
|1B8F5A:DF56| db $AA ; play note F#4
|1B8F5B:DF57| db $18 ; duration
|1B8F5C:DF58| db $AA ; play note F#4
|1B8F5D:DF59| db $C8 ; sustain current note
|1B8F5E:DF5A| db $48 ; duration
|1B8F5F:DF5B| db $AA ; play note F#4
|1B8F60:DF5C| db $18 ; duration
|1B8F61:DF5D| db $C9 ; rest
|1B8F62:DF5E| db $30 ; duration
|1B8F63:DF5F| db $A9 ; play note F4
|1B8F64:DF60| db $18 ; duration
|1B8F65:DF61| db $A9 ; play note F4
|1B8F66:DF62| db $C8 ; sustain current note
|1B8F67:DF63| db $48 ; duration
|1B8F68:DF64| db $A9 ; play note F4
|1B8F69:DF65| db $18 ; duration
|1B8F6A:DF66| db $C9 ; rest
|1B8F6B:DF67| db $30 ; duration
|1B8F6C:DF68| db $A8 ; play note E4
|1B8F6D:DF69| db $18 ; duration
|1B8F6E:DF6A| db $A8 ; play note E4
|1B8F6F:DF6B| db $C8 ; sustain current note
|1B8F70:DF6C| db $48 ; duration
|1B8F71:DF6D| db $A8 ; play note E4
|1B8F72:DF6E| db $18 ; duration
|1B8F73:DF6F| db $C9 ; rest
|1B8F74:DF70| db $30 ; duration
|1B8F75:DF71| db $A7 ; play note D#4
|1B8F76:DF72| db $18 ; duration
|1B8F77:DF73| db $A7 ; play note D#4
|1B8F78:DF74| db $C8 ; sustain current note
|1B8F79:DF75| db $48 ; duration
|1B8F7A:DF76| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song11_Unused0_Track2:
|1B8F7B:DF77| db $24 ; duration
|1B8F7C:DF78| db $C9 ; rest
|1B8F7D:DF79| db $30, $7D ; duration, params
|1B8F7F:DF7B| db $B1 ; play note C#5
|1B8F80:DF7C| db $0C ; duration
|1B8F81:DF7D| db $B1 ; play note C#5
|1B8F82:DF7E| db $24 ; duration
|1B8F83:DF7F| db $C8 ; sustain current note
|1B8F84:DF80| db $3C ; duration
|1B8F85:DF81| db $B1 ; play note C#5
|1B8F86:DF82| db $24 ; duration
|1B8F87:DF83| db $C9 ; rest
|1B8F88:DF84| db $30 ; duration
|1B8F89:DF85| db $B0 ; play note C5
|1B8F8A:DF86| db $0C ; duration
|1B8F8B:DF87| db $B0 ; play note C5
|1B8F8C:DF88| db $24 ; duration
|1B8F8D:DF89| db $C8 ; sustain current note
|1B8F8E:DF8A| db $3C ; duration
|1B8F8F:DF8B| db $B0 ; play note C5
|1B8F90:DF8C| db $24 ; duration
|1B8F91:DF8D| db $C9 ; rest
|1B8F92:DF8E| db $30 ; duration
|1B8F93:DF8F| db $AF ; play note B4
|1B8F94:DF90| db $0C ; duration
|1B8F95:DF91| db $AF ; play note B4
|1B8F96:DF92| db $24 ; duration
|1B8F97:DF93| db $C8 ; sustain current note
|1B8F98:DF94| db $3C ; duration
|1B8F99:DF95| db $AF ; play note B4
|1B8F9A:DF96| db $24 ; duration
|1B8F9B:DF97| db $C9 ; rest
|1B8F9C:DF98| db $30 ; duration
|1B8F9D:DF99| db $AE ; play note A#4
|1B8F9E:DF9A| db $0C ; duration
|1B8F9F:DF9B| db $AE ; play note A#4
|1B8FA0:DF9C| db $24 ; duration
|1B8FA1:DF9D| db $C8 ; sustain current note
|1B8FA2:DF9E| db $3C ; duration
|1B8FA3:DF9F| db $AE ; play note A#4

;---------------------------------------------------------------------------------------------------

Song11_Unused0_Track3:
|1B8FA4:DFA0| db $EF : dw Song11_Sub_E0C2 : db $02 ; call segment subroutine
|1B8FA8:DFA4| db $EF : dw Song11_Sub_E0CF : db $02 ; call segment subroutine
|1B8FAC:DFA8| db $EF : dw Song11_Sub_E120 : db $02 ; call segment subroutine
|1B8FB0:DFAC| db $EF : dw Song11_Sub_E12D : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Unused0_Track4:
|1B8FB4:DFB0| db $EF : dw Song11_Sub_E0E5 : db $01 ; call segment subroutine
|1B8FB8:DFB4| db $0C ; duration
|1B8FB9:DFB5| db $AF ; play note B4
|1B8FBA:DFB6| db $3C ; duration
|1B8FBB:DFB7| db $AE ; play note A#4
|1B8FBC:DFB8| db $0C ; duration
|1B8FBD:DFB9| db $A9 ; play note F4
|1B8FBE:DFBA| db $A8 ; play note E4
|1B8FBF:DFBB| db $60 ; duration
|1B8FC0:DFBC| db $C8 ; sustain current note
|1B8FC1:DFBD| db $3C ; duration
|1B8FC2:DFBE| db $A7 ; play note D#4
|1B8FC3:DFBF| db $0C ; duration
|1B8FC4:DFC0| db $A6 ; play note D4
|1B8FC5:DFC1| db $A7 ; play note D#4
|1B8FC6:DFC2| db $AE ; play note A#4
|1B8FC7:DFC3| db $48 ; duration
|1B8FC8:DFC4| db $AF ; play note B4
|1B8FC9:DFC5| db $18 ; duration
|1B8FCA:DFC6| db $B1 ; play note C#5
|1B8FCB:DFC7| db $60 ; duration
|1B8FCC:DFC8| db $B0 ; play note C5
|1B8FCD:DFC9| db $AE ; play note A#4

;---------------------------------------------------------------------------------------------------

Song11_Unused0_Track5:
|1B8FCE:DFCA| db $EF : dw Song11_Sub_E0F1 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Unused1_Track0:
|1B8FD2:DFCE| db $EF : dw Song11_Sub_E015 : db $01 ; call segment subroutine
|1B8FD6:DFD2| db $EF : dw Song11_Sub_E021 : db $01 ; call segment subroutine
|1B8FDA:DFD6| db $EF : dw Song11_Sub_E02C : db $01 ; call segment subroutine
|1B8FDE:DFDA| db $EF : dw Song11_Sub_E09F : db $01 ; call segment subroutine
|1B8FE2:DFDE| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Unused1_Track1:
|1B8FE3:DFDF| db $EF : dw Song11_Sub_E037 : db $01 ; call segment subroutine
|1B8FE7:DFE3| db $EF : dw Song11_Sub_E042 : db $01 ; call segment subroutine
|1B8FEB:DFE7| db $EF : dw Song11_Sub_E04C : db $01 ; call segment subroutine
|1B8FEF:DFEB| db $18 ; duration
|1B8FF0:DFEC| db $C9 ; rest
|1B8FF1:DFED| db $30 ; duration
|1B8FF2:DFEE| db $A3 ; play note B3
|1B8FF3:DFEF| db $18 ; duration
|1B8FF4:DFF0| db $A3 ; play note B3
|1B8FF5:DFF1| db $C8 ; sustain current note
|1B8FF6:DFF2| db $48 ; duration
|1B8FF7:DFF3| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song11_Unused1_Track2:
|1B8FF8:DFF4| db $EF : dw Song11_Sub_E056 : db $01 ; call segment subroutine
|1B8FFC:DFF8| db $EF : dw Song11_Sub_E062 : db $01 ; call segment subroutine
|1B9000:DFFC| db $EF : dw Song11_Sub_E06D : db $01 ; call segment subroutine
|1B9004:E000| db $EF : dw Song11_Sub_E0AA : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Unused1_Track3:
|1B9008:E004| db $EF : dw Song11_Sub_E078 : db $02 ; call segment subroutine
|1B900C:E008| db $EF : dw Song11_Sub_E085 : db $02 ; call segment subroutine
|1B9010:E00C| db $EF : dw Song11_Sub_E092 : db $02 ; call segment subroutine
|1B9014:E010| db $EF : dw Song11_Sub_E0B5 : db $02 ; call segment subroutine
|1B9018:E014| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E015:
|1B9019:E015| db $0C ; duration
|1B901A:E016| db $C9 ; rest
|1B901B:E017| db $30, $7D ; duration, params
|1B901D:E019| db $A5 ; play note C#4
|1B901E:E01A| db $24 ; duration
|1B901F:E01B| db $A5 ; play note C#4
|1B9020:E01C| db $0C ; duration
|1B9021:E01D| db $C8 ; sustain current note
|1B9022:E01E| db $54 ; duration
|1B9023:E01F| db $A5 ; play note C#4
|1B9024:E020| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E021:
|1B9025:E021| db $0C ; duration
|1B9026:E022| db $C9 ; rest
|1B9027:E023| db $30 ; duration
|1B9028:E024| db $A4 ; play note C4
|1B9029:E025| db $24 ; duration
|1B902A:E026| db $A4 ; play note C4
|1B902B:E027| db $0C ; duration
|1B902C:E028| db $C8 ; sustain current note
|1B902D:E029| db $54 ; duration
|1B902E:E02A| db $A4 ; play note C4
|1B902F:E02B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E02C:
|1B9030:E02C| db $0C ; duration
|1B9031:E02D| db $C9 ; rest
|1B9032:E02E| db $30 ; duration
|1B9033:E02F| db $A3 ; play note B3
|1B9034:E030| db $24 ; duration
|1B9035:E031| db $A3 ; play note B3
|1B9036:E032| db $0C ; duration
|1B9037:E033| db $C8 ; sustain current note
|1B9038:E034| db $54 ; duration
|1B9039:E035| db $A3 ; play note B3
|1B903A:E036| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E037:
|1B903B:E037| db $18 ; duration
|1B903C:E038| db $C9 ; rest
|1B903D:E039| db $30, $7D ; duration, params
|1B903F:E03B| db $A6 ; play note D4
|1B9040:E03C| db $18 ; duration
|1B9041:E03D| db $A6 ; play note D4
|1B9042:E03E| db $C8 ; sustain current note
|1B9043:E03F| db $48 ; duration
|1B9044:E040| db $A6 ; play note D4
|1B9045:E041| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E042:
|1B9046:E042| db $18 ; duration
|1B9047:E043| db $C9 ; rest
|1B9048:E044| db $30 ; duration
|1B9049:E045| db $A5 ; play note C#4
|1B904A:E046| db $18 ; duration
|1B904B:E047| db $A5 ; play note C#4
|1B904C:E048| db $C8 ; sustain current note
|1B904D:E049| db $48 ; duration
|1B904E:E04A| db $A5 ; play note C#4
|1B904F:E04B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E04C:
|1B9050:E04C| db $18 ; duration
|1B9051:E04D| db $C9 ; rest
|1B9052:E04E| db $30 ; duration
|1B9053:E04F| db $A4 ; play note C4
|1B9054:E050| db $18 ; duration
|1B9055:E051| db $A4 ; play note C4
|1B9056:E052| db $C8 ; sustain current note
|1B9057:E053| db $48 ; duration
|1B9058:E054| db $A4 ; play note C4
|1B9059:E055| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E056:
|1B905A:E056| db $24 ; duration
|1B905B:E057| db $C9 ; rest
|1B905C:E058| db $30, $7D ; duration, params
|1B905E:E05A| db $AD ; play note A4
|1B905F:E05B| db $0C ; duration
|1B9060:E05C| db $AD ; play note A4
|1B9061:E05D| db $24 ; duration
|1B9062:E05E| db $C8 ; sustain current note
|1B9063:E05F| db $3C ; duration
|1B9064:E060| db $AD ; play note A4
|1B9065:E061| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E062:
|1B9066:E062| db $24 ; duration
|1B9067:E063| db $C9 ; rest
|1B9068:E064| db $30 ; duration
|1B9069:E065| db $AC ; play note G#4
|1B906A:E066| db $0C ; duration
|1B906B:E067| db $AC ; play note G#4
|1B906C:E068| db $24 ; duration
|1B906D:E069| db $C8 ; sustain current note
|1B906E:E06A| db $3C ; duration
|1B906F:E06B| db $AC ; play note G#4
|1B9070:E06C| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E06D:
|1B9071:E06D| db $24 ; duration
|1B9072:E06E| db $C9 ; rest
|1B9073:E06F| db $30 ; duration
|1B9074:E070| db $AB ; play note G4
|1B9075:E071| db $0C ; duration
|1B9076:E072| db $AB ; play note G4
|1B9077:E073| db $24 ; duration
|1B9078:E074| db $C8 ; sustain current note
|1B9079:E075| db $3C ; duration
|1B907A:E076| db $AB ; play note G4
|1B907B:E077| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E078:
|1B907C:E078| db $0C, $5F ; duration, params
|1B907E:E07A| db $97 ; play note B2
|1B907F:E07B| db $0C, $5D ; duration, params
|1B9081:E07D| db $97 ; play note B2
|1B9082:E07E| db $97 ; play note B2
|1B9083:E07F| db $97 ; play note B2
|1B9084:E080| db $97 ; play note B2
|1B9085:E081| db $97 ; play note B2
|1B9086:E082| db $97 ; play note B2
|1B9087:E083| db $97 ; play note B2
|1B9088:E084| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E085:
|1B9089:E085| db $0C, $5F ; duration, params
|1B908B:E087| db $96 ; play note A#2
|1B908C:E088| db $0C, $5D ; duration, params
|1B908E:E08A| db $96 ; play note A#2
|1B908F:E08B| db $96 ; play note A#2
|1B9090:E08C| db $96 ; play note A#2
|1B9091:E08D| db $96 ; play note A#2
|1B9092:E08E| db $96 ; play note A#2
|1B9093:E08F| db $96 ; play note A#2
|1B9094:E090| db $96 ; play note A#2
|1B9095:E091| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E092:
|1B9096:E092| db $0C, $5F ; duration, params
|1B9098:E094| db $95 ; play note A2
|1B9099:E095| db $0C, $5D ; duration, params
|1B909B:E097| db $95 ; play note A2
|1B909C:E098| db $95 ; play note A2
|1B909D:E099| db $95 ; play note A2
|1B909E:E09A| db $95 ; play note A2
|1B909F:E09B| db $95 ; play note A2
|1B90A0:E09C| db $95 ; play note A2
|1B90A1:E09D| db $95 ; play note A2
|1B90A2:E09E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E09F:
|1B90A3:E09F| db $0C ; duration
|1B90A4:E0A0| db $C9 ; rest
|1B90A5:E0A1| db $30 ; duration
|1B90A6:E0A2| db $A2 ; play note A#3
|1B90A7:E0A3| db $24 ; duration
|1B90A8:E0A4| db $A2 ; play note A#3
|1B90A9:E0A5| db $0C ; duration
|1B90AA:E0A6| db $C8 ; sustain current note
|1B90AB:E0A7| db $54 ; duration
|1B90AC:E0A8| db $A2 ; play note A#3
|1B90AD:E0A9| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E0AA:
|1B90AE:E0AA| db $24 ; duration
|1B90AF:E0AB| db $C9 ; rest
|1B90B0:E0AC| db $30 ; duration
|1B90B1:E0AD| db $AA ; play note F#4
|1B90B2:E0AE| db $0C ; duration
|1B90B3:E0AF| db $AA ; play note F#4
|1B90B4:E0B0| db $24 ; duration
|1B90B5:E0B1| db $C8 ; sustain current note
|1B90B6:E0B2| db $3C ; duration
|1B90B7:E0B3| db $AA ; play note F#4
|1B90B8:E0B4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E0B5:
|1B90B9:E0B5| db $0C, $5F ; duration, params
|1B90BB:E0B7| db $94 ; play note G#2
|1B90BC:E0B8| db $0C, $5D ; duration, params
|1B90BE:E0BA| db $94 ; play note G#2
|1B90BF:E0BB| db $94 ; play note G#2
|1B90C0:E0BC| db $94 ; play note G#2
|1B90C1:E0BD| db $94 ; play note G#2
|1B90C2:E0BE| db $94 ; play note G#2
|1B90C3:E0BF| db $94 ; play note G#2
|1B90C4:E0C0| db $94 ; play note G#2
|1B90C5:E0C1| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E0C2:
|1B90C6:E0C2| db $0C, $5F ; duration, params
|1B90C8:E0C4| db $9B ; play note D#3
|1B90C9:E0C5| db $0C, $5D ; duration, params
|1B90CB:E0C7| db $9B ; play note D#3
|1B90CC:E0C8| db $9B ; play note D#3
|1B90CD:E0C9| db $9B ; play note D#3
|1B90CE:E0CA| db $9B ; play note D#3
|1B90CF:E0CB| db $9B ; play note D#3
|1B90D0:E0CC| db $9B ; play note D#3
|1B90D1:E0CD| db $9B ; play note D#3
|1B90D2:E0CE| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E0CF:
|1B90D3:E0CF| db $0C, $5F ; duration, params
|1B90D5:E0D1| db $9A ; play note D3
|1B90D6:E0D2| db $0C, $5D ; duration, params
|1B90D8:E0D4| db $9A ; play note D3
|1B90D9:E0D5| db $9A ; play note D3
|1B90DA:E0D6| db $9A ; play note D3
|1B90DB:E0D7| db $9A ; play note D3
|1B90DC:E0D8| db $9A ; play note D3
|1B90DD:E0D9| db $9A ; play note D3
|1B90DE:E0DA| db $9A ; play note D3
|1B90DF:E0DB| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E0DC:
|1B90E0:E0DC| db $9E ; play note F#3
|1B90E1:E0DD| db $9E ; play note F#3
|1B90E2:E0DE| db $9E ; play note F#3
|1B90E3:E0DF| db $9E ; play note F#3
|1B90E4:E0E0| db $9E ; play note F#3
|1B90E5:E0E1| db $9E ; play note F#3
|1B90E6:E0E2| db $9E ; play note F#3
|1B90E7:E0E3| db $9E ; play note F#3
|1B90E8:E0E4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E0E5:
|1B90E9:E0E5| db $3C, $7D ; duration, params
|1B90EB:E0E7| db $A2 ; play note A#3
|1B90EC:E0E8| db $0C ; duration
|1B90ED:E0E9| db $A5 ; play note C#4
|1B90EE:E0EA| db $A9 ; play note F4
|1B90EF:E0EB| db $B1 ; play note C#5
|1B90F0:E0EC| db $48 ; duration
|1B90F1:E0ED| db $B0 ; play note C5
|1B90F2:E0EE| db $18 ; duration
|1B90F3:E0EF| db $AC ; play note G#4
|1B90F4:E0F0| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E0F1:
|1B90F5:E0F1| db $E0, $11 ; set instrument - trumpet
|1B90F7:E0F3| db $ED, $00 ; set channel volume
|1B90F9:E0F5| db $48, $7D ; duration, params
|1B90FB:E0F7| db $B1 ; play note C#5
|1B90FC:E0F8| db $0C ; duration
|1B90FD:E0F9| db $B0 ; play note C5
|1B90FE:E0FA| db $B1 ; play note C#5
|1B90FF:E0FB| db $48 ; duration
|1B9100:E0FC| db $B3 ; play note D#5
|1B9101:E0FD| db $0C ; duration
|1B9102:E0FE| db $B1 ; play note C#5
|1B9103:E0FF| db $B0 ; play note C5
|1B9104:E100| db $60 ; duration
|1B9105:E101| db $A9 ; play note F4
|1B9106:E102| db $48 ; duration
|1B9107:E103| db $C8 ; sustain current note
|1B9108:E104| db $08 ; duration
|1B9109:E105| db $A9 ; play note F4
|1B910A:E106| db $A8 ; play note E4
|1B910B:E107| db $08, $78 ; duration, params
|1B910D:E109| db $A9 ; play note F4
|1B910E:E10A| db $48, $7D ; duration, params
|1B9110:E10C| db $AF ; play note B4
|1B9111:E10D| db $0C ; duration
|1B9112:E10E| db $AE ; play note A#4
|1B9113:E10F| db $AF ; play note B4
|1B9114:E110| db $48 ; duration
|1B9115:E111| db $B1 ; play note C#5
|1B9116:E112| db $0C ; duration
|1B9117:E113| db $AF ; play note B4
|1B9118:E114| db $AE ; play note A#4
|1B9119:E115| db $60 ; duration
|1B911A:E116| db $A7 ; play note D#4
|1B911B:E117| db $48 ; duration
|1B911C:E118| db $C8 ; sustain current note
|1B911D:E119| db $08 ; duration
|1B911E:E11A| db $A7 ; play note D#4
|1B911F:E11B| db $A6 ; play note D4
|1B9120:E11C| db $08, $78 ; duration, params
|1B9122:E11E| db $A7 ; play note D#4
|1B9123:E11F| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E120:
|1B9124:E120| db $0C, $5F ; duration, params
|1B9126:E122| db $99 ; play note C#3
|1B9127:E123| db $0C, $5D ; duration, params
|1B9129:E125| db $99 ; play note C#3
|1B912A:E126| db $99 ; play note C#3
|1B912B:E127| db $99 ; play note C#3
|1B912C:E128| db $99 ; play note C#3
|1B912D:E129| db $99 ; play note C#3
|1B912E:E12A| db $99 ; play note C#3
|1B912F:E12B| db $99 ; play note C#3
|1B9130:E12C| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E12D:
|1B9131:E12D| db $0C, $5F ; duration, params
|1B9133:E12F| db $98 ; play note C3
|1B9134:E130| db $0C, $5D ; duration, params
|1B9136:E132| db $98 ; play note C3
|1B9137:E133| db $98 ; play note C3
|1B9138:E134| db $98 ; play note C3
|1B9139:E135| db $98 ; play note C3
|1B913A:E136| db $98 ; play note C3
|1B913B:E137| db $98 ; play note C3
|1B913C:E138| db $98 ; play note C3
|1B913D:E139| db $00 ; End

;===================================================================================================

Song12_Cave:
|1B913E:E13A| dw Song12_Segment0

Song12_Loop:
|1B9140:E13C| dw Song12_Segment1
|1B9142:E13E| dw Song12_Segment2
|1B9144:E140| dw $00FF, Song12_Loop ; Loop point
|1B9148:E144| dw $0000

Song12_Segment1:
|1B914A:E146| dw Song12_Segment1_Track0
|1B914C:E148| dw Song12_Segment1_Track1
|1B914E:E14A| dw Song12_Segment1_Track2
|1B9150:E14C| dw Song12_Segment1_Track3
|1B9152:E14E| dw Song12_Segment1_Track4
|1B9154:E150| dw Song12_Segment1_Track5
|1B9156:E152| dw Song12_Segment1_Track6
|1B9158:E154| dw $0000

Song12_Segment0:
|1B915A:E156| dw Song12_Segment0_Track0
|1B915C:E158| dw Song12_Segment0_Track1
|1B915E:E15A| dw Song12_Segment0_Track2
|1B9160:E15C| dw Song12_Segment0_Track3
|1B9162:E15E| dw Song12_Segment0_Track4
|1B9164:E160| dw Song12_Segment0_Track5
|1B9166:E162| dw $0000
|1B9168:E164| dw $0000

Song12_Segment2:
|1B916A:E166| dw Song12_Segment2_Track0
|1B916C:E168| dw Song12_Segment2_Track1
|1B916E:E16A| dw Song12_Segment2_Track2
|1B9170:E16C| dw Song12_Segment2_Track3
|1B9172:E16E| dw Song12_Segment2_Track4
|1B9174:E170| dw Song12_Segment2_Track5
|1B9176:E172| dw Song12_Segment2_Track6
|1B9178:E174| dw $0000

;---------------------------------------------------------------------------------------------------

Song12_Segment1_Track0:
|1B917A:E176| db $ED, $C8 ; set channel volume
|1B917C:E178| db $E0, $0A ; set instrument - strings B
|1B917E:E17A| db $E1, $07 ; set panning - leaning right
|1B9180:E17C| db $E3, $14, $19, $1E ; enable vibrato
|1B9184:E180| db $EF : dw Song12_Sub_E3F3 : db $04 ; call segment subroutine
|1B9188:E184| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Segment1_Track1:
|1B9189:E185| db $E0, $0A ; set instrument - strings B
|1B918B:E187| db $ED, $C8 ; set channel volume
|1B918D:E189| db $E1, $05 ; set panning - leaning right
|1B918F:E18B| db $E3, $14, $19, $1E ; enable vibrato
|1B9193:E18F| db $EF : dw Song12_Sub_E400 : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song12_Segment1_Track2:
|1B9197:E193| db $E0, $11 ; set instrument - trumpet
|1B9199:E195| db $ED, $C8 ; set channel volume
|1B919B:E197| db $E1, $09 ; set panning - leaning right
|1B919D:E199| db $E3, $14, $19, $1E ; enable vibrato
|1B91A1:E19D| db $60 ; duration
|1B91A2:E19E| db $C9 ; rest
|1B91A3:E19F| db $C9 ; rest
|1B91A4:E1A0| db $06, $2D ; duration, params
|1B91A6:E1A2| db $AB ; play note G4
|1B91A7:E1A3| db $AB ; play note G4
|1B91A8:E1A4| db $AA ; play note F#4
|1B91A9:E1A5| db $AA ; play note F#4
|1B91AA:E1A6| db $AD ; play note A4
|1B91AB:E1A7| db $AD ; play note A4
|1B91AC:E1A8| db $AC ; play note G#4
|1B91AD:E1A9| db $AC ; play note G#4
|1B91AE:E1AA| db $30 ; duration
|1B91AF:E1AB| db $C9 ; rest
|1B91B0:E1AC| db $60 ; duration
|1B91B1:E1AD| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song12_Segment1_Track3:
|1B91B2:E1AE| db $E0, $11 ; set instrument - trumpet
|1B91B4:E1B0| db $ED, $C8 ; set channel volume
|1B91B6:E1B2| db $E1, $0B ; set panning - leaning left
|1B91B8:E1B4| db $E3, $14, $19, $1E ; enable vibrato
|1B91BC:E1B8| db $60 ; duration
|1B91BD:E1B9| db $C9 ; rest
|1B91BE:E1BA| db $C9 ; rest
|1B91BF:E1BB| db $06, $2D ; duration, params
|1B91C1:E1BD| db $A6 ; play note D4
|1B91C2:E1BE| db $A6 ; play note D4
|1B91C3:E1BF| db $A5 ; play note C#4
|1B91C4:E1C0| db $A5 ; play note C#4
|1B91C5:E1C1| db $A8 ; play note E4
|1B91C6:E1C2| db $A8 ; play note E4
|1B91C7:E1C3| db $A7 ; play note D#4
|1B91C8:E1C4| db $A7 ; play note D#4
|1B91C9:E1C5| db $30 ; duration
|1B91CA:E1C6| db $C9 ; rest
|1B91CB:E1C7| db $60 ; duration
|1B91CC:E1C8| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song12_Segment1_Track4:
|1B91CD:E1C9| db $E0, $02 ; set instrument - timpani
|1B91CF:E1CB| db $ED, $C8 ; set channel volume
|1B91D1:E1CD| db $54, $7D ; duration, params
|1B91D3:E1CF| db $85 ; play note F1
|1B91D4:E1D0| db $0C ; duration
|1B91D5:E1D1| db $85 ; play note F1
|1B91D6:E1D2| db $EF : dw Song12_Sub_E40D : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song12_Segment1_Track5:
|1B91DA:E1D6| db $E0, $10 ; set instrument - splash
|1B91DC:E1D8| db $ED, $C8 ; set channel volume
|1B91DE:E1DA| db $60 ; duration
|1B91DF:E1DB| db $C9 ; rest
|1B91E0:E1DC| db $30 ; duration
|1B91E1:E1DD| db $C9 ; rest
|1B91E2:E1DE| db $30, $7D ; duration, params
|1B91E4:E1E0| db $B7 ; play note G5
|1B91E5:E1E1| db $E0, $0A ; set instrument - strings B
|1B91E7:E1E3| db $ED, $8C ; set channel volume
|1B91E9:E1E5| db $12, $1D ; duration, params
|1B91EB:E1E7| db $BA ; play note A#5
|1B91EC:E1E8| db $03, $7D ; duration, params
|1B91EE:E1EA| db $B8 ; play note G#5
|1B91EF:E1EB| db $B9 ; play note A5
|1B91F0:E1EC| db $12, $1D ; duration, params
|1B91F2:E1EE| db $BA ; play note A#5
|1B91F3:E1EF| db $03, $7D ; duration, params
|1B91F5:E1F1| db $B8 ; play note G#5
|1B91F6:E1F2| db $B9 ; play note A5
|1B91F7:E1F3| db $12, $1D ; duration, params
|1B91F9:E1F5| db $BA ; play note A#5
|1B91FA:E1F6| db $03, $7D ; duration, params
|1B91FC:E1F8| db $B8 ; play note G#5
|1B91FD:E1F9| db $B9 ; play note A5
|1B91FE:E1FA| db $12, $1D ; duration, params
|1B9200:E1FC| db $BA ; play note A#5
|1B9201:E1FD| db $03, $7D ; duration, params
|1B9203:E1FF| db $B7 ; play note G5
|1B9204:E200| db $B8 ; play note G#5
|1B9205:E201| db $12, $1D ; duration, params
|1B9207:E203| db $BA ; play note A#5
|1B9208:E204| db $03, $7D ; duration, params
|1B920A:E206| db $B8 ; play note G#5
|1B920B:E207| db $B9 ; play note A5
|1B920C:E208| db $12, $1D ; duration, params
|1B920E:E20A| db $BA ; play note A#5
|1B920F:E20B| db $03, $7D ; duration, params
|1B9211:E20D| db $B8 ; play note G#5
|1B9212:E20E| db $B9 ; play note A5
|1B9213:E20F| db $12, $1D ; duration, params
|1B9215:E211| db $BA ; play note A#5
|1B9216:E212| db $03, $7D ; duration, params
|1B9218:E214| db $B8 ; play note G#5
|1B9219:E215| db $B9 ; play note A5
|1B921A:E216| db $18, $1D ; duration, params
|1B921C:E218| db $BA ; play note A#5

;---------------------------------------------------------------------------------------------------

Song12_Segment1_Track6:
|1B921D:E219| db $E0, $10 ; set instrument - splash
|1B921F:E21B| db $ED, $C8 ; set channel volume
|1B9221:E21D| db $60 ; duration
|1B9222:E21E| db $C9 ; rest
|1B9223:E21F| db $3C ; duration
|1B9224:E220| db $C9 ; rest
|1B9225:E221| db $24, $7D ; duration, params
|1B9227:E223| db $BB ; play note B5
|1B9228:E224| db $E0, $0A ; set instrument - strings B
|1B922A:E226| db $ED, $8C ; set channel volume
|1B922C:E228| db $12, $1D ; duration, params
|1B922E:E22A| db $B8 ; play note G#5
|1B922F:E22B| db $03, $7D ; duration, params
|1B9231:E22D| db $B6 ; play note F#5
|1B9232:E22E| db $B7 ; play note G5
|1B9233:E22F| db $12, $1D ; duration, params
|1B9235:E231| db $B8 ; play note G#5
|1B9236:E232| db $03, $7D ; duration, params
|1B9238:E234| db $B6 ; play note F#5
|1B9239:E235| db $B7 ; play note G5
|1B923A:E236| db $12, $1D ; duration, params
|1B923C:E238| db $B8 ; play note G#5
|1B923D:E239| db $03, $7D ; duration, params
|1B923F:E23B| db $B6 ; play note F#5
|1B9240:E23C| db $B7 ; play note G5
|1B9241:E23D| db $12, $1D ; duration, params
|1B9243:E23F| db $B8 ; play note G#5
|1B9244:E240| db $03, $7D ; duration, params
|1B9246:E242| db $B6 ; play note F#5
|1B9247:E243| db $B7 ; play note G5
|1B9248:E244| db $12, $1D ; duration, params
|1B924A:E246| db $B8 ; play note G#5
|1B924B:E247| db $03, $7D ; duration, params
|1B924D:E249| db $B6 ; play note F#5
|1B924E:E24A| db $B7 ; play note G5
|1B924F:E24B| db $12, $1D ; duration, params
|1B9251:E24D| db $B8 ; play note G#5
|1B9252:E24E| db $03, $7D ; duration, params
|1B9254:E250| db $B6 ; play note F#5
|1B9255:E251| db $B7 ; play note G5
|1B9256:E252| db $12, $1D ; duration, params
|1B9258:E254| db $B8 ; play note G#5
|1B9259:E255| db $03, $7D ; duration, params
|1B925B:E257| db $B6 ; play note F#5
|1B925C:E258| db $B7 ; play note G5
|1B925D:E259| db $18, $1D ; duration, params
|1B925F:E25B| db $B8 ; play note G#5

;---------------------------------------------------------------------------------------------------

Song12_Segment0_Track0:
|1B9260:E25C| db $FA, $19 ; set base percussion sample
|1B9262:E25E| db $E5, $C8 ; set song volume
|1B9264:E260| db $E7, $19 ; set song tempo
|1B9266:E262| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1B926A:E266| db $F7, $02, $5F, $02 ; configure EDL, EFB, FIR
|1B926E:E26A| db $F8, $14, $1E, $1E ; initiate gradual echo volume change
|1B9272:E26E| db $ED, $C8 ; set channel volume
|1B9274:E270| db $E0, $0A ; set instrument - strings B
|1B9276:E272| db $E1, $07 ; set panning - leaning right
|1B9278:E274| db $E3, $14, $19, $1E ; enable vibrato
|1B927C:E278| db $EF : dw Song12_Sub_E3F3 : db $04 ; call segment subroutine
|1B9280:E27C| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Segment0_Track1:
|1B9281:E27D| db $E0, $0A ; set instrument - strings B
|1B9283:E27F| db $ED, $C8 ; set channel volume
|1B9285:E281| db $E1, $05 ; set panning - leaning right
|1B9287:E283| db $E3, $14, $19, $1E ; enable vibrato
|1B928B:E287| db $EF : dw Song12_Sub_E400 : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song12_Segment0_Track2:
|1B928F:E28B| db $E0, $11 ; set instrument - trumpet
|1B9291:E28D| db $ED, $C8 ; set channel volume
|1B9293:E28F| db $E1, $09 ; set panning - leaning right
|1B9295:E291| db $E3, $14, $19, $1E ; enable vibrato
|1B9299:E295| db $60 ; duration
|1B929A:E296| db $C9 ; rest
|1B929B:E297| db $C9 ; rest
|1B929C:E298| db $06, $2D ; duration, params
|1B929E:E29A| db $AB ; play note G4
|1B929F:E29B| db $AB ; play note G4
|1B92A0:E29C| db $AA ; play note F#4
|1B92A1:E29D| db $AA ; play note F#4
|1B92A2:E29E| db $AD ; play note A4
|1B92A3:E29F| db $AD ; play note A4
|1B92A4:E2A0| db $AC ; play note G#4
|1B92A5:E2A1| db $AC ; play note G#4
|1B92A6:E2A2| db $30 ; duration
|1B92A7:E2A3| db $C9 ; rest
|1B92A8:E2A4| db $60 ; duration
|1B92A9:E2A5| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song12_Segment0_Track3:
|1B92AA:E2A6| db $E0, $11 ; set instrument - trumpet
|1B92AC:E2A8| db $ED, $C8 ; set channel volume
|1B92AE:E2AA| db $E1, $0B ; set panning - leaning left
|1B92B0:E2AC| db $E3, $14, $19, $1E ; enable vibrato
|1B92B4:E2B0| db $60 ; duration
|1B92B5:E2B1| db $C9 ; rest
|1B92B6:E2B2| db $C9 ; rest
|1B92B7:E2B3| db $06, $2D ; duration, params
|1B92B9:E2B5| db $A6 ; play note D4
|1B92BA:E2B6| db $A6 ; play note D4
|1B92BB:E2B7| db $A5 ; play note C#4
|1B92BC:E2B8| db $A5 ; play note C#4
|1B92BD:E2B9| db $A8 ; play note E4
|1B92BE:E2BA| db $A8 ; play note E4
|1B92BF:E2BB| db $A7 ; play note D#4
|1B92C0:E2BC| db $A7 ; play note D#4
|1B92C1:E2BD| db $30 ; duration
|1B92C2:E2BE| db $C9 ; rest
|1B92C3:E2BF| db $60 ; duration
|1B92C4:E2C0| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song12_Segment0_Track4:
|1B92C5:E2C1| db $E0, $02 ; set instrument - timpani
|1B92C7:E2C3| db $ED, $C8 ; set channel volume
|1B92C9:E2C5| db $54 ; duration
|1B92CA:E2C6| db $C9 ; rest
|1B92CB:E2C7| db $0C, $7D ; duration, params
|1B92CD:E2C9| db $85 ; play note F1
|1B92CE:E2CA| db $EF : dw Song12_Sub_E40D : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song12_Segment0_Track5:
|1B92D2:E2CE| db $E0, $10 ; set instrument - splash
|1B92D4:E2D0| db $ED, $C8 ; set channel volume
|1B92D6:E2D2| db $60 ; duration
|1B92D7:E2D3| db $C9 ; rest
|1B92D8:E2D4| db $30 ; duration
|1B92D9:E2D5| db $C9 ; rest
|1B92DA:E2D6| db $30, $7D ; duration, params
|1B92DC:E2D8| db $B7 ; play note G5
|1B92DD:E2D9| db $E0, $0A ; set instrument - strings B
|1B92DF:E2DB| db $ED, $8C ; set channel volume
|1B92E1:E2DD| db $12, $1D ; duration, params
|1B92E3:E2DF| db $BA ; play note A#5
|1B92E4:E2E0| db $03, $7D ; duration, params
|1B92E6:E2E2| db $B8 ; play note G#5
|1B92E7:E2E3| db $B9 ; play note A5
|1B92E8:E2E4| db $12, $1D ; duration, params
|1B92EA:E2E6| db $BA ; play note A#5
|1B92EB:E2E7| db $03, $7D ; duration, params
|1B92ED:E2E9| db $B8 ; play note G#5
|1B92EE:E2EA| db $B9 ; play note A5
|1B92EF:E2EB| db $12, $1D ; duration, params
|1B92F1:E2ED| db $BA ; play note A#5
|1B92F2:E2EE| db $03, $7D ; duration, params
|1B92F4:E2F0| db $B8 ; play note G#5
|1B92F5:E2F1| db $B9 ; play note A5
|1B92F6:E2F2| db $18, $1D ; duration, params
|1B92F8:E2F4| db $BA ; play note A#5
|1B92F9:E2F5| db $12 ; duration
|1B92FA:E2F6| db $BA ; play note A#5
|1B92FB:E2F7| db $03, $7D ; duration, params
|1B92FD:E2F9| db $B8 ; play note G#5
|1B92FE:E2FA| db $B9 ; play note A5
|1B92FF:E2FB| db $12, $1D ; duration, params
|1B9301:E2FD| db $BA ; play note A#5
|1B9302:E2FE| db $03, $7D ; duration, params
|1B9304:E300| db $B8 ; play note G#5
|1B9305:E301| db $B9 ; play note A5
|1B9306:E302| db $12, $1D ; duration, params
|1B9308:E304| db $BA ; play note A#5
|1B9309:E305| db $03, $7D ; duration, params
|1B930B:E307| db $B8 ; play note G#5
|1B930C:E308| db $B9 ; play note A5
|1B930D:E309| db $18, $1D ; duration, params
|1B930F:E30B| db $BA ; play note A#5

;---------------------------------------------------------------------------------------------------

Song12_Segment2_Track0:
|1B9310:E30C| db $ED, $C8 ; set channel volume
|1B9312:E30E| db $E0, $0A ; set instrument - strings B
|1B9314:E310| db $E1, $07 ; set panning - leaning right
|1B9316:E312| db $E3, $14, $19, $1E ; enable vibrato
|1B931A:E316| db $EF : dw Song12_Sub_E412 : db $04 ; call segment subroutine
|1B931E:E31A| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Segment2_Track1:
|1B931F:E31B| db $E0, $0A ; set instrument - strings B
|1B9321:E31D| db $ED, $C8 ; set channel volume
|1B9323:E31F| db $E1, $05 ; set panning - leaning right
|1B9325:E321| db $E3, $14, $19, $1E ; enable vibrato
|1B9329:E325| db $EF : dw Song12_Sub_E41F : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song12_Segment2_Track2:
|1B932D:E329| db $E0, $11 ; set instrument - trumpet
|1B932F:E32B| db $ED, $C8 ; set channel volume
|1B9331:E32D| db $E1, $09 ; set panning - leaning right
|1B9333:E32F| db $E3, $14, $19, $1E ; enable vibrato
|1B9337:E333| db $60 ; duration
|1B9338:E334| db $C9 ; rest
|1B9339:E335| db $C9 ; rest
|1B933A:E336| db $06, $2D ; duration, params
|1B933C:E338| db $AC ; play note G#4
|1B933D:E339| db $AC ; play note G#4
|1B933E:E33A| db $AB ; play note G4
|1B933F:E33B| db $AB ; play note G4
|1B9340:E33C| db $AE ; play note A#4
|1B9341:E33D| db $AE ; play note A#4
|1B9342:E33E| db $AD ; play note A4
|1B9343:E33F| db $AD ; play note A4
|1B9344:E340| db $30 ; duration
|1B9345:E341| db $C9 ; rest
|1B9346:E342| db $60 ; duration
|1B9347:E343| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song12_Segment2_Track3:
|1B9348:E344| db $E0, $11 ; set instrument - trumpet
|1B934A:E346| db $ED, $C8 ; set channel volume
|1B934C:E348| db $E1, $0B ; set panning - leaning left
|1B934E:E34A| db $E3, $14, $19, $1E ; enable vibrato
|1B9352:E34E| db $60 ; duration
|1B9353:E34F| db $C9 ; rest
|1B9354:E350| db $C9 ; rest
|1B9355:E351| db $06, $2D ; duration, params
|1B9357:E353| db $A7 ; play note D#4
|1B9358:E354| db $A7 ; play note D#4
|1B9359:E355| db $A6 ; play note D4
|1B935A:E356| db $A6 ; play note D4
|1B935B:E357| db $A9 ; play note F4
|1B935C:E358| db $A9 ; play note F4
|1B935D:E359| db $A8 ; play note E4
|1B935E:E35A| db $A8 ; play note E4
|1B935F:E35B| db $30 ; duration
|1B9360:E35C| db $C9 ; rest
|1B9361:E35D| db $60 ; duration
|1B9362:E35E| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song12_Segment2_Track4:
|1B9363:E35F| db $E0, $02 ; set instrument - timpani
|1B9365:E361| db $ED, $C8 ; set channel volume
|1B9367:E363| db $54, $7D ; duration, params
|1B9369:E365| db $86 ; play note F#1
|1B936A:E366| db $0C ; duration
|1B936B:E367| db $86 ; play note F#1
|1B936C:E368| db $EF : dw Song12_Sub_E42C : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song12_Segment2_Track5:
|1B9370:E36C| db $E0, $10 ; set instrument - splash
|1B9372:E36E| db $ED, $C8 ; set channel volume
|1B9374:E370| db $60 ; duration
|1B9375:E371| db $C9 ; rest
|1B9376:E372| db $30 ; duration
|1B9377:E373| db $C9 ; rest
|1B9378:E374| db $30, $7D ; duration, params
|1B937A:E376| db $B8 ; play note G#5
|1B937B:E377| db $E0, $0A ; set instrument - strings B
|1B937D:E379| db $ED, $8C ; set channel volume
|1B937F:E37B| db $12, $1D ; duration, params
|1B9381:E37D| db $BB ; play note B5
|1B9382:E37E| db $03, $7D ; duration, params
|1B9384:E380| db $B9 ; play note A5
|1B9385:E381| db $BA ; play note A#5
|1B9386:E382| db $12, $1D ; duration, params
|1B9388:E384| db $BB ; play note B5
|1B9389:E385| db $03, $7D ; duration, params
|1B938B:E387| db $B9 ; play note A5
|1B938C:E388| db $BA ; play note A#5
|1B938D:E389| db $12, $1D ; duration, params
|1B938F:E38B| db $BB ; play note B5
|1B9390:E38C| db $03, $7D ; duration, params
|1B9392:E38E| db $B9 ; play note A5
|1B9393:E38F| db $BA ; play note A#5
|1B9394:E390| db $12, $1D ; duration, params
|1B9396:E392| db $BB ; play note B5
|1B9397:E393| db $03, $7D ; duration, params
|1B9399:E395| db $B8 ; play note G#5
|1B939A:E396| db $B9 ; play note A5
|1B939B:E397| db $12, $1D ; duration, params
|1B939D:E399| db $BB ; play note B5
|1B939E:E39A| db $03, $7D ; duration, params
|1B93A0:E39C| db $B9 ; play note A5
|1B93A1:E39D| db $BA ; play note A#5
|1B93A2:E39E| db $12, $1D ; duration, params
|1B93A4:E3A0| db $BB ; play note B5
|1B93A5:E3A1| db $03, $7D ; duration, params
|1B93A7:E3A3| db $B9 ; play note A5
|1B93A8:E3A4| db $BA ; play note A#5
|1B93A9:E3A5| db $12, $1D ; duration, params
|1B93AB:E3A7| db $BB ; play note B5
|1B93AC:E3A8| db $03, $7D ; duration, params
|1B93AE:E3AA| db $B9 ; play note A5
|1B93AF:E3AB| db $BA ; play note A#5
|1B93B0:E3AC| db $18, $1D ; duration, params
|1B93B2:E3AE| db $BB ; play note B5

;---------------------------------------------------------------------------------------------------

Song12_Segment2_Track6:
|1B93B3:E3AF| db $E0, $10 ; set instrument - splash
|1B93B5:E3B1| db $ED, $C8 ; set channel volume
|1B93B7:E3B3| db $60 ; duration
|1B93B8:E3B4| db $C9 ; rest
|1B93B9:E3B5| db $3C ; duration
|1B93BA:E3B6| db $C9 ; rest
|1B93BB:E3B7| db $24, $7D ; duration, params
|1B93BD:E3B9| db $BC ; play note C6
|1B93BE:E3BA| db $E0, $0A ; set instrument - strings B
|1B93C0:E3BC| db $ED, $8C ; set channel volume
|1B93C2:E3BE| db $12, $1D ; duration, params
|1B93C4:E3C0| db $B9 ; play note A5
|1B93C5:E3C1| db $03, $7D ; duration, params
|1B93C7:E3C3| db $B7 ; play note G5
|1B93C8:E3C4| db $B8 ; play note G#5
|1B93C9:E3C5| db $12, $1D ; duration, params
|1B93CB:E3C7| db $B9 ; play note A5
|1B93CC:E3C8| db $03, $7D ; duration, params
|1B93CE:E3CA| db $B7 ; play note G5
|1B93CF:E3CB| db $B8 ; play note G#5
|1B93D0:E3CC| db $12, $1D ; duration, params
|1B93D2:E3CE| db $B9 ; play note A5
|1B93D3:E3CF| db $03, $7D ; duration, params
|1B93D5:E3D1| db $B7 ; play note G5
|1B93D6:E3D2| db $B8 ; play note G#5
|1B93D7:E3D3| db $12, $1D ; duration, params
|1B93D9:E3D5| db $B9 ; play note A5
|1B93DA:E3D6| db $03, $7D ; duration, params
|1B93DC:E3D8| db $B7 ; play note G5
|1B93DD:E3D9| db $B8 ; play note G#5
|1B93DE:E3DA| db $12, $1D ; duration, params
|1B93E0:E3DC| db $B9 ; play note A5
|1B93E1:E3DD| db $03, $7D ; duration, params
|1B93E3:E3DF| db $B7 ; play note G5
|1B93E4:E3E0| db $B8 ; play note G#5
|1B93E5:E3E1| db $12, $1D ; duration, params
|1B93E7:E3E3| db $B9 ; play note A5
|1B93E8:E3E4| db $03, $7D ; duration, params
|1B93EA:E3E6| db $B7 ; play note G5
|1B93EB:E3E7| db $B8 ; play note G#5
|1B93EC:E3E8| db $12, $1D ; duration, params
|1B93EE:E3EA| db $B9 ; play note A5
|1B93EF:E3EB| db $03, $7D ; duration, params
|1B93F1:E3ED| db $B7 ; play note G5
|1B93F2:E3EE| db $B8 ; play note G#5
|1B93F3:E3EF| db $18, $1D ; duration, params
|1B93F5:E3F1| db $B9 ; play note A5
|1B93F6:E3F2| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Sub_E3F3:
|1B93F7:E3F3| db $18, $1D ; duration, params
|1B93F9:E3F5| db $98 ; play note C3
|1B93FA:E3F6| db $18, $19 ; duration, params
|1B93FC:E3F8| db $98 ; play note C3
|1B93FD:E3F9| db $18, $18 ; duration, params
|1B93FF:E3FB| db $98 ; play note C3
|1B9400:E3FC| db $18, $17 ; duration, params
|1B9402:E3FE| db $98 ; play note C3
|1B9403:E3FF| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Sub_E400:
|1B9404:E400| db $18, $1D ; duration, params
|1B9406:E402| db $91 ; play note F2
|1B9407:E403| db $18, $19 ; duration, params
|1B9409:E405| db $91 ; play note F2
|1B940A:E406| db $18, $18 ; duration, params
|1B940C:E408| db $91 ; play note F2
|1B940D:E409| db $18, $17 ; duration, params
|1B940F:E40B| db $91 ; play note F2
|1B9410:E40C| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Sub_E40D:
|1B9411:E40D| db $54 ; duration
|1B9412:E40E| db $85 ; play note F1
|1B9413:E40F| db $0C ; duration
|1B9414:E410| db $85 ; play note F1
|1B9415:E411| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Sub_E412:
|1B9416:E412| db $18, $1D ; duration, params
|1B9418:E414| db $99 ; play note C#3
|1B9419:E415| db $18, $19 ; duration, params
|1B941B:E417| db $99 ; play note C#3
|1B941C:E418| db $18, $18 ; duration, params
|1B941E:E41A| db $99 ; play note C#3
|1B941F:E41B| db $18, $17 ; duration, params
|1B9421:E41D| db $99 ; play note C#3
|1B9422:E41E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Sub_E41F:
|1B9423:E41F| db $18, $1D ; duration, params
|1B9425:E421| db $92 ; play note F#2
|1B9426:E422| db $18, $19 ; duration, params
|1B9428:E424| db $92 ; play note F#2
|1B9429:E425| db $18, $18 ; duration, params
|1B942B:E427| db $92 ; play note F#2
|1B942C:E428| db $18, $17 ; duration, params
|1B942E:E42A| db $92 ; play note F#2
|1B942F:E42B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Sub_E42C:
|1B9430:E42C| db $54 ; duration
|1B9431:E42D| db $86 ; play note F#1
|1B9432:E42E| db $0C ; duration
|1B9433:E42F| db $86 ; play note F#1
|1B9434:E430| db $00 ; End

;===================================================================================================

Song13_Fanfare:
|1B9435:E431| dw Song13_Segment0
|1B9437:E433| dw $0000 ; Song end

Song13_Segment0:
|1B9439:E435| dw Song13_Segment0_Track0
|1B943B:E437| dw Song13_Segment0_Track1
|1B943D:E439| dw Song13_Segment0_Track2
|1B943F:E43B| dw Song13_Segment0_Track3
|1B9441:E43D| dw Song13_Segment0_Track4
|1B9443:E43F| dw Song13_Segment0_Track5
|1B9445:E441| dw Song13_Segment0_Track6
|1B9447:E443| dw Song13_Segment0_Track7

;---------------------------------------------------------------------------------------------------

Song13_Segment0_Track0:
|1B9449:E445| db $FA, $15 ; set base percussion sample
|1B944B:E447| db $E5, $B4 ; set song volume
|1B944D:E449| db $E7, $1F ; set song tempo
|1B944F:E44B| db $F5, $FF, $28, $28 ; configure EON, EVOLL, EVOLR
|1B9453:E44F| db $F7, $02, $28, $02 ; configure EDL, EFB, FIR
|1B9457:E453| db $E0, $0B ; set instrument - trombone
|1B9459:E455| db $E3, $1E, $28, $15 ; enable vibrato
|1B945D:E459| db $ED, $F0 ; set channel volume
|1B945F:E45B| db $0C ; duration
|1B9460:E45C| db $C9 ; rest
|1B9461:E45D| db $06, $3D ; duration, params
|1B9463:E45F| db $B2 ; play note D5
|1B9464:E460| db $B2 ; play note D5
|1B9465:E461| db $0C, $5D ; duration, params
|1B9467:E463| db $B2 ; play note D5
|1B9468:E464| db $06, $3D ; duration, params
|1B946A:E466| db $B0 ; play note C5
|1B946B:E467| db $B0 ; play note C5
|1B946C:E468| db $0C, $5D ; duration, params
|1B946E:E46A| db $B0 ; play note C5
|1B946F:E46B| db $06, $3D ; duration, params
|1B9471:E46D| db $AE ; play note A#4
|1B9472:E46E| db $AE ; play note A#4
|1B9473:E46F| db $0C ; duration
|1B9474:E470| db $AE ; play note A#4
|1B9475:E471| db $0C, $5D ; duration, params
|1B9477:E473| db $B0 ; play note C5
|1B9478:E474| db $EF : dw Song13_Sub_E6DC : db $01 ; call segment subroutine
|1B947C:E478| db $48 ; duration
|1B947D:E479| db $C8 ; sustain current note
|1B947E:E47A| db $E8, $48, $19 ; initiate gradual tempo change
|1B9481:E47D| db $0C ; duration
|1B9482:E47E| db $C9 ; rest
|1B9483:E47F| db $06, $3D ; duration, params
|1B9485:E481| db $B8 ; play note G#5
|1B9486:E482| db $B8 ; play note G#5
|1B9487:E483| db $0C, $5D ; duration, params
|1B9489:E485| db $B8 ; play note G#5
|1B948A:E486| db $06, $3D ; duration, params
|1B948C:E488| db $B6 ; play note F#5
|1B948D:E489| db $B6 ; play note F#5
|1B948E:E48A| db $0C, $5D ; duration, params
|1B9490:E48C| db $B6 ; play note F#5
|1B9491:E48D| db $06, $3D ; duration, params
|1B9493:E48F| db $B4 ; play note E5
|1B9494:E490| db $B4 ; play note E5
|1B9495:E491| db $0C ; duration
|1B9496:E492| db $B4 ; play note E5
|1B9497:E493| db $10, $5D ; duration, params
|1B9499:E495| db $B8 ; play note G#5
|1B949A:E496| db $60, $6D ; duration, params
|1B949C:E498| db $BA ; play note A#5
|1B949D:E499| db $18 ; duration
|1B949E:E49A| db $C9 ; rest
|1B949F:E49B| db $C9 ; rest
|1B94A0:E49C| db $08 ; duration
|1B94A1:E49D| db $C9 ; rest
|1B94A2:E49E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song13_Segment0_Track1:
|1B94A3:E49F| db $E0, $11 ; set instrument - trumpet
|1B94A5:E4A1| db $E3, $1E, $1E, $1E ; enable vibrato
|1B94A9:E4A5| db $ED, $FA ; set channel volume
|1B94AB:E4A7| db $60, $6D ; duration, params
|1B94AD:E4A9| db $91 ; play note F2
|1B94AE:E4AA| db $0C ; duration
|1B94AF:E4AB| db $C9 ; rest
|1B94B0:E4AC| db $06, $3D ; duration, params
|1B94B2:E4AE| db $91 ; play note F2
|1B94B3:E4AF| db $91 ; play note F2
|1B94B4:E4B0| db $0C, $6D ; duration, params
|1B94B6:E4B2| db $91 ; play note F2
|1B94B7:E4B3| db $91 ; play note F2
|1B94B8:E4B4| db $08, $5D ; duration, params
|1B94BA:E4B6| db $91 ; play note F2
|1B94BB:E4B7| db $92 ; play note F#2
|1B94BC:E4B8| db $93 ; play note G2
|1B94BD:E4B9| db $60, $6D ; duration, params
|1B94BF:E4BB| db $94 ; play note G#2
|1B94C0:E4BC| db $0C ; duration
|1B94C1:E4BD| db $C9 ; rest
|1B94C2:E4BE| db $06, $3D ; duration, params
|1B94C4:E4C0| db $94 ; play note G#2
|1B94C5:E4C1| db $94 ; play note G#2
|1B94C6:E4C2| db $0C, $6D ; duration, params
|1B94C8:E4C4| db $94 ; play note G#2
|1B94C9:E4C5| db $94 ; play note G#2
|1B94CA:E4C6| db $08, $5D ; duration, params
|1B94CC:E4C8| db $94 ; play note G#2
|1B94CD:E4C9| db $95 ; play note A2
|1B94CE:E4CA| db $96 ; play note A#2
|1B94CF:E4CB| db $64, $6D ; duration, params
|1B94D1:E4CD| db $97 ; play note B2
|1B94D2:E4CE| db $60 ; duration
|1B94D3:E4CF| db $8A ; play note A#1
|1B94D4:E4D0| db $18 ; duration
|1B94D5:E4D1| db $C9 ; rest
|1B94D6:E4D2| db $C9 ; rest
|1B94D7:E4D3| db $08 ; duration
|1B94D8:E4D4| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song13_Segment0_Track2:
|1B94D9:E4D5| db $E0, $0B ; set instrument - trombone
|1B94DB:E4D7| db $E3, $22, $30, $0A ; enable vibrato
|1B94DF:E4DB| db $ED, $DC ; set channel volume
|1B94E1:E4DD| db $F4, $0A ; set channel fine tuning
|1B94E3:E4DF| db $E1, $08 ; set panning - leaning right
|1B94E5:E4E1| db $0C ; duration
|1B94E6:E4E2| db $C9 ; rest
|1B94E7:E4E3| db $06, $3D ; duration, params
|1B94E9:E4E5| db $AE ; play note A#4
|1B94EA:E4E6| db $AE ; play note A#4
|1B94EB:E4E7| db $0C, $5D ; duration, params
|1B94ED:E4E9| db $AE ; play note A#4
|1B94EE:E4EA| db $06, $3D ; duration, params
|1B94F0:E4EC| db $AD ; play note A4
|1B94F1:E4ED| db $AD ; play note A4
|1B94F2:E4EE| db $0C, $5D ; duration, params
|1B94F4:E4F0| db $AD ; play note A4
|1B94F5:E4F1| db $06, $3D ; duration, params
|1B94F7:E4F3| db $AB ; play note G4
|1B94F8:E4F4| db $AB ; play note G4
|1B94F9:E4F5| db $0C ; duration
|1B94FA:E4F6| db $AB ; play note G4
|1B94FB:E4F7| db $0C, $5D ; duration, params
|1B94FD:E4F9| db $AD ; play note A4
|1B94FE:E4FA| db $48, $48 ; duration, params
|1B9500:E4FC| db $C8 ; sustain current note
|1B9501:E4FD| db $0C ; duration
|1B9502:E4FE| db $C9 ; rest
|1B9503:E4FF| db $06, $3D ; duration, params
|1B9505:E501| db $B1 ; play note C#5
|1B9506:E502| db $B1 ; play note C#5
|1B9507:E503| db $0C, $5D ; duration, params
|1B9509:E505| db $B1 ; play note C#5
|1B950A:E506| db $06, $3D ; duration, params
|1B950C:E508| db $B0 ; play note C5
|1B950D:E509| db $B0 ; play note C5
|1B950E:E50A| db $0C, $5D ; duration, params
|1B9510:E50C| db $B0 ; play note C5
|1B9511:E50D| db $06, $3D ; duration, params
|1B9513:E50F| db $AE ; play note A#4
|1B9514:E510| db $AE ; play note A#4
|1B9515:E511| db $0C ; duration
|1B9516:E512| db $AE ; play note A#4
|1B9517:E513| db $0C, $5D ; duration, params
|1B9519:E515| db $B0 ; play note C5
|1B951A:E516| db $48 ; duration
|1B951B:E517| db $C8 ; sustain current note
|1B951C:E518| db $0C ; duration
|1B951D:E519| db $C9 ; rest
|1B951E:E51A| db $06, $3D ; duration, params
|1B9520:E51C| db $B4 ; play note E5
|1B9521:E51D| db $B4 ; play note E5
|1B9522:E51E| db $0C, $5D ; duration, params
|1B9524:E520| db $B4 ; play note E5
|1B9525:E521| db $06, $3D ; duration, params
|1B9527:E523| db $B3 ; play note D#5
|1B9528:E524| db $B3 ; play note D#5
|1B9529:E525| db $0C, $5D ; duration, params
|1B952B:E527| db $B3 ; play note D#5
|1B952C:E528| db $06, $3D ; duration, params
|1B952E:E52A| db $B1 ; play note C#5
|1B952F:E52B| db $B1 ; play note C#5
|1B9530:E52C| db $0C ; duration
|1B9531:E52D| db $B1 ; play note C#5
|1B9532:E52E| db $10, $5D ; duration, params
|1B9534:E530| db $B4 ; play note E5
|1B9535:E531| db $60, $6D ; duration, params
|1B9537:E533| db $B7 ; play note G5
|1B9538:E534| db $18 ; duration
|1B9539:E535| db $C9 ; rest
|1B953A:E536| db $C9 ; rest
|1B953B:E537| db $08 ; duration
|1B953C:E538| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song13_Segment0_Track3:
|1B953D:E539| db $E0, $0B ; set instrument - trombone
|1B953F:E53B| db $E3, $14, $2C, $0A ; enable vibrato
|1B9543:E53F| db $ED, $DC ; set channel volume
|1B9545:E541| db $F4, $0F ; set channel fine tuning
|1B9547:E543| db $E1, $0C ; set panning - leaning left
|1B9549:E545| db $0C ; duration
|1B954A:E546| db $C9 ; rest
|1B954B:E547| db $06, $3D ; duration, params
|1B954D:E549| db $AB ; play note G4
|1B954E:E54A| db $AB ; play note G4
|1B954F:E54B| db $0C, $5D ; duration, params
|1B9551:E54D| db $AB ; play note G4
|1B9552:E54E| db $06, $3D ; duration, params
|1B9554:E550| db $A9 ; play note F4
|1B9555:E551| db $A9 ; play note F4
|1B9556:E552| db $0C, $5D ; duration, params
|1B9558:E554| db $A9 ; play note F4
|1B9559:E555| db $06, $3D ; duration, params
|1B955B:E557| db $A7 ; play note D#4
|1B955C:E558| db $A7 ; play note D#4
|1B955D:E559| db $0C ; duration
|1B955E:E55A| db $A7 ; play note D#4
|1B955F:E55B| db $0C, $5D ; duration, params
|1B9561:E55D| db $A9 ; play note F4
|1B9562:E55E| db $48, $48 ; duration, params
|1B9564:E560| db $C8 ; sustain current note
|1B9565:E561| db $0C ; duration
|1B9566:E562| db $C9 ; rest
|1B9567:E563| db $06, $3D ; duration, params
|1B9569:E565| db $AE ; play note A#4
|1B956A:E566| db $AE ; play note A#4
|1B956B:E567| db $0C, $5D ; duration, params
|1B956D:E569| db $AE ; play note A#4
|1B956E:E56A| db $06, $3D ; duration, params
|1B9570:E56C| db $AC ; play note G#4
|1B9571:E56D| db $AC ; play note G#4
|1B9572:E56E| db $0C, $5D ; duration, params
|1B9574:E570| db $AC ; play note G#4
|1B9575:E571| db $06, $3D ; duration, params
|1B9577:E573| db $AA ; play note F#4
|1B9578:E574| db $AA ; play note F#4
|1B9579:E575| db $0C ; duration
|1B957A:E576| db $AA ; play note F#4
|1B957B:E577| db $0C, $5D ; duration, params
|1B957D:E579| db $AC ; play note G#4
|1B957E:E57A| db $48 ; duration
|1B957F:E57B| db $C8 ; sustain current note
|1B9580:E57C| db $0C ; duration
|1B9581:E57D| db $C9 ; rest
|1B9582:E57E| db $06, $3D ; duration, params
|1B9584:E580| db $B1 ; play note C#5
|1B9585:E581| db $B1 ; play note C#5
|1B9586:E582| db $0C, $5D ; duration, params
|1B9588:E584| db $B1 ; play note C#5
|1B9589:E585| db $06, $3D ; duration, params
|1B958B:E587| db $AF ; play note B4
|1B958C:E588| db $AF ; play note B4
|1B958D:E589| db $0C, $5D ; duration, params
|1B958F:E58B| db $AF ; play note B4
|1B9590:E58C| db $06, $3D ; duration, params
|1B9592:E58E| db $AD ; play note A4
|1B9593:E58F| db $AD ; play note A4
|1B9594:E590| db $0C ; duration
|1B9595:E591| db $AD ; play note A4
|1B9596:E592| db $10, $5D ; duration, params
|1B9598:E594| db $B3 ; play note D#5
|1B9599:E595| db $60, $6D ; duration, params
|1B959B:E597| db $B3 ; play note D#5
|1B959C:E598| db $18 ; duration
|1B959D:E599| db $C9 ; rest
|1B959E:E59A| db $C9 ; rest
|1B959F:E59B| db $08 ; duration
|1B95A0:E59C| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song13_Segment0_Track4:
|1B95A1:E59D| db $E0, $0B ; set instrument - trombone
|1B95A3:E59F| db $E3, $19, $32, $0E ; enable vibrato
|1B95A7:E5A3| db $ED, $DC ; set channel volume
|1B95A9:E5A5| db $F4, $05 ; set channel fine tuning
|1B95AB:E5A7| db $E1, $0E ; set panning - leaning left
|1B95AD:E5A9| db $0C ; duration
|1B95AE:E5AA| db $C9 ; rest
|1B95AF:E5AB| db $06, $3D ; duration, params
|1B95B1:E5AD| db $A7 ; play note D#4
|1B95B2:E5AE| db $A7 ; play note D#4
|1B95B3:E5AF| db $0C, $5D ; duration, params
|1B95B5:E5B1| db $A7 ; play note D#4
|1B95B6:E5B2| db $06, $3D ; duration, params
|1B95B8:E5B4| db $A6 ; play note D4
|1B95B9:E5B5| db $A6 ; play note D4
|1B95BA:E5B6| db $0C, $5D ; duration, params
|1B95BC:E5B8| db $A6 ; play note D4
|1B95BD:E5B9| db $06, $3D ; duration, params
|1B95BF:E5BB| db $A4 ; play note C4
|1B95C0:E5BC| db $A4 ; play note C4
|1B95C1:E5BD| db $0C ; duration
|1B95C2:E5BE| db $A4 ; play note C4
|1B95C3:E5BF| db $0C, $5D ; duration, params
|1B95C5:E5C1| db $A6 ; play note D4
|1B95C6:E5C2| db $48, $48 ; duration, params
|1B95C8:E5C4| db $C8 ; sustain current note
|1B95C9:E5C5| db $0C ; duration
|1B95CA:E5C6| db $C9 ; rest
|1B95CB:E5C7| db $06, $3D ; duration, params
|1B95CD:E5C9| db $AA ; play note F#4
|1B95CE:E5CA| db $AA ; play note F#4
|1B95CF:E5CB| db $0C, $5D ; duration, params
|1B95D1:E5CD| db $AA ; play note F#4
|1B95D2:E5CE| db $06, $3D ; duration, params
|1B95D4:E5D0| db $A9 ; play note F4
|1B95D5:E5D1| db $A9 ; play note F4
|1B95D6:E5D2| db $0C, $5D ; duration, params
|1B95D8:E5D4| db $A9 ; play note F4
|1B95D9:E5D5| db $06, $3D ; duration, params
|1B95DB:E5D7| db $A7 ; play note D#4
|1B95DC:E5D8| db $A7 ; play note D#4
|1B95DD:E5D9| db $0C ; duration
|1B95DE:E5DA| db $A7 ; play note D#4
|1B95DF:E5DB| db $0C, $5D ; duration, params
|1B95E1:E5DD| db $A9 ; play note F4
|1B95E2:E5DE| db $48 ; duration
|1B95E3:E5DF| db $C8 ; sustain current note
|1B95E4:E5E0| db $0C ; duration
|1B95E5:E5E1| db $C9 ; rest
|1B95E6:E5E2| db $06, $3D ; duration, params
|1B95E8:E5E4| db $AD ; play note A4
|1B95E9:E5E5| db $AD ; play note A4
|1B95EA:E5E6| db $0C, $5D ; duration, params
|1B95EC:E5E8| db $AD ; play note A4
|1B95ED:E5E9| db $06, $3D ; duration, params
|1B95EF:E5EB| db $AC ; play note G#4
|1B95F0:E5EC| db $AC ; play note G#4
|1B95F1:E5ED| db $0C, $5D ; duration, params
|1B95F3:E5EF| db $AC ; play note G#4
|1B95F4:E5F0| db $06, $3D ; duration, params
|1B95F6:E5F2| db $AA ; play note F#4
|1B95F7:E5F3| db $AA ; play note F#4
|1B95F8:E5F4| db $0C ; duration
|1B95F9:E5F5| db $AA ; play note F#4
|1B95FA:E5F6| db $10, $5D ; duration, params
|1B95FC:E5F8| db $AF ; play note B4
|1B95FD:E5F9| db $60, $6D ; duration, params
|1B95FF:E5FB| db $AE ; play note A#4
|1B9600:E5FC| db $18 ; duration
|1B9601:E5FD| db $C9 ; rest
|1B9602:E5FE| db $C9 ; rest
|1B9603:E5FF| db $08 ; duration
|1B9604:E600| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song13_Segment0_Track5:
|1B9605:E601| db $E0, $0B ; set instrument - trombone
|1B9607:E603| db $E3, $1B, $1E, $1C ; enable vibrato
|1B960B:E607| db $ED, $A0 ; set channel volume
|1B960D:E609| db $E1, $06 ; set panning - leaning right
|1B960F:E60B| db $14 ; duration
|1B9610:E60C| db $C9 ; rest
|1B9611:E60D| db $06, $3D ; duration, params
|1B9613:E60F| db $B2 ; play note D5
|1B9614:E610| db $B2 ; play note D5
|1B9615:E611| db $0C, $5D ; duration, params
|1B9617:E613| db $B2 ; play note D5
|1B9618:E614| db $06, $3D ; duration, params
|1B961A:E616| db $B0 ; play note C5
|1B961B:E617| db $B0 ; play note C5
|1B961C:E618| db $0C, $5D ; duration, params
|1B961E:E61A| db $B0 ; play note C5
|1B961F:E61B| db $06, $3D ; duration, params
|1B9621:E61D| db $AE ; play note A#4
|1B9622:E61E| db $AE ; play note A#4
|1B9623:E61F| db $0C ; duration
|1B9624:E620| db $AE ; play note A#4
|1B9625:E621| db $0C, $5D ; duration, params
|1B9627:E623| db $B0 ; play note C5
|1B9628:E624| db $EF : dw Song13_Sub_E6DC : db $01 ; call segment subroutine
|1B962C:E628| db $48 ; duration
|1B962D:E629| db $C8 ; sustain current note
|1B962E:E62A| db $0C ; duration
|1B962F:E62B| db $C9 ; rest
|1B9630:E62C| db $06, $3D ; duration, params
|1B9632:E62E| db $B8 ; play note G#5
|1B9633:E62F| db $B8 ; play note G#5
|1B9634:E630| db $0C, $5D ; duration, params
|1B9636:E632| db $B8 ; play note G#5
|1B9637:E633| db $06, $3D ; duration, params
|1B9639:E635| db $B6 ; play note F#5
|1B963A:E636| db $B6 ; play note F#5
|1B963B:E637| db $0C, $5D ; duration, params
|1B963D:E639| db $B6 ; play note F#5
|1B963E:E63A| db $06, $3D ; duration, params
|1B9640:E63C| db $B4 ; play note E5
|1B9641:E63D| db $B4 ; play note E5
|1B9642:E63E| db $0C ; duration
|1B9643:E63F| db $B4 ; play note E5
|1B9644:E640| db $10, $5D ; duration, params
|1B9646:E642| db $B8 ; play note G#5
|1B9647:E643| db $5C, $6D ; duration, params
|1B9649:E645| db $BA ; play note A#5
|1B964A:E646| db $18 ; duration
|1B964B:E647| db $C9 ; rest
|1B964C:E648| db $C9 ; rest
|1B964D:E649| db $04 ; duration
|1B964E:E64A| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song13_Segment0_Track6:
|1B964F:E64B| db $E0, $0F ; set instrument - harp
|1B9651:E64D| db $ED, $B4 ; set channel volume
|1B9653:E64F| db $E1, $14 ; set panning - leaning left
|1B9655:E651| db $54 ; duration
|1B9656:E652| db $C9 ; rest
|1B9657:E653| db $0C, $4D ; duration, params
|1B9659:E655| db $A1 ; play note A3
|1B965A:E656| db $E2, $60, $00 ; initiate gradual panning change
|1B965D:E659| db $A6 ; play note D4
|1B965E:E65A| db $A6 ; play note D4
|1B965F:E65B| db $AD ; play note A4
|1B9660:E65C| db $B2 ; play note D5
|1B9661:E65D| db $0C, $3D ; duration, params
|1B9663:E65F| db $B0 ; play note C5
|1B9664:E660| db $B5 ; play note F5
|1B9665:E661| db $54, $4D ; duration, params
|1B9667:E663| db $BC ; play note C6
|1B9668:E664| db $E1, $14 ; set panning - leaning left
|1B966A:E666| db $E2, $60, $00 ; initiate gradual panning change
|1B966D:E669| db $0C ; duration
|1B966E:E66A| db $A4 ; play note C4
|1B966F:E66B| db $A9 ; play note F4
|1B9670:E66C| db $A9 ; play note F4
|1B9671:E66D| db $B0 ; play note C5
|1B9672:E66E| db $B5 ; play note F5
|1B9673:E66F| db $0C, $3D ; duration, params
|1B9675:E671| db $B3 ; play note D#5
|1B9676:E672| db $B8 ; play note G#5
|1B9677:E673| db $64, $4D ; duration, params
|1B9679:E675| db $BF ; play note D#6
|1B967A:E676| db $E0, $02 ; set instrument - timpani
|1B967C:E678| db $ED, $F0 ; set channel volume
|1B967E:E67A| db $E1, $0A ; set panning - balanced
|1B9680:E67C| db $0C, $79 ; duration, params
|1B9682:E67E| db $8F ; play note D#2
|1B9683:E67F| db $0C, $7A ; duration, params
|1B9685:E681| db $8F ; play note D#2
|1B9686:E682| db $0C, $7B ; duration, params
|1B9688:E684| db $8F ; play note D#2
|1B9689:E685| db $0C, $7C ; duration, params
|1B968B:E687| db $8F ; play note D#2
|1B968C:E688| db $0C, $7D ; duration, params
|1B968E:E68A| db $8F ; play note D#2
|1B968F:E68B| db $0C, $7E ; duration, params
|1B9691:E68D| db $8F ; play note D#2
|1B9692:E68E| db $50, $7F ; duration, params
|1B9694:E690| db $8F ; play note D#2

;---------------------------------------------------------------------------------------------------

Song13_Segment0_Track7:
|1B9695:E691| db $E0, $0F ; set instrument - harp
|1B9697:E693| db $ED, $B4 ; set channel volume
|1B9699:E695| db $E1, $14 ; set panning - leaning left
|1B969B:E697| db $5A ; duration
|1B969C:E698| db $C9 ; rest
|1B969D:E699| db $0C, $4D ; duration, params
|1B969F:E69B| db $A4 ; play note C4
|1B96A0:E69C| db $E2, $60, $00 ; initiate gradual panning change
|1B96A3:E69F| db $A9 ; play note F4
|1B96A4:E6A0| db $A9 ; play note F4
|1B96A5:E6A1| db $B0 ; play note C5
|1B96A6:E6A2| db $B5 ; play note F5
|1B96A7:E6A3| db $0C, $3D ; duration, params
|1B96A9:E6A5| db $B2 ; play note D5
|1B96AA:E6A6| db $B9 ; play note A5
|1B96AB:E6A7| db $54 ; duration
|1B96AC:E6A8| db $C9 ; rest
|1B96AD:E6A9| db $E1, $14 ; set panning - leaning left
|1B96AF:E6AB| db $E2, $60, $00 ; initiate gradual panning change
|1B96B2:E6AE| db $0C, $4D ; duration, params
|1B96B4:E6B0| db $A7 ; play note D#4
|1B96B5:E6B1| db $AC ; play note G#4
|1B96B6:E6B2| db $AC ; play note G#4
|1B96B7:E6B3| db $B3 ; play note D#5
|1B96B8:E6B4| db $B8 ; play note G#5
|1B96B9:E6B5| db $0C, $3D ; duration, params
|1B96BB:E6B7| db $B5 ; play note F5
|1B96BC:E6B8| db $BC ; play note C6
|1B96BD:E6B9| db $60 ; duration
|1B96BE:E6BA| db $C9 ; rest
|1B96BF:E6BB| db $E0, $02 ; set instrument - timpani
|1B96C1:E6BD| db $ED, $F0 ; set channel volume
|1B96C3:E6BF| db $E1, $0A ; set panning - balanced
|1B96C5:E6C1| db $06, $77 ; duration, params
|1B96C7:E6C3| db $8F ; play note D#2
|1B96C8:E6C4| db $0C, $78 ; duration, params
|1B96CA:E6C6| db $8F ; play note D#2
|1B96CB:E6C7| db $0C, $79 ; duration, params
|1B96CD:E6C9| db $8F ; play note D#2
|1B96CE:E6CA| db $0C, $7A ; duration, params
|1B96D0:E6CC| db $8F ; play note D#2
|1B96D1:E6CD| db $0C, $7B ; duration, params
|1B96D3:E6CF| db $8F ; play note D#2
|1B96D4:E6D0| db $0C, $7C ; duration, params
|1B96D6:E6D2| db $8F ; play note D#2
|1B96D7:E6D3| db $0C, $7D ; duration, params
|1B96D9:E6D5| db $8F ; play note D#2
|1B96DA:E6D6| db $3C, $7F ; duration, params
|1B96DC:E6D8| db $8F ; play note D#2
|1B96DD:E6D9| db $0C ; duration
|1B96DE:E6DA| db $C9 ; rest
|1B96DF:E6DB| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song13_Sub_E6DC:
|1B96E0:E6DC| db $48, $48 ; duration, params
|1B96E2:E6DE| db $C8 ; sustain current note
|1B96E3:E6DF| db $0C ; duration
|1B96E4:E6E0| db $C9 ; rest
|1B96E5:E6E1| db $06, $3D ; duration, params
|1B96E7:E6E3| db $B5 ; play note F5
|1B96E8:E6E4| db $B5 ; play note F5
|1B96E9:E6E5| db $0C, $5D ; duration, params
|1B96EB:E6E7| db $B5 ; play note F5
|1B96EC:E6E8| db $06, $3D ; duration, params
|1B96EE:E6EA| db $B3 ; play note D#5
|1B96EF:E6EB| db $B3 ; play note D#5
|1B96F0:E6EC| db $0C, $5D ; duration, params
|1B96F2:E6EE| db $B3 ; play note D#5
|1B96F3:E6EF| db $06, $3D ; duration, params
|1B96F5:E6F1| db $B1 ; play note C#5
|1B96F6:E6F2| db $B1 ; play note C#5
|1B96F7:E6F3| db $0C ; duration
|1B96F8:E6F4| db $B1 ; play note C#5
|1B96F9:E6F5| db $0C, $5D ; duration, params
|1B96FB:E6F7| db $B3 ; play note D#5
|1B96FC:E6F8| db $00 ; End

;===================================================================================================

Song14_Sanctuary:
|1B96FD:E6F9| dw Song14_Segment0
|1B96FF:E6FB| dw Song14_Segment1
|1B9701:E6FD| dw Song14_Segment2

Song14_Loop:
|1B9703:E6FF| dw Song14_Segment3
|1B9705:E701| dw Song14_Segment4
|1B9707:E703| dw $00FF, Song14_Loop ; Loop point
|1B970B:E707| dw $0000

Song14_Segment3:
|1B970D:E709| dw Song14_Segment3_Track0
|1B970F:E70B| dw Song14_Segment3_Track1
|1B9711:E70D| dw Song14_Segment3_Track2
|1B9713:E70F| dw Song14_Segment3_Track3
|1B9715:E711| dw Song14_Segment3_Track4
|1B9717:E713| dw Song14_Segment3_Track5
|1B9719:E715| dw $0000
|1B971B:E717| dw $0000

Song14_Segment1:
|1B971D:E719| dw Song14_Segment1_Track0
|1B971F:E71B| dw Song14_Segment1_Track1
|1B9721:E71D| dw Song14_Segment1_Track2
|1B9723:E71F| dw Song14_Segment1_Track3
|1B9725:E721| dw Song14_Segment1_Track4
|1B9727:E723| dw Song14_Segment1_Track5
|1B9729:E725| dw $0000
|1B972B:E727| dw $0000

Song14_Segment4:
|1B972D:E729| dw Song14_Segment4_Track0
|1B972F:E72B| dw Song14_Segment4_Track1
|1B9731:E72D| dw Song14_Segment4_Track2
|1B9733:E72F| dw Song14_Segment4_Track3
|1B9735:E731| dw Song14_Segment4_Track4
|1B9737:E733| dw Song14_Segment4_Track5
|1B9739:E735| dw $0000
|1B973B:E737| dw $0000

Song14_Segment2:
|1B973D:E739| dw Song14_Segment2_Track0
|1B973F:E73B| dw Song14_Segment2_Track1
|1B9741:E73D| dw Song14_Segment2_Track2
|1B9743:E73F| dw Song14_Segment2_Track3
|1B9745:E741| dw $0000
|1B9747:E743| dw Song14_Segment2_Track5
|1B9749:E745| dw $0000
|1B974B:E747| dw $0000

Song14_Segment0:
|1B974D:E749| dw Song14_Segment0_Track0
|1B974F:E74B| dw $0000
|1B9751:E74D| dw $0000
|1B9753:E74F| dw $0000
|1B9755:E751| dw $0000
|1B9757:E753| dw $0000
|1B9759:E755| dw $0000
|1B975B:E757| dw $0000

;---------------------------------------------------------------------------------------------------

Song14_Segment3_Track0:
|1B975D:E759| db $30, $7D ; duration, params
|1B975F:E75B| db $AB ; play note G4
|1B9760:E75C| db $A4 ; play note C4
|1B9761:E75D| db $AF ; play note B4
|1B9762:E75E| db $A6 ; play note D4
|1B9763:E75F| db $AB ; play note G4
|1B9764:E760| db $A4 ; play note C4
|1B9765:E761| db $AF ; play note B4
|1B9766:E762| db $B2 ; play note D5
|1B9767:E763| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song14_Segment3_Track1:
|1B9768:E764| db $EF : dw Song14_Sub_E906 : db $01 ; call segment subroutine
|1B976C:E768| db $C9 ; rest
|1B976D:E769| db $30 ; duration
|1B976E:E76A| db $A7 ; play note D#4
|1B976F:E76B| db $18 ; duration
|1B9770:E76C| db $B0 ; play note C5
|1B9771:E76D| db $C8 ; sustain current note
|1B9772:E76E| db $30 ; duration
|1B9773:E76F| db $B0 ; play note C5
|1B9774:E770| db $18 ; duration
|1B9775:E771| db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song14_Segment3_Track2:
|1B9776:E772| db $60, $6D ; duration, params
|1B9778:E774| db $8C ; play note C2
|1B9779:E775| db $8B ; play note B1
|1B977A:E776| db $8A ; play note A#1
|1B977B:E777| db $89 ; play note A1

;---------------------------------------------------------------------------------------------------

Song14_Segment3_Track3:
|1B977C:E778| db $60 ; duration
|1B977D:E779| db $C9 ; rest
|1B977E:E77A| db $C9 ; rest
|1B977F:E77B| db $18, $7D ; duration, params
|1B9781:E77D| db $93 ; play note G2
|1B9782:E77E| db $94 ; play note G#2
|1B9783:E77F| db $30 ; duration
|1B9784:E780| db $93 ; play note G2
|1B9785:E781| db $18 ; duration
|1B9786:E782| db $93 ; play note G2
|1B9787:E783| db $94 ; play note G#2
|1B9788:E784| db $30 ; duration
|1B9789:E785| db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song14_Segment3_Track4:
|1B978A:E786| db $60, $6D ; duration, params
|1B978C:E788| db $98 ; play note C3
|1B978D:E789| db $97 ; play note B2
|1B978E:E78A| db $96 ; play note A#2
|1B978F:E78B| db $95 ; play note A2

;---------------------------------------------------------------------------------------------------

Song14_Segment3_Track5:
|1B9790:E78C| db $08 ; duration
|1B9791:E78D| db $C9 ; rest
|1B9792:E78E| db $18, $7D ; duration, params
|1B9794:E790| db $AB ; play note G4
|1B9795:E791| db $A7 ; play note D#4
|1B9796:E792| db $A4 ; play note C4
|1B9797:E793| db $B0 ; play note C5
|1B9798:E794| db $AF ; play note B4
|1B9799:E795| db $AB ; play note G4
|1B979A:E796| db $A6 ; play note D4
|1B979B:E797| db $A3 ; play note B3
|1B979C:E798| db $AB ; play note G4
|1B979D:E799| db $A7 ; play note D#4
|1B979E:E79A| db $A4 ; play note C4
|1B979F:E79B| db $B0 ; play note C5
|1B97A0:E79C| db $AF ; play note B4
|1B97A1:E79D| db $B0 ; play note C5
|1B97A2:E79E| db $B2 ; play note D5
|1B97A3:E79F| db $10 ; duration
|1B97A4:E7A0| db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song14_Segment1_Track0:
|1B97A5:E7A1| db $ED, $C8 ; set channel volume
|1B97A7:E7A3| db $E0, $15 ; set instrument - choir
|1B97A9:E7A5| db $E3, $0A, $1E, $64 ; enable vibrato
|1B97AD:E7A9| db $18, $7D ; duration, params
|1B97AF:E7AB| db $9B ; play note D#3
|1B97B0:E7AC| db $9D ; play note F3
|1B97B1:E7AD| db $30 ; duration
|1B97B2:E7AE| db $9A ; play note D3
|1B97B3:E7AF| db $EF : dw Song14_Sub_E913 : db $01 ; call segment subroutine
|1B97B7:E7B3| db $18, $7D ; duration, params
|1B97B9:E7B5| db $9B ; play note D#3
|1B97BA:E7B6| db $9D ; play note F3
|1B97BB:E7B7| db $30 ; duration
|1B97BC:E7B8| db $9A ; play note D3
|1B97BD:E7B9| db $60, $68 ; duration, params
|1B97BF:E7BB| db $C8 ; sustain current note
|1B97C0:E7BC| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song14_Segment1_Track1:
|1B97C1:E7BD| db $ED, $C8 ; set channel volume
|1B97C3:E7BF| db $E0, $15 ; set instrument - choir
|1B97C5:E7C1| db $E3, $0E, $28, $50 ; enable vibrato
|1B97C9:E7C5| db $30, $7D ; duration, params
|1B97CB:E7C7| db $98 ; play note C3
|1B97CC:E7C8| db $97 ; play note B2
|1B97CD:E7C9| db $30, $5D ; duration, params
|1B97CF:E7CB| db $C8 ; sustain current note
|1B97D0:E7CC| db $30, $7D ; duration, params
|1B97D2:E7CE| db $98 ; play note C3
|1B97D3:E7CF| db $60 ; duration
|1B97D4:E7D0| db $97 ; play note B2
|1B97D5:E7D1| db $30 ; duration
|1B97D6:E7D2| db $98 ; play note C3
|1B97D7:E7D3| db $97 ; play note B2
|1B97D8:E7D4| db $60, $68 ; duration, params
|1B97DA:E7D6| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song14_Segment1_Track2:
|1B97DB:E7D7| db $ED, $C8 ; set channel volume
|1B97DD:E7D9| db $E0, $15 ; set instrument - choir
|1B97DF:E7DB| db $E3, $14, $1A, $46 ; enable vibrato
|1B97E3:E7DF| db $60, $7D ; duration, params
|1B97E5:E7E1| db $88 ; play note G#1
|1B97E6:E7E2| db $F9, $28, $08, $87 ; slide to note
|1B97EA:E7E6| db $30, $6D ; duration, params
|1B97EC:E7E8| db $C8 ; sustain current note
|1B97ED:E7E9| db $30, $7D ; duration, params
|1B97EF:E7EB| db $88 ; play note G#1
|1B97F0:E7EC| db $60, $6D ; duration, params
|1B97F2:E7EE| db $87 ; play note G1
|1B97F3:E7EF| db $30, $7D ; duration, params
|1B97F5:E7F1| db $88 ; play note G#1
|1B97F6:E7F2| db $87 ; play note G1
|1B97F7:E7F3| db $60, $68 ; duration, params
|1B97F9:E7F5| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song14_Segment1_Track3:
|1B97FA:E7F6| db $ED, $C8 ; set channel volume
|1B97FC:E7F8| db $E0, $15 ; set instrument - choir
|1B97FE:E7FA| db $E3, $14, $1E, $5A ; enable vibrato
|1B9802:E7FE| db $60 ; duration
|1B9803:E7FF| db $C9 ; rest
|1B9804:E800| db $30 ; duration
|1B9805:E801| db $C9 ; rest
|1B9806:E802| db $C9 ; rest
|1B9807:E803| db $60 ; duration
|1B9808:E804| db $C9 ; rest
|1B9809:E805| db $30, $7D ; duration, params
|1B980B:E807| db $92 ; play note F#2
|1B980C:E808| db $91 ; play note F2
|1B980D:E809| db $60, $68 ; duration, params
|1B980F:E80B| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song14_Segment1_Track4:
|1B9810:E80C| db $ED, $C8 ; set channel volume
|1B9812:E80E| db $E0, $15 ; set instrument - choir
|1B9814:E810| db $E3, $0A, $12, $3C ; enable vibrato
|1B9818:E814| db $60 ; duration
|1B9819:E815| db $C9 ; rest
|1B981A:E816| db $C9 ; rest
|1B981B:E817| db $C9 ; rest
|1B981C:E818| db $30, $7D ; duration, params
|1B981E:E81A| db $A4 ; play note C4
|1B981F:E81B| db $F9, $16, $02, $A6 ; slide to note
|1B9823:E81F| db $A3 ; play note B3
|1B9824:E820| db $60, $68 ; duration, params
|1B9826:E822| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song14_Segment1_Track5:
|1B9827:E823| db $ED, $A0 ; set channel volume
|1B9829:E825| db $E0, $15 ; set instrument - choir
|1B982B:E827| db $E3, $0E, $1E, $50 ; enable vibrato
|1B982F:E82B| db $08 ; duration
|1B9830:E82C| db $C9 ; rest
|1B9831:E82D| db $30, $7D ; duration, params
|1B9833:E82F| db $9B ; play note D#3
|1B9834:E830| db $F9, $14, $04, $9D ; slide to note
|1B9838:E834| db $9A ; play note D3
|1B9839:E835| db $EF : dw Song14_Sub_E913 : db $01 ; call segment subroutine
|1B983D:E839| db $18, $7D ; duration, params
|1B983F:E83B| db $9B ; play note D#3
|1B9840:E83C| db $9D ; play note F3
|1B9841:E83D| db $30 ; duration
|1B9842:E83E| db $9A ; play note D3
|1B9843:E83F| db $58, $68 ; duration, params
|1B9845:E841| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song14_Segment4_Track0:
|1B9846:E842| db $30, $7D ; duration, params
|1B9848:E844| db $B0 ; play note C5
|1B9849:E845| db $B0 ; play note C5
|1B984A:E846| db $C8 ; sustain current note
|1B984B:E847| db $AF ; play note B4
|1B984C:E848| db $B0 ; play note C5
|1B984D:E849| db $B0 ; play note C5
|1B984E:E84A| db $C8 ; sustain current note
|1B984F:E84B| db $AF ; play note B4
|1B9850:E84C| db $B0 ; play note C5
|1B9851:E84D| db $A7 ; play note D#4
|1B9852:E84E| db $C8 ; sustain current note
|1B9853:E84F| db $AA ; play note F#4
|1B9854:E850| db $60 ; duration
|1B9855:E851| db $AF ; play note B4
|1B9856:E852| db $C8 ; sustain current note
|1B9857:E853| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song14_Segment4_Track1:
|1B9858:E854| db $18 ; duration
|1B9859:E855| db $C9 ; rest
|1B985A:E856| db $30, $7D ; duration, params
|1B985C:E858| db $AB ; play note G4
|1B985D:E859| db $18 ; duration
|1B985E:E85A| db $B7 ; play note G5
|1B985F:E85B| db $C8 ; sustain current note
|1B9860:E85C| db $30 ; duration
|1B9861:E85D| db $B2 ; play note D5
|1B9862:E85E| db $18 ; duration
|1B9863:E85F| db $AB ; play note G4
|1B9864:E860| db $C8 ; sustain current note
|1B9865:E861| db $30 ; duration
|1B9866:E862| db $AB ; play note G4
|1B9867:E863| db $18 ; duration
|1B9868:E864| db $B7 ; play note G5
|1B9869:E865| db $C8 ; sustain current note
|1B986A:E866| db $30 ; duration
|1B986B:E867| db $B2 ; play note D5
|1B986C:E868| db $18 ; duration
|1B986D:E869| db $AB ; play note G4
|1B986E:E86A| db $C8 ; sustain current note
|1B986F:E86B| db $30 ; duration
|1B9870:E86C| db $AD ; play note A4
|1B9871:E86D| db $18 ; duration
|1B9872:E86E| db $A4 ; play note C4
|1B9873:E86F| db $C8 ; sustain current note
|1B9874:E870| db $30 ; duration
|1B9875:E871| db $A7 ; play note D#4
|1B9876:E872| db $18 ; duration
|1B9877:E873| db $B0 ; play note C5
|1B9878:E874| db $60 ; duration
|1B9879:E875| db $AB ; play note G4
|1B987A:E876| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song14_Segment4_Track2:
|1B987B:E877| db $60, $6D ; duration, params
|1B987D:E879| db $88 ; play note G#1
|1B987E:E87A| db $87 ; play note G1
|1B987F:E87B| db $88 ; play note G#1
|1B9880:E87C| db $87 ; play note G1
|1B9881:E87D| db $86 ; play note F#1
|1B9882:E87E| db $86 ; play note F#1
|1B9883:E87F| db $87 ; play note G1
|1B9884:E880| db $87 ; play note G1

;---------------------------------------------------------------------------------------------------

Song14_Segment4_Track3:
|1B9885:E881| db $30 ; duration
|1B9886:E882| db $C9 ; rest
|1B9887:E883| db $18, $7D ; duration, params
|1B9889:E885| db $A7 ; play note D#4
|1B988A:E886| db $A4 ; play note C4
|1B988B:E887| db $A3 ; play note B3
|1B988C:E888| db $A4 ; play note C4
|1B988D:E889| db $A6 ; play note D4
|1B988E:E88A| db $A3 ; play note B3
|1B988F:E88B| db $30 ; duration
|1B9890:E88C| db $C9 ; rest
|1B9891:E88D| db $18 ; duration
|1B9892:E88E| db $A7 ; play note D#4
|1B9893:E88F| db $A4 ; play note C4
|1B9894:E890| db $A3 ; play note B3
|1B9895:E891| db $A4 ; play note C4
|1B9896:E892| db $A6 ; play note D4
|1B9897:E893| db $A3 ; play note B3
|1B9898:E894| db $A4 ; play note C4
|1B9899:E895| db $A3 ; play note B3
|1B989A:E896| db $A4 ; play note C4
|1B989B:E897| db $A1 ; play note A3
|1B989C:E898| db $9E ; play note F#3
|1B989D:E899| db $A1 ; play note A3
|1B989E:E89A| db $A7 ; play note D#4
|1B989F:E89B| db $A6 ; play note D4
|1B98A0:E89C| db $A6 ; play note D4
|1B98A1:E89D| db $A9 ; play note F4
|1B98A2:E89E| db $AC ; play note G#4
|1B98A3:E89F| db $AB ; play note G4
|1B98A4:E8A0| db $C8 ; sustain current note
|1B98A5:E8A1| db $A9 ; play note F4
|1B98A6:E8A2| db $A6 ; play note D4
|1B98A7:E8A3| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song14_Segment4_Track4:
|1B98A8:E8A4| db $60, $6D ; duration, params
|1B98AA:E8A6| db $94 ; play note G#2
|1B98AB:E8A7| db $93 ; play note G2
|1B98AC:E8A8| db $94 ; play note G#2
|1B98AD:E8A9| db $93 ; play note G2
|1B98AE:E8AA| db $92 ; play note F#2
|1B98AF:E8AB| db $92 ; play note F#2
|1B98B0:E8AC| db $93 ; play note G2
|1B98B1:E8AD| db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song14_Segment4_Track5:
|1B98B2:E8AE| db $08 ; duration
|1B98B3:E8AF| db $C9 ; rest
|1B98B4:E8B0| db $18, $7D ; duration, params
|1B98B6:E8B2| db $B0 ; play note C5
|1B98B7:E8B3| db $AB ; play note G4
|1B98B8:E8B4| db $B0 ; play note C5
|1B98B9:E8B5| db $B7 ; play note G5
|1B98BA:E8B6| db $C8 ; sustain current note
|1B98BB:E8B7| db $B2 ; play note D5
|1B98BC:E8B8| db $AF ; play note B4
|1B98BD:E8B9| db $AB ; play note G4
|1B98BE:E8BA| db $B0 ; play note C5
|1B98BF:E8BB| db $AB ; play note G4
|1B98C0:E8BC| db $B0 ; play note C5
|1B98C1:E8BD| db $B7 ; play note G5
|1B98C2:E8BE| db $C8 ; sustain current note
|1B98C3:E8BF| db $B2 ; play note D5
|1B98C4:E8C0| db $AF ; play note B4
|1B98C5:E8C1| db $AB ; play note G4
|1B98C6:E8C2| db $B0 ; play note C5
|1B98C7:E8C3| db $AD ; play note A4
|1B98C8:E8C4| db $A7 ; play note D#4
|1B98C9:E8C5| db $A4 ; play note C4
|1B98CA:E8C6| db $C8 ; sustain current note
|1B98CB:E8C7| db $A7 ; play note D#4
|1B98CC:E8C8| db $AA ; play note F#4
|1B98CD:E8C9| db $B0 ; play note C5
|1B98CE:E8CA| db $60 ; duration
|1B98CF:E8CB| db $AF ; play note B4
|1B98D0:E8CC| db $58 ; duration
|1B98D1:E8CD| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song14_Segment2_Track0:
|1B98D2:E8CE| db $30, $7D ; duration, params
|1B98D4:E8D0| db $AB ; play note G4
|1B98D5:E8D1| db $A4 ; play note C4
|1B98D6:E8D2| db $AF ; play note B4
|1B98D7:E8D3| db $A6 ; play note D4
|1B98D8:E8D4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song14_Segment2_Track1:
|1B98D9:E8D5| db $EF : dw Song14_Sub_E906 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song14_Segment2_Track2:
|1B98DD:E8D9| db $60 ; duration
|1B98DE:E8DA| db $C9 ; rest
|1B98DF:E8DB| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song14_Segment2_Track3:
|1B98E0:E8DC| db $60 ; duration
|1B98E1:E8DD| db $C9 ; rest
|1B98E2:E8DE| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song14_Segment2_Track5:
|1B98E3:E8DF| db $08 ; duration
|1B98E4:E8E0| db $C9 ; rest
|1B98E5:E8E1| db $18, $7D ; duration, params
|1B98E7:E8E3| db $AB ; play note G4
|1B98E8:E8E4| db $A7 ; play note D#4
|1B98E9:E8E5| db $A4 ; play note C4
|1B98EA:E8E6| db $B0 ; play note C5
|1B98EB:E8E7| db $AF ; play note B4
|1B98EC:E8E8| db $AB ; play note G4
|1B98ED:E8E9| db $A6 ; play note D4
|1B98EE:E8EA| db $10 ; duration
|1B98EF:E8EB| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song14_Segment0_Track0:
|1B98F0:E8EC| db $FA, $18 ; set base percussion sample
|1B98F2:E8EE| db $E5, $C8 ; set song volume
|1B98F4:E8F0| db $E7, $19 ; set song tempo
|1B98F6:E8F2| db $F5, $FF, $1E, $1E ; configure EON, EVOLL, EVOLR
|1B98FA:E8F6| db $F7, $02, $14, $02 ; configure EDL, EFB, FIR
|1B98FE:E8FA| db $ED, $C8 ; set channel volume
|1B9900:E8FC| db $E0, $15 ; set instrument - choir
|1B9902:E8FE| db $E3, $0A, $1E, $64 ; enable vibrato
|1B9906:E902| db $30 ; duration
|1B9907:E903| db $C9 ; rest
|1B9908:E904| db $00 ; End
|1B9909:E905| db $00

;---------------------------------------------------------------------------------------------------

Song14_Sub_E906:
|1B990A:E906| db $18 ; duration
|1B990B:E907| db $C9 ; rest
|1B990C:E908| db $30, $7D ; duration, params
|1B990E:E90A| db $A7 ; play note D#4
|1B990F:E90B| db $18 ; duration
|1B9910:E90C| db $B0 ; play note C5
|1B9911:E90D| db $C8 ; sustain current note
|1B9912:E90E| db $30 ; duration
|1B9913:E90F| db $AB ; play note G4
|1B9914:E910| db $18 ; duration
|1B9915:E911| db $A3 ; play note B3
|1B9916:E912| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song14_Sub_E913:
|1B9917:E913| db $30, $5D ; duration, params
|1B9919:E915| db $C8 ; sustain current note
|1B991A:E916| db $18, $7D ; duration, params
|1B991C:E918| db $9B ; play note D#3
|1B991D:E919| db $9D ; play note F3
|1B991E:E91A| db $60, $6D ; duration, params
|1B9920:E91C| db $9A ; play note D3
|1B9921:E91D| db $00 ; End

;===================================================================================================

Song15_Boss:
|1B9922:E91E| dw Song15_Segment0

Song15_Loop:
|1B9924:E920| dw Song15_Segment1
|1B9926:E922| dw Song15_Segment2
|1B9928:E924| dw $00FF, Song15_Loop ; Loop point
|1B992C:E928| dw $0000

Song15_Segment1:
|1B992E:E92A| dw Song15_Segment1_Track0
|1B9930:E92C| dw Song15_Segment1_Track1
|1B9932:E92E| dw Song15_Segment1_Track2
|1B9934:E930| dw Song15_Segment1_Track3
|1B9936:E932| dw Song15_Segment1_Track4
|1B9938:E934| dw $0000
|1B993A:E936| dw $0000
|1B993C:E938| dw $0000

Song15_Segment0:
|1B993E:E93A| dw Song15_Segment0_Track0
|1B9940:E93C| dw Song15_Segment0_Track1
|1B9942:E93E| dw Song15_Segment0_Track2
|1B9944:E940| dw Song15_Segment0_Track3
|1B9946:E942| dw Song15_Segment0_Track4
|1B9948:E944| dw $0000
|1B994A:E946| dw $0000
|1B994C:E948| dw $0000

Song15_Unused0:
|1B994E:E94A| dw Song15_Unused0_Track0
|1B9950:E94C| dw Song15_Unused0_Track1
|1B9952:E94E| dw Song15_Unused0_Track2
|1B9954:E950| dw $0000
|1B9956:E952| dw $0000
|1B9958:E954| dw $0000
|1B995A:E956| dw $0000
|1B995C:E958| dw $0000

Song15_Segment2:
|1B995E:E95A| dw Song15_Segment2_Track0
|1B9960:E95C| dw Song15_Segment2_Track1
|1B9962:E95E| dw Song15_Segment2_Track2
|1B9964:E960| dw Song15_Segment2_Track3
|1B9966:E962| dw Song15_Segment2_Track4
|1B9968:E964| dw $0000
|1B996A:E966| dw $0000
|1B996C:E968| dw $0000

;---------------------------------------------------------------------------------------------------

Song15_Segment1_Track0:
|1B996E:E96A| db $ED, $C8 ; set channel volume
|1B9970:E96C| db $E0, $02 ; set instrument - timpani
|1B9972:E96E| db $0C, $5D ; duration, params
|1B9974:E970| db $8E ; play note D2
|1B9975:E971| db $89 ; play note A1
|1B9976:E972| db $8E ; play note D2
|1B9977:E973| db $89 ; play note A1
|1B9978:E974| db $8E ; play note D2
|1B9979:E975| db $89 ; play note A1
|1B997A:E976| db $8E ; play note D2
|1B997B:E977| db $89 ; play note A1
|1B997C:E978| db $EF : dw Song15_Sub_EBEE : db $03 ; call segment subroutine
|1B9980:E97C| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song15_Segment1_Track1:
|1B9981:E97D| db $ED, $DC ; set channel volume
|1B9983:E97F| db $E0, $0B ; set instrument - trombone
|1B9985:E981| db $0C, $6D ; duration, params
|1B9987:E983| db $95 ; play note A2
|1B9988:E984| db $9C ; play note E3
|1B9989:E985| db $A1 ; play note A3
|1B998A:E986| db $95 ; play note A2
|1B998B:E987| db $9C ; play note E3
|1B998C:E988| db $A1 ; play note A3
|1B998D:E989| db $96 ; play note A#2
|1B998E:E98A| db $A2 ; play note A#3
|1B998F:E98B| db $95 ; play note A2
|1B9990:E98C| db $9C ; play note E3
|1B9991:E98D| db $A1 ; play note A3
|1B9992:E98E| db $95 ; play note A2
|1B9993:E98F| db $9C ; play note E3
|1B9994:E990| db $A1 ; play note A3
|1B9995:E991| db $94 ; play note G#2
|1B9996:E992| db $A0 ; play note G#3
|1B9997:E993| db $95 ; play note A2
|1B9998:E994| db $9C ; play note E3
|1B9999:E995| db $A1 ; play note A3
|1B999A:E996| db $95 ; play note A2
|1B999B:E997| db $9C ; play note E3
|1B999C:E998| db $A1 ; play note A3
|1B999D:E999| db $96 ; play note A#2
|1B999E:E99A| db $A2 ; play note A#3
|1B999F:E99B| db $95 ; play note A2
|1B99A0:E99C| db $9C ; play note E3
|1B99A1:E99D| db $A1 ; play note A3
|1B99A2:E99E| db $95 ; play note A2
|1B99A3:E99F| db $9C ; play note E3
|1B99A4:E9A0| db $A1 ; play note A3
|1B99A5:E9A1| db $94 ; play note G#2
|1B99A6:E9A2| db $A0 ; play note G#3

;---------------------------------------------------------------------------------------------------

Song15_Segment1_Track2:
|1B99A7:E9A3| db $ED, $C8 ; set channel volume
|1B99A9:E9A5| db $E0, $0B ; set instrument - trombone
|1B99AB:E9A7| db $18 ; duration
|1B99AC:E9A8| db $C9 ; rest
|1B99AD:E9A9| db $0C, $6D ; duration, params
|1B99AF:E9AB| db $B9 ; play note A5
|1B99B0:E9AC| db $18 ; duration
|1B99B1:E9AD| db $C9 ; rest
|1B99B2:E9AE| db $0C ; duration
|1B99B3:E9AF| db $B9 ; play note A5
|1B99B4:E9B0| db $C9 ; rest
|1B99B5:E9B1| db $BA ; play note A#5
|1B99B6:E9B2| db $18 ; duration
|1B99B7:E9B3| db $C9 ; rest
|1B99B8:E9B4| db $0C ; duration
|1B99B9:E9B5| db $B9 ; play note A5
|1B99BA:E9B6| db $18 ; duration
|1B99BB:E9B7| db $C9 ; rest
|1B99BC:E9B8| db $0C ; duration
|1B99BD:E9B9| db $B9 ; play note A5
|1B99BE:E9BA| db $C9 ; rest
|1B99BF:E9BB| db $B8 ; play note G#5
|1B99C0:E9BC| db $18 ; duration
|1B99C1:E9BD| db $C9 ; rest
|1B99C2:E9BE| db $0C ; duration
|1B99C3:E9BF| db $B9 ; play note A5
|1B99C4:E9C0| db $18 ; duration
|1B99C5:E9C1| db $C9 ; rest
|1B99C6:E9C2| db $0C ; duration
|1B99C7:E9C3| db $B9 ; play note A5
|1B99C8:E9C4| db $C9 ; rest
|1B99C9:E9C5| db $BA ; play note A#5
|1B99CA:E9C6| db $18 ; duration
|1B99CB:E9C7| db $C9 ; rest
|1B99CC:E9C8| db $0C ; duration
|1B99CD:E9C9| db $B9 ; play note A5
|1B99CE:E9CA| db $18 ; duration
|1B99CF:E9CB| db $C9 ; rest
|1B99D0:E9CC| db $0C ; duration
|1B99D1:E9CD| db $B9 ; play note A5
|1B99D2:E9CE| db $C9 ; rest
|1B99D3:E9CF| db $B8 ; play note G#5

;---------------------------------------------------------------------------------------------------

Song15_Segment1_Track3:
|1B99D4:E9D0| db $ED, $C8 ; set channel volume
|1B99D6:E9D2| db $E0, $0B ; set instrument - trombone
|1B99D8:E9D4| db $18 ; duration
|1B99D9:E9D5| db $C9 ; rest
|1B99DA:E9D6| db $0C, $6D ; duration, params
|1B99DC:E9D8| db $B4 ; play note E5
|1B99DD:E9D9| db $18 ; duration
|1B99DE:E9DA| db $C9 ; rest
|1B99DF:E9DB| db $0C ; duration
|1B99E0:E9DC| db $B4 ; play note E5
|1B99E1:E9DD| db $C9 ; rest
|1B99E2:E9DE| db $B5 ; play note F5
|1B99E3:E9DF| db $18 ; duration
|1B99E4:E9E0| db $C9 ; rest
|1B99E5:E9E1| db $0C ; duration
|1B99E6:E9E2| db $B4 ; play note E5
|1B99E7:E9E3| db $18 ; duration
|1B99E8:E9E4| db $C9 ; rest
|1B99E9:E9E5| db $0C ; duration
|1B99EA:E9E6| db $B4 ; play note E5
|1B99EB:E9E7| db $C9 ; rest
|1B99EC:E9E8| db $B3 ; play note D#5
|1B99ED:E9E9| db $18 ; duration
|1B99EE:E9EA| db $C9 ; rest
|1B99EF:E9EB| db $0C ; duration
|1B99F0:E9EC| db $B4 ; play note E5
|1B99F1:E9ED| db $18 ; duration
|1B99F2:E9EE| db $C9 ; rest
|1B99F3:E9EF| db $0C ; duration
|1B99F4:E9F0| db $B4 ; play note E5
|1B99F5:E9F1| db $C9 ; rest
|1B99F6:E9F2| db $B5 ; play note F5
|1B99F7:E9F3| db $18 ; duration
|1B99F8:E9F4| db $C9 ; rest
|1B99F9:E9F5| db $0C ; duration
|1B99FA:E9F6| db $B4 ; play note E5
|1B99FB:E9F7| db $18 ; duration
|1B99FC:E9F8| db $C9 ; rest
|1B99FD:E9F9| db $0C ; duration
|1B99FE:E9FA| db $B4 ; play note E5
|1B99FF:E9FB| db $C9 ; rest
|1B9A00:E9FC| db $B3 ; play note D#5

;---------------------------------------------------------------------------------------------------

Song15_Segment1_Track4:
|1B9A01:E9FD| db $ED, $AA ; set channel volume
|1B9A03:E9FF| db $E0, $14 ; set instrument - snare B
|1B9A05:EA01| db $04, $6D ; duration, params
|1B9A07:EA03| db $A8 ; play note E4
|1B9A08:EA04| db $A8 ; play note E4
|1B9A09:EA05| db $A8 ; play note E4
|1B9A0A:EA06| db $0C ; duration
|1B9A0B:EA07| db $A8 ; play note E4
|1B9A0C:EA08| db $06 ; duration
|1B9A0D:EA09| db $A8 ; play note E4
|1B9A0E:EA0A| db $A8 ; play note E4
|1B9A0F:EA0B| db $0C ; duration
|1B9A10:EA0C| db $A8 ; play note E4
|1B9A11:EA0D| db $A8 ; play note E4
|1B9A12:EA0E| db $A8 ; play note E4
|1B9A13:EA0F| db $04 ; duration
|1B9A14:EA10| db $A8 ; play note E4
|1B9A15:EA11| db $A8 ; play note E4
|1B9A16:EA12| db $A8 ; play note E4
|1B9A17:EA13| db $0C ; duration
|1B9A18:EA14| db $A8 ; play note E4
|1B9A19:EA15| db $EF : dw Song15_Sub_EBF7 : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song15_Segment0_Track0:
|1B9A1D:EA19| db $FA, $17 ; set base percussion sample
|1B9A1F:EA1B| db $E5, $C8 ; set song volume
|1B9A21:EA1D| db $E7, $25 ; set song tempo
|1B9A23:EA1F| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1B9A27:EA23| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1B9A2B:EA27| db $F8, $1E, $1E, $1E ; initiate gradual echo volume change
|1B9A2F:EA2B| db $ED, $C8 ; set channel volume
|1B9A31:EA2D| db $E0, $0B ; set instrument - trombone
|1B9A33:EA2F| db $E3, $14, $1E, $14 ; enable vibrato
|1B9A37:EA33| db $24, $6D ; duration, params
|1B9A39:EA35| db $BC ; play note C6
|1B9A3A:EA36| db $BB ; play note B5
|1B9A3B:EA37| db $18 ; duration
|1B9A3C:EA38| db $B5 ; play note F5
|1B9A3D:EA39| db $24 ; duration
|1B9A3E:EA3A| db $B4 ; play note E5
|1B9A3F:EA3B| db $B3 ; play note D#5
|1B9A40:EA3C| db $0C ; duration
|1B9A41:EA3D| db $AF ; play note B4
|1B9A42:EA3E| db $AE ; play note A#4
|1B9A43:EA3F| db $48 ; duration
|1B9A44:EA40| db $C8 ; sustain current note
|1B9A45:EA41| db $04 ; duration
|1B9A46:EA42| db $B4 ; play note E5
|1B9A47:EA43| db $B3 ; play note D#5
|1B9A48:EA44| db $B2 ; play note D5
|1B9A49:EA45| db $B1 ; play note C#5
|1B9A4A:EA46| db $AF ; play note B4
|1B9A4B:EA47| db $AE ; play note A#4
|1B9A4C:EA48| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song15_Segment0_Track1:
|1B9A4D:EA49| db $ED, $C8 ; set channel volume
|1B9A4F:EA4B| db $E0, $0B ; set instrument - trombone
|1B9A51:EA4D| db $E3, $14, $1E, $14 ; enable vibrato
|1B9A55:EA51| db $24, $6D ; duration, params
|1B9A57:EA53| db $B7 ; play note G5
|1B9A58:EA54| db $B6 ; play note F#5
|1B9A59:EA55| db $18 ; duration
|1B9A5A:EA56| db $B0 ; play note C5
|1B9A5B:EA57| db $24 ; duration
|1B9A5C:EA58| db $AF ; play note B4
|1B9A5D:EA59| db $AE ; play note A#4
|1B9A5E:EA5A| db $0C ; duration
|1B9A5F:EA5B| db $AA ; play note F#4
|1B9A60:EA5C| db $A9 ; play note F4
|1B9A61:EA5D| db $48 ; duration
|1B9A62:EA5E| db $C8 ; sustain current note
|1B9A63:EA5F| db $04 ; duration
|1B9A64:EA60| db $B0 ; play note C5
|1B9A65:EA61| db $AF ; play note B4
|1B9A66:EA62| db $AE ; play note A#4
|1B9A67:EA63| db $AD ; play note A4
|1B9A68:EA64| db $AC ; play note G#4
|1B9A69:EA65| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song15_Segment0_Track2:
|1B9A6A:EA66| db $ED, $C8 ; set channel volume
|1B9A6C:EA68| db $E0, $0B ; set instrument - trombone
|1B9A6E:EA6A| db $E3, $14, $1E, $14 ; enable vibrato
|1B9A72:EA6E| db $24, $6D ; duration, params
|1B9A74:EA70| db $B2 ; play note D5
|1B9A75:EA71| db $B1 ; play note C#5
|1B9A76:EA72| db $18 ; duration
|1B9A77:EA73| db $AB ; play note G4
|1B9A78:EA74| db $24 ; duration
|1B9A79:EA75| db $AA ; play note F#4
|1B9A7A:EA76| db $A9 ; play note F4
|1B9A7B:EA77| db $0C ; duration
|1B9A7C:EA78| db $A5 ; play note C#4
|1B9A7D:EA79| db $A4 ; play note C4
|1B9A7E:EA7A| db $48 ; duration
|1B9A7F:EA7B| db $C8 ; sustain current note
|1B9A80:EA7C| db $04 ; duration
|1B9A81:EA7D| db $A8 ; play note E4
|1B9A82:EA7E| db $A7 ; play note D#4
|1B9A83:EA7F| db $A6 ; play note D4
|1B9A84:EA80| db $A5 ; play note C#4
|1B9A85:EA81| db $A3 ; play note B3
|1B9A86:EA82| db $A2 ; play note A#3

;---------------------------------------------------------------------------------------------------

Song15_Segment0_Track3:
|1B9A87:EA83| db $ED, $C8 ; set channel volume
|1B9A89:EA85| db $E0, $0B ; set instrument - trombone
|1B9A8B:EA87| db $E3, $14, $1E, $14 ; enable vibrato
|1B9A8F:EA8B| db $24, $6D ; duration, params
|1B9A91:EA8D| db $AC ; play note G#4
|1B9A92:EA8E| db $AB ; play note G4
|1B9A93:EA8F| db $18 ; duration
|1B9A94:EA90| db $A5 ; play note C#4
|1B9A95:EA91| db $24 ; duration
|1B9A96:EA92| db $A4 ; play note C4
|1B9A97:EA93| db $A3 ; play note B3
|1B9A98:EA94| db $0C ; duration
|1B9A99:EA95| db $9F ; play note G3
|1B9A9A:EA96| db $9E ; play note F#3
|1B9A9B:EA97| db $60 ; duration
|1B9A9C:EA98| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song15_Segment0_Track4:
|1B9A9D:EA99| db $ED, $FA ; set channel volume
|1B9A9F:EA9B| db $E0, $02 ; set instrument - timpani
|1B9AA1:EA9D| db $04, $6D ; duration, params
|1B9AA3:EA9F| db $89 ; play note A1
|1B9AA4:EAA0| db $89 ; play note A1
|1B9AA5:EAA1| db $40 ; duration
|1B9AA6:EAA2| db $89 ; play note A1
|1B9AA7:EAA3| db $18 ; duration
|1B9AA8:EAA4| db $89 ; play note A1
|1B9AA9:EAA5| db $04 ; duration
|1B9AAA:EAA6| db $87 ; play note G1
|1B9AAB:EAA7| db $87 ; play note G1
|1B9AAC:EAA8| db $40 ; duration
|1B9AAD:EAA9| db $87 ; play note G1
|1B9AAE:EAAA| db $18 ; duration
|1B9AAF:EAAB| db $87 ; play note G1
|1B9AB0:EAAC| db $04 ; duration
|1B9AB1:EAAD| db $85 ; play note F1
|1B9AB2:EAAE| db $85 ; play note F1
|1B9AB3:EAAF| db $04, $69 ; duration, params
|1B9AB5:EAB1| db $85 ; play note F1
|1B9AB6:EAB2| db $04, $65 ; duration, params
|1B9AB8:EAB4| db $85 ; play note F1
|1B9AB9:EAB5| db $04, $66 ; duration, params
|1B9ABB:EAB7| db $85 ; play note F1
|1B9ABC:EAB8| db $04, $67 ; duration, params
|1B9ABE:EABA| db $85 ; play note F1
|1B9ABF:EABB| db $04, $68 ; duration, params
|1B9AC1:EABD| db $85 ; play note F1
|1B9AC2:EABE| db $85 ; play note F1
|1B9AC3:EABF| db $04, $69 ; duration, params
|1B9AC5:EAC1| db $85 ; play note F1
|1B9AC6:EAC2| db $85 ; play note F1
|1B9AC7:EAC3| db $85 ; play note F1
|1B9AC8:EAC4| db $04, $6A ; duration, params
|1B9ACA:EAC6| db $85 ; play note F1
|1B9ACB:EAC7| db $85 ; play note F1
|1B9ACC:EAC8| db $04, $6B ; duration, params
|1B9ACE:EACA| db $85 ; play note F1
|1B9ACF:EACB| db $85 ; play note F1
|1B9AD0:EACC| db $85 ; play note F1
|1B9AD1:EACD| db $04, $6C ; duration, params
|1B9AD3:EACF| db $85 ; play note F1
|1B9AD4:EAD0| db $85 ; play note F1
|1B9AD5:EAD1| db $85 ; play note F1
|1B9AD6:EAD2| db $04, $6D ; duration, params
|1B9AD8:EAD4| db $85 ; play note F1
|1B9AD9:EAD5| db $85 ; play note F1
|1B9ADA:EAD6| db $04, $6F ; duration, params
|1B9ADC:EAD8| db $85 ; play note F1
|1B9ADD:EAD9| db $85 ; play note F1
|1B9ADE:EADA| db $85 ; play note F1

;---------------------------------------------------------------------------------------------------

Song15_Unused0_Track0:
|1B9ADF:EADB| db $E5, $C8 ; set song volume
|1B9AE1:EADD| db $E7, $19 ; set song tempo
|1B9AE3:EADF| db $ED, $FA ; set channel volume
|1B9AE5:EAE1| db $E0, $02 ; set instrument - timpani
|1B9AE7:EAE3| db $0C, $5D ; duration, params
|1B9AE9:EAE5| db $8E ; play note D2
|1B9AEA:EAE6| db $89 ; play note A1
|1B9AEB:EAE7| db $8E ; play note D2
|1B9AEC:EAE8| db $89 ; play note A1
|1B9AED:EAE9| db $8E ; play note D2
|1B9AEE:EAEA| db $89 ; play note A1
|1B9AEF:EAEB| db $8E ; play note D2
|1B9AF0:EAEC| db $89 ; play note A1
|1B9AF1:EAED| db $EF : dw Song15_Sub_EBEE : db $03 ; call segment subroutine
|1B9AF5:EAF1| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song15_Unused0_Track1:
|1B9AF6:EAF2| db $ED, $C8 ; set channel volume
|1B9AF8:EAF4| db $E0, $0B ; set instrument - trombone
|1B9AFA:EAF6| db $0C, $6D ; duration, params
|1B9AFC:EAF8| db $92 ; play note F#2
|1B9AFD:EAF9| db $93 ; play note G2
|1B9AFE:EAFA| db $92 ; play note F#2
|1B9AFF:EAFB| db $93 ; play note G2
|1B9B00:EAFC| db $96 ; play note A#2
|1B9B01:EAFD| db $95 ; play note A2
|1B9B02:EAFE| db $96 ; play note A#2
|1B9B03:EAFF| db $95 ; play note A2
|1B9B04:EB00| db $92 ; play note F#2
|1B9B05:EB01| db $93 ; play note G2
|1B9B06:EB02| db $96 ; play note A#2
|1B9B07:EB03| db $95 ; play note A2
|1B9B08:EB04| db $94 ; play note G#2
|1B9B09:EB05| db $93 ; play note G2
|1B9B0A:EB06| db $91 ; play note F2
|1B9B0B:EB07| db $92 ; play note F#2
|1B9B0C:EB08| db $92 ; play note F#2
|1B9B0D:EB09| db $93 ; play note G2
|1B9B0E:EB0A| db $92 ; play note F#2
|1B9B0F:EB0B| db $93 ; play note G2
|1B9B10:EB0C| db $96 ; play note A#2
|1B9B11:EB0D| db $95 ; play note A2
|1B9B12:EB0E| db $96 ; play note A#2
|1B9B13:EB0F| db $95 ; play note A2
|1B9B14:EB10| db $92 ; play note F#2
|1B9B15:EB11| db $93 ; play note G2
|1B9B16:EB12| db $96 ; play note A#2
|1B9B17:EB13| db $95 ; play note A2
|1B9B18:EB14| db $94 ; play note G#2
|1B9B19:EB15| db $93 ; play note G2
|1B9B1A:EB16| db $91 ; play note F2
|1B9B1B:EB17| db $92 ; play note F#2

;---------------------------------------------------------------------------------------------------

Song15_Unused0_Track2:
|1B9B1C:EB18| db $ED, $C8 ; set channel volume
|1B9B1E:EB1A| db $E0, $0B ; set instrument - trombone
|1B9B20:EB1C| db $0C, $6D ; duration, params
|1B9B22:EB1E| db $9E ; play note F#3
|1B9B23:EB1F| db $9F ; play note G3
|1B9B24:EB20| db $9E ; play note F#3
|1B9B25:EB21| db $9F ; play note G3
|1B9B26:EB22| db $A2 ; play note A#3
|1B9B27:EB23| db $A1 ; play note A3
|1B9B28:EB24| db $A2 ; play note A#3
|1B9B29:EB25| db $A1 ; play note A3
|1B9B2A:EB26| db $9E ; play note F#3
|1B9B2B:EB27| db $9F ; play note G3
|1B9B2C:EB28| db $A2 ; play note A#3
|1B9B2D:EB29| db $A1 ; play note A3
|1B9B2E:EB2A| db $A0 ; play note G#3
|1B9B2F:EB2B| db $9F ; play note G3
|1B9B30:EB2C| db $9D ; play note F3
|1B9B31:EB2D| db $9E ; play note F#3
|1B9B32:EB2E| db $9E ; play note F#3
|1B9B33:EB2F| db $9F ; play note G3
|1B9B34:EB30| db $9E ; play note F#3
|1B9B35:EB31| db $9F ; play note G3
|1B9B36:EB32| db $A2 ; play note A#3
|1B9B37:EB33| db $A1 ; play note A3
|1B9B38:EB34| db $A2 ; play note A#3
|1B9B39:EB35| db $A1 ; play note A3
|1B9B3A:EB36| db $9E ; play note F#3
|1B9B3B:EB37| db $9F ; play note G3
|1B9B3C:EB38| db $A2 ; play note A#3
|1B9B3D:EB39| db $A1 ; play note A3
|1B9B3E:EB3A| db $A0 ; play note G#3
|1B9B3F:EB3B| db $9F ; play note G3
|1B9B40:EB3C| db $9D ; play note F3
|1B9B41:EB3D| db $9E ; play note F#3

;---------------------------------------------------------------------------------------------------

Song15_Segment2_Track0:
|1B9B42:EB3E| db $ED, $C8 ; set channel volume
|1B9B44:EB40| db $E0, $02 ; set instrument - timpani
|1B9B46:EB42| db $0C, $5D ; duration, params
|1B9B48:EB44| db $8E ; play note D2
|1B9B49:EB45| db $89 ; play note A1
|1B9B4A:EB46| db $8E ; play note D2
|1B9B4B:EB47| db $89 ; play note A1
|1B9B4C:EB48| db $8E ; play note D2
|1B9B4D:EB49| db $89 ; play note A1
|1B9B4E:EB4A| db $8E ; play note D2
|1B9B4F:EB4B| db $89 ; play note A1
|1B9B50:EB4C| db $EF : dw Song15_Sub_EBEE : db $03 ; call segment subroutine
|1B9B54:EB50| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song15_Segment2_Track1:
|1B9B55:EB51| db $ED, $DC ; set channel volume
|1B9B57:EB53| db $E0, $0B ; set instrument - trombone
|1B9B59:EB55| db $0C, $6D ; duration, params
|1B9B5B:EB57| db $9A ; play note D3
|1B9B5C:EB58| db $A1 ; play note A3
|1B9B5D:EB59| db $A6 ; play note D4
|1B9B5E:EB5A| db $9A ; play note D3
|1B9B5F:EB5B| db $A1 ; play note A3
|1B9B60:EB5C| db $A6 ; play note D4
|1B9B61:EB5D| db $9B ; play note D#3
|1B9B62:EB5E| db $A7 ; play note D#4
|1B9B63:EB5F| db $9A ; play note D3
|1B9B64:EB60| db $A1 ; play note A3
|1B9B65:EB61| db $A6 ; play note D4
|1B9B66:EB62| db $9A ; play note D3
|1B9B67:EB63| db $A1 ; play note A3
|1B9B68:EB64| db $A6 ; play note D4
|1B9B69:EB65| db $99 ; play note C#3
|1B9B6A:EB66| db $A5 ; play note C#4
|1B9B6B:EB67| db $9A ; play note D3
|1B9B6C:EB68| db $A1 ; play note A3
|1B9B6D:EB69| db $A6 ; play note D4
|1B9B6E:EB6A| db $9A ; play note D3
|1B9B6F:EB6B| db $A1 ; play note A3
|1B9B70:EB6C| db $A6 ; play note D4
|1B9B71:EB6D| db $9B ; play note D#3
|1B9B72:EB6E| db $A7 ; play note D#4
|1B9B73:EB6F| db $9A ; play note D3
|1B9B74:EB70| db $A1 ; play note A3
|1B9B75:EB71| db $A6 ; play note D4
|1B9B76:EB72| db $9A ; play note D3
|1B9B77:EB73| db $A1 ; play note A3
|1B9B78:EB74| db $A6 ; play note D4
|1B9B79:EB75| db $99 ; play note C#3
|1B9B7A:EB76| db $A5 ; play note C#4

;---------------------------------------------------------------------------------------------------

Song15_Segment2_Track2:
|1B9B7B:EB77| db $ED, $C8 ; set channel volume
|1B9B7D:EB79| db $E0, $0B ; set instrument - trombone
|1B9B7F:EB7B| db $18 ; duration
|1B9B80:EB7C| db $C9 ; rest
|1B9B81:EB7D| db $0C, $6D ; duration, params
|1B9B83:EB7F| db $BE ; play note D6
|1B9B84:EB80| db $18 ; duration
|1B9B85:EB81| db $C9 ; rest
|1B9B86:EB82| db $0C ; duration
|1B9B87:EB83| db $BE ; play note D6
|1B9B88:EB84| db $C9 ; rest
|1B9B89:EB85| db $BF ; play note D#6
|1B9B8A:EB86| db $18 ; duration
|1B9B8B:EB87| db $C9 ; rest
|1B9B8C:EB88| db $0C ; duration
|1B9B8D:EB89| db $BE ; play note D6
|1B9B8E:EB8A| db $18 ; duration
|1B9B8F:EB8B| db $C9 ; rest
|1B9B90:EB8C| db $0C ; duration
|1B9B91:EB8D| db $BE ; play note D6
|1B9B92:EB8E| db $C9 ; rest
|1B9B93:EB8F| db $BD ; play note C#6
|1B9B94:EB90| db $18 ; duration
|1B9B95:EB91| db $C9 ; rest
|1B9B96:EB92| db $0C ; duration
|1B9B97:EB93| db $BE ; play note D6
|1B9B98:EB94| db $18 ; duration
|1B9B99:EB95| db $C9 ; rest
|1B9B9A:EB96| db $0C ; duration
|1B9B9B:EB97| db $BE ; play note D6
|1B9B9C:EB98| db $C9 ; rest
|1B9B9D:EB99| db $BF ; play note D#6
|1B9B9E:EB9A| db $18 ; duration
|1B9B9F:EB9B| db $C9 ; rest
|1B9BA0:EB9C| db $0C ; duration
|1B9BA1:EB9D| db $BE ; play note D6
|1B9BA2:EB9E| db $18 ; duration
|1B9BA3:EB9F| db $C9 ; rest
|1B9BA4:EBA0| db $0C ; duration
|1B9BA5:EBA1| db $BE ; play note D6
|1B9BA6:EBA2| db $C9 ; rest
|1B9BA7:EBA3| db $BD ; play note C#6

;---------------------------------------------------------------------------------------------------

Song15_Segment2_Track3:
|1B9BA8:EBA4| db $ED, $C8 ; set channel volume
|1B9BAA:EBA6| db $E0, $0B ; set instrument - trombone
|1B9BAC:EBA8| db $18 ; duration
|1B9BAD:EBA9| db $C9 ; rest
|1B9BAE:EBAA| db $0C, $6D ; duration, params
|1B9BB0:EBAC| db $B9 ; play note A5
|1B9BB1:EBAD| db $18 ; duration
|1B9BB2:EBAE| db $C9 ; rest
|1B9BB3:EBAF| db $0C ; duration
|1B9BB4:EBB0| db $B9 ; play note A5
|1B9BB5:EBB1| db $C9 ; rest
|1B9BB6:EBB2| db $BA ; play note A#5
|1B9BB7:EBB3| db $18 ; duration
|1B9BB8:EBB4| db $C9 ; rest
|1B9BB9:EBB5| db $0C ; duration
|1B9BBA:EBB6| db $B9 ; play note A5
|1B9BBB:EBB7| db $18 ; duration
|1B9BBC:EBB8| db $C9 ; rest
|1B9BBD:EBB9| db $0C ; duration
|1B9BBE:EBBA| db $B9 ; play note A5
|1B9BBF:EBBB| db $C9 ; rest
|1B9BC0:EBBC| db $B8 ; play note G#5
|1B9BC1:EBBD| db $18 ; duration
|1B9BC2:EBBE| db $C9 ; rest
|1B9BC3:EBBF| db $0C ; duration
|1B9BC4:EBC0| db $B9 ; play note A5
|1B9BC5:EBC1| db $18 ; duration
|1B9BC6:EBC2| db $C9 ; rest
|1B9BC7:EBC3| db $0C ; duration
|1B9BC8:EBC4| db $B9 ; play note A5
|1B9BC9:EBC5| db $C9 ; rest
|1B9BCA:EBC6| db $BA ; play note A#5
|1B9BCB:EBC7| db $18 ; duration
|1B9BCC:EBC8| db $C9 ; rest
|1B9BCD:EBC9| db $0C ; duration
|1B9BCE:EBCA| db $B9 ; play note A5
|1B9BCF:EBCB| db $18 ; duration
|1B9BD0:EBCC| db $C9 ; rest
|1B9BD1:EBCD| db $0C ; duration
|1B9BD2:EBCE| db $B9 ; play note A5
|1B9BD3:EBCF| db $C9 ; rest
|1B9BD4:EBD0| db $B8 ; play note G#5

;---------------------------------------------------------------------------------------------------

Song15_Segment2_Track4:
|1B9BD5:EBD1| db $ED, $AA ; set channel volume
|1B9BD7:EBD3| db $E0, $14 ; set instrument - snare B
|1B9BD9:EBD5| db $04, $6D ; duration, params
|1B9BDB:EBD7| db $A8 ; play note E4
|1B9BDC:EBD8| db $A8 ; play note E4
|1B9BDD:EBD9| db $A8 ; play note E4
|1B9BDE:EBDA| db $0C ; duration
|1B9BDF:EBDB| db $A8 ; play note E4
|1B9BE0:EBDC| db $06 ; duration
|1B9BE1:EBDD| db $A8 ; play note E4
|1B9BE2:EBDE| db $A8 ; play note E4
|1B9BE3:EBDF| db $0C ; duration
|1B9BE4:EBE0| db $A8 ; play note E4
|1B9BE5:EBE1| db $A8 ; play note E4
|1B9BE6:EBE2| db $A8 ; play note E4
|1B9BE7:EBE3| db $04 ; duration
|1B9BE8:EBE4| db $A8 ; play note E4
|1B9BE9:EBE5| db $A8 ; play note E4
|1B9BEA:EBE6| db $A8 ; play note E4
|1B9BEB:EBE7| db $0C ; duration
|1B9BEC:EBE8| db $A8 ; play note E4
|1B9BED:EBE9| db $EF : dw Song15_Sub_EBF7 : db $03 ; call segment subroutine
|1B9BF1:EBED| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song15_Sub_EBEE:
|1B9BF2:EBEE| db $8E ; play note D2
|1B9BF3:EBEF| db $89 ; play note A1
|1B9BF4:EBF0| db $8E ; play note D2
|1B9BF5:EBF1| db $89 ; play note A1
|1B9BF6:EBF2| db $8E ; play note D2
|1B9BF7:EBF3| db $89 ; play note A1
|1B9BF8:EBF4| db $8E ; play note D2
|1B9BF9:EBF5| db $89 ; play note A1
|1B9BFA:EBF6| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song15_Sub_EBF7:
|1B9BFB:EBF7| db $04 ; duration
|1B9BFC:EBF8| db $A8 ; play note E4
|1B9BFD:EBF9| db $A8 ; play note E4
|1B9BFE:EBFA| db $A8 ; play note E4
|1B9BFF:EBFB| db $0C ; duration
|1B9C00:EBFC| db $A8 ; play note E4
|1B9C01:EBFD| db $06 ; duration
|1B9C02:EBFE| db $A8 ; play note E4
|1B9C03:EBFF| db $A8 ; play note E4
|1B9C04:EC00| db $0C ; duration
|1B9C05:EC01| db $A8 ; play note E4
|1B9C06:EC02| db $A8 ; play note E4
|1B9C07:EC03| db $A8 ; play note E4
|1B9C08:EC04| db $04 ; duration
|1B9C09:EC05| db $A8 ; play note E4
|1B9C0A:EC06| db $A8 ; play note E4
|1B9C0B:EC07| db $A8 ; play note E4
|1B9C0C:EC08| db $0C ; duration
|1B9C0D:EC09| db $A8 ; play note E4
|1B9C0E:EC0A| db $00 ; End

;===================================================================================================

Song16_CrystalDungeon:
|1B9C0F:EC0B| dw Song16_Segment0

Song16_Loop:
|1B9C11:EC0D| dw Song16_Segment1
|1B9C13:EC0F| dw Song16_Segment2
|1B9C15:EC11| dw Song16_Segment3
|1B9C17:EC13| dw Song16_Segment4
|1B9C19:EC15| dw Song16_Segment5
|1B9C1B:EC17| dw $00FF, Song16_Loop ; Loop point
|1B9C1F:EC1B| dw $0000

Song16_Segment1:
|1B9C21:EC1D| dw Song16_Segment1_Track0
|1B9C23:EC1F| dw Song16_Segment1_Track1
|1B9C25:EC21| dw Song16_Segment1_Track2
|1B9C27:EC23| dw Song16_Segment1_Track3
|1B9C29:EC25| dw Song16_Segment1_Track4
|1B9C2B:EC27| dw $0000
|1B9C2D:EC29| dw $0000
|1B9C2F:EC2B| dw $0000

Song16_Segment0:
|1B9C31:EC2D| dw Song16_Segment0_Track0
|1B9C33:EC2F| dw Song16_Segment0_Track1
|1B9C35:EC31| dw $0000
|1B9C37:EC33| dw $0000
|1B9C39:EC35| dw $0000
|1B9C3B:EC37| dw $0000
|1B9C3D:EC39| dw $0000
|1B9C3F:EC3B| dw $0000

Song16_Segment2:
|1B9C41:EC3D| dw Song16_Segment2_Track0
|1B9C43:EC3F| dw Song16_Segment2_Track1
|1B9C45:EC41| dw Song16_Segment2_Track2
|1B9C47:EC43| dw Song16_Segment2_Track3
|1B9C49:EC45| dw Song16_Segment2_Track4
|1B9C4B:EC47| dw $0000
|1B9C4D:EC49| dw $0000
|1B9C4F:EC4B| dw $0000

Song16_Segment3:
|1B9C51:EC4D| dw Song16_Segment3_Track0
|1B9C53:EC4F| dw Song16_Segment3_Track1
|1B9C55:EC51| dw Song16_Segment3_Track2
|1B9C57:EC53| dw Song16_Segment3_Track3
|1B9C59:EC55| dw Song16_Segment3_Track4
|1B9C5B:EC57| dw Song16_Segment3_Track5
|1B9C5D:EC59| dw $0000
|1B9C5F:EC5B| dw $0000

Song16_Segment4:
|1B9C61:EC5D| dw Song16_Segment4_Track0
|1B9C63:EC5F| dw Song16_Segment4_Track1
|1B9C65:EC61| dw Song16_Segment4_Track2
|1B9C67:EC63| dw Song16_Segment4_Track3
|1B9C69:EC65| dw Song16_Segment4_Track4
|1B9C6B:EC67| dw Song16_Segment4_Track5
|1B9C6D:EC69| dw $0000
|1B9C6F:EC6B| dw $0000

Song16_Segment5:
|1B9C71:EC6D| dw Song16_Segment5_Track0
|1B9C73:EC6F| dw Song16_Segment5_Track1
|1B9C75:EC71| dw Song16_Segment5_Track2
|1B9C77:EC73| dw Song16_Segment5_Track3
|1B9C79:EC75| dw Song16_Segment5_Track4
|1B9C7B:EC77| dw Song16_Segment5_Track5
|1B9C7D:EC79| dw $0000
|1B9C7F:EC7B| dw $0000

;---------------------------------------------------------------------------------------------------

Song16_Segment1_Track0:
|1B9C81:EC7D| db $E0, $09 ; set instrument - strings A
|1B9C83:EC7F| db $ED, $C8 ; set channel volume
|1B9C85:EC81| db $EF : dw Song16_Sub_EFA7 : db $01 ; call segment subroutine
|1B9C89:EC85| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Segment1_Track1:
|1B9C8A:EC86| db $E0, $09 ; set instrument - strings A
|1B9C8C:EC88| db $ED, $C8 ; set channel volume
|1B9C8E:EC8A| db $EF : dw Song16_Sub_F028 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song16_Segment1_Track2:
|1B9C92:EC8E| db $E0, $09 ; set instrument - strings A
|1B9C94:EC90| db $ED, $F0 ; set channel volume
|1B9C96:EC92| db $E1, $08 ; set panning - leaning right
|1B9C98:EC94| db $E3, $1C, $1C, $10 ; enable vibrato
|1B9C9C:EC98| db $30 ; duration
|1B9C9D:EC99| db $C9 ; rest
|1B9C9E:EC9A| db $10, $6D ; duration, params
|1B9CA0:EC9C| db $9B ; play note D#3
|1B9CA1:EC9D| db $9A ; play note D3
|1B9CA2:EC9E| db $A0 ; play note G#3
|1B9CA3:EC9F| db $EF : dw Song16_Sub_F0A9 : db $01 ; call segment subroutine
|1B9CA7:ECA3| db $60 ; duration
|1B9CA8:ECA4| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment1_Track3:
|1B9CA9:ECA5| db $E0, $09 ; set instrument - strings A
|1B9CAB:ECA7| db $ED, $C8 ; set channel volume
|1B9CAD:ECA9| db $E1, $06 ; set panning - leaning right
|1B9CAF:ECAB| db $E3, $1A, $1D, $12 ; enable vibrato
|1B9CB3:ECAF| db $EF : dw Song16_Sub_F0B5 : db $01 ; call segment subroutine
|1B9CB7:ECB3| db $60 ; duration
|1B9CB8:ECB4| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment1_Track4:
|1B9CB9:ECB5| db $E0, $09 ; set instrument - strings A
|1B9CBB:ECB7| db $ED, $B4 ; set channel volume
|1B9CBD:ECB9| db $E1, $0E ; set panning - leaning left
|1B9CBF:ECBB| db $E3, $1C, $1C, $10 ; enable vibrato
|1B9CC3:ECBF| db $38 ; duration
|1B9CC4:ECC0| db $C9 ; rest
|1B9CC5:ECC1| db $10, $6D ; duration, params
|1B9CC7:ECC3| db $9B ; play note D#3
|1B9CC8:ECC4| db $9A ; play note D3
|1B9CC9:ECC5| db $A0 ; play note G#3
|1B9CCA:ECC6| db $EF : dw Song16_Sub_F0A9 : db $01 ; call segment subroutine
|1B9CCE:ECCA| db $58 ; duration
|1B9CCF:ECCB| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment0_Track0:
|1B9CD0:ECCC| db $FA, $19 ; set base percussion sample
|1B9CD2:ECCE| db $E5, $50 ; set song volume
|1B9CD4:ECD0| db $E6, $28, $B4 ; initiate gradual song volume change
|1B9CD7:ECD3| db $E7, $1D ; set song tempo
|1B9CD9:ECD5| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1B9CDD:ECD9| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1B9CE1:ECDD| db $F8, $32, $28, $28 ; initiate gradual echo volume change
|1B9CE5:ECE1| db $E0, $09 ; set instrument - strings A
|1B9CE7:ECE3| db $ED, $C8 ; set channel volume
|1B9CE9:ECE5| db $E1, $0E ; set panning - leaning left
|1B9CEB:ECE7| db $EF : dw Song16_Sub_EFA7 : db $01 ; call segment subroutine
|1B9CEF:ECEB| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Segment0_Track1:
|1B9CF0:ECEC| db $E0, $09 ; set instrument - strings A
|1B9CF2:ECEE| db $ED, $C8 ; set channel volume
|1B9CF4:ECF0| db $E1, $0C ; set panning - leaning left
|1B9CF6:ECF2| db $EF : dw Song16_Sub_F028 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song16_Segment2_Track0:
|1B9CFA:ECF6| db $E0, $09 ; set instrument - strings A
|1B9CFC:ECF8| db $ED, $C8 ; set channel volume
|1B9CFE:ECFA| db $EF : dw Song16_Sub_EFA7 : db $01 ; call segment subroutine
|1B9D02:ECFE| db $06, $6D ; duration, params
|1B9D04:ED00| db $B3 ; play note D#5
|1B9D05:ED01| db $06, $69 ; duration, params
|1B9D07:ED03| db $B3 ; play note D#5
|1B9D08:ED04| db $B3 ; play note D#5
|1B9D09:ED05| db $B3 ; play note D#5
|1B9D0A:ED06| db $06, $6B ; duration, params
|1B9D0C:ED08| db $B3 ; play note D#5
|1B9D0D:ED09| db $06, $69 ; duration, params
|1B9D0F:ED0B| db $B3 ; play note D#5
|1B9D10:ED0C| db $B3 ; play note D#5
|1B9D11:ED0D| db $B3 ; play note D#5
|1B9D12:ED0E| db $06, $6C ; duration, params
|1B9D14:ED10| db $B3 ; play note D#5
|1B9D15:ED11| db $06, $69 ; duration, params
|1B9D17:ED13| db $B3 ; play note D#5
|1B9D18:ED14| db $B3 ; play note D#5
|1B9D19:ED15| db $B3 ; play note D#5
|1B9D1A:ED16| db $06, $6B ; duration, params
|1B9D1C:ED18| db $B3 ; play note D#5
|1B9D1D:ED19| db $06, $69 ; duration, params
|1B9D1F:ED1B| db $B3 ; play note D#5
|1B9D20:ED1C| db $B3 ; play note D#5
|1B9D21:ED1D| db $B3 ; play note D#5
|1B9D22:ED1E| db $06, $6D ; duration, params
|1B9D24:ED20| db $B5 ; play note F5
|1B9D25:ED21| db $06, $69 ; duration, params
|1B9D27:ED23| db $B5 ; play note F5
|1B9D28:ED24| db $B5 ; play note F5
|1B9D29:ED25| db $B5 ; play note F5
|1B9D2A:ED26| db $06, $6B ; duration, params
|1B9D2C:ED28| db $B5 ; play note F5
|1B9D2D:ED29| db $06, $69 ; duration, params
|1B9D2F:ED2B| db $B5 ; play note F5
|1B9D30:ED2C| db $B5 ; play note F5
|1B9D31:ED2D| db $B5 ; play note F5
|1B9D32:ED2E| db $06, $6C ; duration, params
|1B9D34:ED30| db $B5 ; play note F5
|1B9D35:ED31| db $06, $69 ; duration, params
|1B9D37:ED33| db $B5 ; play note F5
|1B9D38:ED34| db $B5 ; play note F5
|1B9D39:ED35| db $B5 ; play note F5
|1B9D3A:ED36| db $06, $6B ; duration, params
|1B9D3C:ED38| db $B5 ; play note F5
|1B9D3D:ED39| db $06, $69 ; duration, params
|1B9D3F:ED3B| db $B5 ; play note F5
|1B9D40:ED3C| db $B5 ; play note F5
|1B9D41:ED3D| db $B5 ; play note F5
|1B9D42:ED3E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Segment2_Track1:
|1B9D43:ED3F| db $E0, $09 ; set instrument - strings A
|1B9D45:ED41| db $ED, $C8 ; set channel volume
|1B9D47:ED43| db $EF : dw Song16_Sub_F028 : db $01 ; call segment subroutine
|1B9D4B:ED47| db $06, $6D ; duration, params
|1B9D4D:ED49| db $AD ; play note A4
|1B9D4E:ED4A| db $06, $69 ; duration, params
|1B9D50:ED4C| db $AD ; play note A4
|1B9D51:ED4D| db $AD ; play note A4
|1B9D52:ED4E| db $AD ; play note A4
|1B9D53:ED4F| db $06, $6B ; duration, params
|1B9D55:ED51| db $AD ; play note A4
|1B9D56:ED52| db $06, $69 ; duration, params
|1B9D58:ED54| db $AD ; play note A4
|1B9D59:ED55| db $AD ; play note A4
|1B9D5A:ED56| db $AD ; play note A4
|1B9D5B:ED57| db $06, $6C ; duration, params
|1B9D5D:ED59| db $AD ; play note A4
|1B9D5E:ED5A| db $06, $69 ; duration, params
|1B9D60:ED5C| db $AD ; play note A4
|1B9D61:ED5D| db $AD ; play note A4
|1B9D62:ED5E| db $AD ; play note A4
|1B9D63:ED5F| db $06, $6B ; duration, params
|1B9D65:ED61| db $AD ; play note A4
|1B9D66:ED62| db $06, $69 ; duration, params
|1B9D68:ED64| db $AD ; play note A4
|1B9D69:ED65| db $AD ; play note A4
|1B9D6A:ED66| db $AD ; play note A4
|1B9D6B:ED67| db $06, $6D ; duration, params
|1B9D6D:ED69| db $AF ; play note B4
|1B9D6E:ED6A| db $06, $69 ; duration, params
|1B9D70:ED6C| db $AF ; play note B4
|1B9D71:ED6D| db $AF ; play note B4
|1B9D72:ED6E| db $AF ; play note B4
|1B9D73:ED6F| db $06, $6B ; duration, params
|1B9D75:ED71| db $AF ; play note B4
|1B9D76:ED72| db $06, $69 ; duration, params
|1B9D78:ED74| db $AF ; play note B4
|1B9D79:ED75| db $AF ; play note B4
|1B9D7A:ED76| db $AF ; play note B4
|1B9D7B:ED77| db $06, $6C ; duration, params
|1B9D7D:ED79| db $AF ; play note B4
|1B9D7E:ED7A| db $06, $69 ; duration, params
|1B9D80:ED7C| db $AF ; play note B4
|1B9D81:ED7D| db $AF ; play note B4
|1B9D82:ED7E| db $AF ; play note B4
|1B9D83:ED7F| db $06, $6B ; duration, params
|1B9D85:ED81| db $AF ; play note B4
|1B9D86:ED82| db $06, $69 ; duration, params
|1B9D88:ED84| db $AF ; play note B4
|1B9D89:ED85| db $AF ; play note B4
|1B9D8A:ED86| db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song16_Segment2_Track2:
|1B9D8B:ED87| db $30 ; duration
|1B9D8C:ED88| db $C9 ; rest
|1B9D8D:ED89| db $10, $6D ; duration, params
|1B9D8F:ED8B| db $9B ; play note D#3
|1B9D90:ED8C| db $9A ; play note D3
|1B9D91:ED8D| db $A0 ; play note G#3
|1B9D92:ED8E| db $EF : dw Song16_Sub_F0A9 : db $01 ; call segment subroutine
|1B9D96:ED92| db $EF : dw Song16_Sub_F0C8 : db $01 ; call segment subroutine
|1B9D9A:ED96| db $60 ; duration
|1B9D9B:ED97| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment2_Track3:
|1B9D9C:ED98| db $EF : dw Song16_Sub_F0B5 : db $01 ; call segment subroutine
|1B9DA0:ED9C| db $48 ; duration
|1B9DA1:ED9D| db $C8 ; sustain current note
|1B9DA2:ED9E| db $0C ; duration
|1B9DA3:ED9F| db $94 ; play note G#2
|1B9DA4:EDA0| db $93 ; play note G2
|1B9DA5:EDA1| db $48 ; duration
|1B9DA6:EDA2| db $C8 ; sustain current note
|1B9DA7:EDA3| db $0C ; duration
|1B9DA8:EDA4| db $96 ; play note A#2
|1B9DA9:EDA5| db $95 ; play note A2
|1B9DAA:EDA6| db $60 ; duration
|1B9DAB:EDA7| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment2_Track4:
|1B9DAC:EDA8| db $38 ; duration
|1B9DAD:EDA9| db $C9 ; rest
|1B9DAE:EDAA| db $10, $6D ; duration, params
|1B9DB0:EDAC| db $9B ; play note D#3
|1B9DB1:EDAD| db $9A ; play note D3
|1B9DB2:EDAE| db $A0 ; play note G#3
|1B9DB3:EDAF| db $EF : dw Song16_Sub_F0A9 : db $01 ; call segment subroutine
|1B9DB7:EDB3| db $EF : dw Song16_Sub_F0C8 : db $01 ; call segment subroutine
|1B9DBB:EDB7| db $58 ; duration
|1B9DBC:EDB8| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment3_Track0:
|1B9DBD:EDB9| db $E0, $09 ; set instrument - strings A
|1B9DBF:EDBB| db $ED, $B4 ; set channel volume
|1B9DC1:EDBD| db $06, $6D ; duration, params
|1B9DC3:EDBF| db $B3 ; play note D#5
|1B9DC4:EDC0| db $06, $69 ; duration, params
|1B9DC6:EDC2| db $B3 ; play note D#5
|1B9DC7:EDC3| db $B3 ; play note D#5
|1B9DC8:EDC4| db $B3 ; play note D#5
|1B9DC9:EDC5| db $06, $6B ; duration, params
|1B9DCB:EDC7| db $B3 ; play note D#5
|1B9DCC:EDC8| db $06, $69 ; duration, params
|1B9DCE:EDCA| db $B3 ; play note D#5
|1B9DCF:EDCB| db $B3 ; play note D#5
|1B9DD0:EDCC| db $B3 ; play note D#5
|1B9DD1:EDCD| db $06, $6C ; duration, params
|1B9DD3:EDCF| db $B3 ; play note D#5
|1B9DD4:EDD0| db $06, $69 ; duration, params
|1B9DD6:EDD2| db $B3 ; play note D#5
|1B9DD7:EDD3| db $B3 ; play note D#5
|1B9DD8:EDD4| db $B3 ; play note D#5
|1B9DD9:EDD5| db $06, $6B ; duration, params
|1B9DDB:EDD7| db $B3 ; play note D#5
|1B9DDC:EDD8| db $06, $69 ; duration, params
|1B9DDE:EDDA| db $B3 ; play note D#5
|1B9DDF:EDDB| db $B3 ; play note D#5
|1B9DE0:EDDC| db $B3 ; play note D#5
|1B9DE1:EDDD| db $06, $6D ; duration, params
|1B9DE3:EDDF| db $B2 ; play note D5
|1B9DE4:EDE0| db $06, $69 ; duration, params
|1B9DE6:EDE2| db $B2 ; play note D5
|1B9DE7:EDE3| db $B2 ; play note D5
|1B9DE8:EDE4| db $B2 ; play note D5
|1B9DE9:EDE5| db $06, $6B ; duration, params
|1B9DEB:EDE7| db $B2 ; play note D5
|1B9DEC:EDE8| db $06, $69 ; duration, params
|1B9DEE:EDEA| db $B2 ; play note D5
|1B9DEF:EDEB| db $B2 ; play note D5
|1B9DF0:EDEC| db $B2 ; play note D5
|1B9DF1:EDED| db $06, $6C ; duration, params
|1B9DF3:EDEF| db $B2 ; play note D5
|1B9DF4:EDF0| db $06, $69 ; duration, params
|1B9DF6:EDF2| db $B2 ; play note D5
|1B9DF7:EDF3| db $B2 ; play note D5
|1B9DF8:EDF4| db $B2 ; play note D5
|1B9DF9:EDF5| db $06, $6B ; duration, params
|1B9DFB:EDF7| db $B2 ; play note D5
|1B9DFC:EDF8| db $06, $69 ; duration, params
|1B9DFE:EDFA| db $B2 ; play note D5
|1B9DFF:EDFB| db $B2 ; play note D5
|1B9E00:EDFC| db $B2 ; play note D5
|1B9E01:EDFD| db $06, $6D ; duration, params
|1B9E03:EDFF| db $B1 ; play note C#5
|1B9E04:EE00| db $06, $69 ; duration, params
|1B9E06:EE02| db $B1 ; play note C#5
|1B9E07:EE03| db $B1 ; play note C#5
|1B9E08:EE04| db $B1 ; play note C#5
|1B9E09:EE05| db $06, $6B ; duration, params
|1B9E0B:EE07| db $B1 ; play note C#5
|1B9E0C:EE08| db $06, $69 ; duration, params
|1B9E0E:EE0A| db $B1 ; play note C#5
|1B9E0F:EE0B| db $B1 ; play note C#5
|1B9E10:EE0C| db $B1 ; play note C#5
|1B9E11:EE0D| db $06, $6C ; duration, params
|1B9E13:EE0F| db $B1 ; play note C#5
|1B9E14:EE10| db $06, $69 ; duration, params
|1B9E16:EE12| db $B1 ; play note C#5
|1B9E17:EE13| db $B1 ; play note C#5
|1B9E18:EE14| db $B1 ; play note C#5
|1B9E19:EE15| db $06, $6B ; duration, params
|1B9E1B:EE17| db $B1 ; play note C#5
|1B9E1C:EE18| db $B1 ; play note C#5
|1B9E1D:EE19| db $B1 ; play note C#5
|1B9E1E:EE1A| db $06, $69 ; duration, params
|1B9E20:EE1C| db $B1 ; play note C#5
|1B9E21:EE1D| db $06, $6D ; duration, params
|1B9E23:EE1F| db $B0 ; play note C5
|1B9E24:EE20| db $06, $69 ; duration, params
|1B9E26:EE22| db $B0 ; play note C5
|1B9E27:EE23| db $B0 ; play note C5
|1B9E28:EE24| db $B0 ; play note C5
|1B9E29:EE25| db $06, $6B ; duration, params
|1B9E2B:EE27| db $B0 ; play note C5
|1B9E2C:EE28| db $06, $69 ; duration, params
|1B9E2E:EE2A| db $B0 ; play note C5
|1B9E2F:EE2B| db $B0 ; play note C5
|1B9E30:EE2C| db $B0 ; play note C5
|1B9E31:EE2D| db $06, $6C ; duration, params
|1B9E33:EE2F| db $B0 ; play note C5
|1B9E34:EE30| db $06, $69 ; duration, params
|1B9E36:EE32| db $B0 ; play note C5
|1B9E37:EE33| db $B0 ; play note C5
|1B9E38:EE34| db $B0 ; play note C5
|1B9E39:EE35| db $06, $6B ; duration, params
|1B9E3B:EE37| db $B0 ; play note C5
|1B9E3C:EE38| db $06, $69 ; duration, params
|1B9E3E:EE3A| db $B0 ; play note C5
|1B9E3F:EE3B| db $B0 ; play note C5
|1B9E40:EE3C| db $B0 ; play note C5
|1B9E41:EE3D| db $EF : dw Song16_Sub_F0D3 : db $04 ; call segment subroutine
|1B9E45:EE41| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Segment3_Track1:
|1B9E46:EE42| db $E0, $09 ; set instrument - strings A
|1B9E48:EE44| db $ED, $B4 ; set channel volume
|1B9E4A:EE46| db $06, $6D ; duration, params
|1B9E4C:EE48| db $AD ; play note A4
|1B9E4D:EE49| db $06, $69 ; duration, params
|1B9E4F:EE4B| db $AD ; play note A4
|1B9E50:EE4C| db $AD ; play note A4
|1B9E51:EE4D| db $AD ; play note A4
|1B9E52:EE4E| db $06, $6B ; duration, params
|1B9E54:EE50| db $AD ; play note A4
|1B9E55:EE51| db $06, $69 ; duration, params
|1B9E57:EE53| db $AD ; play note A4
|1B9E58:EE54| db $AD ; play note A4
|1B9E59:EE55| db $AD ; play note A4
|1B9E5A:EE56| db $06, $6C ; duration, params
|1B9E5C:EE58| db $AD ; play note A4
|1B9E5D:EE59| db $06, $69 ; duration, params
|1B9E5F:EE5B| db $AD ; play note A4
|1B9E60:EE5C| db $AD ; play note A4
|1B9E61:EE5D| db $AD ; play note A4
|1B9E62:EE5E| db $06, $6B ; duration, params
|1B9E64:EE60| db $AD ; play note A4
|1B9E65:EE61| db $06, $69 ; duration, params
|1B9E67:EE63| db $AD ; play note A4
|1B9E68:EE64| db $AD ; play note A4
|1B9E69:EE65| db $AD ; play note A4
|1B9E6A:EE66| db $EF : dw Song16_Sub_F0E4 : db $01 ; call segment subroutine
|1B9E6E:EE6A| db $06, $6D ; duration, params
|1B9E70:EE6C| db $AA ; play note F#4
|1B9E71:EE6D| db $06, $69 ; duration, params
|1B9E73:EE6F| db $AA ; play note F#4
|1B9E74:EE70| db $AA ; play note F#4
|1B9E75:EE71| db $AA ; play note F#4
|1B9E76:EE72| db $06, $6B ; duration, params
|1B9E78:EE74| db $AA ; play note F#4
|1B9E79:EE75| db $06, $69 ; duration, params
|1B9E7B:EE77| db $AA ; play note F#4
|1B9E7C:EE78| db $AA ; play note F#4
|1B9E7D:EE79| db $AA ; play note F#4
|1B9E7E:EE7A| db $AA ; play note F#4
|1B9E7F:EE7B| db $AA ; play note F#4
|1B9E80:EE7C| db $AA ; play note F#4
|1B9E81:EE7D| db $AA ; play note F#4
|1B9E82:EE7E| db $06, $6B ; duration, params
|1B9E84:EE80| db $AA ; play note F#4
|1B9E85:EE81| db $06, $69 ; duration, params
|1B9E87:EE83| db $AA ; play note F#4
|1B9E88:EE84| db $AA ; play note F#4
|1B9E89:EE85| db $AA ; play note F#4
|1B9E8A:EE86| db $EF : dw Song16_Sub_F125 : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song16_Segment3_Track2:
|1B9E8E:EE8A| db $30 ; duration
|1B9E8F:EE8B| db $C9 ; rest
|1B9E90:EE8C| db $10, $6D ; duration, params
|1B9E92:EE8E| db $9F ; play note G3
|1B9E93:EE8F| db $9E ; play note F#3
|1B9E94:EE90| db $A4 ; play note C4
|1B9E95:EE91| db $EF : dw Song16_Sub_F136 : db $01 ; call segment subroutine
|1B9E99:EE95| db $60 ; duration
|1B9E9A:EE96| db $C8 ; sustain current note
|1B9E9B:EE97| db $18 ; duration
|1B9E9C:EE98| db $C8 ; sustain current note
|1B9E9D:EE99| db $0C ; duration
|1B9E9E:EE9A| db $A6 ; play note D4
|1B9E9F:EE9B| db $A5 ; play note C#4
|1B9EA0:EE9C| db $30 ; duration
|1B9EA1:EE9D| db $C8 ; sustain current note
|1B9EA2:EE9E| db $60 ; duration
|1B9EA3:EE9F| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment3_Track3:
|1B9EA4:EEA0| db $30 ; duration
|1B9EA5:EEA1| db $C9 ; rest
|1B9EA6:EEA2| db $10, $6D ; duration, params
|1B9EA8:EEA4| db $93 ; play note G2
|1B9EA9:EEA5| db $92 ; play note F#2
|1B9EAA:EEA6| db $98 ; play note C3
|1B9EAB:EEA7| db $30 ; duration
|1B9EAC:EEA8| db $97 ; play note B2
|1B9EAD:EEA9| db $24 ; duration
|1B9EAE:EEAA| db $91 ; play note F2
|1B9EAF:EEAB| db $0C ; duration
|1B9EB0:EEAC| db $90 ; play note E2
|1B9EB1:EEAD| db $30 ; duration
|1B9EB2:EEAE| db $C8 ; sustain current note
|1B9EB3:EEAF| db $10 ; duration
|1B9EB4:EEB0| db $90 ; play note E2
|1B9EB5:EEB1| db $8F ; play note D#2
|1B9EB6:EEB2| db $96 ; play note A#2
|1B9EB7:EEB3| db $30 ; duration
|1B9EB8:EEB4| db $95 ; play note A2
|1B9EB9:EEB5| db $24 ; duration
|1B9EBA:EEB6| db $8F ; play note D#2
|1B9EBB:EEB7| db $0C ; duration
|1B9EBC:EEB8| db $8E ; play note D2
|1B9EBD:EEB9| db $60 ; duration
|1B9EBE:EEBA| db $C8 ; sustain current note
|1B9EBF:EEBB| db $18 ; duration
|1B9EC0:EEBC| db $C8 ; sustain current note
|1B9EC1:EEBD| db $0C ; duration
|1B9EC2:EEBE| db $9D ; play note F3
|1B9EC3:EEBF| db $9C ; play note E3
|1B9EC4:EEC0| db $30 ; duration
|1B9EC5:EEC1| db $C8 ; sustain current note
|1B9EC6:EEC2| db $48 ; duration
|1B9EC7:EEC3| db $C8 ; sustain current note
|1B9EC8:EEC4| db $0C ; duration
|1B9EC9:EEC5| db $A9 ; play note F4
|1B9ECA:EEC6| db $A8 ; play note E4
|1B9ECB:EEC7| db $60 ; duration
|1B9ECC:EEC8| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment3_Track4:
|1B9ECD:EEC9| db $38 ; duration
|1B9ECE:EECA| db $C9 ; rest
|1B9ECF:EECB| db $10, $6D ; duration, params
|1B9ED1:EECD| db $9F ; play note G3
|1B9ED2:EECE| db $9E ; play note F#3
|1B9ED3:EECF| db $A4 ; play note C4
|1B9ED4:EED0| db $EF : dw Song16_Sub_F136 : db $01 ; call segment subroutine
|1B9ED8:EED4| db $60 ; duration
|1B9ED9:EED5| db $C8 ; sustain current note
|1B9EDA:EED6| db $18 ; duration
|1B9EDB:EED7| db $C8 ; sustain current note
|1B9EDC:EED8| db $0C ; duration
|1B9EDD:EED9| db $A6 ; play note D4
|1B9EDE:EEDA| db $A5 ; play note C#4
|1B9EDF:EEDB| db $30 ; duration
|1B9EE0:EEDC| db $C8 ; sustain current note
|1B9EE1:EEDD| db $58 ; duration
|1B9EE2:EEDE| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment3_Track5:
|1B9EE3:EEDF| db $E0, $09 ; set instrument - strings A
|1B9EE5:EEE1| db $ED, $F0 ; set channel volume
|1B9EE7:EEE3| db $E1, $08 ; set panning - leaning right
|1B9EE9:EEE5| db $E3, $1C, $1C, $10 ; enable vibrato
|1B9EED:EEE9| db $60 ; duration
|1B9EEE:EEEA| db $C9 ; rest
|1B9EEF:EEEB| db $C9 ; rest
|1B9EF0:EEEC| db $C9 ; rest
|1B9EF1:EEED| db $C9 ; rest
|1B9EF2:EEEE| db $C9 ; rest
|1B9EF3:EEEF| db $48, $6D ; duration, params
|1B9EF5:EEF1| db $C8 ; sustain current note
|1B9EF6:EEF2| db $0C ; duration
|1B9EF7:EEF3| db $A0 ; play note G#3
|1B9EF8:EEF4| db $9F ; play note G3
|1B9EF9:EEF5| db $60 ; duration
|1B9EFA:EEF6| db $C8 ; sustain current note
|1B9EFB:EEF7| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment4_Track0:
|1B9EFC:EEF8| db $06, $69 ; duration, params
|1B9EFE:EEFA| db $AE ; play note A#4
|1B9EFF:EEFB| db $AE ; play note A#4
|1B9F00:EEFC| db $AE ; play note A#4
|1B9F01:EEFD| db $AE ; play note A#4
|1B9F02:EEFE| db $AE ; play note A#4
|1B9F03:EEFF| db $AE ; play note A#4
|1B9F04:EF00| db $AE ; play note A#4
|1B9F05:EF01| db $AE ; play note A#4
|1B9F06:EF02| db $AE ; play note A#4
|1B9F07:EF03| db $AE ; play note A#4
|1B9F08:EF04| db $AE ; play note A#4
|1B9F09:EF05| db $AE ; play note A#4
|1B9F0A:EF06| db $AE ; play note A#4
|1B9F0B:EF07| db $AE ; play note A#4
|1B9F0C:EF08| db $AE ; play note A#4
|1B9F0D:EF09| db $AE ; play note A#4
|1B9F0E:EF0A| db $EF : dw Song16_Sub_F14E : db $03 ; call segment subroutine
|1B9F12:EF0E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Segment4_Track1:
|1B9F13:EF0F| db $06, $69 ; duration, params
|1B9F15:EF11| db $A8 ; play note E4
|1B9F16:EF12| db $A8 ; play note E4
|1B9F17:EF13| db $A8 ; play note E4
|1B9F18:EF14| db $A8 ; play note E4
|1B9F19:EF15| db $A8 ; play note E4
|1B9F1A:EF16| db $A8 ; play note E4
|1B9F1B:EF17| db $A8 ; play note E4
|1B9F1C:EF18| db $A8 ; play note E4
|1B9F1D:EF19| db $A8 ; play note E4
|1B9F1E:EF1A| db $A8 ; play note E4
|1B9F1F:EF1B| db $A8 ; play note E4
|1B9F20:EF1C| db $A8 ; play note E4
|1B9F21:EF1D| db $A8 ; play note E4
|1B9F22:EF1E| db $A8 ; play note E4
|1B9F23:EF1F| db $A8 ; play note E4
|1B9F24:EF20| db $A8 ; play note E4
|1B9F25:EF21| db $EF : dw Song16_Sub_F15F : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song16_Segment4_Track2:
|1B9F29:EF25| db $30, $6D ; duration, params
|1B9F2B:EF27| db $C8 ; sustain current note
|1B9F2C:EF28| db $0C ; duration
|1B9F2D:EF29| db $99 ; play note C#3
|1B9F2E:EF2A| db $24 ; duration
|1B9F2F:EF2B| db $98 ; play note C3
|1B9F30:EF2C| db $60 ; duration
|1B9F31:EF2D| db $C8 ; sustain current note
|1B9F32:EF2E| db $0C ; duration
|1B9F33:EF2F| db $A5 ; play note C#4
|1B9F34:EF30| db $A4 ; play note C4
|1B9F35:EF31| db $48 ; duration
|1B9F36:EF32| db $C8 ; sustain current note
|1B9F37:EF33| db $60 ; duration
|1B9F38:EF34| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment4_Track3:
|1B9F39:EF35| db $60, $68 ; duration, params
|1B9F3B:EF37| db $C8 ; sustain current note
|1B9F3C:EF38| db $0C, $6D ; duration, params
|1B9F3E:EF3A| db $9C ; play note E3
|1B9F3F:EF3B| db $9B ; play note D#3
|1B9F40:EF3C| db $48 ; duration
|1B9F41:EF3D| db $C8 ; sustain current note
|1B9F42:EF3E| db $30 ; duration
|1B9F43:EF3F| db $C8 ; sustain current note
|1B9F44:EF40| db $0C ; duration
|1B9F45:EF41| db $A8 ; play note E4
|1B9F46:EF42| db $A7 ; play note D#4
|1B9F47:EF43| db $18 ; duration
|1B9F48:EF44| db $C8 ; sustain current note
|1B9F49:EF45| db $60 ; duration
|1B9F4A:EF46| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment4_Track4:
|1B9F4B:EF47| db $38, $6D ; duration, params
|1B9F4D:EF49| db $C8 ; sustain current note
|1B9F4E:EF4A| db $0C ; duration
|1B9F4F:EF4B| db $99 ; play note C#3
|1B9F50:EF4C| db $98 ; play note C3
|1B9F51:EF4D| db $18 ; duration
|1B9F52:EF4E| db $C8 ; sustain current note
|1B9F53:EF4F| db $60 ; duration
|1B9F54:EF50| db $C8 ; sustain current note
|1B9F55:EF51| db $0C ; duration
|1B9F56:EF52| db $A5 ; play note C#4
|1B9F57:EF53| db $A4 ; play note C4
|1B9F58:EF54| db $48 ; duration
|1B9F59:EF55| db $C8 ; sustain current note
|1B9F5A:EF56| db $58 ; duration
|1B9F5B:EF57| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment4_Track5:
|1B9F5C:EF58| db $60, $68 ; duration, params
|1B9F5E:EF5A| db $C8 ; sustain current note
|1B9F5F:EF5B| db $30 ; duration
|1B9F60:EF5C| db $C8 ; sustain current note
|1B9F61:EF5D| db $0C, $6D ; duration, params
|1B9F63:EF5F| db $9F ; play note G3
|1B9F64:EF60| db $9E ; play note F#3
|1B9F65:EF61| db $18 ; duration
|1B9F66:EF62| db $C8 ; sustain current note
|1B9F67:EF63| db $60 ; duration
|1B9F68:EF64| db $C8 ; sustain current note
|1B9F69:EF65| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment5_Track0:
|1B9F6A:EF66| db $06, $6B ; duration, params
|1B9F6C:EF68| db $AF ; play note B4
|1B9F6D:EF69| db $AF ; play note B4
|1B9F6E:EF6A| db $AF ; play note B4
|1B9F6F:EF6B| db $AF ; play note B4
|1B9F70:EF6C| db $AF ; play note B4
|1B9F71:EF6D| db $AF ; play note B4
|1B9F72:EF6E| db $06, $69 ; duration, params
|1B9F74:EF70| db $AF ; play note B4
|1B9F75:EF71| db $AF ; play note B4
|1B9F76:EF72| db $06, $6C ; duration, params
|1B9F78:EF74| db $AF ; play note B4
|1B9F79:EF75| db $06, $69 ; duration, params
|1B9F7B:EF77| db $AF ; play note B4
|1B9F7C:EF78| db $AF ; play note B4
|1B9F7D:EF79| db $AF ; play note B4
|1B9F7E:EF7A| db $06, $6B ; duration, params
|1B9F80:EF7C| db $AF ; play note B4
|1B9F81:EF7D| db $06, $69 ; duration, params
|1B9F83:EF7F| db $AF ; play note B4
|1B9F84:EF80| db $AF ; play note B4
|1B9F85:EF81| db $AF ; play note B4
|1B9F86:EF82| db $EF : dw Song16_Sub_F170 : db $01 ; call segment subroutine
|1B9F8A:EF86| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Segment5_Track1:
|1B9F8B:EF87| db $EF : dw Song16_Sub_F028 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song16_Segment5_Track2:
|1B9F8F:EF8B| db $60, $7D ; duration, params
|1B9F91:EF8D| db $A8 ; play note E4
|1B9F92:EF8E| db $C8 ; sustain current note
|1B9F93:EF8F| db $C8 ; sustain current note
|1B9F94:EF90| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment5_Track3:
|1B9F95:EF91| db $60, $6D ; duration, params
|1B9F97:EF93| db $99 ; play note C#3
|1B9F98:EF94| db $C8 ; sustain current note
|1B9F99:EF95| db $C8 ; sustain current note
|1B9F9A:EF96| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment5_Track4:
|1B9F9B:EF97| db $08 ; duration
|1B9F9C:EF98| db $C9 ; rest
|1B9F9D:EF99| db $58, $7D ; duration, params
|1B9F9F:EF9B| db $A8 ; play note E4
|1B9FA0:EF9C| db $60 ; duration
|1B9FA1:EF9D| db $C8 ; sustain current note
|1B9FA2:EF9E| db $C8 ; sustain current note
|1B9FA3:EF9F| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment5_Track5:
|1B9FA4:EFA0| db $60, $6D ; duration, params
|1B9FA6:EFA2| db $9F ; play note G3
|1B9FA7:EFA3| db $C8 ; sustain current note
|1B9FA8:EFA4| db $C8 ; sustain current note
|1B9FA9:EFA5| db $C8 ; sustain current note
|1B9FAA:EFA6| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_EFA7:
|1B9FAB:EFA7| db $06, $6D ; duration, params
|1B9FAD:EFA9| db $AF ; play note B4
|1B9FAE:EFAA| db $06, $69 ; duration, params
|1B9FB0:EFAC| db $AF ; play note B4
|1B9FB1:EFAD| db $AF ; play note B4
|1B9FB2:EFAE| db $AF ; play note B4
|1B9FB3:EFAF| db $06, $6B ; duration, params
|1B9FB5:EFB1| db $AF ; play note B4
|1B9FB6:EFB2| db $06, $69 ; duration, params
|1B9FB8:EFB4| db $AF ; play note B4
|1B9FB9:EFB5| db $AF ; play note B4
|1B9FBA:EFB6| db $AF ; play note B4
|1B9FBB:EFB7| db $06, $6C ; duration, params
|1B9FBD:EFB9| db $AF ; play note B4
|1B9FBE:EFBA| db $06, $69 ; duration, params
|1B9FC0:EFBC| db $AF ; play note B4
|1B9FC1:EFBD| db $AF ; play note B4
|1B9FC2:EFBE| db $AF ; play note B4
|1B9FC3:EFBF| db $06, $6B ; duration, params
|1B9FC5:EFC1| db $AF ; play note B4
|1B9FC6:EFC2| db $06, $69 ; duration, params
|1B9FC8:EFC4| db $AF ; play note B4
|1B9FC9:EFC5| db $AF ; play note B4
|1B9FCA:EFC6| db $AF ; play note B4
|1B9FCB:EFC7| db $06, $6D ; duration, params
|1B9FCD:EFC9| db $AE ; play note A#4
|1B9FCE:EFCA| db $06, $69 ; duration, params
|1B9FD0:EFCC| db $AE ; play note A#4
|1B9FD1:EFCD| db $AE ; play note A#4
|1B9FD2:EFCE| db $AE ; play note A#4
|1B9FD3:EFCF| db $06, $6B ; duration, params
|1B9FD5:EFD1| db $AE ; play note A#4
|1B9FD6:EFD2| db $06, $69 ; duration, params
|1B9FD8:EFD4| db $AE ; play note A#4
|1B9FD9:EFD5| db $AE ; play note A#4
|1B9FDA:EFD6| db $AE ; play note A#4
|1B9FDB:EFD7| db $06, $6C ; duration, params
|1B9FDD:EFD9| db $AE ; play note A#4
|1B9FDE:EFDA| db $06, $69 ; duration, params
|1B9FE0:EFDC| db $AE ; play note A#4
|1B9FE1:EFDD| db $AE ; play note A#4
|1B9FE2:EFDE| db $AE ; play note A#4
|1B9FE3:EFDF| db $06, $6B ; duration, params
|1B9FE5:EFE1| db $AE ; play note A#4
|1B9FE6:EFE2| db $06, $69 ; duration, params
|1B9FE8:EFE4| db $AE ; play note A#4
|1B9FE9:EFE5| db $AE ; play note A#4
|1B9FEA:EFE6| db $AE ; play note A#4
|1B9FEB:EFE7| db $06, $6D ; duration, params
|1B9FED:EFE9| db $B2 ; play note D5
|1B9FEE:EFEA| db $06, $69 ; duration, params
|1B9FF0:EFEC| db $B2 ; play note D5
|1B9FF1:EFED| db $B2 ; play note D5
|1B9FF2:EFEE| db $B2 ; play note D5
|1B9FF3:EFEF| db $06, $6B ; duration, params
|1B9FF5:EFF1| db $B2 ; play note D5
|1B9FF6:EFF2| db $06, $69 ; duration, params
|1B9FF8:EFF4| db $B2 ; play note D5
|1B9FF9:EFF5| db $B2 ; play note D5
|1B9FFA:EFF6| db $B2 ; play note D5
|1B9FFB:EFF7| db $06, $6C ; duration, params
|1B9FFD:EFF9| db $B2 ; play note D5
|1B9FFE:EFFA| db $06, $69 ; duration, params
|1BA000:EFFC| db $B2 ; play note D5
|1BA001:EFFD| db $B2 ; play note D5
|1BA002:EFFE| db $B2 ; play note D5
|1BA003:EFFF| db $06, $6B ; duration, params
|1BA005:F001| db $B2 ; play note D5
|1BA006:F002| db $06, $69 ; duration, params
|1BA008:F004| db $B2 ; play note D5
|1BA009:F005| db $B2 ; play note D5
|1BA00A:F006| db $B2 ; play note D5
|1BA00B:F007| db $06, $6D ; duration, params
|1BA00D:F009| db $B1 ; play note C#5
|1BA00E:F00A| db $06, $69 ; duration, params
|1BA010:F00C| db $B1 ; play note C#5
|1BA011:F00D| db $B1 ; play note C#5
|1BA012:F00E| db $B1 ; play note C#5
|1BA013:F00F| db $06, $6B ; duration, params
|1BA015:F011| db $B1 ; play note C#5
|1BA016:F012| db $06, $69 ; duration, params
|1BA018:F014| db $B1 ; play note C#5
|1BA019:F015| db $B1 ; play note C#5
|1BA01A:F016| db $B1 ; play note C#5
|1BA01B:F017| db $06, $6C ; duration, params
|1BA01D:F019| db $B1 ; play note C#5
|1BA01E:F01A| db $06, $69 ; duration, params
|1BA020:F01C| db $B1 ; play note C#5
|1BA021:F01D| db $B1 ; play note C#5
|1BA022:F01E| db $B1 ; play note C#5
|1BA023:F01F| db $06, $6B ; duration, params
|1BA025:F021| db $B1 ; play note C#5
|1BA026:F022| db $06, $69 ; duration, params
|1BA028:F024| db $B1 ; play note C#5
|1BA029:F025| db $B1 ; play note C#5
|1BA02A:F026| db $B1 ; play note C#5
|1BA02B:F027| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F028:
|1BA02C:F028| db $06, $6D ; duration, params
|1BA02E:F02A| db $A9 ; play note F4
|1BA02F:F02B| db $06, $69 ; duration, params
|1BA031:F02D| db $A9 ; play note F4
|1BA032:F02E| db $A9 ; play note F4
|1BA033:F02F| db $A9 ; play note F4
|1BA034:F030| db $06, $6B ; duration, params
|1BA036:F032| db $A9 ; play note F4
|1BA037:F033| db $06, $69 ; duration, params
|1BA039:F035| db $A9 ; play note F4
|1BA03A:F036| db $A9 ; play note F4
|1BA03B:F037| db $A9 ; play note F4
|1BA03C:F038| db $06, $6C ; duration, params
|1BA03E:F03A| db $A9 ; play note F4
|1BA03F:F03B| db $06, $69 ; duration, params
|1BA041:F03D| db $A9 ; play note F4
|1BA042:F03E| db $A9 ; play note F4
|1BA043:F03F| db $A9 ; play note F4
|1BA044:F040| db $06, $6B ; duration, params
|1BA046:F042| db $A9 ; play note F4
|1BA047:F043| db $06, $69 ; duration, params
|1BA049:F045| db $A9 ; play note F4
|1BA04A:F046| db $A9 ; play note F4
|1BA04B:F047| db $A9 ; play note F4
|1BA04C:F048| db $06, $6D ; duration, params
|1BA04E:F04A| db $A8 ; play note E4
|1BA04F:F04B| db $06, $69 ; duration, params
|1BA051:F04D| db $A8 ; play note E4
|1BA052:F04E| db $A8 ; play note E4
|1BA053:F04F| db $A8 ; play note E4
|1BA054:F050| db $06, $6B ; duration, params
|1BA056:F052| db $A8 ; play note E4
|1BA057:F053| db $06, $69 ; duration, params
|1BA059:F055| db $A8 ; play note E4
|1BA05A:F056| db $A8 ; play note E4
|1BA05B:F057| db $A8 ; play note E4
|1BA05C:F058| db $06, $6C ; duration, params
|1BA05E:F05A| db $A8 ; play note E4
|1BA05F:F05B| db $06, $69 ; duration, params
|1BA061:F05D| db $A8 ; play note E4
|1BA062:F05E| db $A8 ; play note E4
|1BA063:F05F| db $A8 ; play note E4
|1BA064:F060| db $06, $6B ; duration, params
|1BA066:F062| db $A8 ; play note E4
|1BA067:F063| db $06, $69 ; duration, params
|1BA069:F065| db $A8 ; play note E4
|1BA06A:F066| db $A8 ; play note E4
|1BA06B:F067| db $A8 ; play note E4
|1BA06C:F068| db $06, $6D ; duration, params
|1BA06E:F06A| db $AC ; play note G#4
|1BA06F:F06B| db $06, $69 ; duration, params
|1BA071:F06D| db $AC ; play note G#4
|1BA072:F06E| db $AC ; play note G#4
|1BA073:F06F| db $AC ; play note G#4
|1BA074:F070| db $06, $6B ; duration, params
|1BA076:F072| db $AC ; play note G#4
|1BA077:F073| db $06, $69 ; duration, params
|1BA079:F075| db $AC ; play note G#4
|1BA07A:F076| db $AC ; play note G#4
|1BA07B:F077| db $AC ; play note G#4
|1BA07C:F078| db $06, $6C ; duration, params
|1BA07E:F07A| db $AC ; play note G#4
|1BA07F:F07B| db $06, $69 ; duration, params
|1BA081:F07D| db $AC ; play note G#4
|1BA082:F07E| db $AC ; play note G#4
|1BA083:F07F| db $AC ; play note G#4
|1BA084:F080| db $06, $6B ; duration, params
|1BA086:F082| db $AC ; play note G#4
|1BA087:F083| db $06, $69 ; duration, params
|1BA089:F085| db $AC ; play note G#4
|1BA08A:F086| db $AC ; play note G#4
|1BA08B:F087| db $AC ; play note G#4
|1BA08C:F088| db $06, $6D ; duration, params
|1BA08E:F08A| db $AB ; play note G4
|1BA08F:F08B| db $06, $69 ; duration, params
|1BA091:F08D| db $AB ; play note G4
|1BA092:F08E| db $AB ; play note G4
|1BA093:F08F| db $AB ; play note G4
|1BA094:F090| db $06, $6B ; duration, params
|1BA096:F092| db $AB ; play note G4
|1BA097:F093| db $06, $69 ; duration, params
|1BA099:F095| db $AB ; play note G4
|1BA09A:F096| db $AB ; play note G4
|1BA09B:F097| db $AB ; play note G4
|1BA09C:F098| db $06, $6C ; duration, params
|1BA09E:F09A| db $AB ; play note G4
|1BA09F:F09B| db $06, $69 ; duration, params
|1BA0A1:F09D| db $AB ; play note G4
|1BA0A2:F09E| db $AB ; play note G4
|1BA0A3:F09F| db $AB ; play note G4
|1BA0A4:F0A0| db $06, $6B ; duration, params
|1BA0A6:F0A2| db $AB ; play note G4
|1BA0A7:F0A3| db $06, $69 ; duration, params
|1BA0A9:F0A5| db $AB ; play note G4
|1BA0AA:F0A6| db $AB ; play note G4
|1BA0AB:F0A7| db $AB ; play note G4
|1BA0AC:F0A8| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F0A9:
|1BA0AD:F0A9| db $30 ; duration
|1BA0AE:F0AA| db $9F ; play note G3
|1BA0AF:F0AB| db $24 ; duration
|1BA0B0:F0AC| db $96 ; play note A#2
|1BA0B1:F0AD| db $0C ; duration
|1BA0B2:F0AE| db $95 ; play note A2
|1BA0B3:F0AF| db $48 ; duration
|1BA0B4:F0B0| db $C8 ; sustain current note
|1BA0B5:F0B1| db $0C ; duration
|1BA0B6:F0B2| db $A2 ; play note A#3
|1BA0B7:F0B3| db $A1 ; play note A3
|1BA0B8:F0B4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F0B5:
|1BA0B9:F0B5| db $30 ; duration
|1BA0BA:F0B6| db $C9 ; rest
|1BA0BB:F0B7| db $10, $6D ; duration, params
|1BA0BD:F0B9| db $8F ; play note D#2
|1BA0BE:F0BA| db $8E ; play note D2
|1BA0BF:F0BB| db $94 ; play note G#2
|1BA0C0:F0BC| db $30 ; duration
|1BA0C1:F0BD| db $93 ; play note G2
|1BA0C2:F0BE| db $24 ; duration
|1BA0C3:F0BF| db $8A ; play note A#1
|1BA0C4:F0C0| db $0C ; duration
|1BA0C5:F0C1| db $89 ; play note A1
|1BA0C6:F0C2| db $48 ; duration
|1BA0C7:F0C3| db $C8 ; sustain current note
|1BA0C8:F0C4| db $0C ; duration
|1BA0C9:F0C5| db $92 ; play note F#2
|1BA0CA:F0C6| db $91 ; play note F2
|1BA0CB:F0C7| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F0C8:
|1BA0CC:F0C8| db $48 ; duration
|1BA0CD:F0C9| db $C8 ; sustain current note
|1BA0CE:F0CA| db $0C ; duration
|1BA0CF:F0CB| db $A4 ; play note C4
|1BA0D0:F0CC| db $A3 ; play note B3
|1BA0D1:F0CD| db $48 ; duration
|1BA0D2:F0CE| db $C8 ; sustain current note
|1BA0D3:F0CF| db $0C ; duration
|1BA0D4:F0D0| db $A6 ; play note D4
|1BA0D5:F0D1| db $A5 ; play note C#4
|1BA0D6:F0D2| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F0D3:
|1BA0D7:F0D3| db $AF ; play note B4
|1BA0D8:F0D4| db $AF ; play note B4
|1BA0D9:F0D5| db $AF ; play note B4
|1BA0DA:F0D6| db $AF ; play note B4
|1BA0DB:F0D7| db $AF ; play note B4
|1BA0DC:F0D8| db $AF ; play note B4
|1BA0DD:F0D9| db $AF ; play note B4
|1BA0DE:F0DA| db $AF ; play note B4
|1BA0DF:F0DB| db $AF ; play note B4
|1BA0E0:F0DC| db $AF ; play note B4
|1BA0E1:F0DD| db $AF ; play note B4
|1BA0E2:F0DE| db $AF ; play note B4
|1BA0E3:F0DF| db $AF ; play note B4
|1BA0E4:F0E0| db $AF ; play note B4
|1BA0E5:F0E1| db $AF ; play note B4
|1BA0E6:F0E2| db $AF ; play note B4
|1BA0E7:F0E3| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F0E4:
|1BA0E8:F0E4| db $06, $6D ; duration, params
|1BA0EA:F0E6| db $AC ; play note G#4
|1BA0EB:F0E7| db $06, $69 ; duration, params
|1BA0ED:F0E9| db $AC ; play note G#4
|1BA0EE:F0EA| db $AC ; play note G#4
|1BA0EF:F0EB| db $AC ; play note G#4
|1BA0F0:F0EC| db $06, $6B ; duration, params
|1BA0F2:F0EE| db $AC ; play note G#4
|1BA0F3:F0EF| db $06, $69 ; duration, params
|1BA0F5:F0F1| db $AC ; play note G#4
|1BA0F6:F0F2| db $AC ; play note G#4
|1BA0F7:F0F3| db $AC ; play note G#4
|1BA0F8:F0F4| db $06, $6C ; duration, params
|1BA0FA:F0F6| db $AC ; play note G#4
|1BA0FB:F0F7| db $06, $69 ; duration, params
|1BA0FD:F0F9| db $AC ; play note G#4
|1BA0FE:F0FA| db $AC ; play note G#4
|1BA0FF:F0FB| db $AC ; play note G#4
|1BA100:F0FC| db $06, $6B ; duration, params
|1BA102:F0FE| db $AC ; play note G#4
|1BA103:F0FF| db $06, $69 ; duration, params
|1BA105:F101| db $AC ; play note G#4
|1BA106:F102| db $AC ; play note G#4
|1BA107:F103| db $AC ; play note G#4
|1BA108:F104| db $06, $6D ; duration, params
|1BA10A:F106| db $AB ; play note G4
|1BA10B:F107| db $06, $69 ; duration, params
|1BA10D:F109| db $AB ; play note G4
|1BA10E:F10A| db $AB ; play note G4
|1BA10F:F10B| db $AB ; play note G4
|1BA110:F10C| db $06, $6B ; duration, params
|1BA112:F10E| db $AB ; play note G4
|1BA113:F10F| db $06, $69 ; duration, params
|1BA115:F111| db $AB ; play note G4
|1BA116:F112| db $AB ; play note G4
|1BA117:F113| db $AB ; play note G4
|1BA118:F114| db $06, $6C ; duration, params
|1BA11A:F116| db $AB ; play note G4
|1BA11B:F117| db $06, $69 ; duration, params
|1BA11D:F119| db $AB ; play note G4
|1BA11E:F11A| db $AB ; play note G4
|1BA11F:F11B| db $AB ; play note G4
|1BA120:F11C| db $06, $6B ; duration, params
|1BA122:F11E| db $AB ; play note G4
|1BA123:F11F| db $06, $69 ; duration, params
|1BA125:F121| db $AB ; play note G4
|1BA126:F122| db $AB ; play note G4
|1BA127:F123| db $AB ; play note G4
|1BA128:F124| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F125:
|1BA129:F125| db $A9 ; play note F4
|1BA12A:F126| db $A9 ; play note F4
|1BA12B:F127| db $A9 ; play note F4
|1BA12C:F128| db $A9 ; play note F4
|1BA12D:F129| db $A9 ; play note F4
|1BA12E:F12A| db $A9 ; play note F4
|1BA12F:F12B| db $A9 ; play note F4
|1BA130:F12C| db $A9 ; play note F4
|1BA131:F12D| db $A9 ; play note F4
|1BA132:F12E| db $A9 ; play note F4
|1BA133:F12F| db $A9 ; play note F4
|1BA134:F130| db $A9 ; play note F4
|1BA135:F131| db $A9 ; play note F4
|1BA136:F132| db $A9 ; play note F4
|1BA137:F133| db $A9 ; play note F4
|1BA138:F134| db $A9 ; play note F4
|1BA139:F135| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F136:
|1BA13A:F136| db $30 ; duration
|1BA13B:F137| db $A3 ; play note B3
|1BA13C:F138| db $24 ; duration
|1BA13D:F139| db $9D ; play note F3
|1BA13E:F13A| db $0C ; duration
|1BA13F:F13B| db $9C ; play note E3
|1BA140:F13C| db $30 ; duration
|1BA141:F13D| db $C8 ; sustain current note
|1BA142:F13E| db $10 ; duration
|1BA143:F13F| db $9C ; play note E3
|1BA144:F140| db $9B ; play note D#3
|1BA145:F141| db $A2 ; play note A#3
|1BA146:F142| db $30 ; duration
|1BA147:F143| db $A1 ; play note A3
|1BA148:F144| db $24 ; duration
|1BA149:F145| db $9B ; play note D#3
|1BA14A:F146| db $0C ; duration
|1BA14B:F147| db $9A ; play note D3
|1BA14C:F148| db $48 ; duration
|1BA14D:F149| db $C8 ; sustain current note
|1BA14E:F14A| db $0C ; duration
|1BA14F:F14B| db $9A ; play note D3
|1BA150:F14C| db $99 ; play note C#3
|1BA151:F14D| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F14E:
|1BA152:F14E| db $AE ; play note A#4
|1BA153:F14F| db $AE ; play note A#4
|1BA154:F150| db $AE ; play note A#4
|1BA155:F151| db $AE ; play note A#4
|1BA156:F152| db $AE ; play note A#4
|1BA157:F153| db $AE ; play note A#4
|1BA158:F154| db $AE ; play note A#4
|1BA159:F155| db $AE ; play note A#4
|1BA15A:F156| db $AE ; play note A#4
|1BA15B:F157| db $AE ; play note A#4
|1BA15C:F158| db $AE ; play note A#4
|1BA15D:F159| db $AE ; play note A#4
|1BA15E:F15A| db $AE ; play note A#4
|1BA15F:F15B| db $AE ; play note A#4
|1BA160:F15C| db $AE ; play note A#4
|1BA161:F15D| db $AE ; play note A#4
|1BA162:F15E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F15F:
|1BA163:F15F| db $A8 ; play note E4
|1BA164:F160| db $A8 ; play note E4
|1BA165:F161| db $A8 ; play note E4
|1BA166:F162| db $A8 ; play note E4
|1BA167:F163| db $A8 ; play note E4
|1BA168:F164| db $A8 ; play note E4
|1BA169:F165| db $A8 ; play note E4
|1BA16A:F166| db $A8 ; play note E4
|1BA16B:F167| db $A8 ; play note E4
|1BA16C:F168| db $A8 ; play note E4
|1BA16D:F169| db $A8 ; play note E4
|1BA16E:F16A| db $A8 ; play note E4
|1BA16F:F16B| db $A8 ; play note E4
|1BA170:F16C| db $A8 ; play note E4
|1BA171:F16D| db $A8 ; play note E4
|1BA172:F16E| db $A8 ; play note E4
|1BA173:F16F| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F170:
|1BA174:F170| db $06, $6D ; duration, params
|1BA176:F172| db $AE ; play note A#4
|1BA177:F173| db $06, $69 ; duration, params
|1BA179:F175| db $AE ; play note A#4
|1BA17A:F176| db $AE ; play note A#4
|1BA17B:F177| db $AE ; play note A#4
|1BA17C:F178| db $06, $6B ; duration, params
|1BA17E:F17A| db $AE ; play note A#4
|1BA17F:F17B| db $06, $69 ; duration, params
|1BA181:F17D| db $AE ; play note A#4
|1BA182:F17E| db $AE ; play note A#4
|1BA183:F17F| db $AE ; play note A#4
|1BA184:F180| db $06, $6C ; duration, params
|1BA186:F182| db $AE ; play note A#4
|1BA187:F183| db $06, $69 ; duration, params
|1BA189:F185| db $AE ; play note A#4
|1BA18A:F186| db $AE ; play note A#4
|1BA18B:F187| db $AE ; play note A#4
|1BA18C:F188| db $06, $6B ; duration, params
|1BA18E:F18A| db $AE ; play note A#4
|1BA18F:F18B| db $06, $69 ; duration, params
|1BA191:F18D| db $AE ; play note A#4
|1BA192:F18E| db $AE ; play note A#4
|1BA193:F18F| db $AE ; play note A#4
|1BA194:F190| db $06, $6D ; duration, params
|1BA196:F192| db $B2 ; play note D5
|1BA197:F193| db $06, $69 ; duration, params
|1BA199:F195| db $B2 ; play note D5
|1BA19A:F196| db $B2 ; play note D5
|1BA19B:F197| db $B2 ; play note D5
|1BA19C:F198| db $06, $6B ; duration, params
|1BA19E:F19A| db $B2 ; play note D5
|1BA19F:F19B| db $06, $69 ; duration, params
|1BA1A1:F19D| db $B2 ; play note D5
|1BA1A2:F19E| db $B2 ; play note D5
|1BA1A3:F19F| db $B2 ; play note D5
|1BA1A4:F1A0| db $06, $6C ; duration, params
|1BA1A6:F1A2| db $B2 ; play note D5
|1BA1A7:F1A3| db $06, $69 ; duration, params
|1BA1A9:F1A5| db $B2 ; play note D5
|1BA1AA:F1A6| db $B2 ; play note D5
|1BA1AB:F1A7| db $B2 ; play note D5
|1BA1AC:F1A8| db $06, $6B ; duration, params
|1BA1AE:F1AA| db $B2 ; play note D5
|1BA1AF:F1AB| db $06, $69 ; duration, params
|1BA1B1:F1AD| db $B2 ; play note D5
|1BA1B2:F1AE| db $B2 ; play note D5
|1BA1B3:F1AF| db $B2 ; play note D5
|1BA1B4:F1B0| db $06, $6D ; duration, params
|1BA1B6:F1B2| db $B1 ; play note C#5
|1BA1B7:F1B3| db $06, $69 ; duration, params
|1BA1B9:F1B5| db $B1 ; play note C#5
|1BA1BA:F1B6| db $B1 ; play note C#5
|1BA1BB:F1B7| db $B1 ; play note C#5
|1BA1BC:F1B8| db $06, $6B ; duration, params
|1BA1BE:F1BA| db $B1 ; play note C#5
|1BA1BF:F1BB| db $06, $69 ; duration, params
|1BA1C1:F1BD| db $B1 ; play note C#5
|1BA1C2:F1BE| db $B1 ; play note C#5
|1BA1C3:F1BF| db $B1 ; play note C#5
|1BA1C4:F1C0| db $06, $6C ; duration, params
|1BA1C6:F1C2| db $B1 ; play note C#5
|1BA1C7:F1C3| db $06, $69 ; duration, params
|1BA1C9:F1C5| db $B1 ; play note C#5
|1BA1CA:F1C6| db $B1 ; play note C#5
|1BA1CB:F1C7| db $B1 ; play note C#5
|1BA1CC:F1C8| db $06, $6B ; duration, params
|1BA1CE:F1CA| db $B1 ; play note C#5
|1BA1CF:F1CB| db $06, $69 ; duration, params
|1BA1D1:F1CD| db $B1 ; play note C#5
|1BA1D2:F1CE| db $B1 ; play note C#5
|1BA1D3:F1CF| db $B1 ; play note C#5
|1BA1D4:F1D0| db $00 ; End

;===================================================================================================

Song17_Shop:
|1BA1D5:F1D1| dw Song17_Segment0
|1BA1D7:F1D3| dw Song17_Segment1
|1BA1D9:F1D5| dw $00FF, Song17_Shop ; Loop point
|1BA1DD:F1D9| dw $0000

Song17_Segment1:
|1BA1DF:F1DB| dw Song17_Segment1_Track0
|1BA1E1:F1DD| dw Song17_Segment1_Track1
|1BA1E3:F1DF| dw Song17_Segment1_Track2
|1BA1E5:F1E1| dw Song17_Segment1_Track3
|1BA1E7:F1E3| dw $0000
|1BA1E9:F1E5| dw $0000
|1BA1EB:F1E7| dw $0000
|1BA1ED:F1E9| dw $0000

Song17_Segment0:
|1BA1EF:F1EB| dw Song17_Segment0_Track0
|1BA1F1:F1ED| dw $0000
|1BA1F3:F1EF| dw $0000
|1BA1F5:F1F1| dw Song17_Segment0_Track3
|1BA1F7:F1F3| dw $0000
|1BA1F9:F1F5| dw $0000
|1BA1FB:F1F7| dw $0000
|1BA1FD:F1F9| dw $0000

;---------------------------------------------------------------------------------------------------

Song17_Segment1_Track0:
|1BA1FF:F1FB| db $EF : dw Song17_Sub_F272 : db $01 ; call segment subroutine
|1BA203:F1FF| db $C8 ; sustain current note
|1BA204:F200| db $86 ; play note F#1
|1BA205:F201| db $18 ; duration
|1BA206:F202| db $8A ; play note A#1
|1BA207:F203| db $84 ; play note E1
|1BA208:F204| db $88 ; play note G#1
|1BA209:F205| db $EF : dw Song17_Sub_F28F : db $02 ; call segment subroutine
|1BA20D:F209| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Segment1_Track1:
|1BA20E:F20A| db $E0, $0E ; set instrument - chimes
|1BA210:F20C| db $ED, $64 ; set channel volume
|1BA212:F20E| db $08, $2D ; duration, params
|1BA214:F210| db $AC ; play note G#4
|1BA215:F211| db $AC ; play note G#4
|1BA216:F212| db $A7 ; play note D#4
|1BA217:F213| db $A7 ; play note D#4
|1BA218:F214| db $AA ; play note F#4
|1BA219:F215| db $AA ; play note F#4
|1BA21A:F216| db $A5 ; play note C#4
|1BA21B:F217| db $A5 ; play note C#4
|1BA21C:F218| db $AC ; play note G#4
|1BA21D:F219| db $AC ; play note G#4
|1BA21E:F21A| db $A7 ; play note D#4
|1BA21F:F21B| db $A7 ; play note D#4
|1BA220:F21C| db $AA ; play note F#4
|1BA221:F21D| db $AA ; play note F#4
|1BA222:F21E| db $A5 ; play note C#4
|1BA223:F21F| db $A5 ; play note C#4
|1BA224:F220| db $AC ; play note G#4
|1BA225:F221| db $AC ; play note G#4
|1BA226:F222| db $A7 ; play note D#4
|1BA227:F223| db $A7 ; play note D#4
|1BA228:F224| db $AA ; play note F#4
|1BA229:F225| db $AA ; play note F#4
|1BA22A:F226| db $A5 ; play note C#4
|1BA22B:F227| db $A5 ; play note C#4
|1BA22C:F228| db $EF : dw Song17_Sub_F29C : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song17_Segment1_Track2:
|1BA230:F22C| db $E0, $0F ; set instrument - harp
|1BA232:F22E| db $ED, $A0 ; set channel volume
|1BA234:F230| db $0C, $6D ; duration, params
|1BA236:F232| db $B6 ; play note F#5
|1BA237:F233| db $BA ; play note A#5
|1BA238:F234| db $B4 ; play note E5
|1BA239:F235| db $B8 ; play note G#5
|1BA23A:F236| db $B2 ; play note D5
|1BA23B:F237| db $B7 ; play note G5
|1BA23C:F238| db $B6 ; play note F#5
|1BA23D:F239| db $BA ; play note A#5
|1BA23E:F23A| db $EF : dw Song17_Sub_F2B5 : db $01 ; call segment subroutine
|1BA242:F23E| db $B6 ; play note F#5
|1BA243:F23F| db $BA ; play note A#5
|1BA244:F240| db $B4 ; play note E5
|1BA245:F241| db $B8 ; play note G#5
|1BA246:F242| db $B2 ; play note D5
|1BA247:F243| db $B7 ; play note G5
|1BA248:F244| db $B6 ; play note F#5
|1BA249:F245| db $BA ; play note A#5
|1BA24A:F246| db $EF : dw Song17_Sub_F2B5 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song17_Segment1_Track3:
|1BA24E:F24A| db $E0, $0E ; set instrument - chimes
|1BA250:F24C| db $ED, $E6 ; set channel volume
|1BA252:F24E| db $EF : dw Song17_Sub_F2C6 : db $01 ; call segment subroutine
|1BA256:F252| db $EF : dw Song17_Sub_F2E3 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song17_Segment0_Track0:
|1BA25A:F256| db $FA, $19 ; set base percussion sample
|1BA25C:F258| db $EF : dw Song17_Sub_F272 : db $01 ; call segment subroutine
|1BA260:F25C| db $EF : dw Song17_Sub_F2F1 : db $01 ; call segment subroutine
|1BA264:F260| db $EF : dw Song17_Sub_F28F : db $01 ; call segment subroutine
|1BA268:F264| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Segment0_Track3:
|1BA269:F265| db $E0, $0E ; set instrument - chimes
|1BA26B:F267| db $ED, $E6 ; set channel volume
|1BA26D:F269| db $EF : dw Song17_Sub_F2C6 : db $01 ; call segment subroutine
|1BA271:F26D| db $EF : dw Song17_Sub_F2E3 : db $01 ; call segment subroutine
|1BA275:F271| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Sub_F272:
|1BA276:F272| db $E5, $B4 ; set song volume
|1BA278:F274| db $E7, $1F ; set song tempo
|1BA27A:F276| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1BA27E:F27A| db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
|1BA282:F27E| db $F8, $28, $50, $50 ; initiate gradual echo volume change
|1BA286:F282| db $E0, $0E ; set instrument - chimes
|1BA288:F284| db $ED, $FA ; set channel volume
|1BA28A:F286| db $18, $6D ; duration, params
|1BA28C:F288| db $86 ; play note F#1
|1BA28D:F289| db $8A ; play note A#1
|1BA28E:F28A| db $84 ; play note E1
|1BA28F:F28B| db $0C ; duration
|1BA290:F28C| db $88 ; play note G#1
|1BA291:F28D| db $82 ; play note D1
|1BA292:F28E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Sub_F28F:
|1BA293:F28F| db $86 ; play note F#1
|1BA294:F290| db $8A ; play note A#1
|1BA295:F291| db $84 ; play note E1
|1BA296:F292| db $0C ; duration
|1BA297:F293| db $88 ; play note G#1
|1BA298:F294| db $82 ; play note D1
|1BA299:F295| db $C8 ; sustain current note
|1BA29A:F296| db $86 ; play note F#1
|1BA29B:F297| db $18 ; duration
|1BA29C:F298| db $8A ; play note A#1
|1BA29D:F299| db $84 ; play note E1
|1BA29E:F29A| db $88 ; play note G#1
|1BA29F:F29B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Sub_F29C:
|1BA2A0:F29C| db $AC ; play note G#4
|1BA2A1:F29D| db $AC ; play note G#4
|1BA2A2:F29E| db $A7 ; play note D#4
|1BA2A3:F29F| db $A7 ; play note D#4
|1BA2A4:F2A0| db $AA ; play note F#4
|1BA2A5:F2A1| db $AA ; play note F#4
|1BA2A6:F2A2| db $A5 ; play note C#4
|1BA2A7:F2A3| db $A5 ; play note C#4
|1BA2A8:F2A4| db $AC ; play note G#4
|1BA2A9:F2A5| db $AC ; play note G#4
|1BA2AA:F2A6| db $A7 ; play note D#4
|1BA2AB:F2A7| db $A7 ; play note D#4
|1BA2AC:F2A8| db $AA ; play note F#4
|1BA2AD:F2A9| db $AA ; play note F#4
|1BA2AE:F2AA| db $A5 ; play note C#4
|1BA2AF:F2AB| db $A5 ; play note C#4
|1BA2B0:F2AC| db $AC ; play note G#4
|1BA2B1:F2AD| db $AC ; play note G#4
|1BA2B2:F2AE| db $A7 ; play note D#4
|1BA2B3:F2AF| db $A7 ; play note D#4
|1BA2B4:F2B0| db $AA ; play note F#4
|1BA2B5:F2B1| db $AA ; play note F#4
|1BA2B6:F2B2| db $A5 ; play note C#4
|1BA2B7:F2B3| db $A5 ; play note C#4
|1BA2B8:F2B4| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Sub_F2B5:
|1BA2B9:F2B5| db $B4 ; play note E5
|1BA2BA:F2B6| db $B8 ; play note G#5
|1BA2BB:F2B7| db $B2 ; play note D5
|1BA2BC:F2B8| db $B7 ; play note G5
|1BA2BD:F2B9| db $B6 ; play note F#5
|1BA2BE:F2BA| db $BA ; play note A#5
|1BA2BF:F2BB| db $B4 ; play note E5
|1BA2C0:F2BC| db $B8 ; play note G#5
|1BA2C1:F2BD| db $B2 ; play note D5
|1BA2C2:F2BE| db $B7 ; play note G5
|1BA2C3:F2BF| db $B6 ; play note F#5
|1BA2C4:F2C0| db $BA ; play note A#5
|1BA2C5:F2C1| db $B4 ; play note E5
|1BA2C6:F2C2| db $B8 ; play note G#5
|1BA2C7:F2C3| db $B2 ; play note D5
|1BA2C8:F2C4| db $B7 ; play note G5
|1BA2C9:F2C5| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Sub_F2C6:
|1BA2CA:F2C6| db $06 ; duration
|1BA2CB:F2C7| db $C9 ; rest
|1BA2CC:F2C8| db $18, $6D ; duration, params
|1BA2CE:F2CA| db $86 ; play note F#1
|1BA2CF:F2CB| db $8A ; play note A#1
|1BA2D0:F2CC| db $84 ; play note E1
|1BA2D1:F2CD| db $0C ; duration
|1BA2D2:F2CE| db $88 ; play note G#1
|1BA2D3:F2CF| db $82 ; play note D1
|1BA2D4:F2D0| db $C8 ; sustain current note
|1BA2D5:F2D1| db $86 ; play note F#1
|1BA2D6:F2D2| db $18 ; duration
|1BA2D7:F2D3| db $8A ; play note A#1
|1BA2D8:F2D4| db $84 ; play note E1
|1BA2D9:F2D5| db $88 ; play note G#1
|1BA2DA:F2D6| db $86 ; play note F#1
|1BA2DB:F2D7| db $8A ; play note A#1
|1BA2DC:F2D8| db $84 ; play note E1
|1BA2DD:F2D9| db $0C ; duration
|1BA2DE:F2DA| db $88 ; play note G#1
|1BA2DF:F2DB| db $82 ; play note D1
|1BA2E0:F2DC| db $C8 ; sustain current note
|1BA2E1:F2DD| db $86 ; play note F#1
|1BA2E2:F2DE| db $18 ; duration
|1BA2E3:F2DF| db $8A ; play note A#1
|1BA2E4:F2E0| db $84 ; play note E1
|1BA2E5:F2E1| db $88 ; play note G#1
|1BA2E6:F2E2| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Sub_F2E3:
|1BA2E7:F2E3| db $86 ; play note F#1
|1BA2E8:F2E4| db $8A ; play note A#1
|1BA2E9:F2E5| db $84 ; play note E1
|1BA2EA:F2E6| db $0C ; duration
|1BA2EB:F2E7| db $88 ; play note G#1
|1BA2EC:F2E8| db $82 ; play note D1
|1BA2ED:F2E9| db $C8 ; sustain current note
|1BA2EE:F2EA| db $86 ; play note F#1
|1BA2EF:F2EB| db $18 ; duration
|1BA2F0:F2EC| db $8A ; play note A#1
|1BA2F1:F2ED| db $84 ; play note E1
|1BA2F2:F2EE| db $12 ; duration
|1BA2F3:F2EF| db $88 ; play note G#1
|1BA2F4:F2F0| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Sub_F2F1:
|1BA2F5:F2F1| db $C8 ; sustain current note
|1BA2F6:F2F2| db $86 ; play note F#1
|1BA2F7:F2F3| db $18 ; duration
|1BA2F8:F2F4| db $8A ; play note A#1
|1BA2F9:F2F5| db $84 ; play note E1
|1BA2FA:F2F6| db $88 ; play note G#1
|1BA2FB:F2F7| db $86 ; play note F#1
|1BA2FC:F2F8| db $8A ; play note A#1
|1BA2FD:F2F9| db $84 ; play note E1
|1BA2FE:F2FA| db $0C ; duration
|1BA2FF:F2FB| db $88 ; play note G#1
|1BA300:F2FC| db $82 ; play note D1
|1BA301:F2FD| db $C8 ; sustain current note
|1BA302:F2FE| db $86 ; play note F#1
|1BA303:F2FF| db $18 ; duration
|1BA304:F300| db $8A ; play note A#1
|1BA305:F301| db $84 ; play note E1
|1BA306:F302| db $88 ; play note G#1
|1BA307:F303| db $00 ; End

;===================================================================================================

Song19_ZeldaRescue:
|1BA308:F304| dw Song19_Segment0

Song19_Loop:
|1BA30A:F306| dw Song19_Segment1
|1BA30C:F308| dw Song19_Segment2
|1BA30E:F30A| dw Song19_Segment3
|1BA310:F30C| dw $00FF, Song19_Loop ; Loop point
|1BA314:F310| dw $0000

Song19_Segment1:
|1BA316:F312| dw Song19_Segment1_Track0
|1BA318:F314| dw Song19_Segment1_Track1
|1BA31A:F316| dw $0000
|1BA31C:F318| dw Song19_Segment1_Track3
|1BA31E:F31A| dw Song19_Segment1_Track4
|1BA320:F31C| dw $0000
|1BA322:F31E| dw $0000
|1BA324:F320| dw $0000

Song19_Segment2:
|1BA326:F322| dw Song19_Segment2_Track0
|1BA328:F324| dw Song19_Segment2_Track1
|1BA32A:F326| dw Song19_Segment2_Track2
|1BA32C:F328| dw Song19_Segment2_Track3
|1BA32E:F32A| dw Song19_Segment2_Track4
|1BA330:F32C| dw $0000
|1BA332:F32E| dw $0000
|1BA334:F330| dw $0000

Song19_Segment3:
|1BA336:F332| dw Song19_Segment3_Track0
|1BA338:F334| dw Song19_Segment3_Track1
|1BA33A:F336| dw Song19_Segment3_Track2
|1BA33C:F338| dw Song19_Segment3_Track3
|1BA33E:F33A| dw Song19_Segment3_Track4
|1BA340:F33C| dw $0000
|1BA342:F33E| dw $0000
|1BA344:F340| dw $0000

Song19_Segment0:
|1BA346:F342| dw Song19_Segment0_Track0
|1BA348:F344| dw Song19_Segment0_Track1
|1BA34A:F346| dw Song19_Segment0_Track2
|1BA34C:F348| dw Song19_Segment0_Track3
|1BA34E:F34A| dw Song19_Segment0_Track4
|1BA350:F34C| dw Song19_Segment0_Track5
|1BA352:F34E| dw $0000
|1BA354:F350| dw $0000

;---------------------------------------------------------------------------------------------------

Song19_Segment1_Track0:
|1BA356:F352| db $E0, $0A ; set instrument - strings B
|1BA358:F354| db $E7, $15 ; set song tempo
|1BA35A:F356| db $ED, $64 ; set channel volume
|1BA35C:F358| db $EE, $3C, $C8 ; initiate gradual channel volume change
|1BA35F:F35B| db $E9, $00 ; set global transposition
|1BA361:F35D| db $E3, $1A, $1C, $1E ; enable vibrato
|1BA365:F361| db $E1, $0E ; set panning - leaning left
|1BA367:F363| db $30, $7D ; duration, params
|1BA369:F365| db $AF ; play note B4
|1BA36A:F366| db $18 ; duration
|1BA36B:F367| db $B2 ; play note D5
|1BA36C:F368| db $EF : dw Song19_Sub_F523 : db $01 ; call segment subroutine
|1BA370:F36C| db $30 ; duration
|1BA371:F36D| db $B2 ; play note D5
|1BA372:F36E| db $0C ; duration
|1BA373:F36F| db $B0 ; play note C5
|1BA374:F370| db $AF ; play note B4
|1BA375:F371| db $48 ; duration
|1BA376:F372| db $AD ; play note A4
|1BA377:F373| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song19_Segment1_Track1:
|1BA378:F374| db $E0, $0A ; set instrument - strings B
|1BA37A:F376| db $ED, $64 ; set channel volume
|1BA37C:F378| db $EE, $50, $C8 ; initiate gradual channel volume change
|1BA37F:F37B| db $E1, $06 ; set panning - leaning right
|1BA381:F37D| db $48, $6D ; duration, params
|1BA383:F37F| db $98 ; play note C3
|1BA384:F380| db $98 ; play note C3
|1BA385:F381| db $98 ; play note C3
|1BA386:F382| db $98 ; play note C3
|1BA387:F383| db $97 ; play note B2
|1BA388:F384| db $96 ; play note A#2
|1BA389:F385| db $95 ; play note A2
|1BA38A:F386| db $9A ; play note D3

;---------------------------------------------------------------------------------------------------

Song19_Segment1_Track3:
|1BA38B:F387| db $E0, $0A ; set instrument - strings B
|1BA38D:F389| db $ED, $64 ; set channel volume
|1BA38F:F38B| db $EE, $50, $C8 ; initiate gradual channel volume change
|1BA392:F38E| db $E1, $0A ; set panning - balanced
|1BA394:F390| db $E3, $18, $1A, $18 ; enable vibrato
|1BA398:F394| db $EF : dw Song19_Sub_F537 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song19_Segment1_Track4:
|1BA39C:F398| db $E0, $0A ; set instrument - strings B
|1BA39E:F39A| db $ED, $64 ; set channel volume
|1BA3A0:F39C| db $EE, $50, $A0 ; initiate gradual channel volume change
|1BA3A3:F39F| db $E3, $1A, $1C, $1E ; enable vibrato
|1BA3A7:F3A3| db $E1, $0B ; set panning - leaning left
|1BA3A9:F3A5| db $08 ; duration
|1BA3AA:F3A6| db $C9 ; rest
|1BA3AB:F3A7| db $30, $7D ; duration, params
|1BA3AD:F3A9| db $AF ; play note B4
|1BA3AE:F3AA| db $18 ; duration
|1BA3AF:F3AB| db $B2 ; play note D5
|1BA3B0:F3AC| db $EF : dw Song19_Sub_F523 : db $01 ; call segment subroutine
|1BA3B4:F3B0| db $30 ; duration
|1BA3B5:F3B1| db $B2 ; play note D5
|1BA3B6:F3B2| db $0C ; duration
|1BA3B7:F3B3| db $B0 ; play note C5
|1BA3B8:F3B4| db $AF ; play note B4
|1BA3B9:F3B5| db $40 ; duration
|1BA3BA:F3B6| db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song19_Segment2_Track0:
|1BA3BB:F3B7| db $30, $7D ; duration, params
|1BA3BD:F3B9| db $AF ; play note B4
|1BA3BE:F3BA| db $18 ; duration
|1BA3BF:F3BB| db $B2 ; play note D5
|1BA3C0:F3BC| db $EF : dw Song19_Sub_F523 : db $01 ; call segment subroutine
|1BA3C4:F3C0| db $48 ; duration
|1BA3C5:F3C1| db $BE ; play note D6
|1BA3C6:F3C2| db $C8 ; sustain current note
|1BA3C7:F3C3| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song19_Segment2_Track1:
|1BA3C8:F3C4| db $48, $6D ; duration, params
|1BA3CA:F3C6| db $98 ; play note C3
|1BA3CB:F3C7| db $98 ; play note C3
|1BA3CC:F3C8| db $98 ; play note C3
|1BA3CD:F3C9| db $98 ; play note C3
|1BA3CE:F3CA| db $97 ; play note B2
|1BA3CF:F3CB| db $96 ; play note A#2
|1BA3D0:F3CC| db $95 ; play note A2
|1BA3D1:F3CD| db $9A ; play note D3

Song19_Segment2_Track2:
|1BA3D2:F3CE| db $E0, $15 ; set instrument - choir
|1BA3D4:F3D0| db $ED, $82 ; set channel volume
|1BA3D6:F3D2| db $E3, $1C, $1C, $1C ; enable vibrato
|1BA3DA:F3D6| db $48, $7D ; duration, params
|1BA3DC:F3D8| db $A8 ; play note E4
|1BA3DD:F3D9| db $AA ; play note F#4
|1BA3DE:F3DA| db $A8 ; play note E4
|1BA3DF:F3DB| db $AA ; play note F#4
|1BA3E0:F3DC| db $AA ; play note F#4
|1BA3E1:F3DD| db $A9 ; play note F4
|1BA3E2:F3DE| db $A8 ; play note E4
|1BA3E3:F3DF| db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song19_Segment2_Track3:
|1BA3E4:F3E0| db $EF : dw Song19_Sub_F537 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song19_Segment2_Track4:
|1BA3E8:F3E4| db $08 ; duration
|1BA3E9:F3E5| db $C9 ; rest
|1BA3EA:F3E6| db $30, $7D ; duration, params
|1BA3EC:F3E8| db $AF ; play note B4
|1BA3ED:F3E9| db $18 ; duration
|1BA3EE:F3EA| db $B2 ; play note D5
|1BA3EF:F3EB| db $EF : dw Song19_Sub_F523 : db $01 ; call segment subroutine
|1BA3F3:F3EF| db $48 ; duration
|1BA3F4:F3F0| db $BE ; play note D6
|1BA3F5:F3F1| db $40 ; duration
|1BA3F6:F3F2| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song19_Segment3_Track0:
|1BA3F7:F3F3| db $E0, $16 ; set instrument - flute
|1BA3F9:F3F5| db $EF : dw Song19_Sub_F562 : db $01 ; call segment subroutine
|1BA3FD:F3F9| db $C8 ; sustain current note
|1BA3FE:F3FA| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song19_Segment3_Track1:
|1BA3FF:F3FB| db $48, $6D ; duration, params
|1BA401:F3FD| db $9D ; play note F3
|1BA402:F3FE| db $9C ; play note E3
|1BA403:F3FF| db $9A ; play note D3
|1BA404:F400| db $98 ; play note C3
|1BA405:F401| db $9D ; play note F3
|1BA406:F402| db $9C ; play note E3
|1BA407:F403| db $9B ; play note D#3
|1BA408:F404| db $30 ; duration
|1BA409:F405| db $9A ; play note D3
|1BA40A:F406| db $18 ; duration
|1BA40B:F407| db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song19_Segment3_Track2:
|1BA40C:F408| db $E0, $0A ; set instrument - strings B
|1BA40E:F40A| db $E3, $1C, $1C, $1C ; enable vibrato
|1BA412:F40E| db $18 ; duration
|1BA413:F40F| db $C9 ; rest
|1BA414:F410| db $30, $6D ; duration, params
|1BA416:F412| db $A4 ; play note C4
|1BA417:F413| db $18 ; duration
|1BA418:F414| db $C9 ; rest
|1BA419:F415| db $30 ; duration
|1BA41A:F416| db $A3 ; play note B3
|1BA41B:F417| db $18 ; duration
|1BA41C:F418| db $C9 ; rest
|1BA41D:F419| db $30 ; duration
|1BA41E:F41A| db $A1 ; play note A3
|1BA41F:F41B| db $18 ; duration
|1BA420:F41C| db $C9 ; rest
|1BA421:F41D| db $30 ; duration
|1BA422:F41E| db $9F ; play note G3
|1BA423:F41F| db $18 ; duration
|1BA424:F420| db $C9 ; rest
|1BA425:F421| db $30 ; duration
|1BA426:F422| db $A4 ; play note C4
|1BA427:F423| db $18 ; duration
|1BA428:F424| db $C9 ; rest
|1BA429:F425| db $30 ; duration
|1BA42A:F426| db $A3 ; play note B3
|1BA42B:F427| db $18 ; duration
|1BA42C:F428| db $C9 ; rest
|1BA42D:F429| db $30 ; duration
|1BA42E:F42A| db $A2 ; play note A#3
|1BA42F:F42B| db $18 ; duration
|1BA430:F42C| db $C9 ; rest
|1BA431:F42D| db $A1 ; play note A3
|1BA432:F42E| db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song19_Segment3_Track3:
|1BA433:F42F| db $0C ; duration
|1BA434:F430| db $C9 ; rest
|1BA435:F431| db $0C, $6D ; duration, params
|1BA437:F433| db $A4 ; play note C4
|1BA438:F434| db $30 ; duration
|1BA439:F435| db $A8 ; play note E4
|1BA43A:F436| db $0C ; duration
|1BA43B:F437| db $C9 ; rest
|1BA43C:F438| db $A3 ; play note B3
|1BA43D:F439| db $30 ; duration
|1BA43E:F43A| db $A6 ; play note D4
|1BA43F:F43B| db $0C ; duration
|1BA440:F43C| db $C9 ; rest
|1BA441:F43D| db $A1 ; play note A3
|1BA442:F43E| db $30 ; duration
|1BA443:F43F| db $A4 ; play note C4
|1BA444:F440| db $0C ; duration
|1BA445:F441| db $C9 ; rest
|1BA446:F442| db $9F ; play note G3
|1BA447:F443| db $30 ; duration
|1BA448:F444| db $A3 ; play note B3
|1BA449:F445| db $0C ; duration
|1BA44A:F446| db $C9 ; rest
|1BA44B:F447| db $A4 ; play note C4
|1BA44C:F448| db $30 ; duration
|1BA44D:F449| db $A8 ; play note E4
|1BA44E:F44A| db $0C ; duration
|1BA44F:F44B| db $C9 ; rest
|1BA450:F44C| db $A3 ; play note B3
|1BA451:F44D| db $30 ; duration
|1BA452:F44E| db $A6 ; play note D4
|1BA453:F44F| db $0C ; duration
|1BA454:F450| db $C9 ; rest
|1BA455:F451| db $A2 ; play note A#3
|1BA456:F452| db $30 ; duration
|1BA457:F453| db $A5 ; play note C#4
|1BA458:F454| db $0C ; duration
|1BA459:F455| db $C9 ; rest
|1BA45A:F456| db $A1 ; play note A3
|1BA45B:F457| db $18 ; duration
|1BA45C:F458| db $A4 ; play note C4
|1BA45D:F459| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song19_Segment3_Track4:
|1BA45E:F45A| db $EF : dw Song19_Sub_F562 : db $01 ; call segment subroutine
|1BA462:F45E| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song19_Segment0_Track0:
|1BA463:F45F| db $FA, $18 ; set base percussion sample
|1BA465:F461| db $E5, $B4 ; set song volume
|1BA467:F463| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1BA46B:F467| db $F7, $02, $3C, $02 ; configure EDL, EFB, FIR
|1BA46F:F46B| db $F8, $1E, $28, $28 ; initiate gradual echo volume change
|1BA473:F46F| db $E7, $1D ; set song tempo
|1BA475:F471| db $E0, $0A ; set instrument - strings B
|1BA477:F473| db $ED, $C8 ; set channel volume
|1BA479:F475| db $E3, $1A, $1C, $16 ; enable vibrato
|1BA47D:F479| db $E1, $0E ; set panning - leaning left
|1BA47F:F47B| db $0C ; duration
|1BA480:F47C| db $C9 ; rest
|1BA481:F47D| db $0E, $6D ; duration, params
|1BA483:F47F| db $AB ; play note G4
|1BA484:F480| db $0D ; duration
|1BA485:F481| db $AD ; play note A4
|1BA486:F482| db $0C ; duration
|1BA487:F483| db $AF ; play note B4
|1BA488:F484| db $0B ; duration
|1BA489:F485| db $B0 ; play note C5
|1BA48A:F486| db $0A ; duration
|1BA48B:F487| db $B2 ; play note D5
|1BA48C:F488| db $09 ; duration
|1BA48D:F489| db $B4 ; play note E5
|1BA48E:F48A| db $08 ; duration
|1BA48F:F48B| db $B5 ; play note F5
|1BA490:F48C| db $18 ; duration
|1BA491:F48D| db $B7 ; play note G5
|1BA492:F48E| db $B5 ; play note F5
|1BA493:F48F| db $BC ; play note C6
|1BA494:F490| db $BA ; play note A#5
|1BA495:F491| db $60, $7D ; duration, params
|1BA497:F493| db $BB ; play note B5
|1BA498:F494| db $30 ; duration
|1BA499:F495| db $C8 ; sustain current note
|1BA49A:F496| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song19_Segment0_Track1:
|1BA49B:F497| db $E0, $0A ; set instrument - strings B
|1BA49D:F499| db $ED, $A0 ; set channel volume
|1BA49F:F49B| db $E3, $18, $1A, $17 ; enable vibrato
|1BA4A3:F49F| db $E1, $0C ; set panning - leaning left
|1BA4A5:F4A1| db $14 ; duration
|1BA4A6:F4A2| db $C9 ; rest
|1BA4A7:F4A3| db $0E, $6D ; duration, params
|1BA4A9:F4A5| db $AB ; play note G4
|1BA4AA:F4A6| db $0D ; duration
|1BA4AB:F4A7| db $AD ; play note A4
|1BA4AC:F4A8| db $0C ; duration
|1BA4AD:F4A9| db $AF ; play note B4
|1BA4AE:F4AA| db $0B ; duration
|1BA4AF:F4AB| db $B0 ; play note C5
|1BA4B0:F4AC| db $0A ; duration
|1BA4B1:F4AD| db $B2 ; play note D5
|1BA4B2:F4AE| db $09 ; duration
|1BA4B3:F4AF| db $B4 ; play note E5
|1BA4B4:F4B0| db $08 ; duration
|1BA4B5:F4B1| db $B5 ; play note F5
|1BA4B6:F4B2| db $18 ; duration
|1BA4B7:F4B3| db $B7 ; play note G5
|1BA4B8:F4B4| db $B5 ; play note F5
|1BA4B9:F4B5| db $BC ; play note C6
|1BA4BA:F4B6| db $BA ; play note A#5
|1BA4BB:F4B7| db $60, $7D ; duration, params
|1BA4BD:F4B9| db $BB ; play note B5
|1BA4BE:F4BA| db $28 ; duration
|1BA4BF:F4BB| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song19_Segment0_Track2:
|1BA4C0:F4BC| db $E0, $0A ; set instrument - strings B
|1BA4C2:F4BE| db $ED, $C8 ; set channel volume
|1BA4C4:F4C0| db $E3, $1C, $1A, $14 ; enable vibrato
|1BA4C8:F4C4| db $E1, $06 ; set panning - leaning right
|1BA4CA:F4C6| db $59 ; duration
|1BA4CB:F4C7| db $C9 ; rest
|1BA4CC:F4C8| db $30, $7D ; duration, params
|1BA4CE:F4CA| db $A0 ; play note G#3
|1BA4CF:F4CB| db $A2 ; play note A#3
|1BA4D0:F4CC| db $60 ; duration
|1BA4D1:F4CD| db $9F ; play note G3
|1BA4D2:F4CE| db $30 ; duration
|1BA4D3:F4CF| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song19_Segment0_Track3:
|1BA4D4:F4D0| db $E0, $0A ; set instrument - strings B
|1BA4D6:F4D2| db $ED, $C8 ; set channel volume
|1BA4D8:F4D4| db $E3, $18, $1A, $17 ; enable vibrato
|1BA4DC:F4D8| db $E1, $0A ; set panning - balanced
|1BA4DE:F4DA| db $33 ; duration
|1BA4DF:F4DB| db $C9 ; rest
|1BA4E0:F4DC| db $0B, $6D ; duration, params
|1BA4E2:F4DE| db $A8 ; play note E4
|1BA4E3:F4DF| db $0A ; duration
|1BA4E4:F4E0| db $A9 ; play note F4
|1BA4E5:F4E1| db $09 ; duration
|1BA4E6:F4E2| db $AB ; play note G4
|1BA4E7:F4E3| db $08 ; duration
|1BA4E8:F4E4| db $AD ; play note A4
|1BA4E9:F4E5| db $18 ; duration
|1BA4EA:F4E6| db $A7 ; play note D#4
|1BA4EB:F4E7| db $A6 ; play note D4
|1BA4EC:F4E8| db $AC ; play note G#4
|1BA4ED:F4E9| db $AB ; play note G4
|1BA4EE:F4EA| db $60, $7D ; duration, params
|1BA4F0:F4EC| db $AA ; play note F#4
|1BA4F1:F4ED| db $30 ; duration
|1BA4F2:F4EE| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song19_Segment0_Track4:
|1BA4F3:F4EF| db $E0, $0A ; set instrument - strings B
|1BA4F5:F4F1| db $ED, $C8 ; set channel volume
|1BA4F7:F4F3| db $E3, $18, $1A, $17 ; enable vibrato
|1BA4FB:F4F7| db $E1, $08 ; set panning - leaning right
|1BA4FD:F4F9| db $33 ; duration
|1BA4FE:F4FA| db $C9 ; rest
|1BA4FF:F4FB| db $0B, $6D ; duration, params
|1BA501:F4FD| db $9F ; play note G3
|1BA502:F4FE| db $0A ; duration
|1BA503:F4FF| db $A1 ; play note A3
|1BA504:F500| db $09 ; duration
|1BA505:F501| db $A3 ; play note B3
|1BA506:F502| db $08 ; duration
|1BA507:F503| db $A4 ; play note C4
|1BA508:F504| db $18 ; duration
|1BA509:F505| db $B0 ; play note C5
|1BA50A:F506| db $AE ; play note A#4
|1BA50B:F507| db $B5 ; play note F5
|1BA50C:F508| db $B3 ; play note D#5
|1BA50D:F509| db $60, $7D ; duration, params
|1BA50F:F50B| db $B2 ; play note D5
|1BA510:F50C| db $30 ; duration
|1BA511:F50D| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song19_Segment0_Track5:
|1BA512:F50E| db $E0, $0A ; set instrument - strings B
|1BA514:F510| db $ED, $C8 ; set channel volume
|1BA516:F512| db $E3, $1C, $1A, $14 ; enable vibrato
|1BA51A:F516| db $E1, $04 ; set panning - leaning right
|1BA51C:F518| db $59 ; duration
|1BA51D:F519| db $C9 ; rest
|1BA51E:F51A| db $30, $7D ; duration, params
|1BA520:F51C| db $94 ; play note G#2
|1BA521:F51D| db $96 ; play note A#2
|1BA522:F51E| db $60 ; duration
|1BA523:F51F| db $93 ; play note G2
|1BA524:F520| db $30 ; duration
|1BA525:F521| db $C8 ; sustain current note
|1BA526:F522| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song19_Sub_F523:
|1BA527:F523| db $30 ; duration
|1BA528:F524| db $AD ; play note A4
|1BA529:F525| db $0C ; duration
|1BA52A:F526| db $AB ; play note G4
|1BA52B:F527| db $AD ; play note A4
|1BA52C:F528| db $30 ; duration
|1BA52D:F529| db $AF ; play note B4
|1BA52E:F52A| db $18 ; duration
|1BA52F:F52B| db $B2 ; play note D5
|1BA530:F52C| db $48 ; duration
|1BA531:F52D| db $AD ; play note A4
|1BA532:F52E| db $30 ; duration
|1BA533:F52F| db $AF ; play note B4
|1BA534:F530| db $18 ; duration
|1BA535:F531| db $B2 ; play note D5
|1BA536:F532| db $30 ; duration
|1BA537:F533| db $B9 ; play note A5
|1BA538:F534| db $18 ; duration
|1BA539:F535| db $B7 ; play note G5
|1BA53A:F536| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song19_Sub_F537:
|1BA53B:F537| db $0C ; duration
|1BA53C:F538| db $C9 ; rest
|1BA53D:F539| db $0C, $6D ; duration, params
|1BA53F:F53B| db $9F ; play note G3
|1BA540:F53C| db $30 ; duration
|1BA541:F53D| db $A8 ; play note E4
|1BA542:F53E| db $0C ; duration
|1BA543:F53F| db $C9 ; rest
|1BA544:F540| db $A1 ; play note A3
|1BA545:F541| db $30 ; duration
|1BA546:F542| db $AA ; play note F#4
|1BA547:F543| db $0C ; duration
|1BA548:F544| db $C9 ; rest
|1BA549:F545| db $9F ; play note G3
|1BA54A:F546| db $30 ; duration
|1BA54B:F547| db $A8 ; play note E4
|1BA54C:F548| db $0C ; duration
|1BA54D:F549| db $C9 ; rest
|1BA54E:F54A| db $A1 ; play note A3
|1BA54F:F54B| db $30 ; duration
|1BA550:F54C| db $AA ; play note F#4
|1BA551:F54D| db $0C ; duration
|1BA552:F54E| db $C9 ; rest
|1BA553:F54F| db $A6 ; play note D4
|1BA554:F550| db $30 ; duration
|1BA555:F551| db $AB ; play note G4
|1BA556:F552| db $0C ; duration
|1BA557:F553| db $C9 ; rest
|1BA558:F554| db $A5 ; play note C#4
|1BA559:F555| db $30 ; duration
|1BA55A:F556| db $AB ; play note G4
|1BA55B:F557| db $0C ; duration
|1BA55C:F558| db $C9 ; rest
|1BA55D:F559| db $A4 ; play note C4
|1BA55E:F55A| db $30 ; duration
|1BA55F:F55B| db $AB ; play note G4
|1BA560:F55C| db $0C ; duration
|1BA561:F55D| db $C9 ; rest
|1BA562:F55E| db $A4 ; play note C4
|1BA563:F55F| db $30 ; duration
|1BA564:F560| db $AA ; play note F#4
|1BA565:F561| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song19_Sub_F562:
|1BA566:F562| db $30, $7D ; duration, params
|1BA568:F564| db $B2 ; play note D5
|1BA569:F565| db $0C ; duration
|1BA56A:F566| db $B0 ; play note C5
|1BA56B:F567| db $AF ; play note B4
|1BA56C:F568| db $B0 ; play note C5
|1BA56D:F569| db $AF ; play note B4
|1BA56E:F56A| db $30 ; duration
|1BA56F:F56B| db $AB ; play note G4
|1BA570:F56C| db $B0 ; play note C5
|1BA571:F56D| db $0C ; duration
|1BA572:F56E| db $AF ; play note B4
|1BA573:F56F| db $AD ; play note A4
|1BA574:F570| db $AF ; play note B4
|1BA575:F571| db $AD ; play note A4
|1BA576:F572| db $30 ; duration
|1BA577:F573| db $A8 ; play note E4
|1BA578:F574| db $B2 ; play note D5
|1BA579:F575| db $0C ; duration
|1BA57A:F576| db $B0 ; play note C5
|1BA57B:F577| db $AF ; play note B4
|1BA57C:F578| db $B0 ; play note C5
|1BA57D:F579| db $AF ; play note B4
|1BA57E:F57A| db $18 ; duration
|1BA57F:F57B| db $AB ; play note G4
|1BA580:F57C| db $B0 ; play note C5
|1BA581:F57D| db $48 ; duration
|1BA582:F57E| db $B7 ; play note G5
|1BA583:F57F| db $00 ; End

;===================================================================================================

Song1A_CrystalMaiden:
|1BA584:F580| dw Song1A_Segment0

Song1A_Loop:
|1BA586:F582| dw Song1A_Segment1
|1BA588:F584| dw Song1A_Segment2
|1BA58A:F586| dw $00FF, Song1A_Loop ; Loop point
|1BA58E:F58A| dw $0000

Song1A_Segment1:
|1BA590:F58C| dw Song1A_Segment1_Track0
|1BA592:F58E| dw Song1A_Segment1_Track1
|1BA594:F590| dw Song1A_Segment1_Track2
|1BA596:F592| dw Song1A_Segment1_Track3
|1BA598:F594| dw Song1A_Segment1_Track4
|1BA59A:F596| dw Song1A_Segment1_Track5
|1BA59C:F598| dw Song1A_Segment1_Track6
|1BA59E:F59A| dw Song1A_Segment1_Track7

Song1A_Segment0:
|1BA5A0:F59C| dw Song1A_Segment0_Track0
|1BA5A2:F59E| dw Song1A_Segment0_Track1
|1BA5A4:F5A0| dw Song1A_Segment0_Track2
|1BA5A6:F5A2| dw Song1A_Segment0_Track3
|1BA5A8:F5A4| dw Song1A_Segment0_Track4
|1BA5AA:F5A6| dw Song1A_Segment0_Track5
|1BA5AC:F5A8| dw Song1A_Segment0_Track6
|1BA5AE:F5AA| dw Song1A_Segment0_Track7

Song1A_Segment2:
|1BA5B0:F5AC| dw Song1A_Segment2_Track0
|1BA5B2:F5AE| dw Song1A_Segment2_Track1
|1BA5B4:F5B0| dw Song1A_Segment2_Track2
|1BA5B6:F5B2| dw Song1A_Segment2_Track3
|1BA5B8:F5B4| dw Song1A_Segment2_Track4
|1BA5BA:F5B6| dw Song1A_Segment2_Track5
|1BA5BC:F5B8| dw Song1A_Segment2_Track6
|1BA5BE:F5BA| dw Song1A_Segment2_Track7

;---------------------------------------------------------------------------------------------------

Song1A_Segment1_Track0:
|1BA5C0:F5BC| db $E0, $0A ; set instrument - strings B
|1BA5C2:F5BE| db $ED, $64 ; set channel volume
|1BA5C4:F5C0| db $EE, $96, $F0 ; initiate gradual channel volume change
|1BA5C7:F5C3| db $E3, $1A, $1C, $1E ; enable vibrato
|1BA5CB:F5C7| db $E1, $0E ; set panning - leaning left
|1BA5CD:F5C9| db $EF : dw Song1A_Sub_F8D8 : db $01 ; call segment subroutine
|1BA5D1:F5CD| db $EF : dw Song1A_Sub_F8E4 : db $01 ; call segment subroutine
|1BA5D5:F5D1| db $30 ; duration
|1BA5D6:F5D2| db $B2 ; play note D5
|1BA5D7:F5D3| db $0C ; duration
|1BA5D8:F5D4| db $B0 ; play note C5
|1BA5D9:F5D5| db $AF ; play note B4
|1BA5DA:F5D6| db $48 ; duration
|1BA5DB:F5D7| db $AD ; play note A4
|1BA5DC:F5D8| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1A_Segment1_Track1:
|1BA5DD:F5D9| db $ED, $78 ; set channel volume
|1BA5DF:F5DB| db $E1, $14 ; set panning - leaning left
|1BA5E1:F5DD| db $E2, $90, $00 ; initiate gradual panning change
|1BA5E4:F5E0| db $18, $7D ; duration, params
|1BA5E6:F5E2| db $AB ; play note G4
|1BA5E7:F5E3| db $AB ; play note G4
|1BA5E8:F5E4| db $AB ; play note G4
|1BA5E9:F5E5| db $AB ; play note G4
|1BA5EA:F5E6| db $AB ; play note G4
|1BA5EB:F5E7| db $AB ; play note G4
|1BA5EC:F5E8| db $E2, $90, $14 ; initiate gradual panning change
|1BA5EF:F5EB| db $AB ; play note G4
|1BA5F0:F5EC| db $AB ; play note G4
|1BA5F1:F5ED| db $AB ; play note G4
|1BA5F2:F5EE| db $AB ; play note G4
|1BA5F3:F5EF| db $AB ; play note G4
|1BA5F4:F5F0| db $AB ; play note G4
|1BA5F5:F5F1| db $E2, $90, $00 ; initiate gradual panning change
|1BA5F8:F5F4| db $AB ; play note G4
|1BA5F9:F5F5| db $AB ; play note G4
|1BA5FA:F5F6| db $AB ; play note G4
|1BA5FB:F5F7| db $AB ; play note G4
|1BA5FC:F5F8| db $AB ; play note G4
|1BA5FD:F5F9| db $AB ; play note G4
|1BA5FE:F5FA| db $E2, $90, $14 ; initiate gradual panning change
|1BA601:F5FD| db $AB ; play note G4
|1BA602:F5FE| db $AB ; play note G4
|1BA603:F5FF| db $AB ; play note G4
|1BA604:F600| db $AB ; play note G4
|1BA605:F601| db $AB ; play note G4
|1BA606:F602| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song1A_Segment1_Track2:
|1BA607:F603| db $ED, $78 ; set channel volume
|1BA609:F605| db $E1, $14 ; set panning - leaning left
|1BA60B:F607| db $E2, $90, $00 ; initiate gradual panning change
|1BA60E:F60A| db $06 ; duration
|1BA60F:F60B| db $C9 ; rest
|1BA610:F60C| db $18, $7D ; duration, params
|1BA612:F60E| db $A8 ; play note E4
|1BA613:F60F| db $A8 ; play note E4
|1BA614:F610| db $A8 ; play note E4
|1BA615:F611| db $A8 ; play note E4
|1BA616:F612| db $A8 ; play note E4
|1BA617:F613| db $A8 ; play note E4
|1BA618:F614| db $E2, $90, $14 ; initiate gradual panning change
|1BA61B:F617| db $A8 ; play note E4
|1BA61C:F618| db $A8 ; play note E4
|1BA61D:F619| db $A8 ; play note E4
|1BA61E:F61A| db $A8 ; play note E4
|1BA61F:F61B| db $A8 ; play note E4
|1BA620:F61C| db $A8 ; play note E4
|1BA621:F61D| db $E2, $90, $00 ; initiate gradual panning change
|1BA624:F620| db $A8 ; play note E4
|1BA625:F621| db $A8 ; play note E4
|1BA626:F622| db $A8 ; play note E4
|1BA627:F623| db $A8 ; play note E4
|1BA628:F624| db $A8 ; play note E4
|1BA629:F625| db $A8 ; play note E4
|1BA62A:F626| db $E2, $90, $14 ; initiate gradual panning change
|1BA62D:F629| db $A8 ; play note E4
|1BA62E:F62A| db $A8 ; play note E4
|1BA62F:F62B| db $A8 ; play note E4
|1BA630:F62C| db $A6 ; play note D4
|1BA631:F62D| db $A6 ; play note D4
|1BA632:F62E| db $12 ; duration
|1BA633:F62F| db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song1A_Segment1_Track3:
|1BA634:F630| db $ED, $78 ; set channel volume
|1BA636:F632| db $E1, $00 ; set panning - leaning right
|1BA638:F634| db $E2, $90, $14 ; initiate gradual panning change
|1BA63B:F637| db $0C ; duration
|1BA63C:F638| db $C9 ; rest
|1BA63D:F639| db $18, $7D ; duration, params
|1BA63F:F63B| db $A6 ; play note D4
|1BA640:F63C| db $A6 ; play note D4
|1BA641:F63D| db $A6 ; play note D4
|1BA642:F63E| db $A6 ; play note D4
|1BA643:F63F| db $A6 ; play note D4
|1BA644:F640| db $A6 ; play note D4
|1BA645:F641| db $E2, $90, $00 ; initiate gradual panning change
|1BA648:F644| db $A6 ; play note D4
|1BA649:F645| db $A6 ; play note D4
|1BA64A:F646| db $A6 ; play note D4
|1BA64B:F647| db $A6 ; play note D4
|1BA64C:F648| db $A6 ; play note D4
|1BA64D:F649| db $A6 ; play note D4
|1BA64E:F64A| db $E2, $90, $14 ; initiate gradual panning change
|1BA651:F64D| db $A6 ; play note D4
|1BA652:F64E| db $A6 ; play note D4
|1BA653:F64F| db $A6 ; play note D4
|1BA654:F650| db $A6 ; play note D4
|1BA655:F651| db $A6 ; play note D4
|1BA656:F652| db $A6 ; play note D4
|1BA657:F653| db $E2, $90, $00 ; initiate gradual panning change
|1BA65A:F656| db $A6 ; play note D4
|1BA65B:F657| db $A6 ; play note D4
|1BA65C:F658| db $A6 ; play note D4
|1BA65D:F659| db $A4 ; play note C4
|1BA65E:F65A| db $A4 ; play note C4
|1BA65F:F65B| db $0C ; duration
|1BA660:F65C| db $A4 ; play note C4

;---------------------------------------------------------------------------------------------------

Song1A_Segment1_Track4:
|1BA661:F65D| db $ED, $78 ; set channel volume
|1BA663:F65F| db $E1, $00 ; set panning - leaning right
|1BA665:F661| db $E2, $90, $14 ; initiate gradual panning change
|1BA668:F664| db $12 ; duration
|1BA669:F665| db $C9 ; rest
|1BA66A:F666| db $18, $7D ; duration, params
|1BA66C:F668| db $A3 ; play note B3
|1BA66D:F669| db $A3 ; play note B3
|1BA66E:F66A| db $A3 ; play note B3
|1BA66F:F66B| db $A3 ; play note B3
|1BA670:F66C| db $A3 ; play note B3
|1BA671:F66D| db $A3 ; play note B3
|1BA672:F66E| db $E2, $90, $00 ; initiate gradual panning change
|1BA675:F671| db $A3 ; play note B3
|1BA676:F672| db $A3 ; play note B3
|1BA677:F673| db $A3 ; play note B3
|1BA678:F674| db $A3 ; play note B3
|1BA679:F675| db $A3 ; play note B3
|1BA67A:F676| db $A3 ; play note B3
|1BA67B:F677| db $E2, $90, $14 ; initiate gradual panning change
|1BA67E:F67A| db $A3 ; play note B3
|1BA67F:F67B| db $A3 ; play note B3
|1BA680:F67C| db $A3 ; play note B3
|1BA681:F67D| db $A2 ; play note A#3
|1BA682:F67E| db $A2 ; play note A#3
|1BA683:F67F| db $A2 ; play note A#3
|1BA684:F680| db $E2, $90, $00 ; initiate gradual panning change
|1BA687:F683| db $A1 ; play note A3
|1BA688:F684| db $A1 ; play note A3
|1BA689:F685| db $A1 ; play note A3
|1BA68A:F686| db $A1 ; play note A3
|1BA68B:F687| db $A1 ; play note A3
|1BA68C:F688| db $06 ; duration
|1BA68D:F689| db $A1 ; play note A3

;---------------------------------------------------------------------------------------------------

Song1A_Segment1_Track5:
|1BA68E:F68A| db $E0, $0A ; set instrument - strings B
|1BA690:F68C| db $ED, $64 ; set channel volume
|1BA692:F68E| db $EE, $8C, $DC ; initiate gradual channel volume change
|1BA695:F691| db $E1, $06 ; set panning - leaning right
|1BA697:F693| db $E3, $1A, $10, $14 ; enable vibrato
|1BA69B:F697| db $EF : dw Song1A_Sub_F8F3 : db $01 ; call segment subroutine
|1BA69F:F69B| db $A4 ; play note C4
|1BA6A0:F69C| db $A4 ; play note C4
|1BA6A1:F69D| db $A3 ; play note B3
|1BA6A2:F69E| db $A2 ; play note A#3
|1BA6A3:F69F| db $A1 ; play note A3
|1BA6A4:F6A0| db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song1A_Segment1_Track6:
|1BA6A5:F6A1| db $E0, $0A ; set instrument - strings B
|1BA6A7:F6A3| db $ED, $64 ; set channel volume
|1BA6A9:F6A5| db $EE, $96, $DC ; initiate gradual channel volume change
|1BA6AC:F6A8| db $E1, $0A ; set panning - balanced
|1BA6AE:F6AA| db $E3, $14, $14, $14 ; enable vibrato
|1BA6B2:F6AE| db $0C ; duration
|1BA6B3:F6AF| db $C9 ; rest
|1BA6B4:F6B0| db $0C, $6D ; duration, params
|1BA6B6:F6B2| db $9F ; play note G3
|1BA6B7:F6B3| db $30 ; duration
|1BA6B8:F6B4| db $A8 ; play note E4
|1BA6B9:F6B5| db $0C ; duration
|1BA6BA:F6B6| db $C9 ; rest
|1BA6BB:F6B7| db $A1 ; play note A3
|1BA6BC:F6B8| db $30 ; duration
|1BA6BD:F6B9| db $AA ; play note F#4
|1BA6BE:F6BA| db $0C ; duration
|1BA6BF:F6BB| db $C9 ; rest
|1BA6C0:F6BC| db $9F ; play note G3
|1BA6C1:F6BD| db $30 ; duration
|1BA6C2:F6BE| db $A8 ; play note E4
|1BA6C3:F6BF| db $0C ; duration
|1BA6C4:F6C0| db $C9 ; rest
|1BA6C5:F6C1| db $A1 ; play note A3
|1BA6C6:F6C2| db $30 ; duration
|1BA6C7:F6C3| db $AA ; play note F#4
|1BA6C8:F6C4| db $0C ; duration
|1BA6C9:F6C5| db $C9 ; rest
|1BA6CA:F6C6| db $9F ; play note G3
|1BA6CB:F6C7| db $30 ; duration
|1BA6CC:F6C8| db $A6 ; play note D4
|1BA6CD:F6C9| db $0C ; duration
|1BA6CE:F6CA| db $C9 ; rest
|1BA6CF:F6CB| db $9F ; play note G3
|1BA6D0:F6CC| db $30 ; duration
|1BA6D1:F6CD| db $A5 ; play note C#4
|1BA6D2:F6CE| db $0C ; duration
|1BA6D3:F6CF| db $C9 ; rest
|1BA6D4:F6D0| db $9F ; play note G3
|1BA6D5:F6D1| db $30 ; duration
|1BA6D6:F6D2| db $A4 ; play note C4
|1BA6D7:F6D3| db $0C ; duration
|1BA6D8:F6D4| db $C9 ; rest
|1BA6D9:F6D5| db $A1 ; play note A3
|1BA6DA:F6D6| db $30 ; duration
|1BA6DB:F6D7| db $AA ; play note F#4

;---------------------------------------------------------------------------------------------------

Song1A_Segment1_Track7:
|1BA6DC:F6D8| db $E0, $0A ; set instrument - strings B
|1BA6DE:F6DA| db $ED, $64 ; set channel volume
|1BA6E0:F6DC| db $EE, $A0, $C8 ; initiate gradual channel volume change
|1BA6E3:F6DF| db $E3, $1A, $1C, $1E ; enable vibrato
|1BA6E7:F6E3| db $E1, $0C ; set panning - leaning left
|1BA6E9:F6E5| db $EF : dw Song1A_Sub_F8F8 : db $01 ; call segment subroutine
|1BA6ED:F6E9| db $EF : dw Song1A_Sub_F8E4 : db $01 ; call segment subroutine
|1BA6F1:F6ED| db $30 ; duration
|1BA6F2:F6EE| db $B2 ; play note D5
|1BA6F3:F6EF| db $0C ; duration
|1BA6F4:F6F0| db $B0 ; play note C5
|1BA6F5:F6F1| db $AF ; play note B4
|1BA6F6:F6F2| db $40 ; duration
|1BA6F7:F6F3| db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song1A_Segment0_Track0:
|1BA6F8:F6F4| db $FA, $18 ; set base percussion sample
|1BA6FA:F6F6| db $E5, $B4 ; set song volume
|1BA6FC:F6F8| db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
|1BA700:F6FC| db $F7, $02, $3C, $02 ; configure EDL, EFB, FIR
|1BA704:F700| db $F8, $1E, $28, $28 ; initiate gradual echo volume change
|1BA708:F704| db $E7, $21 ; set song tempo
|1BA70A:F706| db $E8, $B4, $3E ; initiate gradual tempo change
|1BA70D:F709| db $E0, $0E ; set instrument - chimes
|1BA70F:F70B| db $ED, $14 ; set channel volume
|1BA711:F70D| db $EF : dw Song1A_Sub_F905 : db $01 ; call segment subroutine
|1BA715:F711| db $C9 ; rest
|1BA716:F712| db $C9 ; rest
|1BA717:F713| db $E7, $15 ; set song tempo
|1BA719:F715| db $E0, $0E ; set instrument - chimes
|1BA71B:F717| db $E1, $14 ; set panning - leaning left
|1BA71D:F719| db $EE, $50, $78 ; initiate gradual channel volume change
|1BA720:F71C| db $18 ; duration
|1BA721:F71D| db $C9 ; rest
|1BA722:F71E| db $18, $7D ; duration, params
|1BA724:F720| db $AB ; play note G4
|1BA725:F721| db $AB ; play note G4
|1BA726:F722| db $AB ; play note G4
|1BA727:F723| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1A_Segment0_Track1:
|1BA728:F724| db $E0, $0E ; set instrument - chimes
|1BA72A:F726| db $ED, $A0 ; set channel volume
|1BA72C:F728| db $E1, $14 ; set panning - leaning left
|1BA72E:F72A| db $30, $7D ; duration, params
|1BA730:F72C| db $9A ; play note D3
|1BA731:F72D| db $9D ; play note F3
|1BA732:F72E| db $A3 ; play note B3
|1BA733:F72F| db $A6 ; play note D4
|1BA734:F730| db $EE, $FA, $3C ; initiate gradual channel volume change
|1BA737:F733| db $AD ; play note A4
|1BA738:F734| db $AD ; play note A4
|1BA739:F735| db $AD ; play note A4
|1BA73A:F736| db $AD ; play note A4
|1BA73B:F737| db $10 ; duration
|1BA73C:F738| db $AD ; play note A4
|1BA73D:F739| db $AD ; play note A4
|1BA73E:F73A| db $AD ; play note A4
|1BA73F:F73B| db $AD ; play note A4
|1BA740:F73C| db $AD ; play note A4
|1BA741:F73D| db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song1A_Segment0_Track2:
|1BA742:F73E| db $E0, $0E ; set instrument - chimes
|1BA744:F740| db $ED, $A0 ; set channel volume
|1BA746:F742| db $E1, $0D ; set panning - leaning left
|1BA748:F744| db $0C ; duration
|1BA749:F745| db $C9 ; rest
|1BA74A:F746| db $30, $7D ; duration, params
|1BA74C:F748| db $9D ; play note F3
|1BA74D:F749| db $A1 ; play note A3
|1BA74E:F74A| db $A6 ; play note D4
|1BA74F:F74B| db $A9 ; play note F4
|1BA750:F74C| db $EE, $FA, $3C ; initiate gradual channel volume change
|1BA753:F74F| db $AF ; play note B4
|1BA754:F750| db $AF ; play note B4
|1BA755:F751| db $AF ; play note B4
|1BA756:F752| db $24 ; duration
|1BA757:F753| db $AF ; play note B4
|1BA758:F754| db $04 ; duration
|1BA759:F755| db $C8 ; sustain current note
|1BA75A:F756| db $10 ; duration
|1BA75B:F757| db $AF ; play note B4
|1BA75C:F758| db $AF ; play note B4
|1BA75D:F759| db $AF ; play note B4
|1BA75E:F75A| db $AF ; play note B4
|1BA75F:F75B| db $AF ; play note B4
|1BA760:F75C| db $0C ; duration
|1BA761:F75D| db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song1A_Segment0_Track3:
|1BA762:F75E| db $E0, $0E ; set instrument - chimes
|1BA764:F760| db $ED, $A0 ; set channel volume
|1BA766:F762| db $E1, $08 ; set panning - leaning right
|1BA768:F764| db $18 ; duration
|1BA769:F765| db $C9 ; rest
|1BA76A:F766| db $30, $7D ; duration, params
|1BA76C:F768| db $A1 ; play note A3
|1BA76D:F769| db $A3 ; play note B3
|1BA76E:F76A| db $A9 ; play note F4
|1BA76F:F76B| db $AD ; play note A4
|1BA770:F76C| db $EE, $FA, $3C ; initiate gradual channel volume change
|1BA773:F76F| db $AD ; play note A4
|1BA774:F770| db $AD ; play note A4
|1BA775:F771| db $AD ; play note A4
|1BA776:F772| db $18 ; duration
|1BA777:F773| db $AD ; play note A4
|1BA778:F774| db $08 ; duration
|1BA779:F775| db $C8 ; sustain current note
|1BA77A:F776| db $10 ; duration
|1BA77B:F777| db $AD ; play note A4
|1BA77C:F778| db $AD ; play note A4
|1BA77D:F779| db $AD ; play note A4
|1BA77E:F77A| db $AD ; play note A4
|1BA77F:F77B| db $AD ; play note A4
|1BA780:F77C| db $08 ; duration
|1BA781:F77D| db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song1A_Segment0_Track4:
|1BA782:F77E| db $E0, $0E ; set instrument - chimes
|1BA784:F780| db $ED, $A0 ; set channel volume
|1BA786:F782| db $E1, $00 ; set panning - leaning right
|1BA788:F784| db $24 ; duration
|1BA789:F785| db $C9 ; rest
|1BA78A:F786| db $30, $7D ; duration, params
|1BA78C:F788| db $A3 ; play note B3
|1BA78D:F789| db $A6 ; play note D4
|1BA78E:F78A| db $AD ; play note A4
|1BA78F:F78B| db $AF ; play note B4
|1BA790:F78C| db $EE, $FA, $3C ; initiate gradual channel volume change
|1BA793:F78F| db $AF ; play note B4
|1BA794:F790| db $AF ; play note B4
|1BA795:F791| db $AF ; play note B4
|1BA796:F792| db $0C ; duration
|1BA797:F793| db $AF ; play note B4
|1BA798:F794| db $C8 ; sustain current note
|1BA799:F795| db $10 ; duration
|1BA79A:F796| db $AF ; play note B4
|1BA79B:F797| db $AF ; play note B4
|1BA79C:F798| db $AF ; play note B4
|1BA79D:F799| db $AF ; play note B4
|1BA79E:F79A| db $AF ; play note B4
|1BA79F:F79B| db $04 ; duration
|1BA7A0:F79C| db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song1A_Segment0_Track5:
|1BA7A1:F79D| db $E0, $0E ; set instrument - chimes
|1BA7A3:F79F| db $ED, $14 ; set channel volume
|1BA7A5:F7A1| db $E1, $0D ; set panning - leaning left
|1BA7A7:F7A3| db $EF : dw Song1A_Sub_F905 : db $01 ; call segment subroutine
|1BA7AB:F7A7| db $C9 ; rest
|1BA7AC:F7A8| db $C9 ; rest
|1BA7AD:F7A9| db $EE, $50, $78 ; initiate gradual channel volume change
|1BA7B0:F7AC| db $1E ; duration
|1BA7B1:F7AD| db $C9 ; rest
|1BA7B2:F7AE| db $18, $7D ; duration, params
|1BA7B4:F7B0| db $A8 ; play note E4
|1BA7B5:F7B1| db $A8 ; play note E4
|1BA7B6:F7B2| db $12 ; duration
|1BA7B7:F7B3| db $A8 ; play note E4

;---------------------------------------------------------------------------------------------------

Song1A_Segment0_Track6:
|1BA7B8:F7B4| db $E0, $0E ; set instrument - chimes
|1BA7BA:F7B6| db $ED, $14 ; set channel volume
|1BA7BC:F7B8| db $E1, $07 ; set panning - leaning right
|1BA7BE:F7BA| db $EF : dw Song1A_Sub_F905 : db $01 ; call segment subroutine
|1BA7C2:F7BE| db $C9 ; rest
|1BA7C3:F7BF| db $C9 ; rest
|1BA7C4:F7C0| db $EE, $50, $78 ; initiate gradual channel volume change
|1BA7C7:F7C3| db $24 ; duration
|1BA7C8:F7C4| db $C9 ; rest
|1BA7C9:F7C5| db $18, $7D ; duration, params
|1BA7CB:F7C7| db $A6 ; play note D4
|1BA7CC:F7C8| db $A6 ; play note D4
|1BA7CD:F7C9| db $0C ; duration
|1BA7CE:F7CA| db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song1A_Segment0_Track7:
|1BA7CF:F7CB| db $E0, $0E ; set instrument - chimes
|1BA7D1:F7CD| db $ED, $14 ; set channel volume
|1BA7D3:F7CF| db $E1, $00 ; set panning - leaning right
|1BA7D5:F7D1| db $EF : dw Song1A_Sub_F905 : db $01 ; call segment subroutine
|1BA7D9:F7D5| db $C9 ; rest
|1BA7DA:F7D6| db $C9 ; rest
|1BA7DB:F7D7| db $EE, $50, $78 ; initiate gradual channel volume change
|1BA7DE:F7DA| db $2A ; duration
|1BA7DF:F7DB| db $C9 ; rest
|1BA7E0:F7DC| db $18, $7D ; duration, params
|1BA7E2:F7DE| db $A3 ; play note B3
|1BA7E3:F7DF| db $A3 ; play note B3
|1BA7E4:F7E0| db $06 ; duration
|1BA7E5:F7E1| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song1A_Segment2_Track0:
|1BA7E6:F7E2| db $EF : dw Song1A_Sub_F8D8 : db $01 ; call segment subroutine
|1BA7EA:F7E6| db $EF : dw Song1A_Sub_F8E4 : db $01 ; call segment subroutine
|1BA7EE:F7EA| db $48 ; duration
|1BA7EF:F7EB| db $BE ; play note D6
|1BA7F0:F7EC| db $C8 ; sustain current note
|1BA7F1:F7ED| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1A_Segment2_Track1:
|1BA7F2:F7EE| db $E1, $14 ; set panning - leaning left
|1BA7F4:F7F0| db $E2, $90, $00 ; initiate gradual panning change
|1BA7F7:F7F3| db $18, $7D ; duration, params
|1BA7F9:F7F5| db $AB ; play note G4
|1BA7FA:F7F6| db $AB ; play note G4
|1BA7FB:F7F7| db $AB ; play note G4
|1BA7FC:F7F8| db $AB ; play note G4
|1BA7FD:F7F9| db $AB ; play note G4
|1BA7FE:F7FA| db $AB ; play note G4
|1BA7FF:F7FB| db $E2, $90, $14 ; initiate gradual panning change
|1BA802:F7FE| db $AB ; play note G4
|1BA803:F7FF| db $AB ; play note G4
|1BA804:F800| db $AB ; play note G4
|1BA805:F801| db $AB ; play note G4
|1BA806:F802| db $AB ; play note G4
|1BA807:F803| db $AB ; play note G4
|1BA808:F804| db $E2, $90, $00 ; initiate gradual panning change
|1BA80B:F807| db $AB ; play note G4
|1BA80C:F808| db $AB ; play note G4
|1BA80D:F809| db $AB ; play note G4
|1BA80E:F80A| db $AB ; play note G4
|1BA80F:F80B| db $AB ; play note G4
|1BA810:F80C| db $AB ; play note G4
|1BA811:F80D| db $E2, $90, $14 ; initiate gradual panning change
|1BA814:F810| db $AB ; play note G4
|1BA815:F811| db $AB ; play note G4
|1BA816:F812| db $AB ; play note G4
|1BA817:F813| db $AB ; play note G4
|1BA818:F814| db $AB ; play note G4
|1BA819:F815| db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song1A_Segment2_Track2:
|1BA81A:F816| db $E1, $14 ; set panning - leaning left
|1BA81C:F818| db $E2, $90, $00 ; initiate gradual panning change
|1BA81F:F81B| db $06 ; duration
|1BA820:F81C| db $C9 ; rest
|1BA821:F81D| db $18, $7D ; duration, params
|1BA823:F81F| db $A8 ; play note E4
|1BA824:F820| db $A8 ; play note E4
|1BA825:F821| db $A8 ; play note E4
|1BA826:F822| db $AA ; play note F#4
|1BA827:F823| db $AA ; play note F#4
|1BA828:F824| db $AA ; play note F#4
|1BA829:F825| db $E2, $90, $14 ; initiate gradual panning change
|1BA82C:F828| db $A8 ; play note E4
|1BA82D:F829| db $A8 ; play note E4
|1BA82E:F82A| db $A8 ; play note E4
|1BA82F:F82B| db $AA ; play note F#4
|1BA830:F82C| db $AA ; play note F#4
|1BA831:F82D| db $AA ; play note F#4
|1BA832:F82E| db $E2, $90, $00 ; initiate gradual panning change
|1BA835:F831| db $A8 ; play note E4
|1BA836:F832| db $A8 ; play note E4
|1BA837:F833| db $A8 ; play note E4
|1BA838:F834| db $A8 ; play note E4
|1BA839:F835| db $A8 ; play note E4
|1BA83A:F836| db $A8 ; play note E4
|1BA83B:F837| db $E2, $90, $14 ; initiate gradual panning change
|1BA83E:F83A| db $A8 ; play note E4
|1BA83F:F83B| db $A8 ; play note E4
|1BA840:F83C| db $A8 ; play note E4
|1BA841:F83D| db $A6 ; play note D4
|1BA842:F83E| db $A6 ; play note D4
|1BA843:F83F| db $12 ; duration
|1BA844:F840| db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song1A_Segment2_Track3:
|1BA845:F841| db $E1, $00 ; set panning - leaning right
|1BA847:F843| db $E2, $90, $14 ; initiate gradual panning change
|1BA84A:F846| db $0C ; duration
|1BA84B:F847| db $C9 ; rest
|1BA84C:F848| db $18, $7D ; duration, params
|1BA84E:F84A| db $A6 ; play note D4
|1BA84F:F84B| db $A6 ; play note D4
|1BA850:F84C| db $A6 ; play note D4
|1BA851:F84D| db $A6 ; play note D4
|1BA852:F84E| db $A6 ; play note D4
|1BA853:F84F| db $A6 ; play note D4
|1BA854:F850| db $E2, $90, $00 ; initiate gradual panning change
|1BA857:F853| db $A6 ; play note D4
|1BA858:F854| db $A6 ; play note D4
|1BA859:F855| db $A6 ; play note D4
|1BA85A:F856| db $A6 ; play note D4
|1BA85B:F857| db $A6 ; play note D4
|1BA85C:F858| db $A6 ; play note D4
|1BA85D:F859| db $E2, $90, $14 ; initiate gradual panning change
|1BA860:F85C| db $A6 ; play note D4
|1BA861:F85D| db $A6 ; play note D4
|1BA862:F85E| db $A6 ; play note D4
|1BA863:F85F| db $A6 ; play note D4
|1BA864:F860| db $A6 ; play note D4
|1BA865:F861| db $A6 ; play note D4
|1BA866:F862| db $E2, $90, $00 ; initiate gradual panning change
|1BA869:F865| db $A6 ; play note D4
|1BA86A:F866| db $A6 ; play note D4
|1BA86B:F867| db $A6 ; play note D4
|1BA86C:F868| db $A4 ; play note C4
|1BA86D:F869| db $A4 ; play note C4
|1BA86E:F86A| db $0C ; duration
|1BA86F:F86B| db $A4 ; play note C4

;---------------------------------------------------------------------------------------------------

Song1A_Segment2_Track4:
|1BA870:F86C| db $E1, $00 ; set panning - leaning right
|1BA872:F86E| db $E2, $90, $14 ; initiate gradual panning change
|1BA875:F871| db $12 ; duration
|1BA876:F872| db $C9 ; rest
|1BA877:F873| db $18, $7D ; duration, params
|1BA879:F875| db $A3 ; play note B3
|1BA87A:F876| db $A3 ; play note B3
|1BA87B:F877| db $A3 ; play note B3
|1BA87C:F878| db $A1 ; play note A3
|1BA87D:F879| db $A1 ; play note A3
|1BA87E:F87A| db $A1 ; play note A3
|1BA87F:F87B| db $E2, $90, $00 ; initiate gradual panning change
|1BA882:F87E| db $A3 ; play note B3
|1BA883:F87F| db $A3 ; play note B3
|1BA884:F880| db $A3 ; play note B3
|1BA885:F881| db $A1 ; play note A3
|1BA886:F882| db $A1 ; play note A3
|1BA887:F883| db $A1 ; play note A3
|1BA888:F884| db $E2, $90, $14 ; initiate gradual panning change
|1BA88B:F887| db $A3 ; play note B3
|1BA88C:F888| db $A3 ; play note B3
|1BA88D:F889| db $A3 ; play note B3
|1BA88E:F88A| db $A2 ; play note A#3
|1BA88F:F88B| db $A2 ; play note A#3
|1BA890:F88C| db $A2 ; play note A#3
|1BA891:F88D| db $E2, $90, $00 ; initiate gradual panning change
|1BA894:F890| db $A1 ; play note A3
|1BA895:F891| db $A1 ; play note A3
|1BA896:F892| db $A1 ; play note A3
|1BA897:F893| db $A1 ; play note A3
|1BA898:F894| db $A1 ; play note A3
|1BA899:F895| db $06 ; duration
|1BA89A:F896| db $A1 ; play note A3

;---------------------------------------------------------------------------------------------------

Song1A_Segment2_Track5:
|1BA89B:F897| db $EF : dw Song1A_Sub_F8F3 : db $01 ; call segment subroutine
|1BA89F:F89B| db $A4 ; play note C4
|1BA8A0:F89C| db $A4 ; play note C4
|1BA8A1:F89D| db $A3 ; play note B3
|1BA8A2:F89E| db $A2 ; play note A#3
|1BA8A3:F89F| db $A1 ; play note A3
|1BA8A4:F8A0| db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song1A_Segment2_Track6:
|1BA8A5:F8A1| db $0C ; duration
|1BA8A6:F8A2| db $C9 ; rest
|1BA8A7:F8A3| db $0C, $6D ; duration, params
|1BA8A9:F8A5| db $9F ; play note G3
|1BA8AA:F8A6| db $30 ; duration
|1BA8AB:F8A7| db $A8 ; play note E4
|1BA8AC:F8A8| db $0C ; duration
|1BA8AD:F8A9| db $C9 ; rest
|1BA8AE:F8AA| db $A1 ; play note A3
|1BA8AF:F8AB| db $30 ; duration
|1BA8B0:F8AC| db $AA ; play note F#4
|1BA8B1:F8AD| db $0C ; duration
|1BA8B2:F8AE| db $C9 ; rest
|1BA8B3:F8AF| db $9F ; play note G3
|1BA8B4:F8B0| db $30 ; duration
|1BA8B5:F8B1| db $A8 ; play note E4
|1BA8B6:F8B2| db $0C ; duration
|1BA8B7:F8B3| db $C9 ; rest
|1BA8B8:F8B4| db $A1 ; play note A3
|1BA8B9:F8B5| db $30 ; duration
|1BA8BA:F8B6| db $AA ; play note F#4
|1BA8BB:F8B7| db $0C ; duration
|1BA8BC:F8B8| db $C9 ; rest
|1BA8BD:F8B9| db $9F ; play note G3
|1BA8BE:F8BA| db $30 ; duration
|1BA8BF:F8BB| db $A6 ; play note D4
|1BA8C0:F8BC| db $0C ; duration
|1BA8C1:F8BD| db $C9 ; rest
|1BA8C2:F8BE| db $9F ; play note G3
|1BA8C3:F8BF| db $30 ; duration
|1BA8C4:F8C0| db $A5 ; play note C#4
|1BA8C5:F8C1| db $0C ; duration
|1BA8C6:F8C2| db $C9 ; rest
|1BA8C7:F8C3| db $9F ; play note G3
|1BA8C8:F8C4| db $30 ; duration
|1BA8C9:F8C5| db $A4 ; play note C4
|1BA8CA:F8C6| db $0C ; duration
|1BA8CB:F8C7| db $C9 ; rest
|1BA8CC:F8C8| db $A1 ; play note A3
|1BA8CD:F8C9| db $30 ; duration
|1BA8CE:F8CA| db $AA ; play note F#4

;---------------------------------------------------------------------------------------------------

Song1A_Segment2_Track7:
|1BA8CF:F8CB| db $EF : dw Song1A_Sub_F8F8 : db $01 ; call segment subroutine
|1BA8D3:F8CF| db $EF : dw Song1A_Sub_F8E4 : db $01 ; call segment subroutine
|1BA8D7:F8D3| db $48 ; duration
|1BA8D8:F8D4| db $BE ; play note D6
|1BA8D9:F8D5| db $40 ; duration
|1BA8DA:F8D6| db $C8 ; sustain current note
|1BA8DB:F8D7| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1A_Sub_F8D8:
|1BA8DC:F8D8| db $30, $6D ; duration, params
|1BA8DE:F8DA| db $AF ; play note B4
|1BA8DF:F8DB| db $18 ; duration
|1BA8E0:F8DC| db $B2 ; play note D5
|1BA8E1:F8DD| db $30, $7D ; duration, params
|1BA8E3:F8DF| db $AD ; play note A4
|1BA8E4:F8E0| db $0C ; duration
|1BA8E5:F8E1| db $AB ; play note G4
|1BA8E6:F8E2| db $AD ; play note A4
|1BA8E7:F8E3| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1A_Sub_F8E4:
|1BA8E8:F8E4| db $30 ; duration
|1BA8E9:F8E5| db $AF ; play note B4
|1BA8EA:F8E6| db $18 ; duration
|1BA8EB:F8E7| db $B2 ; play note D5
|1BA8EC:F8E8| db $48 ; duration
|1BA8ED:F8E9| db $AD ; play note A4
|1BA8EE:F8EA| db $30 ; duration
|1BA8EF:F8EB| db $AF ; play note B4
|1BA8F0:F8EC| db $18 ; duration
|1BA8F1:F8ED| db $B2 ; play note D5
|1BA8F2:F8EE| db $30 ; duration
|1BA8F3:F8EF| db $B9 ; play note A5
|1BA8F4:F8F0| db $18 ; duration
|1BA8F5:F8F1| db $B7 ; play note G5
|1BA8F6:F8F2| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1A_Sub_F8F3:
|1BA8F7:F8F3| db $48, $6D ; duration, params
|1BA8F9:F8F5| db $A4 ; play note C4
|1BA8FA:F8F6| db $A4 ; play note C4
|1BA8FB:F8F7| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1A_Sub_F8F8:
|1BA8FC:F8F8| db $08 ; duration
|1BA8FD:F8F9| db $C9 ; rest
|1BA8FE:F8FA| db $30, $6D ; duration, params
|1BA900:F8FC| db $AF ; play note B4
|1BA901:F8FD| db $18 ; duration
|1BA902:F8FE| db $B2 ; play note D5
|1BA903:F8FF| db $30 ; duration
|1BA904:F900| db $AD ; play note A4
|1BA905:F901| db $0C ; duration
|1BA906:F902| db $AB ; play note G4
|1BA907:F903| db $AD ; play note A4
|1BA908:F904| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1A_Sub_F905:
|1BA909:F905| db $60 ; duration
|1BA90A:F906| db $C9 ; rest
|1BA90B:F907| db $C9 ; rest
|1BA90C:F908| db $00 ; End

;===================================================================================================

Song1B_BigFairy:
|1BA90D:F909| dw Song1B_Segment0

Song1B_Loop:
|1BA90F:F90B| dw Song1B_Segment1
|1BA911:F90D| dw Song1B_Segment2
|1BA913:F90F| dw $00FF, Song1B_Loop ; Loop point
|1BA917:F913| dw $0000

Song1B_Segment1:
|1BA919:F915| dw Song1B_Segment1_Track0
|1BA91B:F917| dw Song1B_Segment1_Track1
|1BA91D:F919| dw Song1B_Segment1_Track2
|1BA91F:F91B| dw Song1B_Segment1_Track3
|1BA921:F91D| dw Song1B_Segment1_Track4
|1BA923:F91F| dw Song1B_Segment1_Track5
|1BA925:F921| dw Song1B_Segment1_Track6
|1BA927:F923| dw $0000

Song1B_Segment0:
|1BA929:F925| dw Song1B_Segment0_Track0
|1BA92B:F927| dw Song1B_Segment0_Track1
|1BA92D:F929| dw Song1B_Segment0_Track2
|1BA92F:F92B| dw Song1B_Segment0_Track3
|1BA931:F92D| dw Song1B_Segment0_Track4
|1BA933:F92F| dw $0000
|1BA935:F931| dw $0000
|1BA937:F933| dw $0000

Song1B_Segment2:
|1BA939:F935| dw Song1B_Segment2_Track0
|1BA93B:F937| dw Song1B_Segment2_Track1
|1BA93D:F939| dw Song1B_Segment2_Track2
|1BA93F:F93B| dw Song1B_Segment2_Track3
|1BA941:F93D| dw Song1B_Segment2_Track4
|1BA943:F93F| dw Song1B_Segment2_Track5
|1BA945:F941| dw Song1B_Segment2_Track6
|1BA947:F943| dw $0000

;---------------------------------------------------------------------------------------------------

Song1B_Segment1_Track0:
|1BA949:F945| db $E5, $A0 ; set song volume
|1BA94B:F947| db $F5, $FF, $28, $28 ; configure EON, EVOLL, EVOLR
|1BA94F:F94B| db $F7, $02, $50, $02 ; configure EDL, EFB, FIR
|1BA953:F94F| db $E7, $21 ; set song tempo
|1BA955:F951| db $E0, $0F ; set instrument - harp
|1BA957:F953| db $ED, $8C ; set channel volume
|1BA959:F955| db $E1, $02 ; set panning - leaning right
|1BA95B:F957| db $30, $7D ; duration, params
|1BA95D:F959| db $BA ; play note A#5
|1BA95E:F95A| db $B8 ; play note G#5
|1BA95F:F95B| db $B7 ; play note G5
|1BA960:F95C| db $B8 ; play note G#5
|1BA961:F95D| db $B8 ; play note G#5
|1BA962:F95E| db $B6 ; play note F#5
|1BA963:F95F| db $B5 ; play note F5
|1BA964:F960| db $B6 ; play note F#5
|1BA965:F961| db $B6 ; play note F#5
|1BA966:F962| db $B5 ; play note F5
|1BA967:F963| db $B4 ; play note E5
|1BA968:F964| db $B5 ; play note F5
|1BA969:F965| db $B5 ; play note F5
|1BA96A:F966| db $B3 ; play note D#5
|1BA96B:F967| db $B2 ; play note D5
|1BA96C:F968| db $B3 ; play note D#5
|1BA96D:F969| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1B_Segment1_Track1:
|1BA96E:F96A| db $E0, $0F ; set instrument - harp
|1BA970:F96C| db $ED, $8C ; set channel volume
|1BA972:F96E| db $E1, $04 ; set panning - leaning right
|1BA974:F970| db $0C ; duration
|1BA975:F971| db $C9 ; rest
|1BA976:F972| db $30, $7D ; duration, params
|1BA978:F974| db $B3 ; play note D#5
|1BA979:F975| db $B3 ; play note D#5
|1BA97A:F976| db $B3 ; play note D#5
|1BA97B:F977| db $B3 ; play note D#5
|1BA97C:F978| db $B1 ; play note C#5
|1BA97D:F979| db $B1 ; play note C#5
|1BA97E:F97A| db $B1 ; play note C#5
|1BA97F:F97B| db $B1 ; play note C#5
|1BA980:F97C| db $AF ; play note B4
|1BA981:F97D| db $AF ; play note B4
|1BA982:F97E| db $AF ; play note B4
|1BA983:F97F| db $AF ; play note B4
|1BA984:F980| db $AE ; play note A#4
|1BA985:F981| db $AE ; play note A#4
|1BA986:F982| db $AE ; play note A#4
|1BA987:F983| db $24 ; duration
|1BA988:F984| db $AE ; play note A#4

;---------------------------------------------------------------------------------------------------

Song1B_Segment1_Track2:
|1BA989:F985| db $E0, $0F ; set instrument - harp
|1BA98B:F987| db $ED, $8C ; set channel volume
|1BA98D:F989| db $E1, $06 ; set panning - leaning right
|1BA98F:F98B| db $18 ; duration
|1BA990:F98C| db $C9 ; rest
|1BA991:F98D| db $30, $7D ; duration, params
|1BA993:F98F| db $AF ; play note B4
|1BA994:F990| db $AF ; play note B4
|1BA995:F991| db $AF ; play note B4
|1BA996:F992| db $AF ; play note B4
|1BA997:F993| db $AE ; play note A#4
|1BA998:F994| db $AE ; play note A#4
|1BA999:F995| db $AE ; play note A#4
|1BA99A:F996| db $AE ; play note A#4
|1BA99B:F997| db $AC ; play note G#4
|1BA99C:F998| db $AC ; play note G#4
|1BA99D:F999| db $AC ; play note G#4
|1BA99E:F99A| db $AC ; play note G#4
|1BA99F:F99B| db $AA ; play note F#4
|1BA9A0:F99C| db $AA ; play note F#4
|1BA9A1:F99D| db $AA ; play note F#4
|1BA9A2:F99E| db $18 ; duration
|1BA9A3:F99F| db $AA ; play note F#4

;---------------------------------------------------------------------------------------------------

Song1B_Segment1_Track3:
|1BA9A4:F9A0| db $E0, $0F ; set instrument - harp
|1BA9A6:F9A2| db $ED, $8C ; set channel volume
|1BA9A8:F9A4| db $E1, $08 ; set panning - leaning right
|1BA9AA:F9A6| db $24 ; duration
|1BA9AB:F9A7| db $C9 ; rest
|1BA9AC:F9A8| db $30, $7D ; duration, params
|1BA9AE:F9AA| db $AC ; play note G#4
|1BA9AF:F9AB| db $AC ; play note G#4
|1BA9B0:F9AC| db $AC ; play note G#4
|1BA9B1:F9AD| db $AC ; play note G#4
|1BA9B2:F9AE| db $AA ; play note F#4
|1BA9B3:F9AF| db $AA ; play note F#4
|1BA9B4:F9B0| db $AA ; play note F#4
|1BA9B5:F9B1| db $AA ; play note F#4
|1BA9B6:F9B2| db $A9 ; play note F4
|1BA9B7:F9B3| db $A9 ; play note F4
|1BA9B8:F9B4| db $A9 ; play note F4
|1BA9B9:F9B5| db $A9 ; play note F4
|1BA9BA:F9B6| db $A7 ; play note D#4
|1BA9BB:F9B7| db $A7 ; play note D#4
|1BA9BC:F9B8| db $A7 ; play note D#4
|1BA9BD:F9B9| db $0C ; duration
|1BA9BE:F9BA| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song1B_Segment1_Track4:
|1BA9BF:F9BB| db $E0, $0F ; set instrument - harp
|1BA9C1:F9BD| db $ED, $C8 ; set channel volume
|1BA9C3:F9BF| db $E1, $0A ; set panning - balanced
|1BA9C5:F9C1| db $24, $7D ; duration, params
|1BA9C7:F9C3| db $8B ; play note B1
|1BA9C8:F9C4| db $48 ; duration
|1BA9C9:F9C5| db $A2 ; play note A#3
|1BA9CA:F9C6| db $24 ; duration
|1BA9CB:F9C7| db $9B ; play note D#3
|1BA9CC:F9C8| db $A5 ; play note C#4
|1BA9CD:F9C9| db $0C ; duration
|1BA9CE:F9CA| db $9B ; play note D#3
|1BA9CF:F9CB| db $24 ; duration
|1BA9D0:F9CC| db $8A ; play note A#1
|1BA9D1:F9CD| db $48 ; duration
|1BA9D2:F9CE| db $A0 ; play note G#3
|1BA9D3:F9CF| db $24 ; duration
|1BA9D4:F9D0| db $8A ; play note A#1
|1BA9D5:F9D1| db $A5 ; play note C#4
|1BA9D6:F9D2| db $0C ; duration
|1BA9D7:F9D3| db $99 ; play note C#3
|1BA9D8:F9D4| db $24 ; duration
|1BA9D9:F9D5| db $88 ; play note G#1
|1BA9DA:F9D6| db $3C ; duration
|1BA9DB:F9D7| db $9E ; play note F#3
|1BA9DC:F9D8| db $24 ; duration
|1BA9DD:F9D9| db $88 ; play note G#1
|1BA9DE:F9DA| db $9D ; play note F3
|1BA9DF:F9DB| db $18 ; duration
|1BA9E0:F9DC| db $99 ; play note C#3
|1BA9E1:F9DD| db $24 ; duration
|1BA9E2:F9DE| db $86 ; play note F#1
|1BA9E3:F9DF| db $3C ; duration
|1BA9E4:F9E0| db $9D ; play note F3
|1BA9E5:F9E1| db $24 ; duration
|1BA9E6:F9E2| db $86 ; play note F#1
|1BA9E7:F9E3| db $9B ; play note D#3
|1BA9E8:F9E4| db $18 ; duration
|1BA9E9:F9E5| db $A5 ; play note C#4

;---------------------------------------------------------------------------------------------------

Song1B_Segment1_Track5:
|1BA9EA:F9E6| db $E0, $0F ; set instrument - harp
|1BA9EC:F9E8| db $ED, $C8 ; set channel volume
|1BA9EE:F9EA| db $E1, $0E ; set panning - leaning left
|1BA9F0:F9EC| db $0C ; duration
|1BA9F1:F9ED| db $C9 ; rest
|1BA9F2:F9EE| db $60, $7D ; duration, params
|1BA9F4:F9F0| db $97 ; play note B2
|1BA9F5:F9F1| db $0C ; duration
|1BA9F6:F9F2| db $C8 ; sustain current note
|1BA9F7:F9F3| db $24 ; duration
|1BA9F8:F9F4| db $A2 ; play note A#3
|1BA9F9:F9F5| db $A2 ; play note A#3
|1BA9FA:F9F6| db $0C ; duration
|1BA9FB:F9F7| db $C8 ; sustain current note
|1BA9FC:F9F8| db $60 ; duration
|1BA9FD:F9F9| db $96 ; play note A#2
|1BA9FE:F9FA| db $0C ; duration
|1BA9FF:F9FB| db $C8 ; sustain current note
|1BAA00:F9FC| db $24 ; duration
|1BAA01:F9FD| db $A0 ; play note G#3
|1BAA02:F9FE| db $A0 ; play note G#3
|1BAA03:F9FF| db $0C ; duration
|1BAA04:FA00| db $C8 ; sustain current note
|1BAA05:FA01| db $54 ; duration
|1BAA06:FA02| db $94 ; play note G#2
|1BAA07:FA03| db $0C ; duration
|1BAA08:FA04| db $C8 ; sustain current note
|1BAA09:FA05| db $24 ; duration
|1BAA0A:FA06| db $94 ; play note G#2
|1BAA0B:FA07| db $A0 ; play note G#3
|1BAA0C:FA08| db $0C ; duration
|1BAA0D:FA09| db $97 ; play note B2
|1BAA0E:FA0A| db $C8 ; sustain current note
|1BAA0F:FA0B| db $54 ; duration
|1BAA10:FA0C| db $92 ; play note F#2
|1BAA11:FA0D| db $0C ; duration
|1BAA12:FA0E| db $C8 ; sustain current note
|1BAA13:FA0F| db $24 ; duration
|1BAA14:FA10| db $92 ; play note F#2
|1BAA15:FA11| db $A0 ; play note G#3
|1BAA16:FA12| db $0C ; duration
|1BAA17:FA13| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song1B_Segment1_Track6:
|1BAA18:FA14| db $E0, $0F ; set instrument - harp
|1BAA1A:FA16| db $ED, $C8 ; set channel volume
|1BAA1C:FA18| db $E1, $12 ; set panning - leaning left
|1BAA1E:FA1A| db $18 ; duration
|1BAA1F:FA1B| db $C9 ; rest
|1BAA20:FA1C| db $54, $7D ; duration, params
|1BAA22:FA1E| db $9B ; play note D#3
|1BAA23:FA1F| db $18 ; duration
|1BAA24:FA20| db $C8 ; sustain current note
|1BAA25:FA21| db $24 ; duration
|1BAA26:FA22| db $A0 ; play note G#3
|1BAA27:FA23| db $18 ; duration
|1BAA28:FA24| db $A0 ; play note G#3
|1BAA29:FA25| db $C8 ; sustain current note
|1BAA2A:FA26| db $54 ; duration
|1BAA2B:FA27| db $99 ; play note C#3
|1BAA2C:FA28| db $18 ; duration
|1BAA2D:FA29| db $C8 ; sustain current note
|1BAA2E:FA2A| db $24 ; duration
|1BAA2F:FA2B| db $9E ; play note F#3
|1BAA30:FA2C| db $18 ; duration
|1BAA31:FA2D| db $9E ; play note F#3
|1BAA32:FA2E| db $C8 ; sustain current note
|1BAA33:FA2F| db $48 ; duration
|1BAA34:FA30| db $97 ; play note B2
|1BAA35:FA31| db $18 ; duration
|1BAA36:FA32| db $C8 ; sustain current note
|1BAA37:FA33| db $24 ; duration
|1BAA38:FA34| db $9E ; play note F#3
|1BAA39:FA35| db $9D ; play note F3
|1BAA3A:FA36| db $18 ; duration
|1BAA3B:FA37| db $C8 ; sustain current note
|1BAA3C:FA38| db $48 ; duration
|1BAA3D:FA39| db $96 ; play note A#2
|1BAA3E:FA3A| db $18 ; duration
|1BAA3F:FA3B| db $C8 ; sustain current note
|1BAA40:FA3C| db $24 ; duration
|1BAA41:FA3D| db $9D ; play note F3
|1BAA42:FA3E| db $9E ; play note F#3

;---------------------------------------------------------------------------------------------------

Song1B_Segment0_Track0:
|1BAA43:FA3F| db $FA, $19 ; set base percussion sample
|1BAA45:FA41| db $E5, $B4 ; set song volume
|1BAA47:FA43| db $F5, $FF, $28, $28 ; configure EON, EVOLL, EVOLR
|1BAA4B:FA47| db $F7, $02, $50, $02 ; configure EDL, EFB, FIR
|1BAA4F:FA4B| db $E7, $33 ; set song tempo
|1BAA51:FA4D| db $E8, $FA, $4E ; initiate gradual tempo change
|1BAA54:FA50| db $E0, $0F ; set instrument - harp
|1BAA56:FA52| db $ED, $C8 ; set channel volume
|1BAA58:FA54| db $E1, $02 ; set panning - leaning right
|1BAA5A:FA56| db $10 ; duration
|1BAA5B:FA57| db $C9 ; rest
|1BAA5C:FA58| db $30, $7D ; duration, params
|1BAA5E:FA5A| db $9B ; play note D#3
|1BAA5F:FA5B| db $9D ; play note F3
|1BAA60:FA5C| db $A0 ; play note G#3
|1BAA61:FA5D| db $A3 ; play note B3
|1BAA62:FA5E| db $A7 ; play note D#4
|1BAA63:FA5F| db $A9 ; play note F4
|1BAA64:FA60| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1B_Segment0_Track1:
|1BAA65:FA61| db $E0, $0F ; set instrument - harp
|1BAA67:FA63| db $ED, $B4 ; set channel volume
|1BAA69:FA65| db $E1, $12 ; set panning - leaning left
|1BAA6B:FA67| db $30, $7D ; duration, params
|1BAA6D:FA69| db $8D ; play note C#2
|1BAA6E:FA6A| db $91 ; play note F2
|1BAA6F:FA6B| db $94 ; play note G#2
|1BAA70:FA6C| db $97 ; play note B2
|1BAA71:FA6D| db $9B ; play note D#3
|1BAA72:FA6E| db $40 ; duration
|1BAA73:FA6F| db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song1B_Segment0_Track2:
|1BAA74:FA70| db $E0, $0F ; set instrument - harp
|1BAA76:FA72| db $ED, $B4 ; set channel volume
|1BAA78:FA74| db $E1, $0E ; set panning - leaning left
|1BAA7A:FA76| db $04 ; duration
|1BAA7B:FA77| db $C9 ; rest
|1BAA7C:FA78| db $30, $7D ; duration, params
|1BAA7E:FA7A| db $91 ; play note F2
|1BAA7F:FA7B| db $94 ; play note G#2
|1BAA80:FA7C| db $97 ; play note B2
|1BAA81:FA7D| db $9B ; play note D#3
|1BAA82:FA7E| db $9D ; play note F3
|1BAA83:FA7F| db $3C ; duration
|1BAA84:FA80| db $A0 ; play note G#3

;---------------------------------------------------------------------------------------------------

Song1B_Segment0_Track3:
|1BAA85:FA81| db $E0, $0F ; set instrument - harp
|1BAA87:FA83| db $ED, $B4 ; set channel volume
|1BAA89:FA85| db $E1, $0A ; set panning - balanced
|1BAA8B:FA87| db $08 ; duration
|1BAA8C:FA88| db $C9 ; rest
|1BAA8D:FA89| db $30, $7D ; duration, params
|1BAA8F:FA8B| db $94 ; play note G#2
|1BAA90:FA8C| db $97 ; play note B2
|1BAA91:FA8D| db $9B ; play note D#3
|1BAA92:FA8E| db $9D ; play note F3
|1BAA93:FA8F| db $A0 ; play note G#3
|1BAA94:FA90| db $38 ; duration
|1BAA95:FA91| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song1B_Segment0_Track4:
|1BAA96:FA92| db $E0, $0F ; set instrument - harp
|1BAA98:FA94| db $ED, $B4 ; set channel volume
|1BAA9A:FA96| db $E1, $06 ; set panning - leaning right
|1BAA9C:FA98| db $0C ; duration
|1BAA9D:FA99| db $C9 ; rest
|1BAA9E:FA9A| db $30, $7D ; duration, params
|1BAAA0:FA9C| db $97 ; play note B2
|1BAAA1:FA9D| db $9B ; play note D#3
|1BAAA2:FA9E| db $9D ; play note F3
|1BAAA3:FA9F| db $A0 ; play note G#3
|1BAAA4:FAA0| db $A3 ; play note B3
|1BAAA5:FAA1| db $34 ; duration
|1BAAA6:FAA2| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song1B_Segment2_Track0:
|1BAAA7:FAA3| db $30, $7D ; duration, params
|1BAAA9:FAA5| db $BA ; play note A#5
|1BAAAA:FAA6| db $B8 ; play note G#5
|1BAAAB:FAA7| db $B7 ; play note G5
|1BAAAC:FAA8| db $B8 ; play note G#5
|1BAAAD:FAA9| db $BB ; play note B5
|1BAAAE:FAAA| db $BA ; play note A#5
|1BAAAF:FAAB| db $B9 ; play note A5
|1BAAB0:FAAC| db $BA ; play note A#5
|1BAAB1:FAAD| db $BD ; play note C#6
|1BAAB2:FAAE| db $BB ; play note B5
|1BAAB3:FAAF| db $BA ; play note A#5
|1BAAB4:FAB0| db $BB ; play note B5
|1BAAB5:FAB1| db $BA ; play note A#5
|1BAAB6:FAB2| db $B8 ; play note G#5
|1BAAB7:FAB3| db $B6 ; play note F#5
|1BAAB8:FAB4| db $B5 ; play note F5
|1BAAB9:FAB5| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1B_Segment2_Track1:
|1BAABA:FAB6| db $0C ; duration
|1BAABB:FAB7| db $C9 ; rest
|1BAABC:FAB8| db $30, $7D ; duration, params
|1BAABE:FABA| db $B3 ; play note D#5
|1BAABF:FABB| db $B3 ; play note D#5
|1BAAC0:FABC| db $B3 ; play note D#5
|1BAAC1:FABD| db $B3 ; play note D#5
|1BAAC2:FABE| db $B4 ; play note E5
|1BAAC3:FABF| db $B4 ; play note E5
|1BAAC4:FAC0| db $B4 ; play note E5
|1BAAC5:FAC1| db $B4 ; play note E5
|1BAAC6:FAC2| db $B3 ; play note D#5
|1BAAC7:FAC3| db $B3 ; play note D#5
|1BAAC8:FAC4| db $B3 ; play note D#5
|1BAAC9:FAC5| db $B3 ; play note D#5
|1BAACA:FAC6| db $AF ; play note B4
|1BAACB:FAC7| db $AF ; play note B4
|1BAACC:FAC8| db $AF ; play note B4
|1BAACD:FAC9| db $24 ; duration
|1BAACE:FACA| db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song1B_Segment2_Track2:
|1BAACF:FACB| db $18 ; duration
|1BAAD0:FACC| db $C9 ; rest
|1BAAD1:FACD| db $30, $7D ; duration, params
|1BAAD3:FACF| db $AF ; play note B4
|1BAAD4:FAD0| db $AF ; play note B4
|1BAAD5:FAD1| db $AF ; play note B4
|1BAAD6:FAD2| db $AF ; play note B4
|1BAAD7:FAD3| db $B1 ; play note C#5
|1BAAD8:FAD4| db $B1 ; play note C#5
|1BAAD9:FAD5| db $B1 ; play note C#5
|1BAADA:FAD6| db $B1 ; play note C#5
|1BAADB:FAD7| db $AF ; play note B4
|1BAADC:FAD8| db $AF ; play note B4
|1BAADD:FAD9| db $AF ; play note B4
|1BAADE:FADA| db $AF ; play note B4
|1BAADF:FADB| db $AC ; play note G#4
|1BAAE0:FADC| db $AC ; play note G#4
|1BAAE1:FADD| db $AC ; play note G#4
|1BAAE2:FADE| db $18 ; duration
|1BAAE3:FADF| db $AC ; play note G#4

;---------------------------------------------------------------------------------------------------

Song1B_Segment2_Track3:
|1BAAE4:FAE0| db $24 ; duration
|1BAAE5:FAE1| db $C9 ; rest
|1BAAE6:FAE2| db $30, $7D ; duration, params
|1BAAE8:FAE4| db $AC ; play note G#4
|1BAAE9:FAE5| db $AC ; play note G#4
|1BAAEA:FAE6| db $AC ; play note G#4
|1BAAEB:FAE7| db $AC ; play note G#4
|1BAAEC:FAE8| db $AB ; play note G4
|1BAAED:FAE9| db $AB ; play note G4
|1BAAEE:FAEA| db $AB ; play note G4
|1BAAEF:FAEB| db $AB ; play note G4
|1BAAF0:FAEC| db $AC ; play note G#4
|1BAAF1:FAED| db $AC ; play note G#4
|1BAAF2:FAEE| db $AC ; play note G#4
|1BAAF3:FAEF| db $AC ; play note G#4
|1BAAF4:FAF0| db $A9 ; play note F4
|1BAAF5:FAF1| db $A9 ; play note F4
|1BAAF6:FAF2| db $A9 ; play note F4
|1BAAF7:FAF3| db $0C ; duration
|1BAAF8:FAF4| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song1B_Segment2_Track4:
|1BAAF9:FAF5| db $24, $7D ; duration, params
|1BAAFB:FAF7| db $8B ; play note B1
|1BAAFC:FAF8| db $3C ; duration
|1BAAFD:FAF9| db $A2 ; play note A#3
|1BAAFE:FAFA| db $24 ; duration
|1BAAFF:FAFB| db $8B ; play note B1
|1BAB00:FAFC| db $A0 ; play note G#3
|1BAB01:FAFD| db $18 ; duration
|1BAB02:FAFE| db $A0 ; play note G#3
|1BAB03:FAFF| db $24 ; duration
|1BAB04:FB00| db $8A ; play note A#1
|1BAB05:FB01| db $3C ; duration
|1BAB06:FB02| db $A5 ; play note C#4
|1BAB07:FB03| db $24 ; duration
|1BAB08:FB04| db $8F ; play note D#2
|1BAB09:FB05| db $A2 ; play note A#3
|1BAB0A:FB06| db $18 ; duration
|1BAB0B:FB07| db $A5 ; play note C#4
|1BAB0C:FB08| db $24 ; duration
|1BAB0D:FB09| db $88 ; play note G#1
|1BAB0E:FB0A| db $3C ; duration
|1BAB0F:FB0B| db $A3 ; play note B3
|1BAB10:FB0C| db $24 ; duration
|1BAB11:FB0D| db $88 ; play note G#1
|1BAB12:FB0E| db $A2 ; play note A#3
|1BAB13:FB0F| db $18 ; duration
|1BAB14:FB10| db $A0 ; play note G#3
|1BAB15:FB11| db $24 ; duration
|1BAB16:FB12| db $8D ; play note C#2
|1BAB17:FB13| db $3C ; duration
|1BAB18:FB14| db $A3 ; play note B3
|1BAB19:FB15| db $24 ; duration
|1BAB1A:FB16| db $8D ; play note C#2
|1BAB1B:FB17| db $A0 ; play note G#3
|1BAB1C:FB18| db $18 ; duration
|1BAB1D:FB19| db $AC ; play note G#4

;---------------------------------------------------------------------------------------------------

Song1B_Segment2_Track5:
|1BAB1E:FB1A| db $0C ; duration
|1BAB1F:FB1B| db $C9 ; rest
|1BAB20:FB1C| db $54, $7D ; duration, params
|1BAB22:FB1E| db $97 ; play note B2
|1BAB23:FB1F| db $0C ; duration
|1BAB24:FB20| db $C8 ; sustain current note
|1BAB25:FB21| db $24 ; duration
|1BAB26:FB22| db $97 ; play note B2
|1BAB27:FB23| db $A7 ; play note D#4
|1BAB28:FB24| db $0C ; duration
|1BAB29:FB25| db $9B ; play note D#3
|1BAB2A:FB26| db $C8 ; sustain current note
|1BAB2B:FB27| db $54 ; duration
|1BAB2C:FB28| db $96 ; play note A#2
|1BAB2D:FB29| db $0C ; duration
|1BAB2E:FB2A| db $C8 ; sustain current note
|1BAB2F:FB2B| db $24 ; duration
|1BAB30:FB2C| db $9B ; play note D#3
|1BAB31:FB2D| db $A8 ; play note E4
|1BAB32:FB2E| db $0C ; duration
|1BAB33:FB2F| db $A2 ; play note A#3
|1BAB34:FB30| db $C8 ; sustain current note
|1BAB35:FB31| db $54 ; duration
|1BAB36:FB32| db $94 ; play note G#2
|1BAB37:FB33| db $0C ; duration
|1BAB38:FB34| db $C8 ; sustain current note
|1BAB39:FB35| db $24 ; duration
|1BAB3A:FB36| db $94 ; play note G#2
|1BAB3B:FB37| db $A5 ; play note C#4
|1BAB3C:FB38| db $0C ; duration
|1BAB3D:FB39| db $9B ; play note D#3
|1BAB3E:FB3A| db $C8 ; sustain current note
|1BAB3F:FB3B| db $54 ; duration
|1BAB40:FB3C| db $99 ; play note C#3
|1BAB41:FB3D| db $0C ; duration
|1BAB42:FB3E| db $C8 ; sustain current note
|1BAB43:FB3F| db $24 ; duration
|1BAB44:FB40| db $99 ; play note C#3
|1BAB45:FB41| db $A9 ; play note F4
|1BAB46:FB42| db $0C ; duration
|1BAB47:FB43| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song1B_Segment2_Track6:
|1BAB48:FB44| db $18 ; duration
|1BAB49:FB45| db $C9 ; rest
|1BAB4A:FB46| db $48, $7D ; duration, params
|1BAB4C:FB48| db $9B ; play note D#3
|1BAB4D:FB49| db $18 ; duration
|1BAB4E:FB4A| db $C8 ; sustain current note
|1BAB4F:FB4B| db $24 ; duration
|1BAB50:FB4C| db $A2 ; play note A#3
|1BAB51:FB4D| db $A2 ; play note A#3
|1BAB52:FB4E| db $18 ; duration
|1BAB53:FB4F| db $C8 ; sustain current note
|1BAB54:FB50| db $48 ; duration
|1BAB55:FB51| db $99 ; play note C#3
|1BAB56:FB52| db $18 ; duration
|1BAB57:FB53| db $C8 ; sustain current note
|1BAB58:FB54| db $24 ; duration
|1BAB59:FB55| db $A5 ; play note C#4
|1BAB5A:FB56| db $A7 ; play note D#4
|1BAB5B:FB57| db $18 ; duration
|1BAB5C:FB58| db $C8 ; sustain current note
|1BAB5D:FB59| db $48 ; duration
|1BAB5E:FB5A| db $9B ; play note D#3
|1BAB5F:FB5B| db $18 ; duration
|1BAB60:FB5C| db $C8 ; sustain current note
|1BAB61:FB5D| db $24 ; duration
|1BAB62:FB5E| db $A3 ; play note B3
|1BAB63:FB5F| db $A3 ; play note B3
|1BAB64:FB60| db $18 ; duration
|1BAB65:FB61| db $C8 ; sustain current note
|1BAB66:FB62| db $48 ; duration
|1BAB67:FB63| db $A0 ; play note G#3
|1BAB68:FB64| db $18 ; duration
|1BAB69:FB65| db $C8 ; sustain current note
|1BAB6A:FB66| db $24 ; duration
|1BAB6B:FB67| db $A3 ; play note B3
|1BAB6C:FB68| db $A7 ; play note D#4
|1BAB6D:FB69| db $00 ; End

;===================================================================================================

Song1C_Suspense:
|1BAB6E:FB6A| dw Song1C_Segment0

Song1C_Loop:
|1BAB70:FB6C| dw Song1C_Segment1
|1BAB72:FB6E| dw Song1C_Segment1
|1BAB74:FB70| dw Song1C_Segment2
|1BAB76:FB72| dw $00FF, Song1C_Loop ; Loop point
|1BAB7A:FB76| dw $0000

Song1C_Segment1:
|1BAB7C:FB78| dw Song1C_Segment1_Track0
|1BAB7E:FB7A| dw Song1C_Segment1_Track1
|1BAB80:FB7C| dw Song1C_Segment1_Track2
|1BAB82:FB7E| dw Song1C_Segment1_Track3
|1BAB84:FB80| dw Song1C_Segment1_Track4
|1BAB86:FB82| dw $0000
|1BAB88:FB84| dw $0000
|1BAB8A:FB86| dw $0000

Song1C_Segment2:
|1BAB8C:FB88| dw Song1C_Segment2_Track0
|1BAB8E:FB8A| dw Song1C_Segment2_Track1
|1BAB90:FB8C| dw Song1C_Segment2_Track2
|1BAB92:FB8E| dw Song1C_Segment2_Track3
|1BAB94:FB90| dw Song1C_Segment2_Track4
|1BAB96:FB92| dw $0000
|1BAB98:FB94| dw $0000
|1BAB9A:FB96| dw $0000

Song1C_Segment0:
|1BAB9C:FB98| dw Song1C_Segment0_Track0
|1BAB9E:FB9A| dw $0000
|1BABA0:FB9C| dw $0000
|1BABA2:FB9E| dw $0000
|1BABA4:FBA0| dw $0000
|1BABA6:FBA2| dw $0000
|1BABA8:FBA4| dw $0000
|1BABAA:FBA6| dw $0000

;---------------------------------------------------------------------------------------------------

Song1C_Segment1_Track0:
|1BABAC:FBA8| db $E0, $09 ; set instrument - strings A
|1BABAE:FBAA| db $ED, $C8 ; set channel volume
|1BABB0:FBAC| db $E3, $1A, $1C, $18 ; enable vibrato
|1BABB4:FBB0| db $E1, $0C ; set panning - leaning left
|1BABB6:FBB2| db $58, $7D ; duration, params
|1BABB8:FBB4| db $A2 ; play note A#3
|1BABB9:FBB5| db $08 ; duration
|1BABBA:FBB6| db $A1 ; play note A3
|1BABBB:FBB7| db $58 ; duration
|1BABBC:FBB8| db $A3 ; play note B3
|1BABBD:FBB9| db $08 ; duration
|1BABBE:FBBA| db $A2 ; play note A#3
|1BABBF:FBBB| db $58 ; duration
|1BABC0:FBBC| db $A6 ; play note D4
|1BABC1:FBBD| db $08 ; duration
|1BABC2:FBBE| db $A5 ; play note C#4
|1BABC3:FBBF| db $60 ; duration
|1BABC4:FBC0| db $A8 ; play note E4
|1BABC5:FBC1| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1C_Segment1_Track1:
|1BABC6:FBC2| db $E0, $09 ; set instrument - strings A
|1BABC8:FBC4| db $ED, $C8 ; set channel volume
|1BABCA:FBC6| db $E3, $1A, $1C, $18 ; enable vibrato
|1BABCE:FBCA| db $E1, $08 ; set panning - leaning right
|1BABD0:FBCC| db $58, $7D ; duration, params
|1BABD2:FBCE| db $9D ; play note F3
|1BABD3:FBCF| db $08 ; duration
|1BABD4:FBD0| db $9C ; play note E3
|1BABD5:FBD1| db $58 ; duration
|1BABD6:FBD2| db $9E ; play note F#3
|1BABD7:FBD3| db $08 ; duration
|1BABD8:FBD4| db $9D ; play note F3
|1BABD9:FBD5| db $58 ; duration
|1BABDA:FBD6| db $A1 ; play note A3
|1BABDB:FBD7| db $08 ; duration
|1BABDC:FBD8| db $A0 ; play note G#3
|1BABDD:FBD9| db $60 ; duration
|1BABDE:FBDA| db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song1C_Segment1_Track2:
|1BABDF:FBDB| db $E0, $09 ; set instrument - strings A
|1BABE1:FBDD| db $ED, $C8 ; set channel volume
|1BABE3:FBDF| db $E3, $1A, $1C, $18 ; enable vibrato
|1BABE7:FBE3| db $E1, $04 ; set panning - leaning right
|1BABE9:FBE5| db $30, $7D ; duration, params
|1BABEB:FBE7| db $8C ; play note C2
|1BABEC:FBE8| db $93 ; play note G2
|1BABED:FBE9| db $8C ; play note C2
|1BABEE:FBEA| db $93 ; play note G2
|1BABEF:FBEB| db $8C ; play note C2
|1BABF0:FBEC| db $93 ; play note G2
|1BABF1:FBED| db $8C ; play note C2
|1BABF2:FBEE| db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song1C_Segment1_Track3:
|1BABF3:FBEF| db $E0, $09 ; set instrument - strings A
|1BABF5:FBF1| db $ED, $A0 ; set channel volume
|1BABF7:FBF3| db $E3, $1A, $1C, $18 ; enable vibrato
|1BABFB:FBF7| db $E1, $02 ; set panning - leaning right
|1BABFD:FBF9| db $08 ; duration
|1BABFE:FBFA| db $C9 ; rest
|1BABFF:FBFB| db $30, $7D ; duration, params
|1BAC01:FBFD| db $8C ; play note C2
|1BAC02:FBFE| db $93 ; play note G2
|1BAC03:FBFF| db $8C ; play note C2
|1BAC04:FC00| db $93 ; play note G2
|1BAC05:FC01| db $8C ; play note C2
|1BAC06:FC02| db $93 ; play note G2
|1BAC07:FC03| db $8C ; play note C2
|1BAC08:FC04| db $28 ; duration
|1BAC09:FC05| db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song1C_Segment1_Track4:
|1BAC0A:FC06| db $E0, $09 ; set instrument - strings A
|1BAC0C:FC08| db $ED, $A0 ; set channel volume
|1BAC0E:FC0A| db $E3, $1A, $1C, $18 ; enable vibrato
|1BAC12:FC0E| db $E1, $0A ; set panning - balanced
|1BAC14:FC10| db $08 ; duration
|1BAC15:FC11| db $C9 ; rest
|1BAC16:FC12| db $58, $7D ; duration, params
|1BAC18:FC14| db $A2 ; play note A#3
|1BAC19:FC15| db $08 ; duration
|1BAC1A:FC16| db $A1 ; play note A3
|1BAC1B:FC17| db $58 ; duration
|1BAC1C:FC18| db $A3 ; play note B3
|1BAC1D:FC19| db $08 ; duration
|1BAC1E:FC1A| db $A2 ; play note A#3
|1BAC1F:FC1B| db $58 ; duration
|1BAC20:FC1C| db $A6 ; play note D4
|1BAC21:FC1D| db $08 ; duration
|1BAC22:FC1E| db $A5 ; play note C#4
|1BAC23:FC1F| db $58 ; duration
|1BAC24:FC20| db $A8 ; play note E4

;---------------------------------------------------------------------------------------------------

Song1C_Segment2_Track0:
|1BAC25:FC21| db $E0, $09 ; set instrument - strings A
|1BAC27:FC23| db $ED, $C8 ; set channel volume
|1BAC29:FC25| db $E3, $1A, $1C, $18 ; enable vibrato
|1BAC2D:FC29| db $E1, $0C ; set panning - leaning left
|1BAC2F:FC2B| db $60, $7D ; duration, params
|1BAC31:FC2D| db $A7 ; play note D#4
|1BAC32:FC2E| db $58 ; duration
|1BAC33:FC2F| db $A6 ; play note D4
|1BAC34:FC30| db $50 ; duration
|1BAC35:FC31| db $A9 ; play note F4
|1BAC36:FC32| db $48 ; duration
|1BAC37:FC33| db $A8 ; play note E4
|1BAC38:FC34| db $40 ; duration
|1BAC39:FC35| db $AB ; play note G4
|1BAC3A:FC36| db $38 ; duration
|1BAC3B:FC37| db $AA ; play note F#4
|1BAC3C:FC38| db $34 ; duration
|1BAC3D:FC39| db $AD ; play note A4
|1BAC3E:FC3A| db $30 ; duration
|1BAC3F:FC3B| db $AC ; play note G#4
|1BAC40:FC3C| db $60 ; duration
|1BAC41:FC3D| db $AF ; play note B4
|1BAC42:FC3E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1C_Segment2_Track1:
|1BAC43:FC3F| db $E0, $09 ; set instrument - strings A
|1BAC45:FC41| db $ED, $C8 ; set channel volume
|1BAC47:FC43| db $E3, $1A, $1C, $18 ; enable vibrato
|1BAC4B:FC47| db $E1, $08 ; set panning - leaning right
|1BAC4D:FC49| db $60, $7D ; duration, params
|1BAC4F:FC4B| db $A2 ; play note A#3
|1BAC50:FC4C| db $58 ; duration
|1BAC51:FC4D| db $A1 ; play note A3
|1BAC52:FC4E| db $50 ; duration
|1BAC53:FC4F| db $A4 ; play note C4
|1BAC54:FC50| db $48 ; duration
|1BAC55:FC51| db $A3 ; play note B3
|1BAC56:FC52| db $40 ; duration
|1BAC57:FC53| db $A6 ; play note D4
|1BAC58:FC54| db $38 ; duration
|1BAC59:FC55| db $A5 ; play note C#4
|1BAC5A:FC56| db $34 ; duration
|1BAC5B:FC57| db $A8 ; play note E4
|1BAC5C:FC58| db $30 ; duration
|1BAC5D:FC59| db $A7 ; play note D#4
|1BAC5E:FC5A| db $60 ; duration
|1BAC5F:FC5B| db $AA ; play note F#4

;---------------------------------------------------------------------------------------------------

Song1C_Segment2_Track2:
|1BAC60:FC5C| db $E0, $09 ; set instrument - strings A
|1BAC62:FC5E| db $ED, $C8 ; set channel volume
|1BAC64:FC60| db $E3, $1A, $1C, $18 ; enable vibrato
|1BAC68:FC64| db $E1, $04 ; set panning - leaning right
|1BAC6A:FC66| db $60, $7D ; duration, params
|1BAC6C:FC68| db $92 ; play note F#2
|1BAC6D:FC69| db $58 ; duration
|1BAC6E:FC6A| db $91 ; play note F2
|1BAC6F:FC6B| db $50 ; duration
|1BAC70:FC6C| db $94 ; play note G#2
|1BAC71:FC6D| db $48 ; duration
|1BAC72:FC6E| db $93 ; play note G2
|1BAC73:FC6F| db $40 ; duration
|1BAC74:FC70| db $96 ; play note A#2
|1BAC75:FC71| db $38 ; duration
|1BAC76:FC72| db $95 ; play note A2
|1BAC77:FC73| db $34 ; duration
|1BAC78:FC74| db $98 ; play note C3
|1BAC79:FC75| db $30 ; duration
|1BAC7A:FC76| db $97 ; play note B2
|1BAC7B:FC77| db $60 ; duration
|1BAC7C:FC78| db $9A ; play note D3

;---------------------------------------------------------------------------------------------------

Song1C_Segment2_Track3:
|1BAC7D:FC79| db $08 ; duration
|1BAC7E:FC7A| db $C9 ; rest
|1BAC7F:FC7B| db $60, $7D ; duration, params
|1BAC81:FC7D| db $92 ; play note F#2
|1BAC82:FC7E| db $58 ; duration
|1BAC83:FC7F| db $91 ; play note F2
|1BAC84:FC80| db $50 ; duration
|1BAC85:FC81| db $94 ; play note G#2
|1BAC86:FC82| db $48 ; duration
|1BAC87:FC83| db $93 ; play note G2
|1BAC88:FC84| db $40 ; duration
|1BAC89:FC85| db $96 ; play note A#2
|1BAC8A:FC86| db $38 ; duration
|1BAC8B:FC87| db $95 ; play note A2
|1BAC8C:FC88| db $34 ; duration
|1BAC8D:FC89| db $98 ; play note C3
|1BAC8E:FC8A| db $30 ; duration
|1BAC8F:FC8B| db $97 ; play note B2
|1BAC90:FC8C| db $58 ; duration
|1BAC91:FC8D| db $9A ; play note D3

;---------------------------------------------------------------------------------------------------

Song1C_Segment2_Track4:
|1BAC92:FC8E| db $08 ; duration
|1BAC93:FC8F| db $C9 ; rest
|1BAC94:FC90| db $60, $7D ; duration, params
|1BAC96:FC92| db $9B ; play note D#3
|1BAC97:FC93| db $58 ; duration
|1BAC98:FC94| db $9A ; play note D3
|1BAC99:FC95| db $50 ; duration
|1BAC9A:FC96| db $A9 ; play note F4
|1BAC9B:FC97| db $48 ; duration
|1BAC9C:FC98| db $A8 ; play note E4
|1BAC9D:FC99| db $40 ; duration
|1BAC9E:FC9A| db $AB ; play note G4
|1BAC9F:FC9B| db $38 ; duration
|1BACA0:FC9C| db $AA ; play note F#4
|1BACA1:FC9D| db $34 ; duration
|1BACA2:FC9E| db $AD ; play note A4
|1BACA3:FC9F| db $30 ; duration
|1BACA4:FCA0| db $AC ; play note G#4
|1BACA5:FCA1| db $58 ; duration
|1BACA6:FCA2| db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song1C_Segment0_Track0:
|1BACA7:FCA3| db $FA, $19 ; set base percussion sample
|1BACA9:FCA5| db $E5, $B4 ; set song volume
|1BACAB:FCA7| db $F5, $FF, $28, $28 ; configure EON, EVOLL, EVOLR
|1BACAF:FCAB| db $F7, $02, $14, $02 ; configure EDL, EFB, FIR
|1BACB3:FCAF| db $E7, $19 ; set song tempo
|1BACB5:FCB1| db $E0, $09 ; set instrument - strings A
|1BACB7:FCB3| db $ED, $C8 ; set channel volume
|1BACB9:FCB5| db $E3, $1A, $1C, $18 ; enable vibrato
|1BACBD:FCB9| db $E1, $0C ; set panning - leaning left
|1BACBF:FCBB| db $18 ; duration
|1BACC0:FCBC| db $C9 ; rest
|1BACC1:FCBD| db $00 ; End
|1BACC2:FCBE| db $00

site *

;===================================================================================================

SongBank_Underworld_Auxiliary:
|1BACC3| dw $050C, SONG_POINTERS_AUX ; Transfer size, transfer address

site SONG_POINTERS_AUX

;===================================================================================================

Song1D_AgahnimEscapes:
|1BACC7:2B00| dw Song1D_Segment0
|1BACC9:2B02| dw $0000 ; Song end

Song1D_Segment0:
|1BACCB:2B04| dw Song1D_Segment0_Track0
|1BACCD:2B06| dw Song1D_Segment0_Track1
|1BACCF:2B08| dw Song1D_Segment0_Track2
|1BACD1:2B0A| dw Song1D_Segment0_Track3
|1BACD3:2B0C| dw Song1D_Segment0_Track4
|1BACD5:2B0E| dw $0000
|1BACD7:2B10| dw $0000
|1BACD9:2B12| dw $0000

;---------------------------------------------------------------------------------------------------

Song1D_Segment0_Track0:
|1BACDB:2B14| db $FA, $19 ; set base percussion sample
|1BACDD:2B16| db $E5, $C8 ; set song volume
|1BACDF:2B18| db $F5, $FF, $28, $28 ; configure EON, EVOLL, EVOLR
|1BACE3:2B1C| db $F7, $02, $14, $02 ; configure EDL, EFB, FIR
|1BACE7:2B20| db $E7, $19 ; set song tempo
|1BACE9:2B22| db $E0, $0B ; set instrument - trombone
|1BACEB:2B24| db $ED, $C8 ; set channel volume
|1BACED:2B26| db $E1, $12 ; set panning - leaning left
|1BACEF:2B28| db $06, $6D ; duration, params
|1BACF1:2B2A| db $A2 ; play note A#3
|1BACF2:2B2B| db $A3 ; play note B3
|1BACF3:2B2C| db $A4 ; play note C4
|1BACF4:2B2D| db $A3 ; play note B3
|1BACF5:2B2E| db $A4 ; play note C4
|1BACF6:2B2F| db $A8 ; play note E4
|1BACF7:2B30| db $A9 ; play note F4
|1BACF8:2B31| db $A8 ; play note E4
|1BACF9:2B32| db $A9 ; play note F4
|1BACFA:2B33| db $AE ; play note A#4
|1BACFB:2B34| db $AF ; play note B4
|1BACFC:2B35| db $B0 ; play note C5
|1BACFD:2B36| db $AF ; play note B4
|1BACFE:2B37| db $B4 ; play note E5
|1BACFF:2B38| db $B5 ; play note F5
|1BAD00:2B39| db $BA ; play note A#5
|1BAD01:2B3A| db $BB ; play note B5
|1BAD02:2B3B| db $5A ; duration
|1BAD03:2B3C| db $C9 ; rest
|1BAD04:2B3D| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1D_Segment0_Track1:
|1BAD05:2B3E| db $E0, $0B ; set instrument - trombone
|1BAD07:2B40| db $ED, $C8 ; set channel volume
|1BAD09:2B42| db $E1, $10 ; set panning - leaning left
|1BAD0B:2B44| db $12 ; duration
|1BAD0C:2B45| db $C9 ; rest
|1BAD0D:2B46| db $06, $6D ; duration, params
|1BAD0F:2B48| db $A2 ; play note A#3
|1BAD10:2B49| db $A3 ; play note B3
|1BAD11:2B4A| db $A4 ; play note C4
|1BAD12:2B4B| db $A3 ; play note B3
|1BAD13:2B4C| db $A4 ; play note C4
|1BAD14:2B4D| db $A8 ; play note E4
|1BAD15:2B4E| db $A9 ; play note F4
|1BAD16:2B4F| db $A8 ; play note E4
|1BAD17:2B50| db $A9 ; play note F4
|1BAD18:2B51| db $AE ; play note A#4
|1BAD19:2B52| db $AF ; play note B4
|1BAD1A:2B53| db $B0 ; play note C5
|1BAD1B:2B54| db $AF ; play note B4
|1BAD1C:2B55| db $B4 ; play note E5
|1BAD1D:2B56| db $B5 ; play note F5
|1BAD1E:2B57| db $BA ; play note A#5
|1BAD1F:2B58| db $BB ; play note B5
|1BAD20:2B59| db $48 ; duration
|1BAD21:2B5A| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song1D_Segment0_Track2:
|1BAD22:2B5B| db $E0, $0B ; set instrument - trombone
|1BAD24:2B5D| db $ED, $C8 ; set channel volume
|1BAD26:2B5F| db $E1, $0C ; set panning - leaning left
|1BAD28:2B61| db $24 ; duration
|1BAD29:2B62| db $C9 ; rest
|1BAD2A:2B63| db $06, $6D ; duration, params
|1BAD2C:2B65| db $A2 ; play note A#3
|1BAD2D:2B66| db $A3 ; play note B3
|1BAD2E:2B67| db $A4 ; play note C4
|1BAD2F:2B68| db $A3 ; play note B3
|1BAD30:2B69| db $A4 ; play note C4
|1BAD31:2B6A| db $A8 ; play note E4
|1BAD32:2B6B| db $A9 ; play note F4
|1BAD33:2B6C| db $A8 ; play note E4
|1BAD34:2B6D| db $A9 ; play note F4
|1BAD35:2B6E| db $AE ; play note A#4
|1BAD36:2B6F| db $AF ; play note B4
|1BAD37:2B70| db $B0 ; play note C5
|1BAD38:2B71| db $AF ; play note B4
|1BAD39:2B72| db $B4 ; play note E5
|1BAD3A:2B73| db $B5 ; play note F5
|1BAD3B:2B74| db $BA ; play note A#5
|1BAD3C:2B75| db $BB ; play note B5
|1BAD3D:2B76| db $36 ; duration
|1BAD3E:2B77| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song1D_Segment0_Track3:
|1BAD3F:2B78| db $E0, $0B ; set instrument - trombone
|1BAD41:2B7A| db $ED, $C8 ; set channel volume
|1BAD43:2B7C| db $E1, $08 ; set panning - leaning right
|1BAD45:2B7E| db $36 ; duration
|1BAD46:2B7F| db $C9 ; rest
|1BAD47:2B80| db $06, $6D ; duration, params
|1BAD49:2B82| db $A2 ; play note A#3
|1BAD4A:2B83| db $A3 ; play note B3
|1BAD4B:2B84| db $A4 ; play note C4
|1BAD4C:2B85| db $A3 ; play note B3
|1BAD4D:2B86| db $A4 ; play note C4
|1BAD4E:2B87| db $A8 ; play note E4
|1BAD4F:2B88| db $A9 ; play note F4
|1BAD50:2B89| db $A8 ; play note E4
|1BAD51:2B8A| db $A9 ; play note F4
|1BAD52:2B8B| db $AE ; play note A#4
|1BAD53:2B8C| db $AF ; play note B4
|1BAD54:2B8D| db $B0 ; play note C5
|1BAD55:2B8E| db $AF ; play note B4
|1BAD56:2B8F| db $B4 ; play note E5
|1BAD57:2B90| db $B5 ; play note F5
|1BAD58:2B91| db $BA ; play note A#5
|1BAD59:2B92| db $BB ; play note B5
|1BAD5A:2B93| db $24 ; duration
|1BAD5B:2B94| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song1D_Segment0_Track4:
|1BAD5C:2B95| db $E0, $0B ; set instrument - trombone
|1BAD5E:2B97| db $ED, $C8 ; set channel volume
|1BAD60:2B99| db $E1, $04 ; set panning - leaning right
|1BAD62:2B9B| db $48 ; duration
|1BAD63:2B9C| db $C9 ; rest
|1BAD64:2B9D| db $06, $6D ; duration, params
|1BAD66:2B9F| db $A2 ; play note A#3
|1BAD67:2BA0| db $A3 ; play note B3
|1BAD68:2BA1| db $A4 ; play note C4
|1BAD69:2BA2| db $A3 ; play note B3
|1BAD6A:2BA3| db $A4 ; play note C4
|1BAD6B:2BA4| db $A8 ; play note E4
|1BAD6C:2BA5| db $A9 ; play note F4
|1BAD6D:2BA6| db $A8 ; play note E4
|1BAD6E:2BA7| db $A9 ; play note F4
|1BAD6F:2BA8| db $AE ; play note A#4
|1BAD70:2BA9| db $AF ; play note B4
|1BAD71:2BAA| db $B0 ; play note C5
|1BAD72:2BAB| db $AF ; play note B4
|1BAD73:2BAC| db $B4 ; play note E5
|1BAD74:2BAD| db $B5 ; play note F5
|1BAD75:2BAE| db $BA ; play note A#5
|1BAD76:2BAF| db $BB ; play note B5
|1BAD77:2BB0| db $12 ; duration
|1BAD78:2BB1| db $C9 ; rest
|1BAD79:2BB2| db $00 ; End

;===================================================================================================

Song1F_KingOfThieves:
|1BAD7A:2BB3| dw Song1F_Segment0

Song1F_Loop:
|1BAD7C:2BB5| dw Song1F_Segment1
|1BAD7E:2BB7| dw Song1F_Segment2
|1BAD80:2BB9| dw Song1F_Segment3
|1BAD82:2BBB| dw Song1F_Segment4
|1BAD84:2BBD| dw $00FF, Song1F_Loop ; Loop point
|1BAD88:2BC1| dw $0000

Song1F_Segment1:
|1BAD8A:2BC3| dw Song1F_Segment1_Track0
|1BAD8C:2BC5| dw $0000
|1BAD8E:2BC7| dw Song1F_Segment1_Track2
|1BAD90:2BC9| dw Song1F_Segment1_Track3
|1BAD92:2BCB| dw Song1F_Segment1_Track4
|1BAD94:2BCD| dw Song1F_Segment1_Track5
|1BAD96:2BCF| dw Song1F_Segment1_Track6
|1BAD98:2BD1| dw $0000

Song1F_Segment0:
|1BAD9A:2BD3| dw Song1F_Segment0_Track0
|1BAD9C:2BD5| dw $0000
|1BAD9E:2BD7| dw Song1F_Segment0_Track2
|1BADA0:2BD9| dw Song1F_Segment0_Track3
|1BADA2:2BDB| dw Song1F_Segment0_Track4
|1BADA4:2BDD| dw $0000
|1BADA6:2BDF| dw Song1F_Segment0_Track6
|1BADA8:2BE1| dw $0000

Song1F_Segment2:
|1BADAA:2BE3| dw Song1F_Segment2_Track0
|1BADAC:2BE5| dw Song1F_Segment2_Track1
|1BADAE:2BE7| dw Song1F_Segment2_Track2
|1BADB0:2BE9| dw Song1F_Segment2_Track3
|1BADB2:2BEB| dw Song1F_Segment2_Track4
|1BADB4:2BED| dw Song1F_Segment2_Track5
|1BADB6:2BEF| dw Song1F_Segment2_Track6
|1BADB8:2BF1| dw $0000

Song1F_Segment4:
|1BADBA:2BF3| dw Song1F_Segment4_Track0
|1BADBC:2BF5| dw Song1F_Segment4_Track1
|1BADBE:2BF7| dw Song1F_Segment4_Track2
|1BADC0:2BF9| dw Song1F_Segment4_Track3
|1BADC2:2BFB| dw Song1F_Segment4_Track4
|1BADC4:2BFD| dw Song1F_Segment4_Track5
|1BADC6:2BFF| dw $0000
|1BADC8:2C01| dw $0000

Song1F_Segment3:
|1BADCA:2C03| dw Song1F_Segment3_Track0
|1BADCC:2C05| dw Song1F_Segment3_Track1
|1BADCE:2C07| dw Song1F_Segment3_Track2
|1BADD0:2C09| dw Song1F_Segment3_Track3
|1BADD2:2C0B| dw Song1F_Segment3_Track4
|1BADD4:2C0D| dw Song1F_Segment3_Track5
|1BADD6:2C0F| dw Song1F_Segment3_Track6
|1BADD8:2C11| dw $0000

;---------------------------------------------------------------------------------------------------

Song1F_Segment1_Track0:
|1BADDA:2C13| db $0C, $6D ; duration, params
|1BADDC:2C15| db $8C ; play note C2
|1BADDD:2C16| db $93 ; play note G2
|1BADDE:2C17| db $98 ; play note C3
|1BADDF:2C18| db $8F ; play note D#2
|1BADE0:2C19| db $96 ; play note A#2
|1BADE1:2C1A| db $9B ; play note D#3
|1BADE2:2C1B| db $91 ; play note F2
|1BADE3:2C1C| db $98 ; play note C3
|1BADE4:2C1D| db $9D ; play note F3
|1BADE5:2C1E| db $94 ; play note G#2
|1BADE6:2C1F| db $9B ; play note D#3
|1BADE7:2C20| db $A0 ; play note G#3
|1BADE8:2C21| db $93 ; play note G2
|1BADE9:2C22| db $9F ; play note G3
|1BADEA:2C23| db $EF : dw Song1F_Sub_2EDB : db $06 ; call segment subroutine
|1BADEE:2C27| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Segment1_Track2:
|1BADEF:2C28| db $EF : dw Song1F_Sub_2EEA : db $06 ; call segment subroutine
|1BADF3:2C2C| db $0C, $6D ; duration, params
|1BADF5:2C2E| db $A9 ; play note F4
|1BADF6:2C2F| db $0C, $69 ; duration, params
|1BADF8:2C31| db $A9 ; play note F4
|1BADF9:2C32| db $A9 ; play note F4
|1BADFA:2C33| db $0C, $6D ; duration, params
|1BADFC:2C35| db $A9 ; play note F4
|1BADFD:2C36| db $0C, $69 ; duration, params
|1BADFF:2C38| db $A9 ; play note F4
|1BAE00:2C39| db $A9 ; play note F4
|1BAE01:2C3A| db $0C, $6D ; duration, params
|1BAE03:2C3C| db $A9 ; play note F4
|1BAE04:2C3D| db $0C, $69 ; duration, params
|1BAE06:2C3F| db $A9 ; play note F4
|1BAE07:2C40| db $A9 ; play note F4
|1BAE08:2C41| db $06, $6D ; duration, params
|1BAE0A:2C43| db $A9 ; play note F4
|1BAE0B:2C44| db $A9 ; play note F4
|1BAE0C:2C45| db $0C ; duration
|1BAE0D:2C46| db $A9 ; play note F4
|1BAE0E:2C47| db $A9 ; play note F4
|1BAE0F:2C48| db $06 ; duration
|1BAE10:2C49| db $A9 ; play note F4
|1BAE11:2C4A| db $A9 ; play note F4
|1BAE12:2C4B| db $0C ; duration
|1BAE13:2C4C| db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song1F_Segment1_Track3:
|1BAE14:2C4D| db $E0, $11 ; set instrument - trumpet
|1BAE16:2C4F| db $ED, $C8 ; set channel volume
|1BAE18:2C51| db $60, $6D ; duration, params
|1BAE1A:2C53| db $A4 ; play note C4
|1BAE1B:2C54| db $48 ; duration
|1BAE1C:2C55| db $C8 ; sustain current note
|1BAE1D:2C56| db $60 ; duration
|1BAE1E:2C57| db $A7 ; play note D#4
|1BAE1F:2C58| db $48 ; duration
|1BAE20:2C59| db $C8 ; sustain current note
|1BAE21:2C5A| db $A6 ; play note D4
|1BAE22:2C5B| db $60 ; duration
|1BAE23:2C5C| db $C8 ; sustain current note
|1BAE24:2C5D| db $A5 ; play note C#4
|1BAE25:2C5E| db $48 ; duration
|1BAE26:2C5F| db $C8 ; sustain current note
|1BAE27:2C60| db $A4 ; play note C4
|1BAE28:2C61| db $60 ; duration
|1BAE29:2C62| db $C8 ; sustain current note
|1BAE2A:2C63| db $C8 ; sustain current note
|1BAE2B:2C64| db $48 ; duration
|1BAE2C:2C65| db $C9 ; rest
|1BAE2D:2C66| db $60 ; duration
|1BAE2E:2C67| db $C9 ; rest
|1BAE2F:2C68| db $48 ; duration
|1BAE30:2C69| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song1F_Segment1_Track4:
|1BAE31:2C6A| db $E0, $11 ; set instrument - trumpet
|1BAE33:2C6C| db $ED, $C8 ; set channel volume
|1BAE35:2C6E| db $60, $6D ; duration, params
|1BAE37:2C70| db $9F ; play note G3
|1BAE38:2C71| db $48 ; duration
|1BAE39:2C72| db $C8 ; sustain current note
|1BAE3A:2C73| db $60 ; duration
|1BAE3B:2C74| db $A2 ; play note A#3
|1BAE3C:2C75| db $48 ; duration
|1BAE3D:2C76| db $C8 ; sustain current note
|1BAE3E:2C77| db $A1 ; play note A3
|1BAE3F:2C78| db $60 ; duration
|1BAE40:2C79| db $C8 ; sustain current note
|1BAE41:2C7A| db $A0 ; play note G#3
|1BAE42:2C7B| db $48 ; duration
|1BAE43:2C7C| db $C8 ; sustain current note
|1BAE44:2C7D| db $9F ; play note G3
|1BAE45:2C7E| db $60 ; duration
|1BAE46:2C7F| db $C8 ; sustain current note
|1BAE47:2C80| db $C8 ; sustain current note
|1BAE48:2C81| db $48 ; duration
|1BAE49:2C82| db $C9 ; rest
|1BAE4A:2C83| db $60 ; duration
|1BAE4B:2C84| db $C9 ; rest
|1BAE4C:2C85| db $48 ; duration
|1BAE4D:2C86| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song1F_Segment1_Track5:
|1BAE4E:2C87| db $E0, $11 ; set instrument - trumpet
|1BAE50:2C89| db $ED, $C8 ; set channel volume
|1BAE52:2C8B| db $60, $6D ; duration, params
|1BAE54:2C8D| db $9A ; play note D3
|1BAE55:2C8E| db $48 ; duration
|1BAE56:2C8F| db $C8 ; sustain current note
|1BAE57:2C90| db $60 ; duration
|1BAE58:2C91| db $9D ; play note F3
|1BAE59:2C92| db $48 ; duration
|1BAE5A:2C93| db $C8 ; sustain current note
|1BAE5B:2C94| db $9C ; play note E3
|1BAE5C:2C95| db $60 ; duration
|1BAE5D:2C96| db $C8 ; sustain current note
|1BAE5E:2C97| db $9B ; play note D#3
|1BAE5F:2C98| db $48 ; duration
|1BAE60:2C99| db $C8 ; sustain current note
|1BAE61:2C9A| db $9A ; play note D3
|1BAE62:2C9B| db $60 ; duration
|1BAE63:2C9C| db $C8 ; sustain current note
|1BAE64:2C9D| db $C8 ; sustain current note
|1BAE65:2C9E| db $48 ; duration
|1BAE66:2C9F| db $C9 ; rest
|1BAE67:2CA0| db $60 ; duration
|1BAE68:2CA1| db $C9 ; rest
|1BAE69:2CA2| db $48 ; duration
|1BAE6A:2CA3| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song1F_Segment1_Track6:
|1BAE6B:2CA4| db $24, $7D ; duration, params
|1BAE6D:2CA6| db $8C ; play note C2
|1BAE6E:2CA7| db $8F ; play note D#2
|1BAE6F:2CA8| db $91 ; play note F2
|1BAE70:2CA9| db $94 ; play note G#2
|1BAE71:2CAA| db $18 ; duration
|1BAE72:2CAB| db $93 ; play note G2
|1BAE73:2CAC| db $EF : dw Song1F_Sub_2F0D : db $06 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song1F_Segment0_Track0:
|1BAE77:2CB0| db $FA, $19 ; set base percussion sample
|1BAE79:2CB2| db $E5, $C8 ; set song volume
|1BAE7B:2CB4| db $F5, $FF, $1E, $1E ; configure EON, EVOLL, EVOLR
|1BAE7F:2CB8| db $F7, $02, $14, $02 ; configure EDL, EFB, FIR
|1BAE83:2CBC| db $E7, $31 ; set song tempo
|1BAE85:2CBE| db $E0, $0B ; set instrument - trombone
|1BAE87:2CC0| db $ED, $DC ; set channel volume
|1BAE89:2CC2| db $06, $6D ; duration, params
|1BAE8B:2CC4| db $B3 ; play note D#5
|1BAE8C:2CC5| db $B2 ; play note D5
|1BAE8D:2CC6| db $B1 ; play note C#5
|1BAE8E:2CC7| db $B0 ; play note C5
|1BAE8F:2CC8| db $AF ; play note B4
|1BAE90:2CC9| db $B2 ; play note D5
|1BAE91:2CCA| db $B1 ; play note C#5
|1BAE92:2CCB| db $B0 ; play note C5
|1BAE93:2CCC| db $AF ; play note B4
|1BAE94:2CCD| db $AE ; play note A#4
|1BAE95:2CCE| db $AD ; play note A4
|1BAE96:2CCF| db $AC ; play note G#4
|1BAE97:2CD0| db $AB ; play note G4
|1BAE98:2CD1| db $AA ; play note F#4
|1BAE99:2CD2| db $A9 ; play note F4
|1BAE9A:2CD3| db $A8 ; play note E4
|1BAE9B:2CD4| db $E0, $18 ; set instrument - piano
|1BAE9D:2CD6| db $0C ; duration
|1BAE9E:2CD7| db $8C ; play note C2
|1BAE9F:2CD8| db $93 ; play note G2
|1BAEA0:2CD9| db $98 ; play note C3
|1BAEA1:2CDA| db $8F ; play note D#2
|1BAEA2:2CDB| db $96 ; play note A#2
|1BAEA3:2CDC| db $9B ; play note D#3
|1BAEA4:2CDD| db $91 ; play note F2
|1BAEA5:2CDE| db $98 ; play note C3
|1BAEA6:2CDF| db $9D ; play note F3
|1BAEA7:2CE0| db $94 ; play note G#2
|1BAEA8:2CE1| db $9B ; play note D#3
|1BAEA9:2CE2| db $A0 ; play note G#3
|1BAEAA:2CE3| db $93 ; play note G2
|1BAEAB:2CE4| db $9F ; play note G3
|1BAEAC:2CE5| db $8C ; play note C2
|1BAEAD:2CE6| db $93 ; play note G2
|1BAEAE:2CE7| db $98 ; play note C3
|1BAEAF:2CE8| db $8F ; play note D#2
|1BAEB0:2CE9| db $96 ; play note A#2
|1BAEB1:2CEA| db $9B ; play note D#3
|1BAEB2:2CEB| db $91 ; play note F2
|1BAEB3:2CEC| db $98 ; play note C3
|1BAEB4:2CED| db $9D ; play note F3
|1BAEB5:2CEE| db $94 ; play note G#2
|1BAEB6:2CEF| db $9B ; play note D#3
|1BAEB7:2CF0| db $A0 ; play note G#3
|1BAEB8:2CF1| db $93 ; play note G2
|1BAEB9:2CF2| db $9F ; play note G3
|1BAEBA:2CF3| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Segment0_Track2:
|1BAEBB:2CF4| db $E0, $13 ; set instrument - snare A
|1BAEBD:2CF6| db $ED, $A0 ; set channel volume
|1BAEBF:2CF8| db $60 ; duration
|1BAEC0:2CF9| db $C9 ; rest
|1BAEC1:2CFA| db $EF : dw Song1F_Sub_2EEA : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song1F_Segment0_Track3:
|1BAEC5:2CFE| db $E0, $0B ; set instrument - trombone
|1BAEC7:2D00| db $ED, $DC ; set channel volume
|1BAEC9:2D02| db $06, $6D ; duration, params
|1BAECB:2D04| db $AF ; play note B4
|1BAECC:2D05| db $AE ; play note A#4
|1BAECD:2D06| db $AD ; play note A4
|1BAECE:2D07| db $AC ; play note G#4
|1BAECF:2D08| db $AB ; play note G4
|1BAED0:2D09| db $AE ; play note A#4
|1BAED1:2D0A| db $AD ; play note A4
|1BAED2:2D0B| db $AC ; play note G#4
|1BAED3:2D0C| db $AB ; play note G4
|1BAED4:2D0D| db $AA ; play note F#4
|1BAED5:2D0E| db $A9 ; play note F4
|1BAED6:2D0F| db $A8 ; play note E4
|1BAED7:2D10| db $A7 ; play note D#4
|1BAED8:2D11| db $A6 ; play note D4
|1BAED9:2D12| db $A5 ; play note C#4
|1BAEDA:2D13| db $A4 ; play note C4
|1BAEDB:2D14| db $60 ; duration
|1BAEDC:2D15| db $C9 ; rest
|1BAEDD:2D16| db $48 ; duration
|1BAEDE:2D17| db $C9 ; rest
|1BAEDF:2D18| db $60 ; duration
|1BAEE0:2D19| db $C9 ; rest
|1BAEE1:2D1A| db $48 ; duration
|1BAEE2:2D1B| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song1F_Segment0_Track4:
|1BAEE3:2D1C| db $E0, $0B ; set instrument - trombone
|1BAEE5:2D1E| db $ED, $DC ; set channel volume
|1BAEE7:2D20| db $06, $6D ; duration, params
|1BAEE9:2D22| db $A9 ; play note F4
|1BAEEA:2D23| db $A8 ; play note E4
|1BAEEB:2D24| db $A7 ; play note D#4
|1BAEEC:2D25| db $A6 ; play note D4
|1BAEED:2D26| db $A5 ; play note C#4
|1BAEEE:2D27| db $A8 ; play note E4
|1BAEEF:2D28| db $A7 ; play note D#4
|1BAEF0:2D29| db $A6 ; play note D4
|1BAEF1:2D2A| db $A5 ; play note C#4
|1BAEF2:2D2B| db $A4 ; play note C4
|1BAEF3:2D2C| db $A3 ; play note B3
|1BAEF4:2D2D| db $A2 ; play note A#3
|1BAEF5:2D2E| db $A1 ; play note A3
|1BAEF6:2D2F| db $A0 ; play note G#3
|1BAEF7:2D30| db $9F ; play note G3
|1BAEF8:2D31| db $9E ; play note F#3
|1BAEF9:2D32| db $60 ; duration
|1BAEFA:2D33| db $C9 ; rest
|1BAEFB:2D34| db $48 ; duration
|1BAEFC:2D35| db $C9 ; rest
|1BAEFD:2D36| db $60 ; duration
|1BAEFE:2D37| db $C9 ; rest
|1BAEFF:2D38| db $48 ; duration
|1BAF00:2D39| db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song1F_Segment0_Track6:
|1BAF01:2D3A| db $E0, $02 ; set instrument - timpani
|1BAF03:2D3C| db $ED, $B4 ; set channel volume
|1BAF05:2D3E| db $60 ; duration
|1BAF06:2D3F| db $C9 ; rest
|1BAF07:2D40| db $24, $7D ; duration, params
|1BAF09:2D42| db $8C ; play note C2
|1BAF0A:2D43| db $8F ; play note D#2
|1BAF0B:2D44| db $91 ; play note F2
|1BAF0C:2D45| db $94 ; play note G#2
|1BAF0D:2D46| db $18 ; duration
|1BAF0E:2D47| db $93 ; play note G2
|1BAF0F:2D48| db $24 ; duration
|1BAF10:2D49| db $8C ; play note C2
|1BAF11:2D4A| db $8F ; play note D#2
|1BAF12:2D4B| db $91 ; play note F2
|1BAF13:2D4C| db $94 ; play note G#2
|1BAF14:2D4D| db $18 ; duration
|1BAF15:2D4E| db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song1F_Segment2_Track0:
|1BAF16:2D4F| db $0C, $6D ; duration, params
|1BAF18:2D51| db $92 ; play note F#2
|1BAF19:2D52| db $99 ; play note C#3
|1BAF1A:2D53| db $9E ; play note F#3
|1BAF1B:2D54| db $95 ; play note A2
|1BAF1C:2D55| db $9C ; play note E3
|1BAF1D:2D56| db $A1 ; play note A3
|1BAF1E:2D57| db $97 ; play note B2
|1BAF1F:2D58| db $9E ; play note F#3
|1BAF20:2D59| db $A3 ; play note B3
|1BAF21:2D5A| db $9A ; play note D3
|1BAF22:2D5B| db $A1 ; play note A3
|1BAF23:2D5C| db $A6 ; play note D4
|1BAF24:2D5D| db $99 ; play note C#3
|1BAF25:2D5E| db $A5 ; play note C#4
|1BAF26:2D5F| db $EF : dw Song1F_Sub_2F15 : db $04 ; call segment subroutine
|1BAF2A:2D63| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Segment2_Track1:
|1BAF2B:2D64| db $E0, $0B ; set instrument - trombone
|1BAF2D:2D66| db $ED, $C8 ; set channel volume
|1BAF2F:2D68| db $0C, $6D ; duration, params
|1BAF31:2D6A| db $B1 ; play note C#5
|1BAF32:2D6B| db $60 ; duration
|1BAF33:2D6C| db $B6 ; play note F#5
|1BAF34:2D6D| db $3C ; duration
|1BAF35:2D6E| db $C8 ; sustain current note
|1BAF36:2D6F| db $0C ; duration
|1BAF37:2D70| db $B7 ; play note G5
|1BAF38:2D71| db $48 ; duration
|1BAF39:2D72| db $B0 ; play note C5
|1BAF3A:2D73| db $54 ; duration
|1BAF3B:2D74| db $C8 ; sustain current note
|1BAF3C:2D75| db $0C ; duration
|1BAF3D:2D76| db $B5 ; play note F5
|1BAF3E:2D77| db $60 ; duration
|1BAF3F:2D78| db $AC ; play note G#4
|1BAF40:2D79| db $3C ; duration
|1BAF41:2D7A| db $C8 ; sustain current note
|1BAF42:2D7B| db $0C ; duration
|1BAF43:2D7C| db $AB ; play note G4
|1BAF44:2D7D| db $60 ; duration
|1BAF45:2D7E| db $B2 ; play note D5
|1BAF46:2D7F| db $3C ; duration
|1BAF47:2D80| db $C8 ; sustain current note
|1BAF48:2D81| db $0C ; duration
|1BAF49:2D82| db $B3 ; play note D#5
|1BAF4A:2D83| db $60 ; duration
|1BAF4B:2D84| db $AA ; play note F#4
|1BAF4C:2D85| db $3C ; duration
|1BAF4D:2D86| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1F_Segment2_Track2:
|1BAF4E:2D87| db $EF : dw Song1F_Sub_2EEA : db $05 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song1F_Segment2_Track3:
|1BAF52:2D8B| db $E0, $11 ; set instrument - trumpet
|1BAF54:2D8D| db $ED, $C8 ; set channel volume
|1BAF56:2D8F| db $60, $6D ; duration, params
|1BAF58:2D91| db $AA ; play note F#4
|1BAF59:2D92| db $48 ; duration
|1BAF5A:2D93| db $C8 ; sustain current note
|1BAF5B:2D94| db $60 ; duration
|1BAF5C:2D95| db $AD ; play note A4
|1BAF5D:2D96| db $48 ; duration
|1BAF5E:2D97| db $C8 ; sustain current note
|1BAF5F:2D98| db $AC ; play note G#4
|1BAF60:2D99| db $60 ; duration
|1BAF61:2D9A| db $C8 ; sustain current note
|1BAF62:2D9B| db $AB ; play note G4
|1BAF63:2D9C| db $48 ; duration
|1BAF64:2D9D| db $C8 ; sustain current note
|1BAF65:2D9E| db $AA ; play note F#4
|1BAF66:2D9F| db $60 ; duration
|1BAF67:2DA0| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1F_Segment2_Track4:
|1BAF68:2DA1| db $E0, $11 ; set instrument - trumpet
|1BAF6A:2DA3| db $ED, $C8 ; set channel volume
|1BAF6C:2DA5| db $60, $6D ; duration, params
|1BAF6E:2DA7| db $A5 ; play note C#4
|1BAF6F:2DA8| db $48 ; duration
|1BAF70:2DA9| db $C8 ; sustain current note
|1BAF71:2DAA| db $60 ; duration
|1BAF72:2DAB| db $A8 ; play note E4
|1BAF73:2DAC| db $48 ; duration
|1BAF74:2DAD| db $C8 ; sustain current note
|1BAF75:2DAE| db $A7 ; play note D#4
|1BAF76:2DAF| db $60 ; duration
|1BAF77:2DB0| db $C8 ; sustain current note
|1BAF78:2DB1| db $A6 ; play note D4
|1BAF79:2DB2| db $48 ; duration
|1BAF7A:2DB3| db $C8 ; sustain current note
|1BAF7B:2DB4| db $A5 ; play note C#4
|1BAF7C:2DB5| db $60 ; duration
|1BAF7D:2DB6| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1F_Segment2_Track5:
|1BAF7E:2DB7| db $E0, $11 ; set instrument - trumpet
|1BAF80:2DB9| db $ED, $C8 ; set channel volume
|1BAF82:2DBB| db $60, $6D ; duration, params
|1BAF84:2DBD| db $A0 ; play note G#3
|1BAF85:2DBE| db $48 ; duration
|1BAF86:2DBF| db $C8 ; sustain current note
|1BAF87:2DC0| db $60 ; duration
|1BAF88:2DC1| db $A3 ; play note B3
|1BAF89:2DC2| db $48 ; duration
|1BAF8A:2DC3| db $C8 ; sustain current note
|1BAF8B:2DC4| db $A2 ; play note A#3
|1BAF8C:2DC5| db $60 ; duration
|1BAF8D:2DC6| db $C8 ; sustain current note
|1BAF8E:2DC7| db $A1 ; play note A3
|1BAF8F:2DC8| db $48 ; duration
|1BAF90:2DC9| db $C8 ; sustain current note
|1BAF91:2DCA| db $A0 ; play note G#3
|1BAF92:2DCB| db $60 ; duration
|1BAF93:2DCC| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1F_Segment2_Track6:
|1BAF94:2DCD| db $24, $7D ; duration, params
|1BAF96:2DCF| db $92 ; play note F#2
|1BAF97:2DD0| db $95 ; play note A2
|1BAF98:2DD1| db $97 ; play note B2
|1BAF99:2DD2| db $9A ; play note D3
|1BAF9A:2DD3| db $18 ; duration
|1BAF9B:2DD4| db $99 ; play note C#3
|1BAF9C:2DD5| db $EF : dw Song1F_Sub_2F24 : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song1F_Segment4_Track0:
|1BAFA0:2DD9| db $EF : dw Song1F_Sub_2F2C : db $01 ; call segment subroutine
|1BAFA4:2DDD| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Segment4_Track1:
|1BAFA5:2DDE| db $EF : dw Song1F_Sub_2F2C : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song1F_Segment4_Track2:
|1BAFA9:2DE2| db $E0, $13 ; set instrument - snare A
|1BAFAB:2DE4| db $ED, $A0 ; set channel volume
|1BAFAD:2DE6| db $EF : dw Song1F_Sub_2EEA : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song1F_Segment4_Track3:
|1BAFB1:2DEA| db $0C, $4D ; duration, params
|1BAFB3:2DEC| db $AF ; play note B4
|1BAFB4:2DED| db $18 ; duration
|1BAFB5:2DEE| db $AF ; play note B4
|1BAFB6:2DEF| db $0C ; duration
|1BAFB7:2DF0| db $AF ; play note B4
|1BAFB8:2DF1| db $AF ; play note B4
|1BAFB9:2DF2| db $18 ; duration
|1BAFBA:2DF3| db $AF ; play note B4
|1BAFBB:2DF4| db $0C ; duration
|1BAFBC:2DF5| db $AF ; play note B4
|1BAFBD:2DF6| db $AF ; play note B4
|1BAFBE:2DF7| db $AF ; play note B4
|1BAFBF:2DF8| db $AF ; play note B4
|1BAFC0:2DF9| db $AF ; play note B4
|1BAFC1:2DFA| db $18 ; duration
|1BAFC2:2DFB| db $AF ; play note B4
|1BAFC3:2DFC| db $0C ; duration
|1BAFC4:2DFD| db $AE ; play note A#4
|1BAFC5:2DFE| db $18 ; duration
|1BAFC6:2DFF| db $AE ; play note A#4
|1BAFC7:2E00| db $0C ; duration
|1BAFC8:2E01| db $AE ; play note A#4
|1BAFC9:2E02| db $AE ; play note A#4
|1BAFCA:2E03| db $18 ; duration
|1BAFCB:2E04| db $AE ; play note A#4
|1BAFCC:2E05| db $AE ; play note A#4
|1BAFCD:2E06| db $0C ; duration
|1BAFCE:2E07| db $AE ; play note A#4
|1BAFCF:2E08| db $AE ; play note A#4
|1BAFD0:2E09| db $AE ; play note A#4
|1BAFD1:2E0A| db $18 ; duration
|1BAFD2:2E0B| db $AE ; play note A#4
|1BAFD3:2E0C| db $0C ; duration
|1BAFD4:2E0D| db $AD ; play note A4
|1BAFD5:2E0E| db $18 ; duration
|1BAFD6:2E0F| db $AD ; play note A4
|1BAFD7:2E10| db $0C ; duration
|1BAFD8:2E11| db $AD ; play note A4
|1BAFD9:2E12| db $AD ; play note A4
|1BAFDA:2E13| db $18 ; duration
|1BAFDB:2E14| db $AD ; play note A4
|1BAFDC:2E15| db $AD ; play note A4
|1BAFDD:2E16| db $0C ; duration
|1BAFDE:2E17| db $AC ; play note G#4
|1BAFDF:2E18| db $AC ; play note G#4
|1BAFE0:2E19| db $AC ; play note G#4
|1BAFE1:2E1A| db $18 ; duration
|1BAFE2:2E1B| db $AC ; play note G#4

;---------------------------------------------------------------------------------------------------

Song1F_Segment4_Track4:
|1BAFE3:2E1C| db $0C, $4D ; duration, params
|1BAFE5:2E1E| db $AA ; play note F#4
|1BAFE6:2E1F| db $18 ; duration
|1BAFE7:2E20| db $AA ; play note F#4
|1BAFE8:2E21| db $0C ; duration
|1BAFE9:2E22| db $AA ; play note F#4
|1BAFEA:2E23| db $AA ; play note F#4
|1BAFEB:2E24| db $18 ; duration
|1BAFEC:2E25| db $AA ; play note F#4
|1BAFED:2E26| db $0C ; duration
|1BAFEE:2E27| db $AA ; play note F#4
|1BAFEF:2E28| db $AA ; play note F#4
|1BAFF0:2E29| db $AA ; play note F#4
|1BAFF1:2E2A| db $AA ; play note F#4
|1BAFF2:2E2B| db $AA ; play note F#4
|1BAFF3:2E2C| db $18 ; duration
|1BAFF4:2E2D| db $AA ; play note F#4
|1BAFF5:2E2E| db $0C ; duration
|1BAFF6:2E2F| db $A9 ; play note F4
|1BAFF7:2E30| db $18 ; duration
|1BAFF8:2E31| db $A9 ; play note F4
|1BAFF9:2E32| db $0C ; duration
|1BAFFA:2E33| db $A9 ; play note F4
|1BAFFB:2E34| db $A9 ; play note F4
|1BAFFC:2E35| db $18 ; duration
|1BAFFD:2E36| db $A9 ; play note F4
|1BAFFE:2E37| db $A9 ; play note F4
|1BAFFF:2E38| db $0C ; duration
|1BB000:2E39| db $A9 ; play note F4
|1BB001:2E3A| db $A9 ; play note F4
|1BB002:2E3B| db $A9 ; play note F4
|1BB003:2E3C| db $18 ; duration
|1BB004:2E3D| db $A9 ; play note F4
|1BB005:2E3E| db $0C ; duration
|1BB006:2E3F| db $A8 ; play note E4
|1BB007:2E40| db $18 ; duration
|1BB008:2E41| db $A8 ; play note E4
|1BB009:2E42| db $0C ; duration
|1BB00A:2E43| db $A8 ; play note E4
|1BB00B:2E44| db $A8 ; play note E4
|1BB00C:2E45| db $18 ; duration
|1BB00D:2E46| db $A8 ; play note E4
|1BB00E:2E47| db $A8 ; play note E4
|1BB00F:2E48| db $0C ; duration
|1BB010:2E49| db $A7 ; play note D#4
|1BB011:2E4A| db $A7 ; play note D#4
|1BB012:2E4B| db $A7 ; play note D#4
|1BB013:2E4C| db $18 ; duration
|1BB014:2E4D| db $A7 ; play note D#4

;---------------------------------------------------------------------------------------------------

Song1F_Segment4_Track5:
|1BB015:2E4E| db $0C, $4D ; duration, params
|1BB017:2E50| db $A4 ; play note C4
|1BB018:2E51| db $18 ; duration
|1BB019:2E52| db $A4 ; play note C4
|1BB01A:2E53| db $0C ; duration
|1BB01B:2E54| db $A4 ; play note C4
|1BB01C:2E55| db $A4 ; play note C4
|1BB01D:2E56| db $18 ; duration
|1BB01E:2E57| db $A4 ; play note C4
|1BB01F:2E58| db $0C ; duration
|1BB020:2E59| db $A4 ; play note C4
|1BB021:2E5A| db $A4 ; play note C4
|1BB022:2E5B| db $A4 ; play note C4
|1BB023:2E5C| db $A4 ; play note C4
|1BB024:2E5D| db $A4 ; play note C4
|1BB025:2E5E| db $18 ; duration
|1BB026:2E5F| db $A4 ; play note C4
|1BB027:2E60| db $0C ; duration
|1BB028:2E61| db $A3 ; play note B3
|1BB029:2E62| db $18 ; duration
|1BB02A:2E63| db $A3 ; play note B3
|1BB02B:2E64| db $0C ; duration
|1BB02C:2E65| db $A3 ; play note B3
|1BB02D:2E66| db $A3 ; play note B3
|1BB02E:2E67| db $18 ; duration
|1BB02F:2E68| db $A3 ; play note B3
|1BB030:2E69| db $A3 ; play note B3
|1BB031:2E6A| db $0C ; duration
|1BB032:2E6B| db $A3 ; play note B3
|1BB033:2E6C| db $A3 ; play note B3
|1BB034:2E6D| db $A3 ; play note B3
|1BB035:2E6E| db $18 ; duration
|1BB036:2E6F| db $A3 ; play note B3
|1BB037:2E70| db $0C ; duration
|1BB038:2E71| db $A2 ; play note A#3
|1BB039:2E72| db $18 ; duration
|1BB03A:2E73| db $A2 ; play note A#3
|1BB03B:2E74| db $0C ; duration
|1BB03C:2E75| db $A2 ; play note A#3
|1BB03D:2E76| db $A2 ; play note A#3
|1BB03E:2E77| db $18 ; duration
|1BB03F:2E78| db $A2 ; play note A#3
|1BB040:2E79| db $A2 ; play note A#3
|1BB041:2E7A| db $0C ; duration
|1BB042:2E7B| db $A1 ; play note A3
|1BB043:2E7C| db $A1 ; play note A3
|1BB044:2E7D| db $A1 ; play note A3
|1BB045:2E7E| db $18 ; duration
|1BB046:2E7F| db $A1 ; play note A3

;---------------------------------------------------------------------------------------------------

Song1F_Segment3_Track0:
|1BB047:2E80| db $0C, $6D ; duration, params
|1BB049:2E82| db $91 ; play note F2
|1BB04A:2E83| db $98 ; play note C3
|1BB04B:2E84| db $9D ; play note F3
|1BB04C:2E85| db $94 ; play note G#2
|1BB04D:2E86| db $9B ; play note D#3
|1BB04E:2E87| db $A0 ; play note G#3
|1BB04F:2E88| db $96 ; play note A#2
|1BB050:2E89| db $9D ; play note F3
|1BB051:2E8A| db $A2 ; play note A#3
|1BB052:2E8B| db $99 ; play note C#3
|1BB053:2E8C| db $A0 ; play note G#3
|1BB054:2E8D| db $A5 ; play note C#4
|1BB055:2E8E| db $98 ; play note C3
|1BB056:2E8F| db $A4 ; play note C4
|1BB057:2E90| db $90 ; play note E2
|1BB058:2E91| db $97 ; play note B2
|1BB059:2E92| db $9C ; play note E3
|1BB05A:2E93| db $93 ; play note G2
|1BB05B:2E94| db $9A ; play note D3
|1BB05C:2E95| db $9F ; play note G3
|1BB05D:2E96| db $95 ; play note A2
|1BB05E:2E97| db $9C ; play note E3
|1BB05F:2E98| db $A1 ; play note A3
|1BB060:2E99| db $98 ; play note C3
|1BB061:2E9A| db $9F ; play note G3
|1BB062:2E9B| db $A4 ; play note C4
|1BB063:2E9C| db $97 ; play note B2
|1BB064:2E9D| db $A3 ; play note B3
|1BB065:2E9E| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Segment3_Track1:
|1BB066:2E9F| db $0C, $6D ; duration, params
|1BB068:2EA1| db $AA ; play note F#4
|1BB069:2EA2| db $60 ; duration
|1BB06A:2EA3| db $A9 ; play note F4
|1BB06B:2EA4| db $3C ; duration
|1BB06C:2EA5| db $C8 ; sustain current note
|1BB06D:2EA6| db $0C ; duration
|1BB06E:2EA7| db $A9 ; play note F4
|1BB06F:2EA8| db $48 ; duration
|1BB070:2EA9| db $A8 ; play note E4
|1BB071:2EAA| db $54 ; duration
|1BB072:2EAB| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1F_Segment3_Track2:
|1BB073:2EAC| db $EF : dw Song1F_Sub_2EEA : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song1F_Segment3_Track3:
|1BB077:2EB0| db $60, $6D ; duration, params
|1BB079:2EB2| db $A9 ; play note F4
|1BB07A:2EB3| db $48 ; duration
|1BB07B:2EB4| db $C8 ; sustain current note
|1BB07C:2EB5| db $60 ; duration
|1BB07D:2EB6| db $A8 ; play note E4
|1BB07E:2EB7| db $48 ; duration
|1BB07F:2EB8| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1F_Segment3_Track4:
|1BB080:2EB9| db $60, $6D ; duration, params
|1BB082:2EBB| db $A4 ; play note C4
|1BB083:2EBC| db $48 ; duration
|1BB084:2EBD| db $C8 ; sustain current note
|1BB085:2EBE| db $60 ; duration
|1BB086:2EBF| db $A3 ; play note B3
|1BB087:2EC0| db $48 ; duration
|1BB088:2EC1| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1F_Segment3_Track5:
|1BB089:2EC2| db $60, $6D ; duration, params
|1BB08B:2EC4| db $9F ; play note G3
|1BB08C:2EC5| db $48 ; duration
|1BB08D:2EC6| db $C8 ; sustain current note
|1BB08E:2EC7| db $60 ; duration
|1BB08F:2EC8| db $9E ; play note F#3
|1BB090:2EC9| db $48 ; duration
|1BB091:2ECA| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1F_Segment3_Track6:
|1BB092:2ECB| db $24, $7D ; duration, params
|1BB094:2ECD| db $91 ; play note F2
|1BB095:2ECE| db $94 ; play note G#2
|1BB096:2ECF| db $96 ; play note A#2
|1BB097:2ED0| db $99 ; play note C#3
|1BB098:2ED1| db $18 ; duration
|1BB099:2ED2| db $98 ; play note C3
|1BB09A:2ED3| db $24 ; duration
|1BB09B:2ED4| db $90 ; play note E2
|1BB09C:2ED5| db $93 ; play note G2
|1BB09D:2ED6| db $95 ; play note A2
|1BB09E:2ED7| db $98 ; play note C3
|1BB09F:2ED8| db $18 ; duration
|1BB0A0:2ED9| db $97 ; play note B2
|1BB0A1:2EDA| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Sub_2EDB:
|1BB0A2:2EDB| db $8C ; play note C2
|1BB0A3:2EDC| db $93 ; play note G2
|1BB0A4:2EDD| db $98 ; play note C3
|1BB0A5:2EDE| db $8F ; play note D#2
|1BB0A6:2EDF| db $96 ; play note A#2
|1BB0A7:2EE0| db $9B ; play note D#3
|1BB0A8:2EE1| db $91 ; play note F2
|1BB0A9:2EE2| db $98 ; play note C3
|1BB0AA:2EE3| db $9D ; play note F3
|1BB0AB:2EE4| db $94 ; play note G#2
|1BB0AC:2EE5| db $9B ; play note D#3
|1BB0AD:2EE6| db $A0 ; play note G#3
|1BB0AE:2EE7| db $93 ; play note G2
|1BB0AF:2EE8| db $9F ; play note G3
|1BB0B0:2EE9| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Sub_2EEA:
|1BB0B1:2EEA| db $0C, $6D ; duration, params
|1BB0B3:2EEC| db $A9 ; play note F4
|1BB0B4:2EED| db $0C, $69 ; duration, params
|1BB0B6:2EEF| db $A9 ; play note F4
|1BB0B7:2EF0| db $A9 ; play note F4
|1BB0B8:2EF1| db $0C, $6D ; duration, params
|1BB0BA:2EF3| db $A9 ; play note F4
|1BB0BB:2EF4| db $0C, $69 ; duration, params
|1BB0BD:2EF6| db $A9 ; play note F4
|1BB0BE:2EF7| db $A9 ; play note F4
|1BB0BF:2EF8| db $0C, $6D ; duration, params
|1BB0C1:2EFA| db $A9 ; play note F4
|1BB0C2:2EFB| db $0C, $69 ; duration, params
|1BB0C4:2EFD| db $A9 ; play note F4
|1BB0C5:2EFE| db $A9 ; play note F4
|1BB0C6:2EFF| db $0C, $6D ; duration, params
|1BB0C8:2F01| db $A9 ; play note F4
|1BB0C9:2F02| db $0C, $69 ; duration, params
|1BB0CB:2F04| db $A9 ; play note F4
|1BB0CC:2F05| db $A9 ; play note F4
|1BB0CD:2F06| db $0C, $6D ; duration, params
|1BB0CF:2F08| db $A9 ; play note F4
|1BB0D0:2F09| db $0C, $69 ; duration, params
|1BB0D2:2F0B| db $A9 ; play note F4
|1BB0D3:2F0C| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Sub_2F0D:
|1BB0D4:2F0D| db $24 ; duration
|1BB0D5:2F0E| db $8C ; play note C2
|1BB0D6:2F0F| db $8F ; play note D#2
|1BB0D7:2F10| db $91 ; play note F2
|1BB0D8:2F11| db $94 ; play note G#2
|1BB0D9:2F12| db $18 ; duration
|1BB0DA:2F13| db $93 ; play note G2
|1BB0DB:2F14| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Sub_2F15:
|1BB0DC:2F15| db $92 ; play note F#2
|1BB0DD:2F16| db $99 ; play note C#3
|1BB0DE:2F17| db $9E ; play note F#3
|1BB0DF:2F18| db $95 ; play note A2
|1BB0E0:2F19| db $9C ; play note E3
|1BB0E1:2F1A| db $A1 ; play note A3
|1BB0E2:2F1B| db $97 ; play note B2
|1BB0E3:2F1C| db $9E ; play note F#3
|1BB0E4:2F1D| db $A3 ; play note B3
|1BB0E5:2F1E| db $9A ; play note D3
|1BB0E6:2F1F| db $A1 ; play note A3
|1BB0E7:2F20| db $A6 ; play note D4
|1BB0E8:2F21| db $99 ; play note C#3
|1BB0E9:2F22| db $A5 ; play note C#4
|1BB0EA:2F23| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Sub_2F24:
|1BB0EB:2F24| db $24 ; duration
|1BB0EC:2F25| db $92 ; play note F#2
|1BB0ED:2F26| db $95 ; play note A2
|1BB0EE:2F27| db $97 ; play note B2
|1BB0EF:2F28| db $9A ; play note D3
|1BB0F0:2F29| db $18 ; duration
|1BB0F1:2F2A| db $99 ; play note C#3
|1BB0F2:2F2B| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Sub_2F2C:
|1BB0F3:2F2C| db $0C, $6D ; duration, params
|1BB0F5:2F2E| db $8F ; play note D#2
|1BB0F6:2F2F| db $96 ; play note A#2
|1BB0F7:2F30| db $9B ; play note D#3
|1BB0F8:2F31| db $9E ; play note F#3
|1BB0F9:2F32| db $A5 ; play note C#4
|1BB0FA:2F33| db $AA ; play note F#4
|1BB0FB:2F34| db $AC ; play note G#4
|1BB0FC:2F35| db $A7 ; play note D#4
|1BB0FD:2F36| db $A0 ; play note G#3
|1BB0FE:2F37| db $97 ; play note B2
|1BB0FF:2F38| db $9E ; play note F#3
|1BB100:2F39| db $A3 ; play note B3
|1BB101:2F3A| db $96 ; play note A#2
|1BB102:2F3B| db $A2 ; play note A#3
|1BB103:2F3C| db $8E ; play note D2
|1BB104:2F3D| db $95 ; play note A2
|1BB105:2F3E| db $9A ; play note D3
|1BB106:2F3F| db $9D ; play note F3
|1BB107:2F40| db $A4 ; play note C4
|1BB108:2F41| db $A9 ; play note F4
|1BB109:2F42| db $AB ; play note G4
|1BB10A:2F43| db $A6 ; play note D4
|1BB10B:2F44| db $9F ; play note G3
|1BB10C:2F45| db $96 ; play note A#2
|1BB10D:2F46| db $9D ; play note F3
|1BB10E:2F47| db $A2 ; play note A#3
|1BB10F:2F48| db $95 ; play note A2
|1BB110:2F49| db $A1 ; play note A3
|1BB111:2F4A| db $8D ; play note C#2
|1BB112:2F4B| db $94 ; play note G#2
|1BB113:2F4C| db $99 ; play note C#3
|1BB114:2F4D| db $9C ; play note E3
|1BB115:2F4E| db $A3 ; play note B3
|1BB116:2F4F| db $A8 ; play note E4
|1BB117:2F50| db $AA ; play note F#4
|1BB118:2F51| db $A5 ; play note C#4
|1BB119:2F52| db $A9 ; play note F4
|1BB11A:2F53| db $AC ; play note G#4
|1BB11B:2F54| db $A7 ; play note D#4
|1BB11C:2F55| db $A0 ; play note G#3
|1BB11D:2F56| db $9F ; play note G3
|1BB11E:2F57| db $AB ; play note G4
|1BB11F:2F58| db $00 ; End

;===================================================================================================

Song1E_MeetingGanon:
|1BB120:2F59| dw Song1E_Segment0

Song1E_Loop:
|1BB122:2F5B| dw Song1C_Segment1
|1BB124:2F5D| dw Song1C_Segment1
|1BB126:2F5F| dw Song1C_Segment2
|1BB128:2F61| dw $00FF, Song1E_Loop ; Loop point
|1BB12C:2F65| dw $0000

Song1E_Segment0:
|1BB12E:2F67| dw Song1E_Segment0_Track0
|1BB130:2F69| dw Song1E_Segment0_Track1
|1BB132:2F6B| dw Song1E_Segment0_Track2
|1BB134:2F6D| dw Song1E_Segment0_Track3
|1BB136:2F6F| dw Song1E_Segment0_Track4
|1BB138:2F71| dw Song1E_Segment0_Track5
|1BB13A:2F73| dw $0000
|1BB13C:2F75| dw $0000

;---------------------------------------------------------------------------------------------------

Song1E_Segment0_Track0:
|1BB13E:2F77| db $FA, $19 ; set base percussion sample
|1BB140:2F79| db $E5, $C8 ; set song volume
|1BB142:2F7B| db $F5, $FF, $28, $28 ; configure EON, EVOLL, EVOLR
|1BB146:2F7F| db $F7, $02, $14, $02 ; configure EDL, EFB, FIR
|1BB14A:2F83| db $E7, $19 ; set song tempo
|1BB14C:2F85| db $E0, $09 ; set instrument - strings A
|1BB14E:2F87| db $ED, $C8 ; set channel volume
|1BB150:2F89| db $E3, $1A, $1C, $18 ; enable vibrato
|1BB154:2F8D| db $E1, $0C ; set panning - leaning left
|1BB156:2F8F| db $08, $6D ; duration, params
|1BB158:2F91| db $B5 ; play note F5
|1BB159:2F92| db $10 ; duration
|1BB15A:2F93| db $B4 ; play note E5
|1BB15B:2F94| db $08 ; duration
|1BB15C:2F95| db $AF ; play note B4
|1BB15D:2F96| db $10 ; duration
|1BB15E:2F97| db $AE ; play note A#4
|1BB15F:2F98| db $08 ; duration
|1BB160:2F99| db $A9 ; play note F4
|1BB161:2F9A| db $A8 ; play note E4
|1BB162:2F9B| db $A3 ; play note B3
|1BB163:2F9C| db $10 ; duration
|1BB164:2F9D| db $A2 ; play note A#3
|1BB165:2F9E| db $60 ; duration
|1BB166:2F9F| db $C8 ; sustain current note
|1BB167:2FA0| db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1E_Segment0_Track1:
|1BB168:2FA1| db $E0, $09 ; set instrument - strings A
|1BB16A:2FA3| db $ED, $C8 ; set channel volume
|1BB16C:2FA5| db $08, $6D ; duration, params
|1BB16E:2FA7| db $A9 ; play note F4
|1BB16F:2FA8| db $10 ; duration
|1BB170:2FA9| db $A8 ; play note E4
|1BB171:2FAA| db $08 ; duration
|1BB172:2FAB| db $A3 ; play note B3
|1BB173:2FAC| db $10 ; duration
|1BB174:2FAD| db $A2 ; play note A#3
|1BB175:2FAE| db $08 ; duration
|1BB176:2FAF| db $9D ; play note F3
|1BB177:2FB0| db $9C ; play note E3
|1BB178:2FB1| db $97 ; play note B2
|1BB179:2FB2| db $10 ; duration
|1BB17A:2FB3| db $96 ; play note A#2
|1BB17B:2FB4| db $60 ; duration
|1BB17C:2FB5| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1E_Segment0_Track2:
|1BB17D:2FB6| db $E0, $09 ; set instrument - strings A
|1BB17F:2FB8| db $ED, $C8 ; set channel volume
|1BB181:2FBA| db $08, $6D ; duration, params
|1BB183:2FBC| db $AF ; play note B4
|1BB184:2FBD| db $10 ; duration
|1BB185:2FBE| db $AE ; play note A#4
|1BB186:2FBF| db $08 ; duration
|1BB187:2FC0| db $A9 ; play note F4
|1BB188:2FC1| db $10 ; duration
|1BB189:2FC2| db $A8 ; play note E4
|1BB18A:2FC3| db $08 ; duration
|1BB18B:2FC4| db $A3 ; play note B3
|1BB18C:2FC5| db $A2 ; play note A#3
|1BB18D:2FC6| db $9D ; play note F3
|1BB18E:2FC7| db $10 ; duration
|1BB18F:2FC8| db $9C ; play note E3
|1BB190:2FC9| db $60 ; duration
|1BB191:2FCA| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1E_Segment0_Track3:
|1BB192:2FCB| db $E0, $09 ; set instrument - strings A
|1BB194:2FCD| db $ED, $C8 ; set channel volume
|1BB196:2FCF| db $08, $6D ; duration, params
|1BB198:2FD1| db $AE ; play note A#4
|1BB199:2FD2| db $10 ; duration
|1BB19A:2FD3| db $AD ; play note A4
|1BB19B:2FD4| db $08 ; duration
|1BB19C:2FD5| db $A8 ; play note E4
|1BB19D:2FD6| db $10 ; duration
|1BB19E:2FD7| db $A7 ; play note D#4
|1BB19F:2FD8| db $08 ; duration
|1BB1A0:2FD9| db $A2 ; play note A#3
|1BB1A1:2FDA| db $A1 ; play note A3
|1BB1A2:2FDB| db $9C ; play note E3
|1BB1A3:2FDC| db $10 ; duration
|1BB1A4:2FDD| db $9B ; play note D#3
|1BB1A5:2FDE| db $60 ; duration
|1BB1A6:2FDF| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1E_Segment0_Track4:
|1BB1A7:2FE0| db $E0, $09 ; set instrument - strings A
|1BB1A9:2FE2| db $ED, $C8 ; set channel volume
|1BB1AB:2FE4| db $08, $6D ; duration, params
|1BB1AD:2FE6| db $9D ; play note F3
|1BB1AE:2FE7| db $10 ; duration
|1BB1AF:2FE8| db $9C ; play note E3
|1BB1B0:2FE9| db $08 ; duration
|1BB1B1:2FEA| db $97 ; play note B2
|1BB1B2:2FEB| db $10 ; duration
|1BB1B3:2FEC| db $96 ; play note A#2
|1BB1B4:2FED| db $08 ; duration
|1BB1B5:2FEE| db $91 ; play note F2
|1BB1B6:2FEF| db $90 ; play note E2
|1BB1B7:2FF0| db $8B ; play note B1
|1BB1B8:2FF1| db $10 ; duration
|1BB1B9:2FF2| db $8A ; play note A#1
|1BB1BA:2FF3| db $60 ; duration
|1BB1BB:2FF4| db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1E_Segment0_Track5:
|1BB1BC:2FF5| db $E0, $02 ; set instrument - timpani
|1BB1BE:2FF7| db $ED, $DC ; set channel volume
|1BB1C0:2FF9| db $08, $7D ; duration, params
|1BB1C2:2FFB| db $89 ; play note A1
|1BB1C3:2FFC| db $10 ; duration
|1BB1C4:2FFD| db $89 ; play note A1
|1BB1C5:2FFE| db $08 ; duration
|1BB1C6:2FFF| db $89 ; play note A1
|1BB1C7:3000| db $10 ; duration
|1BB1C8:3001| db $89 ; play note A1
|1BB1C9:3002| db $08 ; duration
|1BB1CA:3003| db $89 ; play note A1
|1BB1CB:3004| db $89 ; play note A1
|1BB1CC:3005| db $89 ; play note A1
|1BB1CD:3006| db $10 ; duration
|1BB1CE:3007| db $89 ; play note A1
|1BB1CF:3008| db $60, $68 ; duration, params
|1BB1D1:300A| db $C8 ; sustain current note
|1BB1D2:300B| db $00 ; End

;===================================================================================================

site *

|1BB1D3| dw $0000, SPC_ENGINE ; end of transfer

;===================================================================================================
; FREE ROM: 0x629
; including garbage
;===================================================================================================
GARBAGE_1BB1D7:
|1BB1D7| db $C0, $00, $00, $00, $00, $01, $FF, $00, $00

;---------------------------------------------------------------------------------------------------

NULL_1BB1E0:
|1BB1E0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB1E8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB1F0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB1F8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB200| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB208| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB210| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB218| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB220| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB228| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB230| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB238| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB240| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB248| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB250| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB258| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB260| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB268| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB270| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB278| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB280| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB288| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB290| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB298| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB2A0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB2A8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB2B0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB2B8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB2C0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB2C8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB2D0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB2D8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB2E0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB2E8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB2F0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB2F8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB300| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB308| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB310| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB318| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB320| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB328| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB330| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB338| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB340| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB348| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB350| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB358| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB360| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB368| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB370| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB378| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB380| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB388| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB390| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB398| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB3A0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB3A8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB3B0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB3B8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB3C0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB3C8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB3D0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB3D8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB3E0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB3E8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB3F0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB3F8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB400| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB408| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB410| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB418| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB420| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB428| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB430| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB438| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB440| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB448| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB450| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB458| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB460| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB468| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB470| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB478| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB480| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB488| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB490| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB498| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB4A0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB4A8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB4B0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB4B8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB4C0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB4C8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB4D0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB4D8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB4E0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB4E8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB4F0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB4F8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB500| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB508| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB510| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB518| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB520| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB528| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB530| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB538| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB540| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB548| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB550| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB558| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB560| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB568| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB570| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB578| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB580| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB588| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB590| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB598| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB5A0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB5A8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB5B0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB5B8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB5C0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB5C8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB5D0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB5D8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB5E0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB5E8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB5F0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB5F8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB600| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB608| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB610| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB618| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB620| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB628| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB630| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB638| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB640| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB648| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB650| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB658| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB660| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB668| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB670| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB678| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB680| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB688| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB690| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB698| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB6A0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB6A8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB6B0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB6B8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB6C0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB6C8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB6D0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB6D8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB6E0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB6E8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB6F0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB6F8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB700| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB708| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB710| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB718| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB720| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB728| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB730| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB738| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB740| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB748| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB750| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB758| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB760| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB768| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB770| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB778| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB780| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB788| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB790| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB798| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB7A0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB7A8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB7B0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB7B8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB7C0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB7C8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB7D0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB7D8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB7E0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB7E8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB7F0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BB7F8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

pool GetPitEntranceDestination

.map16
|1BB800| dw $0CE0 ; Skull Woods big chest
|1BB802| dw $124E ; Skull Woods compass chest
|1BB804| dw $12CE ; Skull Woods compass chest
|1BB806| dw $1162 ; Skull Woods bumper room
|1BB808| dw $11E2 ; Skull Woods bumper room
|1BB80A| dw $073C ; Skull Woods middle pit
|1BB80C| dw $07BC ; Skull Woods middle pit
|1BB80E| dw $0CE0 ; Lost Woods HP
|1BB810| dw $003C ; Ganon
|1BB812| dw $00BE ; Ganon
|1BB814| dw $003E ; Ganon
|1BB816| dw $0388 ; Graveyard big faiy
|1BB818| dw $0170 ; Castle secret passage
|1BB81A| dw $03A4 ; Magic bat
|1BB81C| dw $0424 ; Magic bat
|1BB81E| dw $0518 ; Lumberjack tree
|1BB820| dw $028A ; Kakariko well
|1BB822| dw $020A ; Kakariko well
|1BB824| dw $0108 ; Back of sewers

.screen
|1BB826| dw $0040 ; OW 40 - Skull Woods big chest
|1BB828| dw $0040 ; OW 40 - Skull Woods compass chest
|1BB82A| dw $0040 ; OW 40 - Skull Woods compass chest
|1BB82C| dw $0040 ; OW 40 - Skull Woods bumper room
|1BB82E| dw $0040 ; OW 40 - Skull Woods bumper room
|1BB830| dw $0040 ; OW 40 - Skull Woods middle pit
|1BB832| dw $0040 ; OW 40 - Skull Woods middle pit
|1BB834| dw $0000 ; OW 00 - Lost Woods HP
|1BB836| dw $005B ; OW 5B - Ganon
|1BB838| dw $005B ; OW 5B - Ganon
|1BB83A| dw $005B ; OW 5B - Ganon
|1BB83C| dw $0015 ; OW 15 - Graveyard big faiy
|1BB83E| dw $001B ; OW 1B - Castle secret passage
|1BB840| dw $0022 ; OW 22 - Magic bat
|1BB842| dw $0022 ; OW 22 - Magic bat
|1BB844| dw $0002 ; OW 02 - Lumberjack tree
|1BB846| dw $0018 ; OW 18 - Kakariko well
|1BB848| dw $0018 ; OW 18 - Kakariko well
|1BB84A| dw $0014 ; OW 14 - Back of sewers

.entrance
|1BB84C| db $76 ; ENTRANCE 76 - Skull Woods big chest
|1BB84D| db $77 ; ENTRANCE 77 - Skull Woods compass chest
|1BB84E| db $77 ; ENTRANCE 77 - Skull Woods compass chest
|1BB84F| db $78 ; ENTRANCE 78 - Skull Woods bumper room
|1BB850| db $78 ; ENTRANCE 78 - Skull Woods bumper room
|1BB851| db $79 ; ENTRANCE 79 - Skull Woods middle pit
|1BB852| db $79 ; ENTRANCE 79 - Skull Woods middle pit
|1BB853| db $7A ; ENTRANCE 7A - Lost Woods HP
|1BB854| db $7B ; ENTRANCE 7B - Ganon
|1BB855| db $7B ; ENTRANCE 7B - Ganon
|1BB856| db $7B ; ENTRANCE 7B - Ganon
|1BB857| db $7C ; ENTRANCE 7C - Graveyard big faiy
|1BB858| db $7D ; ENTRANCE 7D - Castle secret passage
|1BB859| db $7E ; ENTRANCE 7E - Magic bat
|1BB85A| db $7E ; ENTRANCE 7E - Magic bat
|1BB85B| db $7F ; ENTRANCE 7F - Lumberjack tree
|1BB85C| db $80 ; ENTRANCE 80 - Kakariko well
|1BB85D| db $80 ; ENTRANCE 80 - Kakariko well
|1BB85E| db $81 ; ENTRANCE 81 - Back of sewers
|1BB85F| db $82 ; ENTRANCE 82 - Houlihan room

endpool

;---------------------------------------------------------------------------------------------------

GetPitEntranceDestination:
|1BB860| PHB
|1BB861| PHK
|1BB862| PLB

; Calculate map16 offset
|1BB863| REP #$31

; Y portion
|1BB865| LDA.b $20
|1BB867| AND.w #$FFF8
|1BB86A| STA.b $00

|1BB86C| SEC
|1BB86D| SBC.w $0708
|1BB870| AND.w $070A
|1BB873| ASL A
|1BB874| ASL A
|1BB875| ASL A
|1BB876| STA.b $06

; X portion
|1BB878| LDA.b $22
|1BB87A| AND.w #$FFF8
|1BB87D| LSR A
|1BB87E| LSR A
|1BB87F| LSR A
|1BB880| STA.b $02

|1BB882| SEC
|1BB883| SBC.w $070C
|1BB886| AND.w $070E
|1BB889| CLC
|1BB88A| ADC.b $06
|1BB88C| STA.b $00

;---------------------------------------------------------------------------------------------------

; Loop each entrance
|1BB88E| LDX.w #$0024

.next_entrance
; Check map16 and screen for a match
|1BB891| LDA.b $00
|1BB893| CMP.w .map16,X
|1BB896| BNE .map16mismatch

|1BB898| LDA.w $040A
|1BB89B| CMP.w .screen,X
|1BB89E| BEQ .found_entrance

.map16mismatch
|1BB8A0| DEX
|1BB8A1| DEX
|1BB8A2| BPL .next_entrance

;---------------------------------------------------------------------------------------------------

; Default to Houlihan entrance
|1BB8A4| LDX.w #$0026

; Set to light world
|1BB8A7| SEP #$20

|1BB8A9| LDA.b #$00
|1BB8AB| STA.l $7EF3CA

;---------------------------------------------------------------------------------------------------

.found_entrance
|1BB8AF| SEP #$30

|1BB8B1| TXA
|1BB8B2| LSR A
|1BB8B3| TAX

|1BB8B4| LDA.w .entrance,X
|1BB8B7| STA.w $010E
|1BB8BA| STZ.w $010F

|1BB8BD| PLB

|1BB8BE| RTL

;===================================================================================================

ValidEntranceTiles_left:
|1BB8BF| dw $00FE, $00C5, $00FE, $0114
|1BB8C7| dw $0115, $0175, $0156, $00F5
|1BB8CF| dw $00E2, $01EF, $0119, $00FE
|1BB8D7| dw $0172, $0177, $013F, $0172
|1BB8DF| dw $0112, $0161, $0172, $014C
|1BB8E7| dw $0156, $01EF, $00FE, $00FE
|1BB8EF| dw $00FE, $010B, $0173, $0143
|1BB8F7| dw $0149, $0175, $0103, $0100
|1BB8FF| dw $01CC, $015E, $0167, $0128
|1BB907| dw $0131, $0112, $016D, $0163
|1BB90F| dw $0173, $00FE, $0113, $0177

;---------------------------------------------------------------------------------------------------

ValidEntranceTiles_right:
|1BB917| dw $014A, $00C4, $014F, $0115
|1BB91F| dw $0114, $0174, $0155, $00F5
|1BB927| dw $00EE, $01EB, $0118, $0146
|1BB92F| dw $0171, $0155, $0137, $0174
|1BB937| dw $0173, $0121, $0164, $0155
|1BB93F| dw $0157, $0128, $0114, $0123
|1BB947| dw $0113, $0109, $0118, $0161
|1BB94F| dw $0149, $0117, $0174, $0101
|1BB957| dw $01CC, $0131, $0051, $014E
|1BB95F| dw $0131, $0112, $017A, $0163
|1BB967| dw $0172, $01BD, $0152, $0167

;---------------------------------------------------------------------------------------------------

OverworldEntranceScreens:
|1BB96F| dw $002C ; 0x00 - OW 2C  - Link's house
|1BB971| dw $0013 ; 0x01 - OW 13  - Sanctuary
|1BB973| dw $001B ; 0x02 - OW 1B  - Castle west wing
|1BB975| dw $001B ; 0x03 - OW 1B  - Castle lobby
|1BB977| dw $001B ; 0x04 - OW 1B  - Castle east wing
|1BB979| dw $000A ; 0x05 - OW 0A  - Old man cave west
|1BB97B| dw $0003 ; 0x06 - OW 03  - Old man cave east
|1BB97D| dw $001E ; 0x07 - OW 1E  - Eastern Palace
|1BB97F| dw $0030 ; 0x08 - OW 30  - Desert Palace lobby
|1BB981| dw $0030 ; 0x09 - OW 30  - Desert Palace east
|1BB983| dw $0030 ; 0x0A - OW 30  - Desert Palace west
|1BB985| dw $0030 ; 0x0B - OW 30  - Desert Palace back
|1BB987| dw $0018 ; 0x0C - OW 18  - Sahasrahla's house west
|1BB989| dw $0018 ; 0x0D - OW 18  - Sahasrahla's house east
|1BB98B| dw $0028 ; 0x0E - OW 28  - Angry bro west
|1BB98D| dw $0029 ; 0x0F - OW 29  - Angry bro east
|1BB98F| dw $0022 ; 0x10 - OW 22  - Magic bat
|1BB991| dw $0002 ; 0x11 - OW 02  - Lumberjack cave
|1BB993| dw $0045 ; 0x12 - OW 45  - Super bunny bottom
|1BB995| dw $0045 ; 0x13 - OW 45  - Super bunny top
|1BB997| dw $0045 ; 0x14 - OW 45  - Turtle Rock laser pots
|1BB999| dw $004A ; 0x15 - OW 4A  - Bumper cave bottom
|1BB99B| dw $004A ; 0x16 - OW 4A  - Bumper cave top
|1BB99D| dw $0045 ; 0x17 - OW 45  - Turtle Rock laser bridge
|1BB99F| dw $0045 ; 0x18 - OW 45  - Turtle Rock big chest
|1BB9A1| dw $0005 ; 0x19 - OW 05  - East Death Mountain useless bottom
|1BB9A3| dw $0005 ; 0x1A - OW 05  - East Death Mountain useless top
|1BB9A5| dw $0005 ; 0x1B - OW 05  - Spiral cave exit
|1BB9A7| dw $0005 ; 0x1C - OW 05  - Spiral cave top
|1BB9A9| dw $0005 ; 0x1D - OW 05  - Paradox cave bottom
|1BB9AB| dw $0005 ; 0x1E - OW 05  - Paradox cave middle
|1BB9AD| dw $0005 ; 0x1F - OW 05  - Paradox cave top
|1BB9AF| dw $0003 ; 0x20 - OW 03  - Kiki cave west
|1BB9B1| dw $0003 ; 0x21 - OW 03  - Kiki cave east
|1BB9B3| dw $0003 ; 0x22 - OW 03  - Spectacle rock
|1BB9B5| dw $001B ; 0x23 - OW 1B  - Agahnim's Tower
|1BB9B7| dw $007B ; 0x24 - OW 7B  - Swamp Palace
|1BB9B9| dw $005E ; 0x25 - OW 5E  - Palace of Darkness
|1BB9BB| dw $0070 ; 0x26 - OW 70  - Misery Mire
|1BB9BD| dw $0040 ; 0x27 - OW 40  - Skull Woods west
|1BB9BF| dw $0040 ; 0x28 - OW 40  - Skull Woods mummy statue
|1BB9C1| dw $0040 ; 0x29 - OW 40  - Skull Woods big chest
|1BB9C3| dw $0040 ; 0x2A - OW 40  - Skull Woods back
|1BB9C5| dw $0000 ; 0x2B - OW 00  - Lost Woods hideout
|1BB9C7| dw $0075 ; 0x2C - OW 75  - Ice Palace
|1BB9C9| dw $000A ; 0x2D - OW 0A  - Death Mountain exit west
|1BB9CB| dw $0003 ; 0x2E - OW 03  - Death Mountain exit from summit
|1BB9CD| dw $0003 ; 0x2F - OW 03  - Old man home cave west
|1BB9CF| dw $0003 ; 0x30 - OW 03  - Old man home cave east
|1BB9D1| dw $001B ; 0x31 - OW 1B  - Hyrule Castle secret entrance
|1BB9D3| dw $0003 ; 0x32 - OW 03  - Tower of Hera
|1BB9D5| dw $0058 ; 0x33 - OW 58  - Thieves' Town
|1BB9D7| dw $0047 ; 0x34 - OW 47  - Turtle Rock
|1BB9D9| dw $005B ; 0x35 - OW 5B  - Pyramid drop
|1BB9DB| dw $0043 ; 0x36 - OW 43  - Ganon's Tower
|1BB9DD| dw $0015 ; 0x37 - OW 15  - Graveyard fairy
|1BB9DF| dw $0018 ; 0x38 - OW 18  - Kakariko well
|1BB9E1| dw $0045 ; 0x39 - OW 45  - Hookshot cave bottom
|1BB9E3| dw $0045 ; 0x3A - OW 45  - Hookshot cave top
|1BB9E5| dw $0000 ; 0x3B - OW 00  - Lost Woods chest game
|1BB9E7| dw $0074 ; 0x3C - OW 74  - Swamp thief cave hideout
|1BB9E9| dw $0018 ; 0x3D - OW 18  - Eastern snitch house
|1BB9EB| dw $0018 ; 0x3E - OW 18  - Cucco easter egg
|1BB9ED| dw $0018 ; 0x3F - OW 18  - Sick kid
|1BB9EF| dw $0043 ; 0x40 - OW 43  - Spike cave
|1BB9F1| dw $0018 ; 0x41 - OW 18  - Tavern front
|1BB9F3| dw $0018 ; 0x42 - OW 18  - Tavern back
|1BB9F5| dw $0018 ; 0x43 - OW 18  - Kakariko Inn
|1BB9F7| dw $001E ; 0x44 - OW 1E  - Sahasrahla's hideout
|1BB9F9| dw $0018 ; 0x45 - OW 18  - Kakariko shop
|1BB9FB| dw $0058 ; 0x46 - OW 58  - Village of Outcasts chest game
|1BB9FD| dw $0058 ; 0x47 - OW 58  - Village of Outcasts bombable hut
|1BB9FF| dw $0029 ; 0x48 - OW 29  - Library
|1BBA01| dw $0018 ; 0x49 - OW 18  - Kakariko bombable hut
|1BBA03| dw $0018 ; 0x4A - OW 18  - Chicken hut
|1BBA05| dw $0016 ; 0x4B - OW 16  - Potion shop
|1BBA07| dw $0030 ; 0x4C - OW 30  - Aginah's cave
|1BBA09| dw $003B ; 0x4D - OW 3B  - Dam
|1BBA0B| dw $0005 ; 0x4E - OW 05  - Mimic cave
|1BBA0D| dw $0005 ; 0x4F - OW 05  - East Death Mountain fairy pond cave
|1BBA0F| dw $0032 ; 0x50 - OW 32  - Circle of bushes heart piece cave
|1BBA11| dw $0014 ; 0x51 - OW 14  - Graveyard ledge heart piece cave
|1BBA13| dw $006C ; 0x52 - OW 6C  - Bomb shop
|1BBA15| dw $0058 ; 0x53 - OW 58  - C-shaped house
|1BBA17| dw $002F ; 0x54 - OW 2F  - Southeast of Eastern Ruins fairy cave
|1BBA19| dw $0070 ; 0x55 - OW 70  - Mire big fairy
|1BBA1B| dw $0042 ; 0x56 - OW 42  - Dark World lumberjacks shop
|1BBA1D| dw $0035 ; 0x57 - OW 35  - Lake Hylia shop
|1BBA1F| dw $0069 ; 0x58 - OW 69  - Arrow game
|1BBA21| dw $0053 ; 0x59 - OW 53  - Dark World sanctuary cave
|1BBA23| dw $0014 ; 0x5A - OW 14  - King's tomb
|1BBA25| dw $000F ; 0x5B - OW 0F  - Waterfall of Wishing
|1BBA27| dw $0035 ; 0x5C - OW 35  - Pond of Happiness
|1BBA29| dw $002E ; 0x5D - OW 2E  - Big fairy (Eastern Ruins)
|1BBA2B| dw $0070 ; 0x5E - OW 70  - Mire shed
|1BBA2D| dw $0058 ; 0x5F - OW 58  - Village of Outcasts shop
|1BBA2F| dw $0018 ; 0x60 - OW 18  - Blind's hut
|1BBA31| dw $0070 ; 0x61 - OW 70  - Watto's cave
|1BBA33| dw $005B ; 0x62 - OW 5B  - Fat Fairy
|1BBA35| dw $0022 ; 0x63 - OW 22  - Smithy's house
|1BBA37| dw $0011 ; 0x64 - OW 11  - Light World fortune teller (Kakariko)
|1BBA39| dw $0051 ; 0x65 - OW 51  - Dark World fortune teller
|1BBA3B| dw $0029 ; 0x66 - OW 29  - South of Kakariko chest game
|1BBA3D| dw $005E ; 0x67 - OW 5E  - Broccoli's house
|1BBA3F| dw $006F ; 0x68 - OW 6F  - Bird hint NPC cave
|1BBA41| dw $0077 ; 0x69 - OW 77  - Hamburger Helper's cave
|1BBA43| dw $0037 ; 0x6A - OW 37  - Ice rod cave golden bee
|1BBA45| dw $0034 ; 0x6B - OW 34  - Big fairy (South of Link's house)
|1BBA47| dw $006E ; 0x6C - OW 6E  - Big fairy (South of Kiki)
|1BBA49| dw $0045 ; 0x6D - OW 45  - Dark Death Mountain shop
|1BBA4B| dw $0056 ; 0x6E - OW 56  - Dark World witch shop
|1BBA4D| dw $0043 ; 0x6F - OW 43  - Dark West Death Mountain big fairy
|1BBA4F| dw $0030 ; 0x70 - OW 30  - Aginah's cave
|1BBA51| dw $003A ; 0x71 - OW 3A  - Desert big fairy
|1BBA53| dw $0035 ; 0x72 - OW 35  - Light World fortune teller (Lake Hylia)
|1BBA55| dw $0075 ; 0x73 - OW 75  - Dark Lake Hylia shop
|1BBA57| dw $005A ; 0x74 - OW 5A  - East of Village of Outcasts shop
|1BBA59| dw $0002 ; 0x75 - OW 02  - Bumpkin residency
|1BBA5B| dw $002B ; 0x76 - OW 2B  - Link's house bonk rocks fairy pond
|1BBA5D| dw $006B ; 0x77 - OW 6B  - Bomb shop bonk rocks fairy pond
|1BBA5F| dw $003A ; 0x78 - OW 3A  - Desert thief hideout
|1BBA61| dw $0013 ; 0x79 - OW 13  - Bonk rocks heart piece cave
|1BBA63| dw $0037 ; 0x7A - OW 37  - Lake Hylia falls thief hideout
|1BBA65| dw $0077 ; 0x7B - OW 77  - Dark Lake Hylia falls spike cave
|1BBA67| dw $0035 ; 0x7C - OW 35  - Mini moldorm cave
|1BBA69| dw $0030 ; 0x7D - OW 30  - Checkerboard cave heart piece
|1BBA6B| dw $0062 ; 0x7E - OW 62  - Stake puzzle heart piece cave
|1BBA6D| dw $0037 ; 0x7F - OW 37  - Ice rod cave
|1BBA6F| dw $0077 ; 0x80 - OW 77  - Dark ice rod big fairy

;---------------------------------------------------------------------------------------------------

OverworldEntranceTileIndex:
|1BBA71| dw $0796 ; 0x00 - Link's house
|1BBA73| dw $01AA ; 0x01 - Sanctuary
|1BBA75| dw $0124 ; 0x02 - Castle west wing
|1BBA77| dw $07BE ; 0x03 - Castle lobby
|1BBA79| dw $0158 ; 0x04 - Castle east wing
|1BBA7B| dw $0634 ; 0x05 - Old man cave west
|1BBA7D| dw $178E ; 0x06 - Old man cave east
|1BBA7F| dw $016A ; 0x07 - Eastern Palace
|1BBA81| dw $05A4 ; 0x08 - Desert Palace lobby
|1BBA83| dw $0538 ; 0x09 - Desert Palace east
|1BBA85| dw $0510 ; 0x0A - Desert Palace west
|1BBA87| dw $01A4 ; 0x0B - Desert Palace back
|1BBA89| dw $054C ; 0x0C - Sahasrahla's house west
|1BBA8B| dw $0554 ; 0x0D - Sahasrahla's house east
|1BBA8D| dw $0B36 ; 0x0E - Angry bro west
|1BBA8F| dw $0B06 ; 0x0F - Angry bro east
|1BBA91| dw $06A0 ; 0x10 - Magic bat
|1BBA93| dw $03A8 ; 0x11 - Lumberjack cave
|1BBA95| dw $126E ; 0x12 - Super bunny bottom
|1BBA97| dw $07F6 ; 0x13 - Super bunny top
|1BBA99| dw $0B56 ; 0x14 - Turtle Rock laser pots
|1BBA9B| dw $0634 ; 0x15 - Bumper cave bottom
|1BBA9D| dw $0336 ; 0x16 - Bumper cave top
|1BBA9F| dw $0E62 ; 0x17 - Turtle Rock laser bridge
|1BBAA1| dw $0B6E ; 0x18 - Turtle Rock big chest
|1BBAA3| dw $1162 ; 0x19 - East Death Mountain useless bottom
|1BBAA5| dw $0E62 ; 0x1A - East Death Mountain useless top
|1BBAA7| dw $1058 ; 0x1B - Spiral cave exit
|1BBAA9| dw $0B56 ; 0x1C - Spiral cave top
|1BBAAB| dw $1274 ; 0x1D - Paradox cave bottom
|1BBAAD| dw $1B78 ; 0x1E - Paradox cave middle
|1BBAAF| dw $07F6 ; 0x1F - Paradox cave top
|1BBAB1| dw $1128 ; 0x20 - Kiki cave west
|1BBAB3| dw $1238 ; 0x21 - Kiki cave east
|1BBAB5| dw $0CB8 ; 0x22 - Spectacle rock
|1BBAB7| dw $02BE ; 0x23 - Agahnim's Tower
|1BBAB9| dw $072E ; 0x24 - Swamp Palace
|1BBABB| dw $01EA ; 0x25 - Palace of Darkness
|1BBABD| dw $06A4 ; 0x26 - Misery Mire
|1BBABF| dw $101C ; 0x27 - Skull Woods west
|1BBAC1| dw $1248 ; 0x28 - Skull Woods mummy statue
|1BBAC3| dw $12DC ; 0x29 - Skull Woods big chest
|1BBAC5| dw $0612 ; 0x2A - Skull Woods back
|1BBAC7| dw $12DC ; 0x2B - Lost Woods hideout
|1BBAC9| dw $0E56 ; 0x2C - Ice Palace
|1BBACB| dw $0336 ; 0x2D - Death Mountain exit west
|1BBACD| dw $1108 ; 0x2E - Death Mountain exit from summit
|1BBACF| dw $1DA4 ; 0x2F - Old man home cave west
|1BBAD1| dw $1450 ; 0x30 - Old man home cave east
|1BBAD3| dw $06D8 ; 0x31 - Hyrule Castle secret entrance
|1BBAD5| dw $03DE ; 0x32 - Tower of Hera
|1BBAD7| dw $0DBE ; 0x33 - Thieves' Town
|1BBAD9| dw $09A0 ; 0x34 - Turtle Rock
|1BBADB| dw $0D9C ; 0x35 - Pyramid drop
|1BBADD| dw $01DE ; 0x36 - Ganon's Tower
|1BBADF| dw $0294 ; 0x37 - Graveyard fairy
|1BBAE1| dw $0616 ; 0x38 - Kakariko well
|1BBAE3| dw $0868 ; 0x39 - Hookshot cave bottom
|1BBAE5| dw $01D8 ; 0x3A - Hookshot cave top
|1BBAE7| dw $00DE ; 0x3B - Lost Woods chest game
|1BBAE9| dw $0330 ; 0x3C - Swamp thief cave hideout
|1BBAEB| dw $0D68 ; 0x3D - Eastern snitch house
|1BBAED| dw $0B18 ; 0x3E - Cucco easter egg
|1BBAEF| dw $144E ; 0x3F - Sick kid
|1BBAF1| dw $1264 ; 0x40 - Spike cave
|1BBAF3| dw $1BD0 ; 0x41 - Tavern front
|1BBAF5| dw $18D0 ; 0x42 - Tavern back
|1BBAF7| dw $13E6 ; 0x43 - Kakariko Inn
|1BBAF9| dw $099E ; 0x44 - Sahasrahla's hideout
|1BBAFB| dw $1A36 ; 0x45 - Kakariko shop
|1BBAFD| dw $0B18 ; 0x46 - Village of Outcasts chest game
|1BBAFF| dw $1A36 ; 0x47 - Village of Outcasts bombable hut
|1BBB01| dw $038E ; 0x48 - Library
|1BBB03| dw $1B8C ; 0x49 - Kakariko bombable hut
|1BBB05| dw $14B0 ; 0x4A - Chicken hut
|1BBB07| dw $0A18 ; 0x4B - Potion shop
|1BBB09| dw $0964 ; 0x4C - Aginah's cave
|1BBB0B| dw $072E ; 0x4D - Dam
|1BBB0D| dw $0B6E ; 0x4E - Mimic cave
|1BBB0F| dw $126E ; 0x4F - East Death Mountain fairy pond cave
|1BBB11| dw $0906 ; 0x50 - Circle of bushes heart piece cave
|1BBB13| dw $02A2 ; 0x51 - Graveyard ledge heart piece cave
|1BBB15| dw $0796 ; 0x52 - Bomb shop
|1BBB17| dw $0D68 ; 0x53 - C-shaped house
|1BBB19| dw $0934 ; 0x54 - Southeast of Eastern Ruins fairy cave
|1BBB1B| dw $0636 ; 0x55 - Mire big fairy
|1BBB1D| dw $06AA ; 0x56 - Dark World lumberjacks shop
|1BBB1F| dw $01B2 ; 0x57 - Lake Hylia shop
|1BBB21| dw $092C ; 0x58 - Arrow game
|1BBB23| dw $02AA ; 0x59 - Dark World sanctuary cave
|1BBB25| dw $05B2 ; 0x5A - King's tomb
|1BBB27| dw $008C ; 0x5B - Waterfall of Wishing
|1BBB29| dw $0CD4 ; 0x5C - Pond of Happiness
|1BBB2B| dw $0224 ; 0x5D - Big fairy (Eastern Ruins)
|1BBB2D| dw $0612 ; 0x5E - Mire shed
|1BBB2F| dw $13E6 ; 0x5F - Village of Outcasts shop
|1BBB31| dw $0540 ; 0x60 - Blind's hut
|1BBB33| dw $0964 ; 0x61 - Watto's cave
|1BBB35| dw $0DAE ; 0x62 - Fat Fairy
|1BBB37| dw $039A ; 0x63 - Smithy's house
|1BBB39| dw $089E ; 0x64 - Light World fortune teller (Kakariko)
|1BBB3B| dw $089E ; 0x65 - Dark World fortune teller
|1BBB3D| dw $092C ; 0x66 - South of Kakariko chest game
|1BBB3F| dw $0FB2 ; 0x67 - Broccoli's house
|1BBB41| dw $0934 ; 0x68 - Bird hint NPC cave
|1BBB43| dw $0212 ; 0x69 - Hamburger Helper's cave
|1BBB45| dw $0212 ; 0x6A - Ice rod cave golden bee
|1BBB47| dw $0330 ; 0x6B - Big fairy (South of Link's house)
|1BBB49| dw $0224 ; 0x6C - Big fairy (South of Kiki)
|1BBB4B| dw $1274 ; 0x6D - Dark Death Mountain shop
|1BBB4D| dw $0A9A ; 0x6E - Dark World witch shop
|1BBB4F| dw $178E ; 0x6F - Dark West Death Mountain big fairy
|1BBB51| dw $0964 ; 0x70 - Aginah's cave
|1BBB53| dw $018C ; 0x71 - Desert big fairy
|1BBB55| dw $060A ; 0x72 - Light World fortune teller (Lake Hylia)
|1BBB57| dw $060A ; 0x73 - Dark Lake Hylia shop
|1BBB59| dw $0A28 ; 0x74 - East of Village of Outcasts shop
|1BBB5B| dw $072A ; 0x75 - Bumpkin residency
|1BBB5D| dw $0330 ; 0x76 - Link's house bonk rocks fairy pond
|1BBB5F| dw $0330 ; 0x77 - Bomb shop bonk rocks fairy pond
|1BBB61| dw $0A1E ; 0x78 - Desert thief hideout
|1BBB63| dw $0506 ; 0x79 - Bonk rocks heart piece cave
|1BBB65| dw $040C ; 0x7A - Lake Hylia falls thief hideout
|1BBB67| dw $040C ; 0x7B - Dark Lake Hylia falls spike cave
|1BBB69| dw $178C ; 0x7C - Mini moldorm cave
|1BBB6B| dw $0358 ; 0x7D - Checkerboard cave heart piece
|1BBB6D| dw $0D20 ; 0x7E - Stake puzzle heart piece cave
|1BBB6F| dw $0208 ; 0x7F - Ice rod cave
|1BBB71| dw $0208 ; 0x80 - Dark ice rod big fairy

;---------------------------------------------------------------------------------------------------

OverworldEntranceID:
|1BBB73| db $01 ; 0x00 - ENTRANCE 01 - Link's house
|1BBB74| db $02 ; 0x01 - ENTRANCE 02 - Sanctuary
|1BBB75| db $03 ; 0x02 - ENTRANCE 03 - Castle west wing
|1BBB76| db $04 ; 0x03 - ENTRANCE 04 - Castle lobby
|1BBB77| db $05 ; 0x04 - ENTRANCE 05 - Castle east wing
|1BBB78| db $06 ; 0x05 - ENTRANCE 06 - Old man cave west
|1BBB79| db $07 ; 0x06 - ENTRANCE 07 - Old man cave east
|1BBB7A| db $08 ; 0x07 - ENTRANCE 08 - Eastern Palace
|1BBB7B| db $09 ; 0x08 - ENTRANCE 09 - Desert Palace lobby
|1BBB7C| db $0A ; 0x09 - ENTRANCE 0A - Desert Palace east
|1BBB7D| db $0B ; 0x0A - ENTRANCE 0B - Desert Palace west
|1BBB7E| db $0C ; 0x0B - ENTRANCE 0C - Desert Palace back
|1BBB7F| db $0D ; 0x0C - ENTRANCE 0D - Sahasrahla's house west
|1BBB80| db $0E ; 0x0D - ENTRANCE 0E - Sahasrahla's house east
|1BBB81| db $0F ; 0x0E - ENTRANCE 0F - Angry bro west
|1BBB82| db $10 ; 0x0F - ENTRANCE 10 - Angry bro east
|1BBB83| db $11 ; 0x10 - ENTRANCE 11 - Magic bat
|1BBB84| db $12 ; 0x11 - ENTRANCE 12 - Lumberjack cave
|1BBB85| db $13 ; 0x12 - ENTRANCE 13 - Super bunny bottom
|1BBB86| db $14 ; 0x13 - ENTRANCE 14 - Super bunny top
|1BBB87| db $15 ; 0x14 - ENTRANCE 15 - Turtle Rock laser pots
|1BBB88| db $16 ; 0x15 - ENTRANCE 16 - Bumper cave bottom
|1BBB89| db $17 ; 0x16 - ENTRANCE 17 - Bumper cave top
|1BBB8A| db $18 ; 0x17 - ENTRANCE 18 - Turtle Rock laser bridge
|1BBB8B| db $19 ; 0x18 - ENTRANCE 19 - Turtle Rock big chest
|1BBB8C| db $1A ; 0x19 - ENTRANCE 1A - East Death Mountain useless bottom
|1BBB8D| db $1B ; 0x1A - ENTRANCE 1B - East Death Mountain useless top
|1BBB8E| db $1C ; 0x1B - ENTRANCE 1C - Spiral cave exit
|1BBB8F| db $1D ; 0x1C - ENTRANCE 1D - Spiral cave top
|1BBB90| db $1E ; 0x1D - ENTRANCE 1E - Paradox cave bottom
|1BBB91| db $1F ; 0x1E - ENTRANCE 1F - Paradox cave middle
|1BBB92| db $20 ; 0x1F - ENTRANCE 20 - Paradox cave top
|1BBB93| db $21 ; 0x20 - ENTRANCE 21 - Kiki cave west
|1BBB94| db $22 ; 0x21 - ENTRANCE 22 - Kiki cave east
|1BBB95| db $23 ; 0x22 - ENTRANCE 23 - Spectacle rock
|1BBB96| db $24 ; 0x23 - ENTRANCE 24 - Agahnim's Tower
|1BBB97| db $25 ; 0x24 - ENTRANCE 25 - Swamp Palace
|1BBB98| db $26 ; 0x25 - ENTRANCE 26 - Palace of Darkness
|1BBB99| db $27 ; 0x26 - ENTRANCE 27 - Misery Mire
|1BBB9A| db $28 ; 0x27 - ENTRANCE 28 - Skull Woods west
|1BBB9B| db $29 ; 0x28 - ENTRANCE 29 - Skull Woods mummy statue
|1BBB9C| db $2A ; 0x29 - ENTRANCE 2A - Skull Woods big chest
|1BBB9D| db $2B ; 0x2A - ENTRANCE 2B - Skull Woods back
|1BBB9E| db $2C ; 0x2B - ENTRANCE 2C - Lost Woods hideout
|1BBB9F| db $2D ; 0x2C - ENTRANCE 2D - Ice Palace
|1BBBA0| db $2E ; 0x2D - ENTRANCE 2E - Death Mountain exit west
|1BBBA1| db $2F ; 0x2E - ENTRANCE 2F - Death Mountain exit from summit
|1BBBA2| db $30 ; 0x2F - ENTRANCE 30 - Old man home cave west
|1BBBA3| db $31 ; 0x30 - ENTRANCE 31 - Old man home cave east
|1BBBA4| db $32 ; 0x31 - ENTRANCE 32 - Hyrule Castle secret entrance
|1BBBA5| db $33 ; 0x32 - ENTRANCE 33 - Tower of Hera
|1BBBA6| db $34 ; 0x33 - ENTRANCE 34 - Thieves' Town
|1BBBA7| db $35 ; 0x34 - ENTRANCE 35 - Turtle Rock
|1BBBA8| db $36 ; 0x35 - ENTRANCE 36 - Pyramid drop
|1BBBA9| db $37 ; 0x36 - ENTRANCE 37 - Ganon's Tower
|1BBBAA| db $38 ; 0x37 - ENTRANCE 38 - Graveyard fairy
|1BBBAB| db $39 ; 0x38 - ENTRANCE 39 - Kakariko well
|1BBBAC| db $3A ; 0x39 - ENTRANCE 3A - Hookshot cave bottom
|1BBBAD| db $3B ; 0x3A - ENTRANCE 3B - Hookshot cave top
|1BBBAE| db $3C ; 0x3B - ENTRANCE 3C - Lost Woods chest game
|1BBBAF| db $3D ; 0x3C - ENTRANCE 3D - Swamp thief cave hideout
|1BBBB0| db $3E ; 0x3D - ENTRANCE 3E - Eastern snitch house
|1BBBB1| db $3F ; 0x3E - ENTRANCE 3F - Cucco easter egg
|1BBBB2| db $40 ; 0x3F - ENTRANCE 40 - Sick kid
|1BBBB3| db $41 ; 0x40 - ENTRANCE 41 - Spike cave
|1BBBB4| db $42 ; 0x41 - ENTRANCE 42 - Tavern front
|1BBBB5| db $43 ; 0x42 - ENTRANCE 43 - Tavern back
|1BBBB6| db $44 ; 0x43 - ENTRANCE 44 - Kakariko Inn
|1BBBB7| db $45 ; 0x44 - ENTRANCE 45 - Sahasrahla's hideout
|1BBBB8| db $46 ; 0x45 - ENTRANCE 46 - Kakariko shop
|1BBBB9| db $47 ; 0x46 - ENTRANCE 47 - Village of Outcasts chest game
|1BBBBA| db $48 ; 0x47 - ENTRANCE 48 - Village of Outcasts bombable hut
|1BBBBB| db $49 ; 0x48 - ENTRANCE 49 - Library
|1BBBBC| db $4A ; 0x49 - ENTRANCE 4A - Kakariko bombable hut
|1BBBBD| db $4B ; 0x4A - ENTRANCE 4B - Chicken hut
|1BBBBE| db $4C ; 0x4B - ENTRANCE 4C - Potion shop
|1BBBBF| db $4D ; 0x4C - ENTRANCE 4D - Aginah's cave
|1BBBC0| db $4E ; 0x4D - ENTRANCE 4E - Dam
|1BBBC1| db $4F ; 0x4E - ENTRANCE 4F - Mimic cave
|1BBBC2| db $50 ; 0x4F - ENTRANCE 50 - East Death Mountain fairy pond cave
|1BBBC3| db $51 ; 0x50 - ENTRANCE 51 - Circle of bushes heart piece cave
|1BBBC4| db $52 ; 0x51 - ENTRANCE 52 - Graveyard ledge heart piece cave
|1BBBC5| db $53 ; 0x52 - ENTRANCE 53 - Bomb shop
|1BBBC6| db $54 ; 0x53 - ENTRANCE 54 - C-shaped house
|1BBBC7| db $55 ; 0x54 - ENTRANCE 55 - Southeast of Eastern Ruins fairy cave
|1BBBC8| db $5E ; 0x55 - ENTRANCE 5E - Mire big fairy
|1BBBC9| db $60 ; 0x56 - ENTRANCE 60 - Dark World lumberjacks shop
|1BBBCA| db $58 ; 0x57 - ENTRANCE 58 - Lake Hylia shop
|1BBBCB| db $59 ; 0x58 - ENTRANCE 59 - Arrow game
|1BBBCC| db $5A ; 0x59 - ENTRANCE 5A - Dark World sanctuary cave
|1BBBCD| db $5B ; 0x5A - ENTRANCE 5B - King's tomb
|1BBBCE| db $5C ; 0x5B - ENTRANCE 5C - Waterfall of Wishing
|1BBBCF| db $5D ; 0x5C - ENTRANCE 5D - Pond of Happiness
|1BBBD0| db $5E ; 0x5D - ENTRANCE 5E - Big fairy (Eastern Ruins)
|1BBBD1| db $5F ; 0x5E - ENTRANCE 5F - Mire shed
|1BBBD2| db $60 ; 0x5F - ENTRANCE 60 - Village of Outcasts shop
|1BBBD3| db $61 ; 0x60 - ENTRANCE 61 - Blind's hut
|1BBBD4| db $62 ; 0x61 - ENTRANCE 62 - Watto's cave
|1BBBD5| db $63 ; 0x62 - ENTRANCE 63 - Fat Fairy
|1BBBD6| db $64 ; 0x63 - ENTRANCE 64 - Smithy's house
|1BBBD7| db $65 ; 0x64 - ENTRANCE 65 - Light World fortune teller (Kakariko)
|1BBBD8| db $66 ; 0x65 - ENTRANCE 66 - Dark World fortune teller
|1BBBD9| db $67 ; 0x66 - ENTRANCE 67 - South of Kakariko chest game
|1BBBDA| db $68 ; 0x67 - ENTRANCE 68 - Broccoli's house
|1BBBDB| db $69 ; 0x68 - ENTRANCE 69 - Bird hint NPC cave
|1BBBDC| db $6A ; 0x69 - ENTRANCE 6A - Hamburger Helper's cave
|1BBBDD| db $56 ; 0x6A - ENTRANCE 56 - Ice rod cave golden bee
|1BBBDE| db $5E ; 0x6B - ENTRANCE 5E - Big fairy (South of Link's house)
|1BBBDF| db $5E ; 0x6C - ENTRANCE 5E - Big fairy (South of Kiki)
|1BBBE0| db $58 ; 0x6D - ENTRANCE 58 - Dark Death Mountain shop
|1BBBE1| db $60 ; 0x6E - ENTRANCE 60 - Dark World witch shop
|1BBBE2| db $5E ; 0x6F - ENTRANCE 5E - Dark West Death Mountain big fairy
|1BBBE3| db $4D ; 0x70 - ENTRANCE 4D - Aginah's cave
|1BBBE4| db $5E ; 0x71 - ENTRANCE 5E - Desert big fairy
|1BBBE5| db $65 ; 0x72 - ENTRANCE 65 - Light World fortune teller (Lake Hylia)
|1BBBE6| db $60 ; 0x73 - ENTRANCE 60 - Dark Lake Hylia shop
|1BBBE7| db $57 ; 0x74 - ENTRANCE 57 - East of Village of Outcasts shop
|1BBBE8| db $6B ; 0x75 - ENTRANCE 6B - Bumpkin residency
|1BBBE9| db $71 ; 0x76 - ENTRANCE 71 - Link's house bonk rocks fairy pond
|1BBBEA| db $71 ; 0x77 - ENTRANCE 71 - Bomb shop bonk rocks fairy pond
|1BBBEB| db $6D ; 0x78 - ENTRANCE 6D - Desert thief hideout
|1BBBEC| db $6E ; 0x79 - ENTRANCE 6E - Bonk rocks heart piece cave
|1BBBED| db $6F ; 0x7A - ENTRANCE 6F - Lake Hylia falls thief hideout
|1BBBEE| db $70 ; 0x7B - ENTRANCE 70 - Dark Lake Hylia falls spike cave
|1BBBEF| db $6C ; 0x7C - ENTRANCE 6C - Mini moldorm cave
|1BBBF0| db $72 ; 0x7D - ENTRANCE 72 - Checkerboard cave heart piece
|1BBBF1| db $83 ; 0x7E - ENTRANCE 83 - Stake puzzle heart piece cave
|1BBBF2| db $84 ; 0x7F - ENTRANCE 84 - Ice rod cave
|1BBBF3| db $5E ; 0x80 - ENTRANCE 5E - Dark ice rod big fairy

;===================================================================================================

UseOverworldEntrance:
; Get map16 coordinate
|1BBBF4| REP #$31

; Y portion
|1BBBF6| LDA.b $20
|1BBBF8| CLC
|1BBBF9| ADC.w #$0007
|1BBBFC| STA.b $00

|1BBBFE| SEC
|1BBBFF| SBC.w $0708
|1BBC02| AND.w $070A
|1BBC05| ASL A
|1BBC06| ASL A
|1BBC07| ASL A
|1BBC08| STA.b $06

|1BBC0A| LDA.b $22
|1BBC0C| LSR A
|1BBC0D| LSR A
|1BBC0E| LSR A
|1BBC0F| STA.b $02

|1BBC11| SEC
|1BBC12| SBC.w $070C
|1BBC15| AND.w $070E
|1BBC18| CLC
|1BBC19| ADC.b $06

|1BBC1B| TAY
|1BBC1C| TAX

; Get the tile type
|1BBC1D| LDA.l $7E2000,X
|1BBC21| ASL A
|1BBC22| ASL A
|1BBC23| ASL A
|1BBC24| TAX

|1BBC25| LDA.b $2F
|1BBC27| AND.w #$00FF
|1BBC2A| BNE .not_facing_up

|1BBC2C| LDA.l Map16Definitions+2,X
|1BBC30| AND.w #$41FF
|1BBC33| CMP.w #$00E9
|1BBC36| BEQ .open_door

|1BBC38| CMP.w #$0149 ; sanc door
|1BBC3B| BEQ .left_side_big_door

|1BBC3D| CMP.w #$0169 ; castle door
|1BBC40| BEQ .left_side_big_door

|1BBC42| TYX

|1BBC43| LDA.l $7E2002,X
|1BBC47| ASL A
|1BBC48| ASL A
|1BBC49| ASL A
|1BBC4A| TAX

|1BBC4B| LDA.l Map16Definitions+0,X
|1BBC4F| AND.w #$41FF
|1BBC52| CMP.w #$4149 ; sanc door
|1BBC55| BEQ .right_side_big_door

|1BBC57| CMP.w #$4169 ; castle door
|1BBC5A| BEQ .right_side_big_door

|1BBC5C| CMP.w #$40E9 ; wooden door
|1BBC5F| BNE .check_door_type

|1BBC61| DEY
|1BBC62| DEY

.open_door
|1BBC63| TYX

|1BBC64| LDA.w #$0D9E ; MAP16.0D9E
|1BBC67| JSL DrawPersistentMap16

|1BBC6B| LDA.w #$0DA0 ; MAP16.0DA0
|1BBC6E| STA.l $7E2002,X

|1BBC72| LDY.w #$0002
|1BBC75| JSL DrawMap16Anywhere

|1BBC79| SEP #$30

|1BBC7B| LDA.b #$15 ; SFX3.15
|1BBC7D| STA.w $012F

|1BBC80| LDA.b #$01
|1BBC82| STA.b $14

|1BBC84| RTL

;---------------------------------------------------------------------------------------------------

.not_facing_up
|1BBC85| BRA .check_door_type

.right_side_big_door
|1BBC87| DEY
|1BBC88| DEY

.left_side_big_door
|1BBC89| STZ.w $0692

|1BBC8C| AND.w #$03FF
|1BBC8F| CMP.w #$0169 ; castle door
|1BBC92| BNE .not_castle_door

; can't open castle doors after aga is defeated
|1BBC94| LDA.l $7EF3C5
|1BBC98| AND.w #$000F
|1BBC9B| CMP.w #$0003
|1BBC9E| BCS .check_door_type

|1BBCA0| LDA.w #$0018
|1BBCA3| STA.w $0692

.not_castle_door
|1BBCA6| TYA
|1BBCA7| SEC
|1BBCA8| SBC.w #$0080
|1BBCAB| STA.w $0698

|1BBCAE| SEP #$20

|1BBCB0| LDA.b #$15 ; SFX3.15
|1BBCB2| STA.w $012F

|1BBCB5| STZ.b $B0
|1BBCB7| STZ.w $0690

|1BBCBA| LDA.b #$0C
|1BBCBC| STA.b $11

|1BBCBE| SEP #$30

|1BBCC0| RTL

;---------------------------------------------------------------------------------------------------

.check_door_type
|1BBCC1| LDA.l Map16Definitions+4,X
|1BBCC5| AND.w #$01FF
|1BBCC8| STA.b $00

|1BBCCA| LDA.l Map16Definitions+6,X
|1BBCCE| AND.w #$01FF
|1BBCD1| STA.b $02

|1BBCD3| LDX.w #$0056 ; [HARDCODED] size

.check_next
|1BBCD6| LDA.b $00
|1BBCD8| CMP.l ValidEntranceTiles_left,X
|1BBCDC| BNE .left_fail

|1BBCDE| LDA.b $02
|1BBCE0| CMP.l ValidEntranceTiles_right,X
|1BBCE4| BEQ FindEntrance

.left_fail
|1BBCE6| DEX
|1BBCE7| DEX
|1BBCE8| BPL .check_next

|1BBCEA| STZ.w $04B8

.message_received
|1BBCED| SEP #$30

|1BBCEF| RTL

;---------------------------------------------------------------------------------------------------

#ForbidEntry:
|1BBCF0| LDA.w $04B8
|1BBCF3| BNE .message_received

|1BBCF5| INC.w $04B8

|1BBCF8| LDA.w #$0005 ; MESSAGE 0005
|1BBCFB| STA.w $1CF0

|1BBCFE| SEP #$30

|1BBD00| JML PrepAndDisplayMessage

;===================================================================================================

; Check for a valid entrance now
FindEntrance:
|1BBD04| TYA
|1BBD05| STA.b $00

|1BBD07| LDX.w #$0102

.next_check
|1BBD0A| LDA.b $00

.tile_fail
|1BBD0C| DEX
|1BBD0D| DEX
|1BBD0E| BMI .no_entrance_found

|1BBD10| CMP.l OverworldEntranceTileIndex,X
|1BBD14| BNE .tile_fail

|1BBD16| LDA.w $040A
|1BBD19| CMP.l OverworldEntranceScreens,X
|1BBD1D| BNE .next_check

|1BBD1F| LDA.l $7EF3D3
|1BBD23| AND.w #$00FF
|1BBD26| BNE .entry_allowed

|1BBD28| LDA.w $02DA
|1BBD2B| AND.w #$00FF
|1BBD2E| CMP.w #$0001
|1BBD31| BEQ ForbidEntry

;---------------------------------------------------------------------------------------------------

; Which followers are allowed in entrances?
|1BBD33| LDA.l $7EF3CC
|1BBD37| AND.w #$00FF
|1BBD3A| BEQ .entry_allowed

; Zelda telepathy - allowed
|1BBD3C| CMP.w #$0005 ; FOLLOWER 05
|1BBD3F| BEQ .entry_allowed

; Telepathy - allowed
|1BBD41| CMP.w #$000E ; FOLLOWER 0E
|1BBD44| BEQ .entry_allowed

; Zelda - allowed
|1BBD46| CMP.w #$0001 ; FOLLOWER 01
|1BBD49| BEQ .entry_allowed

; Frog - single entrance only
|1BBD4B| CMP.w #$0007 ; FOLLOWER 07
|1BBD4E| BEQ .check_single_entrance

; Dwarf - single entrance only
|1BBD50| CMP.w #$0008 ; FOLLOWER 08

; All other followers are BANNED
|1BBD53| BNE ForbidEntry

.check_single_entrance
|1BBD55| CPX.w #$0076
|1BBD58| BCC ForbidEntry

;---------------------------------------------------------------------------------------------------

.entry_allowed
|1BBD5A| TXA
|1BBD5B| LSR A
|1BBD5C| TAX

|1BBD5D| SEP #$20

|1BBD5F| LDA.l OverworldEntranceID,X
|1BBD63| STA.w $010E

|1BBD66| STZ.b $4D
|1BBD68| STZ.b $46

|1BBD6A| LDA.b #$0F
|1BBD6C| STA.b $10

|1BBD6E| LDA.b #$06
|1BBD70| STA.w $010C

|1BBD73| STZ.b $11
|1BBD75| STZ.b $B0

.no_entrance_found
|1BBD77| SEP #$30

|1BBD79| RTL

;===================================================================================================

HandleItemTileAction:
|1BBD7A| LDA.b $1B
|1BBD7C| BEQ HandleItemTileAction_Overworld

|1BBD7E| JML HandleItemTileAction_Underworld

;===================================================================================================

HandleItemTileAction_Overworld:
|1BBD82| REP #$30

|1BBD84| STZ.w $04B2
|1BBD87| STZ.b $76

|1BBD89| LDA.b $00
|1BBD8B| SEC
|1BBD8C| SBC.w $0708
|1BBD8F| AND.w $070A
|1BBD92| ASL A
|1BBD93| ASL A
|1BBD94| ASL A
|1BBD95| STA.b $06

|1BBD97| LDA.b $02
|1BBD99| SEC
|1BBD9A| SBC.w $070C
|1BBD9D| AND.w $070E
|1BBDA0| CLC
|1BBDA1| ADC.b $06
|1BBDA3| TAX

|1BBDA4| LDA.w $0301
|1BBDA7| AND.w #$0002
|1BBDAA| BNE .hammer

|1BBDAC| LDA.w $0301
|1BBDAF| AND.w #$0040
|1BBDB2| BEQ .not_powder

.powder
|1BBDB4| LDA.l $7E2000,X
|1BBDB8| PHA

|1BBDB9| LDY.w #$0002
|1BBDBC| CMP.w #$0036 ; MAP16.0036 : Bush
|1BBDBF| BEQ .is_bush

|1BBDC1| LDY.w #$0004
|1BBDC4| CMP.w #$0727 ; MAP16.0727 : Dark bush
|1BBDC7| BNE .not_bush

.is_bush
|1BBDC9| JMP.w OverworldTileAction_Bush

.hammer
|1BBDCC| LDA.l $7E2000,X
|1BBDD0| PHA

|1BBDD1| CMP.w #$021B ; MAP16.021B : Hammer peg
|1BBDD4| BNE .not_peg

|1BBDD6| SEP #$20

|1BBDD8| LDA.b #$11 ; SFX2.11
|1BBDDA| STA.w $012E

|1BBDDD| REP #$20

|1BBDDF| JSL HandlePegPuzzles

|1BBDE3| LDA.w #$0DC5 ; MAP16.0DC5 : Flattened hammer peg
|1BBDE6| JMP.w OverworldTileAction_Bush.no_secret

.not_peg
|1BBDE9| JSR PickHammerSFX

.not_bush
|1BBDEC| JMP.w EXIT_1BBF1A

;---------------------------------------------------------------------------------------------------

.not_powder
|1BBDEF| LDA.l $7E2000,X
|1BBDF3| PHA

|1BBDF4| CMP.w #$0034 ; MAP16.0034 : Grass
|1BBDF7| BEQ OverworldTileAction_Diggable

|1BBDF9| CMP.w #$0071 ; MAP16.0071 : Grass with tufts ▀
|1BBDFC| BEQ OverworldTileAction_Diggable

|1BBDFE| CMP.w #$0035 ; MAP16.0035 : Grass with tufts ▄
|1BBE01| BEQ OverworldTileAction_Diggable

|1BBE03| CMP.w #$010D ; MAP16.010D : Grass with tufts ▟
|1BBE06| BEQ OverworldTileAction_Diggable

|1BBE08| CMP.w #$010F ; MAP16.010F : Grass with tufts ▙
|1BBE0B| BEQ OverworldTileAction_Diggable

|1BBE0D| CMP.w #$00E1 ; MAP16.00E1 : Grass with tufts ▞ and flowers ▚
|1BBE10| BEQ OverworldTileAction_Diggable

|1BBE12| CMP.w #$00E2 ; MAP16.00E2 : Grass with tufts ▄ and flower ▘
|1BBE15| BEQ OverworldTileAction_Diggable

|1BBE17| CMP.w #$00DA ; MAP16.00DA : Grass with tufts █
|1BBE1A| BEQ OverworldTileAction_Diggable

|1BBE1C| CMP.w #$00F8 ; MAP16.00F8 : Grass with tufts ▜
|1BBE1F| BEQ OverworldTileAction_Diggable

|1BBE21| CMP.w #$010E ; MAP16.010E : Grass with tufts ▛
|1BBE24| BEQ OverworldTileAction_Diggable

|1BBE26| CMP.w #$037D ; MAP16.037D : Tall grass ▗
|1BBE29| BEQ .tall_grass

|1BBE2B| LDY.w #$0002
|1BBE2E| CMP.w #$0036 ; MAP16.0036 : Bush
|1BBE31| BEQ OverworldTileAction_Bush

|1BBE33| LDY.w #$0004
|1BBE36| CMP.w #$0727 ; MAP16.0727 : Dark bush
|1BBE39| BEQ OverworldTileAction_Bush

.not_digging
|1BBE3B| JMP.w EXIT_1BBF1A

;---------------------------------------------------------------------------------------------------

#OverworldTileAction_Diggable:
|1BBE3E| LDA.w $037A
|1BBE41| AND.w #$00FF
|1BBE44| CMP.w #$0001
|1BBE47| BNE .not_digging

; Are we in the haunted grove?
|1BBE49| LDA.b $8A
|1BBE4B| CMP.w #$002A ; OW 2A
|1BBE4E| BNE .not_flute_spot

; Are we on the correct tile?
|1BBE50| CPX.w #$0492
|1BBE53| BNE .not_flute_spot

|1BBE55| STX.w $04B2

.not_flute_spot
|1BBE58| LDY.w #$0DC3 ; MAP16.0DC3 : Shovel hole
|1BBE5B| BRA OverworldTileAction_RevealSecret

.tall_grass ; TODO verify
|1BBE5D| LDA.w $037A
|1BBE60| AND.w #$00FF
|1BBE63| CMP.w #$0001
|1BBE66| BNE .not_digging_carry_on

|1BBE68| JMP.w EXIT_1BBF1A

.not_digging_carry_on
|1BBE6B| LDA.b $02
|1BBE6D| ASL A
|1BBE6E| ASL A
|1BBE6F| ASL A
|1BBE70| SEC
|1BBE71| SBC.w #$0008
|1BBE74| PHA

|1BBE75| LDA.b $00
|1BBE77| SEC
|1BBE78| SBC.w #$0008
|1BBE7B| AND.w #$FFF8
|1BBE7E| STA.b $74

; Why even push?
|1BBE80| PLA
|1BBE81| STA.b $72

|1BBE83| LDA.w #$0003
|1BBE86| STA.b $76

|1BBE88| LDY.w #$0DBF ; MAP16.0DBF : Cut grass
|1BBE8B| BRA OverworldTileAction_RevealSecret

;===================================================================================================

OverworldTileAction_Bush:
|1BBE8D| LDA.w $037A
|1BBE90| AND.w #$00FF
|1BBE93| CMP.w #$0001
|1BBE96| BEQ .digging

|1BBE98| LDA.b $02
|1BBE9A| AND.w #$FFFE
|1BBE9D| ASL A
|1BBE9E| ASL A
|1BBE9F| ASL A
|1BBEA0| PHA

|1BBEA1| LDA.b $00
|1BBEA3| AND.w #$FFF0
|1BBEA6| STA.b $74

; Again, why even push and pull?
|1BBEA8| PLA
|1BBEA9| STA.b $72

|1BBEAB| STY.b $76

|1BBEAD| PLA ; LDA 1,S bro
|1BBEAE| PHA

|1BBEAF| LDY.w #$0DC1 ; MAP16.0DC1 : Bush stump
|1BBEB2| CMP.w #$0727 ; MAP16.0727 : Dark bush
|1BBEB5| BNE OverworldTileAction_RevealSecret

|1BBEB7| LDY.w #$0DC2 ; MAP16.0DC2 : Dark bush stump

;---------------------------------------------------------------------------------------------------

#OverworldTileAction_RevealSecret:
|1BBEBA| STY.b $0E

|1BBEBC| JSR RevealOverworldSecret
|1BBEBF| BCS .no_secret

|1BBEC1| LDA.b $0E

.no_secret
|1BBEC3| STA.l $7E2000,X

|1BBEC7| JSL MemorizeMap16Change
|1BBECB| JSL DrawMap16

|1BBECF| SEP #$20

|1BBED1| LDA.b #$01
|1BBED3| STA.b $14

|1BBED5| REP #$20

|1BBED7| PLA

|1BBED8| BRA .continue_continue

;---------------------------------------------------------------------------------------------------

.digging
|1BBEDA| PLA
|1BBEDB| LDA.l $7E2000,X

.continue_continue
|1BBEDF| ASL A
|1BBEE0| ASL A
|1BBEE1| STA.b $06

|1BBEE3| LDA.b $00
|1BBEE5| AND.w #$0008
|1BBEE8| LSR A
|1BBEE9| LSR A
|1BBEEA| TSB.b $06

|1BBEEC| LDA.b $02
|1BBEEE| AND.w #$0001
|1BBEF1| ORA.b $06
|1BBEF3| ASL A
|1BBEF4| TAX

|1BBEF5| LDA.l Map16Definitions+0,X
|1BBEF9| AND.w #$01FF
|1BBEFC| TAX

|1BBEFD| LDA.l OverworldTileTypes,X
|1BBF01| PHA

|1BBF02| LDA.b $72
|1BBF04| STA.b $00

|1BBF06| LDA.b $74
|1BBF08| STA.b $02

|1BBF0A| SEP #$30

|1BBF0C| LDA.b $76
|1BBF0E| BEQ .no_poof

|1BBF10| JSL SpawnImmediatelySmashedTerrain
|1BBF14| JSL AncillaAdd_BushPoof

.no_poof
|1BBF18| REP #$30

;---------------------------------------------------------------------------------------------------

#EXIT_1BBF1A:
|1BBF1A| PLA

|1BBF1B| SEP #$30

|1BBF1D| RTL

;===================================================================================================
; Picks from a selection of hammer SFX to use.
;===================================================================================================
PickHammerSFX:
|1BBF1E| ASL A
|1BBF1F| ASL A
|1BBF20| ASL A
|1BBF21| TAX

|1BBF22| LDA.l Map16Definitions+0,X
|1BBF26| AND.w #$01FF
|1BBF29| TAX

|1BBF2A| LDA.l OverworldTileTypes,X

|1BBF2E| SEP #$30

|1BBF30| CMP.b #$50
|1BBF32| BCC .no_sfx

|1BBF34| LDY.b #$1A ; SFX2.1A
|1BBF36| CMP.b #$52
|1BBF38| BCC .play_sfx

|1BBF3A| LDY.b #$11 ; SFX2.11
|1BBF3C| CMP.b #$54
|1BBF3E| BEQ .play_sfx

|1BBF40| LDY.b #$05 ; SFX2.05
|1BBF42| CMP.b #$58
|1BBF44| BCS .no_sfx

.play_sfx
|1BBF46| STY.w $012E

.no_sfx
|1BBF49| REP #$30

|1BBF4B| RTS

;===================================================================================================

RockSmashReplaceOffset:
.tile1
|1BBF4C| dw    0 ; from top left
|1BBF4E| dw   -2 ; from top right
|1BBF50| dw -128 ; from bottom left
|1BBF52| dw -130 ; from bottom right

.tile2
|1BBF54| dw    0 ; from top left
|1BBF56| dw    0 ; from top right
|1BBF58| dw -128 ; from bottom left
|1BBF5A| dw -128 ; from bottom right

.tile3
|1BBF5C| dw    0 ; from top left
|1BBF5E| dw   -2 ; from top right
|1BBF60| dw    0 ; from bottom left
|1BBF62| dw   -2 ; from bottom right

;===================================================================================================

GetLinkMap16Coords:
|1BBF64| LDA.b $2F
|1BBF66| AND.w #$00FF
|1BBF69| TAX

|1BBF6A| LDA.b $20
|1BBF6C| CLC
|1BBF6D| ADC.l LiftableCheckOffset_Y,X
|1BBF71| AND.w #$FFF0
|1BBF74| STA.b $00

|1BBF76| SEC
|1BBF77| SBC.w $0708
|1BBF7A| AND.w $070A
|1BBF7D| ASL A
|1BBF7E| ASL A
|1BBF7F| ASL A
|1BBF80| STA.b $06

|1BBF82| LDA.b $22
|1BBF84| CLC
|1BBF85| ADC.l LiftableCheckOffset_X,X
|1BBF89| AND.w #$FFF0
|1BBF8C| STA.b $02

|1BBF8E| LSR A
|1BBF8F| LSR A
|1BBF90| LSR A
|1BBF91| SEC
|1BBF92| SBC.w $070C
|1BBF95| AND.w $070E
|1BBF98| CLC
|1BBF99| ADC.b $06

|1BBF9B| TAX

|1BBF9C| RTS

;===================================================================================================

HandleOverworldLiftables:
|1BBF9D| REP #$30

|1BBF9F| JSR GetLinkMap16Coords

|1BBFA2| LDA.b $00
|1BBFA4| PHA

|1BBFA5| LDA.b $02
|1BBFA7| PHA

|1BBFA8| LDA.l $7E2000,X

|1BBFAC| LDY.w #$0000
|1BBFAF| CMP.w #$036C ; MAP16.036C : Large light rock top left
|1BBFB2| BEQ .large_rock

|1BBFB4| INY
|1BBFB5| CMP.w #$036D ; MAP16.036D : Large light rock top right
|1BBFB8| BEQ .large_rock

|1BBFBA| INY
|1BBFBB| CMP.w #$0373 ; MAP16.0373 : Large light rock bottom left
|1BBFBE| BEQ .large_rock

|1BBFC0| INY
|1BBFC1| CMP.w #$0374 ; MAP16.0374 : Large light rock bottom right
|1BBFC4| BEQ .large_rock

|1BBFC6| LDY.w #$0000
|1BBFC9| CMP.w #$023B ; MAP16.023B : Large dark rock top left
|1BBFCC| BEQ .large_rock

|1BBFCE| INY
|1BBFCF| CMP.w #$023C ; MAP16.023C : Large dark rock top right
|1BBFD2| BEQ .large_rock

|1BBFD4| INY
|1BBFD5| CMP.w #$023D ; MAP16.023D : Large dark rock bottom left
|1BBFD8| BEQ .large_rock

|1BBFDA| CMP.w #$023E ; MAP16.023E : Large dark rock bottom right
|1BBFDD| BNE .not_large_rock

|1BBFDF| INY

.large_rock
|1BBFE0| JMP.w SmashRockPile_from_lift

;---------------------------------------------------------------------------------------------------

.not_large_rock
|1BBFE3| LDY.w #$0DC1 ; MAP16.0DC1 : Bush stump
|1BBFE6| CMP.w #$0036 ; MAP16.0036 : Bush
|1BBFE9| BEQ .small_object

|1BBFEB| LDY.w #$0DC2 ; MAP16.0DC2 : Dark bush stump
|1BBFEE| CMP.w #$0727 ; MAP16.0727 : Dark bush
|1BBFF1| BEQ .small_object

|1BBFF3| LDY.w #$0DC4 ; MAP16.0DC4 : Rock imprint
|1BBFF6| CMP.w #$020F ; MAP16.020F : Light rock
|1BBFF9| BEQ .small_object

|1BBFFB| CMP.w #$0239 ; MAP16.0239 : Dark rock
|1BBFFE| BEQ .small_object

|1BC000| CMP.w #$0101 ; MAP16.0101 : Sign post
|1BC003| BNE .not_small_object

|1BC005| LDY.w #$0DC0 ; MAP16.0DC0 : Sign post hole

.small_object
|1BC008| STY.b $0E

|1BC00A| PHA

|1BC00B| JSR RevealOverworldSecret
|1BC00E| BCS .no_secret

|1BC010| LDA.b $0E

.no_secret
|1BC012| STA.l $7E2000,X

|1BC016| JSL MemorizeMap16Change
|1BC01A| JSL DrawMap16

|1BC01E| SEP #$20

|1BC020| LDA.b #$01
|1BC022| STA.b $14

;===================================================================================================

#Overworld_GetLiftableTileType:
|1BC024| REP #$30

|1BC026| PLA

;---------------------------------------------------------------------------------------------------

.not_small_object
|1BC027| ASL A
|1BC028| ASL A
|1BC029| STA.b $06

|1BC02B| LDA.b $02
|1BC02D| AND.w #$0008
|1BC030| LSR A
|1BC031| LSR A
|1BC032| TSB.b $06 ; TODO figure out what these TSBs are for

|1BC034| LDA.b $00
|1BC036| LSR A
|1BC037| LSR A
|1BC038| LSR A
|1BC039| AND.w #$0001
|1BC03C| ORA.b $06

|1BC03E| ASL A
|1BC03F| TAX

|1BC040| LDA.l Map16Definitions+0,X
|1BC044| AND.w #$01FF
|1BC047| TAX

|1BC048| PLA
|1BC049| STA.b $00

|1BC04B| PLA
|1BC04C| STA.b $02

|1BC04E| LDA.l OverworldTileTypes,X

|1BC052| SEP #$31

|1BC054| RTL

;---------------------------------------------------------------------------------------------------

#SmashRockPile:
|1BC055| LDY.w #$0DC1 ; MAP16.0DC1 : Bush stump
|1BC058| CMP.w #$0036 ; MAP16.0036 : Bush
|1BC05B| BEQ .small_object

|1BC05D| PLA
|1BC05E| PLA

|1BC05F| SEP #$30
|1BC061| CLC

|1BC062| RTL

;===================================================================================================

SmashRockPileFromAbove:
|1BC063| REP #$30

|1BC065| LDA.b $20
|1BC067| PHA

|1BC068| CLC
|1BC069| ADC.w #$0008
|1BC06C| STA.b $20

|1BC06E| JSR GetLinkMap16Coords

|1BC071| PLA
|1BC072| STA.b $20

|1BC074| BRA .continue

;===================================================================================================

#SmashRockPileFromHere:
|1BC076| REP #$30

|1BC078| JSR GetLinkMap16Coords

.continue
|1BC07B| LDA.b $00
|1BC07D| PHA

; A poem:
;   No PEI
;   Makes me cry
|1BC07E| LDA.b $02
|1BC080| PHA

|1BC081| LDA.l $7E2000,X
|1BC085| LDY.w #$0000
|1BC088| CMP.w #$0226 ; MAP16.0226 : Bonk rocks top left
|1BC08B| BEQ .rock_pile

|1BC08D| INY
|1BC08E| CMP.w #$0227 ; MAP16.0227 : Bonk rocks top right
|1BC091| BEQ .rock_pile

|1BC093| INY
|1BC094| CMP.w #$0228 ; MAP16.0228 : Bonk rocks bottom left
|1BC097| BEQ .rock_pile

|1BC099| CMP.w #$0229 ; MAP16.0229 : Bonk rocks bottom right
|1BC09C| BNE SmashRockPile

|1BC09E| INY

.rock_pile

;===================================================================================================

#SmashRockPile_from_lift:
|1BC09F| STY.b $0C

|1BC0A1| PHA

|1BC0A2| ASL.b $0C

|1BC0A4| TXA
|1BC0A5| CLC
|1BC0A6| LDX.b $0C

|1BC0A8| ADC.l RockSmashReplaceOffset.tile1,X
|1BC0AC| STA.w $0698

|1BC0AF| TAX

|1BC0B0| LDA.w #$0028
|1BC0B3| STA.w $0692

|1BC0B6| STZ.b $0E

|1BC0B8| JSR RevealOverworldSecret

|1BC0BB| LDA.b $0E
|1BC0BD| CMP.w #$FFFF
|1BC0C0| BNE .no_secret

;---------------------------------------------------------------------------------------------------

|1BC0C2| SEP #$20

|1BC0C4| LDX.b $8A

|1BC0C6| LDA.l $7EF280,X
|1BC0CA| ORA.b #$20
|1BC0CC| STA.l $7EF280,X

|1BC0D0| LDA.b #$1B ; SFX3.1B
|1BC0D2| STA.w $012F

|1BC0D5| REP #$20

|1BC0D7| LDA.w #$0050
|1BC0DA| STA.w $0692

;---------------------------------------------------------------------------------------------------

.no_secret
|1BC0DD| LDX.b $0C

|1BC0DF| LDA.b $00
|1BC0E1| CLC
|1BC0E2| ADC.l RockSmashReplaceOffset.tile2,X
|1BC0E6| STA.b $00

|1BC0E8| LDA.b $02
|1BC0EA| CLC
|1BC0EB| ADC.l RockSmashReplaceOffset.tile3,X
|1BC0EF| STA.b $02

|1BC0F1| JSL BigMap16Update_long

|1BC0F5| JMP.w Overworld_GetLiftableTileType

;===================================================================================================

FindBombableOverworldThings:
|1BC0F8| REP #$30

|1BC0FA| STZ.b $0E
|1BC0FC| STZ.b $08

|1BC0FE| LDA.w #$0003
|1BC101| STA.b $C8

|1BC103| LDA.b $00
|1BC105| SEC
|1BC106| SBC.w #$0014
|1BC109| AND.w #$FFF8
|1BC10C| STA.w $0488

|1BC10F| LDA.b $02
|1BC111| SEC
|1BC112| SBC.w #$0017
|1BC115| AND.w #$FFF8
|1BC118| STA.w $0486

;---------------------------------------------------------------------------------------------------

.next_row
|1BC11B| LDA.w $0488
|1BC11E| SEC
|1BC11F| SBC.w $0708
|1BC122| AND.w $070A
|1BC125| ASL A
|1BC126| ASL A
|1BC127| ASL A
|1BC128| STA.b $CA

|1BC12A| LDA.w $0486
|1BC12D| JSR BombOverworldTiles

|1BC130| LDA.w $0486
|1BC133| CLC
|1BC134| ADC.w #$0010
|1BC137| JSR BombOverworldTiles

|1BC13A| LDA.w $0486
|1BC13D| CLC
|1BC13E| ADC.w #$0020
|1BC141| JSR BombOverworldTiles

|1BC144| LDA.w $0488
|1BC147| CLC
|1BC148| ADC.w #$0010
|1BC14B| STA.w $0488

|1BC14E| DEC.b $C8
|1BC150| BNE .next_row

;---------------------------------------------------------------------------------------------------

|1BC152| SEP #$30

|1BC154| RTL

;===================================================================================================

BombOverworldTiles:
|1BC155| PHA

|1BC156| LSR A
|1BC157| LSR A
|1BC158| LSR A
|1BC159| SEC
|1BC15A| SBC.w $070C
|1BC15D| AND.w $070E
|1BC160| CLC
|1BC161| ADC.b $CA
|1BC163| TAX

|1BC164| STX.b $04

;---------------------------------------------------------------------------------------------------

|1BC166| LDA.l $7EF3CC
|1BC16A| AND.w #$00FF
|1BC16D| CMP.w #$000D ; FOLLOWER 0D
|1BC170| BEQ .check_for_cave

|1BC172| LDA.l $7E2000,X

|1BC176| LDY.w #$0DC1 ; MAP16.0DC1 : Bush stump
|1BC179| LDX.w #$0002

|1BC17C| CMP.w #$0036 ; MAP16.0036 : Bush
|1BC17F| BEQ .greenery

|1BC181| LDX.w #$0004
|1BC184| LDY.w #$0DC2 ; MAP16.0DC2 : Dark bush stump

|1BC187| CMP.w #$0727 ; MAP16.0727 : Dark bush
|1BC18A| BEQ .greenery

|1BC18C| CMP.w #$037D ; MAP16.037D : Tall grass ▗
|1BC18F| BNE .check_for_cave

|1BC191| LDY.w #$0DBF ; MAP16.0DBF : Cut grass
|1BC194| LDX.w #$0003

.greenery
|1BC197| STX.b $0A
|1BC199| STY.b $0E

|1BC19B| LDX.b $04

|1BC19D| JSR RevealOverworldSecret
|1BC1A0| BCS .no_secret

|1BC1A2| LDA.b $0E

;---------------------------------------------------------------------------------------------------

.no_secret
|1BC1A4| STA.l $7E2000,X
|1BC1A8| JSL MemorizeMap16Change

|1BC1AC| LDY.w #$0000
|1BC1AF| JSL DrawMap16Anywhere

|1BC1B3| PLA
|1BC1B4| AND.w #$FFF8
|1BC1B7| STA.b $00

|1BC1B9| LDA.w $0488
|1BC1BC| AND.w #$FFF8
|1BC1BF| STA.b $02

|1BC1C1| LDA.b $08
|1BC1C3| PHA

|1BC1C4| SEP #$30

|1BC1C6| LDA.b $0A
|1BC1C8| JSL SpawnImmediatelySmashedTerrain

|1BC1CC| LDA.b #$01
|1BC1CE| STA.b $14

|1BC1D0| REP #$30

|1BC1D2| PLA
|1BC1D3| STA.b $08

|1BC1D5| RTS

;---------------------------------------------------------------------------------------------------

.check_for_cave
|1BC1D6| LDX.b $04
|1BC1D8| JSR RevealOverworldSecret

|1BC1DB| LDA.b $0E
|1BC1DD| CMP.w #$0DAE ; MAP16.0DAE : Bomb hole bottom left
|1BC1E0| BEQ .bomb_the_cave

|1BC1E2| PLA

|1BC1E3| RTS

;---------------------------------------------------------------------------------------------------

.bomb_the_cave
|1BC1E4| STA.l $7E2000,X
|1BC1E8| JSL MemorizeMap16Change

|1BC1EC| LDY.w #$0000
|1BC1EF| JSL DrawMap16Anywhere

|1BC1F3| LDA.w #$0DAF ; MAP16.0DAF : Bomb hole bottom right
|1BC1F6| STA.l $7E2002,X
|1BC1FA| JSL MemorizeMap16Change

|1BC1FE| LDY.w #$0002
|1BC201| JSL DrawMap16Anywhere

|1BC205| STZ.b $0E

|1BC207| SEP #$20

|1BC209| LDA.b #$01
|1BC20B| STA.b $14

|1BC20D| LDX.b $8A

|1BC20F| LDA.l $7EF280,X
|1BC213| ORA.b #$02
|1BC215| STA.l $7EF280,X

|1BC219| REP #$30

|1BC21B| PLA

|1BC21C| RTS

;===================================================================================================

AlterWeathervane:
|1BC21D| REP #$30

|1BC21F| LDA.w #$0068
|1BC222| STA.w $0692

|1BC225| LDA.w #$0C3E
|1BC228| STA.w $0698

|1BC22B| JSL BigMap16Update_long

|1BC22F| REP #$30

|1BC231| LDX.w #$0C42
|1BC234| LDA.w #$0E1B ; MAP16.0E1B : Gray path stones
|1BC237| STA.l $7E2000,X

|1BC23B| LDY.w #$0000
|1BC23E| JSL DrawMap16Anywhere

|1BC242| LDX.w #$0CC0
|1BC245| LDA.w #$0E1F ; MAP16.0E1F : Weathervane top right
|1BC248| STA.l $7E2002,X

|1BC24C| LDY.w #$0002
|1BC24F| JSL DrawMap16Anywhere

|1BC253| SEP #$30

; Kakariko overlay
|1BC255| LDA.l $7EF298
|1BC259| ORA.b #$20
|1BC25B| STA.l $7EF298

|1BC25F| LDA.b #$01
|1BC261| STA.b $14

|1BC263| RTL

;===================================================================================================

OpenGargoylesDomain:
|1BC264| REP #$30

|1BC266| LDX.w #$0D3E
|1BC269| LDA.w #$0E15 ; MAP16.0E15 : Gargoyle statue left hand
|1BC26C| JSL DrawPersistentMap16

|1BC270| LDX.w #$0D40
|1BC273| LDA.w #$0E16 ; MAP16.0E16 : Gargoyle statue right hand
|1BC276| JSR UpdateMapWithStripes

|1BC279| LDX.w #$0DBE
|1BC27C| JSR UpdateMapWithStripes
|1BC27F| JSR UpdateMapWithStripes

|1BC282| LDX.w #$0E3E
|1BC285| JSR UpdateMapWithStripes
|1BC288| JSR UpdateMapWithStripes

|1BC28B| LDA.w #$FFFF
|1BC28E| STA.w $1012,Y

|1BC291| SEP #$30

; Village of Outcast overlay
|1BC293| LDA.l $7EF2D8
|1BC297| ORA.b #$20
|1BC299| STA.l $7EF2D8

|1BC29D| LDA.b #$1B ; SFX3.1B
|1BC29F| STA.w $012F

|1BC2A2| LDA.b #$01
|1BC2A4| STA.b $14

|1BC2A6| RTL

;===================================================================================================

CreatePyramidHole:
|1BC2A7| REP #$30

|1BC2A9| LDX.w #$03BC
|1BC2AC| LDA.w #$0E39 ; MAP16.0E39
|1BC2AF| JSL DrawPersistentMap16

|1BC2B3| LDX.w #$03BE
|1BC2B6| LDA.w #$0E3A ; MAP16.0E3A
|1BC2B9| JSR UpdateMapWithStripes
|1BC2BC| JSR UpdateMapWithStripes

|1BC2BF| LDX.w #$043C
|1BC2C2| JSR UpdateMapWithStripes
|1BC2C5| JSR UpdateMapWithStripes
|1BC2C8| JSR UpdateMapWithStripes

|1BC2CB| LDX.w #$04BC
|1BC2CE| JSR UpdateMapWithStripes
|1BC2D1| JSR UpdateMapWithStripes
|1BC2D4| JSR UpdateMapWithStripes

|1BC2D7| LDA.w #$FFFF
|1BC2DA| STA.w $1012,Y

|1BC2DD| LDA.w #$3515 ; plays 2 at once SFX1.15 / SFX2.35
|1BC2E0| STA.w $012D

|1BC2E3| SEP #$30

|1BC2E5| LDA.l $7EF2DB
|1BC2E9| ORA.b #$20
|1BC2EB| STA.l $7EF2DB

|1BC2EF| LDA.b #$03 ; SFX3.03
|1BC2F1| STA.w $012F

|1BC2F4| LDA.b #$01
|1BC2F6| STA.b $14

|1BC2F8| RTL

;===================================================================================================

OverworldData_HiddenItems:

;---------------------------------------------------------------------------------------------------
; Light World
;---------------------------------------------------------------------------------------------------
|1BC2F9| dw OverworldData_HiddenItems_Screen_00 ; 0x00 - Lost Woods
|1BC2FB| dw OverworldData_HiddenItems_Screen_00 ; 0x01 - Lost Woods
|1BC2FD| dw OverworldData_HiddenItems_Screen_02 ; 0x02 - Lumberjacks
|1BC2FF| dw OverworldData_HiddenItems_Screen_03 ; 0x03 - West Death Mountain
|1BC301| dw OverworldData_HiddenItems_Screen_03 ; 0x04 - West Death Mountain
|1BC303| dw OverworldData_HiddenItems_Screen_05 ; 0x05 - East Death Mountain
|1BC305| dw OverworldData_HiddenItems_Screen_05 ; 0x06 - East Death Mountain
|1BC307| dw OverworldData_HiddenItems_Screen_07 ; 0x07 - Turtle Rock Portalway
|1BC309| dw OverworldData_HiddenItems_Screen_00 ; 0x08 - Lost Woods
|1BC30B| dw OverworldData_HiddenItems_Screen_00 ; 0x09 - Lost Woods
|1BC30D| dw OverworldData_HiddenItems_Screen_0A ; 0x0A - Death Mountain Foot
|1BC30F| dw OverworldData_HiddenItems_Screen_03 ; 0x0B - West Death Mountain
|1BC311| dw OverworldData_HiddenItems_Screen_03 ; 0x0C - West Death Mountain
|1BC313| dw OverworldData_HiddenItems_Screen_05 ; 0x0D - East Death Mountain
|1BC315| dw OverworldData_HiddenItems_Screen_05 ; 0x0E - East Death Mountain
|1BC317| dw OverworldData_HiddenItems_Screen_0F ; 0x0F - Waterfall of Wishing
|1BC319| dw OverworldData_HiddenItems_Screen_10 ; 0x10 - Lost Woods Alcove
|1BC31B| dw OverworldData_HiddenItems_Screen_11 ; 0x11 - North of Kakariko
|1BC31D| dw OverworldData_HiddenItems_Screen_12 ; 0x12 - Northwest Pond
|1BC31F| dw OverworldData_HiddenItems_Screen_13 ; 0x13 - Sanctuary
|1BC321| dw OverworldData_HiddenItems_Screen_14 ; 0x14 - Graveyard
|1BC323| dw OverworldData_HiddenItems_Screen_15 ; 0x15 - Hylia River Bend
|1BC325| dw OverworldData_HiddenItems_Screen_16 ; 0x16 - Potion Shop
|1BC327| dw OverworldData_HiddenItems_Screen_17 ; 0x17 - Octorok Pit
|1BC329| dw OverworldData_HiddenItems_Screen_18 ; 0x18 - Kakariko Village
|1BC32B| dw OverworldData_HiddenItems_Screen_18 ; 0x19 - Kakariko Village
|1BC32D| dw OverworldData_HiddenItems_Screen_1A ; 0x1A - Kakariko Orchard
|1BC32F| dw OverworldData_HiddenItems_Screen_1B ; 0x1B - Hyrule Castle
|1BC331| dw OverworldData_HiddenItems_Screen_1B ; 0x1C - Hyrule Castle
|1BC333| dw OverworldData_HiddenItems_Screen_1D ; 0x1D - Hylia River Peninsula
|1BC335| dw OverworldData_HiddenItems_Screen_1E ; 0x1E - Eastern Ruins
|1BC337| dw OverworldData_HiddenItems_Screen_1E ; 0x1F - Eastern Ruins
|1BC339| dw OverworldData_HiddenItems_Screen_18 ; 0x20 - Kakariko Village
|1BC33B| dw OverworldData_HiddenItems_Screen_18 ; 0x21 - Kakariko Village
|1BC33D| dw OverworldData_HiddenItems_Screen_22 ; 0x22 - Smith's House
|1BC33F| dw OverworldData_HiddenItems_Screen_1B ; 0x23 - Hyrule Castle
|1BC341| dw OverworldData_HiddenItems_Screen_1B ; 0x24 - Hyrule Castle
|1BC343| dw OverworldData_HiddenItems_Screen_25 ; 0x25 - Boulder Field
|1BC345| dw OverworldData_HiddenItems_Screen_1E ; 0x26 - Eastern Ruins
|1BC347| dw OverworldData_HiddenItems_Screen_1E ; 0x27 - Eastern Ruins
|1BC349| dw OverworldData_HiddenItems_Screen_28 ; 0x28 - Racing Game
|1BC34B| dw OverworldData_HiddenItems_Screen_29 ; 0x29 - South of Kakariko
|1BC34D| dw OverworldData_HiddenItems_Screen_2A ; 0x2A - Haunted Grove
|1BC34F| dw OverworldData_HiddenItems_Screen_2B ; 0x2B - West of Link's House
|1BC351| dw OverworldData_HiddenItems_Screen_2C ; 0x2C - Link's House
|1BC353| dw OverworldData_HiddenItems_Screen_2D ; 0x2D - Eastern Bridge
|1BC355| dw OverworldData_HiddenItems_Screen_2E ; 0x2E - Lake Hylia River Bend
|1BC357| dw OverworldData_HiddenItems_Screen_2F ; 0x2F - Eastern Portalway
|1BC359| dw OverworldData_HiddenItems_Screen_30 ; 0x30 - Desert
|1BC35B| dw OverworldData_HiddenItems_Screen_30 ; 0x31 - Desert
|1BC35D| dw OverworldData_HiddenItems_Screen_32 ; 0x32 - Haunted Grove Entrance
|1BC35F| dw OverworldData_HiddenItems_Screen_33 ; 0x33 - Marshlands Portalway
|1BC361| dw OverworldData_HiddenItems_Screen_34 ; 0x34 - Marshlands Totems
|1BC363| dw OverworldData_HiddenItems_Screen_35 ; 0x35 - Lake Hylia
|1BC365| dw OverworldData_HiddenItems_Screen_35 ; 0x36 - Lake Hylia
|1BC367| dw OverworldData_HiddenItems_Screen_37 ; 0x37 - Lake Hylia River End
|1BC369| dw OverworldData_HiddenItems_Screen_30 ; 0x38 - Desert
|1BC36B| dw OverworldData_HiddenItems_Screen_30 ; 0x39 - Desert
|1BC36D| dw OverworldData_HiddenItems_Screen_3A ; 0x3A - Desert Pass
|1BC36F| dw OverworldData_HiddenItems_Screen_3B ; 0x3B - Marshlands Dam Entrance
|1BC371| dw OverworldData_HiddenItems_Screen_3C ; 0x3C - Marshlands Ravine
|1BC373| dw OverworldData_HiddenItems_Screen_35 ; 0x3D - Lake Hylia
|1BC375| dw OverworldData_HiddenItems_Screen_35 ; 0x3E - Lake Hylia
|1BC377| dw OverworldData_HiddenItems_Screen_3F ; 0x3F - Lake Hylia Waterfall

;---------------------------------------------------------------------------------------------------
; Dark World
;---------------------------------------------------------------------------------------------------
|1BC379| dw OverworldData_HiddenItems_Screen_40 ; 0x40 - Skull Woods
|1BC37B| dw OverworldData_HiddenItems_Screen_40 ; 0x41 - Skull Woods
|1BC37D| dw OverworldData_HiddenItems_Screen_42 ; 0x42 - Dark Lumberjacks
|1BC37F| dw OverworldData_HiddenItems_Screen_43 ; 0x43 - West Dark Death Mountain
|1BC381| dw OverworldData_HiddenItems_Screen_43 ; 0x44 - West Dark Death Mountain
|1BC383| dw OverworldData_HiddenItems_Screen_45 ; 0x45 - East Dark Death Mountain
|1BC385| dw OverworldData_HiddenItems_Screen_45 ; 0x46 - East Dark Death Mountain
|1BC387| dw OverworldData_HiddenItems_Screen_47 ; 0x47 - Turtle Rock
|1BC389| dw OverworldData_HiddenItems_Screen_40 ; 0x48 - Skull Woods
|1BC38B| dw OverworldData_HiddenItems_Screen_40 ; 0x49 - Skull Woods
|1BC38D| dw OverworldData_HiddenItems_Screen_4A ; 0x4A - Bumper Ledge
|1BC38F| dw OverworldData_HiddenItems_Screen_43 ; 0x4B - West Dark Death Mountain
|1BC391| dw OverworldData_HiddenItems_Screen_43 ; 0x4C - West Dark Death Mountain
|1BC393| dw OverworldData_HiddenItems_Screen_45 ; 0x4D - East Dark Death Mountain
|1BC395| dw OverworldData_HiddenItems_Screen_45 ; 0x4E - East Dark Death Mountain
|1BC397| dw OverworldData_HiddenItems_Screen_4F ; 0x4F - Lake of Ill Omen
|1BC399| dw OverworldData_HiddenItems_Screen_50 ; 0x50 - Skull Woods Alcove
|1BC39B| dw OverworldData_HiddenItems_Screen_51 ; 0x51 - North of Outcasts
|1BC39D| dw OverworldData_HiddenItems_Screen_52 ; 0x52 - Dark Northwest Pond
|1BC39F| dw OverworldData_HiddenItems_Screen_53 ; 0x53 - Dark Sanctuary
|1BC3A1| dw OverworldData_HiddenItems_Screen_54 ; 0x54 - Dark Graveyard
|1BC3A3| dw OverworldData_HiddenItems_Screen_55 ; 0x55 - Dark Hylia River Bend
|1BC3A5| dw OverworldData_HiddenItems_Screen_56 ; 0x56 - Dark Northeast Shop
|1BC3A7| dw OverworldData_HiddenItems_Screen_57 ; 0x57 - Dark Octorok Pit
|1BC3A9| dw OverworldData_HiddenItems_Screen_58 ; 0x58 - Village of Outcasts
|1BC3AB| dw OverworldData_HiddenItems_Screen_58 ; 0x59 - Village of Outcasts
|1BC3AD| dw OverworldData_HiddenItems_Screen_5A ; 0x5A - Outcasts Orchard
|1BC3AF| dw OverworldData_HiddenItems_Screen_5B ; 0x5B - Pyramid of Power
|1BC3B1| dw OverworldData_HiddenItems_Screen_5B ; 0x5C - Pyramid of Power
|1BC3B3| dw OverworldData_HiddenItems_Screen_5D ; 0x5D - Dark Hylia River Peninsula
|1BC3B5| dw OverworldData_HiddenItems_Screen_5E ; 0x5E - Palace of Darkness Maze
|1BC3B7| dw OverworldData_HiddenItems_Screen_5E ; 0x5F - Palace of Darkness Maze
|1BC3B9| dw OverworldData_HiddenItems_Screen_58 ; 0x60 - Village of Outcasts
|1BC3BB| dw OverworldData_HiddenItems_Screen_58 ; 0x61 - Village of Outcasts
|1BC3BD| dw OverworldData_HiddenItems_Screen_62 ; 0x62 - Stake Puzzle
|1BC3BF| dw OverworldData_HiddenItems_Screen_5B ; 0x63 - Pyramid of Power
|1BC3C1| dw OverworldData_HiddenItems_Screen_5B ; 0x64 - Pyramid of Power
|1BC3C3| dw OverworldData_HiddenItems_Screen_65 ; 0x65 - Boulder Field
|1BC3C5| dw OverworldData_HiddenItems_Screen_5E ; 0x66 - Palace of Darkness Maze
|1BC3C7| dw OverworldData_HiddenItems_Screen_5E ; 0x67 - Palace of Darkness Maze
|1BC3C9| dw OverworldData_HiddenItems_Screen_68 ; 0x68 - Digging Game
|1BC3CB| dw OverworldData_HiddenItems_Screen_69 ; 0x69 - South of Outcasts
|1BC3CD| dw OverworldData_HiddenItems_Screen_6A ; 0x6A - Stumpy Grove
|1BC3CF| dw OverworldData_HiddenItems_Screen_6B ; 0x6B - West of Bomb Shop
|1BC3D1| dw OverworldData_HiddenItems_Screen_6C ; 0x6C - Bomb Shop
|1BC3D3| dw OverworldData_HiddenItems_Screen_6D ; 0x6D - Hammer Bridge
|1BC3D5| dw OverworldData_HiddenItems_Screen_6E ; 0x6E - Dark Lake Hylia River Bend
|1BC3D7| dw OverworldData_HiddenItems_Screen_6F ; 0x6F - East Dark World Portalway
|1BC3D9| dw OverworldData_HiddenItems_Screen_70 ; 0x70 - Misery Mire
|1BC3DB| dw OverworldData_HiddenItems_Screen_70 ; 0x71 - Misery Mire
|1BC3DD| dw OverworldData_HiddenItems_Screen_72 ; 0x72 - Stumpy Grove Entrance
|1BC3DF| dw OverworldData_HiddenItems_Screen_73 ; 0x73 - Swamplands Portalway
|1BC3E1| dw OverworldData_HiddenItems_Screen_74 ; 0x74 - Swamplands Totems
|1BC3E3| dw OverworldData_HiddenItems_Screen_75 ; 0x75 - Dark Lake Hylia
|1BC3E5| dw OverworldData_HiddenItems_Screen_75 ; 0x76 - Dark Lake Hylia
|1BC3E7| dw OverworldData_HiddenItems_Screen_77 ; 0x77 - Dark Lake Hylia River End
|1BC3E9| dw OverworldData_HiddenItems_Screen_70 ; 0x78 - Misery Mire
|1BC3EB| dw OverworldData_HiddenItems_Screen_70 ; 0x79 - Misery Mire
|1BC3ED| dw OverworldData_HiddenItems_Screen_7A ; 0x7A - West of Swamplands
|1BC3EF| dw OverworldData_HiddenItems_Screen_7B ; 0x7B - Swamplands Palace Entrance
|1BC3F1| dw OverworldData_HiddenItems_Screen_7C ; 0x7C - Swamplands Ravine
|1BC3F3| dw OverworldData_HiddenItems_Screen_75 ; 0x7D - Dark Lake Hylia
|1BC3F5| dw OverworldData_HiddenItems_Screen_75 ; 0x7E - Dark Lake Hylia
|1BC3F7| dw OverworldData_HiddenItems_Screen_7F ; 0x7F - Dark Lake Hylia Waterfall

;===================================================================================================

; Lost Woods
OverworldData_HiddenItems_Screen_00:
|1BC3F9| dw $036A : db $04 ; Random pack  xy:{ 0x350, 0x060 }
|1BC3FC| dw $1914 : db $04 ; Random pack  xy:{ 0x0A0, 0x320 }
|1BC3FF| dw $10E0 : db $80 ; Hole         xy:{ 0x300, 0x200 }
|1BC402| dw $1AD0 : db $01 ; Green rupee  xy:{ 0x280, 0x340 }
|1BC405| dw $FFFF

;===================================================================================================

; Lumberjacks
OverworldData_HiddenItems_Screen_02:
|1BC407| dw $04AE : db $01 ; Green rupee  xy:{ 0x170, 0x080 }
|1BC40A| dw $0D16 : db $03 ; Bee          xy:{ 0x0B0, 0x1A0 }
|1BC40D| dw $0DA4 : db $01 ; Green rupee  xy:{ 0x120, 0x1A0 }
|1BC410| dw $0EA0 : db $01 ; Green rupee  xy:{ 0x100, 0x1C0 }
|1BC413| dw $FFFF

;===================================================================================================

; West Death Mountain
OverworldData_HiddenItems_Screen_03:
|1BC415| dw $186A : db $05 ; Bomb         xy:{ 0x350, 0x300 }
|1BC418| dw $1872 : db $05 ; Bomb         xy:{ 0x390, 0x300 }
|1BC41B| dw $196E : db $04 ; Random pack  xy:{ 0x370, 0x320 }
|1BC41E| dw $1A6A : db $05 ; Bomb         xy:{ 0x350, 0x340 }
|1BC421| dw $1A72 : db $05 ; Bomb         xy:{ 0x390, 0x340 }
|1BC424| dw $FFFF

;===================================================================================================

; East Death Mountain
OverworldData_HiddenItems_Screen_05:
|1BC426| dw $1D4A : db $82 ; Warp         xy:{ 0x250, 0x3A0 }

;===================================================================================================

; Death Mountain peg puzzle
OverworldData_HiddenItems_Screen_07:
|1BC429| dw $FFFF

;===================================================================================================

; Death Mountain foot
OverworldData_HiddenItems_Screen_0A:
|1BC42B| dw $0730 : db $02 ; Hoarder      xy:{ 0x180, 0x0E0 }
|1BC42E| dw $FFFF

;===================================================================================================

; Waterfall of Wishing
OverworldData_HiddenItems_Screen_0F:
|1BC430| dw $0618 : db $06 ; Heart        xy:{ 0x0C0, 0x0C0 }
|1BC433| dw $FFFF

;===================================================================================================

; Lost Woods grotto
OverworldData_HiddenItems_Screen_10:
|1BC435| dw $0B28 : db $04 ; Random pack  xy:{ 0x140, 0x160 }
|1BC438| dw $0B2E : db $82 ; Warp         xy:{ 0x170, 0x160 }
|1BC43B| dw $FFFF

;===================================================================================================

; Kakariko fortune teller
OverworldData_HiddenItems_Screen_11:
|1BC43D| dw $0A34 : db $05 ; Bomb         xy:{ 0x1A0, 0x140 }
|1BC440| dw $0D8E : db $06 ; Heart        xy:{ 0x070, 0x1A0 }
|1BC443| dw $FFFF

;===================================================================================================

; Northwest Pond
OverworldData_HiddenItems_Screen_12:
|1BC445| dw $0530 : db $06 ; Heart        xy:{ 0x180, 0x0A0 }
|1BC448| dw $0808 : db $04 ; Random pack  xy:{ 0x040, 0x100 }
|1BC44B| dw $09B2 : db $06 ; Heart        xy:{ 0x190, 0x120 }
|1BC44E| dw $FFFF

;===================================================================================================

; Sanctuary
OverworldData_HiddenItems_Screen_13:
|1BC450| dw $0506 : db $84 ; Staircase    xy:{ 0x030, 0x0A0 }
|1BC453| dw $07A0 : db $03 ; Bee          xy:{ 0x100, 0x0E0 }
|1BC456| dw $0834 : db $04 ; Random pack  xy:{ 0x1A0, 0x100 }
|1BC459| dw $08A8 : db $04 ; Random pack  xy:{ 0x140, 0x100 }
|1BC45C| dw $09A2 : db $06 ; Heart        xy:{ 0x110, 0x120 }
|1BC45F| dw $09B6 : db $04 ; Random pack  xy:{ 0x1B0, 0x120 }
|1BC462| dw $FFFF

;===================================================================================================

; Graveyard
OverworldData_HiddenItems_Screen_14:
|1BC464| dw $0490 : db $01 ; Green rupee  xy:{ 0x080, 0x080 }
|1BC467| dw $0492 : db $01 ; Green rupee  xy:{ 0x090, 0x080 }
|1BC46A| dw $071C : db $03 ; Bee          xy:{ 0x0E0, 0x0E0 }
|1BC46D| dw $07B8 : db $04 ; Random pack  xy:{ 0x1C0, 0x0E0 }
|1BC470| dw $0A08 : db $04 ; Random pack  xy:{ 0x040, 0x140 }
|1BC473| dw $0A8C : db $03 ; Bee          xy:{ 0x060, 0x140 }
|1BC476| dw $FFFF

;===================================================================================================

; Hylia River Bend
OverworldData_HiddenItems_Screen_15:
|1BC478| dw $0390 : db $05 ; Bomb         xy:{ 0x080, 0x060 }
|1BC47B| dw $0788 : db $80 ; Hole         xy:{ 0x040, 0x0E0 }
|1BC47E| dw $FFFF

;===================================================================================================

; Potion Shop
OverworldData_HiddenItems_Screen_16:
|1BC480| dw $079C : db $01 ; Green rupee  xy:{ 0x0E0, 0x0E0 }
|1BC483| dw $0826 : db $03 ; Bee          xy:{ 0x130, 0x100 }
|1BC486| dw $0928 : db $04 ; Random pack  xy:{ 0x140, 0x120 }
|1BC489| dw $09A8 : db $04 ; Random pack  xy:{ 0x140, 0x120 }
|1BC48C| dw $FFFF

;===================================================================================================

; Octorok Pit
OverworldData_HiddenItems_Screen_17:
|1BC48E| dw $0E1C : db $06 ; Heart        xy:{ 0x0E0, 0x1C0 }
|1BC491| dw $FFFF

;===================================================================================================

; Kakariko Village
OverworldData_HiddenItems_Screen_18:
|1BC493| dw $0AF8 : db $04 ; Random pack  xy:{ 0x3C0, 0x140 }
|1BC496| dw $0AFA : db $05 ; Bomb         xy:{ 0x3D0, 0x140 }
|1BC499| dw $0EEE : db $01 ; Green rupee  xy:{ 0x370, 0x1C0 }
|1BC49C| dw $1112 : db $03 ; Bee          xy:{ 0x090, 0x220 }
|1BC49F| dw $111E : db $04 ; Random pack  xy:{ 0x0F0, 0x220 }
|1BC4A2| dw $1216 : db $01 ; Green rupee  xy:{ 0x0B0, 0x240 }
|1BC4A5| dw $12A0 : db $01 ; Green rupee  xy:{ 0x100, 0x240 }
|1BC4A8| dw $1392 : db $01 ; Green rupee  xy:{ 0x090, 0x260 }
|1BC4AB| dw $139E : db $01 ; Green rupee  xy:{ 0x0F0, 0x260 }
|1BC4AE| dw $1A18 : db $04 ; Random pack  xy:{ 0x0C0, 0x340 }
|1BC4B1| dw $1A96 : db $04 ; Random pack  xy:{ 0x0B0, 0x340 }
|1BC4B4| dw $1A9A : db $05 ; Bomb         xy:{ 0x0D0, 0x340 }
|1BC4B7| dw $1B14 : db $04 ; Random pack  xy:{ 0x0A0, 0x360 }
|1BC4BA| dw $1C0C : db $86 ; Bomb door    xy:{ 0x060, 0x380 }
|1BC4BD| dw $1CB2 : db $03 ; Bee          xy:{ 0x190, 0x380 }
|1BC4C0| dw $156A : db $06 ; Heart        xy:{ 0x350, 0x2A0 }
|1BC4C3| dw $15E2 : db $04 ; Random pack  xy:{ 0x310, 0x2A0 }
|1BC4C6| dw $15EE : db $04 ; Random pack  xy:{ 0x370, 0x2A0 }
|1BC4C9| dw $FFFF

;===================================================================================================

; Kakariko Orchard
OverworldData_HiddenItems_Screen_1A:
|1BC4CB| dw $04AA : db $03 ; Bee          xy:{ 0x150, 0x080 }
|1BC4CE| dw $0A98 : db $05 ; Bomb         xy:{ 0x0C0, 0x140 }
|1BC4D1| dw $0DAA : db $04 ; Random pack  xy:{ 0x150, 0x1A0 }
|1BC4D4| dw $FFFF

;===================================================================================================

; Hyrule Castle
OverworldData_HiddenItems_Screen_1B:
|1BC4D6| dw $028C : db $01 ; Green rupee  xy:{ 0x060, 0x040 }
|1BC4D9| dw $040C : db $04 ; Random pack  xy:{ 0x060, 0x080 }
|1BC4DC| dw $040E : db $04 ; Random pack  xy:{ 0x070, 0x080 }
|1BC4DF| dw $0724 : db $03 ; Bee          xy:{ 0x120, 0x0E0 }
|1BC4E2| dw $02EC : db $04 ; Random pack  xy:{ 0x360, 0x040 }
|1BC4E5| dw $0570 : db $80 ; Hole         xy:{ 0x380, 0x0A0 }
|1BC4E8| dw $065C : db $06 ; Heart        xy:{ 0x2E0, 0x0C0 }
|1BC4EB| dw $08F0 : db $01 ; Green rupee  xy:{ 0x380, 0x100 }
|1BC4EE| dw $09EC : db $06 ; Heart        xy:{ 0x360, 0x120 }
|1BC4F1| dw $0E4A : db $01 ; Green rupee  xy:{ 0x250, 0x1C0 }
|1BC4F4| dw $0ED8 : db $01 ; Green rupee  xy:{ 0x2C0, 0x1C0 }
|1BC4F7| dw $0F5A : db $01 ; Green rupee  xy:{ 0x2D0, 0x1E0 }
|1BC4FA| dw $0FD8 : db $01 ; Green rupee  xy:{ 0x2C0, 0x1E0 }
|1BC4FD| dw $10B4 : db $03 ; Bee          xy:{ 0x1A0, 0x200 }
|1BC500| dw $169C : db $04 ; Random pack  xy:{ 0x0E0, 0x2C0 }
|1BC503| dw $16A0 : db $01 ; Green rupee  xy:{ 0x100, 0x2C0 }
|1BC506| dw $16A2 : db $01 ; Green rupee  xy:{ 0x110, 0x2C0 }
|1BC509| dw $1C88 : db $01 ; Green rupee  xy:{ 0x040, 0x380 }
|1BC50C| dw $1D92 : db $04 ; Random pack  xy:{ 0x090, 0x3A0 }
|1BC50F| dw $10D4 : db $01 ; Green rupee  xy:{ 0x2A0, 0x200 }
|1BC512| dw $1554 : db $01 ; Green rupee  xy:{ 0x2A0, 0x2A0 }
|1BC515| dw $15DA : db $01 ; Green rupee  xy:{ 0x2D0, 0x2A0 }
|1BC518| dw $15DE : db $01 ; Green rupee  xy:{ 0x2F0, 0x2A0 }
|1BC51B| dw $1652 : db $01 ; Green rupee  xy:{ 0x290, 0x2C0 }
|1BC51E| dw $1666 : db $01 ; Green rupee  xy:{ 0x330, 0x2C0 }
|1BC521| dw $1D70 : db $05 ; Bomb         xy:{ 0x380, 0x3A0 }
|1BC524| dw $1DDA : db $04 ; Random pack  xy:{ 0x2D0, 0x3A0 }
|1BC527| dw $1DE0 : db $06 ; Heart        xy:{ 0x300, 0x3A0 }
|1BC52A| dw $FFFF

;===================================================================================================

; Hylia River Peninsula
OverworldData_HiddenItems_Screen_1D:
|1BC52C| dw $0230 : db $01 ; Green rupee  xy:{ 0x180, 0x040 }
|1BC52F| dw $0234 : db $05 ; Bomb         xy:{ 0x1A0, 0x040 }

;===================================================================================================

; Eastern Ruins
OverworldData_HiddenItems_Screen_1E:
|1BC532| dw $FFFF

;===================================================================================================

; Smith's House
OverworldData_HiddenItems_Screen_22:
|1BC534| dw $0428 : db $05 ; Bomb         xy:{ 0x140, 0x080 }
|1BC537| dw $0B0E : db $01 ; Green rupee  xy:{ 0x070, 0x160 }
|1BC53A| dw $0B10 : db $01 ; Green rupee  xy:{ 0x080, 0x160 }
|1BC53D| dw $0B16 : db $01 ; Green rupee  xy:{ 0x0B0, 0x160 }
|1BC540| dw $0C16 : db $04 ; Random pack  xy:{ 0x0B0, 0x180 }
|1BC543| dw $FFFF

;===================================================================================================

; Boulder Field
OverworldData_HiddenItems_Screen_25:
|1BC545| dw $0908 : db $06 ; Heart        xy:{ 0x040, 0x120 }
|1BC548| dw $FFFF

;===================================================================================================

; Racing Game
OverworldData_HiddenItems_Screen_28:
|1BC54A| dw $072A : db $04 ; Random pack  xy:{ 0x150, 0x0E0 }
|1BC54D| dw $FFFF

;===================================================================================================

; South of Kakariko
OverworldData_HiddenItems_Screen_29:
|1BC54F| dw $0308 : db $01 ; Green rupee  xy:{ 0x040, 0x060 }
|1BC552| dw $0728 : db $03 ; Bee          xy:{ 0x140, 0x0E0 }
|1BC555| dw $0808 : db $04 ; Random pack  xy:{ 0x040, 0x100 }
|1BC558| dw $0926 : db $04 ; Random pack  xy:{ 0x130, 0x120 }

;===================================================================================================

; Haunted Grove
OverworldData_HiddenItems_Screen_2A:
|1BC55B| dw $FFFF

;===================================================================================================

; West of Link's House
OverworldData_HiddenItems_Screen_2B:
|1BC55D| dw $031E : db $01 ; Green rupee  xy:{ 0x0F0, 0x060 }
|1BC560| dw $0330 : db $84 ; Staircase    xy:{ 0x180, 0x060 }
|1BC563| dw $0C10 : db $01 ; Green rupee  xy:{ 0x080, 0x180 }
|1BC566| dw $0C18 : db $04 ; Random pack  xy:{ 0x0C0, 0x180 }
|1BC569| dw $0C1A : db $06 ; Heart        xy:{ 0x0D0, 0x180 }
|1BC56C| dw $0C8E : db $01 ; Green rupee  xy:{ 0x070, 0x180 }
|1BC56F| dw $0C96 : db $01 ; Green rupee  xy:{ 0x0B0, 0x180 }
|1BC572| dw $FFFF

;===================================================================================================

; Link's House
OverworldData_HiddenItems_Screen_2C:
|1BC574| dw $0214 : db $01 ; Green rupee  xy:{ 0x0A0, 0x040 }
|1BC577| dw $089E : db $01 ; Green rupee  xy:{ 0x0F0, 0x100 }
|1BC57A| dw $0890 : db $01 ; Green rupee  xy:{ 0x080, 0x100 }
|1BC57D| dw $0906 : db $01 ; Green rupee  xy:{ 0x030, 0x120 }
|1BC580| dw $0984 : db $04 ; Random pack  xy:{ 0x020, 0x120 }
|1BC583| dw $0A1C : db $05 ; Bomb         xy:{ 0x0E0, 0x140 }
|1BC586| dw $0AB4 : db $06 ; Heart        xy:{ 0x1A0, 0x140 }
|1BC589| dw $0BB6 : db $01 ; Green rupee  xy:{ 0x1B0, 0x160 }

;===================================================================================================

; Eastern Bridge
; Lake Hylia River Bend
OverworldData_HiddenItems_Screen_2D:
OverworldData_HiddenItems_Screen_2E:
|1BC58C| dw $FFFF

;===================================================================================================

; Eastern Portalway
OverworldData_HiddenItems_Screen_2F:
|1BC58E| dw $0BB2 : db $82 ; Warp         xy:{ 0x190, 0x160 }
|1BC591| dw $0D12 : db $05 ; Bomb         xy:{ 0x090, 0x1A0 }
|1BC594| dw $FFFF

;===================================================================================================

; Desert
OverworldData_HiddenItems_Screen_30:
|1BC596| dw $0358 : db $84 ; Staircase    xy:{ 0x2C0, 0x060 }
|1BC599| dw $0A50 : db $04 ; Random pack  xy:{ 0x280, 0x140 }
|1BC59C| dw $1406 : db $06 ; Heart        xy:{ 0x030, 0x280 }
|1BC59F| dw $1D94 : db $82 ; Warp         xy:{ 0x0A0, 0x3A0 }
|1BC5A2| dw $FFFF

;===================================================================================================

; Haunted Grove Entrance
OverworldData_HiddenItems_Screen_32:
|1BC5A4| dw $051E : db $05 ; Bomb         xy:{ 0x0F0, 0x0A0 }
|1BC5A7| dw $052A : db $04 ; Random pack  xy:{ 0x150, 0x0A0 }
|1BC5AA| dw $059C : db $05 ; Bomb         xy:{ 0x0E0, 0x0A0 }
|1BC5AD| dw $FFFF

;===================================================================================================

; Marshlands Portalway
OverworldData_HiddenItems_Screen_33:
|1BC5AF| dw $02A8 : db $82 ; Warp         xy:{ 0x140, 0x040 }
|1BC5B2| dw $0B14 : db $02 ; Hoarder      xy:{ 0x0A0, 0x160 }
|1BC5B5| dw $FFFF

;===================================================================================================

; Marshlands Totems
OverworldData_HiddenItems_Screen_34:
|1BC5B7| dw $03B0 : db $86 ; Bomb door    xy:{ 0x180, 0x060 }
|1BC5BA| dw $048C : db $04 ; Random pack  xy:{ 0x060, 0x080 }
|1BC5BD| dw $FFFF

;===================================================================================================

; Lake Hylia
OverworldData_HiddenItems_Screen_35:
|1BC5BF| dw $0A30 : db $04 ; Random pack  xy:{ 0x180, 0x140 }
|1BC5C2| dw $0C10 : db $06 ; Heart        xy:{ 0x080, 0x180 }
|1BC5C5| dw $0F56 : db $82 ; Warp         xy:{ 0x2B0, 0x1E0 }
|1BC5C8| dw $180C : db $86 ; Bomb door    xy:{ 0x060, 0x300 }
|1BC5CB| dw $1CDE : db $03 ; Bee          xy:{ 0x2F0, 0x380 }
|1BC5CE| dw $FFFF

;===================================================================================================

; Lake Hylia River End
OverworldData_HiddenItems_Screen_37:
|1BC5D0| dw $0288 : db $86 ; Bomb door    xy:{ 0x040, 0x040 }
|1BC5D3| dw $03AA : db $05 ; Bomb         xy:{ 0x150, 0x060 }
|1BC5D6| dw $040C : db $84 ; Staircase    xy:{ 0x060, 0x080 }
|1BC5D9| dw $FFFF

;===================================================================================================

; Desert Pass
OverworldData_HiddenItems_Screen_3A:
|1BC5DB| dw $081E : db $02 ; Hoarder      xy:{ 0x0F0, 0x100 }
|1BC5DE| dw $09AC : db $06 ; Heart        xy:{ 0x160, 0x120 }
|1BC5E1| dw $0A1E : db $84 ; Staircase    xy:{ 0x0F0, 0x140 }
|1BC5E4| dw $FFFF

;===================================================================================================

; Marshlands Dam Entrance
OverworldData_HiddenItems_Screen_3B:
|1BC5E6| dw $061A : db $03 ; Bee          xy:{ 0x0D0, 0x0C0 }
|1BC5E9| dw $FFFF

;===================================================================================================

; Marshlands Ravine
OverworldData_HiddenItems_Screen_3C:
|1BC5EB| dw $0696 : db $03 ; Bee          xy:{ 0x0B0, 0x0C0 }
|1BC5EE| dw $0710 : db $04 ; Random pack  xy:{ 0x080, 0x0E0 }
|1BC5F1| dw $FFFF

;===================================================================================================

; Lake Hylia Waterfall
OverworldData_HiddenItems_Screen_3F:
|1BC5F3| dw $0C28 : db $04 ; Random pack  xy:{ 0x140, 0x180 }
|1BC5F6| dw $FFFF

;---------------------------------------------------------------------------------------------------

; Skull Woods
OverworldData_HiddenItems_Screen_40:
|1BC5F8| dw $0338 : db $04 ; Random pack  xy:{ 0x1C0, 0x060 }
|1BC5FB| dw $036A : db $01 ; Green rupee  xy:{ 0x350, 0x060 }
|1BC5FE| dw $0570 : db $03 ; Bee          xy:{ 0x380, 0x0A0 }
|1BC601| dw $05F2 : db $04 ; Random pack  xy:{ 0x390, 0x0A0 }
|1BC604| dw $1914 : db $03 ; Bee          xy:{ 0x0A0, 0x320 }
|1BC607| dw $1D38 : db $06 ; Heart        xy:{ 0x1C0, 0x3A0 }
|1BC60A| dw $1DBC : db $05 ; Bomb         xy:{ 0x1E0, 0x3A0 }
|1BC60D| dw $105E : db $04 ; Random pack  xy:{ 0x2F0, 0x200 }
|1BC610| dw $10E0 : db $80 ; Hole         xy:{ 0x300, 0x200 }
|1BC613| dw $1162 : db $01 ; Green rupee  xy:{ 0x310, 0x220 }
|1BC616| dw $FFFF

;===================================================================================================

; Dark Lumberjacks
OverworldData_HiddenItems_Screen_42:
|1BC618| dw $04AC : db $01 ; Green rupee  xy:{ 0x160, 0x080 }
|1BC61B| dw $05B4 : db $01 ; Green rupee  xy:{ 0x1A0, 0x0A0 }
|1BC61E| dw $090A : db $03 ; Bee          xy:{ 0x050, 0x120 }
|1BC621| dw $0D98 : db $01 ; Green rupee  xy:{ 0x0C0, 0x1A0 }
|1BC624| dw $0DA4 : db $01 ; Green rupee  xy:{ 0x120, 0x1A0 }
|1BC627| dw $0E1E : db $01 ; Green rupee  xy:{ 0x0F0, 0x1C0 }
|1BC62A| dw $0EA8 : db $01 ; Green rupee  xy:{ 0x140, 0x1C0 }
|1BC62D| dw $FFFF

;===================================================================================================

; West Dark Death Mountain
OverworldData_HiddenItems_Screen_43:
|1BC62F| dw $0A60 : db $04 ; Random pack  xy:{ 0x300, 0x140 }
|1BC632| dw $0BDA : db $04 ; Random pack  xy:{ 0x2D0, 0x160 }
|1BC635| dw $0BE6 : db $04 ; Random pack  xy:{ 0x330, 0x160 }
|1BC638| dw $0D60 : db $04 ; Random pack  xy:{ 0x300, 0x1A0 }
|1BC63B| dw $1920 : db $01 ; Green rupee  xy:{ 0x100, 0x320 }
|1BC63E| dw $1A04 : db $04 ; Random pack  xy:{ 0x020, 0x340 }
|1BC641| dw $17EE : db $06 ; Heart        xy:{ 0x370, 0x2E0 }
|1BC644| dw $1968 : db $06 ; Heart        xy:{ 0x340, 0x320 }
|1BC647| dw $1974 : db $06 ; Heart        xy:{ 0x3A0, 0x320 }
|1BC64A| dw $1AEE : db $06 ; Heart        xy:{ 0x370, 0x340 }
|1BC64D| dw $FFFF

;===================================================================================================

; East Dark Death Mountain
OverworldData_HiddenItems_Screen_45:
|1BC64F| dw $0868 : db $84 ; Staircase    xy:{ 0x340, 0x100 }
|1BC652| dw $13D8 : db $05 ; Bomb         xy:{ 0x2C0, 0x260 }
|1BC655| dw $145A : db $05 ; Bomb         xy:{ 0x2D0, 0x280 }

;===================================================================================================

; Turtle Rock
; Bumper Ledge
OverworldData_HiddenItems_Screen_47:
OverworldData_HiddenItems_Screen_4A:
|1BC658| dw $FFFF

;===================================================================================================

; Lake of Ill Omen
OverworldData_HiddenItems_Screen_4F:
|1BC65A| dw $06AE : db $05 ; Bomb         xy:{ 0x170, 0x0C0 }
|1BC65D| dw $06B4 : db $05 ; Bomb         xy:{ 0x1A0, 0x0C0 }
|1BC660| dw $0832 : db $06 ; Heart        xy:{ 0x190, 0x100 }
|1BC663| dw $0A32 : db $06 ; Heart        xy:{ 0x190, 0x140 }
|1BC666| dw $0B1C : db $06 ; Heart        xy:{ 0x0E0, 0x160 }
|1BC669| dw $FFFF

;===================================================================================================

; Skull Woods Alcove
OverworldData_HiddenItems_Screen_50:
|1BC66B| dw $040C : db $01 ; Green rupee  xy:{ 0x060, 0x080 }
|1BC66E| dw $0792 : db $01 ; Green rupee  xy:{ 0x090, 0x0E0 }
|1BC671| dw $0798 : db $04 ; Random pack  xy:{ 0x0C0, 0x0E0 }
|1BC674| dw $079E : db $04 ; Random pack  xy:{ 0x0F0, 0x0E0 }
|1BC677| dw $07A4 : db $01 ; Green rupee  xy:{ 0x120, 0x0E0 }
|1BC67A| dw $0A34 : db $01 ; Green rupee  xy:{ 0x1A0, 0x140 }
|1BC67D| dw $FFFF

;===================================================================================================

; North of Outcasts
OverworldData_HiddenItems_Screen_51:
|1BC67F| dw $0716 : db $03 ; Bee          xy:{ 0x0B0, 0x0E0 }
|1BC682| dw $092A : db $01 ; Green rupee  xy:{ 0x150, 0x120 }
|1BC685| dw $0A34 : db $05 ; Bomb         xy:{ 0x1A0, 0x140 }
|1BC688| dw $0AA4 : db $01 ; Green rupee  xy:{ 0x120, 0x140 }
|1BC68B| dw $0B98 : db $01 ; Green rupee  xy:{ 0x0C0, 0x160 }
|1BC68E| dw $0C1A : db $01 ; Green rupee  xy:{ 0x0D0, 0x180 }
|1BC691| dw $0D18 : db $01 ; Green rupee  xy:{ 0x0C0, 0x1A0 }
|1BC694| dw $0D8E : db $04 ; Random pack  xy:{ 0x070, 0x1A0 }
|1BC697| dw $FFFF

;===================================================================================================

; Dark Northwest Pond
OverworldData_HiddenItems_Screen_52:
|1BC699| dw $04B2 : db $06 ; Heart        xy:{ 0x190, 0x080 }
|1BC69C| dw $0530 : db $06 ; Heart        xy:{ 0x180, 0x0A0 }
|1BC69F| dw $05AE : db $06 ; Heart        xy:{ 0x170, 0x0A0 }
|1BC6A2| dw $0788 : db $01 ; Green rupee  xy:{ 0x040, 0x0E0 }
|1BC6A5| dw $0808 : db $01 ; Green rupee  xy:{ 0x040, 0x100 }
|1BC6A8| dw $0888 : db $01 ; Green rupee  xy:{ 0x040, 0x100 }
|1BC6AB| dw $09B2 : db $04 ; Random pack  xy:{ 0x190, 0x120 }
|1BC6AE| dw $FFFF

;===================================================================================================

; Dark Sanctuary
OverworldData_HiddenItems_Screen_53:
|1BC6B0| dw $0584 : db $05 ; Bomb         xy:{ 0x020, 0x0A0 }
|1BC6B3| dw $05B8 : db $04 ; Random pack  xy:{ 0x1C0, 0x0A0 }
|1BC6B6| dw $0606 : db $05 ; Bomb         xy:{ 0x030, 0x0C0 }
|1BC6B9| dw $0688 : db $05 ; Bomb         xy:{ 0x040, 0x0C0 }
|1BC6BC| dw $070A : db $05 ; Bomb         xy:{ 0x050, 0x0E0 }
|1BC6BF| dw $078C : db $05 ; Bomb         xy:{ 0x060, 0x0E0 }
|1BC6C2| dw $07A0 : db $01 ; Green rupee  xy:{ 0x100, 0x0E0 }
|1BC6C5| dw $07B6 : db $03 ; Bee          xy:{ 0x1B0, 0x0E0 }
|1BC6C8| dw $0822 : db $01 ; Green rupee  xy:{ 0x110, 0x100 }
|1BC6CB| dw $082E : db $01 ; Green rupee  xy:{ 0x170, 0x100 }
|1BC6CE| dw $08A6 : db $01 ; Green rupee  xy:{ 0x130, 0x100 }
|1BC6D1| dw $08B0 : db $01 ; Green rupee  xy:{ 0x180, 0x100 }
|1BC6D4| dw $0920 : db $04 ; Random pack  xy:{ 0x100, 0x120 }
|1BC6D7| dw $0928 : db $01 ; Green rupee  xy:{ 0x140, 0x120 }
|1BC6DA| dw $0934 : db $01 ; Green rupee  xy:{ 0x1A0, 0x120 }
|1BC6DD| dw $09B6 : db $01 ; Green rupee  xy:{ 0x1B0, 0x120 }
|1BC6E0| dw $FFFF

;===================================================================================================

; Dark Graveyard
OverworldData_HiddenItems_Screen_54:
|1BC6E2| dw $0490 : db $04 ; Random pack  xy:{ 0x080, 0x080 }
|1BC6E5| dw $0492 : db $04 ; Random pack  xy:{ 0x090, 0x080 }
|1BC6E8| dw $05AE : db $01 ; Green rupee  xy:{ 0x170, 0x0A0 }
|1BC6EB| dw $07B8 : db $03 ; Bee          xy:{ 0x1C0, 0x0E0 }
|1BC6EE| dw $FFFF

;===================================================================================================

; Dark Hylia River Bend
OverworldData_HiddenItems_Screen_55:
|1BC6F0| dw $038A : db $05 ; Bomb         xy:{ 0x050, 0x060 }
|1BC6F3| dw $0788 : db $04 ; Random pack  xy:{ 0x040, 0x0E0 }
|1BC6F6| dw $FFFF

; Dark Northeast Shop
OverworldData_HiddenItems_Screen_56:
|1BC6F8| dw $079C : db $04 ; Random pack  xy:{ 0x0E0, 0x0E0 }
|1BC6FB| dw $08A6 : db $01 ; Green rupee  xy:{ 0x130, 0x100 }
|1BC6FE| dw $0926 : db $01 ; Green rupee  xy:{ 0x130, 0x120 }
|1BC701| dw $09A6 : db $01 ; Green rupee  xy:{ 0x130, 0x120 }
|1BC704| dw $0A26 : db $01 ; Green rupee  xy:{ 0x130, 0x140 }
|1BC707| dw $0C98 : db $01 ; Green rupee  xy:{ 0x0C0, 0x180 }
|1BC70A| dw $0D1A : db $01 ; Green rupee  xy:{ 0x0D0, 0x1A0 }
|1BC70D| dw $FFFF

;===================================================================================================

; Dark Octorok Pit
OverworldData_HiddenItems_Screen_57:
|1BC70F| dw $0E1C : db $06 ; Heart        xy:{ 0x0E0, 0x1C0 }
|1BC712| dw $0E20 : db $06 ; Heart        xy:{ 0x100, 0x1C0 }
|1BC715| dw $FFFF

;===================================================================================================

; Village of Outcasts
OverworldData_HiddenItems_Screen_58:
|1BC717| dw $049A : db $04 ; Random pack  xy:{ 0x0D0, 0x080 }
|1BC71A| dw $0C96 : db $03 ; Bee          xy:{ 0x0B0, 0x180 }
|1BC71D| dw $0654 : db $01 ; Green rupee  xy:{ 0x2A0, 0x0C0 }
|1BC720| dw $0656 : db $01 ; Green rupee  xy:{ 0x2B0, 0x0C0 }
|1BC723| dw $0AF8 : db $04 ; Random pack  xy:{ 0x3C0, 0x140 }
|1BC726| dw $0AFA : db $04 ; Random pack  xy:{ 0x3D0, 0x140 }
|1BC729| dw $0CD6 : db $01 ; Green rupee  xy:{ 0x2B0, 0x180 }
|1BC72C| dw $0E64 : db $01 ; Green rupee  xy:{ 0x320, 0x1C0 }
|1BC72F| dw $0F66 : db $01 ; Green rupee  xy:{ 0x330, 0x1E0 }
|1BC732| dw $1092 : db $01 ; Green rupee  xy:{ 0x090, 0x200 }
|1BC735| dw $10A0 : db $04 ; Random pack  xy:{ 0x100, 0x200 }
|1BC738| dw $1114 : db $01 ; Green rupee  xy:{ 0x0A0, 0x220 }
|1BC73B| dw $1212 : db $01 ; Green rupee  xy:{ 0x090, 0x240 }
|1BC73E| dw $121E : db $04 ; Random pack  xy:{ 0x0F0, 0x240 }
|1BC741| dw $1296 : db $01 ; Green rupee  xy:{ 0x0B0, 0x240 }
|1BC744| dw $199C : db $04 ; Random pack  xy:{ 0x0E0, 0x320 }
|1BC747| dw $1A14 : db $04 ; Random pack  xy:{ 0x0A0, 0x340 }
|1BC74A| dw $1A98 : db $04 ; Random pack  xy:{ 0x0C0, 0x340 }
|1BC74D| dw $1B1E : db $04 ; Random pack  xy:{ 0x0F0, 0x360 }
|1BC750| dw $1C34 : db $05 ; Bomb         xy:{ 0x1A0, 0x380 }
|1BC753| dw $1CA6 : db $05 ; Bomb         xy:{ 0x130, 0x380 }
|1BC756| dw $1AB6 : db $86 ; Bomb door    xy:{ 0x1B0, 0x340 }
|1BC759| dw $14EC : db $01 ; Green rupee  xy:{ 0x360, 0x280 }
|1BC75C| dw $15E2 : db $01 ; Green rupee  xy:{ 0x310, 0x2A0 }
|1BC75F| dw $1A4A : db $04 ; Random pack  xy:{ 0x250, 0x340 }
|1BC762| dw $1B48 : db $03 ; Bee          xy:{ 0x240, 0x360 }
|1BC765| dw $FFFF

;===================================================================================================

; Outcasts Orchard
OverworldData_HiddenItems_Screen_5A:
|1BC767| dw $041A : db $06 ; Heart        xy:{ 0x0D0, 0x080 }
|1BC76A| dw $08B4 : db $01 ; Green rupee  xy:{ 0x1A0, 0x100 }
|1BC76D| dw $0A32 : db $01 ; Green rupee  xy:{ 0x190, 0x140 }
|1BC770| dw $0B32 : db $01 ; Green rupee  xy:{ 0x190, 0x160 }
|1BC773| dw $0C22 : db $01 ; Green rupee  xy:{ 0x110, 0x180 }
|1BC776| dw $0C26 : db $01 ; Green rupee  xy:{ 0x130, 0x180 }
|1BC779| dw $0C2C : db $01 ; Green rupee  xy:{ 0x160, 0x180 }
|1BC77C| dw $0C30 : db $01 ; Green rupee  xy:{ 0x180, 0x180 }
|1BC77F| dw $0C8E : db $05 ; Bomb         xy:{ 0x070, 0x180 }
|1BC782| dw $0CB4 : db $01 ; Green rupee  xy:{ 0x1A0, 0x180 }
|1BC785| dw $FFFF

;===================================================================================================

; Pyramid of Power
OverworldData_HiddenItems_Screen_5B:
|1BC787| dw $0E2E : db $86 ; Bomb door    xy:{ 0x170, 0x1C0 }
|1BC78A| dw $1C88 : db $04 ; Random pack  xy:{ 0x040, 0x380 }
|1BC78D| dw $1E0E : db $01 ; Green rupee  xy:{ 0x070, 0x3C0 }
|1BC790| dw $1E12 : db $01 ; Green rupee  xy:{ 0x090, 0x3C0 }
|1BC793| dw $1DDA : db $01 ; Green rupee  xy:{ 0x2D0, 0x3A0 }
|1BC796| dw $1E60 : db $01 ; Green rupee  xy:{ 0x300, 0x3C0 }
|1BC799| dw $1E72 : db $03 ; Bee          xy:{ 0x390, 0x3C0 }

;===================================================================================================

; Dark Hylia River Peninsula
; Palace of Darkness Maze
OverworldData_HiddenItems_Screen_5D:
OverworldData_HiddenItems_Screen_5E:
|1BC79C| dw $FFFF

;===================================================================================================

; Stake Puzzle
OverworldData_HiddenItems_Screen_62:
|1BC79E| dw $0428 : db $04 ; Random pack  xy:{ 0x140, 0x080 }
|1BC7A1| dw $0B92 : db $01 ; Green rupee  xy:{ 0x090, 0x160 }
|1BC7A4| dw $0C92 : db $01 ; Green rupee  xy:{ 0x090, 0x180 }
|1BC7A7| dw $0C96 : db $01 ; Green rupee  xy:{ 0x0B0, 0x180 }
|1BC7AA| dw $0D92 : db $01 ; Green rupee  xy:{ 0x090, 0x1A0 }
|1BC7AD| dw $0E10 : db $01 ; Green rupee  xy:{ 0x080, 0x1C0 }
|1BC7B0| dw $FFFF

;===================================================================================================

; Boulder Field
OverworldData_HiddenItems_Screen_65:
|1BC7B2| dw $0908 : db $06 ; Heart        xy:{ 0x040, 0x120 }
|1BC7B5| dw $FFFF

;===================================================================================================

; Digging Game
OverworldData_HiddenItems_Screen_68:
|1BC7B7| dw $0420 : db $01 ; Green rupee  xy:{ 0x100, 0x080 }
|1BC7BA| dw $0428 : db $01 ; Green rupee  xy:{ 0x140, 0x080 }
|1BC7BD| dw $0920 : db $03 ; Bee          xy:{ 0x100, 0x120 }
|1BC7C0| dw $0AB2 : db $04 ; Random pack  xy:{ 0x190, 0x140 }
|1BC7C3| dw $FFFF

;===================================================================================================

; South of Outcasts
OverworldData_HiddenItems_Screen_69:
|1BC7C5| dw $0408 : db $01 ; Green rupee  xy:{ 0x040, 0x080 }
|1BC7C8| dw $040C : db $01 ; Green rupee  xy:{ 0x060, 0x080 }
|1BC7CB| dw $0728 : db $04 ; Random pack  xy:{ 0x140, 0x0E0 }
|1BC7CE| dw $0926 : db $01 ; Green rupee  xy:{ 0x130, 0x120 }
|1BC7D1| dw $09A4 : db $01 ; Green rupee  xy:{ 0x120, 0x120 }
|1BC7D4| dw $09A6 : db $01 ; Green rupee  xy:{ 0x130, 0x120 }

;===================================================================================================

; Stumpy Grove
OverworldData_HiddenItems_Screen_6A:
|1BC7D7| dw $FFFF

;===================================================================================================

; West of Bomb Shop
OverworldData_HiddenItems_Screen_6B:
|1BC7D9| dw $0320 : db $04 ; Random pack  xy:{ 0x100, 0x060 }
|1BC7DC| dw $0330 : db $84 ; Staircase    xy:{ 0x180, 0x060 }
|1BC7DF| dw $0C0E : db $01 ; Green rupee  xy:{ 0x070, 0x180 }
|1BC7E2| dw $0C12 : db $01 ; Green rupee  xy:{ 0x090, 0x180 }
|1BC7E5| dw $0C96 : db $01 ; Green rupee  xy:{ 0x0B0, 0x180 }
|1BC7E8| dw $0C9A : db $01 ; Green rupee  xy:{ 0x0D0, 0x180 }
|1BC7EB| dw $FFFF

;===================================================================================================

; Bomb Shop
OverworldData_HiddenItems_Screen_6C:
|1BC7ED| dw $0226 : db $01 ; Green rupee  xy:{ 0x130, 0x040 }
|1BC7F0| dw $0890 : db $01 ; Green rupee  xy:{ 0x080, 0x100 }
|1BC7F3| dw $089C : db $01 ; Green rupee  xy:{ 0x0E0, 0x100 }
|1BC7F6| dw $0906 : db $01 ; Green rupee  xy:{ 0x030, 0x120 }
|1BC7F9| dw $0912 : db $01 ; Green rupee  xy:{ 0x090, 0x120 }
|1BC7FC| dw $091E : db $01 ; Green rupee  xy:{ 0x0F0, 0x120 }
|1BC7FF| dw $0984 : db $04 ; Random pack  xy:{ 0x020, 0x120 }
|1BC802| dw $0AB4 : db $04 ; Random pack  xy:{ 0x1A0, 0x140 }
|1BC805| dw $0B36 : db $04 ; Random pack  xy:{ 0x1B0, 0x160 }
|1BC808| dw $0BB8 : db $04 ; Random pack  xy:{ 0x1C0, 0x160 }

;===================================================================================================

; Hammer Bridge
; Dark Lake Hylia River Bend
OverworldData_HiddenItems_Screen_6D:
OverworldData_HiddenItems_Screen_6E:
|1BC80B| dw $FFFF

;===================================================================================================

; East Dark World Portalway
OverworldData_HiddenItems_Screen_6F:
|1BC80D| dw $0B24 : db $05 ; Bomb         xy:{ 0x120, 0x160 }
|1BC810| dw $0B8C : db $05 ; Bomb         xy:{ 0x060, 0x160 }
|1BC813| dw $0B96 : db $05 ; Bomb         xy:{ 0x0B0, 0x160 }
|1BC816| dw $0D12 : db $05 ; Bomb         xy:{ 0x090, 0x1A0 }
|1BC819| dw $FFFF

;===================================================================================================

; Misery Mire
OverworldData_HiddenItems_Screen_70:
|1BC81B| dw $1406 : db $06 ; Heart        xy:{ 0x030, 0x280 }
|1BC81E| dw $1486 : db $06 ; Heart        xy:{ 0x030, 0x280 }
|1BC821| dw $FFFF

;===================================================================================================

; Stumpy Grove Entrance
OverworldData_HiddenItems_Screen_72:
|1BC823| dw $051C : db $04 ; Random pack  xy:{ 0x0E0, 0x0A0 }
|1BC826| dw $051E : db $04 ; Random pack  xy:{ 0x0F0, 0x0A0 }
|1BC829| dw $059C : db $04 ; Random pack  xy:{ 0x0E0, 0x0A0 }
|1BC82C| dw $059E : db $04 ; Random pack  xy:{ 0x0F0, 0x0A0 }
|1BC82F| dw $0626 : db $03 ; Bee          xy:{ 0x130, 0x0C0 }
|1BC832| dw $0A8C : db $01 ; Green rupee  xy:{ 0x060, 0x140 }
|1BC835| dw $0B90 : db $01 ; Green rupee  xy:{ 0x080, 0x160 }
|1BC838| dw $0C08 : db $01 ; Green rupee  xy:{ 0x040, 0x180 }
|1BC83B| dw $0D0C : db $01 ; Green rupee  xy:{ 0x060, 0x1A0 }

;===================================================================================================

; Swamplands Portalway
OverworldData_HiddenItems_Screen_73:
|1BC83E| dw $FFFF

;===================================================================================================

; Swamplands Totems
OverworldData_HiddenItems_Screen_74:
|1BC840| dw $03B0 : db $86 ; Bomb door    xy:{ 0x180, 0x060 }
|1BC843| dw $040C : db $01 ; Green rupee  xy:{ 0x060, 0x080 }
|1BC846| dw $0590 : db $01 ; Green rupee  xy:{ 0x080, 0x0A0 }
|1BC849| dw $0614 : db $01 ; Green rupee  xy:{ 0x0A0, 0x0C0 }
|1BC84C| dw $0728 : db $06 ; Heart        xy:{ 0x140, 0x0E0 }
|1BC84F| dw $090A : db $01 ; Green rupee  xy:{ 0x050, 0x120 }
|1BC852| dw $0D9E : db $04 ; Random pack  xy:{ 0x0F0, 0x1A0 }
|1BC855| dw $FFFF

;===================================================================================================

; Dark Lake Hylia
OverworldData_HiddenItems_Screen_75:
|1BC857| dw $0298 : db $06 ; Heart        xy:{ 0x0C0, 0x040 }
|1BC85A| dw $0C10 : db $04 ; Random pack  xy:{ 0x080, 0x180 }
|1BC85D| dw $FFFF

;===================================================================================================

; Dark Lake Hylia River End
OverworldData_HiddenItems_Screen_77:
|1BC85F| dw $0288 : db $86 ; Bomb door    xy:{ 0x040, 0x040 }
|1BC862| dw $03AA : db $06 ; Heart        xy:{ 0x150, 0x060 }
|1BC865| dw $040C : db $84 ; Staircase    xy:{ 0x060, 0x080 }
|1BC868| dw $0518 : db $05 ; Bomb         xy:{ 0x0C0, 0x0A0 }
|1BC86B| dw $FFFF

;===================================================================================================

; West of Swamplands
OverworldData_HiddenItems_Screen_7A:
|1BC86D| dw $0526 : db $05 ; Bomb         xy:{ 0x130, 0x0A0 }
|1BC870| dw $052A : db $05 ; Bomb         xy:{ 0x150, 0x0A0 }
|1BC873| dw $052E : db $05 ; Bomb         xy:{ 0x170, 0x0A0 }
|1BC876| dw $09AC : db $06 ; Heart        xy:{ 0x160, 0x120 }
|1BC879| dw $FFFF

;===================================================================================================

; Swamplands Palace Entrance
OverworldData_HiddenItems_Screen_7B:
|1BC87B| dw $0420 : db $06 ; Heart        xy:{ 0x100, 0x080 }
|1BC87E| dw $061A : db $04 ; Random pack  xy:{ 0x0D0, 0x0C0 }
|1BC881| dw $0696 : db $04 ; Random pack  xy:{ 0x0B0, 0x0C0 }
|1BC884| dw $FFFF

;===================================================================================================

; Swamplands Ravine
OverworldData_HiddenItems_Screen_7C:
|1BC886| dw $02A8 : db $05 ; Bomb         xy:{ 0x140, 0x040 }
|1BC889| dw $0316 : db $06 ; Heart        xy:{ 0x0B0, 0x060 }
|1BC88C| dw $0698 : db $06 ; Heart        xy:{ 0x0C0, 0x0C0 }
|1BC88F| dw $0714 : db $04 ; Random pack  xy:{ 0x0A0, 0x0E0 }
|1BC892| dw $FFFF

;===================================================================================================

; Dark Lake Hylia Waterfall
OverworldData_HiddenItems_Screen_7F:
|1BC894| dw $02AE : db $04 ; Random pack  xy:{ 0x170, 0x040 }
|1BC897| dw $0C28 : db $04 ; Random pack  xy:{ 0x140, 0x180 }
|1BC89A| dw $FFFF

;===================================================================================================

SecretObjectTypes:
|1BC89C| dw $0DC6 ; MAP16.0DC6 : hole
|1BC89E| dw $0212 ; MAP16.0212 : portal
|1BC8A0| dw $FFFF ; garbage
|1BC8A2| dw $0DAE ; MAP16.0DAE : bomb hole

;===================================================================================================
; Exits with carry to indicate success
;===================================================================================================
RevealOverworldSecret:
|1BC8A4| STX.b $04

|1BC8A6| LDA.w $0B9C
|1BC8A9| AND.w #$FF00
|1BC8AC| STA.w $0B9C

; Special areas don't have secrets
|1BC8AF| LDA.b $8A
|1BC8B1| CMP.w #$0080 ; SPOW
|1BC8B4| BCS .fail

; Save the pointer for the secrets list
|1BC8B6| ASL A
|1BC8B7| TAX

|1BC8B8| LDA.l OverworldData_HiddenItems,X
|1BC8BC| STA.b $00

|1BC8BE| LDA.w #^OverworldData_HiddenItems
|1BC8C1| STA.b $02

; we start with an increment, so init Y negative
|1BC8C3| LDY.w #-3

.next_check
|1BC8C6| INY
|1BC8C7| INY
|1BC8C8| INY

|1BC8C9| LDA.b [$00],Y

; End of list was reached
|1BC8CB| CMP.w #$FFFF
|1BC8CE| BEQ .fail

|1BC8D0| AND.w #$7FFF
|1BC8D3| CMP.b $04
|1BC8D5| BNE .next_check

|1BC8D7| INY
|1BC8D8| INY

|1BC8D9| LDA.b [$00],Y
|1BC8DB| AND.w #$00FF
|1BC8DE| BEQ .dont_set_secret_id

; this branch could be pointed to $1B:C8F0
|1BC8E0| CMP.w #$0080
|1BC8E3| BCS .dont_set_secret_id

|1BC8E5| TSB.w $0B9C

.dont_set_secret_id
; tile reveal secrets are 0x0080+
|1BC8E8| AND.w #$00FF
|1BC8EB| CMP.w #$0080
|1BC8EE| BCC .item_secret

|1BC8F0| PHA

|1BC8F1| LDA.w $0B9C
|1BC8F4| ORA.w #$00FF
|1BC8F7| STA.w $0B9C

|1BC8FA| PLA
|1BC8FB| CMP.w #$0084
|1BC8FE| BEQ .not_stairs

|1BC900| LDX.b $8A
|1BC902| LDA.l $7EF280,X
|1BC906| AND.w #$0002
|1BC909| BNE .not_stairs

; explicit check for super bomb at pyramid
|1BC90B| LDA.b $8A
|1BC90D| CMP.w #$005B ; OW 5B
|1BC910| BNE .not_pyramid_screen

|1BC912| LDA.l $7EF3CC
|1BC916| AND.w #$00FF
|1BC919| CMP.w #$000D ; FOLLOWER 0D
|1BC91C| BNE .fail

.not_pyramid_screen
|1BC91E| SEP #$20

|1BC920| LDA.b #$1B ; SFX3.1B
|1BC922| STA.w $012F

|1BC925| REP #$20

.not_stairs
|1BC927| LDA.b [$00],Y
|1BC929| AND.w #$000F
|1BC92C| TAX

|1BC92D| LDA.l SecretObjectTypes,X
|1BC931| STA.b $0E

.fail
|1BC933| JSR AdjustSecretForPowder
|1BC936| LDX.b $04

|1BC938| CLC

|1BC939| RTS

.item_secret
|1BC93A| JSR AdjustSecretForPowder
|1BC93D| LDX.b $04
|1BC93F| LDA.b $0E

|1BC941| SEC

|1BC942| RTS

;===================================================================================================
; Sets the better prize pack when using powder.
; [BUG] All it checks for is the powder bit.
; It doesn't care or check whether powder is what actually revealed the secret.
;===================================================================================================
AdjustSecretForPowder:
|1BC943| LDA.w $0301
|1BC946| AND.w #$0040
|1BC949| BEQ .not_powder

|1BC94B| LDA.w #$0004
|1BC94E| STA.w $0B9C

.not_powder
|1BC951| RTS

;===================================================================================================

DrawWoodenDoor:
|1BC952| BCS .closed

|1BC954| LDA.w #$0D9E ; MAP16.0D9E
|1BC957| JSL DrawPersistentMap16

|1BC95B| LDA.w #$0DA0 ; MAP16.0DA0
|1BC95E| BRA .right_side

.closed
|1BC960| LDA.w #$0D9F ; MAP16.0D9F
|1BC963| JSL DrawPersistentMap16

|1BC967| LDA.w #$0DA1

.right_side
|1BC96A| STA.l $7E2002,X

|1BC96E| LDY.w #$0002
|1BC971| JSL DrawMap16Anywhere

|1BC975| SEP #$30

|1BC977| LDA.b #$01
|1BC979| STA.b $14

|1BC97B| RTL

;===================================================================================================

DrawPersistentMap16:
|1BC97C| STA.l $7E2000,X

;---------------------------------------------------------------------------------------------------

DrawMap16:
|1BC980| LDY.w #$0000

;---------------------------------------------------------------------------------------------------

DrawMap16Anywhere:
|1BC983| PHX

|1BC984| ASL A
|1BC985| ASL A
|1BC986| ASL A

|1BC987| STA.b $0C
|1BC989| STY.b $00

|1BC98B| TXA
|1BC98C| CLC
|1BC98D| ADC.b $00
|1BC98F| STA.b $00

|1BC991| JSR FindMap16VRAMAddress

; builds stripes
|1BC994| LDY.w $1000

|1BC997| LDA.b $02
|1BC999| XBA
|1BC99A| STA.w $1002,Y

|1BC99D| LDA.b $02
|1BC99F| CLC
|1BC9A0| ADC.w #$0020
|1BC9A3| XBA
|1BC9A4| STA.w $100A,Y

|1BC9A7| LDA.w #$0300
|1BC9AA| STA.w $1004,Y
|1BC9AD| STA.w $100C,Y

|1BC9B0| LDX.b $0C

|1BC9B2| LDA.l Map16Definitions+0,X
|1BC9B6| STA.w $1006,Y

|1BC9B9| LDA.l Map16Definitions+2,X
|1BC9BD| STA.w $1008,Y

|1BC9C0| LDA.l Map16Definitions+4,X
|1BC9C4| STA.w $100E,Y

|1BC9C7| LDA.l Map16Definitions+6,X
|1BC9CB| STA.w $1010,Y

|1BC9CE| LDA.w #$FFFF
|1BC9D1| STA.w $1012,Y

|1BC9D4| TYA
|1BC9D5| CLC
|1BC9D6| ADC.w #$0010
|1BC9D9| STA.w $1000

|1BC9DC| PLX

|1BC9DD| RTL

;===================================================================================================
; Extremely important routine related to tile map
; X = Index of tile - exits +2
; A = New tile - exits +1
;===================================================================================================
UpdateMapWithStripes:
|1BC9DE| PHA

|1BC9DF| STA.l $7E2000,X

|1BC9E3| PHX

|1BC9E4| ASL A
|1BC9E5| ASL A
|1BC9E6| ASL A
|1BC9E7| STA.b $0C

|1BC9E9| TXA
|1BC9EA| CLC
|1BC9EB| ADC.w #$0000
|1BC9EE| STA.b $00

; Holds VRAM address
|1BC9F0| STZ.b $02

|1BC9F2| AND.w #$003F
|1BC9F5| CMP.w #$0020
|1BC9F8| BCC .dont_adjust_vadd

|1BC9FA| LDA.w #$0400
|1BC9FD| STA.b $02

.dont_adjust_vadd
|1BC9FF| LDA.b $00
|1BCA01| AND.w #$0FFF
|1BCA04| CMP.w #$0800
|1BCA07| BCC .no_index_overflow

|1BCA09| LDA.b $02
|1BCA0B| ADC.w #$07FF
|1BCA0E| STA.b $02

.no_index_overflow
|1BCA10| LDA.b $00
|1BCA12| AND.w #$001F
|1BCA15| ADC.b $02
|1BCA17| STA.b $02

|1BCA19| LDA.b $00
|1BCA1B| AND.w #$0780
|1BCA1E| LSR A
|1BCA1F| ADC.b $02
|1BCA21| STA.b $02

;---------------------------------------------------------------------------------------------------

; build stripes
|1BCA23| LDY.w $1000

|1BCA26| XBA
|1BCA27| STA.w $1002,Y

|1BCA2A| LDA.b $02
|1BCA2C| CLC
|1BCA2D| ADC.w #$0020
|1BCA30| XBA
|1BCA31| STA.w $100A,Y

|1BCA34| LDA.w #$0300
|1BCA37| STA.w $1004,Y
|1BCA3A| STA.w $100C,Y

|1BCA3D| LDX.b $0C

|1BCA3F| LDA.l Map16Definitions+0,X
|1BCA43| STA.w $1006,Y

|1BCA46| LDA.l Map16Definitions+2,X
|1BCA4A| STA.w $1008,Y

|1BCA4D| LDA.l Map16Definitions+4,X
|1BCA51| STA.w $100E,Y

|1BCA54| LDA.l Map16Definitions+6,X
|1BCA58| STA.w $1010,Y

|1BCA5B| TYA
|1BCA5C| CLC
|1BCA5D| ADC.w #$0010
|1BCA60| STA.w $1000

|1BCA63| PLX
|1BCA64| INX
|1BCA65| INX

|1BCA66| PLA
|1BCA67| INC A

|1BCA68| RTS

;===================================================================================================

FindMap16VRAMAddress:
|1BCA69| STZ.b $02

|1BCA6B| LDA.b $00
|1BCA6D| AND.w #$003F
|1BCA70| CMP.w #$0020
|1BCA73| BCC .dont_adjust_vadd

|1BCA75| LDA.w #$0400
|1BCA78| STA.b $02

.dont_adjust_vadd
|1BCA7A| LDA.b $00
|1BCA7C| AND.w #$0FFF
|1BCA7F| CMP.w #$0800
|1BCA82| BCC .no_index_overflow

|1BCA84| LDA.b $02
|1BCA86| ADC.w #$07FF
|1BCA89| STA.b $02

.no_index_overflow
|1BCA8B| LDA.b $00
|1BCA8D| AND.w #$001F
|1BCA90| ADC.b $02
|1BCA92| STA.b $02

|1BCA94| LDA.b $00
|1BCA96| AND.w #$0780
|1BCA99| LSR A
|1BCA9A| ADC.b $02
|1BCA9C| STA.b $02

|1BCA9E| RTS

;===================================================================================================

CreateTurtleRockPortal:
|1BCA9F| REP #$30

|1BCAA1| LDA.w #$0212 ; MAP16.0212 : Portal
|1BCAA4| LDX.w #$0720
|1BCAA7| STA.l $7E2000,X

|1BCAAB| JSL MemorizeMap16Change
|1BCAAF| JSL DrawMap16

|1BCAB3| SEP #$30

|1BCAB5| LDA.b #$01
|1BCAB7| STA.b $14

|1BCAB9| RTL

;===================================================================================================

pool EntranceCutscene

.vectors
|1BCABA| dw EntranceCutscene_PoD
|1BCABC| dw EntranceCutscene_Skull
|1BCABE| dw EntranceCutscene_Mire
|1BCAC0| dw EntranceCutscene_TurtleRock
|1BCAC2| dw EntranceCutscene_GanonsTower

endpool

;---------------------------------------------------------------------------------------------------

EntranceCutscene:
|1BCAC4| STA.w $02E4
|1BCAC7| STA.w $0FC1
|1BCACA| STA.w $0710

|1BCACD| DEC A
|1BCACE| ASL A
|1BCACF| TAX

|1BCAD0| JSR (.vectors,X)

|1BCAD3| RTL

;===================================================================================================

pool EntranceCutscene_PoD

.vectors
|1BCAD4| dw AnimateEntrance_PoD_step1
|1BCAD6| dw AnimateEntrance_PoD_step2
|1BCAD8| dw AnimateEntrance_PoD_step3
|1BCADA| dw AnimateEntrance_PoD_step4
|1BCADC| dw AnimateEntrance_PoD_step5

endpool

;---------------------------------------------------------------------------------------------------

EntranceCutscene_PoD:
|1BCADE| LDA.b $B0
|1BCAE0| ASL A
|1BCAE1| TAX

|1BCAE2| JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_PoD_step1:
|1BCAE5| INC.b $C8

|1BCAE7| LDA.b $C8
|1BCAE9| CMP.b #$40
|1BCAEB| BNE .exit

|1BCAED| JSR OverworldEntrance_AdvanceAndBoom

; PoD overlay
|1BCAF0| LDA.l $7EF2DE
|1BCAF4| ORA.b #$20
|1BCAF6| STA.l $7EF2DE

|1BCAFA| REP #$30

|1BCAFC| LDX.w #$01E6
|1BCAFF| LDA.w #$0E2B ; MAP16.0E2B
|1BCB02| JSL DrawPersistentMap16

|1BCB06| LDX.w #$02EA
|1BCB09| LDA.w #$0E2A ; MAP16.0E2A
|1BCB0C| JSR UpdateMapWithStripes

|1BCB0F| LDX.w #$026A
|1BCB12| LDA.w #$0E20 ; MAP16.0E20
|1BCB15| JSR UpdateMapWithStripes

.modify_bottom_stair_part
|1BCB18| LDX.w #$02EA

.modify_specific_stair_part
|1BCB1B| JSR UpdateMapWithStripes

|1BCB1E| LDA.w #$FFFF
|1BCB21| STA.w $1012,Y

|1BCB24| SEP #$30

|1BCB26| LDA.b #$01
|1BCB28| STA.b $14

.exit
|1BCB2A| RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_PoD_step2:
|1BCB2B| INC.b $C8

|1BCB2D| LDA.b $C8
|1BCB2F| CMP.b #$20
|1BCB31| BNE .exit

|1BCB33| JSR OverworldEntrance_AdvanceAndBoom

|1BCB36| REP #$30

|1BCB38| LDX.w #$026A
|1BCB3B| LDA.w #$0E22 ; MAP16.0E22
|1BCB3E| JSL DrawPersistentMap16

|1BCB42| LDA.w #$0E23 ; MAP16.0E23
|1BCB45| BRA .modify_bottom_stair_part

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_PoD_step3:
|1BCB47| INC.b $C8

|1BCB49| LDA.b $C8
|1BCB4B| CMP.b #$20
|1BCB4D| BNE .exit

|1BCB4F| JSR OverworldEntrance_AdvanceAndBoom

|1BCB52| REP #$30

|1BCB54| LDX.w #$026A
|1BCB57| LDA.w #$0E24 ; MAP16.0E24
|1BCB5A| JSL DrawPersistentMap16

|1BCB5E| LDX.w #$02EA
|1BCB61| LDA.w #$0E25 ; MAP16.0E25
|1BCB64| JSR UpdateMapWithStripes

|1BCB67| LDX.w #$036A
|1BCB6A| BRA .modify_specific_stair_part

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_PoD_step4:
|1BCB6C| INC.b $C8

|1BCB6E| LDA.b $C8
|1BCB70| CMP.b #$20
|1BCB72| BNE .exit

|1BCB74| JSR OverworldEntrance_AdvanceAndBoom

|1BCB77| REP #$30

|1BCB79| LDX.w #$026A
|1BCB7C| LDA.w #$0E27 ; MAP16.0E27
|1BCB7F| JSL DrawPersistentMap16

|1BCB83| LDX.w #$02EA
|1BCB86| LDA.w #$0E28 ; MAP16.0E28
|1BCB89| JSR UpdateMapWithStripes

|1BCB8C| LDX.w #$036A
|1BCB8F| BRA .modify_specific_stair_part

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_PoD_step5:
|1BCB91| INC.b $C8

|1BCB93| LDA.b $C8
|1BCB95| CMP.b #$20
|1BCB97| BNE .exit

|1BCB99| JMP.w OverworldEntrance_PlayJingle

;===================================================================================================

pool EntranceCutscene_Skull

.vectors
|1BCB9C| dw AnimateEntrance_Skull_step1
|1BCB9E| dw AnimateEntrance_Skull_step2
|1BCBA0| dw AnimateEntrance_Skull_step3
|1BCBA2| dw AnimateEntrance_Skull_step4
|1BCBA4| dw AnimateEntrance_Skull_step5

endpool

;---------------------------------------------------------------------------------------------------

EntranceCutscene_Skull:
|1BCBA6| LDA.b $B0
|1BCBA8| ASL A
|1BCBA9| TAX

|1BCBAA| JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_Skull_step1:
|1BCBAD| INC.b $C8

|1BCBAF| LDA.b $C8
|1BCBB1| CMP.b #$04
|1BCBB3| BNE .exit

|1BCBB5| INC.b $B0

|1BCBB7| STZ.b $C8

|1BCBB9| REP #$30

|1BCBBB| LDX.w #$0812
|1BCBBE| LDA.w #$0E00 ; MAP16.0E00
|1BCBC1| JSL DrawPersistentMap16

|1BCBC5| LDX.w #$0814
|1BCBC8| LDA.w #$0E00 ; MAP16.0E00
|1BCBCB| JSR UpdateMapWithStripes

|1BCBCE| LDA.w #$FFFF
|1BCBD1| STA.w $1012,Y

;---------------------------------------------------------------------------------------------------

|1BCBD4| SEP #$30

|1BCBD6| LDX.b $8A

|1BCBD8| LDA.l $7EF280,X
|1BCBDC| ORA.b #$20
|1BCBDE| STA.l $7EF280,X

|1BCBE2| SEP #$30 ; redundant

|1BCBE4| LDA.b #$01
|1BCBE6| STA.b $14

|1BCBE8| LDA.b #$16 ; SFX3.16
|1BCBEA| STA.w $012F

.exit
|1BCBED| RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_Skull_step2:
|1BCBEE| INC.b $C8

|1BCBF0| LDA.b $C8
|1BCBF2| CMP.b #$0C
|1BCBF4| BNE .exit

|1BCBF6| INC.b $B0

|1BCBF8| STZ.b $C8

|1BCBFA| REP #$30

|1BCBFC| LDX.w #$0790
|1BCBFF| LDA.w #$0E01 ; MAP16.0E01
|1BCC02| JSL DrawPersistentMap16

|1BCC06| LDX.w #$0792
|1BCC09| LDA.w #$0E02 ; MAP16.0E02
|1BCC0C| JSR UpdateMapWithStripes
|1BCC0F| JSR UpdateMapWithStripes

;===================================================================================================

; Alters the tile, finishes, and plays a THUD
#OverworldEntrance_FinishAndThud:
|1BCC12| JSR UpdateMapWithStripes

|1BCC15| LDA.w #$FFFF
|1BCC18| STA.w $1012,Y

|1BCC1B| SEP #$30

|1BCC1D| LDA.b #$01
|1BCC1F| STA.b $14

|1BCC21| LDA.b #$16 ; SFX3.16
|1BCC23| STA.w $012F

.exit_b
|1BCC26| RTS

;===================================================================================================

#AnimateEntrance_Skull_step3:
|1BCC27| INC.b $C8

|1BCC29| LDA.b $C8
|1BCC2B| CMP.b #$0C
|1BCC2D| BNE .exit

|1BCC2F| INC.b $B0

|1BCC31| STZ.b $C8

|1BCC33| REP #$30

|1BCC35| LDX.w #$0710
|1BCC38| LDA.w #$0E01 ; MAP16.0E01
|1BCC3B| JSL DrawPersistentMap16

|1BCC3F| LDX.w #$0712
|1BCC42| LDA.w #$0E02 ; MAP16.0E02
|1BCC45| JSR UpdateMapWithStripes
|1BCC48| JSR UpdateMapWithStripes

|1BCC4B| BRA OverworldEntrance_FinishAndThud

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_Skull_step4:
|1BCC4D| INC.b $C8

|1BCC4F| LDA.b $C8
|1BCC51| CMP.b #$0C
|1BCC53| BNE .exit

|1BCC55| INC.b $B0

|1BCC57| STZ.b $C8

|1BCC59| REP #$30

|1BCC5B| LDX.w #$0590
|1BCC5E| LDA.w #$0E0B ; MAP16.0E0B
|1BCC61| JSL DrawPersistentMap16

|1BCC65| LDX.w #$0596
|1BCC68| LDA.w #$0E0C ; MAP16.0E0C
|1BCC6B| JSR UpdateMapWithStripes

|1BCC6E| LDX.w #$0610
|1BCC71| LDA.w #$0E07 ; MAP16.0E07
|1BCC74| JSR UpdateMapWithStripes
|1BCC77| JSR UpdateMapWithStripes
|1BCC7A| JSR UpdateMapWithStripes
|1BCC7D| JSR UpdateMapWithStripes

|1BCC80| LDX.w #$0692
|1BCC83| LDA.w #$0E05 ; MAP16.0E05
|1BCC86| JSR UpdateMapWithStripes

|1BCC89| JMP.w OverworldEntrance_FinishAndThud

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_Skull_step5:
|1BCC8C| INC.b $C8

|1BCC8E| LDA.b $C8
|1BCC90| CMP.b #$0C
|1BCC92| BNE .exit_b

|1BCC94| INC.b $B0

|1BCC96| STZ.b $C8

|1BCC98| REP #$30

|1BCC9A| LDX.w #$0590
|1BCC9D| LDA.w #$0E0D ; MAP16.0E0D
|1BCCA0| JSL DrawPersistentMap16

|1BCCA4| LDX.w #$0596
|1BCCA7| LDA.w #$0E0E ; MAP16.0E0E
|1BCCAA| JSR UpdateMapWithStripes

|1BCCAD| LDX.w #$0610
|1BCCB0| JSR UpdateMapWithStripes
|1BCCB3| JSR UpdateMapWithStripes
|1BCCB6| JSR UpdateMapWithStripes
|1BCCB9| JSR UpdateMapWithStripes

|1BCCBC| LDX.w #$0692
|1BCCBF| JSR UpdateMapWithStripes
|1BCCC2| JSR OverworldEntrance_FinishAndThud

|1BCCC5| JMP.w OverworldEntrance_PlayJingle

;===================================================================================================

pool EntranceCutscene_Mire

.vectors
|1BCCC8| dw AnimateEntrance_Mire_step1
|1BCCCA| dw AnimateEntrance_Mire_step2
|1BCCCC| dw AnimateEntrance_Mire_step2
|1BCCCE| dw AnimateEntrance_Mire_step3
|1BCCD0| dw AnimateEntrance_Mire_step4
|1BCCD2| dw AnimateEntrance_Mire_step5

endpool

;---------------------------------------------------------------------------------------------------

EntranceCutscene_Mire:
|1BCCD4| LDA.b $B0
|1BCCD6| CMP.b #$02
|1BCCD8| BCC .no_shake

|1BCCDA| REP #$20

|1BCCDC| LDA.b $1A
|1BCCDE| AND.w #$0001
|1BCCE1| ASL A
|1BCCE2| TAX

|1BCCE3| LDA.l CutsceneShake_Y,X
|1BCCE7| STA.w $011A

|1BCCEA| LDA.l CutsceneShake_X,X
|1BCCEE| STA.w $011C

|1BCCF1| SEP #$20

.no_shake
|1BCCF3| LDA.b $B0
|1BCCF5| ASL A
|1BCCF6| TAX

|1BCCF7| JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

pool AnimateEntrance_Mire_step1

.shake_masks
|1BCCFA| db $FF, $F7, $F7, $FB, $EE, $EE, $EE, $EE
|1BCD02| db $EE, $EE, $AA, $AA, $AA, $AA, $AA, $AA
|1BCD0A| db $AA, $88, $88, $88, $88, $80, $80, $80
|1BCD12| db $80, $80

endpool

;---------------------------------------------------------------------------------------------------

AnimateEntrance_Mire_step1:
|1BCD14| INC.b $C8

|1BCD16| LDA.b $C8
|1BCD18| CMP.b #$20
|1BCD1A| BCC .exit

|1BCD1C| SEC ; [USELESS]
|1BCD1D| SBC.b #$20
|1BCD1F| CMP.b #$CF
|1BCD21| BNE .dont_advance_step

|1BCD23| INC.b $B0

|1BCD25| STZ.b $C8

.dont_advance_step
|1BCD27| PHA

|1BCD28| AND.b #$07
|1BCD2A| ASL A
|1BCD2B| TAY

|1BCD2C| PLA
|1BCD2D| AND.b #$F8
|1BCD2F| LSR A
|1BCD30| LSR A
|1BCD31| LSR A
|1BCD32| TAX

|1BCD33| LDA.w BitMasks+1,Y

|1BCD36| STZ.b $1D

|1BCD38| AND.l .shake_masks,X
|1BCD3C| BEQ .exit

|1BCD3E| INC.b $1D

.exit
|1BCD40| RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_Mire_step2:
|1BCD41| INC.b $C8

|1BCD43| LDA.b $C8
|1BCD45| CMP.b #$10
|1BCD47| BNE .delay_ambient_sfx

|1BCD49| INC.b $B0

|1BCD4B| LDY.b #$07 ; SFX1.07
|1BCD4D| STY.w $012D

.delay_ambient_sfx
|1BCD50| CMP.b #$48
|1BCD52| BNE .exit_b

|1BCD54| JSR OverworldEntrance_AdvanceAndBoom

|1BCD57| LDX.b $8A

|1BCD59| LDA.l $7EF280,X
|1BCD5D| ORA.b #$20
|1BCD5F| STA.l $7EF280,X

|1BCD63| REP #$30

|1BCD65| LDX.w #$0622
|1BCD68| LDA.w #$0E42 ; MAP16.0E42
|1BCD6B| JSL DrawPersistentMap16

|1BCD6F| LDX.w #$0624
|1BCD72| LDA.w #$0E43 ; MAP16.0E43

.continue_many_replacements
|1BCD75| JSR UpdateMapWithStripes
|1BCD78| JSR UpdateMapWithStripes
|1BCD7B| JSR UpdateMapWithStripes

|1BCD7E| LDX.w #$06A2
|1BCD81| JSR UpdateMapWithStripes
|1BCD84| JSR UpdateMapWithStripes
|1BCD87| JSR UpdateMapWithStripes
|1BCD8A| JSR UpdateMapWithStripes

|1BCD8D| LDX.w #$0722
|1BCD90| JSR UpdateMapWithStripes
|1BCD93| JSR UpdateMapWithStripes
|1BCD96| JSR UpdateMapWithStripes
|1BCD99| JSR UpdateMapWithStripes

|1BCD9C| LDA.w #$FFFF
|1BCD9F| STA.w $1012,Y

|1BCDA2| SEP #$30

|1BCDA4| LDA.b #$01
|1BCDA6| STA.b $14

.exit_b
|1BCDA8| RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_Mire_step3:
|1BCDA9| INC.b $C8

|1BCDAB| LDA.b $C8
|1BCDAD| CMP.b #$48
|1BCDAF| BNE .exit_b

|1BCDB1| JSR OverworldEntrance_AdvanceAndBoom

|1BCDB4| REP #$30

|1BCDB6| LDX.w #$05A2
|1BCDB9| LDA.w #$0E4E ; MAP16.0E4E
|1BCDBC| JSL DrawPersistentMap16

|1BCDC0| LDX.w #$05A4
|1BCDC3| LDA.w #$0E4F ; MAP16.0E4F

.continue_many_many_replacements
|1BCDC6| JSR UpdateMapWithStripes
|1BCDC9| JSR UpdateMapWithStripes
|1BCDCC| JSR UpdateMapWithStripes

|1BCDCF| LDX.w #$0622
|1BCDD2| JSR UpdateMapWithStripes
|1BCDD5| BRA .continue_many_replacements

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_Mire_step4:
|1BCDD7| INC.b $C8

|1BCDD9| LDA.b $C8
|1BCDDB| CMP.b #$50
|1BCDDD| BNE .exit_b

|1BCDDF| JSR OverworldEntrance_AdvanceAndBoom

|1BCDE2| REP #$30

|1BCDE4| LDX.w #$0522
|1BCDE7| LDA.w #$0E5E ; MAP16.0E5E
|1BCDEA| JSL DrawPersistentMap16

|1BCDEE| LDX.w #$0524
|1BCDF1| LDA.w #$0E5F ; MAP16.0E5F
|1BCDF4| JSR UpdateMapWithStripes
|1BCDF7| JSR UpdateMapWithStripes
|1BCDFA| JSR UpdateMapWithStripes

|1BCDFD| LDX.w #$05A2
|1BCE00| JSR UpdateMapWithStripes

|1BCE03| BRA .continue_many_many_replacements

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_Mire_step5:
|1BCE05| INC.b $C8

|1BCE07| LDA.b $C8
|1BCE09| CMP.b #$80
|1BCE0B| BNE .exit_c

|1BCE0D| JSR OverworldEntrance_PlayJingle

|1BCE10| LDA.b #$05 ; SFX1.05
|1BCE12| STA.w $012D

.exit_c
|1BCE15| RTS

;===================================================================================================

pool EntranceCutscene_TurtleRock

.vectors
|1BCE16| dw AnimateEntrance_TurtleRock_step1
|1BCE18| dw AnimateEntrance_TurtleRock_step2
|1BCE1A| dw AnimateEntrance_TurtleRock_step3
|1BCE1C| dw AnimateEntrance_TurtleRock_step4
|1BCE1E| dw AnimateEntrance_TurtleRock_step5
|1BCE20| dw AnimateEntrance_TurtleRock_step6
|1BCE22| dw AnimateEntrance_TurtleRock_step7
|1BCE24| dw AnimateEntrance_TurtleRock_step8
|1BCE26| dw OverworldEntrance_PlayJingle

endpool

;---------------------------------------------------------------------------------------------------

EntranceCutscene_TurtleRock:
|1BCE28| REP #$20

; Shake on a frame rule
|1BCE2A| LDA.b $1A
|1BCE2C| AND.w #$0001
|1BCE2F| ASL A
|1BCE30| TAX

|1BCE31| LDA.l CutsceneShake_Y,X
|1BCE35| STA.w $011A

|1BCE38| LDA.l CutsceneShake_X,X
|1BCE3C| STA.w $011C

|1BCE3F| SEP #$20

|1BCE41| LDA.b $B0
|1BCE43| ASL A
|1BCE44| TAX

|1BCE45| JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_TurtleRock_step1:
|1BCE48| LDX.b $8A

|1BCE4A| LDA.l $7EF280,X
|1BCE4E| ORA.b #$20
|1BCE50| STA.l $7EF280,X

|1BCE54| LDA.b #$00
|1BCE56| JSL ApplyGrayscaleFixed_Parameterized

|1BCE5A| LDA.b #$10
|1BCE5C| BRA .step_parameterized

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_TurtleRock_step2:
|1BCE5E| LDA.b #$14
|1BCE60| BRA .step_parameterized

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_TurtleRock_step3:
|1BCE62| LDA.b #$18
|1BCE64| BRA .step_parameterized

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_TurtleRock_step4:
|1BCE66| LDA.b #$1C

;---------------------------------------------------------------------------------------------------

.step_parameterized
|1BCE68| STA.w $1002
|1BCE6B| STZ.w $1003

|1BCE6E| REP #$20

|1BCE70| LDA.w #$FE47
|1BCE73| STA.w $1004

|1BCE76| LDA.w #$01E3
|1BCE79| STA.w $1006

|1BCE7C| SEP #$20

|1BCE7E| LDA.b #$FF
|1BCE80| STA.w $1008

|1BCE83| INC.b $B0

|1BCE85| LDA.b #$01
|1BCE87| STA.b $14

|1BCE89| RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_TurtleRock_step5:
|1BCE8A| REP #$20

|1BCE8C| LDX.b #$0E
|1BCE8E| LDA.w #$0000 ; RGB: #000000

.next_color
|1BCE91| STA.l $7EC5B0,X
|1BCE95| STA.l $7EC3D0,X

|1BCE99| DEX
|1BCE9A| DEX
|1BCE9B| BPL .next_color

|1BCE9D| LDA.b $E8
|1BCE9F| STA.b $E6

|1BCEA1| LDA.b $E2
|1BCEA3| STA.b $E0

|1BCEA5| SEP #$20

|1BCEA7| INC.b $B0
|1BCEA9| INC.b $15

|1BCEAB| RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_TurtleRock_step6:
|1BCEAC| JSR OverworldEntrance_DrawManyTR

; BG1 on subscreen
|1BCEAF| LDA.b #$01
|1BCEB1| STA.b $1D

; Use subscreen for color math
|1BCEB3| LDA.b #$02
|1BCEB5| STA.b $99

; Enable color math on BG2 and CGRAM0
|1BCEB7| LDA.b #$22
|1BCEB9| STA.b $9A

|1BCEBB| REP #$30

|1BCEBD| LDX.w #$0000

.next_stripe
|1BCEC0| LDA.w $1002,X
|1BCEC3| ORA.w #$0010
|1BCEC6| STA.w $1002,X

|1BCEC9| LDA.w $1006,X
|1BCECC| CMP.w #$08AA
|1BCECF| BNE .no_replace_1

|1BCED1| LDA.w #$01E3
|1BCED4| STA.w $1006,X

.no_replace_1
|1BCED7| LDA.w $1008,X
|1BCEDA| CMP.w #$08AA
|1BCEDD| BNE .no_replace_2

|1BCEDF| LDA.w #$01E3
|1BCEE2| STA.w $1008,X

.no_replace_2
|1BCEE5| INX ; +8
|1BCEE6| INX
|1BCEE7| INX
|1BCEE8| INX
|1BCEE9| INX
|1BCEEA| INX
|1BCEEB| INX
|1BCEEC| INX
|1BCEED| CPX.b $00
|1BCEEF| BNE .next_stripe

|1BCEF1| SEP #$30

|1BCEF3| STZ.b $C8

|1BCEF5| INC.b $B0

|1BCEF7| RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_TurtleRock_step7:
|1BCEF8| LDA.b $1A
|1BCEFA| LSR A
|1BCEFB| BCS .exit

|1BCEFD| LDA.b $C8
|1BCEFF| AND.b #$07
|1BCF01| BNE .skip_sfx7

|1BCF03| JSL PaletteFilter_RestoreTRock

|1BCF07| LDA.b #$02 ; SFX3.02
|1BCF09| STA.w $012F

.skip_sfx7
|1BCF0C| DEC.b $C8
|1BCF0E| BNE .exit

|1BCF10| LDA.b #$30
|1BCF12| STA.b $C8

|1BCF14| INC.b $B0

.exit
|1BCF16| RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_TurtleRock_step8:
|1BCF17| LDA.b $1A
|1BCF19| LSR A
|1BCF1A| BCS .skip_sfx8

|1BCF1C| LDA.b $C8
|1BCF1E| AND.b #$07
|1BCF20| BNE .skip_sfx8

|1BCF22| LDA.b #$02 ; SFX3.02
|1BCF24| STA.w $012F

.skip_sfx8
|1BCF27| DEC.b $C8
|1BCF29| BNE .exit

|1BCF2B| JSR OverworldEntrance_DrawManyTR

|1BCF2E| STZ.b $1D

|1BCF30| LDA.b #$82
|1BCF32| STA.b $99

|1BCF34| LDA.b #$20
|1BCF36| STA.b $9A

|1BCF38| INC.b $B0

|1BCF3A| LDA.b #$05 ; SFX1.05
|1BCF3C| STA.w $012D

|1BCF3F| RTS

;===================================================================================================

OverworldEntrance_PlayJingle:
|1BCF40| LDA.b #$1B ; SFX3.1B
|1BCF42| STA.w $012F

|1BCF45| STZ.w $04C6
|1BCF48| STZ.b $B0
|1BCF4A| STZ.w $0710

|1BCF4D| STZ.w $02E4

|1BCF50| STZ.w $0FC1

|1BCF53| STZ.w $011A
|1BCF56| STZ.w $011B
|1BCF59| STZ.w $011C
|1BCF5C| STZ.w $011D

|1BCF5F| RTS

;===================================================================================================

OverworldEntrance_DrawManyTR:
|1BCF60| REP #$30

|1BCF62| LDX.w #$099E
|1BCF65| LDA.w #$0E72 ; MAP16.0E72
|1BCF68| JSL DrawPersistentMap16

|1BCF6C| LDX.w #$09A0
|1BCF6F| LDA.w #$0E73 ; MAP16.0E73
|1BCF72| JSR UpdateMapWithStripes
|1BCF75| JSR UpdateMapWithStripes
|1BCF78| JSR UpdateMapWithStripes

|1BCF7B| LDX.w #$0A1E
|1BCF7E| JSR UpdateMapWithStripes
|1BCF81| JSR UpdateMapWithStripes
|1BCF84| JSR UpdateMapWithStripes
|1BCF87| JSR UpdateMapWithStripes

|1BCF8A| LDX.w #$0A9E
|1BCF8D| JSR UpdateMapWithStripes
|1BCF90| JSR UpdateMapWithStripes
|1BCF93| JSR UpdateMapWithStripes
|1BCF96| JSR UpdateMapWithStripes

|1BCF99| LDX.w #$0B1E
|1BCF9C| JSR UpdateMapWithStripes
|1BCF9F| JSR UpdateMapWithStripes
|1BCFA2| JSR UpdateMapWithStripes
|1BCFA5| JSR UpdateMapWithStripes

|1BCFA8| LDA.w #$FFFF
|1BCFAB| STA.w $1012,Y

|1BCFAE| TYA
|1BCFAF| CLC
|1BCFB0| ADC.w #$0010
|1BCFB3| STA.b $00

|1BCFB5| SEP #$30

|1BCFB7| LDA.b #$01
|1BCFB9| STA.b $14
|1BCFBB| STA.w $0710

|1BCFBE| RTS

;===================================================================================================

pool EntranceCutscene_GanonsTower

.vectors
|1BCFBF| dw AnimateEntrance_GanonsTower_step01
|1BCFC1| dw AnimateEntrance_GanonsTower_step01
|1BCFC3| dw AnimateEntrance_GanonsTower_step02
|1BCFC5| dw AnimateEntrance_GanonsTower_step03
|1BCFC7| dw AnimateEntrance_GanonsTower_step04
|1BCFC9| dw AnimateEntrance_GanonsTower_step05
|1BCFCB| dw AnimateEntrance_GanonsTower_step06
|1BCFCD| dw AnimateEntrance_GanonsTower_step07
|1BCFCF| dw AnimateEntrance_GanonsTower_step08
|1BCFD1| dw AnimateEntrance_GanonsTower_step09
|1BCFD3| dw AnimateEntrance_GanonsTower_step10
|1BCFD5| dw AnimateEntrance_GanonsTower_step11
|1BCFD7| dw AnimateEntrance_GanonsTower_step12

endpool

;---------------------------------------------------------------------------------------------------

EntranceCutscene_GanonsTower:
|1BCFD9| LDA.b $B0
|1BCFDB| ASL A
|1BCFDC| TAX

|1BCFDD| JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

AnimateEntrance_GanonsTower_step01:
|1BCFE0| LDX.b $8A

|1BCFE2| LDA.l $7EF280,X
|1BCFE6| ORA.b #$20
|1BCFE8| STA.l $7EF280,X

|1BCFEC| JSL FlashTowerAfterCrystals

|1BCFF0| RTS

;---------------------------------------------------------------------------------------------------

AnimateEntrance_GanonsTower_step02:
|1BCFF1| JSL FlashTowerAfterCrystals

|1BCFF5| LDA.b $1D
|1BCFF7| BNE .exit

|1BCFF9| INC.b $1D
|1BCFFB| INC.b $C8

|1BCFFD| LDA.b $C8
|1BCFFF| CMP.b #$03
|1BD001| BNE .skip_sfx

|1BD003| STZ.b $C8

|1BD005| LDA.b #$07 ; SFX1.07
|1BD007| STA.w $012D

|1BD00A| RTS

;---------------------------------------------------------------------------------------------------

.skip_sfx
|1BD00B| STZ.b $B0

.exit
|1BD00D| RTS

;===================================================================================================
; Advances the step and does the explosion SFX
;===================================================================================================
OverworldEntrance_AdvanceAndBoom:
|1BD00E| INC.b $B0
|1BD010| STZ.b $C8

|1BD012| LDA.b #$0C ; SFX2.0C
|1BD014| STA.w $012E

|1BD017| LDA.b #$07 ; SFX3.07
|1BD019| STA.w $012F

|1BD01C| RTS

;---------------------------------------------------------------------------------------------------

AnimateEntrance_GanonsTower_step03:
|1BD01D| INC.b $C8

|1BD01F| LDA.b $C8
|1BD021| CMP.b #$30
|1BD023| BNE .exit_a

|1BD025| JSR OverworldEntrance_AdvanceAndBoom

|1BD028| REP #$30

|1BD02A| LDX.w #$045E
|1BD02D| LDA.w #$0E82 ; MAP16.0E82
|1BD030| JSL DrawPersistentMap16

|1BD034| LDX.w #$0460
|1BD037| LDA.w #$0E83 ; MAP16.0E83
|1BD03A| JSR UpdateMapWithStripes

|1BD03D| LDX.w #$04DE
|1BD040| LDA.w #$0E9C ; MAP16.0E9C
|1BD043| JSR UpdateMapWithStripes
|1BD046| JSR UpdateMapWithStripes

|1BD049| LDA.w #$0E84 ; MAP16.0E84

; TODO where is this
.draw_at_055E
|1BD04C| LDX.w #$055E

.draw2_advance
|1BD04F| JSR UpdateMapWithStripes

.draw1_advance
|1BD052| JSR UpdateMapWithStripes

|1BD055| LDA.w #$FFFF
|1BD058| STA.w $1012,Y

|1BD05B| SEP #$30

|1BD05D| LDA.b #$01
|1BD05F| STA.b $14

.exit_a
|1BD061| RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step04:
|1BD062| INC.b $C8
|1BD064| LDA.b $C8
|1BD066| CMP.b #$30
|1BD068| BNE .exit_a

|1BD06A| JSR OverworldEntrance_AdvanceAndBoom

|1BD06D| REP #$30

|1BD06F| LDX.w #$045E
|1BD072| LDA.w #$0E86 ; MAP16.0E86
|1BD075| JSL DrawPersistentMap16

|1BD079| LDX.w #$0460
|1BD07C| LDA.w #$0E87 ; MAP16.0E87
|1BD07F| JSR UpdateMapWithStripes

|1BD082| LDX.w #$04DE
|1BD085| LDA.w #$0E88 ; MAP16.0E88
|1BD088| JSR UpdateMapWithStripes
|1BD08B| JSR UpdateMapWithStripes

|1BD08E| LDA.w #$0E8A ; MAP16.0E8A
|1BD091| BRA .draw_at_055E

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step05:
|1BD093| INC.b $C8

|1BD095| LDA.b $C8
|1BD097| CMP.b #$34
|1BD099| BNE .exit_b

|1BD09B| JSR OverworldEntrance_AdvanceAndBoom

|1BD09E| REP #$30

|1BD0A0| LDX.w #$045E
|1BD0A3| LDA.w #$0E8C ; MAP16.0E8C
|1BD0A6| JSL DrawPersistentMap16

|1BD0AA| LDX.w #$0460
|1BD0AD| LDA.w #$0E8D ; MAP16.0E8D
|1BD0B0| JSR UpdateMapWithStripes

|1BD0B3| LDX.w #$04DE
|1BD0B6| LDA.w #$0E8E ; MAP16.0E8E
|1BD0B9| JSR UpdateMapWithStripes

|1BD0BC| LDA.w #$0E8E ; MAP16.0E8E
|1BD0BF| JSR UpdateMapWithStripes

|1BD0C2| LDX.w #$055E
|1BD0C5| LDA.w #$0E8F ; MAP16.0E8F
|1BD0C8| JSR UpdateMapWithStripes

|1BD0CB| LDA.w #$0E8F ; MAP16.0E8F
|1BD0CE| JSR UpdateMapWithStripes

|1BD0D1| LDA.w #$FFFF
|1BD0D4| STA.w $1012,Y

|1BD0D7| SEP #$30

|1BD0D9| LDA.b #$01
|1BD0DB| STA.b $14

.exit_b
|1BD0DD| RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step06:
|1BD0DE| INC.b $C8

|1BD0E0| LDA.b $C8
|1BD0E2| CMP.b #$20
|1BD0E4| BNE .exit_b

|1BD0E6| JSR OverworldEntrance_AdvanceAndBoom

|1BD0E9| REP #$30

|1BD0EB| LDX.w #$045E
|1BD0EE| LDA.w #$0E90 ; MAP16.0E90
|1BD0F1| JSL DrawPersistentMap16

|1BD0F5| LDX.w #$0460
|1BD0F8| LDA.w #$0E91 ; MAP16.0E91
|1BD0FB| JSR UpdateMapWithStripes

|1BD0FE| LDX.w #$04DE
|1BD101| LDA.w #$0E92 ; MAP16.0E92
|1BD104| JMP.w .draw2_advance

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step07:
|1BD107| INC.b $C8

|1BD109| LDA.b $C8
|1BD10B| CMP.b #$20
|1BD10D| BNE .exit_b

|1BD10F| JSR OverworldEntrance_AdvanceAndBoom

|1BD112| REP #$30

|1BD114| LDX.w #$04DE
|1BD117| LDA.w #$0E94 ; MAP16.0E94
|1BD11A| JSL DrawPersistentMap16

|1BD11E| LDX.w #$04E0
|1BD121| LDA.w #$0E95 ; MAP16.0E95
|1BD124| JMP.w .draw1_advance

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step08:
|1BD127| INC.b $C8

|1BD129| LDA.b $C8
|1BD12B| CMP.b #$20
|1BD12D| BNE .exit_b

|1BD12F| JSR OverworldEntrance_AdvanceAndBoom

|1BD132| REP #$30

|1BD134| LDX.w #$04DE
|1BD137| LDA.w #$0E96 ; MAP16.0E96
|1BD13A| JSL DrawPersistentMap16

|1BD13E| LDX.w #$04E0
|1BD141| LDA.w #$0E97 ; MAP16.0E97
|1BD144| JSR UpdateMapWithStripes

|1BD147| LDA.w #$0E98 ; MAP16.0E98
|1BD14A| JMP.w .draw_at_055E

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step09:
|1BD14D| INC.b $C8

|1BD14F| LDA.b $C8
|1BD151| CMP.b #$20
|1BD153| BNE .exit_b

|1BD155| JSR OverworldEntrance_AdvanceAndBoom

|1BD158| REP #$30

|1BD15A| LDX.w #$055E
|1BD15D| LDA.w #$0E94 ; MAP16.0E94
|1BD160| JSL DrawPersistentMap16

|1BD164| LDX.w #$0560
|1BD167| LDA.w #$0E95 ; MAP16.0E95
|1BD16A| JMP.w .draw1_advance

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step10:
|1BD16D| INC.b $C8

|1BD16F| LDA.b $C8
|1BD171| CMP.b #$20
|1BD173| BNE .exit_c

|1BD175| JSR OverworldEntrance_AdvanceAndBoom

|1BD178| REP #$30

|1BD17A| LDX.w #$055E
|1BD17D| LDA.w #$0E96 ; MAP16.0E96
|1BD180| JSL DrawPersistentMap16

|1BD184| LDX.w #$0560
|1BD187| LDA.w #$0E97 ; MAP16.0E97
|1BD18A| JSR UpdateMapWithStripes

|1BD18D| LDX.w #$05DE
|1BD190| LDA.w #$0E9A ; MAP16.0E9A
|1BD193| JSR UpdateMapWithStripes

|1BD196| LDA.w #$0E9B ; MAP16.0E9B

; TODO where is this
.draw1_at_05E0_advance
|1BD199| LDX.w #$05E0

|1BD19C| JMP.w .draw1_advance

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step11:
|1BD19F| INC.b $C8

|1BD1A1| LDA.b $C8
|1BD1A3| CMP.b #$20
|1BD1A5| BNE .exit_c

|1BD1A7| LDA.b #$05 ; SFX1.05
|1BD1A9| STA.w $012D

|1BD1AC| JSR OverworldEntrance_AdvanceAndBoom

|1BD1AF| REP #$30

|1BD1B1| LDX.w #$05DE
|1BD1B4| LDA.w #$0E94 ; MAP16.0E94
|1BD1B7| JSL DrawPersistentMap16

|1BD1BB| LDA.w #$0E95 ; MAP16.0E95
|1BD1BE| BRA .draw1_at_05E0_advance

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step12:
|1BD1C0| INC.b $C8

|1BD1C2| LDA.b $C8
|1BD1C4| CMP.b #$48
|1BD1C6| BNE .exit_c

|1BD1C8| JSR OverworldEntrance_PlayJingle

|1BD1CB| STZ.b $C8

|1BD1CD| LDA.b #$0D ; SONG 0D
|1BD1CF| STA.w $012C

|1BD1D2| LDA.b #$09 ; SFX1.09
|1BD1D4| STA.w $012D

.exit_c
|1BD1D7| RTS

;===================================================================================================
; FREE ROM: 0x40
;===================================================================================================
NULL_1BD1D8:
|1BD1D8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BD1E0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BD1E8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BD1F0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BD1F8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BD200| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BD208| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BD210| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

PaletteData:
.sprite_00
#Palettes_RedMelon:
; #RRGGBB :          F8F8F8, C83010, 388038, 50B090, 282828, F8C820, F87030
; #RRGGBB :  000000, F8F8F8, C85830, B02828, E07070, 282828, B8B8C8, 787888
|1BD218| dw          $7FFF,  $08D9,  $1E07,  $4ACA,  $14A5,  $133F,  $19DF
.sprite_00_right
|1BD226| dw  $0000,  $7FFF,  $1979,  $14B6,  $39DC,  $14A5,  $66F7,  $45EF

.sprite_01
#Palettes_BlueIce:
; #RRGGBB :          F8F8F8, 4850D0, 60B8C0, A0F8D8, 282828, 88D0F8, 7890F8
; #RRGGBB :  000000, F8F8F8, F880B0, 5068A8, 90A8E8, 282828, F8B050, B86028
|1BD236| dw          $7FFF,  $6949,  $62EC,  $6FF4,  $14A5,  $7F51,  $7E4F
.sprite_01_right
|1BD244| dw  $0000,  $7FFF,  $5A1F,  $55AA,  $76B2,  $14A5,  $2ADF,  $1597

.sprite_02
#Palettes_BlackoutRedGuard:
; #RRGGBB :          F8F8F8, B0B830, B06028, F0A068, 282828, F07880, B84048
; #RRGGBB :  000000, 282828, 282828, 282828, 282828, 282828, 282828, 282828
|1BD254| dw          $7FFF,  $1AF6,  $1596,  $369E,  $14A5,  $41FE,  $2517
|1BD262| dw  $0000,  $14A5,  $14A5,  $14A5,  $14A5,  $14A5,  $14A5,  $14A5

.sprite_03
#Palettes_GreenBlueGuard:
; #RRGGBB :          F8F8F8, D86060, B06028, F0A068, 282828, B090F8, 5070C8
; #RRGGBB :  000000, F8F8F8, C83018, 489030, 98D070, 282828, F8D038, B88820
|1BD272| dw          $7FFF,  $319B,  $1596,  $369E,  $14A5,  $7E56,  $65CA
|1BD280| dw  $0000,  $7FFF,  $0CD9,  $1A49,  $3B53,  $14A5,  $1F5F,  $1237

.sprite_04
#Palettes_DarkWorldMelon:
; #RRGGBB :          F8F8F8, C83010, 788830, A8B860, 282828, F8C820, F87030
; #RRGGBB :  000000, F8F8F8, C85830, B02828, E07070, 282828, B8B8C8, 787888
|1BD290| dw          $7FFF,  $08D9,  $1A2F,  $32F5,  $14A5,  $133F,  $19DF
|1BD29E| dw  $0000,  $7FFF,  $1979,  $14B6,  $39DC,  $14A5,  $66F7,  $45EF

.sprite_05
#Palettes_BlueDarkIce:
; #RRGGBB :          F8F8F8, 207058, 78B0C8, A8F0F8, 282828, 80D0B8, 50A088
; #RRGGBB :  000000, F8F8F8, F880B0, 5068A8, 90A8E8, 282828, F8B050, B86028
|1BD2AE| dw          $7FFF,  $2DC4,  $66CF,  $7FD5,  $14A5,  $5F50,  $468A
|1BD2BC| dw  $0000,  $7FFF,  $5A1F,  $55AA,  $76B2,  $14A5,  $2ADF,  $1597

.sprite_06
#Palettes_BlackoutRedGuard2:
; #RRGGBB :          F8F8F8, D8B818, B06028, F0A068, 282828, F07880, B84048
; #RRGGBB :  000000, 282828, 282828, 282828, 282828, 282828, 282828, 282828
|1BD2CC| dw          $7FFF,  $0EFB,  $1596,  $369E,  $14A5,  $41FE,  $2517
|1BD2DA| dw  $0000,  $14A5,  $14A5,  $14A5,  $14A5,  $14A5,  $14A5,  $14A5

.sprite_07
#Palettes_GreenBlueGuard2:
; #RRGGBB :          F8F8F8, D86060, B06028, F0A068, 282828, B090F8, 5070C8
; #RRGGBB :  000000, F8F8F8, C83018, 489030, 98D070, 282828, F8D038, B88820
|1BD2EA| dw          $7FFF,  $319B,  $1596,  $369E,  $14A5,  $7E56,  $65CA
|1BD2F8| dw  $0000,  $7FFF,  $0CD9,  $1A49,  $3B53,  $14A5,  $1F5F,  $1237

.Link
.link_00
#Palettes_GreenMail:
; #RRGGBB :          F8F8F8, F0D840, B86820, F0A068, 282828, F87800, C01820
; #RRGGBB :  E860B0, 389068, 40D870, 509010, 78B820, E09050, 885828, C080F0
|1BD308| dw          $7FFF,  $237E,  $11B7,  $369E,  $14A5,  $01FF,  $1078
|1BD316| dw  $599D,  $3647,  $3B68,  $0A4A,  $12EF,  $2A5C,  $1571,  $7A18

.link_01
#Palettes_BlueMail:
; #RRGGBB :          F8F8F8, F0D840, B86820, F0A068, 282828, F87800, C01820
; #RRGGBB :  E860B0, 0060D0, 88A0E8, C0A848, F8D880, E09050, C86020, C080F0
|1BD326| dw          $7FFF,  $237E,  $11B7,  $369E,  $14A5,  $01FF,  $1078
|1BD334| dw  $599D,  $6980,  $7691,  $26B8,  $437F,  $2A5C,  $1199,  $7A18

.link_02
#Palettes_RedMail:
; #RRGGBB :          F8F8F8, F0D840, B86820, F0A068, 282828, F87800, C01820
; #RRGGBB :  E860B0, B81020, F05888, 9878D8, C8A8F8, E09050, 388840, C080F0
|1BD344| dw          $7FFF,  $237E,  $11B7,  $369E,  $14A5,  $01FF,  $1078
|1BD352| dw  $599D,  $1057,  $457E,  $6DF3,  $7EB9,  $2A5C,  $2227,  $7A18

.link_03
#Palettes_Bunny:
; #RRGGBB :          F8F8F8, F0D840, D07020, F0A068, 282828, F87800, C01820
; #RRGGBB :  B86078, 389068, 40D870, 509010, 78B820, F098A8, 901830, C080F0
|1BD362| dw          $7FFF,  $237E,  $11DA,  $369E,  $14A5,  $01FF,  $1078
|1BD370| dw  $3D97,  $3647,  $3B68,  $0A4A,  $12EF,  $567E,  $1872,  $7A18

.link_04
#Palettes_Zap:
; #RRGGBB :          000000, D0B818, 8870F8, 000000, D0C0F8, 000000, D0C0F8
; #RRGGBB :  7058E0, 8870F8, 382880, 8870F8, 382880, 483890, 7830A0, F8F8F8
|1BD380| dw          $0000,  $0EFA,  $7DD1,  $0000,  $7F1A,  $0000,  $7F1A
|1BD38E| dw  $716E,  $7DD1,  $40A7,  $7DD1,  $40A7,  $48E9,  $50CF,  $7FFF

.spritepal0_00
#Palettes_UglyThrone:
; #RRGGBB :  303020, A08020, E8C870, F0B0C8, C880A0, 68B880, 488848
|1BD39E| dw  $10C6,  $1214,  $3B3D,  $66DE,  $5219,  $42ED,  $2629

.spritepal0_01
#Palettes_DarkMelon:
; #RRGGBB :  F8F8F8, 305818, C05058, E88888, 282828, 80A060, 587838
|1BD3AC| dw  $7FFF,  $0D66,  $2D58,  $463D,  $14A5,  $3290,  $1DEB

.spritepal0_02
#Palettes_DebirandoBlue:
; #RRGGBB :  887848, 484018, 5048A0, 8890E0, 282828, 787040, 585030
|1BD3BA| dw  $25F1,  $0D09,  $512A,  $7251,  $14A5,  $21CF,  $194B

.spritepal0_03
#Palettes_UglyThrone5:
; #RRGGBB :  B09868, 503808, 00A820, 00E058, 282828, 887040, 685020
|1BD3C8| dw  $3676,  $04EA,  $12A0,  $2F80,  $14A5,  $21D1,  $114D

.spritepal0_04
#Palettes_UglyThrone6:
; #RRGGBB :  F8F8F8, 98F898, A85820, F0A068, 282828, F87818, C83800
|1BD3D6| dw  $7FFF,  $4FF3,  $1175,  $369E,  $14A5,  $0DFF,  $00F9

.spritepal0_05
#Palettes_SoylentGreen:
; #RRGGBB :  F8F8F8, D0C848, A85820, F0A068, 282828, 78C820, 489808
|1BD3E4| dw  $7FFF,  $273A,  $1175,  $369E,  $14A5,  $132F,  $0669

.spritepal0_06
#Palettes_RockyMiddleNeck:
; #RRGGBB :  F8F8F8, 505060, 788890, 78C0A8, 282828, 78E8A8, 503860
|1BD3F2| dw  $7FFF,  $314A,  $4A2F,  $570F,  $14A5,  $57AF,  $30EA

.spritepal0_07
#Palettes_WizzardsInRobes:
; #RRGGBB :  F8F8F8, D84030, 60A828, A8F070, 282828, F09848, C06018
|1BD400| dw  $7FFF,  $191B,  $16AC,  $3BD5,  $14A5,  $267E,  $0D98

.spritepal0_08
#Palettes_spraux01:
; #RRGGBB :  F8F8F8, 604838, 686898, 686898, 282828, A08050, 886038
|1BD40E| dw  $7FFF,  $1D2C,  $4DAD,  $4DAD,  $14A5,  $2A14,  $1D91

.spritepal0_09
#Palettes_spraux02:
; #RRGGBB :  F8F8F8, 286040, C05058, E88888, 282828, 68A080, 488060
|1BD41C| dw  $7FFF,  $2185,  $2D58,  $463D,  $14A5,  $428D,  $3209

.spritepal0_0A
#Palettes_spraux03:
; #RRGGBB :  F8F8F8, A0A0A0, 383088, 7068C0, 282828, D88830, A85820
|1BD42A| dw  $7FFF,  $5294,  $44C7,  $61AE,  $14A5,  $1A3B,  $1175

.spritepal0_0B
#Palettes_OopsAllBlue:
; #RRGGBB :  686898, 686898, 686898, 686898, 686898, 686898, 686898
|1BD438| dw  $4DAD,  $4DAD,  $4DAD,  $4DAD,  $4DAD,  $4DAD,  $4DAD

.environment_00
#Palettes_spraux05:
; #RRGGBB :  203028, 585858, 7048C0, A068B8, C8B0F0, E8E8E8, A0A0A0
|1BD446| dw  $14C4,  $2D6B,  $612E,  $5DB4,  $7AD9,  $77BD,  $5294

.environment_01
#Palettes_spraux06:
; #RRGGBB :  203028, 585858, 407898, 70A8C8, A0D8F8, E8E8E8, A0A0A0
|1BD454| dw  $14C4,  $2D6B,  $4DE8,  $66AE,  $7F74,  $77BD,  $5294

.environment_02
#Palettes_spraux07:
; #RRGGBB :  203028, 585858, F84000, F87800, F8F000, E8E8E8, A0A0A0
|1BD462| dw  $14C4,  $2D6B,  $011F,  $01FF,  $03DF,  $77BD,  $5294

.environment_03
#Palettes_spraux08:
; #RRGGBB :  F8F8F8, 000000, 000000, 000000, 8000F0, F8D8F8, B800F8
|1BD470| dw  $7FFF,  $0000,  $0000,  $0000,  $7810,  $7F7F,  $7C17

.environment_04
#Palettes_spraux09:
; #RRGGBB :  F8F8F8, 000000, 3840B0, 7080D8, 000000, D8E8F8, 9098E8
|1BD47E| dw  $7FFF,  $0000,  $5907,  $6E0E,  $0000,  $7FBB,  $7672

.environment_05
#Palettes_spraux0A:
; #RRGGBB :  F8F8F8, F8E0B8, 500000, A880F8, 200858, 8070E8, 5848C0
|1BD48C| dw  $7FFF,  $5F9F,  $000A,  $7E15,  $2C24,  $75D0,  $612B

.environment_06
#Palettes_spraux0B:
; #RRGGBB :  282828, 508070, 287838, 489848, A08860, B0E8B8, 78B890
|1BD49A| dw  $14A5,  $3A0A,  $1DE5,  $2669,  $3234,  $5FB6,  $4AEF

.environment_07
#Palettes_spraux0C:
; #RRGGBB :  282828, 282828, 686028, 888040, A08860, 78B890, 508070
|1BD4A8| dw  $14A5,  $14A5,  $158D,  $2211,  $3234,  $4AEF,  $3A0A

.environment_08
#Palettes_PurpleShrubs:
; #RRGGBB :  203010, 487040, 886898, 98B0E0, B8A820, A0C898, 709868
|1BD4B6| dw  $08C4,  $21C9,  $4DB1,  $72D3,  $12B7,  $4F34,  $366E

.environment_09
#Palettes_DarkAndHeavyBush:
; #RRGGBB :  181818, 203010, 705830, 907850, 907850, 709868, 487040
|1BD4C4| dw  $0C63,  $08C4,  $196E,  $29F2,  $29F2,  $366E,  $21C9

.environment_0A
#Palettes_StarryTile:
; #RRGGBB :  303030, 585858, A87850, D0A830, 784848, E8E8E8, A0A0A0
|1BD4D2| dw  $18C6,  $2D6B,  $29F5,  $1ABA,  $252F,  $77BD,  $5294

.spriteaux_00
#Palettes_spraux10:
; #RRGGBB :  F8F8F8, A0C0F0, 9020B8, D040F0, 282828, F8A800, E86820
|1BD4E0| dw  $7FFF,  $7B14,  $5C92,  $791A,  $14A5,  $02BF,  $11BD

.spriteaux_01
#Palettes_LeftOfRedItems:
; #RRGGBB :  F8F8F8, D8B060, B02800, F08848, 282828, A0A0A8, 686870
|1BD4EE| dw  $7FFF,  $32DB,  $00B6,  $263E,  $14A5,  $5694,  $39AD

.spriteaux_02
#Palettes_RodentsAndGhosts:
; #RRGGBB :  F8F8F8, 885008, 6860B8, 9098E0, 282828, E8B818, B07818
|1BD4FC| dw  $7FFF,  $0551,  $5D8D,  $7272,  $14A5,  $0EFD,  $0DF6

.spriteaux_03
#Palettes_BumpkinBrothers:
; #RRGGBB :  F8F8F8, F0D840, A85820, F0A068, 282828, 88D830, 009838
|1BD50A| dw  $7FFF,  $237E,  $1175,  $369E,  $14A5,  $1B71,  $1E60

.spriteaux_04
#Palettes_BonyPaladin:
; #RRGGBB :  F8F8F8, D02040, A06818, D8B850, 282828, 78D800, 589800
|1BD518| dw  $7FFF,  $209A,  $0DB4,  $2AFB,  $14A5,  $036F,  $026B

.spriteaux_05
#Palettes_ThickPikit:
; #RRGGBB :  F8F8F8, A85810, 903068, C868A0, 282828, F8B058, E07820
|1BD526| dw  $7FFF,  $0975,  $34D2,  $51B9,  $14A5,  $2EDF,  $11FC

.spriteaux_06
#Palettes_spraux16:
; #RRGGBB :  E8E8E8, E03810, A07010, E0B020, 282828, C0B098, 887050
|1BD534| dw  $77BD,  $08FC,  $09D4,  $12DC,  $14A5,  $4ED8,  $29D1

.spriteaux_07
#Palettes_PolishedEyegore:
; #RRGGBB :  F8F8F8, 305830, E06018, D8A800, 282828, 50C090, 408858
|1BD542| dw  $7FFF,  $1966,  $0D9C,  $02BB,  $14A5,  $4B0A,  $2E28

.spriteaux_08
#Palettes_MoldormArmy:
; #RRGGBB :  F8F8F8, 503818, C8B818, F8D018, 282828, A89818, 806818
|1BD550| dw  $7FFF,  $0CEA,  $0EF9,  $0F5F,  $14A5,  $0E75,  $0DB0

.spriteaux_09
#Palettes_VictimPink:
; #RRGGBB :  F8F8F8, E088B0, 7098C0, A0C8F8, 000000, F8C8F8, F0A0D8
|1BD55E| dw  $7FFF,  $5A3C,  $626E,  $7F34,  $0000,  $7F3F,  $6E9E

.spriteaux_0A
#Palettes_spraux1A:
; #RRGGBB :  F8F8F8, C83010, A85820, F0A068, 282828, D0C040, 988818
|1BD56C| dw  $7FFF,  $08D9,  $1175,  $369E,  $14A5,  $231A,  $0E33

.spriteaux_0B
#Palettes_LynelsMane:
; #RRGGBB :  F8F8F8, A04010, 289828, 70D8B8, 282828, F89848, C86828
|1BD57A| dw  $7FFF,  $0914,  $1665,  $5F6E,  $14A5,  $267F,  $15B9

.spriteaux_0C
#Palettes_HammerableMask:
; #RRGGBB :  F8F8F8, 4848B0, D85820, F8A840, 282828, A8A8F8, 7870E8
|1BD588| dw  $7FFF,  $5929,  $117B,  $22BF,  $14A5,  $7EB5,  $75CF

.spriteaux_0D
#Palettes_KleptomanicSwine:
; #RRGGBB :  F8F8F8, 385088, 886008, C0A028, 282828, 88C8A0, 5088A8
|1BD596| dw  $7FFF,  $4547,  $0591,  $1698,  $14A5,  $5331,  $562A

.spriteaux_0E
#Palettes_AgahnimsRobe:
; #RRGGBB :  F8F8F8, C04080, B08828, E8C070, 282828, 90D038, 688020
|1BD5A4| dw  $7FFF,  $4118,  $1636,  $3B1D,  $14A5,  $1F52,  $120D

.spriteaux_0F
#Palettes_SkateAndHover:
; #RRGGBB :  F8F8F8, D8A068, 58A040, 90D878, 282828, E06868, A84040
|1BD5B2| dw  $7FFF,  $369B,  $228B,  $3F72,  $14A5,  $35BC,  $2115

.spriteaux_10
#Palettes_Outmaneuverable:
; #RRGGBB :  F8F8F8, A00028, 00D018, F8C040, 282828, E88820, D03828
|1BD5C0| dw  $7FFF,  $1414,  $0F40,  $231F,  $14A5,  $123D,  $14FA

.spriteaux_11
#Palettes_AngryDeadrock:
; #RRGGBB :  F8F8F8, F890B8, 905810, C08848, 282828, B088E8, 7848A0
|1BD5CE| dw  $7FFF,  $5E5F,  $0972,  $2638,  $14A5,  $7636,  $512F

.spriteaux_12
#Palettes_spraux22:
; #RRGGBB :  A888F8, D81830, A85820, F0A068, 282828, F8F8F8, A888F8
|1BD5DC| dw  $7E35,  $187B,  $1175,  $369E,  $14A5,  $7FFF,  $7E35

.spriteaux_13
#Palettes_spraux23:
; #RRGGBB :  F8F8F8, A0A0B0, B83010, E86040, 282828, C0A028, 886008
|1BD5EA| dw  $7FFF,  $5A94,  $08D7,  $219D,  $14A5,  $1698,  $0591

.spriteaux_14
#Palettes_RedBossBash:
; #RRGGBB :  F8F8F8, 903018, D85800, F8A828, 282828, E88068, B04038
|1BD5F8| dw  $7FFF,  $0CD2,  $017B,  $16BF,  $14A5,  $361D,  $1D16

.spriteaux_15
#Palettes_FadingWarp:
; #RRGGBB :  989898, 203868, 904808, C07818, 000000, B83008, 307088
|1BD606| dw  $4E73,  $34E4,  $0532,  $0DF8,  $0000,  $04D7,  $45C6

.spriteaux_16
#Palettes_spraux26:
; #RRGGBB :  F8F8F8, 709868, A07828, E0C040, 282828, A0C898, C0E8B8
|1BD614| dw  $7FFF,  $366E,  $15F4,  $231C,  $14A5,  $4F34,  $5FB8

.spriteaux_17
#Palettes_StatueGray:
; #RRGGBB :  505050, E8E8E8, C0C0C0, 888888, E8E8E8, 888888, C0C0C0
|1BD622| dw  $294A,  $77BD,  $6318,  $4631,  $77BD,  $4631,  $6318

.sword
.sword_00
#Palettes_FighterSword:
; #RRGGBB :  F8F8F8, F8F848, 6888B8
|1BD630| dw  $7FFF,  $27FF,  $5E2D

.sword_01
#Palettes_MasterSword:
; #RRGGBB :  7090F8, A0F8D8, A83838
|1BD636| dw  $7E4E,  $6FF4,  $1CF5

.sword_02
#Palettes_TemperedSword:
; #RRGGBB :  D84810, F8A028, 68A0F8
|1BD63C| dw  $093B,  $169F,  $7E8D

.sword_03
#Palettes_GoldenSword:
; #RRGGBB :  F8C800, F8F8C8, 009048
|1BD642| dw  $033F,  $67FF,  $2640

.shield
.shield_00
#Palettes_FighterShield:
; #RRGGBB :  F8F8F8, 383838, 8080F0, 2828C8
|1BD648| dw  $7FFF,  $1CE7,  $7A10,  $64A5

.shield_01
#Palettes_FireShield:
; #RRGGBB :  F8D098, 383838, E0A058, B02828
|1BD650| dw  $4F5F,  $1CE7,  $2E9C,  $14B6

.shield_02
#Palettes_MirrorShield:
; #RRGGBB :  C8E0E0, 383838, C8B800, 988800
|1BD658| dw  $7399,  $1CE7,  $02F9,  $0233

.hud_00
#Palettes_HUD_Brown:
; #RRGGBB :  000000, C06000, A8A8A8, 000000
|1BD660| dw  $0000,  $0198,  $56B5,  $0000

.hud_01
#Palettes_HUD_Red:
; #RRGGBB :  000000, C00000, F8F8F8, 000000
|1BD668| dw  $0000,  $0018,  $7FFF,  $0000

.hud_02
#Palettes_HUD_Yellow:
; #RRGGBB :  000000, E0A800, F8F8F8, 000000
|1BD670| dw  $0000,  $02BC,  $7FFF,  $0000

.hud_03
#Palettes_HUD_Blue:
; #RRGGBB :  000000, 4870D0, F8F8F8, 000000
|1BD678| dw  $0000,  $69C9,  $7FFF,  $0000

.hud_04
#Palettes_HUD_Gray:
; #RRGGBB :  000000, 303030, 686870, 000000
|1BD680| dw  $0000,  $18C6,  $39AD,  $0000

.hud_05
#Palettes_HUD_RedYellow:
; #RRGGBB :  000000, C02800, E8C880, 000000
|1BD688| dw  $0000,  $00B8,  $433D,  $0000

.hud_06
#Palettes_HUD_Text:
; #RRGGBB :  000000, 000070, F8F8F8, C00000
|1BD690| dw  $0000,  $3800,  $7FFF,  $0018

.hud_07
#Palettes_HUD_Green:
; #RRGGBB :  000000, 20C028, F8F8F8, 000000
|1BD698| dw  $0000,  $1704,  $7FFF,  $0000

.hud_08
#Palettes_HUD_08:
; #RRGGBB :  000000, 785840, C89058, 403028
|1BD6A0| dw  $0000,  $216F,  $2E59,  $14C8

.hud_09
#Palettes_HUD_09:
; #RRGGBB :  000000, C00000, F8F8F8, 000000
|1BD6A8| dw  $0000,  $0018,  $7FFF,  $0000

.hud_0A
#Palettes_HUD_0A:
; #RRGGBB :  000000, 000000, 28F858, 000000
|1BD6B0| dw  $0000,  $0000,  $2FE5,  $0000

.hud_0B
#Palettes_HUD_0B:
; #RRGGBB :  000000, 000000, F8C038, 000000
|1BD6B8| dw  $0000,  $0000,  $1F1F,  $0000

.hud_0C
#Palettes_HUD_0C:
; #RRGGBB :  000000, C0B078, A09058, E8E848
|1BD6C0| dw  $0000,  $3ED8,  $2E54,  $27BD

.hud_0D
#Palettes_HUD_0D:
; #RRGGBB :  000000, C0B078, A09058, 807038
|1BD6C8| dw  $0000,  $3ED8,  $2E54,  $1DD0

.hud_0E
#Palettes_HUD_0E:
; #RRGGBB :  000000, 000070, F05038, 000000
|1BD6D0| dw  $0000,  $3800,  $1D5E,  $0000

.hud_0F
#Palettes_HUD_0F:
; #RRGGBB :  000000, 000000, F8F8F8, 000000
|1BD6D8| dw  $0000,  $0000,  $7FFF,  $0000

.sword_04
#Palettes_DuplicateButter:
; #RRGGBB :  F8C800, F8F8C8, 009048
|1BD6E0| dw  $033F,  $67FF,  $2640

#Palettes_PURPLE:
; #RRGGBB :  C860E8, C860E8, C860E8, C860E8
|1BD6E6| dw  $7599,  $7599,  $7599,  $7599

#Palettes_PaintedBlack:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
|1BD6EE| dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000
|1BD6FC| dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.dungeonmap_sprites_00
#Palettes_DungeonMapSprites:
; #RRGGBB :  F8F8F8, C80000, F8F8F8, F8F8F8, 282828, 000000, 000000
; #RRGGBB :  F8F8F8, F8F828, 90D0F8, 705840, 282828, 000000, 000000
; #RRGGBB :  9870F8, 70E0F8, 68A8C8, B83858, 282828, C0B0F8, 000000
|1BD70A| dw  $7FFF,  $0019,  $7FFF,  $7FFF,  $14A5,  $0000,  $0000
|1BD718| dw  $7FFF,  $17FF,  $7F52,  $216E,  $14A5,  $0000,  $0000
|1BD726| dw  $7DD3,  $7F8E,  $66AD,  $2CF7,  $14A5,  $7ED8,  $0000

.dungeon_00
#Palettes_RoyaltyFree:
; #RRGGBB :          303018, 584828, 807030, A89868, E8D0A0, 703838, 482020
; #RRGGBB :  F8F8F8, 303018, 584828, 807030, A89868, E8D0A0, 703838, 482020
; #RRGGBB :          303030, 585858, A0A0A0, E8E8E8, 784848, D0A830, A87850
; #RRGGBB :  F8F8F8, 202018, 405860, 587078, 688088, 383850, 807030, 703838
; #RRGGBB :          303018, 584828, 988830, C8C070, 602828, 387098, 305088
; #RRGGBB :  F8F8F8, 202018, 284850, 305860, 406870, 5858F8, 584828, 482020
; #RRGGBB :          303020, 705840, 987840, E0B070, 683030, F0B0C8, C870B0
; #RRGGBB :  F8F8F8, 282818, 484858, 885858, 986868, 383850, 807030, 703838
; #RRGGBB :          181828, 804040, C06868, E0E0E0, 404080, D8B028, 6868C0
; #RRGGBB :  F8F8F8, 282818, 484858, 704040, 805050, 383850, 505060, 5858F8
; #RRGGBB :          303018, 584828, 807030, A89868, E8D0A0, 584828, 5858F8
; #RRGGBB :  F8F8F8, 282818, 504028, 000000, 000000, 683030, A89868, 807030
|1BD734| dw          $0CC6,  $152B,  $19D0,  $3675,  $535D,  $1CEE,  $1089
|1BD742| dw  $7FFF,  $0CC6,  $152B,  $19D0,  $3675,  $535D,  $1CEE,  $1089
|1BD752| dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
|1BD760| dw  $7FFF,  $0C84,  $3168,  $3DCB,  $460D,  $28E7,  $19D0,  $1CEE
|1BD770| dw          $0CC6,  $152B,  $1A33,  $3B19,  $14AC,  $4DC7,  $4546
|1BD77E| dw  $7FFF,  $0C84,  $2925,  $3166,  $39A8,  $7D6B,  $152B,  $1089
|1BD78E| dw          $10C6,  $216E,  $21F3,  $3ADC,  $18CD,  $66DE,  $59D9
|1BD79C| dw  $7FFF,  $0CA5,  $2D29,  $2D71,  $35B3,  $28E7,  $19D0,  $1CEE
|1BD7AC| dw          $1463,  $2110,  $35B8,  $739C,  $4108,  $16DB,  $61AD
|1BD7BA| dw  $7FFF,  $0CA5,  $2D29,  $210E,  $2950,  $28E7,  $314A,  $7D6B
|1BD7CA| dw          $0CC6,  $152B,  $19D0,  $3675,  $535D,  $152B,  $7D6B
|1BD7D8| dw  $7FFF,  $0CA5,  $150A,  $0000,  $0000,  $18CD,  $3675,  $19D0

.dungeon_01
#Palettes_SepticStank:
; #RRGGBB :          181828, 383058, 504878, 706890, A098C0, 603838, 482020
; #RRGGBB :  F8F8F8, 181828, 383058, 504878, 706890, A098C0, 684838, 503020
; #RRGGBB :          303030, 585858, A0A0A0, E8E8E8, 784848, D0A830, A87850
; #RRGGBB :  F8F8F8, 181828, 304858, 486070, 587078, 304858, 504878, 684838
; #RRGGBB :          181828, 383058, 504878, 706890, A098C0, 603838, 482020
; #RRGGBB :  F8F8F8, 181828, 203848, 284050, 385060, 203848, 383058, 503020
; #RRGGBB :          303030, 584038, 806048, A07840, 403028, 603838, 482020
; #RRGGBB :  F8F8F8, 302018, 403020, 504030, 605040, A88868, E0C090, F8E8D8
; #RRGGBB :          303030, 804040, C06868, E0E0E0, 404080, D8B028, 6868C0
; #RRGGBB :  F8F8F8, 181828, 203848, 304858, 486070, 486070, 989898, B8B8B8
; #RRGGBB :          181828, 3840C8, 4850D0, 88D0F8, 383888, 4858B8, 7890F8
; #RRGGBB :  F8F8F8, 181820, 383050, 203848, 286828, 286828, 706890, 504878
|1BD7E8| dw          $1463,  $2CC7,  $3D2A,  $49AE,  $6274,  $1CEC,  $1089
|1BD7F6| dw  $7FFF,  $1463,  $2CC7,  $3D2A,  $49AE,  $6274,  $1D2D,  $10CA
|1BD806| dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
|1BD814| dw  $7FFF,  $1463,  $2D26,  $3989,  $3DCB,  $2D26,  $3D2A,  $1D2D
|1BD824| dw          $1463,  $2CC7,  $3D2A,  $49AE,  $6274,  $1CEC,  $1089
|1BD832| dw  $7FFF,  $1463,  $24E4,  $2905,  $3147,  $24E4,  $2CC7,  $10CA
|1BD842| dw          $18C6,  $1D0B,  $2590,  $21F4,  $14C8,  $1CEC,  $1089
|1BD850| dw  $7FFF,  $0C86,  $10C8,  $190A,  $214C,  $3635,  $4B1C,  $6FBF
|1BD860| dw          $18C6,  $2110,  $35B8,  $739C,  $4108,  $16DB,  $61AD
|1BD86E| dw  $7FFF,  $1463,  $24E4,  $2D26,  $3989,  $3989,  $4E73,  $5EF7
|1BD87E| dw          $1463,  $6507,  $6949,  $7F51,  $44E7,  $5D69,  $7E4F
|1BD88C| dw  $7FFF,  $1063,  $28C7,  $24E4,  $15A5,  $15A5,  $49AE,  $3D2A

.dungeon_02
#Palettes_HomeAndHearty:
; #RRGGBB :          382828, 785040, 986840, A88060, D0A878, C0B8A8, 784048
; #RRGGBB :  F8F8F8, 382828, 785040, 986840, A88060, D0A878, C0B8A8, 603838
; #RRGGBB :          303030, 585858, A0A0A0, E8E8E8, 784848, D0A830, A87850
; #RRGGBB :  F8F8F8, 382828, 405860, 587078, 688088, 405860, 986040, 603838
; #RRGGBB :          382828, 785040, 986840, C09060, 4030C8, 7868F8, F8F8F8
; #RRGGBB :  F8F8F8, 282818, 684830, 785840, 886850, 684830, 785040, 503030
; #RRGGBB :          483828, 886840, B89068, D0A070, 58E800, C8B0A8, B89890
; #RRGGBB :  F8F8F8, 282818, 684830, 785840, 886850, 684830, 986040, 603838
; #RRGGBB :          303030, 804040, C06868, E0E0E0, 404078, D0A830, 7070B8
; #RRGGBB :  F8F8F8, 282818, 204048, 305860, 406870, F8F8F8, 785040, 503030
; #RRGGBB :          382828, 989808, 686840, 787840, F8F8F8, F8F8F8, F8F8F8
; #RRGGBB :  F8F8F8, 282818, 282010, 403828, 206050, 206050, 382828, 382828
|1BD89C| dw          $14A7,  $214F,  $21B3,  $3215,  $3EBA,  $56F8,  $250F
|1BD8AA| dw  $7FFF,  $14A7,  $214F,  $21B3,  $3215,  $3EBA,  $56F8,  $1CEC
|1BD8BA| dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
|1BD8C8| dw  $7FFF,  $14A7,  $3168,  $3DCB,  $460D,  $3168,  $2193,  $1CEC
|1BD8D8| dw          $14A7,  $214F,  $21B3,  $3258,  $64C8,  $7DAF,  $7FFF
|1BD8E6| dw  $7FFF,  $0CA5,  $192D,  $216F,  $29B1,  $192D,  $214F,  $18CA
|1BD8F6| dw          $14E9,  $21B1,  $3657,  $3A9A,  $03AB,  $56D9,  $4A77
|1BD904| dw  $7FFF,  $0CA5,  $192D,  $216F,  $29B1,  $192D,  $2193,  $1CEC
|1BD914| dw          $18C6,  $2110,  $35B8,  $739C,  $3D08,  $1ABA,  $5DCE
|1BD922| dw  $7FFF,  $0CA5,  $2504,  $3166,  $39A8,  $7FFF,  $214F,  $18CA
|1BD932| dw          $14A7,  $0673,  $21AD,  $21EF,  $7FFF,  $7FFF,  $7FFF
|1BD940| dw  $7FFF,  $0CA5,  $0885,  $14E8,  $2984,  $2984,  $14A7,  $14A7

.dungeon_03
#Palettes_EasternMosaic:
; #RRGGBB :          282828, 305030, 407048, 80A870, C8D0A0, 606080, 484868
; #RRGGBB :  F8F8F8, 282828, 305030, 407048, 80A870, C8D0A0, 404878, 383850
; #RRGGBB :          303030, 585858, A0A0A0, E8E8E8, 784848, D0A830, A87850
; #RRGGBB :  F8F8F8, 181818, 404860, 505070, 606080, 303858, 407050, 404878
; #RRGGBB :          282828, 305030, 407048, 80A870, C8D0A0, E0A050, A85050
; #RRGGBB :  F8F8F8, 181818, 303058, 383858, 484868, 283050, 204838, 383850
; #RRGGBB :          282828, 305030, 407048, 80A870, C8D0A0, 606058, 484868
; #RRGGBB :  F8F8F8, 282828, 404040, 505050, 606060, 989898, D0D0D0, F8F8F8
; #RRGGBB :          303030, 804040, C06868, E0E0E0, 404078, D0A830, 7070B8
; #RRGGBB :  F8F8F8, 202020, 382838, 483048, 584058, 505070, A0A0A0, E0E0E0
; #RRGGBB :          282828, 405888, 6878B0, 8090C8, 286050, 409070, 58C8A0
; #RRGGBB :  F8F8F8, 282828, 284828, 000000, 683838, 683838, 80A870, 407048
|1BD950| dw          $14A5,  $1946,  $25C8,  $3AB0,  $5359,  $418C,  $3529
|1BD95E| dw  $7FFF,  $14A5,  $1946,  $25C8,  $3AB0,  $5359,  $3D28,  $28E7
|1BD96E| dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
|1BD97C| dw  $7FFF,  $0C63,  $3128,  $394A,  $418C,  $2CE6,  $29C8,  $3D28
|1BD98C| dw          $14A5,  $1946,  $25C8,  $3AB0,  $5359,  $2A9C,  $2955
|1BD99A| dw  $7FFF,  $0C63,  $2CC6,  $2CE7,  $3529,  $28C5,  $1D24,  $28E7
|1BD9AA| dw          $14A5,  $1946,  $25C8,  $3AB0,  $5359,  $2D8C,  $3529
|1BD9B8| dw  $7FFF,  $14A5,  $2108,  $294A,  $318C,  $4E73,  $6B5A,  $7FFF
|1BD9C8| dw          $18C6,  $2110,  $35B8,  $739C,  $3D08,  $1ABA,  $5DCE
|1BD9D6| dw  $7FFF,  $1084,  $1CA7,  $24C9,  $2D0B,  $394A,  $5294,  $739C
|1BD9E6| dw          $14A5,  $4568,  $59ED,  $6650,  $2985,  $3A48,  $532B
|1BD9F4| dw  $7FFF,  $14A5,  $1525,  $0000,  $1CED,  $1CED,  $3AB0,  $25C8

.dungeon_04
#Palettes_FrozenValor:
; #RRGGBB :          202848, 2848B0, 5890D0, A8E0E8, D8F8F8, 7070B8, 6060A8
; #RRGGBB :  F8F8F8, 202848, 2848B0, 5890D0, A8E0E8, D8F8F8, 7078B8, 505898
; #RRGGBB :          303030, 585858, A0A0A0, E8E8E8, 784848, D0A830, A87850
; #RRGGBB :  F8F8F8, 202848, 505898, 6068A8, 7078B8, 284898, 7078B8, 4068A0
; #RRGGBB :          202848, 2848B0, 5890D0, D8E8E8, D85820, 7870E8, A8A8F8
; #RRGGBB :  F8F8F8, 202848, 505898, 6068A8, 7078B8, 385078, 7078B8, 4068A0
; #RRGGBB :          202848, 4828F0, 8070F8, 58B0E8, D0F8F8, 4828C8, 6068A8
; #RRGGBB :  F8F8F8, 403068, 505898, 6068A8, 7078B8, 98A8D0, C0D0F0, F8F8F8
; #RRGGBB :          181828, 804050, C06878, E0E0E0, 5050C0, D0A830, 8888F8
; #RRGGBB :  F8F8F8, 202848, 5860B8, 404898, 304080, 48C0B0, A0A0A0, E0E0E0
; #RRGGBB :          202848, 406090, 20B8B8, 38D8E0, 383888, 4858B8, 7890F8
; #RRGGBB :  F8F8F8, 202040, 2840A8, 000000, 000000, 5860B8, A8E0E8, C8F8F8
|1BDA04| dw          $24A4,  $5925,  $6A4B,  $7795,  $7FFB,  $5DCE,  $558C
|1BDA12| dw  $7FFF,  $24A4,  $5925,  $6A4B,  $7795,  $7FFB,  $5DEE,  $4D6A
|1BDA22| dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
|1BDA30| dw  $7FFF,  $24A4,  $4D6A,  $55AC,  $5DEE,  $4D25,  $5DEE,  $51A8
|1BDA40| dw          $24A4,  $5925,  $6A4B,  $77BB,  $117B,  $75CF,  $7EB5
|1BDA4E| dw  $7FFF,  $24A4,  $4D6A,  $55AC,  $5DEE,  $3D47,  $5DEE,  $51A8
|1BDA5E| dw          $24A4,  $78A9,  $7DD0,  $76CB,  $7FFA,  $64A9,  $55AC
|1BDA6C| dw  $7FFF,  $34C8,  $4D6A,  $55AC,  $5DEE,  $6AB3,  $7B58,  $7FFF
|1BDA7C| dw          $1463,  $2910,  $3DB8,  $739C,  $614A,  $1ABA,  $7E31
|1BDA8A| dw  $7FFF,  $24A4,  $5D8B,  $4D28,  $4106,  $5B09,  $5294,  $739C
|1BDA9A| dw          $24A4,  $4988,  $5EE4,  $7367,  $44E7,  $5D69,  $7E4F
|1BDAA8| dw  $7FFF,  $2084,  $5505,  $0000,  $0000,  $5D8B,  $7795,  $7FF9

.dungeon_05
#Palettes_SandInYourBoots:
; #RRGGBB :          282818, 503820, 685030, 987850, B0A878, 587058, 486048
; #RRGGBB :  F8F8F8, 282818, 503820, 685030, 987850, B0A878, 405840, 304030
; #RRGGBB :          303030, 585858, A0A0A0, E8E8E8, 784848, D0A830, A87850
; #RRGGBB :  F8F8F8, 181818, 405840, 506850, 686850, 806040, 685030, 405840
; #RRGGBB :          282818, 503820, 685030, 987850, B0A878, 60B050, 287828
; #RRGGBB :  F8F8F8, 181818, 304830, 385840, 585840, 284030, 503820, 304030
; #RRGGBB :          282818, 503820, 685030, 987850, B0A878, 686850, 506850
; #RRGGBB :  F8F8F8, 383820, 505028, 686838, 808050, B8B880, E8E8B8, F8F8F8
; #RRGGBB :          303030, 804040, C06868, E0E0E0, 404080, D0A830, 6868C0
; #RRGGBB :  F8F8F8, 181818, 706828, 807838, 706828, 506850, A0A0A0, E0E0E0
; #RRGGBB :          303048, 304888, 3858C0, 4870C8, 385088, 4070B0, 60A0D0
; #RRGGBB :  F8F8F8, 282818, 503820, 000000, 607838, 607838, 987850, 685030
|1BDAB8| dw          $0CA5,  $10EA,  $194D,  $29F3,  $3EB6,  $2DCB,  $2589
|1BDAC6| dw  $7FFF,  $0CA5,  $10EA,  $194D,  $29F3,  $3EB6,  $2168,  $1906
|1BDAD6| dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
|1BDAE4| dw  $7FFF,  $0C63,  $2168,  $29AA,  $29AD,  $2190,  $194D,  $2168
|1BDAF4| dw          $0CA5,  $10EA,  $194D,  $29F3,  $3EB6,  $2ACC,  $15E5
|1BDB02| dw  $7FFF,  $0C63,  $1926,  $2167,  $216B,  $1905,  $10EA,  $1906
|1BDB12| dw          $0CA5,  $10EA,  $194D,  $29F3,  $3EB6,  $29AD,  $29AA
|1BDB20| dw  $7FFF,  $10E7,  $154A,  $1DAD,  $2A10,  $42F7,  $5FBD,  $7FFF
|1BDB30| dw          $18C6,  $2110,  $35B8,  $739C,  $4108,  $1ABA,  $61AD
|1BDB3E| dw  $7FFF,  $0C63,  $15AE,  $1DF0,  $15AE,  $29AA,  $5294,  $739C
|1BDB4E| dw          $24C6,  $4526,  $6167,  $65C9,  $4547,  $59C8,  $6A8C
|1BDB5C| dw  $7FFF,  $0CA5,  $10EA,  $0000,  $1DEC,  $1DEC,  $29F3,  $194D

.dungeon_06
#Palettes_SpatulaHeights:
; #RRGGBB :          202020, 503030, 704848, 987070, D0A0A0, 606080, 484868
; #RRGGBB :  F8F8F8, 202020, 503030, 704848, 987870, D0A8A0, 484858, 383848
; #RRGGBB :          303030, 585858, A0A0A0, E8E8E8, 784848, D0A830, A87850
; #RRGGBB :  F8F8F8, 181818, 484868, 505070, 606080, 404060, 704848, 484858
; #RRGGBB :          202020, 503030, 704848, 987070, D0A8A0, D09038, A83838
; #RRGGBB :  F8F8F8, 181818, 303050, 383858, 484860, 303050, 503030, 383848
; #RRGGBB :          202020, 503030, 704848, 987070, D0A8A0, 585878, 484868
; #RRGGBB :  F8F8F8, 203838, 285048, 306058, 387068, 7888B0, C0C8E8, F8F8F8
; #RRGGBB :          202020, 804040, C06868, E0E0E0, 404080, D8B028, 6060B8
; #RRGGBB :  F8F8F8, 202020, 483028, 603028, 684030, 484868, A0A0A0, E0E0E0
; #RRGGBB :          282850, 404860, 505870, 606880, 383880, 4858B8, 7080E0
; #RRGGBB :  F8F8F8, 201818, 482828, 000000, 583838, 583838, 987870, 784840
|1BDB6C| dw          $1084,  $18CA,  $252E,  $39D3,  $529A,  $418C,  $3529
|1BDB7A| dw  $7FFF,  $1084,  $18CA,  $252E,  $39F3,  $52BA,  $2D29,  $24E7
|1BDB8A| dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
|1BDB98| dw  $7FFF,  $0C63,  $3529,  $394A,  $418C,  $3108,  $252E,  $2D29
|1BDBA8| dw          $1084,  $18CA,  $252E,  $39D3,  $52BA,  $1E5A,  $1CF5
|1BDBB6| dw  $7FFF,  $0C63,  $28C6,  $2CE7,  $3129,  $28C6,  $18CA,  $24E7
|1BDBC6| dw          $1084,  $18CA,  $252E,  $39D3,  $52BA,  $3D6B,  $3529
|1BDBD4| dw  $7FFF,  $1CE4,  $2545,  $2D86,  $35C7,  $5A2F,  $7738,  $7FFF
|1BDBE4| dw          $1084,  $2110,  $35B8,  $739C,  $4108,  $16DB,  $5D8C
|1BDBF2| dw  $7FFF,  $1084,  $14C9,  $14CC,  $190D,  $3529,  $5294,  $739C
|1BDC02| dw          $28A5,  $3128,  $396A,  $41AC,  $40E7,  $5D69,  $720E
|1BDC10| dw  $7FFF,  $0C64,  $14A9,  $0000,  $1CEB,  $1CEB,  $39F3,  $212F

.dungeon_07
#Palettes_CrampedCrags:
; #RRGGBB :          282020, 403020, 583830, 886038, A88858, 785048, 604040
; #RRGGBB :  F8F8F8, 282020, 483020, 684830, 886038, A88858, 488080, 386060
; #RRGGBB :          303030, 585858, A0A0A0, E8E8E8, 784848, D0A830, A87850
; #RRGGBB :  F8F8F8, 282020, 483028, 583830, 704840, 403020, 705840, 584030
; #RRGGBB :          303030, 206030, 309048, 48D870, F87830, A83030, 482820
; #RRGGBB :  F8F8F8, 282020, 402020, 482820, 583028, 302020, 604830, 403020
; #RRGGBB :          282020, 705840, 987840, B8A880, 5068C8, 584030, 583830
; #RRGGBB :  F8F8F8, 282020, 483028, 583830, 704840, 906858, C0A080, F8E8C8
; #RRGGBB :          202020, 804040, C06868, E0E0E0, 304880, D8B028, 5870C0
; #RRGGBB :  F8F8F8, 181818, 684020, 886038, A88858, 684840, A0A0A0, E0E0E0
; #RRGGBB :          181828, 3038B0, 4850C0, 5860C8, 383888, 4858B8, 7088F0
; #RRGGBB :  F8F8F8, 282020, 483020, 000000, 000000, 286868, 282020, 282020
|1BDC20| dw          $1085,  $10C8,  $18EB,  $1D91,  $2E35,  $254F,  $210C
|1BDC2E| dw  $7FFF,  $1085,  $10C9,  $192D,  $1D91,  $2E35,  $4209,  $3187
|1BDC3E| dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
|1BDC4C| dw  $7FFF,  $1085,  $14C9,  $18EB,  $212E,  $10C8,  $216E,  $190B
|1BDC5C| dw          $18C6,  $1984,  $2646,  $3B69,  $19FF,  $18D5,  $10A9
|1BDC6A| dw  $7FFF,  $1085,  $1088,  $10A9,  $14CB,  $1086,  $192C,  $10C8
|1BDC7A| dw          $1085,  $216E,  $21F3,  $42B7,  $65AA,  $190B,  $18EB
|1BDC88| dw  $7FFF,  $1085,  $14C9,  $18EB,  $212E,  $2DB2,  $4298,  $67BF
|1BDC98| dw          $1084,  $2110,  $35B8,  $739C,  $4126,  $16DB,  $61CB
|1BDCA6| dw  $7FFF,  $0C63,  $110D,  $1D91,  $2E35,  $212D,  $5294,  $739C
|1BDCB6| dw          $1463,  $58E6,  $6149,  $658B,  $44E7,  $5D69,  $7A2E
|1BDCC4| dw  $7FFF,  $1085,  $10C9,  $0000,  $0000,  $35A5,  $1085,  $1085

.dungeon_08
#Palettes_DarkAndDarker:
; #RRGGBB :          181818, 404040, 686868, 909090, C8C8C8, 607060, 506050
; #RRGGBB :  F8F8F8, 181818, 404040, 686868, 909090, C8C8C8, 485848, 384838
; #RRGGBB :          303030, 585858, A0A0A0, E8E8E8, 784848, D0A830, A87850
; #RRGGBB :  F8F8F8, 202020, 405040, 506050, 606860, 405040, 686868, 485848
; #RRGGBB :          181818, 404040, 686868, 909090, C8C8C8, B8B030, 706830
; #RRGGBB :  000000, 202020, 304030, 384838, 485848, 304030, 404040, 384838
; #RRGGBB :          181818, 585858, A0A0A0, E0E0E0, 308858, 50E098, 30A870
; #RRGGBB :  F8F8F8, 383020, 484020, 686038, 807850, C0B880, E8E0B8, F8F8F8
; #RRGGBB :          303030, 804040, C06868, E0E0E0, 404080, D0A830, 6868C0
; #RRGGBB :  F8F8F8, 202020, 483820, 584828, 685838, 506050, A0A0A0, E0E0E0
; #RRGGBB :          202020, 405040, 607060, B89868, 383888, 4858B8, 7890F8
; #RRGGBB :  F8F8F8, 181818, 383838, 000000, 000000, 607038, 909090, 686868
|1BDCD4| dw          $0C63,  $2108,  $35AD,  $4A52,  $6739,  $31CC,  $298A
|1BDCE2| dw  $7FFF,  $0C63,  $2108,  $35AD,  $4A52,  $6739,  $2569,  $1D27
|1BDCF2| dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
|1BDD00| dw  $7FFF,  $1084,  $2148,  $298A,  $31AC,  $2148,  $35AD,  $2569
|1BDD10| dw          $0C63,  $2108,  $35AD,  $4A52,  $6739,  $1AD7,  $19AE
|1BDD1E| dw  $0000,  $1084,  $1906,  $1D27,  $2569,  $1906,  $2108,  $1D27
|1BDD2E| dw          $0C63,  $2D6B,  $5294,  $739C,  $2E26,  $4F8A,  $3AA6
|1BDD3C| dw  $7FFF,  $10C7,  $1109,  $1D8D,  $29F0,  $42F8,  $5F9D,  $7FFF
|1BDD4C| dw          $18C6,  $2110,  $35B8,  $739C,  $4108,  $1ABA,  $61AD
|1BDD5A| dw  $7FFF,  $1084,  $10E9,  $152B,  $1D6D,  $298A,  $5294,  $739C
|1BDD6A| dw          $1084,  $2148,  $31CC,  $3677,  $44E7,  $5D69,  $7E4F
|1BDD78| dw  $7FFF,  $0C63,  $1CE7,  $0000,  $0000,  $1DCC,  $4A52,  $35AD

.dungeon_09
#Palettes_VinesAreBurning:
; #RRGGBB :          202020, 303830, 605030, 907850, C0B088, 606050, 505020
; #RRGGBB :  F8F8F8, 202020, 303830, 605030, 907850, C0B088, 502828, 302020
; #RRGGBB :          303030, 585858, A0A0A0, E8E8E8, 784848, D0A830, A87850
; #RRGGBB :  F8F8F8, 181828, 405020, 505020, 606050, 285030, 506048, 502828
; #RRGGBB :          202020, 303830, 605030, 907850, C0B088, 606050, 502828
; #RRGGBB :  F8F8F8, 181828, 382020, 402828, 404028, F8F8F8, 384038, 302020
; #RRGGBB :          202020, 303830, 605030, 907850, C0B088, 606050, 502828
; #RRGGBB :  F8F8F8, 303040, 404060, 585880, 7070A0, 9090C0, C8C8F8, F8F8F8
; #RRGGBB :          181828, 804040, C06868, E0E0E0, 404080, D8B028, 6868C0
; #RRGGBB :  F8F8F8, 202020, 204870, 306090, 5880B0, 505020, 888888, B0B0B0
; #RRGGBB :          181828, 88D0F8, 4850D0, 3840C8, 383888, 4858B8, 7890F8
; #RRGGBB :  F8F8F8, 181828, 383058, 404040, F8F8F8, 683030, 907850, 685840
|1BDD88| dw          $1084,  $18E6,  $194C,  $29F2,  $46D8,  $298C,  $114A
|1BDD96| dw  $7FFF,  $1084,  $18E6,  $194C,  $29F2,  $46D8,  $14AA,  $1086
|1BDDA6| dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
|1BDDB4| dw  $7FFF,  $1463,  $1148,  $114A,  $298C,  $1945,  $258A,  $14AA
|1BDDC4| dw          $1084,  $18E6,  $194C,  $29F2,  $46D8,  $298C,  $14AA
|1BDDD2| dw  $7FFF,  $1463,  $1087,  $14A8,  $1508,  $7FFF,  $1D07,  $1086
|1BDDE2| dw          $1084,  $18E6,  $194C,  $29F2,  $46D8,  $298C,  $14AA
|1BDDF0| dw  $7FFF,  $20C6,  $3108,  $416B,  $51CE,  $6252,  $7F39,  $7FFF
|1BDE00| dw          $1463,  $2110,  $35B8,  $739C,  $4108,  $16DB,  $61AD
|1BDE0E| dw  $7FFF,  $1084,  $3924,  $4986,  $5A0B,  $114A,  $4631,  $5AD6
|1BDE1E| dw          $1463,  $7F51,  $6949,  $6507,  $44E7,  $5D69,  $7E4F
|1BDE2C| dw  $7FFF,  $1463,  $2CC7,  $2108,  $7FFF,  $18CD,  $29F2,  $216D

.dungeon_0A
#Palettes_StealingWindows:
; #RRGGBB :          202020, 404048, 505060, 787888, B8B8C8, 406060, 306030
; #RRGGBB :  F8F8F8, 202020, 404048, 505060, 787888, B8B8C8, 386038, 304830
; #RRGGBB :          303030, 585858, A0A0A0, E8E8E8, 784848, D0A830, A87850
; #RRGGBB :  F8F8F8, 202020, 284828, 306030, 406060, 686030, 505060, 386038
; #RRGGBB :          202020, 404048, 505060, 787888, B8B8C8, 406060, 306030
; #RRGGBB :  F8F8F8, 202020, 382820, 403028, 483830, 302820, 404048, 304830
; #RRGGBB :          202020, 504030, 605040, 706050, C0C0D0, 406060, 306030
; #RRGGBB :  F8F8F8, 483820, 504830, 605840, 706850, A08868, D0C0A8, F8E8D8
; #RRGGBB :          303030, 804040, C06868, E0E0E0, 404080, D8B028, 6868C0
; #RRGGBB :  F8F8F8, 202020, 284828, 306030, 406060, 306030, A0A0A0, E0E0E0
; #RRGGBB :          181828, 3840C8, 4850D0, 88D0F8, 383888, 4858B8, 7890F8
; #RRGGBB :  F8F8F8, 181818, 282828, 303030, 686030, 686030, 787888, 505050
|1BDE3C| dw          $1084,  $2508,  $314A,  $45EF,  $66F7,  $3188,  $1986
|1BDE4A| dw  $7FFF,  $1084,  $2508,  $314A,  $45EF,  $66F7,  $1D87,  $1926
|1BDE5A| dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
|1BDE68| dw  $7FFF,  $1084,  $1525,  $1986,  $3188,  $198D,  $314A,  $1D87
|1BDE78| dw          $1084,  $2508,  $314A,  $45EF,  $66F7,  $3188,  $1986
|1BDE86| dw  $7FFF,  $1084,  $10A7,  $14C8,  $18E9,  $10A6,  $2508,  $1926
|1BDE96| dw          $1084,  $190A,  $214C,  $298E,  $6B18,  $3188,  $1986
|1BDEA4| dw  $7FFF,  $10E9,  $192A,  $216C,  $29AE,  $3634,  $571A,  $6FBF
|1BDEB4| dw          $18C6,  $2110,  $35B8,  $739C,  $4108,  $16DB,  $61AD
|1BDEC2| dw  $7FFF,  $1084,  $1525,  $1986,  $3188,  $1986,  $5294,  $739C
|1BDED2| dw          $1463,  $6507,  $6949,  $7F51,  $44E7,  $5D69,  $7E4F
|1BDEE0| dw  $7FFF,  $0C63,  $14A5,  $18C6,  $198D,  $198D,  $45EF,  $294A

.dungeon_0B
#Palettes_MiserableCompany:
; #RRGGBB :          181818, 285030, 307838, 80B070, B8D8A8, 509880, 408068
; #RRGGBB :  F8F8F8, 181818, 285030, 307838, 80B070, B8D8A8, 786838, 585020
; #RRGGBB :          303030, 585858, A0A0A0, E8E8E8, 784848, D0A830, A87850
; #RRGGBB :  F8F8F8, 181818, 386850, 408068, 509880, 285848, 307830, 786838
; #RRGGBB :          181818, 285030, 307838, 80B070, 386850, 408068, 509880
; #RRGGBB :  F8F8F8, 181818, 285048, 286050, 387058, 285048, 285028, 585020
; #RRGGBB :          282828, 305830, 58B858, 50C090, F8F8F8, 886848, 683838
; #RRGGBB :  F8F8F8, 483828, 584828, 685838, 807050, 988868, B8A888, F8E8D8
; #RRGGBB :          181828, 804040, C06868, E0E0E0, 404080, D8B028, 6868C0
; #RRGGBB :  F8F8F8, 181818, 382820, 503828, 584838, 387058, A0A0A0, E0E0E0
; #RRGGBB :          303030, 0000E0, 2020F8, 2828F8, 185068, 186880, 1890A0
; #RRGGBB :  F8F8F8, 101018, 284828, 000000, 000000, 807038, 80B070, 685848
|1BDEF0| dw          $0C63,  $1945,  $1DE6,  $3AD0,  $5777,  $426A,  $3608
|1BDEFE| dw  $7FFF,  $0C63,  $1945,  $1DE6,  $3AD0,  $5777,  $1DAF,  $114B
|1BDF0E| dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
|1BDF1C| dw  $7FFF,  $0C63,  $29A7,  $3608,  $426A,  $2565,  $19E6,  $1DAF
|1BDF2C| dw          $0C63,  $1945,  $1DE6,  $3AD0,  $29A7,  $3608,  $426A
|1BDF3A| dw  $7FFF,  $0C63,  $2545,  $2985,  $2DC7,  $2545,  $1545,  $114B
|1BDF4A| dw          $14A5,  $1966,  $2EEB,  $4B0A,  $7FFF,  $25B1,  $1CED
|1BDF58| dw  $7FFF,  $14E9,  $152B,  $1D6D,  $29D0,  $3633,  $46B7,  $6FBF
|1BDF68| dw          $1463,  $2110,  $35B8,  $739C,  $4108,  $16DB,  $61AD
|1BDF76| dw  $7FFF,  $0C63,  $10A7,  $14EA,  $1D2B,  $2DC7,  $5294,  $739C
|1BDF86| dw          $18C6,  $7000,  $7C84,  $7CA5,  $3543,  $41A3,  $5243
|1BDF94| dw  $7FFF,  $0C42,  $1525,  $0000,  $0000,  $1DD0,  $3AD0,  $256D

.dungeon_0C
#Palettes_SaltyShellback:
; #RRGGBB :          282020, 483020, 684830, 886038, A88858, 785048, 604040
; #RRGGBB :  F8F8F8, 282020, 483020, 684830, 886038, A88858, 488080, 386060
; #RRGGBB :          303030, 585858, A0A0A0, E8E8E8, 784848, D0A830, A87850
; #RRGGBB :  F8F8F8, 282020, 483028, 583830, 704840, 403020, 705840, 584030
; #RRGGBB :          F8F8F8, 989868, C0C068, E8E868, 282828, 484868, 707068
; #RRGGBB :  F8F8F8, 282020, 402020, 482820, 583028, 302020, 604830, 403020
; #RRGGBB :          181828, 404028, 585830, 909060, C0C0A0, 604030, 583830
; #RRGGBB :  F8F8F8, 282020, 483028, 583830, 704840, 906858, C0A080, F8E8C8
; #RRGGBB :          202020, 804040, C06868, E0E0E0, 404868, D8B028, 6068B0
; #RRGGBB :  F8F8F8, 181818, 684020, 886038, A88858, 684840, A0A0A0, E0E0E0
; #RRGGBB :          282828, 901818, E02020, F87820, 384898, 6078C0, 7090F8
; #RRGGBB :  F8F8F8, 282020, 483020, 000000, 707030, 286868, 282020, 282020
|1BDFA4| dw          $1085,  $10C9,  $192D,  $1D91,  $2E35,  $254F,  $210C
|1BDFB2| dw  $7FFF,  $1085,  $10C9,  $192D,  $1D91,  $2E35,  $4209,  $3187
|1BDFC2| dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
|1BDFD0| dw  $7FFF,  $1085,  $14C9,  $18EB,  $212E,  $10C8,  $216E,  $190B
|1BDFE0| dw          $7FFF,  $3673,  $3718,  $37BD,  $14A5,  $3529,  $35CE
|1BDFEE| dw  $7FFF,  $1085,  $1088,  $10A9,  $14CB,  $1086,  $192C,  $10C8
|1BDFFE| dw          $1463,  $1508,  $196B,  $3252,  $5318,  $190C,  $18EB
|1BE00C| dw  $7FFF,  $1085,  $14C9,  $18EB,  $212E,  $2DB2,  $4298,  $67BF
|1BE01C| dw          $1084,  $2110,  $35B8,  $739C,  $3528,  $16DB,  $59AC
|1BE02A| dw  $7FFF,  $0C63,  $110D,  $1D91,  $2E35,  $212D,  $5294,  $739C
|1BE03A| dw          $14A5,  $0C72,  $109C,  $11FF,  $4D27,  $61EC,  $7E4E
|1BE048| dw  $7FFF,  $1085,  $10C9,  $0000,  $19CE,  $35A5,  $1085,  $1085

.dungeon_0D
#Palettes_BaconFactory:
; #RRGGBB :          181818, 583048, 785850, A08868, C8B890, 686870, 585860
; #RRGGBB :  F8F8F8, 181818, 583048, 785850, A08868, C8B890, 386060, 284848
; #RRGGBB :          303030, 585858, A0A0A0, E0E0E0, 784848, D0A830, A87850
; #RRGGBB :  F8F8F8, 181818, 505058, 585860, 686870, 502828, 785850, 386060
; #RRGGBB :          181818, 583048, 785850, A08868, C8B890, 30A828, 287028
; #RRGGBB :  000000, 181818, 383840, 404048, 484850, 303040, 583048, 284848
; #RRGGBB :          181818, 583048, 785850, A08868, C8B890, 887848, 786838
; #RRGGBB :  F8F8F8, 402020, 502828, 683030, 984848, D08888, E8D0D0, F8F8F8
; #RRGGBB :          303030, 804040, C06868, E0E0E0, 404878, D0A830, 7070B8
; #RRGGBB :  F8F8F8, 402020, 502828, 683030, 984848, 683030, 984848, 000000
; #RRGGBB :          282828, 284068, 3070A0, 4898B0, C8B890, 583048, 000000
; #RRGGBB :  F8F8F8, 181818, 503048, 000000, 000000, 383868, A08868, A89878
|1BE058| dw          $0C63,  $24CB,  $296F,  $3634,  $4AF9,  $39AD,  $316B
|1BE066| dw  $7FFF,  $0C63,  $24CB,  $296F,  $3634,  $4AF9,  $3187,  $2525
|1BE076| dw          $18C6,  $2D6B,  $5294,  $739C,  $252F,  $1ABA,  $29F5
|1BE084| dw  $7FFF,  $0C63,  $2D4A,  $316B,  $39AD,  $14AA,  $296F,  $3187
|1BE094| dw          $0C63,  $24CB,  $296F,  $3634,  $4AF9,  $16A6,  $15C5
|1BE0A2| dw  $0000,  $0C63,  $20E7,  $2508,  $2929,  $20C6,  $24CB,  $2525
|1BE0B2| dw          $0C63,  $24CB,  $296F,  $3634,  $4AF9,  $25F1,  $1DAF
|1BE0C0| dw  $7FFF,  $1088,  $14AA,  $18CD,  $2533,  $463A,  $6B5D,  $7FFF
|1BE0D0| dw          $18C6,  $2110,  $35B8,  $739C,  $3D28,  $1ABA,  $5DCE
|1BE0DE| dw  $7FFF,  $1088,  $14AA,  $18CD,  $2533,  $18CD,  $2533,  $0000
|1BE0EE| dw          $14A5,  $3505,  $51C6,  $5A69,  $4AF9,  $24CB,  $0000
|1BE0FC| dw  $7FFF,  $0C63,  $24CA,  $0000,  $0000,  $34E7,  $3634,  $3E75

.dungeon_0E
#Palettes_FreedomToWorship:
; #RRGGBB :          181818, 483028, 686040, 989878, C8C8A8, 705020, 707020
; #RRGGBB :  F8F8F8, 181818, 483028, 686040, 989878, C8C8A8, 705020, 707020
; #RRGGBB :          203028, 585858, A0A0A0, E8E8E8, 904848, D8B028, C87848
; #RRGGBB :  F8F8F8, 181818, 483828, 604030, 684838, 483828, 584820, 483020
; #RRGGBB :          181818, 503030, 807020, 18A028, F8A828, 6850F8, D81818
; #RRGGBB :  F8F8F8, 181818, 303020, 403828, 484030, 303020, 584820, 483020
; #RRGGBB :          181818, 502838, 804820, 988050, 682020, F8F8F8, 603848
; #RRGGBB :  F8F8F8, 181818, 682020, 985050, C08080, F8C0C0, 584820, 483020
; #RRGGBB :          202020, A83838, D86868, E0E0E0, 484868, D8B028, 6868B0
; #RRGGBB :  F8F8F8, 181818, 303020, 403828, 484030, 604030, A0A0A0, E0E0E0
; #RRGGBB :          181818, 804020, B87830, E8B848, 4848F8, D83030, 18A028
; #RRGGBB :  F8F8F8, 181818, 483028, 000000, 682020, 682020, 204020, 204020
|1BE10C| dw          $0C63,  $14C9,  $218D,  $3E73,  $5739,  $114E,  $11CE
|1BE11A| dw  $7FFF,  $0C63,  $14C9,  $218D,  $3E73,  $5739,  $114E,  $11CE
|1BE12A| dw          $14C4,  $2D6B,  $5294,  $77BD,  $2532,  $16DB,  $25F9
|1BE138| dw  $7FFF,  $0C63,  $14E9,  $190C,  $1D2D,  $14E9,  $112B,  $10C9
|1BE148| dw          $0C63,  $18CA,  $11D0,  $1683,  $16BF,  $7D4D,  $0C7B
|1BE156| dw  $7FFF,  $0C63,  $10C6,  $14E8,  $1909,  $10C6,  $112B,  $10C9
|1BE166| dw          $0C63,  $1CAA,  $1130,  $2A13,  $108D,  $7FFF,  $24EC
|1BE174| dw  $7FFF,  $0C63,  $108D,  $2953,  $4218,  $631F,  $112B,  $10C9
|1BE184| dw          $1084,  $1CF5,  $35BB,  $739C,  $3529,  $16DB,  $59AD
|1BE192| dw  $7FFF,  $0C63,  $10C6,  $14E8,  $1909,  $190C,  $5294,  $739C
|1BE1A2| dw          $0C63,  $1110,  $19F7,  $26FD,  $7D29,  $18DB,  $1683
|1BE1B0| dw  $7FFF,  $0C63,  $14C9,  $0000,  $108D,  $108D,  $1104,  $1104

.dungeon_0F
#Palettes_DungeonSet_0F:
; #RRGGBB :          202020, 503848, 784848, 987070, D09898, B0B078, 585828
; #RRGGBB :  F8F8F8, 202020, 503848, 784848, 987070, D09898, B0B078, 585828
; #RRGGBB :          203028, 585858, A0A0A0, E8E8E8, 904848, D8B028, C87848
; #RRGGBB :  F8F8F8, 202020, 604040, 704848, 805050, 306030, 906058, 585828
; #RRGGBB :          202020, 503848, 784848, 987070, E0E0F8, 6060F8, 2828C8
; #RRGGBB :  F8F8F8, 202040, 404070, 505078, 606088, 306030, 906058, 585828
; #RRGGBB :          202020, 604838, 807840, A09860, D83838, E0E0F8, 484898
; #RRGGBB :  F8F8F8, 202020, 0068D8, 00D8F8, A09860, F8F8F8, F87878, D83838
; #RRGGBB :          202020, A89820, 484890, E0E0E0, 284028, F87878, D83838
; #RRGGBB :  F8F8F8, 202020, 483050, 584060, 605068, 306030, 906058, 585828
; #RRGGBB :          202020, 886058, 584050, D8A040, 406820, D83838, 981010
; #RRGGBB :  F8F8F8, 202020, 486068, 004800, 386838, 306030, 183018, 183018
|1BE1C0| dw          $1084,  $24EA,  $252F,  $39D3,  $4E7A,  $3ED6,  $156B
|1BE1CE| dw  $7FFF,  $1084,  $24EA,  $252F,  $39D3,  $4E7A,  $3ED6,  $156B
|1BE1DE| dw          $14C4,  $2D6B,  $5294,  $77BD,  $2532,  $16DB,  $25F9
|1BE1EC| dw  $7FFF,  $1084,  $210C,  $252E,  $2950,  $1986,  $2D92,  $156B
|1BE1FC| dw          $1084,  $24EA,  $252F,  $39D3,  $7F9C,  $7D8C,  $64A5
|1BE20A| dw  $7FFF,  $2084,  $3908,  $3D4A,  $458C,  $1986,  $2D92,  $156B
|1BE21A| dw          $1084,  $1D2C,  $21F0,  $3274,  $1CFB,  $7F9C,  $4D29
|1BE228| dw  $7FFF,  $1084,  $6DA0,  $7F60,  $3274,  $7FFF,  $3DFF,  $1CFB
|1BE238| dw          $1084,  $1275,  $4929,  $739C,  $1505,  $3DFF,  $1CFB
|1BE246| dw  $7FFF,  $1084,  $28C9,  $310B,  $354C,  $1986,  $2D92,  $156B
|1BE256| dw          $1084,  $2D91,  $290B,  $229B,  $11A8,  $1CFB,  $0853
|1BE264| dw  $7FFF,  $1084,  $3589,  $0120,  $1DA7,  $1986,  $0CC3,  $0CC3

.dungeon_10
#Palettes_DungeonSet_10:
; #RRGGBB :          282818, 483820, 705838, A09058, D8C880, 88A888, 608060
; #RRGGBB :  F8F8F8, 282818, 583820, 705838, A09058, C8C878, 385038, 283028
; #RRGGBB :          203028, 585858, A0A0A0, E8E8E8, 904848, D8B028, C87848
; #RRGGBB :  F8F8F8, 202020, 404058, 505068, 606070, F8F8F8, 705838, 385038
; #RRGGBB :          282818, 483820, 705838, A09058, D8C880, C89038, A85028
; #RRGGBB :  F8F8F8, 181818, 604838, 886038, 907040, 283848, 584020, 283028
; #RRGGBB :          282818, 304830, 507050, 80A080, D0D0B0, A09058, 705838
; #RRGGBB :  F8F8F8, 383820, 583820, 705838, A09058, B8B880, E8E8B8, F8F8F8
; #RRGGBB :          202020, A83838, D86868, E0E0E0, 484868, D8B028, 6868B0
; #RRGGBB :  F8F8F8, 181818, 282848, 303050, 303050, 404058, A0A0A0, E0E0E0
; #RRGGBB :          202020, 684040, 886060, C09898, F8F0E8, 705838, A09058
; #RRGGBB :  F8F8F8, 202018, 503020, 000000, 000000, 883838, A09058, 888058
|1BE274| dw          $0CA5,  $10E9,  $1D6E,  $2E54,  $433B,  $46B1,  $320C
|1BE282| dw  $7FFF,  $0CA5,  $10EB,  $1D6E,  $2E54,  $3F39,  $1D47,  $14C5
|1BE292| dw          $14C4,  $2D6B,  $5294,  $77BD,  $2532,  $16DB,  $25F9
|1BE2A0| dw  $7FFF,  $1084,  $2D08,  $354A,  $398C,  $7FFF,  $1D6E,  $1D47
|1BE2B0| dw          $0CA5,  $10E9,  $1D6E,  $2E54,  $433B,  $1E59,  $1555
|1BE2BE| dw  $7FFF,  $0C63,  $1D2C,  $1D91,  $21D2,  $24E5,  $110B,  $14C5
|1BE2CE| dw          $0CA5,  $1926,  $29CA,  $4290,  $5B5A,  $2E54,  $1D6E
|1BE2DC| dw  $7FFF,  $10E7,  $10EB,  $1D6E,  $2E54,  $42F7,  $5FBD,  $7FFF
|1BE2EC| dw          $1084,  $1CF5,  $35BB,  $739C,  $3529,  $16DB,  $59AD
|1BE2FA| dw  $7FFF,  $0C63,  $24A5,  $28C6,  $28C6,  $2D08,  $5294,  $739C
|1BE30A| dw          $1084,  $210D,  $3191,  $4E78,  $77DF,  $1D6E,  $2E54
|1BE318| dw  $7FFF,  $0C84,  $10CA,  $0000,  $0000,  $1CF1,  $2E54,  $2E11

.dungeon_11
#Palettes_DungeonSet_11:
; #RRGGBB :          F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :  000000, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :          F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :  000000, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :          F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :  000000, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :          F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :  000000, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :          F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :  000000, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :          F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :  000000, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
|1BE328| dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE336| dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE346| dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE354| dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE364| dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE372| dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE382| dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE390| dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE3A0| dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE3AE| dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE3BE| dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE3CC| dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE

.dungeon_12
#Palettes_DungeonSet_12:
; #RRGGBB :          F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :  000000, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :          F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :  000000, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :          F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :  000000, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :          F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :  000000, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8, F0F0E8
; #RRGGBB :          282828, 700070, C000C0, F800F8, F868F8, F898F8, F8C8F8
; #RRGGBB :  000000, 282828, 700070, C000C0, F800F8, F868F8, F898F8, F8C8F8
; #RRGGBB :          000000, 700070, C000C0, F800F8, F868F8, F898F8, F8C8F8
; #RRGGBB :  000000, 000000, 700070, C000C0, F800F8, F868F8, F898F8, F8C8F8
|1BE3DC| dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE3EA| dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE3FA| dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE408| dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE418| dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE426| dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE436| dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE444| dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
|1BE454| dw          $14A5,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
|1BE462| dw  $0000,  $14A5,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
|1BE472| dw          $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
|1BE480| dw  $0000,  $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F

.dungeon_13
#Palettes_DungeonSet_13:
; #RRGGBB :          000000, 700070, C000C0, F800F8, F868F8, F898F8, F8C8F8
; #RRGGBB :  000000, 282828, 700070, C000C0, F800F8, F868F8, F898F8, F8C8F8
; #RRGGBB :          282828, 700070, C000C0, F800F8, F868F8, F898F8, F8C8F8
; #RRGGBB :  000000, 000000, 700070, C000C0, F800F8, F868F8, F898F8, F8C8F8
; #RRGGBB :          000000, 700070, C000C0, F800F8, F868F8, F898F8, F8C8F8
; #RRGGBB :  000000, 282828, 700070, C000C0, F800F8, F868F8, F898F8, F8C8F8
; #RRGGBB :          000000, 700070, C000C0, F800F8, F868F8, F898F8, F8C8F8
; #RRGGBB :  000000, 000000, 700070, C000C0, F800F8, F868F8, F898F8, F8C8F8
; #RRGGBB :          000000, 700070, C000C0, F800F8, F868F8, F898F8, F8C8F8
; #RRGGBB :  000000, 000000, 700070, C000C0, F800F8, F868F8, F898F8, F8C8F8
; #RRGGBB :          000000, 700070, C000C0, F800F8, F868F8, F898F8, F8C8F8
; #RRGGBB :  000000, 000000, 700070, C000C0, F800F8, F868F8, F898F8, F8C8F8
|1BE490| dw          $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
|1BE49E| dw  $0000,  $14A5,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
|1BE4AE| dw          $14A5,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
|1BE4BC| dw  $0000,  $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
|1BE4CC| dw          $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
|1BE4DA| dw  $0000,  $14A5,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
|1BE4EA| dw          $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
|1BE4F8| dw  $0000,  $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
|1BE508| dw          $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
|1BE516| dw  $0000,  $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
|1BE526| dw          $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
|1BE534| dw  $0000,  $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F

.dungeonmap_bg_00
#Palettes_DungeonMap:
; #RRGGBB :  000000, 3878E0, 3878E0, 3878E0, 3878E0, 3878E0, A8A8F8, 383838
; #RRGGBB :  000000, F8F8F8, E8A800, 688898, 98B8C8, C8E0F8, 688898, C8E0F8
; #RRGGBB :  000000, 003868, 003868, 003868, 003868, 003868, A8A8F8, 383838
; #RRGGBB :  000000, F8F8F8, 385898, F07800, E8A800, F0D878, 98B8C8, C8E0F8
; #RRGGBB :  000000, 3878E0, F8D070, 3878E0, 3878E0, 3878E0, A8A8F8, 383838
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000, 000000
; #RRGGBB :  000000, 3878E0, 3878E0, F87858, F8D070, 3878E0, A8A8F8, 383838
; #RRGGBB :  000000, F8F8F8, 385898, 688898, 98B8C8, C8E0F8, E8A800, F0D878
; #RRGGBB :  000000, 481800, 582808, 704018, 905028, A06838, A08048, A89050
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000, 000000
; #RRGGBB :  000000, 003070, 104080, 205090, 3060A0, 4070B0, 5080C0, 6090D0
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000, 000000
|1BE544| dw  $0000,  $71E7,  $71E7,  $71E7,  $71E7,  $71E7,  $7EB5,  $1CE7
|1BE554| dw  $0000,  $7FFF,  $02BD,  $4E2D,  $66F3,  $7F99,  $4E2D,  $7F99
|1BE564| dw  $0000,  $34E0,  $34E0,  $34E0,  $34E0,  $34E0,  $7EB5,  $1CE7
|1BE574| dw  $0000,  $7FFF,  $4D67,  $01FE,  $02BD,  $3F7E,  $66F3,  $7F99
|1BE584| dw  $0000,  $71E7,  $3B5F,  $71E7,  $71E7,  $71E7,  $7EB5,  $1CE7
|1BE594| dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000
|1BE5A4| dw  $0000,  $71E7,  $71E7,  $2DFF,  $3B5F,  $71E7,  $7EB5,  $1CE7
|1BE5B4| dw  $0000,  $7FFF,  $4D67,  $4E2D,  $66F3,  $7F99,  $02BD,  $3F7E
|1BE5C4| dw  $0000,  $0069,  $04AB,  $0D0E,  $1552,  $1DB4,  $2614,  $2A55
|1BE5D4| dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000
|1BE5E4| dw  $0000,  $38C0,  $4102,  $4944,  $5186,  $59C8,  $620A,  $6A4C
|1BE5F4| dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_00
#Palettes_OW1BE604:
; #RRGGBB :  282828, 000000, 000000, 000000, 000000, 000000, 000000
|1BE604| dw  $14A5,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_01
#Palettes_OW1BE612:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
|1BE612| dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_02
#Palettes_OW1BE620:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
|1BE620| dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_03
#Palettes_OW1BE62E:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
|1BE62E| dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_04
#Palettes_OW1BE63C:
; #RRGGBB :  202020, 700000, C81020, F84050, 403838, 101010, 484040
|1BE63C| dw  $1084,  $000E,  $1059,  $291F,  $1CE8,  $0842,  $2109

.owanim_05
#Palettes_OW1BE64A:
; #RRGGBB :  181818, 282880, 3858B8, 70A8F8, C0C0F8, 787030, E0D0F0
|1BE64A| dw  $0C63,  $40A5,  $5D67,  $7EAE,  $7F18,  $19CF,  $7B5C

.owanim_06
#Palettes_OW1BE658:
; #RRGGBB :  203010, 201000, 005028, 308860, 503020, 006030, 806038
|1BE658| dw  $08C4,  $0044,  $1540,  $3226,  $10CA,  $1980,  $1D90

.owanim_07
#Palettes_OW1BE666:
; #RRGGBB :  282828, 304878, 3860A8, 70B0F0, 483828, 5880C0, 786038
|1BE666| dw  $14A5,  $3D26,  $5587,  $7ACE,  $14E9,  $620B,  $1D8F

.owanim_08
#Palettes_OW1BE674:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
|1BE674| dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_09
#Palettes_OW1BE682:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
|1BE682| dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_0A
#Palettes_OW1BE690:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
|1BE690| dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_0B
#Palettes_OW1BE69E:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
|1BE69E| dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_0C
#Palettes_OW1BE6AC:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
|1BE6AC| dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_0D
#Palettes_OW1BE6BA:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
|1BE6BA| dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owmain_00
#Palettes_OW1BE6C8:
; #RRGGBB :  282828, 483828, 604828, 786038, 307030, 489848, 887848
; #RRGGBB :  282828, 483828, 604828, 786038, 686028, 888040, 887848
; #RRGGBB :  282828, 483828, 604828, 786038, 604828, 887848, 887848
; #RRGGBB :  282828, 508070, 78B890, B0E8B8, 285828, 489848, 30D030
; #RRGGBB :  282828, 605030, 887048, A08860, 287838, 489848, 408848
|1BE6C8| dw  $14A5,  $14E9,  $152C,  $1D8F,  $19C6,  $2669,  $25F1
|1BE6D6| dw  $14A5,  $14E9,  $152C,  $1D8F,  $158D,  $2211,  $25F1
|1BE6E4| dw  $14A5,  $14E9,  $152C,  $1D8F,  $152C,  $25F1,  $25F1
|1BE6F2| dw  $14A5,  $3A0A,  $4AEF,  $5FB6,  $1565,  $2669,  $1B46
|1BE700| dw  $14A5,  $194C,  $25D1,  $3234,  $1DE5,  $2669,  $2628

.owmain_01
#Palettes_OW1BE70E:
; #RRGGBB :  181818, 382018, 503020, 684820, 606030, 908850, 806038
; #RRGGBB :  181818, 382818, 503020, 684820, 705830, 907850, 806038
; #RRGGBB :  181818, 382818, 503020, 684820, 684820, 806038, 806038
; #RRGGBB :  203010, 487040, 709868, A0C898, 606030, 908850, A09860
; #RRGGBB :  203010, 886898, 98B0E0, B8A820, 606030, 908850, 787038
|1BE70E| dw  $0C63,  $0C87,  $10CA,  $112D,  $198C,  $2A32,  $1D90
|1BE71C| dw  $0C63,  $0CA7,  $10CA,  $112D,  $196E,  $29F2,  $1D90
|1BE72A| dw  $0C63,  $0CA7,  $10CA,  $112D,  $112D,  $1D90,  $1D90
|1BE738| dw  $08C4,  $21C9,  $366E,  $4F34,  $198C,  $2A32,  $3274
|1BE746| dw  $08C4,  $4DB1,  $72D3,  $12B7,  $198C,  $2A32,  $1DCF

.owmain_02
#Palettes_OW1BE754:
; #RRGGBB :  181818, 382018, 503020, 684820, 686028, 787030, 806038
; #RRGGBB :  181818, 382018, 503020, 684820, B0E8D8, 805040, F8F8F8
; #RRGGBB :  181818, 382018, 503020, 684820, 684820, 806038, 806038
; #RRGGBB :  303828, 508070, 78B890, B0F0B8, 686028, 787030, F868F8
; #RRGGBB :  282828, 605020, 887038, A88858, 686028, 787030, 806038
|1BE754| dw  $0C63,  $0C87,  $10CA,  $112D,  $158D,  $19CF,  $1D90
|1BE762| dw  $0C63,  $0C87,  $10CA,  $112D,  $6FB6,  $2150,  $7FFF
|1BE770| dw  $0C63,  $0C87,  $10CA,  $112D,  $112D,  $1D90,  $1D90
|1BE77E| dw  $14E6,  $3A0A,  $4AEF,  $5FD6,  $158D,  $19CF,  $7DBF
|1BE78C| dw  $14A5,  $114C,  $1DD1,  $2E35,  $158D,  $19CF,  $1D90

.owmain_03
#Palettes_OW1BE79A:
; #RRGGBB :  202010, 383018, 504028, 685028, 504028, 605038, 786840
; #RRGGBB :  202010, 383018, 484028, 605830, A87880, 101010, D0A0A8
; #RRGGBB :  202010, 383018, 484028, 605830, 484028, 786840, 786840
; #RRGGBB :  202020, 487040, 709868, A0C898, 504028, 605038, 706048
; #RRGGBB :  202020, 886898, 98B0E0, B8A820, 483820, 605038, 504028
|1BE79A| dw  $0884,  $0CC7,  $150A,  $154D,  $150A,  $1D4C,  $21AF
|1BE7A8| dw  $0884,  $0CC7,  $1509,  $196C,  $41F5,  $0842,  $569A
|1BE7B6| dw  $0884,  $0CC7,  $1509,  $196C,  $1509,  $21AF,  $21AF
|1BE7C4| dw  $1084,  $21C9,  $366E,  $4F34,  $150A,  $1D4C,  $258E
|1BE7D2| dw  $1084,  $4DB1,  $72D3,  $12B7,  $10E9,  $1D4C,  $150A

.owmain_04
#Palettes_OW1BE7E0:
; #RRGGBB :  202000, 282800, 383800, 403800, 585000, 684000, C04000
; #RRGGBB :  002800, 004000, 105010, 186018, 206820, 606048, 404030
; #RRGGBB :  303848, 101828, 202838, 384050, 683038, 784048, 703840
; #RRGGBB :  586070, 485060, 304050, 303848, 202828, 606048, 404030
; #RRGGBB :  202020, 404030, 606048, 989880, B8B8A0, 582030, 904828
|1BE7E0| dw  $0084,  $00A5,  $00E7,  $00E8,  $014B,  $010D,  $0118
|1BE7EE| dw  $00A0,  $0100,  $0942,  $0D83,  $11A4,  $258C,  $1908
|1BE7FC| dw  $24E6,  $1462,  $1CA4,  $2907,  $1CCD,  $250F,  $20EE
|1BE80A| dw  $398B,  $3149,  $2906,  $24E6,  $14A4,  $258C,  $1908
|1BE818| dw  $1084,  $1908,  $258C,  $4273,  $52F7,  $188B,  $1532

.owmain_05
#Palettes_OW1BE826:
; #RRGGBB :  F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8
; #RRGGBB :  F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8
; #RRGGBB :  F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
|1BE826| dw  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF
|1BE834| dw  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF
|1BE842| dw  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF
|1BE850| dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000
|1BE85E| dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owaux_00
#Palettes_OW1BE86C:
; #RRGGBB :  283028, 705840, 987850, B89868, 683838, 905050, B8B088
; #RRGGBB :  283028, 508070, 78B890, B0E8B8, D0F0D0, 307030, 489848
; #RRGGBB :  282828, 605030, 887040, A89060, 286840, 407840, 285830
|1BE86C| dw  $14C5,  $216E,  $29F3,  $3677,  $1CED,  $2952,  $46D7
|1BE87A| dw  $14C5,  $3A0A,  $4AEF,  $5FB6,  $6BDA,  $19C6,  $2669
|1BE888| dw  $14A5,  $194C,  $21D1,  $3255,  $21A5,  $21E8,  $1965

.owaux_01
#Palettes_OW1BE896:
; #RRGGBB :  282828, 805868, B888A0, E0C0D0, 989840, 586090, 8090C0
; #RRGGBB :  282828, 605030, 887040, 285830, 905050, 307030, 703838
; #RRGGBB :  282828, 887050, C0B098, E8E8E8, 385030, 688060, 307030
|1BE896| dw  $14A5,  $3570,  $5237,  $6B1C,  $2273,  $498B,  $6250
|1BE8A4| dw  $14A5,  $194C,  $21D1,  $1965,  $2952,  $19C6,  $1CEE
|1BE8B2| dw  $14A5,  $29D1,  $4ED8,  $77BD,  $1947,  $320D,  $19C6

.owaux_02
#Palettes_OW1BE8C0:
; #RRGGBB :  282828, 886038, C88038, E8A848, F8D0D0, B85858, D88090
; #RRGGBB :  282828, F8F8F8, 206878, 888888, 883838, F8F8F8, F8F8F8
; #RRGGBB :  383028, 787058, A09878, E0D0C0, 307030, 489848, F8F8F0
|1BE8C0| dw  $14A5,  $1D91,  $1E19,  $26BD,  $6B5F,  $2D77,  $4A1B
|1BE8CE| dw  $14A5,  $7FFF,  $3DA4,  $4631,  $1CF1,  $7FFF,  $7FFF
|1BE8DC| dw  $14C7,  $2DCF,  $3E74,  $635C,  $19C6,  $2669,  $7BFF

.owaux_03
#Palettes_OW1BE8EA:
; #RRGGBB :  98C0F8, A8D0F8, C8F0F8, E8F8F8, 407060, 000000, 80B0F8
; #RRGGBB :  F8F8F8, E01000, 000000, E05000, F88000, F8A800, F8C800
; #RRGGBB :  F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8
|1BE8EA| dw  $7F13,  $7F55,  $7FD9,  $7FFD,  $31C8,  $0000,  $7ED0
|1BE8F8| dw  $7FFF,  $005C,  $0000,  $015C,  $021F,  $02BF,  $033F
|1BE906| dw  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF

.owaux_04
#Palettes_OW1BE914:
; #RRGGBB :  303030, 786038, 5880C0, C0E0D0, 387838, 489848, 887848
; #RRGGBB :  303030, 3860A0, B08838, F0E078, 387838, 489848, 5880C0
; #RRGGBB :  282828, 483828, 604828, 786038, 307030, 489848, 887848
|1BE914| dw  $18C6,  $1D8F,  $620B,  $6B98,  $1DE7,  $2669,  $25F1
|1BE922| dw  $18C6,  $5187,  $1E36,  $3F9E,  $1DE7,  $2669,  $620B
|1BE930| dw  $14A5,  $14E9,  $152C,  $1D8F,  $19C6,  $2669,  $25F1

.owaux_05
#Palettes_OW1BE93E:
; #RRGGBB :  202010, 504808, 787840, A8A870, C8C890, 605038, 602830
; #RRGGBB :  202010, 504808, 787840, A8A870, C8C890, 605038, 602830
; #RRGGBB :  202010, 404028, 605830, 786840, A87880, 605038, D0A0A8
|1BE93E| dw  $0884,  $052A,  $21EF,  $3AB5,  $4B39,  $1D4C,  $18AC
|1BE94C| dw  $0884,  $052A,  $21EF,  $3AB5,  $4B39,  $1D4C,  $18AC
|1BE95A| dw  $0884,  $1508,  $196C,  $21AF,  $41F5,  $1D4C,  $569A

.owaux_06
#Palettes_OW1BE968:
; #RRGGBB :  103070, 1840B0, 3868E8, 58B8F8, 90E8F8, 787030, 181818
; #RRGGBB :  181818, 584828, 908050, C0B070, 501828, 806038, 483828
; #RRGGBB :  181818, 604838, 805040, B09848, B0E8D8, 787030, F8F8F8
|1BE968| dw  $38C2,  $5903,  $75A7,  $7EEB,  $7FB2,  $19CF,  $0C63
|1BE976| dw  $0C63,  $152B,  $2A12,  $3AD8,  $146A,  $1D90,  $14E9
|1BE984| dw  $0C63,  $1D2C,  $2150,  $2676,  $6FB6,  $19CF,  $7FFF

.owaux_07
#Palettes_OW1BE992:
; #RRGGBB :  181818, 382018, 503020, 684820, 686028, 787030, 806038
; #RRGGBB :  181818, 382018, 503020, 684820, B0E8D8, F8F8F8, 806038
; #RRGGBB :  181818, 306060, 307070, 887058, C0C0F8, 509860, E0D0F0
|1BE992| dw  $0C63,  $0C87,  $10CA,  $112D,  $158D,  $19CF,  $1D90
|1BE9A0| dw  $0C63,  $0C87,  $10CA,  $112D,  $6FB6,  $7FFF,  $1D90
|1BE9AE| dw  $0C63,  $3186,  $39C6,  $2DD1,  $7F18,  $326A,  $7B5C

.owaux_08
#Palettes_OW1BE9BC:
; #RRGGBB :  282828, 508070, 78B890, A0E0A8, 307030, 988870, B0A888
; #RRGGBB :  282828, 685838, 887858, F8F8F8, 286840, B87890, A06068
; #RRGGBB :  282828, 705840, 987850, B89868, 284860, 406888, B8B088
|1BE9BC| dw  $14A5,  $3A0A,  $4AEF,  $5794,  $19C6,  $3A33,  $46B6
|1BE9CA| dw  $14A5,  $1D6D,  $2DF1,  $7FFF,  $21A5,  $49F7,  $3594
|1BE9D8| dw  $14A5,  $216E,  $29F3,  $3677,  $3125,  $45A8,  $46D7

.owaux_09
#Palettes_OW1BE9E6:
; #RRGGBB :  282828, 586848, 889860, B8C088, 304830, 483828, 887848
; #RRGGBB :  282828, 605030, 887040, 888040, 989030, 989040, 706828
; #RRGGBB :  282828, 586848, 889860, B8C088, D0D0B8, 706830, 888040
|1BE9E6| dw  $14A5,  $25AB,  $3271,  $4717,  $1926,  $14E9,  $25F1
|1BE9F4| dw  $14A5,  $194C,  $21D1,  $2211,  $1A53,  $2253,  $15AE
|1BEA02| dw  $14A5,  $25AB,  $3271,  $4717,  $5F5A,  $19AE,  $2211

.owaux_0A
#Palettes_OW1BEA10:
; #RRGGBB :  000050, 001070, 082888, 2040A0, 6060C8, 6080D0, 489848
; #RRGGBB :  383838, 588060, 98B888, C8E0A0, F0F8D0, 406880, 489848
; #RRGGBB :  284028, 605020, 489848, 206830, 288048, 289860, 40B068
|1BEA10| dw  $2800,  $3840,  $44A1,  $5104,  $658C,  $6A0C,  $2669
|1BEA1E| dw  $1CE7,  $320B,  $46F3,  $5399,  $6BFE,  $41A8,  $2669
|1BEA2C| dw  $1505,  $114C,  $2669,  $19A4,  $2605,  $3265,  $36C8

.owaux_0B
#Palettes_OW1BEA3A:
; #RRGGBB :  403800, B0C860, 706050, A09088, 88A850, 587828, A8B870
; #RRGGBB :  202010, 503808, 685020, 887040, B08020, D0B038, 805000
; #RRGGBB :  202010, 584818, 887830, B8A878, E8E8B0, 705830, 907850
|1BEA3A| dw  $00E8,  $3336,  $298E,  $4654,  $2AB1,  $15EB,  $3AF5
|1BEA48| dw  $0884,  $04EA,  $114D,  $21D1,  $1216,  $1EDA,  $0150
|1BEA56| dw  $0884,  $0D2B,  $19F1,  $3EB7,  $5BBD,  $196E,  $29F2

.owaux_0C
#Palettes_OW1BEA64:
; #RRGGBB :  000000, 080810, 181820, 282830, 383858, 484868, 585890
; #RRGGBB :  382818, 705050, A08088, D0B8B8, 686838, F8F8F8, A8B870
; #RRGGBB :  202010, 606040, 909058, A8B870, 607038, 809058, 484820
|1BEA64| dw  $0000,  $0821,  $1063,  $18A5,  $2CE7,  $3529,  $496B
|1BEA72| dw  $0CA7,  $294E,  $4614,  $5EFA,  $1DAD,  $7FFF,  $3AF5
|1BEA80| dw  $0884,  $218C,  $2E52,  $3AF5,  $1DCC,  $2E50,  $1129

.owaux_0D
#Palettes_OW1BEA8E:
; #RRGGBB :  204048, 405858, 607880, 609898, 80B0B0, 006030, A8D8D8
; #RRGGBB :  202010, 006030, 505818, 788830, C8C060, A87810, E0A858
; #RRGGBB :  202010, 005028, 003020, 807838, 705830, 907850, 006030
|1BEA8E| dw  $2504,  $2D68,  $41EC,  $4E6C,  $5AD0,  $1980,  $6F75
|1BEA9C| dw  $0884,  $1980,  $0D6A,  $1A2F,  $3319,  $09F5,  $2EBC
|1BEAAA| dw  $0884,  $1540,  $10C0,  $1DF0,  $196E,  $29F2,  $1980

.owaux_0E
#Palettes_OW1BEAB8:
; #RRGGBB :  181818, 684820, 006030, 108050, 606030, 908850, 806038
; #RRGGBB :  181818, 005028, F8F8F8, F8F8F8, 606030, 908850, 006030
; #RRGGBB :  181818, 382018, 503020, 684820, 606030, 908850, 806038
|1BEAB8| dw  $0C63,  $112D,  $1980,  $2A02,  $198C,  $2A32,  $1D90
|1BEAC6| dw  $0C63,  $1540,  $7FFF,  $7FFF,  $198C,  $2A32,  $1980
|1BEAD4| dw  $0C63,  $0C87,  $10CA,  $112D,  $198C,  $2A32,  $1D90

.owaux_0F
#Palettes_OW1BEAE2:
; #RRGGBB :  403828, 806838, A89858, D0C078, F8F8F8, C0C088, D0D098
; #RRGGBB :  202010, 503808, 685020, 887040, B87060, D89888, 985048
; #RRGGBB :  303020, 906848, B89060, D8B070, A06058, C08070, E0A898
|1BEAE2| dw  $14E8,  $1DB0,  $2E75,  $3F1A,  $7FFF,  $4718,  $4F5A
|1BEAF0| dw  $0884,  $04EA,  $114D,  $21D1,  $31D7,  $467B,  $2553
|1BEAFE| dw  $10C6,  $25B2,  $3257,  $3ADB,  $2D94,  $3A18,  $4EBC

.owaux_10
#Palettes_OW1BEB0C:
; #RRGGBB :  181818, 906848, B89060, D8B868, 405050, 605870, 808090
; #RRGGBB :  303828, 487040, 709868, A0C898, C0E8B8, 606030, 908850
; #RRGGBB :  202010, 503808, 685020, 887040, 606830, 788848, 385838
|1BEB0C| dw  $0C63,  $25B2,  $3257,  $36FB,  $2948,  $396C,  $4A10
|1BEB1A| dw  $14E6,  $21C9,  $366E,  $4F34,  $5FB8,  $198C,  $2A32
|1BEB28| dw  $0884,  $04EA,  $114D,  $21D1,  $19AC,  $262F,  $1D67

.owaux_11
#Palettes_OW1BEB36:
; #RRGGBB :  702028, A04030, C87040, F8B860, 080018, 080018, 500030
; #RRGGBB :  202010, 503808, 685020, 887040, 706090, 9880B0, 504878
; #RRGGBB :  202010, 705818, 987830, B09048, B8A058, 604020, 503000
|1BEB36| dw  $148E,  $1914,  $21D9,  $32FF,  $0C01,  $0C01,  $180A
|1BEB44| dw  $0884,  $04EA,  $114D,  $21D1,  $498E,  $5A13,  $3D2A
|1BEB52| dw  $0884,  $0D6E,  $19F3,  $2656,  $2E97,  $110C,  $00CA

.owaux_12
#Palettes_OW1BEB60:
; #RRGGBB :  202010, 484008, 585820, 888850, A8A870, 605038, 807000
; #RRGGBB :  202010, 383018, 504028, 685028, F8F8B0, D0A0A8, 786840
; #RRGGBB :  101010, 101010, 181818, 481010, 403838, 181818, 484040
|1BEB60| dw  $0884,  $0509,  $116B,  $2A31,  $3AB5,  $1D4C,  $01D0
|1BEB6E| dw  $0884,  $0CC7,  $150A,  $154D,  $5BFF,  $569A,  $21AF
|1BEB7C| dw  $0842,  $0842,  $0C63,  $0849,  $1CE8,  $0C63,  $2109

.owaux_13
#Palettes_OW1BEB8A:
; #RRGGBB :  202020, 380008, 501820, 703008, 905028, 284830, 403818
; #RRGGBB :  202010, 583038, 707038, A0A068, C0C088, 605038, 602830
; #RRGGBB :  202010, 404028, 605830, 786840, A87880, 605038, D0A0A8
|1BEB8A| dw  $1084,  $0407,  $106A,  $04CE,  $1552,  $1925,  $0CE8
|1BEB98| dw  $0884,  $1CCB,  $1DCE,  $3694,  $4718,  $1D4C,  $18AC
|1BEBA6| dw  $0884,  $1508,  $196C,  $21AF,  $41F5,  $1D4C,  $569A

;===================================================================================================

SwordPaletteOffsets:
|1BEBB4| db (PaletteData.sword_00-PaletteData.sword) ; $00
|1BEBB5| db (PaletteData.sword_00-PaletteData.sword) ; $00
|1BEBB6| db (PaletteData.sword_01-PaletteData.sword) ; $06
|1BEBB7| db (PaletteData.sword_02-PaletteData.sword) ; $0C
|1BEBB8| db (PaletteData.sword_03-PaletteData.sword) ; $12

; a lot of extra values here
; were more swords planned?
|1BEBB9| db $18, $1E, $24, $2A, $30, $36, $3C, $42

ShieldPaletteOffsets:
|1BEBC1| db (PaletteData.shield_00-PaletteData.shield) ; $00
|1BEBC2| db (PaletteData.shield_00-PaletteData.shield) ; $00
|1BEBC3| db (PaletteData.shield_01-PaletteData.shield) ; $08
|1BEBC4| db (PaletteData.shield_02-PaletteData.shield) ; $10
|1BEBC5| db $18 ; was an extra shield planned?

;===================================================================================================

PaletteIDtoOffset:
|1BEBC6| db $00 ; 0x00*14
|1BEBC7| db $0E ; 0x01*14
|1BEBC8| db $1C ; 0x02*14
|1BEBC9| db $2A ; 0x03*14
|1BEBCA| db $38 ; 0x04*14
|1BEBCB| db $46 ; 0x05*14
|1BEBCC| db $54 ; 0x06*14
|1BEBCD| db $62 ; 0x07*14
|1BEBCE| db $70 ; 0x08*14
|1BEBCF| db $7E ; 0x09*14
|1BEBD0| db $8C ; 0x0A*14
|1BEBD1| db $9A ; 0x0B*14
|1BEBD2| db $A8 ; 0x0C*14
|1BEBD3| db $B6 ; 0x0D*14
|1BEBD4| db $C4 ; 0x0E*14
|1BEBD5| db $D2 ; 0x0F*14

;---------------------------------------------------------------------------------------------------

PaletteIDtoOffset_16bit:
|1BEBD6| dw $0000 ; 0x00*14
|1BEBD8| dw $000E ; 0x01*14
|1BEBDA| dw $001C ; 0x02*14
|1BEBDC| dw $002A ; 0x03*14
|1BEBDE| dw $0038 ; 0x04*14
|1BEBE0| dw $0046 ; 0x05*14
|1BEBE2| dw $0054 ; 0x06*14
|1BEBE4| dw $0062 ; 0x07*14
|1BEBE6| dw $0070 ; 0x08*14
|1BEBE8| dw $007E ; 0x09*14
|1BEBEA| dw $008C ; 0x0A*14
|1BEBEC| dw $009A ; 0x0B*14
|1BEBEE| dw $00A8 ; 0x0C*14
|1BEBF0| dw $00B6 ; 0x0D*14
|1BEBF2| dw $00C4 ; 0x0E*14
|1BEBF4| dw $00D2 ; 0x0F*14
|1BEBF6| dw $00E0 ; 0x10*14
|1BEBF8| dw $00EE ; 0x11*14
|1BEBFA| dw $00FC ; 0x12*14
|1BEBFC| dw $010A ; 0x13*14
|1BEBFE| dw $0118 ; 0x14*14
|1BEC00| dw $0126 ; 0x15*14
|1BEC02| dw $0134 ; 0x16*14
|1BEC04| dw $0142 ; 0x17*14

;===================================================================================================

LinkMailPalettesOffsets:
|1BEC06| db (Palettes_GreenMail-PaletteData.Link)/2 ; $00
|1BEC07| db (Palettes_BlueMail-PaletteData.Link)/2  ; $0F
|1BEC08| db (Palettes_RedMail-PaletteData.Link)/2   ; $1E
|1BEC09| db (Palettes_Bunny-PaletteData.Link)/2     ; $2D
|1BEC0A| db (Palettes_Zap-PaletteData.Link)/2       ; $3C

;===================================================================================================

UnusedPaletteOffsets:
|1BEC0B| db $00
|1BEC0C| db $1C
|1BEC0D| db $38
|1BEC0E| db $54
|1BEC0F| db $70
|1BEC10| db $8C
|1BEC11| db $A8
|1BEC12| db $C4

;===================================================================================================

PaletteIDtoOffset_OW:
|1BEC13| dw $0000 ; 0x00*42
|1BEC15| dw $002A ; 0x01*42
|1BEC17| dw $0054 ; 0x02*42
|1BEC19| dw $007E ; 0x03*42
|1BEC1B| dw $00A8 ; 0x04*42
|1BEC1D| dw $00D2 ; 0x05*42
|1BEC1F| dw $00FC ; 0x06*42
|1BEC21| dw $0126 ; 0x07*42
|1BEC23| dw $0150 ; 0x08*42
|1BEC25| dw $017A ; 0x09*42
|1BEC27| dw $01A4 ; 0x0A*42
|1BEC29| dw $01CE ; 0x0B*42
|1BEC2B| dw $01F8 ; 0x0C*42
|1BEC2D| dw $0222 ; 0x0D*42
|1BEC2F| dw $024C ; 0x0E*42
|1BEC31| dw $0276 ; 0x0F*42
|1BEC33| dw $02A0 ; 0x10*42
|1BEC35| dw $02CA ; 0x11*42
|1BEC37| dw $02F4 ; 0x12*42
|1BEC39| dw $031E ; 0x13*42

;---------------------------------------------------------------------------------------------------

PaletteIDtoOffset_OW2:
|1BEC3B| dw $0000 ; 0x00*70
|1BEC3D| dw $0046 ; 0x01*70
|1BEC3F| dw $008C ; 0x02*70
|1BEC41| dw $00D2 ; 0x03*70
|1BEC43| dw $0118 ; 0x04*70
|1BEC45| dw $015E ; 0x05*70

;===================================================================================================

PaletteIDtoOffset_HUD:
|1BEC47| db $00
|1BEC48| db $40
|1BEC49| db $00
|1BEC4A| db $30

;===================================================================================================

PaletteIDtoOffset_UW:
|1BEC4B| dw $0000 ; $00*180
|1BEC4D| dw $00B4 ; $01*180
|1BEC4F| dw $0168 ; $02*180
|1BEC51| dw $021C ; $03*180
|1BEC53| dw $02D0 ; $04*180
|1BEC55| dw $0384 ; $05*180
|1BEC57| dw $0438 ; $06*180
|1BEC59| dw $04EC ; $07*180
|1BEC5B| dw $05A0 ; $08*180
|1BEC5D| dw $0654 ; $09*180
|1BEC5F| dw $0708 ; $0A*180
|1BEC61| dw $07BC ; $0B*180
|1BEC63| dw $0870 ; $0C*180
|1BEC65| dw $0924 ; $0D*180
|1BEC67| dw $09D8 ; $0E*180
|1BEC69| dw $0A8C ; $0F*180
|1BEC6B| dw $0B40 ; $10*180
|1BEC6D| dw $0BF4 ; $11*180
|1BEC6F| dw $0CA8 ; $12*180
|1BEC71| dw $0D5C ; $13*180

;===================================================================================================

PaletteWorldIDtoOffset:
|1BEC73| dw $0000 ; Light World
|1BEC75| dw $0078 ; Dark World

;===================================================================================================

; TODO more descriptiveness in all of these

; this is palette 0
PaletteLoad_SpritePal0Left:
|1BEC77| REP #$21

|1BEC79| LDX.w $0AAC

|1BEC7C| LDA.l PaletteIDtoOffset,X
|1BEC80| AND.w #$00FF
|1BEC83| ADC.w #PaletteData.spritepal0_00
|1BEC86| STA.b $00

|1BEC88| REP #$10

|1BEC8A| LDA.w #$0102
|1BEC8D| LDX.w $0ABD
|1BEC90| BEQ .no_translucency

|1BEC92| LDA.w #$01E2

.no_translucency
|1BEC95| LDX.w #$0006
|1BEC98| JSR PaletteLoadSingle

|1BEC9B| SEP #$30

|1BEC9D| RTL

;===================================================================================================

PaletteLoad_SpriteMain:
|1BEC9E| REP #$21

|1BECA0| LDX.b #$00

|1BECA2| LDA.b $8A
|1BECA4| AND.w #$0040
|1BECA7| BEQ .light_world

|1BECA9| INX
|1BECAA| INX

.light_world
|1BECAB| LDA.l PaletteWorldIDtoOffset,X
|1BECAF| ADC.w #PaletteData.sprite_00
|1BECB2| STA.b $00

|1BECB4| REP #$10

|1BECB6| LDA.w #$0122
|1BECB9| LDX.w #$000E
|1BECBC| LDY.w #$0003
|1BECBF| JSR PaletteLoadMultiple

|1BECC2| SEP #$30

|1BECC4| RTL

;===================================================================================================

; this is palette 5
PaletteLoad_SpriteAux1:
|1BECC5| REP #$31

|1BECC7| LDA.w $0AAD
|1BECCA| AND.w #$00FF
|1BECCD| ASL A
|1BECCE| TAX

|1BECCF| LDA.l PaletteIDtoOffset_16bit,X
|1BECD3| ADC.w #PaletteData.spriteaux_00
|1BECD6| STA.b $00

|1BECD8| LDA.w #$01A2
|1BECDB| LDX.w #$0006
|1BECDE| JSR PaletteLoadSingle

|1BECE1| SEP #$30

|1BECE3| RTL

;===================================================================================================

; this is palette 6
PaletteLoad_SpriteAux2:
|1BECE4| REP #$31

|1BECE6| LDA.w $0AAE
|1BECE9| AND.w #$00FF
|1BECEC| ASL A
|1BECED| TAX

|1BECEE| LDA.l PaletteIDtoOffset_16bit,X
|1BECF2| ADC.w #PaletteData.spriteaux_00
|1BECF5| STA.b $00

|1BECF7| LDA.w #$01C2
|1BECFA| LDX.w #$0006
|1BECFD| JSR PaletteLoadSingle

|1BED00| SEP #$30

|1BED02| RTL

;===================================================================================================

PaletteLoad_Sword:
|1BED03| REP #$21

|1BED05| LDA.l $7EF359
|1BED09| AND.w #$00FF
|1BED0C| TAX

|1BED0D| LDA.l SwordPaletteOffsets,X
|1BED11| AND.w #$00FF
|1BED14| ADC.w #PaletteData.sword_00
|1BED17| STA.b $00

|1BED19| REP #$10

|1BED1B| LDA.w #$01B2
|1BED1E| LDX.w #$0002
|1BED21| JSR PaletteLoadMultiple_Arbitrary

|1BED24| SEP #$30

|1BED26| INC.b $15

|1BED28| RTL

;===================================================================================================

PaletteLoad_Shield:
|1BED29| REP #$21

|1BED2B| LDA.l $7EF35A
|1BED2F| AND.w #$00FF
|1BED32| TAX

|1BED33| LDA.l ShieldPaletteOffsets,X
|1BED37| AND.w #$00FF
|1BED3A| ADC.w #PaletteData.shield_00
|1BED3D| STA.b $00

|1BED3F| REP #$10

|1BED41| LDA.w #$01B8
|1BED44| LDX.w #$0003
|1BED47| JSR PaletteLoadMultiple_Arbitrary

|1BED4A| SEP #$30

|1BED4C| INC.b $15

|1BED4E| RTL

;===================================================================================================
; Unused sprite palette routine
;===================================================================================================
UNREACHABLE_1BED4F:
|1BED4F| REP #$21

|1BED51| LDX.w $0AB0

|1BED54| LDA.l PaletteIDtoOffset,X
|1BED58| AND.w #$00FF
|1BED5B| ADC.w #PaletteData.environment_00
|1BED5E| STA.b $00

|1BED60| REP #$10

|1BED62| LDA.w #$01C2
|1BED65| LDX.w #$0006
|1BED68| JSR PaletteLoadSingle

|1BED6B| SEP #$30

|1BED6D| RTL

;===================================================================================================

PaletteLoad_SpriteEnvironment:
|1BED6E| LDA.b $1B
|1BED70| BEQ .outdoors

#PaletteLoad_SpriteEnvironment_Underworld:
|1BED72| REP #$21

|1BED74| LDX.w $0AB1

|1BED77| LDA.l PaletteIDtoOffset,X
|1BED7B| AND.w #$00FF
|1BED7E| ADC.w #PaletteData.environment_00
|1BED81| STA.b $00

|1BED83| REP #$10

|1BED85| LDA.w #$01D2
|1BED88| LDX.w #$0006
|1BED8B| JSR PaletteLoadSingle

|1BED8E| SEP #$30

|1BED90| RTL

;---------------------------------------------------------------------------------------------------

.outdoors
|1BED91| REP #$21

|1BED93| LDX.b #$07

|1BED95| LDA.b $8A
|1BED97| AND.w #$0040
|1BED9A| BEQ .light_world

|1BED9C| INX
|1BED9D| INX

.light_world
|1BED9E| PHX

|1BED9F| LDA.l PaletteIDtoOffset,X
|1BEDA3| AND.w #$00FF
|1BEDA6| ADC.w #PaletteData.environment_00
|1BEDA9| STA.b $00

|1BEDAB| REP #$10

|1BEDAD| LDA.w #$0112

|1BEDB0| LDX.w $0ABD
|1BEDB3| BEQ .not_trans

|1BEDB5| LDA.w #$01F2

.not_trans
|1BEDB8| LDX.w #$0006

|1BEDBB| JSR PaletteLoadSingle

|1BEDBE| SEP #$10

|1BEDC0| PLX
|1BEDC1| DEX

|1BEDC2| LDA.l PaletteIDtoOffset,X
|1BEDC6| AND.w #$00FF
|1BEDC9| CLC
|1BEDCA| ADC.w #PaletteData.environment_00
|1BEDCD| STA.b $00

|1BEDCF| REP #$10

|1BEDD1| LDA.w #$01D2
|1BEDD4| LDX.w #$0006
|1BEDD7| JSR PaletteLoadSingle

|1BEDDA| SEP #$30

|1BEDDC| RTL

;===================================================================================================

PaletteLoad_DungeonMapSprite:
|1BEDDD| REP #$21

|1BEDDF| LDA.w #PaletteData.dungeonmap_sprites_00
|1BEDE2| STA.b $00

|1BEDE4| REP #$10

|1BEDE6| LDA.w #$0182
|1BEDE9| LDX.w #$0006
|1BEDEC| LDY.w #$0002
|1BEDEF| JSR PaletteLoadMultiple

|1BEDF2| SEP #$30

|1BEDF4| RTL

;===================================================================================================
; Reload's armor from whatever
;===================================================================================================
Palettes_LinkGloveColors:
; #RRGGBB :  B0B8A0, B0D800
|1BEDF5| dw  $52F6,  $0376

;---------------------------------------------------------------------------------------------------

PaletteLoad_LinkArmorAndGloves:
|1BEDF9| REP #$21

|1BEDFB| LDA.l $7EF35B
|1BEDFF| AND.w #$00FF
|1BEE02| TAX

|1BEE03| LDA.l LinkMailPalettesOffsets,X
|1BEE07| AND.w #$00FF
|1BEE0A| ASL A
|1BEE0B| ADC.w #PaletteData.link_00
|1BEE0E| STA.b $00

|1BEE10| REP #$10

|1BEE12| LDA.w #$01E2 ; sprite palette 7
|1BEE15| LDX.w #$000E ; 15 colors
|1BEE18| JSR PaletteLoadMultiple_Arbitrary

;===================================================================================================

PaletteLoad_LinkGloves:
|1BEE1B| REP #$30

|1BEE1D| LDA.l $7EF354
|1BEE21| AND.w #$00FF
|1BEE24| BEQ .no_gloves

|1BEE26| DEC A
|1BEE27| ASL A
|1BEE28| TAX

|1BEE29| LDA.l Palettes_LinkGloveColors,X
|1BEE2D| STA.l $7EC4FA
|1BEE31| STA.l $7EC6FA

.no_gloves
|1BEE35| SEP #$30

|1BEE37| INC.b $15

|1BEE39| RTL

;===================================================================================================

PaletteLoad_DungeonMapBG:
|1BEE3A| REP #$21

|1BEE3C| LDA.w #PaletteData.dungeonmap_bg_00
|1BEE3F| STA.b $00

|1BEE41| REP #$10

|1BEE43| LDA.w #$0040
|1BEE46| LDX.w #$000F
|1BEE49| LDY.w #$0005
|1BEE4C| JSR PaletteLoadMultiple

|1BEE4F| SEP #$30

|1BEE51| RTL

;===================================================================================================

PaletteLoad_HUD:
|1BEE52| REP #$21

|1BEE54| LDX.w $0AB2

|1BEE57| LDA.l PaletteIDtoOffset_HUD,X
|1BEE5B| AND.w #$00FF
|1BEE5E| ADC.w #PaletteData.hud_00
|1BEE61| STA.b $00

|1BEE63| REP #$10

|1BEE65| LDA.w #$0000
|1BEE68| LDX.w #$000F
|1BEE6B| LDY.w #$0001
|1BEE6E| JSR PaletteLoadMultiple

|1BEE71| SEP #$30

|1BEE73| RTL

;===================================================================================================

PaletteLoad_UnderworldSet:
|1BEE74| REP #$21

|1BEE76| LDX.w $0AB6

|1BEE79| LDA.l PaletteIDtoOffset_UW,X
|1BEE7D| ADC.w #PaletteData.dungeon_00
|1BEE80| STA.b $00

|1BEE82| PHA

|1BEE83| REP #$10

|1BEE85| LDA.w #$0042
|1BEE88| LDX.w #$000E
|1BEE8B| LDY.w #$0005
|1BEE8E| JSR PaletteLoadMultiple

|1BEE91| PLA
|1BEE92| STA.b $00

|1BEE94| LDA.w #$0112
|1BEE97| LDX.w $0ABD
|1BEE9A| BEQ .not_trans

|1BEE9C| LDA.w #$01F2

.not_trans
|1BEE9F| LDX.w #$0006
|1BEEA2| JSR PaletteLoadSingle

|1BEEA5| SEP #$30

|1BEEA7| RTL

;===================================================================================================

PaletteLoad_OWBG3:
|1BEEA8| REP #$21

|1BEEAA| LDX.w $0AB8

|1BEEAD| LDA.l PaletteIDtoOffset,X
|1BEEB1| AND.w #$00FF
|1BEEB4| ADC.w #PaletteData.owanim_00
|1BEEB7| STA.b $00

|1BEEB9| REP #$10

|1BEEBB| LDA.w #$00E2
|1BEEBE| LDX.w #$0006
|1BEEC1| JSR PaletteLoadSingle

|1BEEC4| SEP #$30

|1BEEC6| RTL

;===================================================================================================

PaletteLoad_OWBGMain:
|1BEEC7| REP #$21

|1BEEC9| LDA.w $0AB3
|1BEECC| ASL A
|1BEECD| TAX

|1BEECE| LDA.l PaletteIDtoOffset_OW2,X
|1BEED2| ADC.w #PaletteData.owmain_00
|1BEED5| STA.b $00

|1BEED7| REP #$10

|1BEED9| LDA.w #$0042
|1BEEDC| LDX.w #$0006
|1BEEDF| LDY.w #$0004
|1BEEE2| JSR PaletteLoadMultiple

|1BEEE5| SEP #$30

|1BEEE7| RTL

;===================================================================================================

PaletteLoad_OWBG1:
|1BEEE8| REP #$21

|1BEEEA| LDA.w $0AB4
|1BEEED| AND.w #$00FF
|1BEEF0| ASL A
|1BEEF1| TAX

|1BEEF2| LDA.l PaletteIDtoOffset_OW,X
|1BEEF6| ADC.w #PaletteData.owaux_00
|1BEEF9| STA.b $00

|1BEEFB| REP #$10

|1BEEFD| LDA.w #$0052
|1BEF00| LDX.w #$0006
|1BEF03| LDY.w #$0002
|1BEF06| JSR PaletteLoadMultiple

|1BEF09| SEP #$30

|1BEF0B| RTL

;===================================================================================================

PaletteLoad_OWBG2:
|1BEF0C| REP #$21

|1BEF0E| LDA.w $0AB5
|1BEF11| AND.w #$00FF
|1BEF14| ASL A
|1BEF15| TAX

|1BEF16| LDA.l PaletteIDtoOffset_OW,X
|1BEF1A| ADC.w #PaletteData.owaux_00
|1BEF1D| STA.b $00

|1BEF1F| REP #$10

|1BEF21| LDA.w #$00B2
|1BEF24| LDX.w #$0006
|1BEF27| LDY.w #$0002
|1BEF2A| JSR PaletteLoadMultiple

|1BEF2D| SEP #$30

|1BEF2F| RTL

;===================================================================================================
; Enters with:
; A = Palette offset
PaletteLoadSingle:
|1BEF30| TXY
|1BEF31| CLC
|1BEF32| ADC.w $0AA8
|1BEF35| TAX

|1BEF36| LDA.w #^PaletteData
|1BEF39| STA.b $02

.next_color
|1BEF3B| LDA.b [$00]
|1BEF3D| STA.l $7EC300,X

|1BEF41| INC.b $00
|1BEF43| INC.b $00

|1BEF45| INX
|1BEF46| INX

|1BEF47| DEY
|1BEF48| BPL .next_color

|1BEF4A| RTS

;===================================================================================================
; Enters with:
; A = Palette offset
; X = Number of colors per palette
; Y = Number of palettes
;===================================================================================================
PaletteLoadMultiple:
|1BEF4B| STA.b $04
|1BEF4D| STX.b $06
|1BEF4F| STY.b $08

|1BEF51| LDA.w #^PaletteData
|1BEF54| STA.b $02

;---------------------------------------------------------------------------------------------------

.next_palette
|1BEF56| LDA.w $0AA8 ; get an offset for X start TODO
|1BEF59| CLC
|1BEF5A| ADC.b $04
|1BEF5C| TAX

|1BEF5D| LDY.b $06

.next_color
|1BEF5F| LDA.b [$00]
|1BEF61| STA.l $7EC300,X

|1BEF65| INC.b $00
|1BEF67| INC.b $00

|1BEF69| INX
|1BEF6A| INX

|1BEF6B| DEY

|1BEF6C| BPL .next_color

|1BEF6E| LDA.b $04
|1BEF70| CLC
|1BEF71| ADC.w #$0020
|1BEF74| STA.b $04

|1BEF76| DEC.b $08
|1BEF78| BPL .next_palette

|1BEF7A| RTS

;===================================================================================================
; Enters with:
; A   = offset into buffer
; X   = Number of colors minus 1
; $00 = 16-bit address in bank1B
;===================================================================================================
PaletteLoadMultiple_Arbitrary:
|1BEF7B| TXY
|1BEF7C| TAX

|1BEF7D| LDA.w #^PaletteData
|1BEF80| STA.b $02

.next_color
|1BEF82| LDA.b [$00]

|1BEF84| STA.l $7EC300,X
|1BEF88| STA.l $7EC500,X

|1BEF8C| INC.b $00
|1BEF8E| INC.b $00

|1BEF90| INX
|1BEF91| INX

|1BEF92| DEY
|1BEF93| BPL .next_color

|1BEF95| RTS

;===================================================================================================

PaletteLoadForFileSelect:
|1BEF96| PHB

|1BEF97| LDA.b #^PaletteData
|1BEF99| PHA
|1BEF9A| PLB

|1BEF9B| REP #$30

;---------------------------------------------------------------------------------------------------

; File 1
|1BEF9D| LDX.w #$0000
|1BEFA0| LDA.l $700354
|1BEFA4| STA.b $0C

|1BEFA6| LDA.l $70035B
|1BEFAA| JSR PaletteLoadForFileSelect_Armor

|1BEFAD| LDX.w #$0000
|1BEFB0| LDA.l $700359
|1BEFB4| JSR PaletteLoadForFileSelect_Sword

|1BEFB7| LDX.w #$0000
|1BEFBA| LDA.l $70035A
|1BEFBE| JSR PaletteLoadForFileSelect_Shield

;---------------------------------------------------------------------------------------------------

; File 2
|1BEFC1| LDX.w #$0040
|1BEFC4| LDA.l $700854
|1BEFC8| STA.b $0C

|1BEFCA| LDA.l $70085B
|1BEFCE| JSR PaletteLoadForFileSelect_Armor

|1BEFD1| LDX.w #$0040
|1BEFD4| LDA.l $700859
|1BEFD8| JSR PaletteLoadForFileSelect_Sword

|1BEFDB| LDX.w #$0040
|1BEFDE| LDA.l $70085A
|1BEFE2| JSR PaletteLoadForFileSelect_Shield

;---------------------------------------------------------------------------------------------------

; File 3
|1BEFE5| LDX.w #$0080
|1BEFE8| LDA.l $700D54
|1BEFEC| STA.b $0C

|1BEFEE| LDA.l $700D5B
|1BEFF2| JSR PaletteLoadForFileSelect_Armor

|1BEFF5| LDX.w #$0080
|1BEFF8| LDA.l $700D59
|1BEFFC| JSR PaletteLoadForFileSelect_Sword

|1BEFFF| LDX.w #$0080
|1BF002| LDA.l $700D5A
|1BF006| JSR PaletteLoadForFileSelect_Shield

|1BF009| LDY.w #$0000
|1BF00C| LDX.w #$0000

; Loads the low colors shared by every mail
.next_low_color
|1BF00F| LDA.w PaletteData.sprite_00_right,Y
|1BF012| STA.l $7EC4D0,X
|1BF016| STA.l $7EC6D0,X

|1BF01A| LDA.w PaletteData.sprite_01_right,Y
|1BF01D| STA.l $7EC4F0,X
|1BF021| STA.l $7EC6F0,X

|1BF025| INY
|1BF026| INY

|1BF027| INX
|1BF028| INX
|1BF029| CPX.w #$000E ; This should be $0010, otherwise the fairy doesn't have her skin
|1BF02C| BNE .next_low_color

|1BF02E| SEP #$30

|1BF030| PLB

|1BF031| RTL

;===================================================================================================

PaletteLoadForFileSelect_Armor:
|1BF032| PHX

|1BF033| AND.w #$00FF
|1BF036| ASL A
|1BF037| TAY

|1BF038| LDA.w LinkMailPalettesOffsets,Y
|1BF03B| AND.w #$00FF
|1BF03E| CLC
|1BF03F| ADC.w #$00F0
|1BF042| TAY

|1BF043| LDA.w #$000F
|1BF046| STA.b $0E

;---------------------------------------------------------------------------------------------------

.next_color
|1BF048| LDA.w PaletteData.sprite_00,Y
|1BF04B| STA.l $7EC402,X
|1BF04F| STA.l $7EC602,X

|1BF053| INY
|1BF054| INY

|1BF055| INX
|1BF056| INX

|1BF057| DEC.b $0E
|1BF059| BNE .next_color

;---------------------------------------------------------------------------------------------------

|1BF05B| PLX

|1BF05C| LDA.b $0C
|1BF05E| AND.w #$00FF
|1BF061| BEQ .exit

|1BF063| DEC A
|1BF064| ASL A
|1BF065| TAY

|1BF066| LDA.w Palettes_LinkGloveColors,Y
|1BF069| STA.l $7EC41A,X
|1BF06D| STA.l $7EC61A,X

.exit
|1BF071| RTS

;===================================================================================================

; Sword $FF only just happens to read sword palette 0!
PaletteLoadForFileSelect_Sword:
|1BF072| AND.w #$00FF
|1BF075| TAY

|1BF076| LDA.w SwordPaletteOffsets,Y
|1BF079| AND.w #$00FF
|1BF07C| CLC
|1BF07D| ADC.w #PaletteData.sword-PaletteData ; #$0418
|1BF080| TAY

|1BF081| LDA.w #$0003
|1BF084| STA.b $0E

;---------------------------------------------------------------------------------------------------

.next_color
|1BF086| LDA.w PaletteData.sprite_00,Y
|1BF089| STA.l $7EC432,X
|1BF08D| STA.l $7EC632,X

|1BF091| INY
|1BF092| INY

|1BF093| INX
|1BF094| INX

|1BF095| DEC.b $0E
|1BF097| BNE .next_color

|1BF099| RTS

;===================================================================================================

PaletteLoadForFileSelect_Shield:
|1BF09A| AND.w #$00FF
|1BF09D| TAY

|1BF09E| LDA.w ShieldPaletteOffsets,Y
|1BF0A1| AND.w #$00FF
|1BF0A4| CLC
|1BF0A5| ADC.w #PaletteData.shield-PaletteData ; #$0430
|1BF0A8| TAY

|1BF0A9| LDA.w #$0004
|1BF0AC| STA.b $0E

;---------------------------------------------------------------------------------------------------

.next_color
|1BF0AE| LDA.w PaletteData.sprite_00,Y
|1BF0B1| STA.l $7EC438,X
|1BF0B5| STA.l $7EC638,X

|1BF0B9| INY
|1BF0BA| INY

|1BF0BB| INX
|1BF0BC| INX

|1BF0BD| DEC.b $0E
|1BF0BF| BNE .next_color

|1BF0C1| RTS

;===================================================================================================

PaletteLoadAgahnim:
|1BF0C2| REP #$31

; [HARDCODED] index load
|1BF0C4| LDA.l PaletteIDtoOffset_16bit+($0E*2)
|1BF0C8| ADC.w #PaletteData.spriteaux_00
|1BF0CB| STA.b $00

|1BF0CD| PHA

|1BF0CE| LDA.w #$0162
|1BF0D1| LDX.w #$0006
|1BF0D4| JSR PaletteLoadMultiple_Arbitrary

;---------------------------------------------------------------------------------------------------

|1BF0D7| PLA
|1BF0D8| STA.b $00

|1BF0DA| PHA

|1BF0DB| LDA.w #$0182
|1BF0DE| LDX.w #$0006
|1BF0E1| JSR PaletteLoadMultiple_Arbitrary

;---------------------------------------------------------------------------------------------------

|1BF0E4| PLA
|1BF0E5| STA.b $00

|1BF0E7| LDA.w #$01A2
|1BF0EA| LDX.w #$0006
|1BF0ED| JSR PaletteLoadMultiple_Arbitrary

;---------------------------------------------------------------------------------------------------

|1BF0F0| LDA.l PaletteIDtoOffset_16bit+($15*2)
|1BF0F4| CLC
|1BF0F5| ADC.w #PaletteData.spriteaux_00
|1BF0F8| STA.b $00

|1BF0FA| LDA.w #$01C2
|1BF0FD| LDX.w #$0006
|1BF100| JSR PaletteLoadMultiple_Arbitrary

|1BF103| SEP #$30

|1BF105| INC.b $15

|1BF107| RTL

;===================================================================================================
; FREE ROM: 0x08
;===================================================================================================
NULL_1BF108:
|1BF108| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================
; Holy jeez why does this exist? It's barely used for anything...
;===================================================================================================
; The following tile types are in this table:
; TILETYPE 00, TILETYPE 01, TILETYPE 02, TILETYPE 08
; TILETYPE 09, TILETYPE 10, TILETYPE 12, TILETYPE 18
; TILETYPE 1A, TILETYPE 20, TILETYPE 22, TILETYPE 27
; TILETYPE 28, TILETYPE 29, TILETYPE 2A, TILETYPE 2B
; TILETYPE 2E, TILETYPE 2F, TILETYPE 40, TILETYPE 42
; TILETYPE 43, TILETYPE 44, TILETYPE 46, TILETYPE 48
; TILETYPE 4B, TILETYPE 50, TILETYPE 51, TILETYPE 52
; TILETYPE 53, TILETYPE 54, TILETYPE 55, TILETYPE 56
; TILETYPE 57, TILETYPE 5C
;---------------------------------------------------------------------------------------------------
OverworldTileTypeTable:
|1BF110| db $01, $27, $01, $02, $02, $02, $01, $01
|1BF118| db $01, $01, $01, $01, $01, $01, $01, $02
|1BF120| db $01, $27, $01, $01, $01, $01, $27, $27
|1BF128| db $01, $02, $01, $02, $01, $01, $27, $27
|1BF130| db $01, $01, $02, $27, $01, $01, $27, $27
|1BF138| db $02, $27, $01, $01, $02, $02, $27, $02
|1BF140| db $02, $01, $01, $02, $48, $48, $50, $02
|1BF148| db $02, $01, $48, $02, $02, $00, $02, $02
|1BF150| db $02, $02, $01, $02, $01, $27, $02, $02
|1BF158| db $01, $00, $01, $02, $02, $01, $01, $01
|1BF160| db $02, $02, $02, $02, $27, $43, $00, $01
|1BF168| db $02, $02, $01, $01, $01, $01, $43, $01
|1BF170| db $02, $01, $00, $01, $42, $02, $02, $48
|1BF178| db $02, $02, $01, $02, $48, $02, $02, $42
|1BF180| db $02, $48, $00, $48, $01, $02, $27, $27
|1BF188| db $27, $48, $01, $48, $48, $02, $27, $27
|1BF190| db $01, $02, $01, $01, $02, $02, $27, $27
|1BF198| db $27, $27, $01, $01, $02, $01, $02, $02
|1BF1A0| db $01, $01, $01, $01, $02, $27, $02, $01
|1BF1A8| db $02, $02, $27, $27, $27, $27, $00, $00
|1BF1B0| db $00, $00, $02, $00, $00, $00, $00, $48
|1BF1B8| db $27, $00, $00, $00, $48, $00, $27, $27
|1BF1C0| db $27, $27, $02, $02, $02, $00, $27, $02
|1BF1C8| db $02, $00, $01, $01, $02, $02, $00, $02
|1BF1D0| db $01, $02, $02, $02, $01, $00, $00, $10
|1BF1D8| db $18, $01, $01, $02, $01, $01, $02, $01
|1BF1E0| db $01, $29, $00, $18, $02, $02, $01, $01
|1BF1E8| db $01, $01, $48, $10, $01, $01, $27, $01
|1BF1F0| db $01, $48, $48, $01, $01, $01, $18, $00
|1BF1F8| db $48, $01, $01, $01, $48, $01, $01, $01
|1BF200| db $48, $01, $27, $01, $01, $01, $01, $01
|1BF208| db $48, $02, $02, $02, $02, $02, $02, $48
|1BF210| db $00, $54, $48, $48, $12, $1A, $1A, $00
|1BF218| db $27, $00, $27, $27, $12, $48, $48, $48
|1BF220| db $00, $00, $00, $09, $48, $09, $01, $01
|1BF228| db $01, $09, $09, $09, $18, $48, $10, $09
|1BF230| db $09, $09, $10, $10, $01, $48, $48, $01
|1BF238| db $08, $10, $09, $09, $08, $02, $00, $48
|1BF240| db $02, $01, $08, $09, $00, $02, $02, $02
|1BF248| db $02, $48, $02, $01, $02, $02, $02, $02
|1BF250| db $01, $12, $02, $01, $02, $02, $02, $02
|1BF258| db $02, $10, $08, $00, $09, $00, $00, $12
|1BF260| db $1A, $01, $01, $01, $01, $10, $01, $08
|1BF268| db $01, $09, $09, $01, $00, $12, $01, $01
|1BF270| db $48, $01, $12, $1A, $01, $00, $1A, $12
|1BF278| db $48, $00, $01, $01, $29, $00, $18, $00
|1BF280| db $00, $00, $12, $01, $01, $01, $01, $01
|1BF288| db $01, $00, $01, $00, $00, $00, $00, $01
|1BF290| db $02, $22, $01, $01, $02, $22, $01, $01
|1BF298| db $01, $01, $01, $02, $02, $01, $01, $02
|1BF2A0| db $42, $01, $01, $01, $02, $01, $43, $02
|1BF2A8| db $02, $43, $42, $02, $01, $00, $29, $01
|1BF2B0| db $42, $01, $02, $02, $01, $00, $01, $02
|1BF2B8| db $02, $02, $02, $02, $02, $02, $02, $01
|1BF2C0| db $02, $02, $02, $02, $02, $01, $00, $01
|1BF2C8| db $01, $01, $01, $01, $01, $02, $02, $01
|1BF2D0| db $00, $01, $00, $02, $00, $01, $02, $02
|1BF2D8| db $02, $02, $02, $02, $22, $01, $02, $02
|1BF2E0| db $02, $02, $02, $01, $01, $01, $01, $02
|1BF2E8| db $02, $01, $01, $01, $01, $02, $43, $01
|1BF2F0| db $02, $02, $01, $02, $02, $00, $12, $00
|1BF2F8| db $01, $02, $12, $01, $01, $2B, $01, $00
|1BF300| db $00, $01, $18, $00, $00, $00, $00, $00
|1BF308| db $00, $10, $01, $00, $00, $48, $00, $00
|1BF310| db $48, $01, $00, $02, $01, $02, $00, $00
|1BF318| db $02, $01, $02, $00, $01, $00, $48, $52
|1BF320| db $00, $00, $4B, $00, $00, $00, $00, $00
|1BF328| db $00, $01, $12, $27, $2B, $01, $00, $12
|1BF330| db $01, $01, $01, $01, $09, $01, $57, $57
|1BF338| db $57, $57, $01, $1A, $02, $02, $01, $02
|1BF340| db $02, $01, $1A, $00, $1A, $48, $00, $00
|1BF348| db $01, $53, $18, $56, $56, $56, $56, $48
|1BF350| db $48, $02, $01, $02, $01, $02, $02, $01
|1BF358| db $01, $01, $02, $01, $01, $02, $01, $01
|1BF360| db $01, $01, $01, $01, $02, $01, $01, $01
|1BF368| db $01, $01, $01, $01, $01, $18, $10, $02
|1BF370| db $02, $10, $01, $02, $02, $00, $00, $02
|1BF378| db $00, $02, $02, $02, $02, $02, $02, $00
|1BF380| db $01, $01, $48, $02, $48, $01, $02, $00
|1BF388| db $00, $00, $00, $02, $01, $02, $02, $02
|1BF390| db $02, $02, $02, $02, $02, $02, $02, $02
|1BF398| db $02, $02, $02, $02, $02, $02, $01, $01
|1BF3A0| db $02, $02, $02, $02, $02, $02, $00, $27
|1BF3A8| db $20, $20, $20, $27, $27, $27, $02, $20
|1BF3B0| db $20, $02, $02, $02, $02, $02, $02, $01
|1BF3B8| db $01, $01, $01, $00, $00, $02, $02, $02
|1BF3C0| db $01, $18, $02, $02, $01, $02, $02, $02
|1BF3C8| db $02, $02, $5C, $09, $01, $02, $02, $02
|1BF3D0| db $5C, $09, $09, $09, $02, $08, $09, $09
|1BF3D8| db $48, $02, $09, $02, $08, $08, $02, $01
|1BF3E0| db $10, $08, $09, $08, $18, $08, $09, $08
|1BF3E8| db $08, $09, $09, $02, $09, $1A, $09, $1A
|1BF3F0| db $00, $01, $01, $08, $00, $48, $48, $48
|1BF3F8| db $09, $09, $00, $48, $48, $10, $09, $00
|1BF400| db $01, $02, $22, $29, $00, $09, $1A, $08
|1BF408| db $5C, $08, $5C, $01, $01, $02, $08, $12
|1BF410| db $01, $18, $01, $12, $01, $1A, $48, $02
|1BF418| db $08, $5C, $08, $00, $02, $02, $08, $02
|1BF420| db $5C, $02, $02, $08, $00, $48, $00, $12
|1BF428| db $01, $48, $00, $02, $02, $12, $12, $12
|1BF430| db $02, $00, $02, $08, $08, $08, $02, $02
|1BF438| db $01, $00, $01, $02, $01, $02, $02, $01
|1BF440| db $02, $02, $27, $27, $27, $27, $27, $27
|1BF448| db $01, $01, $01, $02, $02, $01, $01, $01
|1BF450| db $02, $02, $02, $02, $01, $01, $02, $02
|1BF458| db $02, $02, $01, $01, $01, $02, $02, $01
|1BF460| db $01, $02, $01, $02, $2B, $01, $43, $01
|1BF468| db $01, $01, $01, $01, $01, $02, $02, $02
|1BF470| db $00, $00, $02, $02, $27, $27, $27, $27
|1BF478| db $27, $01, $01, $27, $55, $55, $27, $01
|1BF480| db $01, $27, $02, $55, $55, $01, $01, $01
|1BF488| db $01, $01, $02, $02, $00, $40, $01, $02
|1BF490| db $02, $48, $48, $48, $00, $29, $01, $01
|1BF498| db $01, $2B, $01, $02, $01, $02, $42, $00
|1BF4A0| db $02, $02, $00, $00, $08, $08, $08, $1A
|1BF4A8| db $01, $01, $08, $02, $01, $08, $02, $01
|1BF4B0| db $27, $01, $02, $00, $27, $27, $00, $00
|1BF4B8| db $00, $00, $27, $00, $00, $00, $00, $01
|1BF4C0| db $01, $01, $01, $01, $01, $01, $01, $01
|1BF4C8| db $01, $27, $01, $22, $27, $48, $48, $48
|1BF4D0| db $02, $01, $00, $00, $02, $01, $00, $00
|1BF4D8| db $01, $01, $01, $00, $01, $01, $01, $00
|1BF4E0| db $01, $01, $27, $27, $27, $27, $01, $01
|1BF4E8| db $01, $01, $02, $01, $02, $01, $02, $02
|1BF4F0| db $02, $02, $02, $20, $01, $00, $00, $01
|1BF4F8| db $00, $00, $01, $01, $01, $02, $22, $22
|1BF500| db $00, $01, $43, $01, $01, $01, $01, $02
|1BF508| db $01, $01, $01, $01, $01, $01, $48, $01
|1BF510| db $01, $01, $01, $01, $00, $00, $00, $01
|1BF518| db $01, $01, $01, $01, $00, $02, $00, $00
|1BF520| db $02, $00, $00, $00, $00, $00, $00, $00
|1BF528| db $02, $00, $01, $01, $01, $00, $01, $02
|1BF530| db $02, $02, $48, $00, $01, $00, $02, $01
|1BF538| db $02, $01, $01, $27, $01, $01, $00, $02
|1BF540| db $22, $02, $02, $00, $00, $48, $01, $01
|1BF548| db $01, $01, $00, $02, $02, $00, $48, $01
|1BF550| db $01, $01, $27, $27, $27, $02, $27, $27
|1BF558| db $27, $02, $01, $02, $01, $01, $01, $01
|1BF560| db $02, $01, $01, $01, $01, $01, $01, $01
|1BF568| db $01, $01, $01, $01, $01, $01, $01, $01
|1BF570| db $01, $01, $01, $01, $02, $02, $02, $01
|1BF578| db $44, $01, $27, $01, $00, $00, $02, $02
|1BF580| db $02, $01, $01, $01, $01, $02, $01, $01
|1BF588| db $02, $02, $02, $01, $01, $01, $02, $02
|1BF590| db $02, $01, $02, $00, $02, $02, $02, $02
|1BF598| db $02, $02, $00, $01, $42, $01, $42, $42
|1BF5A0| db $00, $00, $01, $01, $01, $01, $00, $02
|1BF5A8| db $01, $01, $01, $02, $42, $01, $01, $02
|1BF5B0| db $02, $02, $02, $02, $00, $02, $02, $22
|1BF5B8| db $02, $02, $00, $00, $00, $02, $02, $00
|1BF5C0| db $02, $02, $01, $01, $01, $01, $42, $01
|1BF5C8| db $02, $02, $02, $48, $02, $01, $01, $01
|1BF5D0| db $01, $01, $48, $02, $01, $02, $01, $02
|1BF5D8| db $01, $02, $01, $00, $01, $01, $01, $01
|1BF5E0| db $00, $00, $00, $00, $00, $48, $00, $01
|1BF5E8| db $00, $48, $48, $48, $48, $02, $02, $00
|1BF5F0| db $01, $01, $01, $01, $02, $02, $02, $02
|1BF5F8| db $02, $02, $22, $02, $48, $02, $02, $00
|1BF600| db $00, $02, $02, $02, $02, $48, $02, $02
|1BF608| db $02, $02, $02, $00, $48, $02, $02, $02
|1BF610| db $02, $02, $5C, $08, $08, $08, $02, $27
|1BF618| db $02, $02, $02, $02, $02, $00, $00, $00
|1BF620| db $02, $02, $02, $02, $02, $02, $02, $02
|1BF628| db $02, $02, $02, $02, $02, $01, $08, $02
|1BF630| db $02, $02, $01, $01, $01, $48, $01, $01
|1BF638| db $01, $01, $01, $01, $01, $22, $01, $01
|1BF640| db $01, $01, $2B, $01, $01, $01, $00, $00
|1BF648| db $00, $01, $01, $00, $02, $01, $48, $01
|1BF650| db $00, $00, $00, $00, $48, $00, $00, $00
|1BF658| db $00, $00, $00, $12, $01, $02, $48, $00
|1BF660| db $00, $00, $00, $00, $01, $01, $01, $02
|1BF668| db $01, $01, $00, $00, $02, $01, $01, $00
|1BF670| db $02, $02, $01, $01, $01, $01, $00, $01
|1BF678| db $01, $00, $00, $00, $01, $00, $48, $01
|1BF680| db $02, $01, $01, $01, $01, $01, $01, $02
|1BF688| db $01, $01, $02, $02, $01, $01, $01, $01
|1BF690| db $01, $00, $02, $02, $02, $02, $01, $02
|1BF698| db $01, $02, $02, $02, $00, $00, $01, $01
|1BF6A0| db $01, $01, $00, $00, $00, $00, $01, $00
|1BF6A8| db $00, $12, $01, $01, $02, $01, $01, $00
|1BF6B0| db $01, $29, $01, $42, $02, $02, $01, $00
|1BF6B8| db $02, $01, $01, $01, $02, $01, $01, $01
|1BF6C0| db $01, $01, $01, $01, $01, $01, $01, $01
|1BF6C8| db $01, $01, $01, $01, $01, $01, $01, $02
|1BF6D0| db $02, $00, $02, $02, $00, $00, $48, $48
|1BF6D8| db $01, $01, $01, $01, $01, $01, $01, $01
|1BF6E0| db $01, $01, $01, $01, $48, $02, $02, $48
|1BF6E8| db $00, $00, $00, $00, $00, $48, $01, $01
|1BF6F0| db $48, $48, $01, $01, $00, $02, $02, $48
|1BF6F8| db $02, $02, $01, $01, $02, $02, $42, $02
|1BF700| db $02, $02, $27, $00, $01, $29, $01, $01
|1BF708| db $01, $01, $00, $01, $01, $01, $00, $01
|1BF710| db $01, $00, $01, $01, $01, $01, $01, $01
|1BF718| db $01, $00, $00, $02, $00, $02, $01, $02
|1BF720| db $02, $00, $00, $02, $01, $01, $01, $01
|1BF728| db $01, $01, $02, $27, $27, $00, $27, $02
|1BF730| db $00, $01, $00, $00, $00, $00, $00, $48
|1BF738| db $00, $00, $00, $00, $00, $48, $01, $01
|1BF740| db $01, $00, $01, $01, $01, $02, $02, $02
|1BF748| db $48, $02, $02, $01, $00, $00, $48, $48
|1BF750| db $00, $27, $27, $27, $48, $00, $27, $01
|1BF758| db $01, $48, $00, $27, $01, $01, $48, $01
|1BF760| db $01, $01, $01, $01, $27, $27, $12, $01
|1BF768| db $02, $27, $01, $01, $01, $01, $01, $48
|1BF770| db $27, $02, $01, $01, $01, $00, $12, $00
|1BF778| db $29, $27, $01, $01, $01, $10, $02, $01
|1BF780| db $01, $01, $02, $01, $01, $00, $00, $00
|1BF788| db $02, $01, $00, $00, $00, $02, $01, $00
|1BF790| db $00, $00, $00, $02, $02, $00, $00, $09
|1BF798| db $00, $00, $48, $00, $02, $00, $00, $00
|1BF7A0| db $00, $00, $02, $00, $00, $00, $00, $00
|1BF7A8| db $00, $00, $00, $00, $00, $08, $5C, $09
|1BF7B0| db $02, $02, $48, $48, $48, $48, $01, $01
|1BF7B8| db $01, $12, $00, $00, $01, $01, $02, $01
|1BF7C0| db $01, $01, $01, $02, $01, $1A, $02, $02
|1BF7C8| db $00, $02, $02, $2B, $01, $01, $02, $01
|1BF7D0| db $02, $01, $01, $02, $02, $02, $01, $02
|1BF7D8| db $00, $02, $02, $2B, $02, $01, $01, $01
|1BF7E0| db $02, $02, $01, $01, $22, $02, $01, $01
|1BF7E8| db $02, $02, $02, $01, $22, $10, $01, $22
|1BF7F0| db $00, $00, $00, $00, $00, $00, $01, $10
|1BF7F8| db $01, $01, $22, $01, $00, $00, $00, $00
|1BF800| db $01, $01, $01, $01, $00, $00, $00, $00
|1BF808| db $01, $01, $01, $01, $01, $01, $01, $01
|1BF810| db $00, $01, $00, $00, $00, $00, $48, $02
|1BF818| db $02, $46, $46, $01, $01, $01, $22, $01
|1BF820| db $01, $00, $02, $02, $02, $22, $02, $02
|1BF828| db $01, $44, $00, $01, $01, $00, $00, $00
|1BF830| db $00, $01, $00, $02, $00, $01, $02, $51
|1BF838| db $02, $02, $02, $02, $00, $00, $12, $01
|1BF840| db $01, $01, $02, $02, $01, $01, $01, $01
|1BF848| db $01, $02, $01, $01, $02, $01, $01, $02
|1BF850| db $01, $02, $02, $44, $01, $02, $02, $02
|1BF858| db $02, $02, $00, $01, $08, $02, $02, $02
|1BF860| db $00, $00, $00, $00, $00, $02, $48, $00
|1BF868| db $00, $00, $02, $29, $00, $00, $00, $00
|1BF870| db $00, $00, $00, $00, $01, $00, $12, $00
|1BF878| db $00, $00, $00, $00, $00, $00, $00, $00
|1BF880| db $48, $00, $00, $48, $00, $00, $00, $00
|1BF888| db $01, $48, $00, $12, $12, $1A, $12, $29
|1BF890| db $01, $01, $01, $01, $00, $01, $01, $10
|1BF898| db $48, $48, $48, $02, $48, $01, $01, $02
|1BF8A0| db $01, $27, $01, $02, $02, $02, $01, $01
|1BF8A8| db $01, $01, $01, $01, $01, $01, $01, $02
|1BF8B0| db $02, $01, $27, $01, $01, $01, $01, $27
|1BF8B8| db $27, $01, $02, $02, $01, $01, $27, $27
|1BF8C0| db $02, $02, $01, $01, $01, $01, $02, $02
|1BF8C8| db $01, $01, $01, $01, $02, $02, $02, $02
|1BF8D0| db $02, $02, $02, $00, $48, $02, $02, $00
|1BF8D8| db $02, $01, $00, $01, $02, $02, $02, $02
|1BF8E0| db $01, $27, $02, $02, $01, $00, $01, $02
|1BF8E8| db $02, $27, $02, $01, $01, $02, $02, $27
|1BF8F0| db $02, $02, $01, $02, $02, $02, $02, $01
|1BF8F8| db $01, $02, $02, $02, $02, $27, $02, $02
|1BF900| db $02, $02, $02, $02, $44, $02, $01, $01
|1BF908| db $02, $02, $02, $02, $01, $02, $02, $02
|1BF910| db $27, $02, $02, $01, $02, $02, $02, $01
|1BF918| db $01, $01, $02, $02, $01, $00, $01, $02
|1BF920| db $02, $00, $20, $20, $20, $20, $02, $27
|1BF928| db $27, $27, $00, $02, $00, $00, $02, $02
|1BF930| db $02, $27, $27, $01, $01, $27, $27, $27
|1BF938| db $27, $01, $02, $02, $01, $01, $02, $27
|1BF940| db $02, $01, $27, $27, $27, $27, $00, $00
|1BF948| db $02, $00, $27, $00, $00, $27, $27, $00
|1BF950| db $27, $27, $02, $01, $02, $01, $01, $00
|1BF958| db $02, $02, $48, $02, $10, $00, $02, $01
|1BF960| db $02, $00, $00, $00, $00, $01, $00, $00
|1BF968| db $02, $01, $02, $01, $01, $00, $00, $02
|1BF970| db $08, $02, $00, $02, $09, $01, $02, $01
|1BF978| db $01, $08, $01, $08, $01, $02, $12, $01
|1BF980| db $02, $10, $12, $02, $02, $02, $01, $02
|1BF988| db $02, $02, $02, $01, $08, $01, $00, $00
|1BF990| db $00, $01, $10, $01, $02, $08, $08, $09
|1BF998| db $08, $02, $01, $01, $02, $01, $00, $02
|1BF9A0| db $01, $42, $01, $01, $01, $01, $02, $02
|1BF9A8| db $02, $02, $01, $01, $01, $01, $42, $42
|1BF9B0| db $01, $02, $02, $01, $02, $02, $02, $02
|1BF9B8| db $01, $01, $01, $01, $01, $01, $01, $01
|1BF9C0| db $02, $02, $02, $02, $02, $02, $02, $02
|1BF9C8| db $02, $02, $01, $02, $01, $01, $02, $02
|1BF9D0| db $02, $02, $02, $02, $02, $02, $02, $01
|1BF9D8| db $01, $01, $01, $02, $22, $02, $01, $02
|1BF9E0| db $02, $02, $01, $02, $02, $02, $22, $02
|1BF9E8| db $02, $02, $01, $01, $02, $02, $01, $02
|1BF9F0| db $02, $01, $02, $02, $02, $02, $02, $02
|1BF9F8| db $02, $02, $01, $01, $01, $00, $01, $01
|1BFA00| db $01, $01, $02, $02, $02, $02, $01, $01
|1BFA08| db $02, $02, $02, $02, $02, $02, $02, $02
|1BFA10| db $02, $02, $02, $02, $02, $01, $00, $02
|1BFA18| db $00, $00, $00, $00, $00, $10, $02, $02
|1BFA20| db $02, $02, $02, $02, $02, $02, $01, $08
|1BFA28| db $08, $00, $01, $02, $02, $02, $02, $01
|1BFA30| db $02, $01, $22, $01, $01, $02, $02, $18
|1BFA38| db $01, $01, $01, $02, $02, $02, $02, $02
|1BFA40| db $02, $02, $01, $02, $02, $02, $02, $02
|1BFA48| db $02, $42, $02, $01, $02, $02, $02, $02
|1BFA50| db $02, $48, $48, $48, $48, $00, $02, $01
|1BFA58| db $00, $02, $02, $27, $27, $01, $00, $27
|1BFA60| db $02, $00, $02, $00, $00, $02, $02, $00
|1BFA68| db $00, $02, $01, $02, $27, $00, $00, $02
|1BFA70| db $00, $01, $01, $29, $00, $02, $00, $10
|1BFA78| db $01, $00, $12, $00, $00, $01, $01, $48
|1BFA80| db $02, $02, $00, $00, $02, $02, $00, $02
|1BFA88| db $02, $00, $00, $00, $02, $02, $00, $02
|1BFA90| db $00, $00, $00, $02, $00, $02, $00, $00
|1BFA98| db $00, $02, $00, $00, $00, $02, $00, $02
|1BFAA0| db $00, $00, $00, $02, $00, $02, $02, $00
|1BFAA8| db $00, $00, $00, $02, $00, $01, $09, $10
|1BFAB0| db $27, $44, $02, $01, $00, $00, $02, $02
|1BFAB8| db $02, $01, $01, $02, $02, $00, $01, $01
|1BFAC0| db $01, $48, $00, $01, $00, $00, $01, $01
|1BFAC8| db $00, $48, $48, $00, $02, $02, $02, $02
|1BFAD0| db $02, $02, $00, $02, $00, $02, $02, $02
|1BFAD8| db $00, $02, $48, $00, $01, $48, $48, $00
|1BFAE0| db $01, $48, $01, $01, $01, $01, $01, $02
|1BFAE8| db $02, $01, $01, $01, $01, $00, $02, $48
|1BFAF0| db $02, $48, $01, $48, $01, $48, $00, $02
|1BFAF8| db $02, $02, $01, $01, $02, $01, $01, $01
|1BFB00| db $00, $00, $01, $00, $00, $00, $00, $00
|1BFB08| db $00, $01, $01, $00, $01, $01, $01, $02
|1BFB10| db $22, $00, $02, $01, $01, $01, $02, $01
|1BFB18| db $44, $01, $01, $02, $00, $01, $02, $22
|1BFB20| db $01, $02, $42, $22, $02, $02, $01, $01
|1BFB28| db $02, $02, $02, $01, $01, $01, $01, $02
|1BFB30| db $02, $01, $01, $02, $01, $01, $02, $02
|1BFB38| db $01, $01, $01, $02, $01, $01, $02, $02
|1BFB40| db $43, $02, $02, $02, $02, $02, $01, $02
|1BFB48| db $02, $01, $01, $01, $02, $02, $01, $01
|1BFB50| db $01, $02, $02, $02, $01, $02, $43, $01
|1BFB58| db $01, $01, $01, $01, $01, $01, $01, $01
|1BFB60| db $00, $01, $00, $00, $00, $01, $01, $00
|1BFB68| db $01, $01, $01, $01, $01, $01, $02, $48
|1BFB70| db $02, $02, $01, $00, $00, $00, $02, $43
|1BFB78| db $00, $02, $01, $00, $00, $01, $01, $00
|1BFB80| db $00, $02, $01, $01, $01, $01, $01, $01
|1BFB88| db $01, $01, $01, $01, $01, $01, $01, $01
|1BFB90| db $02, $02, $02, $01, $01, $01, $01, $01
|1BFB98| db $02, $02, $01, $02, $02, $01, $01, $42
|1BFBA0| db $01, $02, $02, $01, $02, $00, $02, $01
|1BFBA8| db $02, $01, $00, $01, $01, $00, $00, $02
|1BFBB0| db $01, $01, $02, $02, $02, $02, $01, $00
|1BFBB8| db $01, $02, $01, $01, $01, $01, $01, $01
|1BFBC0| db $00, $00, $01, $01, $01, $00, $00, $48
|1BFBC8| db $00, $00, $00, $01, $01, $01, $02, $02
|1BFBD0| db $01, $01, $02, $02, $01, $02, $02, $01
|1BFBD8| db $01, $01, $01, $01, $01, $00, $48, $00
|1BFBE0| db $48, $00, $00, $00, $01, $01, $01, $01
|1BFBE8| db $01, $00, $00, $01, $00, $00, $00, $00
|1BFBF0| db $01, $02, $01, $00, $02, $27, $00, $01
|1BFBF8| db $01, $01, $01, $00, $02, $00, $01, $02
|1BFC00| db $00, $01, $01, $01, $02, $00, $02, $01
|1BFC08| db $02, $01, $01, $01, $27, $00, $09, $09
|1BFC10| db $00, $09, $02, $1A, $10, $01, $01, $01
|1BFC18| db $01, $00, $00, $48, $09, $09, $02, $00
|1BFC20| db $09, $09, $02, $09, $09, $01, $02, $02
|1BFC28| db $09, $09, $09, $42, $09, $01, $02, $09
|1BFC30| db $02, $02, $02, $02, $02, $09, $09, $09
|1BFC38| db $09, $02, $09, $02, $09, $01, $01, $01
|1BFC40| db $09, $09, $09, $09, $09, $00, $00, $02
|1BFC48| db $09, $02, $02, $02, $09, $00, $00, $02
|1BFC50| db $48, $09, $09, $09, $09, $00, $00, $02
|1BFC58| db $09, $09, $02, $09, $00, $00, $00, $02
|1BFC60| db $00, $00, $00, $00, $00, $00, $01, $02
|1BFC68| db $00, $02, $02, $00, $00, $00, $00, $00
|1BFC70| db $00, $09, $48, $09, $01, $01, $02, $02
|1BFC78| db $02, $01, $02, $48, $00, $00, $48, $00
|1BFC80| db $00, $00, $00, $12, $09, $09, $02, $02
|1BFC88| db $09, $02, $01, $02, $02, $09, $02, $12
|1BFC90| db $01, $12, $02, $01, $01, $00, $00, $10
|1BFC98| db $01, $00, $01, $1A, $01, $02, $01, $01
|1BFCA0| db $18, $00, $00, $00, $00, $01, $08, $01
|1BFCA8| db $09, $00, $09, $09, $00, $09, $00, $00
|1BFCB0| db $00, $00, $00, $00, $00, $00, $00, $00
|1BFCB8| db $00, $00, $02, $02, $02, $00, $09, $00
|1BFCC0| db $01, $01, $01, $02, $02, $01, $00, $00
|1BFCC8| db $01, $02, $02, $02, $00, $09, $01, $01
|1BFCD0| db $01, $01, $02, $02, $00, $01, $02, $02
|1BFCD8| db $01, $01, $02, $01, $01, $02, $00, $02
|1BFCE0| db $22, $09, $00, $00, $00, $01, $00, $02
|1BFCE8| db $00, $00, $48, $48, $48, $09, $09, $09
|1BFCF0| db $09, $42, $02, $09, $09, $02, $09, $01
|1BFCF8| db $09, $02, $02, $02, $02, $01, $01, $01
|1BFD00| db $01, $01, $01, $01, $01, $01, $01, $01
|1BFD08| db $01, $01, $01, $01, $00, $00, $00, $00
|1BFD10| db $01, $01, $22, $22, $01, $01, $00, $02
|1BFD18| db $00, $02, $02, $02, $09, $01, $02, $01
|1BFD20| db $01, $01, $01, $02, $02, $02, $02, $00
|1BFD28| db $02, $02, $00, $01, $08, $02, $00, $12
|1BFD30| db $01, $01, $01, $01, $01, $01, $01, $01
|1BFD38| db $02, $01, $01, $02, $02, $02, $02, $02
|1BFD40| db $01, $02, $01, $01, $01, $01, $02, $02
|1BFD48| db $02, $01, $02, $01, $01, $01, $01, $01
|1BFD50| db $01, $02, $01, $01, $01, $00, $01, $01
|1BFD58| db $02, $01, $01, $01, $01, $01, $01, $01
|1BFD60| db $00, $00, $00, $00, $00, $00, $00, $00
|1BFD68| db $00, $00, $00, $00, $00, $00, $00, $00
|1BFD70| db $00, $00, $00, $48, $48, $02, $00, $02
|1BFD78| db $02, $02, $02, $02, $02, $02, $01, $01
|1BFD80| db $02, $02, $02, $02, $01, $01, $48, $00
|1BFD88| db $01, $01, $01, $01, $02, $02, $02, $02
|1BFD90| db $02, $48, $02, $02, $02, $02, $02, $02
|1BFD98| db $00, $02, $00, $00, $02, $02, $00, $02
|1BFDA0| db $00, $02, $00, $02, $02, $00, $02, $02
|1BFDA8| db $02, $02, $02, $00, $00, $02, $02, $48
|1BFDB0| db $02, $02, $02, $02, $02, $02, $42, $42
|1BFDB8| db $02, $02, $02, $02, $02, $22, $22, $22
|1BFDC0| db $02, $02, $08, $00, $02, $22, $22, $22
|1BFDC8| db $02, $08, $02, $02, $02, $02, $00, $02
|1BFDD0| db $02, $02, $02, $00, $01, $01, $01, $01
|1BFDD8| db $02, $02, $02, $01, $01, $02, $01, $00
|1BFDE0| db $01, $02, $01, $01, $02, $00, $02, $00
|1BFDE8| db $00, $01, $02, $02, $02, $00, $01, $01
|1BFDF0| db $01, $00, $01, $02, $02, $01, $02, $02
|1BFDF8| db $01, $00, $01, $02, $01, $02, $02, $02
|1BFE00| db $00, $02, $02, $00, $00, $48, $09, $09
|1BFE08| db $09, $00, $09, $09, $09, $09, $09, $09
|1BFE10| db $09, $09, $09, $09, $08, $09, $08, $00
|1BFE18| db $00, $02, $02, $02, $02, $09, $5C, $08
|1BFE20| db $00, $00, $02, $02, $00, $02, $02, $5C
|1BFE28| db $09, $10, $09, $09, $27, $27, $27, $09
|1BFE30| db $00, $5C, $02, $00, $00, $02, $01, $00
|1BFE38| db $00, $01, $02, $02, $02, $02, $02, $02
|1BFE40| db $02, $02, $02, $02, $02, $02, $02, $01
|1BFE48| db $00, $00, $00, $09, $09, $09, $09, $09
|1BFE50| db $00, $00, $09, $09, $09, $48, $09, $09
|1BFE58| db $09, $09, $09, $09, $00, $09, $09, $09
|1BFE60| db $48, $00, $00, $00, $02, $2E, $28, $2B
|1BFE68| db $2A, $01, $01, $00, $01, $01, $01, $01
|1BFE70| db $01, $02, $01, $22, $01, $01, $22, $01
|1BFE78| db $02, $01, $01, $01, $01, $01, $00, $2E
|1BFE80| db $22, $2F, $29, $02, $01, $01, $01, $01
|1BFE88| db $01, $01, $1A, $1A, $1A, $1A, $1A, $1A
|1BFE90| db $1A, $01, $01, $12, $01, $01, $01, $01
|1BFE98| db $01, $01, $01, $01, $01, $12, $01, $02
|1BFEA0| db $02, $01, $01, $02, $02, $02, $12, $02
|1BFEA8| db $02, $01, $01, $02, $02, $02, $02, $02
|1BFEB0| db $02, $02, $01, $01, $00, $00, $01, $01
|1BFEB8| db $00, $00, $01, $01, $01, $01, $02, $02
|1BFEC0| db $01, $01, $00, $00, $01, $01, $02, $02
|1BFEC8| db $00, $00, $00, $00, $00, $00, $00, $48
|1BFED0| db $00, $48, $48, $48, $48, $00, $20, $00
|1BFED8| db $00, $00, $48, $02, $01, $02, $42, $02
|1BFEE0| db $02, $02, $42, $02, $02, $02, $42, $02
|1BFEE8| db $20, $00, $00, $00, $00, $00, $00, $00
|1BFEF0| db $00, $00, $00, $00, $00, $00, $00, $00
|1BFEF8| db $00, $09, $09, $09, $00, $00, $09, $00
|1BFF00| db $09, $00, $00, $00, $00, $00, $00, $09
|1BFF08| db $00, $00, $00, $48, $00, $00, $00, $00
|1BFF10| db $00, $00, $00, $00, $00, $02, $02, $01
|1BFF18| db $02, $02, $22, $02, $02, $02, $02, $02
|1BFF20| db $02, $02, $02, $02, $02, $01, $02, $01
|1BFF28| db $01, $01, $22, $00, $00, $01, $01, $01
|1BFF30| db $22, $01, $44, $44, $29, $22, $00, $00
|1BFF38| db $00, $00, $00, $01, $48, $02, $02, $02
|1BFF40| db $01, $01, $02, $02, $01, $20, $02, $27
|1BFF48| db $22, $00, $00, $20, $20, $20, $20, $00
|1BFF50| db $20, $00, $09, $02, $02, $09, $01, $01
|1BFF58| db $02, $02, $09, $01, $01, $01, $09, $02
|1BFF60| db $02, $09, $02, $01, $02, $01, $02, $01
|1BFF68| db $01, $01, $01, $01, $02, $01, $09, $02
|1BFF70| db $02, $09, $02, $01, $02, $01, $02, $01
|1BFF78| db $01, $01, $02, $01, $02, $01, $02, $02
|1BFF80| db $09, $02, $02, $02, $02, $02, $44, $02
|1BFF88| db $02, $44, $44, $02, $22, $44, $43, $02
|1BFF90| db $22, $43, $01, $01, $01, $01, $01, $22
|1BFF98| db $01, $01, $01, $02, $02, $22, $00, $02
|1BFFA0| db $02, $22, $02, $22, $02, $22, $02, $22
|1BFFA8| db $02, $22, $02, $22, $01, $01, $00, $00

;===================================================================================================
; FREE ROM: 0x50
;===================================================================================================
NULL_1BFFB0:
|1BFFB0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BFFB8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BFFC0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BFFC8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BFFD0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BFFD8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BFFE0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BFFE8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BFFF0| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
|1BFFF8| db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

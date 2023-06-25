org $1B8000

;===================================================================================================

SongBank_Underworld_Main:
#_1B8000: dw $2CBF, SONG_POINTERS ; Transfer size, transfer address

base SONG_POINTERS

#_1B8004: #_D000u: dw $0000
#_1B8006: #_D002u: dw $0000
#_1B8008: #_D004u: dw $0000
#_1B800A: #_D006u: dw $0000
#_1B800C: #_D008u: dw $0000
#_1B800E: #_D00Au: dw $0000
#_1B8010: #_D00Cu: dw $0000
#_1B8012: #_D00Eu: dw $0000
#_1B8014: #_D010u: dw $0000
#_1B8016: #_D012u: dw $0000
#_1B8018: #_D014u: dw Song0B_FairyTheme
#_1B801A: #_D016u: dw $0000
#_1B801C: #_D018u: dw $0000
#_1B801E: #_D01Au: dw $0000
#_1B8020: #_D01Cu: dw $0000
#_1B8022: #_D01Eu: dw Song10_HyruleCastle
#_1B8024: #_D020u: dw Song11_PendantDungeon
#_1B8026: #_D022u: dw Song12_Cave
#_1B8028: #_D024u: dw Song13_Fanfare
#_1B802A: #_D026u: dw Song14_Sanctuary
#_1B802C: #_D028u: dw Song15_Boss
#_1B802E: #_D02Au: dw Song16_CrystalDungeon
#_1B8030: #_D02Cu: dw Song17_Shop
#_1B8032: #_D02Eu: dw Song12_Cave
#_1B8034: #_D030u: dw Song19_ZeldaRescue
#_1B8036: #_D032u: dw Song1A_CrystalMaiden
#_1B8038: #_D034u: dw Song1B_BigFairy
#_1B803A: #_D036u: dw Song1C_Suspense
#_1B803C: #_D038u: dw Song1D_AgahnimEscapes
#_1B803E: #_D03Au: dw Song1E_MeetingGanon
#_1B8040: #_D03Cu: dw Song1F_KingOfThieves
#_1B8042: #_D03Eu: dw $0000
#_1B8044: #_D040u: dw Song1D_AgahnimEscapes
#_1B8046: #_D042u: dw Song1E_MeetingGanon
#_1B8048: #_D044u: dw Song1F_KingOfThieves

;===================================================================================================

Song10_HyruleCastle:
#_1B804A: #_D046u: dw Song10_Segment0
#_1B804C: #_D048u: dw Song10_Segment1

Song10_Loop:
#_1B804E: #_D04Au: dw Song10_Segment2
#_1B8050: #_D04Cu: dw Song10_Segment2
#_1B8052: #_D04Eu: dw Song10_Segment3
#_1B8054: #_D050u: dw Song10_Segment2
#_1B8056: #_D052u: dw Song10_Segment4
#_1B8058: #_D054u: dw Song10_Segment5
#_1B805A: #_D056u: dw Song10_Segment6
#_1B805C: #_D058u: dw Song10_Segment7
#_1B805E: #_D05Au: dw Song10_Segment8
#_1B8060: #_D05Cu: dw Song10_Segment9
#_1B8062: #_D05Eu: dw Song10_SegmentA
#_1B8064: #_D060u: dw $00FF, Song10_Loop ; Loop point
#_1B8068: #_D064u: dw $0000

Song10_Segment1:
#_1B806A: #_D066u: dw Song10_Segment1_Track0
#_1B806C: #_D068u: dw Song10_Segment1_Track1
#_1B806E: #_D06Au: dw Song10_Segment1_Track2
#_1B8070: #_D06Cu: dw Song10_Segment1_Track3
#_1B8072: #_D06Eu: dw Song10_Segment1_Track4
#_1B8074: #_D070u: dw $0000
#_1B8076: #_D072u: dw $0000
#_1B8078: #_D074u: dw Song10_Segment1_Track5

Song10_Segment0:
#_1B807A: #_D076u: dw Song10_Segment0_Track0
#_1B807C: #_D078u: dw Song10_Segment0_Track1
#_1B807E: #_D07Au: dw Song10_Segment0_Track2
#_1B8080: #_D07Cu: dw Song10_Segment0_Track3
#_1B8082: #_D07Eu: dw Song10_Segment0_Track4
#_1B8084: #_D080u: dw Song10_Segment0_Track5
#_1B8086: #_D082u: dw Song10_Segment0_Track6
#_1B8088: #_D084u: dw Song10_Segment0_Track7

Song10_Segment2:
#_1B808A: #_D086u: dw Song10_Segment2_Track0
#_1B808C: #_D088u: dw Song10_Segment2_Track1
#_1B808E: #_D08Au: dw Song10_Segment2_Track2
#_1B8090: #_D08Cu: dw Song10_Segment2_Track3
#_1B8092: #_D08Eu: dw Song10_Segment2_Track4
#_1B8094: #_D090u: dw Song10_Segment2_Track5
#_1B8096: #_D092u: dw Song10_Segment2_Track6
#_1B8098: #_D094u: dw $0000

Song10_Segment3:
#_1B809A: #_D096u: dw Song10_Segment3_Track0
#_1B809C: #_D098u: dw Song10_Segment3_Track1
#_1B809E: #_D09Au: dw Song10_Segment3_Track2
#_1B80A0: #_D09Cu: dw Song10_Segment3_Track3
#_1B80A2: #_D09Eu: dw Song10_Segment3_Track4
#_1B80A4: #_D0A0u: dw Song10_Segment3_Track5
#_1B80A6: #_D0A2u: dw Song10_Segment3_Track6
#_1B80A8: #_D0A4u: dw $0000

Song10_Segment4:
#_1B80AA: #_D0A6u: dw Song10_Segment4_Track0
#_1B80AC: #_D0A8u: dw Song10_Segment4_Track1
#_1B80AE: #_D0AAu: dw Song10_Segment4_Track2
#_1B80B0: #_D0ACu: dw Song10_Segment4_Track3
#_1B80B2: #_D0AEu: dw Song10_Segment4_Track4
#_1B80B4: #_D0B0u: dw Song10_Segment4_Track5
#_1B80B6: #_D0B2u: dw Song10_Segment4_Track6
#_1B80B8: #_D0B4u: dw $0000

Song10_Segment5:
#_1B80BA: #_D0B6u: dw Song10_Segment5_Track0
#_1B80BC: #_D0B8u: dw Song10_Segment5_Track1
#_1B80BE: #_D0BAu: dw Song10_Segment5_Track2
#_1B80C0: #_D0BCu: dw Song10_Segment5_Track3
#_1B80C2: #_D0BEu: dw Song10_Segment5_Track4
#_1B80C4: #_D0C0u: dw Song10_Segment5_Track5
#_1B80C6: #_D0C2u: dw Song10_Segment5_Track6
#_1B80C8: #_D0C4u: dw Song10_Segment5_Track7

Song10_Segment8:
#_1B80CA: #_D0C6u: dw Song10_Segment8_Track0
#_1B80CC: #_D0C8u: dw Song10_Segment8_Track1
#_1B80CE: #_D0CAu: dw Song10_Segment8_Track2
#_1B80D0: #_D0CCu: dw Song10_Segment8_Track3
#_1B80D2: #_D0CEu: dw Song10_Segment8_Track4
#_1B80D4: #_D0D0u: dw $0000
#_1B80D6: #_D0D2u: dw Song10_Segment8_Track6
#_1B80D8: #_D0D4u: dw $0000

Song10_Segment6:
#_1B80DA: #_D0D6u: dw Song10_Segment6_Track0
#_1B80DC: #_D0D8u: dw Song10_Segment6_Track1
#_1B80DE: #_D0DAu: dw Song10_Segment6_Track2
#_1B80E0: #_D0DCu: dw Song10_Segment6_Track3
#_1B80E2: #_D0DEu: dw Song10_Segment6_Track4
#_1B80E4: #_D0E0u: dw $0000
#_1B80E6: #_D0E2u: dw Song10_Segment6_Track6
#_1B80E8: #_D0E4u: dw $0000

Song10_Segment7:
#_1B80EA: #_D0E6u: dw Song10_Segment7_Track0
#_1B80EC: #_D0E8u: dw Song10_Segment7_Track1
#_1B80EE: #_D0EAu: dw Song10_Segment7_Track2
#_1B80F0: #_D0ECu: dw Song10_Segment7_Track3
#_1B80F2: #_D0EEu: dw Song10_Segment7_Track4
#_1B80F4: #_D0F0u: dw Song10_Segment7_Track5
#_1B80F6: #_D0F2u: dw Song10_Segment7_Track6
#_1B80F8: #_D0F4u: dw $0000

Song10_Segment9:
#_1B80FA: #_D0F6u: dw Song10_Segment9_Track0
#_1B80FC: #_D0F8u: dw Song10_Segment9_Track1
#_1B80FE: #_D0FAu: dw Song10_Segment9_Track2
#_1B8100: #_D0FCu: dw Song10_Segment9_Track3
#_1B8102: #_D0FEu: dw Song10_Segment9_Track4
#_1B8104: #_D100u: dw Song10_Segment9_Track5
#_1B8106: #_D102u: dw Song10_Segment9_Track6
#_1B8108: #_D104u: dw $0000

Song10_SegmentA:
#_1B810A: #_D106u: dw Song10_SegmentA_Track0
#_1B810C: #_D108u: dw Song10_SegmentA_Track1
#_1B810E: #_D10Au: dw Song10_SegmentA_Track2
#_1B8110: #_D10Cu: dw Song10_SegmentA_Track3
#_1B8112: #_D10Eu: dw Song10_SegmentA_Track4
#_1B8114: #_D110u: dw $0000
#_1B8116: #_D112u: dw Song10_SegmentA_Track6
#_1B8118: #_D114u: dw Song10_SegmentA_Track7

;---------------------------------------------------------------------------------------------------

Song10_Segment1_Track0:
#_1B811A: #_D116u: db $E7, $1B ; set song tempo
#_1B811C: #_D118u: db $ED, $C8 ; set channel volume
#_1B811E: #_D11Au: db $E0, $0B ; set instrument - trombone
#_1B8120: #_D11Cu: db $E3, $14, $1E, $14 ; enable vibrato
#_1B8124: #_D120u: db $60 ; duration
#_1B8125: #_D121u: db $C9 ; rest
#_1B8126: #_D122u: db $C9 ; rest
#_1B8127: #_D123u: db $EF : dw Song10_Sub_D90C : db $01 ; call segment subroutine
#_1B812B: #_D127u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment1_Track1:
#_1B812C: #_D128u: db $EF : dw Song10_Sub_D925 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment1_Track2:
#_1B8130: #_D12Cu: db $EF : dw Song10_Sub_D93F : db $01 ; call segment subroutine
#_1B8134: #_D130u: db $EF : dw Song10_Sub_D960 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment1_Track3:
#_1B8138: #_D134u: db $ED, $C8 ; set channel volume
#_1B813A: #_D136u: db $E0, $0A ; set instrument - strings B
#_1B813C: #_D138u: db $E3, $1D, $14, $1E ; enable vibrato
#_1B8140: #_D13Cu: db $E1, $0F ; set panning - leaning left
#_1B8142: #_D13Eu: db $60 ; duration
#_1B8143: #_D13Fu: db $C9 ; rest
#_1B8144: #_D140u: db $C9 ; rest
#_1B8145: #_D141u: db $C9 ; rest
#_1B8146: #_D142u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment1_Track4:
#_1B8147: #_D143u: db $EF : dw Song10_Sub_D976 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment1_Track5:
#_1B814B: #_D147u: db $ED, $8C ; set channel volume
#_1B814D: #_D149u: db $E0, $0A ; set instrument - strings B
#_1B814F: #_D14Bu: db $E3, $1D, $14, $1E ; enable vibrato
#_1B8153: #_D14Fu: db $60 ; duration
#_1B8154: #_D150u: db $C9 ; rest
#_1B8155: #_D151u: db $C9 ; rest
#_1B8156: #_D152u: db $C9 ; rest
#_1B8157: #_D153u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment0_Track0:
#_1B8158: #_D154u: db $FA, $17 ; set base percussion sample
#_1B815A: #_D156u: db $E5, $C8 ; set song volume
#_1B815C: #_D158u: db $E7, $15 ; set song tempo
#_1B815E: #_D15Au: db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
#_1B8162: #_D15Eu: db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
#_1B8166: #_D162u: db $F8, $1E, $1E, $1E ; initiate gradual echo volume change
#_1B816A: #_D166u: db $ED, $C8 ; set channel volume
#_1B816C: #_D168u: db $E0, $0B ; set instrument - trombone
#_1B816E: #_D16Au: db $E3, $14, $1E, $14 ; enable vibrato
#_1B8172: #_D16Eu: db $08 ; duration
#_1B8173: #_D16Fu: db $C9 ; rest
#_1B8174: #_D170u: db $10 ; duration
#_1B8175: #_D171u: db $C9 ; rest
#_1B8176: #_D172u: db $04, $3D ; duration, params
#_1B8178: #_D174u: db $AB ; play note G4
#_1B8179: #_D175u: db $AB ; play note G4
#_1B817A: #_D176u: db $0C ; duration
#_1B817B: #_D177u: db $AB ; play note G4
#_1B817C: #_D178u: db $A9 ; play note F4
#_1B817D: #_D179u: db $18, $6D ; duration, params
#_1B817F: #_D17Bu: db $AB ; play note G4
#_1B8180: #_D17Cu: db $12 ; duration
#_1B8181: #_D17Du: db $AC ; play note Gs4
#_1B8182: #_D17Eu: db $06, $3D ; duration, params
#_1B8184: #_D180u: db $AF ; play note B4
#_1B8185: #_D181u: db $60, $6D ; duration, params
#_1B8187: #_D183u: db $AB ; play note G4
#_1B8188: #_D184u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment0_Track1:
#_1B8189: #_D185u: db $ED, $C8 ; set channel volume
#_1B818B: #_D187u: db $E0, $11 ; set instrument - trumpet
#_1B818D: #_D189u: db $E3, $14, $1E, $14 ; enable vibrato
#_1B8191: #_D18Du: db $E1, $05 ; set panning - leaning right
#_1B8193: #_D18Fu: db $08 ; duration
#_1B8194: #_D190u: db $C9 ; rest
#_1B8195: #_D191u: db $48, $7F ; duration, params
#_1B8197: #_D193u: db $93 ; play note G2
#_1B8198: #_D194u: db $18, $6D ; duration, params
#_1B819A: #_D196u: db $94 ; play note Gs2
#_1B819B: #_D197u: db $60 ; duration
#_1B819C: #_D198u: db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song10_Segment0_Track2:
#_1B819D: #_D199u: db $ED, $C8 ; set channel volume
#_1B819F: #_D19Bu: db $E0, $0B ; set instrument - trombone
#_1B81A1: #_D19Du: db $E3, $14, $1E, $14 ; enable vibrato
#_1B81A5: #_D1A1u: db $E1, $08 ; set panning - leaning right
#_1B81A7: #_D1A3u: db $08 ; duration
#_1B81A8: #_D1A4u: db $C9 ; rest
#_1B81A9: #_D1A5u: db $10 ; duration
#_1B81AA: #_D1A6u: db $C9 ; rest
#_1B81AB: #_D1A7u: db $04, $3D ; duration, params
#_1B81AD: #_D1A9u: db $A6 ; play note D4
#_1B81AE: #_D1AAu: db $A6 ; play note D4
#_1B81AF: #_D1ABu: db $0C ; duration
#_1B81B0: #_D1ACu: db $A6 ; play note D4
#_1B81B1: #_D1ADu: db $A4 ; play note C4
#_1B81B2: #_D1AEu: db $18, $6D ; duration, params
#_1B81B4: #_D1B0u: db $A6 ; play note D4
#_1B81B5: #_D1B1u: db $12 ; duration
#_1B81B6: #_D1B2u: db $A7 ; play note Ds4
#_1B81B7: #_D1B3u: db $06, $3D ; duration, params
#_1B81B9: #_D1B5u: db $AA ; play note Fs4
#_1B81BA: #_D1B6u: db $60, $6D ; duration, params
#_1B81BC: #_D1B8u: db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song10_Segment0_Track3:
#_1B81BD: #_D1B9u: db $ED, $C8 ; set channel volume
#_1B81BF: #_D1BBu: db $E0, $0B ; set instrument - trombone
#_1B81C1: #_D1BDu: db $E3, $14, $1E, $14 ; enable vibrato
#_1B81C5: #_D1C1u: db $E1, $0C ; set panning - leaning left
#_1B81C7: #_D1C3u: db $08 ; duration
#_1B81C8: #_D1C4u: db $C9 ; rest
#_1B81C9: #_D1C5u: db $10 ; duration
#_1B81CA: #_D1C6u: db $C9 ; rest
#_1B81CB: #_D1C7u: db $04, $3D ; duration, params
#_1B81CD: #_D1C9u: db $A1 ; play note A3
#_1B81CE: #_D1CAu: db $A1 ; play note A3
#_1B81CF: #_D1CBu: db $0C ; duration
#_1B81D0: #_D1CCu: db $A1 ; play note A3
#_1B81D1: #_D1CDu: db $9F ; play note G3
#_1B81D2: #_D1CEu: db $18, $6D ; duration, params
#_1B81D4: #_D1D0u: db $A1 ; play note A3
#_1B81D5: #_D1D1u: db $12 ; duration
#_1B81D6: #_D1D2u: db $A2 ; play note As3
#_1B81D7: #_D1D3u: db $06, $3D ; duration, params
#_1B81D9: #_D1D5u: db $A5 ; play note Cs4
#_1B81DA: #_D1D6u: db $60, $6D ; duration, params
#_1B81DC: #_D1D8u: db $A1 ; play note A3

;---------------------------------------------------------------------------------------------------

Song10_Segment0_Track4:
#_1B81DD: #_D1D9u: db $ED, $FA ; set channel volume
#_1B81DF: #_D1DBu: db $E0, $02 ; set instrument - timpani
#_1B81E1: #_D1DDu: db $04, $7D ; duration, params
#_1B81E3: #_D1DFu: db $87 ; play note G1
#_1B81E4: #_D1E0u: db $87 ; play note G1
#_1B81E5: #_D1E1u: db $48, $7F ; duration, params
#_1B81E7: #_D1E3u: db $87 ; play note G1
#_1B81E8: #_D1E4u: db $06, $7D ; duration, params
#_1B81EA: #_D1E6u: db $88 ; play note Gs1
#_1B81EB: #_D1E7u: db $06, $7B ; duration, params
#_1B81ED: #_D1E9u: db $88 ; play note Gs1
#_1B81EE: #_D1EAu: db $09, $7C ; duration, params
#_1B81F0: #_D1ECu: db $88 ; play note Gs1
#_1B81F1: #_D1EDu: db $03 ; duration
#_1B81F2: #_D1EEu: db $C9 ; rest
#_1B81F3: #_D1EFu: db $06, $7E ; duration, params
#_1B81F5: #_D1F1u: db $87 ; play note G1
#_1B81F6: #_D1F2u: db $06, $7A ; duration, params
#_1B81F8: #_D1F4u: db $87 ; play note G1
#_1B81F9: #_D1F5u: db $06, $78 ; duration, params
#_1B81FB: #_D1F7u: db $87 ; play note G1
#_1B81FC: #_D1F8u: db $06, $76 ; duration, params
#_1B81FE: #_D1FAu: db $87 ; play note G1
#_1B81FF: #_D1FBu: db $06, $77 ; duration, params
#_1B8201: #_D1FDu: db $87 ; play note G1
#_1B8202: #_D1FEu: db $06, $78 ; duration, params
#_1B8204: #_D200u: db $87 ; play note G1
#_1B8205: #_D201u: db $06, $79 ; duration, params
#_1B8207: #_D203u: db $87 ; play note G1
#_1B8208: #_D204u: db $06, $7A ; duration, params
#_1B820A: #_D206u: db $87 ; play note G1
#_1B820B: #_D207u: db $06, $7B ; duration, params
#_1B820D: #_D209u: db $87 ; play note G1
#_1B820E: #_D20Au: db $06, $7C ; duration, params
#_1B8210: #_D20Cu: db $87 ; play note G1
#_1B8211: #_D20Du: db $06, $7D ; duration, params
#_1B8213: #_D20Fu: db $87 ; play note G1
#_1B8214: #_D210u: db $06, $7E ; duration, params
#_1B8216: #_D212u: db $87 ; play note G1
#_1B8217: #_D213u: db $06, $7F ; duration, params
#_1B8219: #_D215u: db $87 ; play note G1
#_1B821A: #_D216u: db $87 ; play note G1
#_1B821B: #_D217u: db $0C ; duration
#_1B821C: #_D218u: db $87 ; play note G1

;---------------------------------------------------------------------------------------------------

Song10_Segment0_Track5:
#_1B821D: #_D219u: db $ED, $FA ; set channel volume
#_1B821F: #_D21Bu: db $E0, $02 ; set instrument - timpani
#_1B8221: #_D21Du: db $08 ; duration
#_1B8222: #_D21Eu: db $C9 ; rest
#_1B8223: #_D21Fu: db $E0, $0C ; set instrument - cymbal
#_1B8225: #_D221u: db $4B, $7F ; duration, params
#_1B8227: #_D223u: db $95 ; play note A2
#_1B8228: #_D224u: db $E0, $02 ; set instrument - timpani
#_1B822A: #_D226u: db $06, $7B ; duration, params
#_1B822C: #_D228u: db $88 ; play note Gs1
#_1B822D: #_D229u: db $06, $7C ; duration, params
#_1B822F: #_D22Bu: db $88 ; play note Gs1
#_1B8230: #_D22Cu: db $03 ; duration
#_1B8231: #_D22Du: db $C9 ; rest
#_1B8232: #_D22Eu: db $C9 ; rest
#_1B8233: #_D22Fu: db $06, $7E ; duration, params
#_1B8235: #_D231u: db $87 ; play note G1
#_1B8236: #_D232u: db $06, $7A ; duration, params
#_1B8238: #_D234u: db $87 ; play note G1
#_1B8239: #_D235u: db $06, $78 ; duration, params
#_1B823B: #_D237u: db $87 ; play note G1
#_1B823C: #_D238u: db $06, $76 ; duration, params
#_1B823E: #_D23Au: db $87 ; play note G1
#_1B823F: #_D23Bu: db $06, $77 ; duration, params
#_1B8241: #_D23Du: db $87 ; play note G1
#_1B8242: #_D23Eu: db $06, $78 ; duration, params
#_1B8244: #_D240u: db $87 ; play note G1
#_1B8245: #_D241u: db $06, $79 ; duration, params
#_1B8247: #_D243u: db $87 ; play note G1
#_1B8248: #_D244u: db $06, $7A ; duration, params
#_1B824A: #_D246u: db $87 ; play note G1
#_1B824B: #_D247u: db $06, $7B ; duration, params
#_1B824D: #_D249u: db $87 ; play note G1
#_1B824E: #_D24Au: db $06, $7C ; duration, params
#_1B8250: #_D24Cu: db $87 ; play note G1
#_1B8251: #_D24Du: db $06, $7D ; duration, params
#_1B8253: #_D24Fu: db $87 ; play note G1
#_1B8254: #_D250u: db $06, $7E ; duration, params
#_1B8256: #_D252u: db $87 ; play note G1
#_1B8257: #_D253u: db $15, $7F ; duration, params
#_1B8259: #_D255u: db $87 ; play note G1
#_1B825A: #_D256u: db $06 ; duration
#_1B825B: #_D257u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment0_Track6:
#_1B825C: #_D258u: db $ED, $8C ; set channel volume
#_1B825E: #_D25Au: db $E0, $16 ; set instrument - flute
#_1B8260: #_D25Cu: db $E3, $14, $1E, $14 ; enable vibrato
#_1B8264: #_D260u: db $E1, $07 ; set panning - leaning right
#_1B8266: #_D262u: db $08 ; duration
#_1B8267: #_D263u: db $C9 ; rest
#_1B8268: #_D264u: db $10 ; duration
#_1B8269: #_D265u: db $C9 ; rest
#_1B826A: #_D266u: db $04, $3D ; duration, params
#_1B826C: #_D268u: db $B2 ; play note D5
#_1B826D: #_D269u: db $B2 ; play note D5
#_1B826E: #_D26Au: db $0C ; duration
#_1B826F: #_D26Bu: db $B2 ; play note D5
#_1B8270: #_D26Cu: db $B0 ; play note C5
#_1B8271: #_D26Du: db $18, $6D ; duration, params
#_1B8273: #_D26Fu: db $B2 ; play note D5
#_1B8274: #_D270u: db $12 ; duration
#_1B8275: #_D271u: db $B3 ; play note Ds5
#_1B8276: #_D272u: db $06, $3D ; duration, params
#_1B8278: #_D274u: db $B6 ; play note Fs5
#_1B8279: #_D275u: db $60, $6D ; duration, params
#_1B827B: #_D277u: db $B2 ; play note D5

;---------------------------------------------------------------------------------------------------

Song10_Segment0_Track7:
#_1B827C: #_D278u: db $ED, $A0 ; set channel volume
#_1B827E: #_D27Au: db $E0, $0B ; set instrument - trombone
#_1B8280: #_D27Cu: db $E3, $17, $1E, $12 ; enable vibrato
#_1B8284: #_D280u: db $E1, $09 ; set panning - leaning right
#_1B8286: #_D282u: db $10 ; duration
#_1B8287: #_D283u: db $C9 ; rest
#_1B8288: #_D284u: db $C9 ; rest
#_1B8289: #_D285u: db $04, $3D ; duration, params
#_1B828B: #_D287u: db $AB ; play note G4
#_1B828C: #_D288u: db $AB ; play note G4
#_1B828D: #_D289u: db $0C ; duration
#_1B828E: #_D28Au: db $AB ; play note G4
#_1B828F: #_D28Bu: db $A9 ; play note F4
#_1B8290: #_D28Cu: db $18, $6D ; duration, params
#_1B8292: #_D28Eu: db $AB ; play note G4
#_1B8293: #_D28Fu: db $12 ; duration
#_1B8294: #_D290u: db $AC ; play note Gs4
#_1B8295: #_D291u: db $06, $3D ; duration, params
#_1B8297: #_D293u: db $AF ; play note B4
#_1B8298: #_D294u: db $58, $6D ; duration, params
#_1B829A: #_D296u: db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song10_Segment2_Track0:
#_1B829B: #_D297u: db $ED, $C8 ; set channel volume
#_1B829D: #_D299u: db $E0, $0B ; set instrument - trombone
#_1B829F: #_D29Bu: db $E3, $14, $1E, $14 ; enable vibrato
#_1B82A3: #_D29Fu: db $EF : dw Song10_Sub_D90C : db $01 ; call segment subroutine
#_1B82A7: #_D2A3u: db $C9 ; rest
#_1B82A8: #_D2A4u: db $AB ; play note G4
#_1B82A9: #_D2A5u: db $C9 ; rest
#_1B82AA: #_D2A6u: db $AB ; play note G4
#_1B82AB: #_D2A7u: db $A9 ; play note F4
#_1B82AC: #_D2A8u: db $C9 ; rest
#_1B82AD: #_D2A9u: db $A9 ; play note F4
#_1B82AE: #_D2AAu: db $AB ; play note G4
#_1B82AF: #_D2ABu: db $C9 ; rest
#_1B82B0: #_D2ACu: db $AB ; play note G4
#_1B82B1: #_D2ADu: db $AB ; play note G4
#_1B82B2: #_D2AEu: db $06, $4D ; duration, params
#_1B82B4: #_D2B0u: db $AB ; play note G4
#_1B82B5: #_D2B1u: db $AB ; play note G4
#_1B82B6: #_D2B2u: db $0C, $2D ; duration, params
#_1B82B8: #_D2B4u: db $AB ; play note G4
#_1B82B9: #_D2B5u: db $AB ; play note G4
#_1B82BA: #_D2B6u: db $AC ; play note Gs4
#_1B82BB: #_D2B7u: db $AA ; play note Fs4
#_1B82BC: #_D2B8u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment2_Track1:
#_1B82BD: #_D2B9u: db $ED, $8C ; set channel volume
#_1B82BF: #_D2BBu: db $E0, $0A ; set instrument - strings B
#_1B82C1: #_D2BDu: db $E3, $14, $1E, $14 ; enable vibrato
#_1B82C5: #_D2C1u: db $EF : dw Song10_Sub_D9A7 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment2_Track2:
#_1B82C9: #_D2C5u: db $EF : dw Song10_Sub_D93F : db $01 ; call segment subroutine
#_1B82CD: #_D2C9u: db $C9 ; rest
#_1B82CE: #_D2CAu: db $A6 ; play note D4
#_1B82CF: #_D2CBu: db $C9 ; rest
#_1B82D0: #_D2CCu: db $A6 ; play note D4
#_1B82D1: #_D2CDu: db $A4 ; play note C4
#_1B82D2: #_D2CEu: db $C9 ; rest
#_1B82D3: #_D2CFu: db $A4 ; play note C4
#_1B82D4: #_D2D0u: db $A6 ; play note D4
#_1B82D5: #_D2D1u: db $C9 ; rest
#_1B82D6: #_D2D2u: db $A6 ; play note D4
#_1B82D7: #_D2D3u: db $A6 ; play note D4
#_1B82D8: #_D2D4u: db $06 ; duration
#_1B82D9: #_D2D5u: db $A6 ; play note D4
#_1B82DA: #_D2D6u: db $A6 ; play note D4
#_1B82DB: #_D2D7u: db $0C ; duration
#_1B82DC: #_D2D8u: db $A6 ; play note D4
#_1B82DD: #_D2D9u: db $A6 ; play note D4
#_1B82DE: #_D2DAu: db $A7 ; play note Ds4
#_1B82DF: #_D2DBu: db $A5 ; play note Cs4

;---------------------------------------------------------------------------------------------------

Song10_Segment2_Track3:
#_1B82E0: #_D2DCu: db $ED, $C8 ; set channel volume
#_1B82E2: #_D2DEu: db $E0, $0A ; set instrument - strings B
#_1B82E4: #_D2E0u: db $E3, $1D, $14, $1E ; enable vibrato
#_1B82E8: #_D2E4u: db $60, $7D ; duration, params
#_1B82EA: #_D2E6u: db $AB ; play note G4
#_1B82EB: #_D2E7u: db $F9, $24, $0C, $A6 ; slide to note
#_1B82EF: #_D2EBu: db $24, $6D ; duration, params
#_1B82F1: #_D2EDu: db $C8 ; sustain current note
#_1B82F2: #_D2EEu: db $0C ; duration
#_1B82F3: #_D2EFu: db $AB ; play note G4
#_1B82F4: #_D2F0u: db $AC ; play note Gs4
#_1B82F5: #_D2F1u: db $AE ; play note As4
#_1B82F6: #_D2F2u: db $08 ; duration
#_1B82F7: #_D2F3u: db $C8 ; sustain current note
#_1B82F8: #_D2F4u: db $AA ; play note Fs4
#_1B82F9: #_D2F5u: db $AE ; play note As4
#_1B82FA: #_D2F6u: db $60, $7D ; duration, params
#_1B82FC: #_D2F8u: db $AB ; play note G4
#_1B82FD: #_D2F9u: db $F9, $24, $0C, $A6 ; slide to note
#_1B8301: #_D2FDu: db $30, $68 ; duration, params
#_1B8303: #_D2FFu: db $C8 ; sustain current note
#_1B8304: #_D300u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment2_Track4:
#_1B8305: #_D301u: db $ED, $C8 ; set channel volume
#_1B8307: #_D303u: db $E0, $02 ; set instrument - timpani
#_1B8309: #_D305u: db $EF : dw Song10_Sub_D9B7 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment2_Track5:
#_1B830D: #_D309u: db $ED, $C8 ; set channel volume
#_1B830F: #_D30Bu: db $E0, $0B ; set instrument - trombone
#_1B8311: #_D30Du: db $E3, $19, $1E, $17 ; enable vibrato
#_1B8315: #_D311u: db $E1, $07 ; set panning - leaning right
#_1B8317: #_D313u: db $60 ; duration
#_1B8318: #_D314u: db $C9 ; rest
#_1B8319: #_D315u: db $C9 ; rest
#_1B831A: #_D316u: db $40 ; duration
#_1B831B: #_D317u: db $C9 ; rest
#_1B831C: #_D318u: db $04, $79 ; duration, params
#_1B831E: #_D31Au: db $AB ; play note G4
#_1B831F: #_D31Bu: db $04, $7A ; duration, params
#_1B8321: #_D31Du: db $AD ; play note A4
#_1B8322: #_D31Eu: db $04, $7B ; duration, params
#_1B8324: #_D320u: db $AE ; play note As4
#_1B8325: #_D321u: db $04, $7C ; duration, params
#_1B8327: #_D323u: db $AF ; play note B4
#_1B8328: #_D324u: db $04, $7D ; duration, params
#_1B832A: #_D326u: db $B1 ; play note Cs5
#_1B832B: #_D327u: db $0C, $2D ; duration, params
#_1B832D: #_D329u: db $B2 ; play note D5
#_1B832E: #_D32Au: db $C9 ; rest
#_1B832F: #_D32Bu: db $B2 ; play note D5
#_1B8330: #_D32Cu: db $B2 ; play note D5
#_1B8331: #_D32Du: db $06 ; duration
#_1B8332: #_D32Eu: db $B2 ; play note D5
#_1B8333: #_D32Fu: db $B2 ; play note D5
#_1B8334: #_D330u: db $0C ; duration
#_1B8335: #_D331u: db $B5 ; play note F5
#_1B8336: #_D332u: db $B5 ; play note F5
#_1B8337: #_D333u: db $06, $7B ; duration, params
#_1B8339: #_D335u: db $B3 ; play note Ds5
#_1B833A: #_D336u: db $B2 ; play note D5
#_1B833B: #_D337u: db $B1 ; play note Cs5
#_1B833C: #_D338u: db $06, $2B ; duration, params
#_1B833E: #_D33Au: db $B0 ; play note C5

;---------------------------------------------------------------------------------------------------

Song10_Segment2_Track6:
#_1B833F: #_D33Bu: db $ED, $8C ; set channel volume
#_1B8341: #_D33Du: db $E0, $0A ; set instrument - strings B
#_1B8343: #_D33Fu: db $E3, $1D, $14, $1E ; enable vibrato
#_1B8347: #_D343u: db $08 ; duration
#_1B8348: #_D344u: db $C9 ; rest
#_1B8349: #_D345u: db $30, $6D ; duration, params
#_1B834B: #_D347u: db $AB ; play note G4
#_1B834C: #_D348u: db $A6 ; play note D4
#_1B834D: #_D349u: db $24 ; duration
#_1B834E: #_D34Au: db $C8 ; sustain current note
#_1B834F: #_D34Bu: db $0C ; duration
#_1B8350: #_D34Cu: db $AB ; play note G4
#_1B8351: #_D34Du: db $AC ; play note Gs4
#_1B8352: #_D34Eu: db $AE ; play note As4
#_1B8353: #_D34Fu: db $08 ; duration
#_1B8354: #_D350u: db $C8 ; sustain current note
#_1B8355: #_D351u: db $AA ; play note Fs4
#_1B8356: #_D352u: db $AE ; play note As4
#_1B8357: #_D353u: db $30 ; duration
#_1B8358: #_D354u: db $AB ; play note G4
#_1B8359: #_D355u: db $A6 ; play note D4
#_1B835A: #_D356u: db $C8 ; sustain current note
#_1B835B: #_D357u: db $28 ; duration
#_1B835C: #_D358u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment3_Track0:
#_1B835D: #_D359u: db $ED, $C8 ; set channel volume
#_1B835F: #_D35Bu: db $E0, $0B ; set instrument - trombone
#_1B8361: #_D35Du: db $E3, $14, $1E, $14 ; enable vibrato
#_1B8365: #_D361u: db $0C ; duration
#_1B8366: #_D362u: db $C9 ; rest
#_1B8367: #_D363u: db $0C, $2D ; duration, params
#_1B8369: #_D365u: db $B0 ; play note C5
#_1B836A: #_D366u: db $C9 ; rest
#_1B836B: #_D367u: db $B0 ; play note C5
#_1B836C: #_D368u: db $AE ; play note As4
#_1B836D: #_D369u: db $C9 ; rest
#_1B836E: #_D36Au: db $AE ; play note As4
#_1B836F: #_D36Bu: db $B0 ; play note C5
#_1B8370: #_D36Cu: db $C9 ; rest
#_1B8371: #_D36Du: db $B0 ; play note C5
#_1B8372: #_D36Eu: db $B0 ; play note C5
#_1B8373: #_D36Fu: db $06, $4D ; duration, params
#_1B8375: #_D371u: db $B0 ; play note C5
#_1B8376: #_D372u: db $B0 ; play note C5
#_1B8377: #_D373u: db $0C, $2D ; duration, params
#_1B8379: #_D375u: db $B0 ; play note C5
#_1B837A: #_D376u: db $B0 ; play note C5
#_1B837B: #_D377u: db $B1 ; play note Cs5
#_1B837C: #_D378u: db $AF ; play note B4
#_1B837D: #_D379u: db $C9 ; rest
#_1B837E: #_D37Au: db $B0 ; play note C5
#_1B837F: #_D37Bu: db $C9 ; rest
#_1B8380: #_D37Cu: db $B0 ; play note C5
#_1B8381: #_D37Du: db $AE ; play note As4
#_1B8382: #_D37Eu: db $C9 ; rest
#_1B8383: #_D37Fu: db $AE ; play note As4
#_1B8384: #_D380u: db $B0 ; play note C5
#_1B8385: #_D381u: db $C9 ; rest
#_1B8386: #_D382u: db $B0 ; play note C5
#_1B8387: #_D383u: db $B0 ; play note C5
#_1B8388: #_D384u: db $06, $4D ; duration, params
#_1B838A: #_D386u: db $B0 ; play note C5
#_1B838B: #_D387u: db $B0 ; play note C5
#_1B838C: #_D388u: db $0C, $2D ; duration, params
#_1B838E: #_D38Au: db $B0 ; play note C5
#_1B838F: #_D38Bu: db $B0 ; play note C5
#_1B8390: #_D38Cu: db $B1 ; play note Cs5
#_1B8391: #_D38Du: db $AF ; play note B4
#_1B8392: #_D38Eu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment3_Track1:
#_1B8393: #_D38Fu: db $ED, $8C ; set channel volume
#_1B8395: #_D391u: db $E0, $0A ; set instrument - strings B
#_1B8397: #_D393u: db $E3, $14, $1E, $14 ; enable vibrato
#_1B839B: #_D397u: db $30, $7D ; duration, params
#_1B839D: #_D399u: db $A4 ; play note C4
#_1B839E: #_D39Au: db $A2 ; play note As3
#_1B839F: #_D39Bu: db $A4 ; play note C4
#_1B83A0: #_D39Cu: db $18 ; duration
#_1B83A1: #_D39Du: db $A5 ; play note Cs4
#_1B83A2: #_D39Eu: db $A3 ; play note B3
#_1B83A3: #_D39Fu: db $30 ; duration
#_1B83A4: #_D3A0u: db $A4 ; play note C4
#_1B83A5: #_D3A1u: db $A2 ; play note As3
#_1B83A6: #_D3A2u: db $A4 ; play note C4
#_1B83A7: #_D3A3u: db $18 ; duration
#_1B83A8: #_D3A4u: db $A5 ; play note Cs4
#_1B83A9: #_D3A5u: db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song10_Segment3_Track2:
#_1B83AA: #_D3A6u: db $ED, $C8 ; set channel volume
#_1B83AC: #_D3A8u: db $E0, $0B ; set instrument - trombone
#_1B83AE: #_D3AAu: db $E3, $19, $1E, $17 ; enable vibrato
#_1B83B2: #_D3AEu: db $EF : dw Song10_Sub_D90C : db $01 ; call segment subroutine
#_1B83B6: #_D3B2u: db $C9 ; rest
#_1B83B7: #_D3B3u: db $AB ; play note G4
#_1B83B8: #_D3B4u: db $C9 ; rest
#_1B83B9: #_D3B5u: db $AB ; play note G4
#_1B83BA: #_D3B6u: db $A9 ; play note F4
#_1B83BB: #_D3B7u: db $C9 ; rest
#_1B83BC: #_D3B8u: db $A9 ; play note F4
#_1B83BD: #_D3B9u: db $AB ; play note G4
#_1B83BE: #_D3BAu: db $C9 ; rest
#_1B83BF: #_D3BBu: db $AB ; play note G4
#_1B83C0: #_D3BCu: db $AB ; play note G4
#_1B83C1: #_D3BDu: db $06 ; duration
#_1B83C2: #_D3BEu: db $AB ; play note G4
#_1B83C3: #_D3BFu: db $AB ; play note G4
#_1B83C4: #_D3C0u: db $0C ; duration
#_1B83C5: #_D3C1u: db $AB ; play note G4
#_1B83C6: #_D3C2u: db $AB ; play note G4
#_1B83C7: #_D3C3u: db $AC ; play note Gs4
#_1B83C8: #_D3C4u: db $AA ; play note Fs4

;---------------------------------------------------------------------------------------------------

Song10_Segment3_Track3:
#_1B83C9: #_D3C5u: db $ED, $C8 ; set channel volume
#_1B83CB: #_D3C7u: db $E0, $0A ; set instrument - strings B
#_1B83CD: #_D3C9u: db $E3, $1D, $14, $1E ; enable vibrato
#_1B83D1: #_D3CDu: db $60, $7D ; duration, params
#_1B83D3: #_D3CFu: db $B0 ; play note C5
#_1B83D4: #_D3D0u: db $F9, $24, $0C, $AB ; slide to note
#_1B83D8: #_D3D4u: db $24, $6D ; duration, params
#_1B83DA: #_D3D6u: db $C8 ; sustain current note
#_1B83DB: #_D3D7u: db $0C ; duration
#_1B83DC: #_D3D8u: db $B0 ; play note C5
#_1B83DD: #_D3D9u: db $10 ; duration
#_1B83DE: #_D3DAu: db $B5 ; play note F5
#_1B83DF: #_D3DBu: db $08 ; duration
#_1B83E0: #_D3DCu: db $B3 ; play note Ds5
#_1B83E1: #_D3DDu: db $C8 ; sustain current note
#_1B83E2: #_D3DEu: db $B1 ; play note Cs5
#_1B83E3: #_D3DFu: db $AF ; play note B4
#_1B83E4: #_D3E0u: db $60, $7D ; duration, params
#_1B83E6: #_D3E2u: db $B0 ; play note C5
#_1B83E7: #_D3E3u: db $F9, $24, $0C, $AB ; slide to note
#_1B83EB: #_D3E7u: db $30, $68 ; duration, params
#_1B83ED: #_D3E9u: db $C8 ; sustain current note
#_1B83EE: #_D3EAu: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment3_Track4:
#_1B83EF: #_D3EBu: db $ED, $C8 ; set channel volume
#_1B83F1: #_D3EDu: db $E0, $02 ; set instrument - timpani
#_1B83F3: #_D3EFu: db $EF : dw Song10_Sub_D9CF : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment3_Track5:
#_1B83F7: #_D3F3u: db $ED, $C8 ; set channel volume
#_1B83F9: #_D3F5u: db $E0, $0B ; set instrument - trombone
#_1B83FB: #_D3F7u: db $E3, $19, $1E, $17 ; enable vibrato
#_1B83FF: #_D3FBu: db $60 ; duration
#_1B8400: #_D3FCu: db $C9 ; rest
#_1B8401: #_D3FDu: db $C9 ; rest
#_1B8402: #_D3FEu: db $40 ; duration
#_1B8403: #_D3FFu: db $C9 ; rest
#_1B8404: #_D400u: db $04, $79 ; duration, params
#_1B8406: #_D402u: db $B0 ; play note C5
#_1B8407: #_D403u: db $04, $7A ; duration, params
#_1B8409: #_D405u: db $B2 ; play note D5
#_1B840A: #_D406u: db $04, $7B ; duration, params
#_1B840C: #_D408u: db $B3 ; play note Ds5
#_1B840D: #_D409u: db $04, $7C ; duration, params
#_1B840F: #_D40Bu: db $B4 ; play note E5
#_1B8410: #_D40Cu: db $04, $7D ; duration, params
#_1B8412: #_D40Eu: db $B6 ; play note Fs5
#_1B8413: #_D40Fu: db $0C ; duration
#_1B8414: #_D410u: db $B7 ; play note G5
#_1B8415: #_D411u: db $24, $4D ; duration, params
#_1B8417: #_D413u: db $C8 ; sustain current note
#_1B8418: #_D414u: db $06, $2D ; duration, params
#_1B841A: #_D416u: db $B7 ; play note G5
#_1B841B: #_D417u: db $B7 ; play note G5
#_1B841C: #_D418u: db $0C ; duration
#_1B841D: #_D419u: db $BA ; play note As5
#_1B841E: #_D41Au: db $BA ; play note As5
#_1B841F: #_D41Bu: db $06, $7D ; duration, params
#_1B8421: #_D41Du: db $B8 ; play note Gs5
#_1B8422: #_D41Eu: db $06, $6D ; duration, params
#_1B8424: #_D420u: db $B7 ; play note G5
#_1B8425: #_D421u: db $06, $7D ; duration, params
#_1B8427: #_D423u: db $B6 ; play note Fs5
#_1B8428: #_D424u: db $06, $2D ; duration, params
#_1B842A: #_D426u: db $B5 ; play note F5

;---------------------------------------------------------------------------------------------------

Song10_Segment3_Track6:
#_1B842B: #_D427u: db $ED, $8C ; set channel volume
#_1B842D: #_D429u: db $E0, $0A ; set instrument - strings B
#_1B842F: #_D42Bu: db $E3, $1D, $14, $1E ; enable vibrato
#_1B8433: #_D42Fu: db $08 ; duration
#_1B8434: #_D430u: db $C9 ; rest
#_1B8435: #_D431u: db $30, $6D ; duration, params
#_1B8437: #_D433u: db $B0 ; play note C5
#_1B8438: #_D434u: db $AB ; play note G4
#_1B8439: #_D435u: db $24 ; duration
#_1B843A: #_D436u: db $C8 ; sustain current note
#_1B843B: #_D437u: db $0C ; duration
#_1B843C: #_D438u: db $B0 ; play note C5
#_1B843D: #_D439u: db $10 ; duration
#_1B843E: #_D43Au: db $B5 ; play note F5
#_1B843F: #_D43Bu: db $08 ; duration
#_1B8440: #_D43Cu: db $B3 ; play note Ds5
#_1B8441: #_D43Du: db $C8 ; sustain current note
#_1B8442: #_D43Eu: db $B1 ; play note Cs5
#_1B8443: #_D43Fu: db $AF ; play note B4
#_1B8444: #_D440u: db $30 ; duration
#_1B8445: #_D441u: db $B0 ; play note C5
#_1B8446: #_D442u: db $AB ; play note G4
#_1B8447: #_D443u: db $C8 ; sustain current note
#_1B8448: #_D444u: db $28 ; duration
#_1B8449: #_D445u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment4_Track0:
#_1B844A: #_D446u: db $ED, $C8 ; set channel volume
#_1B844C: #_D448u: db $E0, $0B ; set instrument - trombone
#_1B844E: #_D44Au: db $E3, $19, $1E, $17 ; enable vibrato
#_1B8452: #_D44Eu: db $E1, $08 ; set panning - leaning right
#_1B8454: #_D450u: db $60 ; duration
#_1B8455: #_D451u: db $C9 ; rest
#_1B8456: #_D452u: db $18 ; duration
#_1B8457: #_D453u: db $C9 ; rest
#_1B8458: #_D454u: db $04, $2D ; duration, params
#_1B845A: #_D456u: db $B2 ; play note D5
#_1B845B: #_D457u: db $B2 ; play note D5
#_1B845C: #_D458u: db $08 ; duration
#_1B845D: #_D459u: db $B2 ; play note D5
#_1B845E: #_D45Au: db $B2 ; play note D5
#_1B845F: #_D45Bu: db $0C ; duration
#_1B8460: #_D45Cu: db $B2 ; play note D5
#_1B8461: #_D45Du: db $B3 ; play note Ds5
#_1B8462: #_D45Eu: db $08 ; duration
#_1B8463: #_D45Fu: db $B5 ; play note F5
#_1B8464: #_D460u: db $B3 ; play note Ds5
#_1B8465: #_D461u: db $B2 ; play note D5
#_1B8466: #_D462u: db $60 ; duration
#_1B8467: #_D463u: db $C9 ; rest
#_1B8468: #_D464u: db $18 ; duration
#_1B8469: #_D465u: db $C9 ; rest
#_1B846A: #_D466u: db $04 ; duration
#_1B846B: #_D467u: db $B2 ; play note D5
#_1B846C: #_D468u: db $B2 ; play note D5
#_1B846D: #_D469u: db $08 ; duration
#_1B846E: #_D46Au: db $B2 ; play note D5
#_1B846F: #_D46Bu: db $B2 ; play note D5
#_1B8470: #_D46Cu: db $0C ; duration
#_1B8471: #_D46Du: db $B2 ; play note D5
#_1B8472: #_D46Eu: db $B3 ; play note Ds5
#_1B8473: #_D46Fu: db $08 ; duration
#_1B8474: #_D470u: db $B5 ; play note F5
#_1B8475: #_D471u: db $B3 ; play note Ds5
#_1B8476: #_D472u: db $B2 ; play note D5
#_1B8477: #_D473u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment4_Track1:
#_1B8478: #_D474u: db $ED, $C8 ; set channel volume
#_1B847A: #_D476u: db $E0, $0A ; set instrument - strings B
#_1B847C: #_D478u: db $E3, $14, $1E, $14 ; enable vibrato
#_1B8480: #_D47Cu: db $20, $7D ; duration, params
#_1B8482: #_D47Eu: db $94 ; play note Gs2
#_1B8483: #_D47Fu: db $08 ; duration
#_1B8484: #_D480u: db $9B ; play note Ds3
#_1B8485: #_D481u: db $A0 ; play note Gs3
#_1B8486: #_D482u: db $30 ; duration
#_1B8487: #_D483u: db $A7 ; play note Ds4
#_1B8488: #_D484u: db $20 ; duration
#_1B8489: #_D485u: db $93 ; play note G2
#_1B848A: #_D486u: db $08 ; duration
#_1B848B: #_D487u: db $9A ; play note D3
#_1B848C: #_D488u: db $9F ; play note G3
#_1B848D: #_D489u: db $30 ; duration
#_1B848E: #_D48Au: db $A6 ; play note D4
#_1B848F: #_D48Bu: db $20 ; duration
#_1B8490: #_D48Cu: db $94 ; play note Gs2
#_1B8491: #_D48Du: db $08 ; duration
#_1B8492: #_D48Eu: db $9B ; play note Ds3
#_1B8493: #_D48Fu: db $A0 ; play note Gs3
#_1B8494: #_D490u: db $30 ; duration
#_1B8495: #_D491u: db $A7 ; play note Ds4
#_1B8496: #_D492u: db $20 ; duration
#_1B8497: #_D493u: db $93 ; play note G2
#_1B8498: #_D494u: db $08 ; duration
#_1B8499: #_D495u: db $9A ; play note D3
#_1B849A: #_D496u: db $9F ; play note G3
#_1B849B: #_D497u: db $30 ; duration
#_1B849C: #_D498u: db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song10_Segment4_Track2:
#_1B849D: #_D499u: db $ED, $C8 ; set channel volume
#_1B849F: #_D49Bu: db $E0, $0B ; set instrument - trombone
#_1B84A1: #_D49Du: db $E3, $19, $1E, $17 ; enable vibrato
#_1B84A5: #_D4A1u: db $E1, $06 ; set panning - leaning right
#_1B84A7: #_D4A3u: db $60 ; duration
#_1B84A8: #_D4A4u: db $C9 ; rest
#_1B84A9: #_D4A5u: db $18 ; duration
#_1B84AA: #_D4A6u: db $C9 ; rest
#_1B84AB: #_D4A7u: db $04, $2D ; duration, params
#_1B84AD: #_D4A9u: db $AF ; play note B4
#_1B84AE: #_D4AAu: db $AF ; play note B4
#_1B84AF: #_D4ABu: db $08 ; duration
#_1B84B0: #_D4ACu: db $AF ; play note B4
#_1B84B1: #_D4ADu: db $AF ; play note B4
#_1B84B2: #_D4AEu: db $0C ; duration
#_1B84B3: #_D4AFu: db $AF ; play note B4
#_1B84B4: #_D4B0u: db $B0 ; play note C5
#_1B84B5: #_D4B1u: db $08 ; duration
#_1B84B6: #_D4B2u: db $B2 ; play note D5
#_1B84B7: #_D4B3u: db $B0 ; play note C5
#_1B84B8: #_D4B4u: db $AF ; play note B4
#_1B84B9: #_D4B5u: db $60 ; duration
#_1B84BA: #_D4B6u: db $C9 ; rest
#_1B84BB: #_D4B7u: db $18 ; duration
#_1B84BC: #_D4B8u: db $C9 ; rest
#_1B84BD: #_D4B9u: db $04 ; duration
#_1B84BE: #_D4BAu: db $AF ; play note B4
#_1B84BF: #_D4BBu: db $AF ; play note B4
#_1B84C0: #_D4BCu: db $08 ; duration
#_1B84C1: #_D4BDu: db $AF ; play note B4
#_1B84C2: #_D4BEu: db $AF ; play note B4
#_1B84C3: #_D4BFu: db $0C ; duration
#_1B84C4: #_D4C0u: db $AF ; play note B4
#_1B84C5: #_D4C1u: db $B0 ; play note C5
#_1B84C6: #_D4C2u: db $08 ; duration
#_1B84C7: #_D4C3u: db $B2 ; play note D5
#_1B84C8: #_D4C4u: db $B0 ; play note C5
#_1B84C9: #_D4C5u: db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song10_Segment4_Track3:
#_1B84CA: #_D4C6u: db $ED, $C8 ; set channel volume
#_1B84CC: #_D4C8u: db $E0, $0A ; set instrument - strings B
#_1B84CE: #_D4CAu: db $E3, $1D, $14, $1E ; enable vibrato
#_1B84D2: #_D4CEu: db $E1, $0F ; set panning - leaning left
#_1B84D4: #_D4D0u: db $20, $6D ; duration, params
#_1B84D6: #_D4D2u: db $A9 ; play note F4
#_1B84D7: #_D4D3u: db $08 ; duration
#_1B84D8: #_D4D4u: db $A7 ; play note Ds4
#_1B84D9: #_D4D5u: db $A6 ; play note D4
#_1B84DA: #_D4D6u: db $0C ; duration
#_1B84DB: #_D4D7u: db $A4 ; play note C4
#_1B84DC: #_D4D8u: db $0C, $4D ; duration, params
#_1B84DE: #_D4DAu: db $A6 ; play note D4
#_1B84DF: #_D4DBu: db $0C, $3D ; duration, params
#_1B84E1: #_D4DDu: db $A9 ; play note F4
#_1B84E2: #_D4DEu: db $B0 ; play note C5
#_1B84E3: #_D4DFu: db $EF : dw Song10_Sub_D9E7 : db $01 ; call segment subroutine
#_1B84E7: #_D4E3u: db $60, $5D ; duration, params
#_1B84E9: #_D4E5u: db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song10_Segment4_Track4:
#_1B84EA: #_D4E6u: db $ED, $C8 ; set channel volume
#_1B84EC: #_D4E8u: db $E0, $02 ; set instrument - timpani
#_1B84EE: #_D4EAu: db $EF : dw Song10_Sub_D9FA : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment4_Track5:
#_1B84F2: #_D4EEu: db $ED, $C8 ; set channel volume
#_1B84F4: #_D4F0u: db $E0, $02 ; set instrument - timpani
#_1B84F6: #_D4F2u: db $E1, $0A ; set panning - balanced
#_1B84F8: #_D4F4u: db $03, $6D ; duration, params
#_1B84FA: #_D4F6u: db $88 ; play note Gs1
#_1B84FB: #_D4F7u: db $06, $6B ; duration, params
#_1B84FD: #_D4F9u: db $88 ; play note Gs1
#_1B84FE: #_D4FAu: db $06, $68 ; duration, params
#_1B8500: #_D4FCu: db $88 ; play note Gs1
#_1B8501: #_D4FDu: db $06, $69 ; duration, params
#_1B8503: #_D4FFu: db $88 ; play note Gs1
#_1B8504: #_D500u: db $06, $6A ; duration, params
#_1B8506: #_D502u: db $88 ; play note Gs1
#_1B8507: #_D503u: db $06, $6B ; duration, params
#_1B8509: #_D505u: db $88 ; play note Gs1
#_1B850A: #_D506u: db $06, $6C ; duration, params
#_1B850C: #_D508u: db $88 ; play note Gs1
#_1B850D: #_D509u: db $06, $6D ; duration, params
#_1B850F: #_D50Bu: db $88 ; play note Gs1
#_1B8510: #_D50Cu: db $33 ; duration
#_1B8511: #_D50Du: db $C9 ; rest
#_1B8512: #_D50Eu: db $60 ; duration
#_1B8513: #_D50Fu: db $C9 ; rest
#_1B8514: #_D510u: db $03 ; duration
#_1B8515: #_D511u: db $88 ; play note Gs1
#_1B8516: #_D512u: db $06, $6B ; duration, params
#_1B8518: #_D514u: db $88 ; play note Gs1
#_1B8519: #_D515u: db $06, $68 ; duration, params
#_1B851B: #_D517u: db $88 ; play note Gs1
#_1B851C: #_D518u: db $06, $69 ; duration, params
#_1B851E: #_D51Au: db $88 ; play note Gs1
#_1B851F: #_D51Bu: db $06, $6A ; duration, params
#_1B8521: #_D51Du: db $88 ; play note Gs1
#_1B8522: #_D51Eu: db $06, $6B ; duration, params
#_1B8524: #_D520u: db $88 ; play note Gs1
#_1B8525: #_D521u: db $06, $6C ; duration, params
#_1B8527: #_D523u: db $88 ; play note Gs1
#_1B8528: #_D524u: db $06, $6D ; duration, params
#_1B852A: #_D526u: db $88 ; play note Gs1
#_1B852B: #_D527u: db $33 ; duration
#_1B852C: #_D528u: db $C9 ; rest
#_1B852D: #_D529u: db $60 ; duration
#_1B852E: #_D52Au: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment4_Track6:
#_1B852F: #_D52Bu: db $08 ; duration
#_1B8530: #_D52Cu: db $C9 ; rest
#_1B8531: #_D52Du: db $20, $6D ; duration, params
#_1B8533: #_D52Fu: db $A9 ; play note F4
#_1B8534: #_D530u: db $08 ; duration
#_1B8535: #_D531u: db $A7 ; play note Ds4
#_1B8536: #_D532u: db $A6 ; play note D4
#_1B8537: #_D533u: db $0C ; duration
#_1B8538: #_D534u: db $A4 ; play note C4
#_1B8539: #_D535u: db $0C, $4D ; duration, params
#_1B853B: #_D537u: db $A6 ; play note D4
#_1B853C: #_D538u: db $0C, $3D ; duration, params
#_1B853E: #_D53Au: db $A9 ; play note F4
#_1B853F: #_D53Bu: db $B0 ; play note C5
#_1B8540: #_D53Cu: db $EF : dw Song10_Sub_D9E7 : db $01 ; call segment subroutine
#_1B8544: #_D540u: db $58, $5D ; duration, params
#_1B8546: #_D542u: db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song10_Segment5_Track0:
#_1B8547: #_D543u: db $E0, $0A ; set instrument - strings B
#_1B8549: #_D545u: db $ED, $C8 ; set channel volume
#_1B854B: #_D547u: db $E1, $0C ; set panning - leaning left
#_1B854D: #_D549u: db $60 ; duration
#_1B854E: #_D54Au: db $C9 ; rest
#_1B854F: #_D54Bu: db $20, $6D ; duration, params
#_1B8551: #_D54Du: db $A6 ; play note D4
#_1B8552: #_D54Eu: db $08 ; duration
#_1B8553: #_D54Fu: db $A4 ; play note C4
#_1B8554: #_D550u: db $A2 ; play note As3
#_1B8555: #_D551u: db $0C ; duration
#_1B8556: #_D552u: db $A0 ; play note Gs3
#_1B8557: #_D553u: db $0C, $4D ; duration, params
#_1B8559: #_D555u: db $A2 ; play note As3
#_1B855A: #_D556u: db $0C, $3D ; duration, params
#_1B855C: #_D558u: db $A4 ; play note C4
#_1B855D: #_D559u: db $A6 ; play note D4
#_1B855E: #_D55Au: db $20, $6D ; duration, params
#_1B8560: #_D55Cu: db $A7 ; play note Ds4
#_1B8561: #_D55Du: db $08 ; duration
#_1B8562: #_D55Eu: db $A6 ; play note D4
#_1B8563: #_D55Fu: db $A4 ; play note C4
#_1B8564: #_D560u: db $0C ; duration
#_1B8565: #_D561u: db $A2 ; play note As3
#_1B8566: #_D562u: db $0C, $4D ; duration, params
#_1B8568: #_D564u: db $A4 ; play note C4
#_1B8569: #_D565u: db $0C, $3D ; duration, params
#_1B856B: #_D567u: db $A6 ; play note D4
#_1B856C: #_D568u: db $A7 ; play note Ds4
#_1B856D: #_D569u: db $30, $6D ; duration, params
#_1B856F: #_D56Bu: db $AB ; play note G4
#_1B8570: #_D56Cu: db $AA ; play note Fs4
#_1B8571: #_D56Du: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment5_Track1:
#_1B8572: #_D56Eu: db $ED, $C8 ; set channel volume
#_1B8574: #_D570u: db $E0, $0A ; set instrument - strings B
#_1B8576: #_D572u: db $E3, $14, $1E, $14 ; enable vibrato
#_1B857A: #_D576u: db $28, $7D ; duration, params
#_1B857C: #_D578u: db $96 ; play note As2
#_1B857D: #_D579u: db $08 ; duration
#_1B857E: #_D57Au: db $9D ; play note F3
#_1B857F: #_D57Bu: db $30, $78 ; duration, params
#_1B8581: #_D57Du: db $A2 ; play note As3
#_1B8582: #_D57Eu: db $28, $7D ; duration, params
#_1B8584: #_D580u: db $94 ; play note Gs2
#_1B8585: #_D581u: db $08 ; duration
#_1B8586: #_D582u: db $9B ; play note Ds3
#_1B8587: #_D583u: db $30, $78 ; duration, params
#_1B8589: #_D585u: db $A0 ; play note Gs3
#_1B858A: #_D586u: db $28, $7D ; duration, params
#_1B858C: #_D588u: db $95 ; play note A2
#_1B858D: #_D589u: db $08 ; duration
#_1B858E: #_D58Au: db $9B ; play note Ds3
#_1B858F: #_D58Bu: db $30, $78 ; duration, params
#_1B8591: #_D58Du: db $A1 ; play note A3
#_1B8592: #_D58Eu: db $28, $7D ; duration, params
#_1B8594: #_D590u: db $9A ; play note D3
#_1B8595: #_D591u: db $08 ; duration
#_1B8596: #_D592u: db $A1 ; play note A3
#_1B8597: #_D593u: db $30, $78 ; duration, params
#_1B8599: #_D595u: db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song10_Segment5_Track2:
#_1B859A: #_D596u: db $E0, $0B ; set instrument - trombone
#_1B859C: #_D598u: db $ED, $C8 ; set channel volume
#_1B859E: #_D59Au: db $E1, $09 ; set panning - leaning right
#_1B85A0: #_D59Cu: db $40 ; duration
#_1B85A1: #_D59Du: db $C9 ; rest
#_1B85A2: #_D59Eu: db $04, $5D ; duration, params
#_1B85A4: #_D5A0u: db $B5 ; play note F5
#_1B85A5: #_D5A1u: db $04, $3D ; duration, params
#_1B85A7: #_D5A3u: db $B5 ; play note F5
#_1B85A8: #_D5A4u: db $08 ; duration
#_1B85A9: #_D5A5u: db $B5 ; play note F5
#_1B85AA: #_D5A6u: db $B5 ; play note F5
#_1B85AB: #_D5A7u: db $B5 ; play note F5
#_1B85AC: #_D5A8u: db $EF : dw Song10_Sub_DA27 : db $02 ; call segment subroutine
#_1B85B0: #_D5ACu: db $60, $5D ; duration, params
#_1B85B2: #_D5AEu: db $B9 ; play note A5

;---------------------------------------------------------------------------------------------------

Song10_Segment5_Track3:
#_1B85B3: #_D5AFu: db $ED, $C8 ; set channel volume
#_1B85B5: #_D5B1u: db $E0, $0A ; set instrument - strings B
#_1B85B7: #_D5B3u: db $20, $6D ; duration, params
#_1B85B9: #_D5B5u: db $A9 ; play note F4
#_1B85BA: #_D5B6u: db $08 ; duration
#_1B85BB: #_D5B7u: db $A7 ; play note Ds4
#_1B85BC: #_D5B8u: db $A6 ; play note D4
#_1B85BD: #_D5B9u: db $0C ; duration
#_1B85BE: #_D5BAu: db $A4 ; play note C4
#_1B85BF: #_D5BBu: db $0C, $4D ; duration, params
#_1B85C1: #_D5BDu: db $A6 ; play note D4
#_1B85C2: #_D5BEu: db $0C, $3D ; duration, params
#_1B85C4: #_D5C0u: db $A9 ; play note F4
#_1B85C5: #_D5C1u: db $AB ; play note G4
#_1B85C6: #_D5C2u: db $EF : dw Song10_Sub_DA33 : db $01 ; call segment subroutine
#_1B85CA: #_D5C6u: db $60, $6D ; duration, params
#_1B85CC: #_D5C8u: db $B2 ; play note D5

;---------------------------------------------------------------------------------------------------

Song10_Segment5_Track4:
#_1B85CD: #_D5C9u: db $ED, $C8 ; set channel volume
#_1B85CF: #_D5CBu: db $E0, $02 ; set instrument - timpani
#_1B85D1: #_D5CDu: db $06, $6D ; duration, params
#_1B85D3: #_D5CFu: db $8A ; play note As1
#_1B85D4: #_D5D0u: db $06, $6B ; duration, params
#_1B85D6: #_D5D2u: db $8A ; play note As1
#_1B85D7: #_D5D3u: db $06, $68 ; duration, params
#_1B85D9: #_D5D5u: db $8A ; play note As1
#_1B85DA: #_D5D6u: db $06, $69 ; duration, params
#_1B85DC: #_D5D8u: db $8A ; play note As1
#_1B85DD: #_D5D9u: db $06, $6A ; duration, params
#_1B85DF: #_D5DBu: db $8A ; play note As1
#_1B85E0: #_D5DCu: db $06, $6B ; duration, params
#_1B85E2: #_D5DEu: db $8A ; play note As1
#_1B85E3: #_D5DFu: db $06, $6C ; duration, params
#_1B85E5: #_D5E1u: db $8A ; play note As1
#_1B85E6: #_D5E2u: db $06, $6D ; duration, params
#_1B85E8: #_D5E4u: db $8A ; play note As1
#_1B85E9: #_D5E5u: db $0C ; duration
#_1B85EA: #_D5E6u: db $8A ; play note As1
#_1B85EB: #_D5E7u: db $8A ; play note As1
#_1B85EC: #_D5E8u: db $0C, $2D ; duration, params
#_1B85EE: #_D5EAu: db $8A ; play note As1
#_1B85EF: #_D5EBu: db $8A ; play note As1
#_1B85F0: #_D5ECu: db $20, $5D ; duration, params
#_1B85F2: #_D5EEu: db $88 ; play note Gs1
#_1B85F3: #_D5EFu: db $08 ; duration
#_1B85F4: #_D5F0u: db $88 ; play note Gs1
#_1B85F5: #_D5F1u: db $88 ; play note Gs1
#_1B85F6: #_D5F2u: db $0C ; duration
#_1B85F7: #_D5F3u: db $88 ; play note Gs1
#_1B85F8: #_D5F4u: db $88 ; play note Gs1
#_1B85F9: #_D5F5u: db $08 ; duration
#_1B85FA: #_D5F6u: db $88 ; play note Gs1
#_1B85FB: #_D5F7u: db $88 ; play note Gs1
#_1B85FC: #_D5F8u: db $88 ; play note Gs1
#_1B85FD: #_D5F9u: db $06, $6D ; duration, params
#_1B85FF: #_D5FBu: db $89 ; play note A1
#_1B8600: #_D5FCu: db $06, $6B ; duration, params
#_1B8602: #_D5FEu: db $89 ; play note A1
#_1B8603: #_D5FFu: db $06, $68 ; duration, params
#_1B8605: #_D601u: db $89 ; play note A1
#_1B8606: #_D602u: db $06, $69 ; duration, params
#_1B8608: #_D604u: db $89 ; play note A1
#_1B8609: #_D605u: db $06, $6A ; duration, params
#_1B860B: #_D607u: db $89 ; play note A1
#_1B860C: #_D608u: db $06, $6B ; duration, params
#_1B860E: #_D60Au: db $89 ; play note A1
#_1B860F: #_D60Bu: db $06, $6C ; duration, params
#_1B8611: #_D60Du: db $89 ; play note A1
#_1B8612: #_D60Eu: db $06, $6D ; duration, params
#_1B8614: #_D610u: db $89 ; play note A1
#_1B8615: #_D611u: db $0C ; duration
#_1B8616: #_D612u: db $89 ; play note A1
#_1B8617: #_D613u: db $89 ; play note A1
#_1B8618: #_D614u: db $0C, $2D ; duration, params
#_1B861A: #_D616u: db $89 ; play note A1
#_1B861B: #_D617u: db $89 ; play note A1
#_1B861C: #_D618u: db $20, $5D ; duration, params
#_1B861E: #_D61Au: db $8E ; play note D2
#_1B861F: #_D61Bu: db $08 ; duration
#_1B8620: #_D61Cu: db $8E ; play note D2
#_1B8621: #_D61Du: db $8E ; play note D2
#_1B8622: #_D61Eu: db $0C ; duration
#_1B8623: #_D61Fu: db $8E ; play note D2
#_1B8624: #_D620u: db $8E ; play note D2
#_1B8625: #_D621u: db $08 ; duration
#_1B8626: #_D622u: db $8E ; play note D2
#_1B8627: #_D623u: db $8E ; play note D2
#_1B8628: #_D624u: db $8E ; play note D2

;---------------------------------------------------------------------------------------------------

Song10_Segment5_Track5:
#_1B8629: #_D625u: db $ED, $C8 ; set channel volume
#_1B862B: #_D627u: db $E0, $02 ; set instrument - timpani
#_1B862D: #_D629u: db $E1, $0A ; set panning - balanced
#_1B862F: #_D62Bu: db $03, $6D ; duration, params
#_1B8631: #_D62Du: db $8A ; play note As1
#_1B8632: #_D62Eu: db $06, $6B ; duration, params
#_1B8634: #_D630u: db $8A ; play note As1
#_1B8635: #_D631u: db $06, $68 ; duration, params
#_1B8637: #_D633u: db $8A ; play note As1
#_1B8638: #_D634u: db $06, $69 ; duration, params
#_1B863A: #_D636u: db $8A ; play note As1
#_1B863B: #_D637u: db $06, $6A ; duration, params
#_1B863D: #_D639u: db $8A ; play note As1
#_1B863E: #_D63Au: db $06, $6B ; duration, params
#_1B8640: #_D63Cu: db $8A ; play note As1
#_1B8641: #_D63Du: db $06, $6C ; duration, params
#_1B8643: #_D63Fu: db $8A ; play note As1
#_1B8644: #_D640u: db $06, $6D ; duration, params
#_1B8646: #_D642u: db $8A ; play note As1
#_1B8647: #_D643u: db $33 ; duration
#_1B8648: #_D644u: db $C9 ; rest
#_1B8649: #_D645u: db $60 ; duration
#_1B864A: #_D646u: db $C9 ; rest
#_1B864B: #_D647u: db $03 ; duration
#_1B864C: #_D648u: db $89 ; play note A1
#_1B864D: #_D649u: db $06, $6B ; duration, params
#_1B864F: #_D64Bu: db $89 ; play note A1
#_1B8650: #_D64Cu: db $06, $68 ; duration, params
#_1B8652: #_D64Eu: db $89 ; play note A1
#_1B8653: #_D64Fu: db $06, $69 ; duration, params
#_1B8655: #_D651u: db $89 ; play note A1
#_1B8656: #_D652u: db $06, $6A ; duration, params
#_1B8658: #_D654u: db $89 ; play note A1
#_1B8659: #_D655u: db $06, $6B ; duration, params
#_1B865B: #_D657u: db $89 ; play note A1
#_1B865C: #_D658u: db $06, $6C ; duration, params
#_1B865E: #_D65Au: db $89 ; play note A1
#_1B865F: #_D65Bu: db $06, $6D ; duration, params
#_1B8661: #_D65Du: db $89 ; play note A1
#_1B8662: #_D65Eu: db $33 ; duration
#_1B8663: #_D65Fu: db $C9 ; rest
#_1B8664: #_D660u: db $60 ; duration
#_1B8665: #_D661u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment5_Track6:
#_1B8666: #_D662u: db $08 ; duration
#_1B8667: #_D663u: db $C9 ; rest
#_1B8668: #_D664u: db $20, $6D ; duration, params
#_1B866A: #_D666u: db $A9 ; play note F4
#_1B866B: #_D667u: db $08 ; duration
#_1B866C: #_D668u: db $A7 ; play note Ds4
#_1B866D: #_D669u: db $A6 ; play note D4
#_1B866E: #_D66Au: db $0C ; duration
#_1B866F: #_D66Bu: db $A4 ; play note C4
#_1B8670: #_D66Cu: db $0C, $4D ; duration, params
#_1B8672: #_D66Eu: db $A6 ; play note D4
#_1B8673: #_D66Fu: db $0C, $3D ; duration, params
#_1B8675: #_D671u: db $A9 ; play note F4
#_1B8676: #_D672u: db $AB ; play note G4
#_1B8677: #_D673u: db $EF : dw Song10_Sub_DA33 : db $01 ; call segment subroutine
#_1B867B: #_D677u: db $58, $6D ; duration, params
#_1B867D: #_D679u: db $B2 ; play note D5

;---------------------------------------------------------------------------------------------------

Song10_Segment5_Track7:
#_1B867E: #_D67Au: db $E0, $0B ; set instrument - trombone
#_1B8680: #_D67Cu: db $ED, $C8 ; set channel volume
#_1B8682: #_D67Eu: db $E1, $07 ; set panning - leaning right
#_1B8684: #_D680u: db $40 ; duration
#_1B8685: #_D681u: db $C9 ; rest
#_1B8686: #_D682u: db $04, $5D ; duration, params
#_1B8688: #_D684u: db $B2 ; play note D5
#_1B8689: #_D685u: db $04, $3D ; duration, params
#_1B868B: #_D687u: db $B2 ; play note D5
#_1B868C: #_D688u: db $08 ; duration
#_1B868D: #_D689u: db $B2 ; play note D5
#_1B868E: #_D68Au: db $B2 ; play note D5
#_1B868F: #_D68Bu: db $B2 ; play note D5
#_1B8690: #_D68Cu: db $EF : dw Song10_Sub_DA52 : db $02 ; call segment subroutine
#_1B8694: #_D690u: db $60, $5D ; duration, params
#_1B8696: #_D692u: db $B0 ; play note C5

;---------------------------------------------------------------------------------------------------

Song10_Segment8_Track0:
#_1B8697: #_D693u: db $EF : dw Song10_Sub_DA5E : db $01 ; call segment subroutine
#_1B869B: #_D697u: db $EF : dw Song10_Sub_DA73 : db $01 ; call segment subroutine
#_1B869F: #_D69Bu: db $60, $6D ; duration, params
#_1B86A1: #_D69Du: db $AE ; play note As4
#_1B86A2: #_D69Eu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment8_Track1:
#_1B86A3: #_D69Fu: db $EF : dw Song10_Sub_DA82 : db $01 ; call segment subroutine
#_1B86A7: #_D6A3u: db $0C ; duration
#_1B86A8: #_D6A4u: db $93 ; play note G2
#_1B86A9: #_D6A5u: db $93 ; play note G2
#_1B86AA: #_D6A6u: db $93 ; play note G2
#_1B86AB: #_D6A7u: db $93 ; play note G2
#_1B86AC: #_D6A8u: db $93 ; play note G2
#_1B86AD: #_D6A9u: db $93 ; play note G2
#_1B86AE: #_D6AAu: db $08 ; duration
#_1B86AF: #_D6ABu: db $93 ; play note G2
#_1B86B0: #_D6ACu: db $93 ; play note G2
#_1B86B1: #_D6ADu: db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song10_Segment8_Track2:
#_1B86B2: #_D6AEu: db $E0, $0A ; set instrument - strings B
#_1B86B4: #_D6B0u: db $E1, $0F ; set panning - leaning left
#_1B86B6: #_D6B2u: db $EF : dw Song10_Sub_DAA7 : db $03 ; call segment subroutine
#_1B86BA: #_D6B6u: db $0C, $59 ; duration, params
#_1B86BC: #_D6B8u: db $AB ; play note G4
#_1B86BD: #_D6B9u: db $C9 ; rest
#_1B86BE: #_D6BAu: db $08, $49 ; duration, params
#_1B86C0: #_D6BCu: db $AB ; play note G4
#_1B86C1: #_D6BDu: db $AB ; play note G4
#_1B86C2: #_D6BEu: db $AB ; play note G4
#_1B86C3: #_D6BFu: db $0C, $69 ; duration, params
#_1B86C5: #_D6C1u: db $AB ; play note G4
#_1B86C6: #_D6C2u: db $C9 ; rest
#_1B86C7: #_D6C3u: db $0C, $49 ; duration, params
#_1B86C9: #_D6C5u: db $AB ; play note G4
#_1B86CA: #_D6C6u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_Segment8_Track3:
#_1B86CB: #_D6C7u: db $E1, $0C ; set panning - leaning left
#_1B86CD: #_D6C9u: db $EF : dw Song10_Sub_DAB9 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment8_Track4:
#_1B86D1: #_D6CDu: db $18, $6F ; duration, params
#_1B86D3: #_D6CFu: db $8C ; play note C2
#_1B86D4: #_D6D0u: db $08 ; duration
#_1B86D5: #_D6D1u: db $8C ; play note C2
#_1B86D6: #_D6D2u: db $8C ; play note C2
#_1B86D7: #_D6D3u: db $8C ; play note C2
#_1B86D8: #_D6D4u: db $24 ; duration
#_1B86D9: #_D6D5u: db $8C ; play note C2
#_1B86DA: #_D6D6u: db $06, $4D ; duration, params
#_1B86DC: #_D6D8u: db $8A ; play note As1
#_1B86DD: #_D6D9u: db $8A ; play note As1
#_1B86DE: #_D6DAu: db $18, $6F ; duration, params
#_1B86E0: #_D6DCu: db $8A ; play note As1
#_1B86E1: #_D6DDu: db $08 ; duration
#_1B86E2: #_D6DEu: db $8A ; play note As1
#_1B86E3: #_D6DFu: db $8A ; play note As1
#_1B86E4: #_D6E0u: db $8A ; play note As1
#_1B86E5: #_D6E1u: db $24 ; duration
#_1B86E6: #_D6E2u: db $8A ; play note As1
#_1B86E7: #_D6E3u: db $06, $4D ; duration, params
#_1B86E9: #_D6E5u: db $89 ; play note A1
#_1B86EA: #_D6E6u: db $89 ; play note A1
#_1B86EB: #_D6E7u: db $18, $6F ; duration, params
#_1B86ED: #_D6E9u: db $89 ; play note A1
#_1B86EE: #_D6EAu: db $08 ; duration
#_1B86EF: #_D6EBu: db $89 ; play note A1
#_1B86F0: #_D6ECu: db $89 ; play note A1
#_1B86F1: #_D6EDu: db $89 ; play note A1
#_1B86F2: #_D6EEu: db $24 ; duration
#_1B86F3: #_D6EFu: db $89 ; play note A1
#_1B86F4: #_D6F0u: db $06, $4D ; duration, params
#_1B86F6: #_D6F2u: db $87 ; play note G1
#_1B86F7: #_D6F3u: db $87 ; play note G1
#_1B86F8: #_D6F4u: db $18, $6F ; duration, params
#_1B86FA: #_D6F6u: db $87 ; play note G1
#_1B86FB: #_D6F7u: db $08 ; duration
#_1B86FC: #_D6F8u: db $87 ; play note G1
#_1B86FD: #_D6F9u: db $87 ; play note G1
#_1B86FE: #_D6FAu: db $87 ; play note G1
#_1B86FF: #_D6FBu: db $24 ; duration
#_1B8700: #_D6FCu: db $87 ; play note G1
#_1B8701: #_D6FDu: db $06, $4D ; duration, params
#_1B8703: #_D6FFu: db $8C ; play note C2
#_1B8704: #_D700u: db $8C ; play note C2

;---------------------------------------------------------------------------------------------------

Song10_Segment8_Track6:
#_1B8705: #_D701u: db $EF : dw Song10_Sub_DAE8 : db $01 ; call segment subroutine
#_1B8709: #_D705u: db $EF : dw Song10_Sub_DA73 : db $01 ; call segment subroutine
#_1B870D: #_D709u: db $5A, $6D ; duration, params
#_1B870F: #_D70Bu: db $AE ; play note As4

;---------------------------------------------------------------------------------------------------

Song10_Segment6_Track0:
#_1B8710: #_D70Cu: db $EF : dw Song10_Sub_DAFF : db $01 ; call segment subroutine
#_1B8714: #_D710u: db $30 ; duration
#_1B8715: #_D711u: db $A5 ; play note Cs4
#_1B8716: #_D712u: db $A1 ; play note A3
#_1B8717: #_D713u: db $A4 ; play note C4
#_1B8718: #_D714u: db $10 ; duration
#_1B8719: #_D715u: db $A2 ; play note As3
#_1B871A: #_D716u: db $9E ; play note Fs3
#_1B871B: #_D717u: db $A2 ; play note As3
#_1B871C: #_D718u: db $60 ; duration
#_1B871D: #_D719u: db $9F ; play note G3
#_1B871E: #_D71Au: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment6_Track1:
#_1B871F: #_D71Bu: db $EF : dw Song10_Sub_DB0B : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment6_Track2:
#_1B8723: #_D71Fu: db $ED, $B4 ; set channel volume
#_1B8725: #_D721u: db $E0, $0A ; set instrument - strings B
#_1B8727: #_D723u: db $E1, $0F ; set panning - leaning left
#_1B8729: #_D725u: db $EF : dw Song10_Sub_DAA7 : db $02 ; call segment subroutine
#_1B872D: #_D729u: db $EF : dw Song10_Sub_DB3B : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment6_Track3:
#_1B8731: #_D72Du: db $ED, $B4 ; set channel volume
#_1B8733: #_D72Fu: db $E1, $0C ; set panning - leaning left
#_1B8735: #_D731u: db $EF : dw Song10_Sub_DB5E : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment6_Track4:
#_1B8739: #_D735u: db $EF : dw Song10_Sub_DBC3 : db $01 ; call segment subroutine
#_1B873D: #_D739u: db $54, $6F ; duration, params
#_1B873F: #_D73Bu: db $87 ; play note G1
#_1B8740: #_D73Cu: db $06, $4D ; duration, params
#_1B8742: #_D73Eu: db $82 ; play note D1
#_1B8743: #_D73Fu: db $82 ; play note D1

;---------------------------------------------------------------------------------------------------

Song10_Segment6_Track6:
#_1B8744: #_D740u: db $E0, $0A ; set instrument - strings B
#_1B8746: #_D742u: db $08 ; duration
#_1B8747: #_D743u: db $C9 ; rest
#_1B8748: #_D744u: db $3C, $6D ; duration, params
#_1B874A: #_D746u: db $9F ; play note G3
#_1B874B: #_D747u: db $0C ; duration
#_1B874C: #_D748u: db $A1 ; play note A3
#_1B874D: #_D749u: db $A2 ; play note As3
#_1B874E: #_D74Au: db $A6 ; play note D4
#_1B874F: #_D74Bu: db $30 ; duration
#_1B8750: #_D74Cu: db $A5 ; play note Cs4
#_1B8751: #_D74Du: db $A1 ; play note A3
#_1B8752: #_D74Eu: db $48 ; duration
#_1B8753: #_D74Fu: db $A4 ; play note C4
#_1B8754: #_D750u: db $0C ; duration
#_1B8755: #_D751u: db $9E ; play note Fs3
#_1B8756: #_D752u: db $A1 ; play note A3
#_1B8757: #_D753u: db $58 ; duration
#_1B8758: #_D754u: db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song10_Segment7_Track0:
#_1B8759: #_D755u: db $EF : dw Song10_Sub_DAFF : db $01 ; call segment subroutine
#_1B875D: #_D759u: db $30 ; duration
#_1B875E: #_D75Au: db $A5 ; play note Cs4
#_1B875F: #_D75Bu: db $A1 ; play note A3
#_1B8760: #_D75Cu: db $A4 ; play note C4
#_1B8761: #_D75Du: db $10 ; duration
#_1B8762: #_D75Eu: db $A2 ; play note As3
#_1B8763: #_D75Fu: db $9E ; play note Fs3
#_1B8764: #_D760u: db $A2 ; play note As3
#_1B8765: #_D761u: db $42 ; duration
#_1B8766: #_D762u: db $9F ; play note G3
#_1B8767: #_D763u: db $E0, $0B ; set instrument - trombone
#_1B8769: #_D765u: db $06 ; duration
#_1B876A: #_D766u: db $AB ; play note G4
#_1B876B: #_D767u: db $AD ; play note A4
#_1B876C: #_D768u: db $AE ; play note As4
#_1B876D: #_D769u: db $B0 ; play note C5
#_1B876E: #_D76Au: db $B2 ; play note D5
#_1B876F: #_D76Bu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment7_Track1:
#_1B8770: #_D76Cu: db $EF : dw Song10_Sub_DB0B : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment7_Track2:
#_1B8774: #_D770u: db $E0, $0A ; set instrument - strings B
#_1B8776: #_D772u: db $E1, $0F ; set panning - leaning left
#_1B8778: #_D774u: db $EF : dw Song10_Sub_DAA7 : db $02 ; call segment subroutine
#_1B877C: #_D778u: db $EF : dw Song10_Sub_DB3B : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment7_Track3:
#_1B8780: #_D77Cu: db $E1, $0C ; set panning - leaning left
#_1B8782: #_D77Eu: db $EF : dw Song10_Sub_DB5E : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment7_Track4:
#_1B8786: #_D782u: db $EF : dw Song10_Sub_DBC3 : db $01 ; call segment subroutine
#_1B878A: #_D786u: db $54, $6F ; duration, params
#_1B878C: #_D788u: db $87 ; play note G1
#_1B878D: #_D789u: db $06, $4D ; duration, params
#_1B878F: #_D78Bu: db $8C ; play note C2
#_1B8790: #_D78Cu: db $8C ; play note C2

;---------------------------------------------------------------------------------------------------

Song10_Segment7_Track5:
#_1B8791: #_D78Du: db $E0, $16 ; set instrument - flute
#_1B8793: #_D78Fu: db $E1, $0B ; set panning - leaning left
#_1B8795: #_D791u: db $ED, $8C ; set channel volume
#_1B8797: #_D793u: db $E3, $1E, $14, $14 ; enable vibrato
#_1B879B: #_D797u: db $3C, $6D ; duration, params
#_1B879D: #_D799u: db $AB ; play note G4
#_1B879E: #_D79Au: db $0C ; duration
#_1B879F: #_D79Bu: db $AD ; play note A4
#_1B87A0: #_D79Cu: db $AE ; play note As4
#_1B87A1: #_D79Du: db $B2 ; play note D5
#_1B87A2: #_D79Eu: db $30 ; duration
#_1B87A3: #_D79Fu: db $B1 ; play note Cs5
#_1B87A4: #_D7A0u: db $AD ; play note A4
#_1B87A5: #_D7A1u: db $B0 ; play note C5
#_1B87A6: #_D7A2u: db $10 ; duration
#_1B87A7: #_D7A3u: db $AE ; play note As4
#_1B87A8: #_D7A4u: db $AA ; play note Fs4
#_1B87A9: #_D7A5u: db $AE ; play note As4
#_1B87AA: #_D7A6u: db $60 ; duration
#_1B87AB: #_D7A7u: db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song10_Segment7_Track6:
#_1B87AC: #_D7A8u: db $E0, $0A ; set instrument - strings B
#_1B87AE: #_D7AAu: db $08 ; duration
#_1B87AF: #_D7ABu: db $C9 ; rest
#_1B87B0: #_D7ACu: db $3C, $6D ; duration, params
#_1B87B2: #_D7AEu: db $9F ; play note G3
#_1B87B3: #_D7AFu: db $0C ; duration
#_1B87B4: #_D7B0u: db $A1 ; play note A3
#_1B87B5: #_D7B1u: db $A2 ; play note As3
#_1B87B6: #_D7B2u: db $A6 ; play note D4
#_1B87B7: #_D7B3u: db $30 ; duration
#_1B87B8: #_D7B4u: db $A5 ; play note Cs4
#_1B87B9: #_D7B5u: db $A1 ; play note A3
#_1B87BA: #_D7B6u: db $48 ; duration
#_1B87BB: #_D7B7u: db $A4 ; play note C4
#_1B87BC: #_D7B8u: db $0C ; duration
#_1B87BD: #_D7B9u: db $9E ; play note Fs3
#_1B87BE: #_D7BAu: db $A1 ; play note A3
#_1B87BF: #_D7BBu: db $58 ; duration
#_1B87C0: #_D7BCu: db $9F ; play note G3

;---------------------------------------------------------------------------------------------------

Song10_Segment9_Track0:
#_1B87C1: #_D7BDu: db $EF : dw Song10_Sub_DA5E : db $01 ; call segment subroutine
#_1B87C5: #_D7C1u: db $24, $6D ; duration, params
#_1B87C7: #_D7C3u: db $B2 ; play note D5
#_1B87C8: #_D7C4u: db $06, $2D ; duration, params
#_1B87CA: #_D7C6u: db $B2 ; play note D5
#_1B87CB: #_D7C7u: db $B2 ; play note D5
#_1B87CC: #_D7C8u: db $0C ; duration
#_1B87CD: #_D7C9u: db $B2 ; play note D5
#_1B87CE: #_D7CAu: db $AE ; play note As4
#_1B87CF: #_D7CBu: db $AB ; play note G4
#_1B87D0: #_D7CCu: db $B2 ; play note D5
#_1B87D1: #_D7CDu: db $24, $6D ; duration, params
#_1B87D3: #_D7CFu: db $B0 ; play note C5
#_1B87D4: #_D7D0u: db $06, $2D ; duration, params
#_1B87D6: #_D7D2u: db $B0 ; play note C5
#_1B87D7: #_D7D3u: db $B0 ; play note C5
#_1B87D8: #_D7D4u: db $0C ; duration
#_1B87D9: #_D7D5u: db $B0 ; play note C5
#_1B87DA: #_D7D6u: db $AA ; play note Fs4
#_1B87DB: #_D7D7u: db $A7 ; play note Ds4
#_1B87DC: #_D7D8u: db $B0 ; play note C5
#_1B87DD: #_D7D9u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Segment9_Track1:
#_1B87DE: #_D7DAu: db $EF : dw Song10_Sub_DA82 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_Segment9_Track2:
#_1B87E2: #_D7DEu: db $ED, $C8 ; set channel volume
#_1B87E4: #_D7E0u: db $E0, $0A ; set instrument - strings B
#_1B87E6: #_D7E2u: db $E1, $0F ; set panning - leaning left
#_1B87E8: #_D7E4u: db $EF : dw Song10_Sub_DBD9 : db $02 ; call segment subroutine
#_1B87EC: #_D7E8u: db $0C, $59 ; duration, params
#_1B87EE: #_D7EAu: db $AA ; play note Fs4
#_1B87EF: #_D7EBu: db $C9 ; rest
#_1B87F0: #_D7ECu: db $08, $49 ; duration, params
#_1B87F2: #_D7EEu: db $AA ; play note Fs4
#_1B87F3: #_D7EFu: db $AA ; play note Fs4
#_1B87F4: #_D7F0u: db $AA ; play note Fs4
#_1B87F5: #_D7F1u: db $0C, $59 ; duration, params
#_1B87F7: #_D7F3u: db $AA ; play note Fs4
#_1B87F8: #_D7F4u: db $C9 ; rest
#_1B87F9: #_D7F5u: db $08, $49 ; duration, params
#_1B87FB: #_D7F7u: db $AA ; play note Fs4
#_1B87FC: #_D7F8u: db $AA ; play note Fs4
#_1B87FD: #_D7F9u: db $AA ; play note Fs4

;---------------------------------------------------------------------------------------------------

Song10_Segment9_Track3:
#_1B87FE: #_D7FAu: db $ED, $C8 ; set channel volume
#_1B8800: #_D7FCu: db $E1, $0C ; set panning - leaning left
#_1B8802: #_D7FEu: db $0C, $5D ; duration, params
#_1B8804: #_D800u: db $B0 ; play note C5
#_1B8805: #_D801u: db $0C, $39 ; duration, params
#_1B8807: #_D803u: db $A7 ; play note Ds4
#_1B8808: #_D804u: db $08, $4B ; duration, params
#_1B880A: #_D806u: db $B0 ; play note C5
#_1B880B: #_D807u: db $B0 ; play note C5
#_1B880C: #_D808u: db $B0 ; play note C5
#_1B880D: #_D809u: db $0C, $5C ; duration, params
#_1B880F: #_D80Bu: db $B0 ; play note C5
#_1B8810: #_D80Cu: db $0C, $39 ; duration, params
#_1B8812: #_D80Eu: db $A7 ; play note Ds4
#_1B8813: #_D80Fu: db $08, $4B ; duration, params
#_1B8815: #_D811u: db $B0 ; play note C5
#_1B8816: #_D812u: db $08, $39 ; duration, params
#_1B8818: #_D814u: db $B0 ; play note C5
#_1B8819: #_D815u: db $B0 ; play note C5
#_1B881A: #_D816u: db $0C, $5D ; duration, params
#_1B881C: #_D818u: db $AE ; play note As4
#_1B881D: #_D819u: db $0C, $39 ; duration, params
#_1B881F: #_D81Bu: db $A6 ; play note D4
#_1B8820: #_D81Cu: db $08, $4B ; duration, params
#_1B8822: #_D81Eu: db $AE ; play note As4
#_1B8823: #_D81Fu: db $AE ; play note As4
#_1B8824: #_D820u: db $AE ; play note As4
#_1B8825: #_D821u: db $0C, $5C ; duration, params
#_1B8827: #_D823u: db $AE ; play note As4
#_1B8828: #_D824u: db $0C, $39 ; duration, params
#_1B882A: #_D826u: db $A6 ; play note D4
#_1B882B: #_D827u: db $08, $4B ; duration, params
#_1B882D: #_D829u: db $AE ; play note As4
#_1B882E: #_D82Au: db $08, $39 ; duration, params
#_1B8830: #_D82Cu: db $AE ; play note As4
#_1B8831: #_D82Du: db $AE ; play note As4
#_1B8832: #_D82Eu: db $0C, $5D ; duration, params
#_1B8834: #_D830u: db $AD ; play note A4
#_1B8835: #_D831u: db $0C, $39 ; duration, params
#_1B8837: #_D833u: db $A7 ; play note Ds4
#_1B8838: #_D834u: db $08, $4B ; duration, params
#_1B883A: #_D836u: db $AD ; play note A4
#_1B883B: #_D837u: db $AD ; play note A4
#_1B883C: #_D838u: db $AD ; play note A4
#_1B883D: #_D839u: db $0C, $5C ; duration, params
#_1B883F: #_D83Bu: db $AD ; play note A4
#_1B8840: #_D83Cu: db $0C, $39 ; duration, params
#_1B8842: #_D83Eu: db $A7 ; play note Ds4
#_1B8843: #_D83Fu: db $08, $4B ; duration, params
#_1B8845: #_D841u: db $AD ; play note A4
#_1B8846: #_D842u: db $08, $39 ; duration, params
#_1B8848: #_D844u: db $AD ; play note A4
#_1B8849: #_D845u: db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song10_Segment9_Track4:
#_1B884A: #_D846u: db $20, $6F ; duration, params
#_1B884C: #_D848u: db $8C ; play note C2
#_1B884D: #_D849u: db $08, $4F ; duration, params
#_1B884F: #_D84Bu: db $8C ; play note C2
#_1B8850: #_D84Cu: db $8C ; play note C2
#_1B8851: #_D84Du: db $0C, $6F ; duration, params
#_1B8853: #_D84Fu: db $8C ; play note C2
#_1B8854: #_D850u: db $8C ; play note C2
#_1B8855: #_D851u: db $08, $4D ; duration, params
#_1B8857: #_D853u: db $8C ; play note C2
#_1B8858: #_D854u: db $8C ; play note C2
#_1B8859: #_D855u: db $8C ; play note C2
#_1B885A: #_D856u: db $20, $6F ; duration, params
#_1B885C: #_D858u: db $8A ; play note As1
#_1B885D: #_D859u: db $08, $4F ; duration, params
#_1B885F: #_D85Bu: db $8A ; play note As1
#_1B8860: #_D85Cu: db $8A ; play note As1
#_1B8861: #_D85Du: db $0C, $6F ; duration, params
#_1B8863: #_D85Fu: db $8A ; play note As1
#_1B8864: #_D860u: db $8A ; play note As1
#_1B8865: #_D861u: db $08, $4D ; duration, params
#_1B8867: #_D863u: db $8A ; play note As1
#_1B8868: #_D864u: db $8A ; play note As1
#_1B8869: #_D865u: db $8A ; play note As1
#_1B886A: #_D866u: db $20, $6F ; duration, params
#_1B886C: #_D868u: db $89 ; play note A1
#_1B886D: #_D869u: db $08 ; duration
#_1B886E: #_D86Au: db $89 ; play note A1
#_1B886F: #_D86Bu: db $89 ; play note A1
#_1B8870: #_D86Cu: db $0C ; duration
#_1B8871: #_D86Du: db $89 ; play note A1
#_1B8872: #_D86Eu: db $89 ; play note A1
#_1B8873: #_D86Fu: db $08, $4D ; duration, params
#_1B8875: #_D871u: db $87 ; play note G1
#_1B8876: #_D872u: db $87 ; play note G1
#_1B8877: #_D873u: db $87 ; play note G1

;---------------------------------------------------------------------------------------------------

Song10_Segment9_Track5:
#_1B8878: #_D874u: db $E0, $0B ; set instrument - trombone
#_1B887A: #_D876u: db $ED, $C8 ; set channel volume
#_1B887C: #_D878u: db $E1, $09 ; set panning - leaning right
#_1B887E: #_D87Au: db $E3, $1D, $1B, $18 ; enable vibrato
#_1B8882: #_D87Eu: db $24, $6D ; duration, params
#_1B8884: #_D880u: db $AB ; play note G4
#_1B8885: #_D881u: db $06, $2D ; duration, params
#_1B8887: #_D883u: db $AB ; play note G4
#_1B8888: #_D884u: db $AB ; play note G4
#_1B8889: #_D885u: db $0C ; duration
#_1B888A: #_D886u: db $AB ; play note G4
#_1B888B: #_D887u: db $A8 ; play note E4
#_1B888C: #_D888u: db $A3 ; play note B3
#_1B888D: #_D889u: db $AB ; play note G4
#_1B888E: #_D88Au: db $24, $6D ; duration, params
#_1B8890: #_D88Cu: db $A9 ; play note F4
#_1B8891: #_D88Du: db $06, $2D ; duration, params
#_1B8893: #_D88Fu: db $A9 ; play note F4
#_1B8894: #_D890u: db $A9 ; play note F4
#_1B8895: #_D891u: db $0C ; duration
#_1B8896: #_D892u: db $A9 ; play note F4
#_1B8897: #_D893u: db $A6 ; play note D4
#_1B8898: #_D894u: db $A2 ; play note As3
#_1B8899: #_D895u: db $A9 ; play note F4
#_1B889A: #_D896u: db $24, $6D ; duration, params
#_1B889C: #_D898u: db $A7 ; play note Ds4
#_1B889D: #_D899u: db $06, $2D ; duration, params
#_1B889F: #_D89Bu: db $A7 ; play note Ds4
#_1B88A0: #_D89Cu: db $A7 ; play note Ds4
#_1B88A1: #_D89Du: db $0C ; duration
#_1B88A2: #_D89Eu: db $A7 ; play note Ds4
#_1B88A3: #_D89Fu: db $A4 ; play note C4
#_1B88A4: #_D8A0u: db $A2 ; play note As3
#_1B88A5: #_D8A1u: db $A7 ; play note Ds4

;---------------------------------------------------------------------------------------------------

Song10_Segment9_Track6:
#_1B88A6: #_D8A2u: db $EF : dw Song10_Sub_DAE8 : db $01 ; call segment subroutine
#_1B88AA: #_D8A6u: db $24, $6D ; duration, params
#_1B88AC: #_D8A8u: db $B2 ; play note D5
#_1B88AD: #_D8A9u: db $06, $2D ; duration, params
#_1B88AF: #_D8ABu: db $B2 ; play note D5
#_1B88B0: #_D8ACu: db $B2 ; play note D5
#_1B88B1: #_D8ADu: db $0C ; duration
#_1B88B2: #_D8AEu: db $B2 ; play note D5
#_1B88B3: #_D8AFu: db $AE ; play note As4
#_1B88B4: #_D8B0u: db $AB ; play note G4
#_1B88B5: #_D8B1u: db $B2 ; play note D5
#_1B88B6: #_D8B2u: db $24, $6D ; duration, params
#_1B88B8: #_D8B4u: db $B0 ; play note C5
#_1B88B9: #_D8B5u: db $06, $2D ; duration, params
#_1B88BB: #_D8B7u: db $B0 ; play note C5
#_1B88BC: #_D8B8u: db $B0 ; play note C5
#_1B88BD: #_D8B9u: db $0C ; duration
#_1B88BE: #_D8BAu: db $B0 ; play note C5
#_1B88BF: #_D8BBu: db $AA ; play note Fs4
#_1B88C0: #_D8BCu: db $A7 ; play note Ds4
#_1B88C1: #_D8BDu: db $06 ; duration
#_1B88C2: #_D8BEu: db $B0 ; play note C5

;---------------------------------------------------------------------------------------------------

Song10_SegmentA_Track0:
#_1B88C3: #_D8BFu: db $E7, $1B ; set song tempo
#_1B88C5: #_D8C1u: db $ED, $C8 ; set channel volume
#_1B88C7: #_D8C3u: db $E0, $0B ; set instrument - trombone
#_1B88C9: #_D8C5u: db $E3, $14, $1E, $14 ; enable vibrato
#_1B88CD: #_D8C9u: db $60, $6D ; duration, params
#_1B88CF: #_D8CBu: db $A6 ; play note D4
#_1B88D0: #_D8CCu: db $C9 ; rest
#_1B88D1: #_D8CDu: db $EF : dw Song10_Sub_D90C : db $01 ; call segment subroutine
#_1B88D5: #_D8D1u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_SegmentA_Track1:
#_1B88D6: #_D8D2u: db $EF : dw Song10_Sub_D925 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_SegmentA_Track2:
#_1B88DA: #_D8D6u: db $EF : dw Song10_Sub_D93F : db $01 ; call segment subroutine
#_1B88DE: #_D8DAu: db $EF : dw Song10_Sub_D960 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_SegmentA_Track3:
#_1B88E2: #_D8DEu: db $ED, $C8 ; set channel volume
#_1B88E4: #_D8E0u: db $E0, $0B ; set instrument - trombone
#_1B88E6: #_D8E2u: db $E3, $1D, $14, $1E ; enable vibrato
#_1B88EA: #_D8E6u: db $E1, $07 ; set panning - leaning right
#_1B88EC: #_D8E8u: db $60, $6D ; duration, params
#_1B88EE: #_D8EAu: db $AE ; play note As4
#_1B88EF: #_D8EBu: db $E1, $0F ; set panning - leaning left
#_1B88F1: #_D8EDu: db $C9 ; rest
#_1B88F2: #_D8EEu: db $C9 ; rest
#_1B88F3: #_D8EFu: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_SegmentA_Track4:
#_1B88F4: #_D8F0u: db $EF : dw Song10_Sub_D976 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song10_SegmentA_Track6:
#_1B88F8: #_D8F4u: db $06 ; duration
#_1B88F9: #_D8F5u: db $C9 ; rest
#_1B88FA: #_D8F6u: db $60, $6D ; duration, params
#_1B88FC: #_D8F8u: db $AE ; play note As4
#_1B88FD: #_D8F9u: db $5A ; duration
#_1B88FE: #_D8FAu: db $C9 ; rest
#_1B88FF: #_D8FBu: db $60 ; duration
#_1B8900: #_D8FCu: db $C9 ; rest
#_1B8901: #_D8FDu: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song10_SegmentA_Track7:
#_1B8902: #_D8FEu: db $ED, $8C ; set channel volume
#_1B8904: #_D900u: db $E0, $0A ; set instrument - strings B
#_1B8906: #_D902u: db $E3, $1D, $14, $1E ; enable vibrato
#_1B890A: #_D906u: db $60 ; duration
#_1B890B: #_D907u: db $C9 ; rest
#_1B890C: #_D908u: db $C9 ; rest
#_1B890D: #_D909u: db $C9 ; rest
#_1B890E: #_D90Au: db $C9 ; rest
#_1B890F: #_D90Bu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D90C:
#_1B8910: #_D90Cu: db $0C ; duration
#_1B8911: #_D90Du: db $C9 ; rest
#_1B8912: #_D90Eu: db $0C, $2D ; duration, params
#_1B8914: #_D910u: db $AB ; play note G4
#_1B8915: #_D911u: db $C9 ; rest
#_1B8916: #_D912u: db $AB ; play note G4
#_1B8917: #_D913u: db $A9 ; play note F4
#_1B8918: #_D914u: db $C9 ; rest
#_1B8919: #_D915u: db $A9 ; play note F4
#_1B891A: #_D916u: db $AB ; play note G4
#_1B891B: #_D917u: db $C9 ; rest
#_1B891C: #_D918u: db $AB ; play note G4
#_1B891D: #_D919u: db $AB ; play note G4
#_1B891E: #_D91Au: db $06, $4D ; duration, params
#_1B8920: #_D91Cu: db $AB ; play note G4
#_1B8921: #_D91Du: db $AB ; play note G4
#_1B8922: #_D91Eu: db $0C, $2D ; duration, params
#_1B8924: #_D920u: db $AB ; play note G4
#_1B8925: #_D921u: db $AB ; play note G4
#_1B8926: #_D922u: db $AC ; play note Gs4
#_1B8927: #_D923u: db $AA ; play note Fs4
#_1B8928: #_D924u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D925:
#_1B8929: #_D925u: db $ED, $8C ; set channel volume
#_1B892B: #_D927u: db $E0, $0A ; set instrument - strings B
#_1B892D: #_D929u: db $E3, $14, $1E, $14 ; enable vibrato
#_1B8931: #_D92Du: db $E1, $05 ; set panning - leaning right
#_1B8933: #_D92Fu: db $30, $7D ; duration, params
#_1B8935: #_D931u: db $9F ; play note G3
#_1B8936: #_D932u: db $9D ; play note F3
#_1B8937: #_D933u: db $9F ; play note G3
#_1B8938: #_D934u: db $18 ; duration
#_1B8939: #_D935u: db $A0 ; play note Gs3
#_1B893A: #_D936u: db $9E ; play note Fs3
#_1B893B: #_D937u: db $30 ; duration
#_1B893C: #_D938u: db $9F ; play note G3
#_1B893D: #_D939u: db $9D ; play note F3
#_1B893E: #_D93Au: db $9F ; play note G3
#_1B893F: #_D93Bu: db $18 ; duration
#_1B8940: #_D93Cu: db $A0 ; play note Gs3
#_1B8941: #_D93Du: db $9E ; play note Fs3
#_1B8942: #_D93Eu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D93F:
#_1B8943: #_D93Fu: db $ED, $C8 ; set channel volume
#_1B8945: #_D941u: db $E0, $0B ; set instrument - trombone
#_1B8947: #_D943u: db $E3, $19, $1E, $17 ; enable vibrato
#_1B894B: #_D947u: db $0C ; duration
#_1B894C: #_D948u: db $C9 ; rest
#_1B894D: #_D949u: db $0C, $2D ; duration, params
#_1B894F: #_D94Bu: db $A6 ; play note D4
#_1B8950: #_D94Cu: db $C9 ; rest
#_1B8951: #_D94Du: db $A6 ; play note D4
#_1B8952: #_D94Eu: db $A4 ; play note C4
#_1B8953: #_D94Fu: db $C9 ; rest
#_1B8954: #_D950u: db $A4 ; play note C4
#_1B8955: #_D951u: db $A6 ; play note D4
#_1B8956: #_D952u: db $C9 ; rest
#_1B8957: #_D953u: db $A6 ; play note D4
#_1B8958: #_D954u: db $A6 ; play note D4
#_1B8959: #_D955u: db $06, $4D ; duration, params
#_1B895B: #_D957u: db $A6 ; play note D4
#_1B895C: #_D958u: db $A6 ; play note D4
#_1B895D: #_D959u: db $0C, $2D ; duration, params
#_1B895F: #_D95Bu: db $A6 ; play note D4
#_1B8960: #_D95Cu: db $A6 ; play note D4
#_1B8961: #_D95Du: db $A7 ; play note Ds4
#_1B8962: #_D95Eu: db $A5 ; play note Cs4
#_1B8963: #_D95Fu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D960:
#_1B8964: #_D960u: db $C9 ; rest
#_1B8965: #_D961u: db $A6 ; play note D4
#_1B8966: #_D962u: db $C9 ; rest
#_1B8967: #_D963u: db $A6 ; play note D4
#_1B8968: #_D964u: db $A4 ; play note C4
#_1B8969: #_D965u: db $C9 ; rest
#_1B896A: #_D966u: db $A4 ; play note C4
#_1B896B: #_D967u: db $A6 ; play note D4
#_1B896C: #_D968u: db $C9 ; rest
#_1B896D: #_D969u: db $A6 ; play note D4
#_1B896E: #_D96Au: db $A6 ; play note D4
#_1B896F: #_D96Bu: db $06, $4D ; duration, params
#_1B8971: #_D96Du: db $A6 ; play note D4
#_1B8972: #_D96Eu: db $A6 ; play note D4
#_1B8973: #_D96Fu: db $0C, $2D ; duration, params
#_1B8975: #_D971u: db $A6 ; play note D4
#_1B8976: #_D972u: db $A6 ; play note D4
#_1B8977: #_D973u: db $A7 ; play note Ds4
#_1B8978: #_D974u: db $A5 ; play note Cs4
#_1B8979: #_D975u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D976:
#_1B897A: #_D976u: db $ED, $C8 ; set channel volume
#_1B897C: #_D978u: db $E0, $02 ; set instrument - timpani
#_1B897E: #_D97Au: db $0C, $6D ; duration, params
#_1B8980: #_D97Cu: db $87 ; play note G1
#_1B8981: #_D97Du: db $18 ; duration
#_1B8982: #_D97Eu: db $87 ; play note G1
#_1B8983: #_D97Fu: db $0C ; duration
#_1B8984: #_D980u: db $87 ; play note G1
#_1B8985: #_D981u: db $24 ; duration
#_1B8986: #_D982u: db $85 ; play note F1
#_1B8987: #_D983u: db $0C ; duration
#_1B8988: #_D984u: db $87 ; play note G1
#_1B8989: #_D985u: db $C9 ; rest
#_1B898A: #_D986u: db $87 ; play note G1
#_1B898B: #_D987u: db $87 ; play note G1
#_1B898C: #_D988u: db $06 ; duration
#_1B898D: #_D989u: db $87 ; play note G1
#_1B898E: #_D98Au: db $87 ; play note G1
#_1B898F: #_D98Bu: db $0C ; duration
#_1B8990: #_D98Cu: db $87 ; play note G1
#_1B8991: #_D98Du: db $87 ; play note G1
#_1B8992: #_D98Eu: db $88 ; play note Gs1
#_1B8993: #_D98Fu: db $86 ; play note Fs1
#_1B8994: #_D990u: db $87 ; play note G1
#_1B8995: #_D991u: db $18, $3D ; duration, params
#_1B8997: #_D993u: db $87 ; play note G1
#_1B8998: #_D994u: db $0C ; duration
#_1B8999: #_D995u: db $87 ; play note G1
#_1B899A: #_D996u: db $24 ; duration
#_1B899B: #_D997u: db $85 ; play note F1
#_1B899C: #_D998u: db $0C, $6D ; duration, params
#_1B899E: #_D99Au: db $87 ; play note G1
#_1B899F: #_D99Bu: db $C9 ; rest
#_1B89A0: #_D99Cu: db $87 ; play note G1
#_1B89A1: #_D99Du: db $87 ; play note G1
#_1B89A2: #_D99Eu: db $06 ; duration
#_1B89A3: #_D99Fu: db $87 ; play note G1
#_1B89A4: #_D9A0u: db $87 ; play note G1
#_1B89A5: #_D9A1u: db $0C ; duration
#_1B89A6: #_D9A2u: db $87 ; play note G1
#_1B89A7: #_D9A3u: db $87 ; play note G1
#_1B89A8: #_D9A4u: db $88 ; play note Gs1
#_1B89A9: #_D9A5u: db $86 ; play note Fs1
#_1B89AA: #_D9A6u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D9A7:
#_1B89AB: #_D9A7u: db $30, $7D ; duration, params
#_1B89AD: #_D9A9u: db $9F ; play note G3
#_1B89AE: #_D9AAu: db $9D ; play note F3
#_1B89AF: #_D9ABu: db $9F ; play note G3
#_1B89B0: #_D9ACu: db $18 ; duration
#_1B89B1: #_D9ADu: db $A0 ; play note Gs3
#_1B89B2: #_D9AEu: db $9E ; play note Fs3
#_1B89B3: #_D9AFu: db $30 ; duration
#_1B89B4: #_D9B0u: db $9F ; play note G3
#_1B89B5: #_D9B1u: db $9D ; play note F3
#_1B89B6: #_D9B2u: db $9F ; play note G3
#_1B89B7: #_D9B3u: db $18 ; duration
#_1B89B8: #_D9B4u: db $A0 ; play note Gs3
#_1B89B9: #_D9B5u: db $9E ; play note Fs3
#_1B89BA: #_D9B6u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D9B7:
#_1B89BB: #_D9B7u: db $0C, $3D ; duration, params
#_1B89BD: #_D9B9u: db $87 ; play note G1
#_1B89BE: #_D9BAu: db $18 ; duration
#_1B89BF: #_D9BBu: db $87 ; play note G1
#_1B89C0: #_D9BCu: db $0C ; duration
#_1B89C1: #_D9BDu: db $87 ; play note G1
#_1B89C2: #_D9BEu: db $24 ; duration
#_1B89C3: #_D9BFu: db $85 ; play note F1
#_1B89C4: #_D9C0u: db $0C, $6D ; duration, params
#_1B89C6: #_D9C2u: db $87 ; play note G1
#_1B89C7: #_D9C3u: db $C9 ; rest
#_1B89C8: #_D9C4u: db $87 ; play note G1
#_1B89C9: #_D9C5u: db $87 ; play note G1
#_1B89CA: #_D9C6u: db $06 ; duration
#_1B89CB: #_D9C7u: db $87 ; play note G1
#_1B89CC: #_D9C8u: db $87 ; play note G1
#_1B89CD: #_D9C9u: db $0C ; duration
#_1B89CE: #_D9CAu: db $87 ; play note G1
#_1B89CF: #_D9CBu: db $87 ; play note G1
#_1B89D0: #_D9CCu: db $88 ; play note Gs1
#_1B89D1: #_D9CDu: db $86 ; play note Fs1
#_1B89D2: #_D9CEu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D9CF:
#_1B89D3: #_D9CFu: db $0C, $3D ; duration, params
#_1B89D5: #_D9D1u: db $8C ; play note C2
#_1B89D6: #_D9D2u: db $18 ; duration
#_1B89D7: #_D9D3u: db $8C ; play note C2
#_1B89D8: #_D9D4u: db $0C ; duration
#_1B89D9: #_D9D5u: db $8C ; play note C2
#_1B89DA: #_D9D6u: db $24 ; duration
#_1B89DB: #_D9D7u: db $8A ; play note As1
#_1B89DC: #_D9D8u: db $0C, $6D ; duration, params
#_1B89DE: #_D9DAu: db $8C ; play note C2
#_1B89DF: #_D9DBu: db $C9 ; rest
#_1B89E0: #_D9DCu: db $8C ; play note C2
#_1B89E1: #_D9DDu: db $8C ; play note C2
#_1B89E2: #_D9DEu: db $06 ; duration
#_1B89E3: #_D9DFu: db $8C ; play note C2
#_1B89E4: #_D9E0u: db $8C ; play note C2
#_1B89E5: #_D9E1u: db $0C ; duration
#_1B89E6: #_D9E2u: db $8C ; play note C2
#_1B89E7: #_D9E3u: db $8C ; play note C2
#_1B89E8: #_D9E4u: db $8D ; play note Cs2
#_1B89E9: #_D9E5u: db $8B ; play note B1
#_1B89EA: #_D9E6u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D9E7:
#_1B89EB: #_D9E7u: db $60, $5D ; duration, params
#_1B89ED: #_D9E9u: db $AB ; play note G4
#_1B89EE: #_D9EAu: db $20, $6D ; duration, params
#_1B89F0: #_D9ECu: db $A9 ; play note F4
#_1B89F1: #_D9EDu: db $08 ; duration
#_1B89F2: #_D9EEu: db $A7 ; play note Ds4
#_1B89F3: #_D9EFu: db $A6 ; play note D4
#_1B89F4: #_D9F0u: db $0C ; duration
#_1B89F5: #_D9F1u: db $A4 ; play note C4
#_1B89F6: #_D9F2u: db $0C, $4D ; duration, params
#_1B89F8: #_D9F4u: db $A6 ; play note D4
#_1B89F9: #_D9F5u: db $0C, $3D ; duration, params
#_1B89FB: #_D9F7u: db $A9 ; play note F4
#_1B89FC: #_D9F8u: db $B0 ; play note C5
#_1B89FD: #_D9F9u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_D9FA:
#_1B89FE: #_D9FAu: db $06, $6D ; duration, params
#_1B8A00: #_D9FCu: db $88 ; play note Gs1
#_1B8A01: #_D9FDu: db $06, $6B ; duration, params
#_1B8A03: #_D9FFu: db $88 ; play note Gs1
#_1B8A04: #_DA00u: db $06, $68 ; duration, params
#_1B8A06: #_DA02u: db $88 ; play note Gs1
#_1B8A07: #_DA03u: db $06, $69 ; duration, params
#_1B8A09: #_DA05u: db $88 ; play note Gs1
#_1B8A0A: #_DA06u: db $06, $6A ; duration, params
#_1B8A0C: #_DA08u: db $88 ; play note Gs1
#_1B8A0D: #_DA09u: db $06, $6B ; duration, params
#_1B8A0F: #_DA0Bu: db $88 ; play note Gs1
#_1B8A10: #_DA0Cu: db $06, $6C ; duration, params
#_1B8A12: #_DA0Eu: db $88 ; play note Gs1
#_1B8A13: #_DA0Fu: db $06, $6D ; duration, params
#_1B8A15: #_DA11u: db $88 ; play note Gs1
#_1B8A16: #_DA12u: db $0C ; duration
#_1B8A17: #_DA13u: db $88 ; play note Gs1
#_1B8A18: #_DA14u: db $88 ; play note Gs1
#_1B8A19: #_DA15u: db $0C, $2D ; duration, params
#_1B8A1B: #_DA17u: db $88 ; play note Gs1
#_1B8A1C: #_DA18u: db $88 ; play note Gs1
#_1B8A1D: #_DA19u: db $20, $5D ; duration, params
#_1B8A1F: #_DA1Bu: db $87 ; play note G1
#_1B8A20: #_DA1Cu: db $08 ; duration
#_1B8A21: #_DA1Du: db $87 ; play note G1
#_1B8A22: #_DA1Eu: db $87 ; play note G1
#_1B8A23: #_DA1Fu: db $0C ; duration
#_1B8A24: #_DA20u: db $87 ; play note G1
#_1B8A25: #_DA21u: db $87 ; play note G1
#_1B8A26: #_DA22u: db $08 ; duration
#_1B8A27: #_DA23u: db $87 ; play note G1
#_1B8A28: #_DA24u: db $87 ; play note G1
#_1B8A29: #_DA25u: db $87 ; play note G1
#_1B8A2A: #_DA26u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DA27:
#_1B8A2B: #_DA27u: db $40, $5D ; duration, params
#_1B8A2D: #_DA29u: db $B7 ; play note G5
#_1B8A2E: #_DA2Au: db $04, $3D ; duration, params
#_1B8A30: #_DA2Cu: db $B7 ; play note G5
#_1B8A31: #_DA2Du: db $B7 ; play note G5
#_1B8A32: #_DA2Eu: db $08 ; duration
#_1B8A33: #_DA2Fu: db $B7 ; play note G5
#_1B8A34: #_DA30u: db $B7 ; play note G5
#_1B8A35: #_DA31u: db $B7 ; play note G5
#_1B8A36: #_DA32u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DA33:
#_1B8A37: #_DA33u: db $20, $6D ; duration, params
#_1B8A39: #_DA35u: db $AE ; play note As4
#_1B8A3A: #_DA36u: db $08 ; duration
#_1B8A3B: #_DA37u: db $AC ; play note Gs4
#_1B8A3C: #_DA38u: db $AB ; play note G4
#_1B8A3D: #_DA39u: db $0C ; duration
#_1B8A3E: #_DA3Au: db $A9 ; play note F4
#_1B8A3F: #_DA3Bu: db $0C, $4D ; duration, params
#_1B8A41: #_DA3Du: db $AB ; play note G4
#_1B8A42: #_DA3Eu: db $0C, $3D ; duration, params
#_1B8A44: #_DA40u: db $AC ; play note Gs4
#_1B8A45: #_DA41u: db $AE ; play note As4
#_1B8A46: #_DA42u: db $20, $6D ; duration, params
#_1B8A48: #_DA44u: db $B0 ; play note C5
#_1B8A49: #_DA45u: db $08 ; duration
#_1B8A4A: #_DA46u: db $AE ; play note As4
#_1B8A4B: #_DA47u: db $AD ; play note A4
#_1B8A4C: #_DA48u: db $0C ; duration
#_1B8A4D: #_DA49u: db $AB ; play note G4
#_1B8A4E: #_DA4Au: db $0C, $4D ; duration, params
#_1B8A50: #_DA4Cu: db $AD ; play note A4
#_1B8A51: #_DA4Du: db $0C, $3D ; duration, params
#_1B8A53: #_DA4Fu: db $AE ; play note As4
#_1B8A54: #_DA50u: db $B0 ; play note C5
#_1B8A55: #_DA51u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DA52:
#_1B8A56: #_DA52u: db $40, $5D ; duration, params
#_1B8A58: #_DA54u: db $B0 ; play note C5
#_1B8A59: #_DA55u: db $04, $3D ; duration, params
#_1B8A5B: #_DA57u: db $B0 ; play note C5
#_1B8A5C: #_DA58u: db $B0 ; play note C5
#_1B8A5D: #_DA59u: db $08 ; duration
#_1B8A5E: #_DA5Au: db $B0 ; play note C5
#_1B8A5F: #_DA5Bu: db $B0 ; play note C5
#_1B8A60: #_DA5Cu: db $B0 ; play note C5
#_1B8A61: #_DA5Du: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DA5E:
#_1B8A62: #_DA5Eu: db $E0, $0B ; set instrument - trombone
#_1B8A64: #_DA60u: db $E1, $07 ; set panning - leaning right
#_1B8A66: #_DA62u: db $E3, $1E, $1A, $14 ; enable vibrato
#_1B8A6A: #_DA66u: db $24, $6D ; duration, params
#_1B8A6C: #_DA68u: db $B3 ; play note Ds5
#_1B8A6D: #_DA69u: db $06, $2D ; duration, params
#_1B8A6F: #_DA6Bu: db $B3 ; play note Ds5
#_1B8A70: #_DA6Cu: db $B3 ; play note Ds5
#_1B8A71: #_DA6Du: db $0C ; duration
#_1B8A72: #_DA6Eu: db $B3 ; play note Ds5
#_1B8A73: #_DA6Fu: db $B0 ; play note C5
#_1B8A74: #_DA70u: db $AB ; play note G4
#_1B8A75: #_DA71u: db $B3 ; play note Ds5
#_1B8A76: #_DA72u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DA73:
#_1B8A77: #_DA73u: db $60, $6D ; duration, params
#_1B8A79: #_DA75u: db $B2 ; play note D5
#_1B8A7A: #_DA76u: db $24 ; duration
#_1B8A7B: #_DA77u: db $B0 ; play note C5
#_1B8A7C: #_DA78u: db $06, $2D ; duration, params
#_1B8A7E: #_DA7Au: db $B0 ; play note C5
#_1B8A7F: #_DA7Bu: db $B0 ; play note C5
#_1B8A80: #_DA7Cu: db $0C ; duration
#_1B8A81: #_DA7Du: db $B0 ; play note C5
#_1B8A82: #_DA7Eu: db $AB ; play note G4
#_1B8A83: #_DA7Fu: db $A7 ; play note Ds4
#_1B8A84: #_DA80u: db $B0 ; play note C5
#_1B8A85: #_DA81u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DA82:
#_1B8A86: #_DA82u: db $E0, $0A ; set instrument - strings B
#_1B8A88: #_DA84u: db $0C, $6D ; duration, params
#_1B8A8A: #_DA86u: db $98 ; play note C3
#_1B8A8B: #_DA87u: db $98 ; play note C3
#_1B8A8C: #_DA88u: db $98 ; play note C3
#_1B8A8D: #_DA89u: db $98 ; play note C3
#_1B8A8E: #_DA8Au: db $98 ; play note C3
#_1B8A8F: #_DA8Bu: db $98 ; play note C3
#_1B8A90: #_DA8Cu: db $08 ; duration
#_1B8A91: #_DA8Du: db $98 ; play note C3
#_1B8A92: #_DA8Eu: db $98 ; play note C3
#_1B8A93: #_DA8Fu: db $98 ; play note C3
#_1B8A94: #_DA90u: db $0C ; duration
#_1B8A95: #_DA91u: db $96 ; play note As2
#_1B8A96: #_DA92u: db $96 ; play note As2
#_1B8A97: #_DA93u: db $96 ; play note As2
#_1B8A98: #_DA94u: db $96 ; play note As2
#_1B8A99: #_DA95u: db $96 ; play note As2
#_1B8A9A: #_DA96u: db $96 ; play note As2
#_1B8A9B: #_DA97u: db $08 ; duration
#_1B8A9C: #_DA98u: db $96 ; play note As2
#_1B8A9D: #_DA99u: db $96 ; play note As2
#_1B8A9E: #_DA9Au: db $96 ; play note As2
#_1B8A9F: #_DA9Bu: db $0C ; duration
#_1B8AA0: #_DA9Cu: db $95 ; play note A2
#_1B8AA1: #_DA9Du: db $95 ; play note A2
#_1B8AA2: #_DA9Eu: db $95 ; play note A2
#_1B8AA3: #_DA9Fu: db $95 ; play note A2
#_1B8AA4: #_DAA0u: db $95 ; play note A2
#_1B8AA5: #_DAA1u: db $95 ; play note A2
#_1B8AA6: #_DAA2u: db $08 ; duration
#_1B8AA7: #_DAA3u: db $95 ; play note A2
#_1B8AA8: #_DAA4u: db $95 ; play note A2
#_1B8AA9: #_DAA5u: db $95 ; play note A2
#_1B8AAA: #_DAA6u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DAA7:
#_1B8AAB: #_DAA7u: db $0C, $59 ; duration, params
#_1B8AAD: #_DAA9u: db $AB ; play note G4
#_1B8AAE: #_DAAAu: db $C9 ; rest
#_1B8AAF: #_DAABu: db $08, $49 ; duration, params
#_1B8AB1: #_DAADu: db $AB ; play note G4
#_1B8AB2: #_DAAEu: db $AB ; play note G4
#_1B8AB3: #_DAAFu: db $AB ; play note G4
#_1B8AB4: #_DAB0u: db $0C, $59 ; duration, params
#_1B8AB6: #_DAB2u: db $AB ; play note G4
#_1B8AB7: #_DAB3u: db $C9 ; rest
#_1B8AB8: #_DAB4u: db $0C, $49 ; duration, params
#_1B8ABA: #_DAB6u: db $AB ; play note G4
#_1B8ABB: #_DAB7u: db $C9 ; rest
#_1B8ABC: #_DAB8u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DAB9:
#_1B8ABD: #_DAB9u: db $0C, $5D ; duration, params
#_1B8ABF: #_DABBu: db $B0 ; play note C5
#_1B8AC0: #_DABCu: db $0C, $39 ; duration, params
#_1B8AC2: #_DABEu: db $A7 ; play note Ds4
#_1B8AC3: #_DABFu: db $08, $4B ; duration, params
#_1B8AC5: #_DAC1u: db $B0 ; play note C5
#_1B8AC6: #_DAC2u: db $B0 ; play note C5
#_1B8AC7: #_DAC3u: db $B0 ; play note C5
#_1B8AC8: #_DAC4u: db $0C, $5C ; duration, params
#_1B8ACA: #_DAC6u: db $B0 ; play note C5
#_1B8ACB: #_DAC7u: db $0C, $39 ; duration, params
#_1B8ACD: #_DAC9u: db $A7 ; play note Ds4
#_1B8ACE: #_DACAu: db $0C, $4B ; duration, params
#_1B8AD0: #_DACCu: db $B0 ; play note C5
#_1B8AD1: #_DACDu: db $0C, $39 ; duration, params
#_1B8AD3: #_DACFu: db $A7 ; play note Ds4
#_1B8AD4: #_DAD0u: db $0C, $5D ; duration, params
#_1B8AD6: #_DAD2u: db $AE ; play note As4
#_1B8AD7: #_DAD3u: db $0C, $39 ; duration, params
#_1B8AD9: #_DAD5u: db $A6 ; play note D4
#_1B8ADA: #_DAD6u: db $08, $4B ; duration, params
#_1B8ADC: #_DAD8u: db $AE ; play note As4
#_1B8ADD: #_DAD9u: db $AE ; play note As4
#_1B8ADE: #_DADAu: db $AE ; play note As4
#_1B8ADF: #_DADBu: db $0C, $5C ; duration, params
#_1B8AE1: #_DADDu: db $AE ; play note As4
#_1B8AE2: #_DADEu: db $0C, $39 ; duration, params
#_1B8AE4: #_DAE0u: db $A6 ; play note D4
#_1B8AE5: #_DAE1u: db $0C, $4B ; duration, params
#_1B8AE7: #_DAE3u: db $AE ; play note As4
#_1B8AE8: #_DAE4u: db $0C, $39 ; duration, params
#_1B8AEA: #_DAE6u: db $A6 ; play note D4
#_1B8AEB: #_DAE7u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DAE8:
#_1B8AEC: #_DAE8u: db $E0, $0B ; set instrument - trombone
#_1B8AEE: #_DAEAu: db $E1, $0E ; set panning - leaning left
#_1B8AF0: #_DAECu: db $E3, $1E, $14, $14 ; enable vibrato
#_1B8AF4: #_DAF0u: db $06 ; duration
#_1B8AF5: #_DAF1u: db $C9 ; rest
#_1B8AF6: #_DAF2u: db $24, $6D ; duration, params
#_1B8AF8: #_DAF4u: db $B3 ; play note Ds5
#_1B8AF9: #_DAF5u: db $06, $2D ; duration, params
#_1B8AFB: #_DAF7u: db $B3 ; play note Ds5
#_1B8AFC: #_DAF8u: db $B3 ; play note Ds5
#_1B8AFD: #_DAF9u: db $0C ; duration
#_1B8AFE: #_DAFAu: db $B3 ; play note Ds5
#_1B8AFF: #_DAFBu: db $B0 ; play note C5
#_1B8B00: #_DAFCu: db $AB ; play note G4
#_1B8B01: #_DAFDu: db $B3 ; play note Ds5
#_1B8B02: #_DAFEu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DAFF:
#_1B8B03: #_DAFFu: db $E0, $0A ; set instrument - strings B
#_1B8B05: #_DB01u: db $E1, $07 ; set panning - leaning right
#_1B8B07: #_DB03u: db $3C, $6D ; duration, params
#_1B8B09: #_DB05u: db $9F ; play note G3
#_1B8B0A: #_DB06u: db $0C ; duration
#_1B8B0B: #_DB07u: db $A1 ; play note A3
#_1B8B0C: #_DB08u: db $A2 ; play note As3
#_1B8B0D: #_DB09u: db $A6 ; play note D4
#_1B8B0E: #_DB0Au: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DB0B:
#_1B8B0F: #_DB0Bu: db $E0, $0A ; set instrument - strings B
#_1B8B11: #_DB0Du: db $0C, $6D ; duration, params
#_1B8B13: #_DB0Fu: db $93 ; play note G2
#_1B8B14: #_DB10u: db $93 ; play note G2
#_1B8B15: #_DB11u: db $93 ; play note G2
#_1B8B16: #_DB12u: db $93 ; play note G2
#_1B8B17: #_DB13u: db $93 ; play note G2
#_1B8B18: #_DB14u: db $93 ; play note G2
#_1B8B19: #_DB15u: db $08 ; duration
#_1B8B1A: #_DB16u: db $93 ; play note G2
#_1B8B1B: #_DB17u: db $93 ; play note G2
#_1B8B1C: #_DB18u: db $93 ; play note G2
#_1B8B1D: #_DB19u: db $0C ; duration
#_1B8B1E: #_DB1Au: db $95 ; play note A2
#_1B8B1F: #_DB1Bu: db $95 ; play note A2
#_1B8B20: #_DB1Cu: db $95 ; play note A2
#_1B8B21: #_DB1Du: db $95 ; play note A2
#_1B8B22: #_DB1Eu: db $95 ; play note A2
#_1B8B23: #_DB1Fu: db $95 ; play note A2
#_1B8B24: #_DB20u: db $08 ; duration
#_1B8B25: #_DB21u: db $95 ; play note A2
#_1B8B26: #_DB22u: db $95 ; play note A2
#_1B8B27: #_DB23u: db $95 ; play note A2
#_1B8B28: #_DB24u: db $0C ; duration
#_1B8B29: #_DB25u: db $92 ; play note Fs2
#_1B8B2A: #_DB26u: db $92 ; play note Fs2
#_1B8B2B: #_DB27u: db $92 ; play note Fs2
#_1B8B2C: #_DB28u: db $92 ; play note Fs2
#_1B8B2D: #_DB29u: db $92 ; play note Fs2
#_1B8B2E: #_DB2Au: db $92 ; play note Fs2
#_1B8B2F: #_DB2Bu: db $08 ; duration
#_1B8B30: #_DB2Cu: db $92 ; play note Fs2
#_1B8B31: #_DB2Du: db $92 ; play note Fs2
#_1B8B32: #_DB2Eu: db $92 ; play note Fs2
#_1B8B33: #_DB2Fu: db $0C ; duration
#_1B8B34: #_DB30u: db $93 ; play note G2
#_1B8B35: #_DB31u: db $93 ; play note G2
#_1B8B36: #_DB32u: db $93 ; play note G2
#_1B8B37: #_DB33u: db $93 ; play note G2
#_1B8B38: #_DB34u: db $93 ; play note G2
#_1B8B39: #_DB35u: db $93 ; play note G2
#_1B8B3A: #_DB36u: db $08 ; duration
#_1B8B3B: #_DB37u: db $93 ; play note G2
#_1B8B3C: #_DB38u: db $93 ; play note G2
#_1B8B3D: #_DB39u: db $93 ; play note G2
#_1B8B3E: #_DB3Au: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DB3B:
#_1B8B3F: #_DB3Bu: db $0C, $59 ; duration, params
#_1B8B41: #_DB3Du: db $AD ; play note A4
#_1B8B42: #_DB3Eu: db $C9 ; rest
#_1B8B43: #_DB3Fu: db $08, $49 ; duration, params
#_1B8B45: #_DB41u: db $AD ; play note A4
#_1B8B46: #_DB42u: db $AD ; play note A4
#_1B8B47: #_DB43u: db $AD ; play note A4
#_1B8B48: #_DB44u: db $0C, $59 ; duration, params
#_1B8B4A: #_DB46u: db $AD ; play note A4
#_1B8B4B: #_DB47u: db $C9 ; rest
#_1B8B4C: #_DB48u: db $0C, $49 ; duration, params
#_1B8B4E: #_DB4Au: db $AD ; play note A4
#_1B8B4F: #_DB4Bu: db $C9 ; rest
#_1B8B50: #_DB4Cu: db $0C, $59 ; duration, params
#_1B8B52: #_DB4Eu: db $AB ; play note G4
#_1B8B53: #_DB4Fu: db $C9 ; rest
#_1B8B54: #_DB50u: db $08, $49 ; duration, params
#_1B8B56: #_DB52u: db $AB ; play note G4
#_1B8B57: #_DB53u: db $AB ; play note G4
#_1B8B58: #_DB54u: db $AB ; play note G4
#_1B8B59: #_DB55u: db $0C, $59 ; duration, params
#_1B8B5B: #_DB57u: db $AB ; play note G4
#_1B8B5C: #_DB58u: db $C9 ; rest
#_1B8B5D: #_DB59u: db $0C, $49 ; duration, params
#_1B8B5F: #_DB5Bu: db $AB ; play note G4
#_1B8B60: #_DB5Cu: db $C9 ; rest
#_1B8B61: #_DB5Du: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DB5E:
#_1B8B62: #_DB5Eu: db $0C, $5D ; duration, params
#_1B8B64: #_DB60u: db $AE ; play note As4
#_1B8B65: #_DB61u: db $0C, $39 ; duration, params
#_1B8B67: #_DB63u: db $A6 ; play note D4
#_1B8B68: #_DB64u: db $08, $4B ; duration, params
#_1B8B6A: #_DB66u: db $AE ; play note As4
#_1B8B6B: #_DB67u: db $08, $39 ; duration, params
#_1B8B6D: #_DB69u: db $AE ; play note As4
#_1B8B6E: #_DB6Au: db $AE ; play note As4
#_1B8B6F: #_DB6Bu: db $0C, $5C ; duration, params
#_1B8B71: #_DB6Du: db $AE ; play note As4
#_1B8B72: #_DB6Eu: db $0C, $39 ; duration, params
#_1B8B74: #_DB70u: db $A6 ; play note D4
#_1B8B75: #_DB71u: db $0C, $4B ; duration, params
#_1B8B77: #_DB73u: db $AE ; play note As4
#_1B8B78: #_DB74u: db $0C, $39 ; duration, params
#_1B8B7A: #_DB76u: db $A6 ; play note D4
#_1B8B7B: #_DB77u: db $0C, $5D ; duration, params
#_1B8B7D: #_DB79u: db $B1 ; play note Cs5
#_1B8B7E: #_DB7Au: db $0C, $39 ; duration, params
#_1B8B80: #_DB7Cu: db $A8 ; play note E4
#_1B8B81: #_DB7Du: db $08, $4B ; duration, params
#_1B8B83: #_DB7Fu: db $B1 ; play note Cs5
#_1B8B84: #_DB80u: db $08, $39 ; duration, params
#_1B8B86: #_DB82u: db $B1 ; play note Cs5
#_1B8B87: #_DB83u: db $B1 ; play note Cs5
#_1B8B88: #_DB84u: db $0C, $5C ; duration, params
#_1B8B8A: #_DB86u: db $B1 ; play note Cs5
#_1B8B8B: #_DB87u: db $0C, $39 ; duration, params
#_1B8B8D: #_DB89u: db $A8 ; play note E4
#_1B8B8E: #_DB8Au: db $0C, $4B ; duration, params
#_1B8B90: #_DB8Cu: db $B1 ; play note Cs5
#_1B8B91: #_DB8Du: db $0C, $39 ; duration, params
#_1B8B93: #_DB8Fu: db $A8 ; play note E4
#_1B8B94: #_DB90u: db $0C, $5D ; duration, params
#_1B8B96: #_DB92u: db $B0 ; play note C5
#_1B8B97: #_DB93u: db $0C, $39 ; duration, params
#_1B8B99: #_DB95u: db $A7 ; play note Ds4
#_1B8B9A: #_DB96u: db $08, $4B ; duration, params
#_1B8B9C: #_DB98u: db $B0 ; play note C5
#_1B8B9D: #_DB99u: db $08, $39 ; duration, params
#_1B8B9F: #_DB9Bu: db $B0 ; play note C5
#_1B8BA0: #_DB9Cu: db $B0 ; play note C5
#_1B8BA1: #_DB9Du: db $0C, $5C ; duration, params
#_1B8BA3: #_DB9Fu: db $B0 ; play note C5
#_1B8BA4: #_DBA0u: db $0C, $39 ; duration, params
#_1B8BA6: #_DBA2u: db $A7 ; play note Ds4
#_1B8BA7: #_DBA3u: db $0C, $4B ; duration, params
#_1B8BA9: #_DBA5u: db $B0 ; play note C5
#_1B8BAA: #_DBA6u: db $0C, $39 ; duration, params
#_1B8BAC: #_DBA8u: db $A7 ; play note Ds4
#_1B8BAD: #_DBA9u: db $0C, $5D ; duration, params
#_1B8BAF: #_DBABu: db $AE ; play note As4
#_1B8BB0: #_DBACu: db $0C, $39 ; duration, params
#_1B8BB2: #_DBAEu: db $A6 ; play note D4
#_1B8BB3: #_DBAFu: db $08, $4B ; duration, params
#_1B8BB5: #_DBB1u: db $AE ; play note As4
#_1B8BB6: #_DBB2u: db $08, $39 ; duration, params
#_1B8BB8: #_DBB4u: db $AE ; play note As4
#_1B8BB9: #_DBB5u: db $AE ; play note As4
#_1B8BBA: #_DBB6u: db $0C, $5C ; duration, params
#_1B8BBC: #_DBB8u: db $AE ; play note As4
#_1B8BBD: #_DBB9u: db $0C, $39 ; duration, params
#_1B8BBF: #_DBBBu: db $A6 ; play note D4
#_1B8BC0: #_DBBCu: db $0C, $4B ; duration, params
#_1B8BC2: #_DBBEu: db $AE ; play note As4
#_1B8BC3: #_DBBFu: db $0C, $39 ; duration, params
#_1B8BC5: #_DBC1u: db $A6 ; play note D4
#_1B8BC6: #_DBC2u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DBC3:
#_1B8BC7: #_DBC3u: db $54, $6F ; duration, params
#_1B8BC9: #_DBC5u: db $87 ; play note G1
#_1B8BCA: #_DBC6u: db $06, $4D ; duration, params
#_1B8BCC: #_DBC8u: db $89 ; play note A1
#_1B8BCD: #_DBC9u: db $89 ; play note A1
#_1B8BCE: #_DBCAu: db $54, $6F ; duration, params
#_1B8BD0: #_DBCCu: db $89 ; play note A1
#_1B8BD1: #_DBCDu: db $06, $4D ; duration, params
#_1B8BD3: #_DBCFu: db $86 ; play note Fs1
#_1B8BD4: #_DBD0u: db $86 ; play note Fs1
#_1B8BD5: #_DBD1u: db $54, $6F ; duration, params
#_1B8BD7: #_DBD3u: db $86 ; play note Fs1
#_1B8BD8: #_DBD4u: db $06, $4D ; duration, params
#_1B8BDA: #_DBD6u: db $87 ; play note G1
#_1B8BDB: #_DBD7u: db $87 ; play note G1
#_1B8BDC: #_DBD8u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song10_Sub_DBD9:
#_1B8BDD: #_DBD9u: db $0C, $59 ; duration, params
#_1B8BDF: #_DBDBu: db $AB ; play note G4
#_1B8BE0: #_DBDCu: db $C9 ; rest
#_1B8BE1: #_DBDDu: db $08, $49 ; duration, params
#_1B8BE3: #_DBDFu: db $AB ; play note G4
#_1B8BE4: #_DBE0u: db $AB ; play note G4
#_1B8BE5: #_DBE1u: db $AB ; play note G4
#_1B8BE6: #_DBE2u: db $0C, $59 ; duration, params
#_1B8BE8: #_DBE4u: db $AB ; play note G4
#_1B8BE9: #_DBE5u: db $C9 ; rest
#_1B8BEA: #_DBE6u: db $08, $49 ; duration, params
#_1B8BEC: #_DBE8u: db $AB ; play note G4
#_1B8BED: #_DBE9u: db $AB ; play note G4
#_1B8BEE: #_DBEAu: db $AB ; play note G4
#_1B8BEF: #_DBEBu: db $00 ; End

;===================================================================================================

Song11_PendantDungeon:
#_1B8BF0: #_DBECu: dw Song11_Segment0
#_1B8BF2: #_DBEEu: dw Song11_Segment1
#_1B8BF4: #_DBF0u: dw Song11_Segment2

Song11_Loop:
#_1B8BF6: #_DBF2u: dw Song11_Segment3
#_1B8BF8: #_DBF4u: dw Song11_Segment4
#_1B8BFA: #_DBF6u: dw Song11_Segment5
#_1B8BFC: #_DBF8u: dw $00FF, Song11_Loop ; Loop point
#_1B8C00: #_DBFCu: dw $0000

Song11_Segment0:
#_1B8C02: #_DBFEu: dw Song11_Segment0_Track0
#_1B8C04: #_DC00u: dw Song11_Segment0_Track1
#_1B8C06: #_DC02u: dw Song11_Segment0_Track2
#_1B8C08: #_DC04u: dw Song11_Segment0_Track3
#_1B8C0A: #_DC06u: dw Song11_Segment0_Track4
#_1B8C0C: #_DC08u: dw $0000
#_1B8C0E: #_DC0Au: dw $0000
#_1B8C10: #_DC0Cu: dw $0000

Song11_Segment1:
#_1B8C12: #_DC0Eu: dw Song11_Segment1_Track0
#_1B8C14: #_DC10u: dw Song11_Segment1_Track1
#_1B8C16: #_DC12u: dw Song11_Segment1_Track2
#_1B8C18: #_DC14u: dw Song11_Segment1_Track3
#_1B8C1A: #_DC16u: dw Song11_Segment1_Track4
#_1B8C1C: #_DC18u: dw Song11_Segment1_Track5
#_1B8C1E: #_DC1Au: dw $0000
#_1B8C20: #_DC1Cu: dw $0000

Song11_Segment2:
#_1B8C22: #_DC1Eu: dw Song11_Segment2_Track0
#_1B8C24: #_DC20u: dw Song11_Segment2_Track1
#_1B8C26: #_DC22u: dw Song11_Segment2_Track2
#_1B8C28: #_DC24u: dw Song11_Segment2_Track3
#_1B8C2A: #_DC26u: dw Song11_Segment2_Track4
#_1B8C2C: #_DC28u: dw Song11_Segment2_Track5
#_1B8C2E: #_DC2Au: dw $0000
#_1B8C30: #_DC2Cu: dw $0000

Song11_Segment3:
#_1B8C32: #_DC2Eu: dw Song11_Segment3_Track0
#_1B8C34: #_DC30u: dw Song11_Segment3_Track1
#_1B8C36: #_DC32u: dw Song11_Segment3_Track2
#_1B8C38: #_DC34u: dw Song11_Segment3_Track3
#_1B8C3A: #_DC36u: dw $0000
#_1B8C3C: #_DC38u: dw $0000
#_1B8C3E: #_DC3Au: dw $0000
#_1B8C40: #_DC3Cu: dw $0000

Song11_Segment4:
#_1B8C42: #_DC3Eu: dw Song11_Segment4_Track0
#_1B8C44: #_DC40u: dw Song11_Segment4_Track1
#_1B8C46: #_DC42u: dw Song11_Segment4_Track2
#_1B8C48: #_DC44u: dw Song11_Segment4_Track3
#_1B8C4A: #_DC46u: dw Song11_Segment4_Track4
#_1B8C4C: #_DC48u: dw $0000
#_1B8C4E: #_DC4Au: dw $0000
#_1B8C50: #_DC4Cu: dw $0000

Song11_Segment5:
#_1B8C52: #_DC4Eu: dw Song11_Segment5_Track0
#_1B8C54: #_DC50u: dw Song11_Segment5_Track1
#_1B8C56: #_DC52u: dw Song11_Segment5_Track2
#_1B8C58: #_DC54u: dw Song11_Segment5_Track3
#_1B8C5A: #_DC56u: dw Song11_Segment5_Track4
#_1B8C5C: #_DC58u: dw Song11_Segment5_Track5
#_1B8C5E: #_DC5Au: dw $0000
#_1B8C60: #_DC5Cu: dw $0000

Song11_Unused0:
#_1B8C62: #_DC5Eu: dw Song11_Unused0_Track0
#_1B8C64: #_DC60u: dw Song11_Unused0_Track1
#_1B8C66: #_DC62u: dw Song11_Unused0_Track2
#_1B8C68: #_DC64u: dw Song11_Unused0_Track3
#_1B8C6A: #_DC66u: dw Song11_Unused0_Track4
#_1B8C6C: #_DC68u: dw Song11_Unused0_Track5
#_1B8C6E: #_DC6Au: dw $0000
#_1B8C70: #_DC6Cu: dw $0000

Song11_Unused1:
#_1B8C72: #_DC6Eu: dw Song11_Unused1_Track0
#_1B8C74: #_DC70u: dw Song11_Unused1_Track1
#_1B8C76: #_DC72u: dw Song11_Unused1_Track2
#_1B8C78: #_DC74u: dw Song11_Unused1_Track3
#_1B8C7A: #_DC76u: dw $0000
#_1B8C7C: #_DC78u: dw $0000
#_1B8C7E: #_DC7Au: dw $0000
#_1B8C80: #_DC7Cu: dw $0000

;---------------------------------------------------------------------------------------------------

Song11_Segment0_Track0:
#_1B8C82: #_DC7Eu: db $FA, $17 ; set base percussion sample
#_1B8C84: #_DC80u: db $E5, $C8 ; set song volume
#_1B8C86: #_DC82u: db $E7, $0E ; set song tempo
#_1B8C88: #_DC84u: db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
#_1B8C8C: #_DC88u: db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
#_1B8C90: #_DC8Cu: db $F8, $1E, $28, $28 ; initiate gradual echo volume change
#_1B8C94: #_DC90u: db $E0, $0A ; set instrument - strings B
#_1B8C96: #_DC92u: db $ED, $C8 ; set channel volume
#_1B8C98: #_DC94u: db $E3, $14, $18, $1E ; enable vibrato
#_1B8C9C: #_DC98u: db $60, $7D ; duration, params
#_1B8C9E: #_DC9Au: db $99 ; play note Cs3
#_1B8C9F: #_DC9Bu: db $C8 ; sustain current note
#_1B8CA0: #_DC9Cu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Segment0_Track1:
#_1B8CA1: #_DC9Du: db $E0, $0A ; set instrument - strings B
#_1B8CA3: #_DC9Fu: db $ED, $C8 ; set channel volume
#_1B8CA5: #_DCA1u: db $E3, $14, $18, $1E ; enable vibrato
#_1B8CA9: #_DCA5u: db $0C ; duration
#_1B8CAA: #_DCA6u: db $C9 ; rest
#_1B8CAB: #_DCA7u: db $54, $7D ; duration, params
#_1B8CAD: #_DCA9u: db $93 ; play note G2
#_1B8CAE: #_DCAAu: db $60 ; duration
#_1B8CAF: #_DCABu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment0_Track2:
#_1B8CB0: #_DCACu: db $E0, $0A ; set instrument - strings B
#_1B8CB2: #_DCAEu: db $ED, $C8 ; set channel volume
#_1B8CB4: #_DCB0u: db $E3, $14, $18, $1E ; enable vibrato
#_1B8CB8: #_DCB4u: db $18 ; duration
#_1B8CB9: #_DCB5u: db $C9 ; rest
#_1B8CBA: #_DCB6u: db $48, $7D ; duration, params
#_1B8CBC: #_DCB8u: db $92 ; play note Fs2
#_1B8CBD: #_DCB9u: db $60 ; duration
#_1B8CBE: #_DCBAu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment0_Track3:
#_1B8CBF: #_DCBBu: db $E0, $0A ; set instrument - strings B
#_1B8CC1: #_DCBDu: db $ED, $C8 ; set channel volume
#_1B8CC3: #_DCBFu: db $E3, $14, $18, $1E ; enable vibrato
#_1B8CC7: #_DCC3u: db $24 ; duration
#_1B8CC8: #_DCC4u: db $C9 ; rest
#_1B8CC9: #_DCC5u: db $3C, $7D ; duration, params
#_1B8CCB: #_DCC7u: db $9E ; play note Fs3
#_1B8CCC: #_DCC8u: db $60 ; duration
#_1B8CCD: #_DCC9u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment0_Track4:
#_1B8CCE: #_DCCAu: db $E0, $0A ; set instrument - strings B
#_1B8CD0: #_DCCCu: db $ED, $C8 ; set channel volume
#_1B8CD2: #_DCCEu: db $E3, $14, $18, $1E ; enable vibrato
#_1B8CD6: #_DCD2u: db $30 ; duration
#_1B8CD7: #_DCD3u: db $C9 ; rest
#_1B8CD8: #_DCD4u: db $30, $7D ; duration, params
#_1B8CDA: #_DCD6u: db $98 ; play note C3
#_1B8CDB: #_DCD7u: db $60 ; duration
#_1B8CDC: #_DCD8u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment1_Track0:
#_1B8CDD: #_DCD9u: db $60, $7D ; duration, params
#_1B8CDF: #_DCDBu: db $99 ; play note Cs3
#_1B8CE0: #_DCDCu: db $C8 ; sustain current note
#_1B8CE1: #_DCDDu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Segment1_Track1:
#_1B8CE2: #_DCDEu: db $0C ; duration
#_1B8CE3: #_DCDFu: db $C9 ; rest
#_1B8CE4: #_DCE0u: db $54, $7D ; duration, params
#_1B8CE6: #_DCE2u: db $93 ; play note G2
#_1B8CE7: #_DCE3u: db $60 ; duration
#_1B8CE8: #_DCE4u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment1_Track2:
#_1B8CE9: #_DCE5u: db $18 ; duration
#_1B8CEA: #_DCE6u: db $C9 ; rest
#_1B8CEB: #_DCE7u: db $48, $7D ; duration, params
#_1B8CED: #_DCE9u: db $92 ; play note Fs2
#_1B8CEE: #_DCEAu: db $60 ; duration
#_1B8CEF: #_DCEBu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment1_Track3:
#_1B8CF0: #_DCECu: db $24 ; duration
#_1B8CF1: #_DCEDu: db $C9 ; rest
#_1B8CF2: #_DCEEu: db $3C, $7D ; duration, params
#_1B8CF4: #_DCF0u: db $9E ; play note Fs3
#_1B8CF5: #_DCF1u: db $60 ; duration
#_1B8CF6: #_DCF2u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment1_Track4:
#_1B8CF7: #_DCF3u: db $30 ; duration
#_1B8CF8: #_DCF4u: db $C9 ; rest
#_1B8CF9: #_DCF5u: db $30, $7D ; duration, params
#_1B8CFB: #_DCF7u: db $98 ; play note C3
#_1B8CFC: #_DCF8u: db $60 ; duration
#_1B8CFD: #_DCF9u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment1_Track5:
#_1B8CFE: #_DCFAu: db $E0, $0A ; set instrument - strings B
#_1B8D00: #_DCFCu: db $ED, $C8 ; set channel volume
#_1B8D02: #_DCFEu: db $E3, $14, $19, $1E ; enable vibrato
#_1B8D06: #_DD02u: db $3C ; duration
#_1B8D07: #_DD03u: db $C9 ; rest
#_1B8D08: #_DD04u: db $24, $7D ; duration, params
#_1B8D0A: #_DD06u: db $9A ; play note D3
#_1B8D0B: #_DD07u: db $60 ; duration
#_1B8D0C: #_DD08u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment2_Track0:
#_1B8D0D: #_DD09u: db $48, $7D ; duration, params
#_1B8D0F: #_DD0Bu: db $9B ; play note Ds3
#_1B8D10: #_DD0Cu: db $18 ; duration
#_1B8D11: #_DD0Du: db $97 ; play note B2
#_1B8D12: #_DD0Eu: db $30 ; duration
#_1B8D13: #_DD0Fu: db $C8 ; sustain current note
#_1B8D14: #_DD10u: db $18 ; duration
#_1B8D15: #_DD11u: db $C8 ; sustain current note
#_1B8D16: #_DD12u: db $48 ; duration
#_1B8D17: #_DD13u: db $9F ; play note G3
#_1B8D18: #_DD14u: db $0C ; duration
#_1B8D19: #_DD15u: db $C8 ; sustain current note
#_1B8D1A: #_DD16u: db $54 ; duration
#_1B8D1B: #_DD17u: db $94 ; play note Gs2
#_1B8D1C: #_DD18u: db $E8, $60, $1D ; initiate gradual tempo change
#_1B8D1F: #_DD1Bu: db $48 ; duration
#_1B8D20: #_DD1Cu: db $93 ; play note G2
#_1B8D21: #_DD1Du: db $18 ; duration
#_1B8D22: #_DD1Eu: db $A2 ; play note As3
#_1B8D23: #_DD1Fu: db $60 ; duration
#_1B8D24: #_DD20u: db $A2 ; play note As3
#_1B8D25: #_DD21u: db $60, $58 ; duration, params
#_1B8D27: #_DD23u: db $C8 ; sustain current note
#_1B8D28: #_DD24u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Segment2_Track1:
#_1B8D29: #_DD25u: db $0C ; duration
#_1B8D2A: #_DD26u: db $C9 ; rest
#_1B8D2B: #_DD27u: db $54, $7D ; duration, params
#_1B8D2D: #_DD29u: db $9C ; play note E3
#_1B8D2E: #_DD2Au: db $30 ; duration
#_1B8D2F: #_DD2Bu: db $C8 ; sustain current note
#_1B8D30: #_DD2Cu: db $24 ; duration
#_1B8D31: #_DD2Du: db $C8 ; sustain current note
#_1B8D32: #_DD2Eu: db $3C ; duration
#_1B8D33: #_DD2Fu: db $9E ; play note Fs3
#_1B8D34: #_DD30u: db $18 ; duration
#_1B8D35: #_DD31u: db $C8 ; sustain current note
#_1B8D36: #_DD32u: db $48 ; duration
#_1B8D37: #_DD33u: db $93 ; play note G2
#_1B8D38: #_DD34u: db $0C ; duration
#_1B8D39: #_DD35u: db $C8 ; sustain current note
#_1B8D3A: #_DD36u: db $48 ; duration
#_1B8D3B: #_DD37u: db $92 ; play note Fs2
#_1B8D3C: #_DD38u: db $0C ; duration
#_1B8D3D: #_DD39u: db $A1 ; play note A3
#_1B8D3E: #_DD3Au: db $60 ; duration
#_1B8D3F: #_DD3Bu: db $A1 ; play note A3
#_1B8D40: #_DD3Cu: db $60, $58 ; duration, params
#_1B8D42: #_DD3Eu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment2_Track2:
#_1B8D43: #_DD3Fu: db $18 ; duration
#_1B8D44: #_DD40u: db $C9 ; rest
#_1B8D45: #_DD41u: db $48, $7D ; duration, params
#_1B8D47: #_DD43u: db $9D ; play note F3
#_1B8D48: #_DD44u: db $30 ; duration
#_1B8D49: #_DD45u: db $C8 ; sustain current note
#_1B8D4A: #_DD46u: db $C8 ; sustain current note
#_1B8D4B: #_DD47u: db $96 ; play note As2
#_1B8D4C: #_DD48u: db $60 ; duration
#_1B8D4D: #_DD49u: db $C8 ; sustain current note
#_1B8D4E: #_DD4Au: db $18 ; duration
#_1B8D4F: #_DD4Bu: db $C8 ; sustain current note
#_1B8D50: #_DD4Cu: db $48 ; duration
#_1B8D51: #_DD4Du: db $98 ; play note C3
#_1B8D52: #_DD4Eu: db $60 ; duration
#_1B8D53: #_DD4Fu: db $A7 ; play note Ds4
#_1B8D54: #_DD50u: db $60, $58 ; duration, params
#_1B8D56: #_DD52u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment2_Track3:
#_1B8D57: #_DD53u: db $24 ; duration
#_1B8D58: #_DD54u: db $C9 ; rest
#_1B8D59: #_DD55u: db $3C, $7D ; duration, params
#_1B8D5B: #_DD57u: db $A1 ; play note A3
#_1B8D5C: #_DD58u: db $30 ; duration
#_1B8D5D: #_DD59u: db $C8 ; sustain current note
#_1B8D5E: #_DD5Au: db $3C ; duration
#_1B8D5F: #_DD5Bu: db $C8 ; sustain current note
#_1B8D60: #_DD5Cu: db $24 ; duration
#_1B8D61: #_DD5Du: db $95 ; play note A2
#_1B8D62: #_DD5Eu: db $60 ; duration
#_1B8D63: #_DD5Fu: db $C8 ; sustain current note
#_1B8D64: #_DD60u: db $24 ; duration
#_1B8D65: #_DD61u: db $C8 ; sustain current note
#_1B8D66: #_DD62u: db $3C ; duration
#_1B8D67: #_DD63u: db $97 ; play note B2
#_1B8D68: #_DD64u: db $60 ; duration
#_1B8D69: #_DD65u: db $97 ; play note B2
#_1B8D6A: #_DD66u: db $E0, $09 ; set instrument - strings A
#_1B8D6C: #_DD68u: db $0C, $7F ; duration, params
#_1B8D6E: #_DD6Au: db $97 ; play note B2
#_1B8D6F: #_DD6Bu: db $0C, $7D ; duration, params
#_1B8D71: #_DD6Du: db $97 ; play note B2
#_1B8D72: #_DD6Eu: db $97 ; play note B2
#_1B8D73: #_DD6Fu: db $97 ; play note B2
#_1B8D74: #_DD70u: db $0C, $7F ; duration, params
#_1B8D76: #_DD72u: db $97 ; play note B2
#_1B8D77: #_DD73u: db $0C, $7D ; duration, params
#_1B8D79: #_DD75u: db $97 ; play note B2
#_1B8D7A: #_DD76u: db $97 ; play note B2
#_1B8D7B: #_DD77u: db $97 ; play note B2

;---------------------------------------------------------------------------------------------------

Song11_Segment2_Track4:
#_1B8D7C: #_DD78u: db $30 ; duration
#_1B8D7D: #_DD79u: db $C9 ; rest
#_1B8D7E: #_DD7Au: db $30, $7D ; duration, params
#_1B8D80: #_DD7Cu: db $A0 ; play note Gs3
#_1B8D81: #_DD7Du: db $C8 ; sustain current note
#_1B8D82: #_DD7Eu: db $54 ; duration
#_1B8D83: #_DD7Fu: db $C8 ; sustain current note
#_1B8D84: #_DD80u: db $0C ; duration
#_1B8D85: #_DD81u: db $9D ; play note F3
#_1B8D86: #_DD82u: db $60 ; duration
#_1B8D87: #_DD83u: db $C8 ; sustain current note
#_1B8D88: #_DD84u: db $30 ; duration
#_1B8D89: #_DD85u: db $C8 ; sustain current note
#_1B8D8A: #_DD86u: db $9D ; play note F3
#_1B8D8B: #_DD87u: db $60 ; duration
#_1B8D8C: #_DD88u: db $9D ; play note F3
#_1B8D8D: #_DD89u: db $60, $58 ; duration, params
#_1B8D8F: #_DD8Bu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment2_Track5:
#_1B8D90: #_DD8Cu: db $3C ; duration
#_1B8D91: #_DD8Du: db $C9 ; rest
#_1B8D92: #_DD8Eu: db $24, $7D ; duration, params
#_1B8D94: #_DD90u: db $98 ; play note C3
#_1B8D95: #_DD91u: db $30 ; duration
#_1B8D96: #_DD92u: db $C8 ; sustain current note
#_1B8D97: #_DD93u: db $60 ; duration
#_1B8D98: #_DD94u: db $C8 ; sustain current note
#_1B8D99: #_DD95u: db $9C ; play note E3
#_1B8D9A: #_DD96u: db $3C ; duration
#_1B8D9B: #_DD97u: db $C8 ; sustain current note
#_1B8D9C: #_DD98u: db $24 ; duration
#_1B8D9D: #_DD99u: db $9C ; play note E3
#_1B8D9E: #_DD9Au: db $60 ; duration
#_1B8D9F: #_DD9Bu: db $9C ; play note E3
#_1B8DA0: #_DD9Cu: db $60, $58 ; duration, params
#_1B8DA2: #_DD9Eu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment3_Track0:
#_1B8DA3: #_DD9Fu: db $EF : dw Song11_Sub_E015 : db $01 ; call segment subroutine
#_1B8DA7: #_DDA3u: db $EF : dw Song11_Sub_E021 : db $01 ; call segment subroutine
#_1B8DAB: #_DDA7u: db $EF : dw Song11_Sub_E02C : db $01 ; call segment subroutine
#_1B8DAF: #_DDABu: db $EF : dw Song11_Sub_E021 : db $01 ; call segment subroutine
#_1B8DB3: #_DDAFu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Segment3_Track1:
#_1B8DB4: #_DDB0u: db $EF : dw Song11_Sub_E037 : db $01 ; call segment subroutine
#_1B8DB8: #_DDB4u: db $EF : dw Song11_Sub_E042 : db $01 ; call segment subroutine
#_1B8DBC: #_DDB8u: db $EF : dw Song11_Sub_E04C : db $01 ; call segment subroutine
#_1B8DC0: #_DDBCu: db $EF : dw Song11_Sub_E042 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Segment3_Track2:
#_1B8DC4: #_DDC0u: db $EF : dw Song11_Sub_E056 : db $01 ; call segment subroutine
#_1B8DC8: #_DDC4u: db $EF : dw Song11_Sub_E062 : db $01 ; call segment subroutine
#_1B8DCC: #_DDC8u: db $EF : dw Song11_Sub_E06D : db $01 ; call segment subroutine
#_1B8DD0: #_DDCCu: db $EF : dw Song11_Sub_E062 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Segment3_Track3:
#_1B8DD4: #_DDD0u: db $EF : dw Song11_Sub_E078 : db $02 ; call segment subroutine
#_1B8DD8: #_DDD4u: db $EF : dw Song11_Sub_E085 : db $02 ; call segment subroutine
#_1B8DDC: #_DDD8u: db $EF : dw Song11_Sub_E092 : db $02 ; call segment subroutine
#_1B8DE0: #_DDDCu: db $EF : dw Song11_Sub_E085 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Segment4_Track0:
#_1B8DE4: #_DDE0u: db $EF : dw Song11_Sub_E015 : db $01 ; call segment subroutine
#_1B8DE8: #_DDE4u: db $EF : dw Song11_Sub_E021 : db $01 ; call segment subroutine
#_1B8DEC: #_DDE8u: db $EF : dw Song11_Sub_E02C : db $01 ; call segment subroutine
#_1B8DF0: #_DDECu: db $EF : dw Song11_Sub_E09F : db $01 ; call segment subroutine
#_1B8DF4: #_DDF0u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Segment4_Track1:
#_1B8DF5: #_DDF1u: db $EF : dw Song11_Sub_E037 : db $01 ; call segment subroutine
#_1B8DF9: #_DDF5u: db $EF : dw Song11_Sub_E042 : db $01 ; call segment subroutine
#_1B8DFD: #_DDF9u: db $EF : dw Song11_Sub_E04C : db $01 ; call segment subroutine
#_1B8E01: #_DDFDu: db $18 ; duration
#_1B8E02: #_DDFEu: db $C9 ; rest
#_1B8E03: #_DDFFu: db $30 ; duration
#_1B8E04: #_DE00u: db $A3 ; play note B3
#_1B8E05: #_DE01u: db $18 ; duration
#_1B8E06: #_DE02u: db $A3 ; play note B3
#_1B8E07: #_DE03u: db $C8 ; sustain current note
#_1B8E08: #_DE04u: db $48 ; duration
#_1B8E09: #_DE05u: db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song11_Segment4_Track2:
#_1B8E0A: #_DE06u: db $EF : dw Song11_Sub_E056 : db $01 ; call segment subroutine
#_1B8E0E: #_DE0Au: db $EF : dw Song11_Sub_E062 : db $01 ; call segment subroutine
#_1B8E12: #_DE0Eu: db $EF : dw Song11_Sub_E06D : db $01 ; call segment subroutine
#_1B8E16: #_DE12u: db $EF : dw Song11_Sub_E0AA : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Segment4_Track3:
#_1B8E1A: #_DE16u: db $EF : dw Song11_Sub_E078 : db $02 ; call segment subroutine
#_1B8E1E: #_DE1Au: db $EF : dw Song11_Sub_E085 : db $02 ; call segment subroutine
#_1B8E22: #_DE1Eu: db $EF : dw Song11_Sub_E092 : db $02 ; call segment subroutine
#_1B8E26: #_DE22u: db $EF : dw Song11_Sub_E0B5 : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Segment4_Track4:
#_1B8E2A: #_DE26u: db $E0, $11 ; set instrument - trumpet
#_1B8E2C: #_DE28u: db $ED, $DC ; set channel volume
#_1B8E2E: #_DE2Au: db $48, $7D ; duration, params
#_1B8E30: #_DE2Cu: db $AD ; play note A4
#_1B8E31: #_DE2Du: db $0C ; duration
#_1B8E32: #_DE2Eu: db $AC ; play note Gs4
#_1B8E33: #_DE2Fu: db $AD ; play note A4
#_1B8E34: #_DE30u: db $48 ; duration
#_1B8E35: #_DE31u: db $AF ; play note B4
#_1B8E36: #_DE32u: db $0C ; duration
#_1B8E37: #_DE33u: db $AD ; play note A4
#_1B8E38: #_DE34u: db $AC ; play note Gs4
#_1B8E39: #_DE35u: db $60 ; duration
#_1B8E3A: #_DE36u: db $A5 ; play note Cs4
#_1B8E3B: #_DE37u: db $48 ; duration
#_1B8E3C: #_DE38u: db $C8 ; sustain current note
#_1B8E3D: #_DE39u: db $08 ; duration
#_1B8E3E: #_DE3Au: db $A5 ; play note Cs4
#_1B8E3F: #_DE3Bu: db $A4 ; play note C4
#_1B8E40: #_DE3Cu: db $08, $78 ; duration, params
#_1B8E42: #_DE3Eu: db $A5 ; play note Cs4
#_1B8E43: #_DE3Fu: db $48, $7D ; duration, params
#_1B8E45: #_DE41u: db $AB ; play note G4
#_1B8E46: #_DE42u: db $0C ; duration
#_1B8E47: #_DE43u: db $AA ; play note Fs4
#_1B8E48: #_DE44u: db $AB ; play note G4
#_1B8E49: #_DE45u: db $48 ; duration
#_1B8E4A: #_DE46u: db $AD ; play note A4
#_1B8E4B: #_DE47u: db $0C ; duration
#_1B8E4C: #_DE48u: db $AB ; play note G4
#_1B8E4D: #_DE49u: db $AA ; play note Fs4
#_1B8E4E: #_DE4Au: db $60 ; duration
#_1B8E4F: #_DE4Bu: db $A3 ; play note B3
#_1B8E50: #_DE4Cu: db $48 ; duration
#_1B8E51: #_DE4Du: db $C8 ; sustain current note
#_1B8E52: #_DE4Eu: db $08 ; duration
#_1B8E53: #_DE4Fu: db $A3 ; play note B3
#_1B8E54: #_DE50u: db $A2 ; play note As3
#_1B8E55: #_DE51u: db $08, $78 ; duration, params
#_1B8E57: #_DE53u: db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song11_Segment5_Track0:
#_1B8E58: #_DE54u: db $0C ; duration
#_1B8E59: #_DE55u: db $C9 ; rest
#_1B8E5A: #_DE56u: db $30, $7D ; duration, params
#_1B8E5C: #_DE58u: db $A9 ; play note F4
#_1B8E5D: #_DE59u: db $24 ; duration
#_1B8E5E: #_DE5Au: db $A9 ; play note F4
#_1B8E5F: #_DE5Bu: db $0C, $6D ; duration, params
#_1B8E61: #_DE5Du: db $C8 ; sustain current note
#_1B8E62: #_DE5Eu: db $54, $7D ; duration, params
#_1B8E64: #_DE60u: db $A9 ; play note F4
#_1B8E65: #_DE61u: db $0C ; duration
#_1B8E66: #_DE62u: db $C9 ; rest
#_1B8E67: #_DE63u: db $30 ; duration
#_1B8E68: #_DE64u: db $A8 ; play note E4
#_1B8E69: #_DE65u: db $24 ; duration
#_1B8E6A: #_DE66u: db $A8 ; play note E4
#_1B8E6B: #_DE67u: db $0C, $6D ; duration, params
#_1B8E6D: #_DE69u: db $C8 ; sustain current note
#_1B8E6E: #_DE6Au: db $54, $7D ; duration, params
#_1B8E70: #_DE6Cu: db $A8 ; play note E4
#_1B8E71: #_DE6Du: db $0C ; duration
#_1B8E72: #_DE6Eu: db $C9 ; rest
#_1B8E73: #_DE6Fu: db $30 ; duration
#_1B8E74: #_DE70u: db $AB ; play note G4
#_1B8E75: #_DE71u: db $24 ; duration
#_1B8E76: #_DE72u: db $AB ; play note G4
#_1B8E77: #_DE73u: db $0C, $6D ; duration, params
#_1B8E79: #_DE75u: db $C8 ; sustain current note
#_1B8E7A: #_DE76u: db $54, $7D ; duration, params
#_1B8E7C: #_DE78u: db $AB ; play note G4
#_1B8E7D: #_DE79u: db $0C ; duration
#_1B8E7E: #_DE7Au: db $C9 ; rest
#_1B8E7F: #_DE7Bu: db $30 ; duration
#_1B8E80: #_DE7Cu: db $AC ; play note Gs4
#_1B8E81: #_DE7Du: db $24 ; duration
#_1B8E82: #_DE7Eu: db $AC ; play note Gs4
#_1B8E83: #_DE7Fu: db $0C, $6D ; duration, params
#_1B8E85: #_DE81u: db $C8 ; sustain current note
#_1B8E86: #_DE82u: db $54, $7D ; duration, params
#_1B8E88: #_DE84u: db $AC ; play note Gs4
#_1B8E89: #_DE85u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Segment5_Track1:
#_1B8E8A: #_DE86u: db $18 ; duration
#_1B8E8B: #_DE87u: db $C9 ; rest
#_1B8E8C: #_DE88u: db $30, $7D ; duration, params
#_1B8E8E: #_DE8Au: db $AA ; play note Fs4
#_1B8E8F: #_DE8Bu: db $18 ; duration
#_1B8E90: #_DE8Cu: db $AA ; play note Fs4
#_1B8E91: #_DE8Du: db $18, $6D ; duration, params
#_1B8E93: #_DE8Fu: db $C8 ; sustain current note
#_1B8E94: #_DE90u: db $48, $7D ; duration, params
#_1B8E96: #_DE92u: db $AA ; play note Fs4
#_1B8E97: #_DE93u: db $18 ; duration
#_1B8E98: #_DE94u: db $C9 ; rest
#_1B8E99: #_DE95u: db $30 ; duration
#_1B8E9A: #_DE96u: db $A9 ; play note F4
#_1B8E9B: #_DE97u: db $18 ; duration
#_1B8E9C: #_DE98u: db $A9 ; play note F4
#_1B8E9D: #_DE99u: db $18, $6D ; duration, params
#_1B8E9F: #_DE9Bu: db $C8 ; sustain current note
#_1B8EA0: #_DE9Cu: db $48, $7D ; duration, params
#_1B8EA2: #_DE9Eu: db $A9 ; play note F4
#_1B8EA3: #_DE9Fu: db $18 ; duration
#_1B8EA4: #_DEA0u: db $C9 ; rest
#_1B8EA5: #_DEA1u: db $30 ; duration
#_1B8EA6: #_DEA2u: db $AC ; play note Gs4
#_1B8EA7: #_DEA3u: db $18 ; duration
#_1B8EA8: #_DEA4u: db $AC ; play note Gs4
#_1B8EA9: #_DEA5u: db $18, $6D ; duration, params
#_1B8EAB: #_DEA7u: db $C8 ; sustain current note
#_1B8EAC: #_DEA8u: db $48, $7D ; duration, params
#_1B8EAE: #_DEAAu: db $AC ; play note Gs4
#_1B8EAF: #_DEABu: db $18 ; duration
#_1B8EB0: #_DEACu: db $C9 ; rest
#_1B8EB1: #_DEADu: db $30 ; duration
#_1B8EB2: #_DEAEu: db $AD ; play note A4
#_1B8EB3: #_DEAFu: db $18 ; duration
#_1B8EB4: #_DEB0u: db $AD ; play note A4
#_1B8EB5: #_DEB1u: db $18, $6D ; duration, params
#_1B8EB7: #_DEB3u: db $C8 ; sustain current note
#_1B8EB8: #_DEB4u: db $48, $7D ; duration, params
#_1B8EBA: #_DEB6u: db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song11_Segment5_Track2:
#_1B8EBB: #_DEB7u: db $24 ; duration
#_1B8EBC: #_DEB8u: db $C9 ; rest
#_1B8EBD: #_DEB9u: db $30, $7D ; duration, params
#_1B8EBF: #_DEBBu: db $B1 ; play note Cs5
#_1B8EC0: #_DEBCu: db $0C ; duration
#_1B8EC1: #_DEBDu: db $B1 ; play note Cs5
#_1B8EC2: #_DEBEu: db $24, $6D ; duration, params
#_1B8EC4: #_DEC0u: db $C8 ; sustain current note
#_1B8EC5: #_DEC1u: db $3C, $7D ; duration, params
#_1B8EC7: #_DEC3u: db $B1 ; play note Cs5
#_1B8EC8: #_DEC4u: db $24 ; duration
#_1B8EC9: #_DEC5u: db $C9 ; rest
#_1B8ECA: #_DEC6u: db $30 ; duration
#_1B8ECB: #_DEC7u: db $B0 ; play note C5
#_1B8ECC: #_DEC8u: db $0C ; duration
#_1B8ECD: #_DEC9u: db $B0 ; play note C5
#_1B8ECE: #_DECAu: db $24, $6D ; duration, params
#_1B8ED0: #_DECCu: db $C8 ; sustain current note
#_1B8ED1: #_DECDu: db $3C, $7D ; duration, params
#_1B8ED3: #_DECFu: db $B0 ; play note C5
#_1B8ED4: #_DED0u: db $24 ; duration
#_1B8ED5: #_DED1u: db $C9 ; rest
#_1B8ED6: #_DED2u: db $30 ; duration
#_1B8ED7: #_DED3u: db $B3 ; play note Ds5
#_1B8ED8: #_DED4u: db $0C ; duration
#_1B8ED9: #_DED5u: db $B3 ; play note Ds5
#_1B8EDA: #_DED6u: db $24, $6D ; duration, params
#_1B8EDC: #_DED8u: db $C8 ; sustain current note
#_1B8EDD: #_DED9u: db $3C, $7D ; duration, params
#_1B8EDF: #_DEDBu: db $B3 ; play note Ds5
#_1B8EE0: #_DEDCu: db $24 ; duration
#_1B8EE1: #_DEDDu: db $C9 ; rest
#_1B8EE2: #_DEDEu: db $30 ; duration
#_1B8EE3: #_DEDFu: db $B4 ; play note E5
#_1B8EE4: #_DEE0u: db $0C ; duration
#_1B8EE5: #_DEE1u: db $B4 ; play note E5
#_1B8EE6: #_DEE2u: db $24, $6D ; duration, params
#_1B8EE8: #_DEE4u: db $C8 ; sustain current note
#_1B8EE9: #_DEE5u: db $3C, $7D ; duration, params
#_1B8EEB: #_DEE7u: db $B4 ; play note E5

;---------------------------------------------------------------------------------------------------

Song11_Segment5_Track3:
#_1B8EEC: #_DEE8u: db $EF : dw Song11_Sub_E0C2 : db $02 ; call segment subroutine
#_1B8EF0: #_DEECu: db $EF : dw Song11_Sub_E0CF : db $02 ; call segment subroutine
#_1B8EF4: #_DEF0u: db $0C, $5F ; duration, params
#_1B8EF6: #_DEF2u: db $9D ; play note F3
#_1B8EF7: #_DEF3u: db $0C, $5D ; duration, params
#_1B8EF9: #_DEF5u: db $9D ; play note F3
#_1B8EFA: #_DEF6u: db $9D ; play note F3
#_1B8EFB: #_DEF7u: db $9D ; play note F3
#_1B8EFC: #_DEF8u: db $9D ; play note F3
#_1B8EFD: #_DEF9u: db $9D ; play note F3
#_1B8EFE: #_DEFAu: db $9D ; play note F3
#_1B8EFF: #_DEFBu: db $9D ; play note F3
#_1B8F00: #_DEFCu: db $9D ; play note F3
#_1B8F01: #_DEFDu: db $9D ; play note F3
#_1B8F02: #_DEFEu: db $9D ; play note F3
#_1B8F03: #_DEFFu: db $9D ; play note F3
#_1B8F04: #_DF00u: db $9D ; play note F3
#_1B8F05: #_DF01u: db $9D ; play note F3
#_1B8F06: #_DF02u: db $9D ; play note F3
#_1B8F07: #_DF03u: db $9D ; play note F3
#_1B8F08: #_DF04u: db $EF : dw Song11_Sub_E0DC : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Segment5_Track4:
#_1B8F0C: #_DF08u: db $ED, $DC ; set channel volume
#_1B8F0E: #_DF0Au: db $EF : dw Song11_Sub_E0E5 : db $01 ; call segment subroutine
#_1B8F12: #_DF0Eu: db $0C ; duration
#_1B8F13: #_DF0Fu: db $B0 ; play note C5
#_1B8F14: #_DF10u: db $3C ; duration
#_1B8F15: #_DF11u: db $AF ; play note B4
#_1B8F16: #_DF12u: db $0C ; duration
#_1B8F17: #_DF13u: db $A9 ; play note F4
#_1B8F18: #_DF14u: db $A8 ; play note E4
#_1B8F19: #_DF15u: db $60 ; duration
#_1B8F1A: #_DF16u: db $C8 ; sustain current note
#_1B8F1B: #_DF17u: db $3C ; duration
#_1B8F1C: #_DF18u: db $A7 ; play note Ds4
#_1B8F1D: #_DF19u: db $0C ; duration
#_1B8F1E: #_DF1Au: db $A6 ; play note D4
#_1B8F1F: #_DF1Bu: db $A7 ; play note Ds4
#_1B8F20: #_DF1Cu: db $AC ; play note Gs4
#_1B8F21: #_DF1Du: db $48 ; duration
#_1B8F22: #_DF1Eu: db $B2 ; play note D5
#_1B8F23: #_DF1Fu: db $18 ; duration
#_1B8F24: #_DF20u: db $AE ; play note As4
#_1B8F25: #_DF21u: db $60 ; duration
#_1B8F26: #_DF22u: db $AD ; play note A4
#_1B8F27: #_DF23u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song11_Segment5_Track5:
#_1B8F28: #_DF24u: db $EF : dw Song11_Sub_E0F1 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Unused0_Track0:
#_1B8F2C: #_DF28u: db $0C ; duration
#_1B8F2D: #_DF29u: db $C9 ; rest
#_1B8F2E: #_DF2Au: db $30, $7D ; duration, params
#_1B8F30: #_DF2Cu: db $A9 ; play note F4
#_1B8F31: #_DF2Du: db $24 ; duration
#_1B8F32: #_DF2Eu: db $A9 ; play note F4
#_1B8F33: #_DF2Fu: db $0C ; duration
#_1B8F34: #_DF30u: db $C8 ; sustain current note
#_1B8F35: #_DF31u: db $54 ; duration
#_1B8F36: #_DF32u: db $A9 ; play note F4
#_1B8F37: #_DF33u: db $0C ; duration
#_1B8F38: #_DF34u: db $C9 ; rest
#_1B8F39: #_DF35u: db $30 ; duration
#_1B8F3A: #_DF36u: db $A8 ; play note E4
#_1B8F3B: #_DF37u: db $24 ; duration
#_1B8F3C: #_DF38u: db $A8 ; play note E4
#_1B8F3D: #_DF39u: db $0C ; duration
#_1B8F3E: #_DF3Au: db $C8 ; sustain current note
#_1B8F3F: #_DF3Bu: db $54 ; duration
#_1B8F40: #_DF3Cu: db $A8 ; play note E4
#_1B8F41: #_DF3Du: db $0C ; duration
#_1B8F42: #_DF3Eu: db $C9 ; rest
#_1B8F43: #_DF3Fu: db $30 ; duration
#_1B8F44: #_DF40u: db $A7 ; play note Ds4
#_1B8F45: #_DF41u: db $24 ; duration
#_1B8F46: #_DF42u: db $A7 ; play note Ds4
#_1B8F47: #_DF43u: db $0C ; duration
#_1B8F48: #_DF44u: db $C8 ; sustain current note
#_1B8F49: #_DF45u: db $54 ; duration
#_1B8F4A: #_DF46u: db $A7 ; play note Ds4
#_1B8F4B: #_DF47u: db $0C ; duration
#_1B8F4C: #_DF48u: db $C9 ; rest
#_1B8F4D: #_DF49u: db $30 ; duration
#_1B8F4E: #_DF4Au: db $A6 ; play note D4
#_1B8F4F: #_DF4Bu: db $24 ; duration
#_1B8F50: #_DF4Cu: db $A6 ; play note D4
#_1B8F51: #_DF4Du: db $0C ; duration
#_1B8F52: #_DF4Eu: db $C8 ; sustain current note
#_1B8F53: #_DF4Fu: db $54 ; duration
#_1B8F54: #_DF50u: db $A6 ; play note D4
#_1B8F55: #_DF51u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Unused0_Track1:
#_1B8F56: #_DF52u: db $18 ; duration
#_1B8F57: #_DF53u: db $C9 ; rest
#_1B8F58: #_DF54u: db $30, $7D ; duration, params
#_1B8F5A: #_DF56u: db $AA ; play note Fs4
#_1B8F5B: #_DF57u: db $18 ; duration
#_1B8F5C: #_DF58u: db $AA ; play note Fs4
#_1B8F5D: #_DF59u: db $C8 ; sustain current note
#_1B8F5E: #_DF5Au: db $48 ; duration
#_1B8F5F: #_DF5Bu: db $AA ; play note Fs4
#_1B8F60: #_DF5Cu: db $18 ; duration
#_1B8F61: #_DF5Du: db $C9 ; rest
#_1B8F62: #_DF5Eu: db $30 ; duration
#_1B8F63: #_DF5Fu: db $A9 ; play note F4
#_1B8F64: #_DF60u: db $18 ; duration
#_1B8F65: #_DF61u: db $A9 ; play note F4
#_1B8F66: #_DF62u: db $C8 ; sustain current note
#_1B8F67: #_DF63u: db $48 ; duration
#_1B8F68: #_DF64u: db $A9 ; play note F4
#_1B8F69: #_DF65u: db $18 ; duration
#_1B8F6A: #_DF66u: db $C9 ; rest
#_1B8F6B: #_DF67u: db $30 ; duration
#_1B8F6C: #_DF68u: db $A8 ; play note E4
#_1B8F6D: #_DF69u: db $18 ; duration
#_1B8F6E: #_DF6Au: db $A8 ; play note E4
#_1B8F6F: #_DF6Bu: db $C8 ; sustain current note
#_1B8F70: #_DF6Cu: db $48 ; duration
#_1B8F71: #_DF6Du: db $A8 ; play note E4
#_1B8F72: #_DF6Eu: db $18 ; duration
#_1B8F73: #_DF6Fu: db $C9 ; rest
#_1B8F74: #_DF70u: db $30 ; duration
#_1B8F75: #_DF71u: db $A7 ; play note Ds4
#_1B8F76: #_DF72u: db $18 ; duration
#_1B8F77: #_DF73u: db $A7 ; play note Ds4
#_1B8F78: #_DF74u: db $C8 ; sustain current note
#_1B8F79: #_DF75u: db $48 ; duration
#_1B8F7A: #_DF76u: db $A7 ; play note Ds4

;---------------------------------------------------------------------------------------------------

Song11_Unused0_Track2:
#_1B8F7B: #_DF77u: db $24 ; duration
#_1B8F7C: #_DF78u: db $C9 ; rest
#_1B8F7D: #_DF79u: db $30, $7D ; duration, params
#_1B8F7F: #_DF7Bu: db $B1 ; play note Cs5
#_1B8F80: #_DF7Cu: db $0C ; duration
#_1B8F81: #_DF7Du: db $B1 ; play note Cs5
#_1B8F82: #_DF7Eu: db $24 ; duration
#_1B8F83: #_DF7Fu: db $C8 ; sustain current note
#_1B8F84: #_DF80u: db $3C ; duration
#_1B8F85: #_DF81u: db $B1 ; play note Cs5
#_1B8F86: #_DF82u: db $24 ; duration
#_1B8F87: #_DF83u: db $C9 ; rest
#_1B8F88: #_DF84u: db $30 ; duration
#_1B8F89: #_DF85u: db $B0 ; play note C5
#_1B8F8A: #_DF86u: db $0C ; duration
#_1B8F8B: #_DF87u: db $B0 ; play note C5
#_1B8F8C: #_DF88u: db $24 ; duration
#_1B8F8D: #_DF89u: db $C8 ; sustain current note
#_1B8F8E: #_DF8Au: db $3C ; duration
#_1B8F8F: #_DF8Bu: db $B0 ; play note C5
#_1B8F90: #_DF8Cu: db $24 ; duration
#_1B8F91: #_DF8Du: db $C9 ; rest
#_1B8F92: #_DF8Eu: db $30 ; duration
#_1B8F93: #_DF8Fu: db $AF ; play note B4
#_1B8F94: #_DF90u: db $0C ; duration
#_1B8F95: #_DF91u: db $AF ; play note B4
#_1B8F96: #_DF92u: db $24 ; duration
#_1B8F97: #_DF93u: db $C8 ; sustain current note
#_1B8F98: #_DF94u: db $3C ; duration
#_1B8F99: #_DF95u: db $AF ; play note B4
#_1B8F9A: #_DF96u: db $24 ; duration
#_1B8F9B: #_DF97u: db $C9 ; rest
#_1B8F9C: #_DF98u: db $30 ; duration
#_1B8F9D: #_DF99u: db $AE ; play note As4
#_1B8F9E: #_DF9Au: db $0C ; duration
#_1B8F9F: #_DF9Bu: db $AE ; play note As4
#_1B8FA0: #_DF9Cu: db $24 ; duration
#_1B8FA1: #_DF9Du: db $C8 ; sustain current note
#_1B8FA2: #_DF9Eu: db $3C ; duration
#_1B8FA3: #_DF9Fu: db $AE ; play note As4

;---------------------------------------------------------------------------------------------------

Song11_Unused0_Track3:
#_1B8FA4: #_DFA0u: db $EF : dw Song11_Sub_E0C2 : db $02 ; call segment subroutine
#_1B8FA8: #_DFA4u: db $EF : dw Song11_Sub_E0CF : db $02 ; call segment subroutine
#_1B8FAC: #_DFA8u: db $EF : dw Song11_Sub_E120 : db $02 ; call segment subroutine
#_1B8FB0: #_DFACu: db $EF : dw Song11_Sub_E12D : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Unused0_Track4:
#_1B8FB4: #_DFB0u: db $EF : dw Song11_Sub_E0E5 : db $01 ; call segment subroutine
#_1B8FB8: #_DFB4u: db $0C ; duration
#_1B8FB9: #_DFB5u: db $AF ; play note B4
#_1B8FBA: #_DFB6u: db $3C ; duration
#_1B8FBB: #_DFB7u: db $AE ; play note As4
#_1B8FBC: #_DFB8u: db $0C ; duration
#_1B8FBD: #_DFB9u: db $A9 ; play note F4
#_1B8FBE: #_DFBAu: db $A8 ; play note E4
#_1B8FBF: #_DFBBu: db $60 ; duration
#_1B8FC0: #_DFBCu: db $C8 ; sustain current note
#_1B8FC1: #_DFBDu: db $3C ; duration
#_1B8FC2: #_DFBEu: db $A7 ; play note Ds4
#_1B8FC3: #_DFBFu: db $0C ; duration
#_1B8FC4: #_DFC0u: db $A6 ; play note D4
#_1B8FC5: #_DFC1u: db $A7 ; play note Ds4
#_1B8FC6: #_DFC2u: db $AE ; play note As4
#_1B8FC7: #_DFC3u: db $48 ; duration
#_1B8FC8: #_DFC4u: db $AF ; play note B4
#_1B8FC9: #_DFC5u: db $18 ; duration
#_1B8FCA: #_DFC6u: db $B1 ; play note Cs5
#_1B8FCB: #_DFC7u: db $60 ; duration
#_1B8FCC: #_DFC8u: db $B0 ; play note C5
#_1B8FCD: #_DFC9u: db $AE ; play note As4

;---------------------------------------------------------------------------------------------------

Song11_Unused0_Track5:
#_1B8FCE: #_DFCAu: db $EF : dw Song11_Sub_E0F1 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Unused1_Track0:
#_1B8FD2: #_DFCEu: db $EF : dw Song11_Sub_E015 : db $01 ; call segment subroutine
#_1B8FD6: #_DFD2u: db $EF : dw Song11_Sub_E021 : db $01 ; call segment subroutine
#_1B8FDA: #_DFD6u: db $EF : dw Song11_Sub_E02C : db $01 ; call segment subroutine
#_1B8FDE: #_DFDAu: db $EF : dw Song11_Sub_E09F : db $01 ; call segment subroutine
#_1B8FE2: #_DFDEu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Unused1_Track1:
#_1B8FE3: #_DFDFu: db $EF : dw Song11_Sub_E037 : db $01 ; call segment subroutine
#_1B8FE7: #_DFE3u: db $EF : dw Song11_Sub_E042 : db $01 ; call segment subroutine
#_1B8FEB: #_DFE7u: db $EF : dw Song11_Sub_E04C : db $01 ; call segment subroutine
#_1B8FEF: #_DFEBu: db $18 ; duration
#_1B8FF0: #_DFECu: db $C9 ; rest
#_1B8FF1: #_DFEDu: db $30 ; duration
#_1B8FF2: #_DFEEu: db $A3 ; play note B3
#_1B8FF3: #_DFEFu: db $18 ; duration
#_1B8FF4: #_DFF0u: db $A3 ; play note B3
#_1B8FF5: #_DFF1u: db $C8 ; sustain current note
#_1B8FF6: #_DFF2u: db $48 ; duration
#_1B8FF7: #_DFF3u: db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song11_Unused1_Track2:
#_1B8FF8: #_DFF4u: db $EF : dw Song11_Sub_E056 : db $01 ; call segment subroutine
#_1B8FFC: #_DFF8u: db $EF : dw Song11_Sub_E062 : db $01 ; call segment subroutine
#_1B9000: #_DFFCu: db $EF : dw Song11_Sub_E06D : db $01 ; call segment subroutine
#_1B9004: #_E000u: db $EF : dw Song11_Sub_E0AA : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song11_Unused1_Track3:
#_1B9008: #_E004u: db $EF : dw Song11_Sub_E078 : db $02 ; call segment subroutine
#_1B900C: #_E008u: db $EF : dw Song11_Sub_E085 : db $02 ; call segment subroutine
#_1B9010: #_E00Cu: db $EF : dw Song11_Sub_E092 : db $02 ; call segment subroutine
#_1B9014: #_E010u: db $EF : dw Song11_Sub_E0B5 : db $02 ; call segment subroutine
#_1B9018: #_E014u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E015:
#_1B9019: #_E015u: db $0C ; duration
#_1B901A: #_E016u: db $C9 ; rest
#_1B901B: #_E017u: db $30, $7D ; duration, params
#_1B901D: #_E019u: db $A5 ; play note Cs4
#_1B901E: #_E01Au: db $24 ; duration
#_1B901F: #_E01Bu: db $A5 ; play note Cs4
#_1B9020: #_E01Cu: db $0C ; duration
#_1B9021: #_E01Du: db $C8 ; sustain current note
#_1B9022: #_E01Eu: db $54 ; duration
#_1B9023: #_E01Fu: db $A5 ; play note Cs4
#_1B9024: #_E020u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E021:
#_1B9025: #_E021u: db $0C ; duration
#_1B9026: #_E022u: db $C9 ; rest
#_1B9027: #_E023u: db $30 ; duration
#_1B9028: #_E024u: db $A4 ; play note C4
#_1B9029: #_E025u: db $24 ; duration
#_1B902A: #_E026u: db $A4 ; play note C4
#_1B902B: #_E027u: db $0C ; duration
#_1B902C: #_E028u: db $C8 ; sustain current note
#_1B902D: #_E029u: db $54 ; duration
#_1B902E: #_E02Au: db $A4 ; play note C4
#_1B902F: #_E02Bu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E02C:
#_1B9030: #_E02Cu: db $0C ; duration
#_1B9031: #_E02Du: db $C9 ; rest
#_1B9032: #_E02Eu: db $30 ; duration
#_1B9033: #_E02Fu: db $A3 ; play note B3
#_1B9034: #_E030u: db $24 ; duration
#_1B9035: #_E031u: db $A3 ; play note B3
#_1B9036: #_E032u: db $0C ; duration
#_1B9037: #_E033u: db $C8 ; sustain current note
#_1B9038: #_E034u: db $54 ; duration
#_1B9039: #_E035u: db $A3 ; play note B3
#_1B903A: #_E036u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E037:
#_1B903B: #_E037u: db $18 ; duration
#_1B903C: #_E038u: db $C9 ; rest
#_1B903D: #_E039u: db $30, $7D ; duration, params
#_1B903F: #_E03Bu: db $A6 ; play note D4
#_1B9040: #_E03Cu: db $18 ; duration
#_1B9041: #_E03Du: db $A6 ; play note D4
#_1B9042: #_E03Eu: db $C8 ; sustain current note
#_1B9043: #_E03Fu: db $48 ; duration
#_1B9044: #_E040u: db $A6 ; play note D4
#_1B9045: #_E041u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E042:
#_1B9046: #_E042u: db $18 ; duration
#_1B9047: #_E043u: db $C9 ; rest
#_1B9048: #_E044u: db $30 ; duration
#_1B9049: #_E045u: db $A5 ; play note Cs4
#_1B904A: #_E046u: db $18 ; duration
#_1B904B: #_E047u: db $A5 ; play note Cs4
#_1B904C: #_E048u: db $C8 ; sustain current note
#_1B904D: #_E049u: db $48 ; duration
#_1B904E: #_E04Au: db $A5 ; play note Cs4
#_1B904F: #_E04Bu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E04C:
#_1B9050: #_E04Cu: db $18 ; duration
#_1B9051: #_E04Du: db $C9 ; rest
#_1B9052: #_E04Eu: db $30 ; duration
#_1B9053: #_E04Fu: db $A4 ; play note C4
#_1B9054: #_E050u: db $18 ; duration
#_1B9055: #_E051u: db $A4 ; play note C4
#_1B9056: #_E052u: db $C8 ; sustain current note
#_1B9057: #_E053u: db $48 ; duration
#_1B9058: #_E054u: db $A4 ; play note C4
#_1B9059: #_E055u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E056:
#_1B905A: #_E056u: db $24 ; duration
#_1B905B: #_E057u: db $C9 ; rest
#_1B905C: #_E058u: db $30, $7D ; duration, params
#_1B905E: #_E05Au: db $AD ; play note A4
#_1B905F: #_E05Bu: db $0C ; duration
#_1B9060: #_E05Cu: db $AD ; play note A4
#_1B9061: #_E05Du: db $24 ; duration
#_1B9062: #_E05Eu: db $C8 ; sustain current note
#_1B9063: #_E05Fu: db $3C ; duration
#_1B9064: #_E060u: db $AD ; play note A4
#_1B9065: #_E061u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E062:
#_1B9066: #_E062u: db $24 ; duration
#_1B9067: #_E063u: db $C9 ; rest
#_1B9068: #_E064u: db $30 ; duration
#_1B9069: #_E065u: db $AC ; play note Gs4
#_1B906A: #_E066u: db $0C ; duration
#_1B906B: #_E067u: db $AC ; play note Gs4
#_1B906C: #_E068u: db $24 ; duration
#_1B906D: #_E069u: db $C8 ; sustain current note
#_1B906E: #_E06Au: db $3C ; duration
#_1B906F: #_E06Bu: db $AC ; play note Gs4
#_1B9070: #_E06Cu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E06D:
#_1B9071: #_E06Du: db $24 ; duration
#_1B9072: #_E06Eu: db $C9 ; rest
#_1B9073: #_E06Fu: db $30 ; duration
#_1B9074: #_E070u: db $AB ; play note G4
#_1B9075: #_E071u: db $0C ; duration
#_1B9076: #_E072u: db $AB ; play note G4
#_1B9077: #_E073u: db $24 ; duration
#_1B9078: #_E074u: db $C8 ; sustain current note
#_1B9079: #_E075u: db $3C ; duration
#_1B907A: #_E076u: db $AB ; play note G4
#_1B907B: #_E077u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E078:
#_1B907C: #_E078u: db $0C, $5F ; duration, params
#_1B907E: #_E07Au: db $97 ; play note B2
#_1B907F: #_E07Bu: db $0C, $5D ; duration, params
#_1B9081: #_E07Du: db $97 ; play note B2
#_1B9082: #_E07Eu: db $97 ; play note B2
#_1B9083: #_E07Fu: db $97 ; play note B2
#_1B9084: #_E080u: db $97 ; play note B2
#_1B9085: #_E081u: db $97 ; play note B2
#_1B9086: #_E082u: db $97 ; play note B2
#_1B9087: #_E083u: db $97 ; play note B2
#_1B9088: #_E084u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E085:
#_1B9089: #_E085u: db $0C, $5F ; duration, params
#_1B908B: #_E087u: db $96 ; play note As2
#_1B908C: #_E088u: db $0C, $5D ; duration, params
#_1B908E: #_E08Au: db $96 ; play note As2
#_1B908F: #_E08Bu: db $96 ; play note As2
#_1B9090: #_E08Cu: db $96 ; play note As2
#_1B9091: #_E08Du: db $96 ; play note As2
#_1B9092: #_E08Eu: db $96 ; play note As2
#_1B9093: #_E08Fu: db $96 ; play note As2
#_1B9094: #_E090u: db $96 ; play note As2
#_1B9095: #_E091u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E092:
#_1B9096: #_E092u: db $0C, $5F ; duration, params
#_1B9098: #_E094u: db $95 ; play note A2
#_1B9099: #_E095u: db $0C, $5D ; duration, params
#_1B909B: #_E097u: db $95 ; play note A2
#_1B909C: #_E098u: db $95 ; play note A2
#_1B909D: #_E099u: db $95 ; play note A2
#_1B909E: #_E09Au: db $95 ; play note A2
#_1B909F: #_E09Bu: db $95 ; play note A2
#_1B90A0: #_E09Cu: db $95 ; play note A2
#_1B90A1: #_E09Du: db $95 ; play note A2
#_1B90A2: #_E09Eu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E09F:
#_1B90A3: #_E09Fu: db $0C ; duration
#_1B90A4: #_E0A0u: db $C9 ; rest
#_1B90A5: #_E0A1u: db $30 ; duration
#_1B90A6: #_E0A2u: db $A2 ; play note As3
#_1B90A7: #_E0A3u: db $24 ; duration
#_1B90A8: #_E0A4u: db $A2 ; play note As3
#_1B90A9: #_E0A5u: db $0C ; duration
#_1B90AA: #_E0A6u: db $C8 ; sustain current note
#_1B90AB: #_E0A7u: db $54 ; duration
#_1B90AC: #_E0A8u: db $A2 ; play note As3
#_1B90AD: #_E0A9u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E0AA:
#_1B90AE: #_E0AAu: db $24 ; duration
#_1B90AF: #_E0ABu: db $C9 ; rest
#_1B90B0: #_E0ACu: db $30 ; duration
#_1B90B1: #_E0ADu: db $AA ; play note Fs4
#_1B90B2: #_E0AEu: db $0C ; duration
#_1B90B3: #_E0AFu: db $AA ; play note Fs4
#_1B90B4: #_E0B0u: db $24 ; duration
#_1B90B5: #_E0B1u: db $C8 ; sustain current note
#_1B90B6: #_E0B2u: db $3C ; duration
#_1B90B7: #_E0B3u: db $AA ; play note Fs4
#_1B90B8: #_E0B4u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E0B5:
#_1B90B9: #_E0B5u: db $0C, $5F ; duration, params
#_1B90BB: #_E0B7u: db $94 ; play note Gs2
#_1B90BC: #_E0B8u: db $0C, $5D ; duration, params
#_1B90BE: #_E0BAu: db $94 ; play note Gs2
#_1B90BF: #_E0BBu: db $94 ; play note Gs2
#_1B90C0: #_E0BCu: db $94 ; play note Gs2
#_1B90C1: #_E0BDu: db $94 ; play note Gs2
#_1B90C2: #_E0BEu: db $94 ; play note Gs2
#_1B90C3: #_E0BFu: db $94 ; play note Gs2
#_1B90C4: #_E0C0u: db $94 ; play note Gs2
#_1B90C5: #_E0C1u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E0C2:
#_1B90C6: #_E0C2u: db $0C, $5F ; duration, params
#_1B90C8: #_E0C4u: db $9B ; play note Ds3
#_1B90C9: #_E0C5u: db $0C, $5D ; duration, params
#_1B90CB: #_E0C7u: db $9B ; play note Ds3
#_1B90CC: #_E0C8u: db $9B ; play note Ds3
#_1B90CD: #_E0C9u: db $9B ; play note Ds3
#_1B90CE: #_E0CAu: db $9B ; play note Ds3
#_1B90CF: #_E0CBu: db $9B ; play note Ds3
#_1B90D0: #_E0CCu: db $9B ; play note Ds3
#_1B90D1: #_E0CDu: db $9B ; play note Ds3
#_1B90D2: #_E0CEu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E0CF:
#_1B90D3: #_E0CFu: db $0C, $5F ; duration, params
#_1B90D5: #_E0D1u: db $9A ; play note D3
#_1B90D6: #_E0D2u: db $0C, $5D ; duration, params
#_1B90D8: #_E0D4u: db $9A ; play note D3
#_1B90D9: #_E0D5u: db $9A ; play note D3
#_1B90DA: #_E0D6u: db $9A ; play note D3
#_1B90DB: #_E0D7u: db $9A ; play note D3
#_1B90DC: #_E0D8u: db $9A ; play note D3
#_1B90DD: #_E0D9u: db $9A ; play note D3
#_1B90DE: #_E0DAu: db $9A ; play note D3
#_1B90DF: #_E0DBu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E0DC:
#_1B90E0: #_E0DCu: db $9E ; play note Fs3
#_1B90E1: #_E0DDu: db $9E ; play note Fs3
#_1B90E2: #_E0DEu: db $9E ; play note Fs3
#_1B90E3: #_E0DFu: db $9E ; play note Fs3
#_1B90E4: #_E0E0u: db $9E ; play note Fs3
#_1B90E5: #_E0E1u: db $9E ; play note Fs3
#_1B90E6: #_E0E2u: db $9E ; play note Fs3
#_1B90E7: #_E0E3u: db $9E ; play note Fs3
#_1B90E8: #_E0E4u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E0E5:
#_1B90E9: #_E0E5u: db $3C, $7D ; duration, params
#_1B90EB: #_E0E7u: db $A2 ; play note As3
#_1B90EC: #_E0E8u: db $0C ; duration
#_1B90ED: #_E0E9u: db $A5 ; play note Cs4
#_1B90EE: #_E0EAu: db $A9 ; play note F4
#_1B90EF: #_E0EBu: db $B1 ; play note Cs5
#_1B90F0: #_E0ECu: db $48 ; duration
#_1B90F1: #_E0EDu: db $B0 ; play note C5
#_1B90F2: #_E0EEu: db $18 ; duration
#_1B90F3: #_E0EFu: db $AC ; play note Gs4
#_1B90F4: #_E0F0u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E0F1:
#_1B90F5: #_E0F1u: db $E0, $11 ; set instrument - trumpet
#_1B90F7: #_E0F3u: db $ED, $00 ; set channel volume
#_1B90F9: #_E0F5u: db $48, $7D ; duration, params
#_1B90FB: #_E0F7u: db $B1 ; play note Cs5
#_1B90FC: #_E0F8u: db $0C ; duration
#_1B90FD: #_E0F9u: db $B0 ; play note C5
#_1B90FE: #_E0FAu: db $B1 ; play note Cs5
#_1B90FF: #_E0FBu: db $48 ; duration
#_1B9100: #_E0FCu: db $B3 ; play note Ds5
#_1B9101: #_E0FDu: db $0C ; duration
#_1B9102: #_E0FEu: db $B1 ; play note Cs5
#_1B9103: #_E0FFu: db $B0 ; play note C5
#_1B9104: #_E100u: db $60 ; duration
#_1B9105: #_E101u: db $A9 ; play note F4
#_1B9106: #_E102u: db $48 ; duration
#_1B9107: #_E103u: db $C8 ; sustain current note
#_1B9108: #_E104u: db $08 ; duration
#_1B9109: #_E105u: db $A9 ; play note F4
#_1B910A: #_E106u: db $A8 ; play note E4
#_1B910B: #_E107u: db $08, $78 ; duration, params
#_1B910D: #_E109u: db $A9 ; play note F4
#_1B910E: #_E10Au: db $48, $7D ; duration, params
#_1B9110: #_E10Cu: db $AF ; play note B4
#_1B9111: #_E10Du: db $0C ; duration
#_1B9112: #_E10Eu: db $AE ; play note As4
#_1B9113: #_E10Fu: db $AF ; play note B4
#_1B9114: #_E110u: db $48 ; duration
#_1B9115: #_E111u: db $B1 ; play note Cs5
#_1B9116: #_E112u: db $0C ; duration
#_1B9117: #_E113u: db $AF ; play note B4
#_1B9118: #_E114u: db $AE ; play note As4
#_1B9119: #_E115u: db $60 ; duration
#_1B911A: #_E116u: db $A7 ; play note Ds4
#_1B911B: #_E117u: db $48 ; duration
#_1B911C: #_E118u: db $C8 ; sustain current note
#_1B911D: #_E119u: db $08 ; duration
#_1B911E: #_E11Au: db $A7 ; play note Ds4
#_1B911F: #_E11Bu: db $A6 ; play note D4
#_1B9120: #_E11Cu: db $08, $78 ; duration, params
#_1B9122: #_E11Eu: db $A7 ; play note Ds4
#_1B9123: #_E11Fu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E120:
#_1B9124: #_E120u: db $0C, $5F ; duration, params
#_1B9126: #_E122u: db $99 ; play note Cs3
#_1B9127: #_E123u: db $0C, $5D ; duration, params
#_1B9129: #_E125u: db $99 ; play note Cs3
#_1B912A: #_E126u: db $99 ; play note Cs3
#_1B912B: #_E127u: db $99 ; play note Cs3
#_1B912C: #_E128u: db $99 ; play note Cs3
#_1B912D: #_E129u: db $99 ; play note Cs3
#_1B912E: #_E12Au: db $99 ; play note Cs3
#_1B912F: #_E12Bu: db $99 ; play note Cs3
#_1B9130: #_E12Cu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song11_Sub_E12D:
#_1B9131: #_E12Du: db $0C, $5F ; duration, params
#_1B9133: #_E12Fu: db $98 ; play note C3
#_1B9134: #_E130u: db $0C, $5D ; duration, params
#_1B9136: #_E132u: db $98 ; play note C3
#_1B9137: #_E133u: db $98 ; play note C3
#_1B9138: #_E134u: db $98 ; play note C3
#_1B9139: #_E135u: db $98 ; play note C3
#_1B913A: #_E136u: db $98 ; play note C3
#_1B913B: #_E137u: db $98 ; play note C3
#_1B913C: #_E138u: db $98 ; play note C3
#_1B913D: #_E139u: db $00 ; End

;===================================================================================================

Song12_Cave:
#_1B913E: #_E13Au: dw Song12_Segment0

Song12_Loop:
#_1B9140: #_E13Cu: dw Song12_Segment1
#_1B9142: #_E13Eu: dw Song12_Segment2
#_1B9144: #_E140u: dw $00FF, Song12_Loop ; Loop point
#_1B9148: #_E144u: dw $0000

Song12_Segment1:
#_1B914A: #_E146u: dw Song12_Segment1_Track0
#_1B914C: #_E148u: dw Song12_Segment1_Track1
#_1B914E: #_E14Au: dw Song12_Segment1_Track2
#_1B9150: #_E14Cu: dw Song12_Segment1_Track3
#_1B9152: #_E14Eu: dw Song12_Segment1_Track4
#_1B9154: #_E150u: dw Song12_Segment1_Track5
#_1B9156: #_E152u: dw Song12_Segment1_Track6
#_1B9158: #_E154u: dw $0000

Song12_Segment0:
#_1B915A: #_E156u: dw Song12_Segment0_Track0
#_1B915C: #_E158u: dw Song12_Segment0_Track1
#_1B915E: #_E15Au: dw Song12_Segment0_Track2
#_1B9160: #_E15Cu: dw Song12_Segment0_Track3
#_1B9162: #_E15Eu: dw Song12_Segment0_Track4
#_1B9164: #_E160u: dw Song12_Segment0_Track5
#_1B9166: #_E162u: dw $0000
#_1B9168: #_E164u: dw $0000

Song12_Segment2:
#_1B916A: #_E166u: dw Song12_Segment2_Track0
#_1B916C: #_E168u: dw Song12_Segment2_Track1
#_1B916E: #_E16Au: dw Song12_Segment2_Track2
#_1B9170: #_E16Cu: dw Song12_Segment2_Track3
#_1B9172: #_E16Eu: dw Song12_Segment2_Track4
#_1B9174: #_E170u: dw Song12_Segment2_Track5
#_1B9176: #_E172u: dw Song12_Segment2_Track6
#_1B9178: #_E174u: dw $0000

;---------------------------------------------------------------------------------------------------

Song12_Segment1_Track0:
#_1B917A: #_E176u: db $ED, $C8 ; set channel volume
#_1B917C: #_E178u: db $E0, $0A ; set instrument - strings B
#_1B917E: #_E17Au: db $E1, $07 ; set panning - leaning right
#_1B9180: #_E17Cu: db $E3, $14, $19, $1E ; enable vibrato
#_1B9184: #_E180u: db $EF : dw Song12_Sub_E3F3 : db $04 ; call segment subroutine
#_1B9188: #_E184u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Segment1_Track1:
#_1B9189: #_E185u: db $E0, $0A ; set instrument - strings B
#_1B918B: #_E187u: db $ED, $C8 ; set channel volume
#_1B918D: #_E189u: db $E1, $05 ; set panning - leaning right
#_1B918F: #_E18Bu: db $E3, $14, $19, $1E ; enable vibrato
#_1B9193: #_E18Fu: db $EF : dw Song12_Sub_E400 : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song12_Segment1_Track2:
#_1B9197: #_E193u: db $E0, $11 ; set instrument - trumpet
#_1B9199: #_E195u: db $ED, $C8 ; set channel volume
#_1B919B: #_E197u: db $E1, $09 ; set panning - leaning right
#_1B919D: #_E199u: db $E3, $14, $19, $1E ; enable vibrato
#_1B91A1: #_E19Du: db $60 ; duration
#_1B91A2: #_E19Eu: db $C9 ; rest
#_1B91A3: #_E19Fu: db $C9 ; rest
#_1B91A4: #_E1A0u: db $06, $2D ; duration, params
#_1B91A6: #_E1A2u: db $AB ; play note G4
#_1B91A7: #_E1A3u: db $AB ; play note G4
#_1B91A8: #_E1A4u: db $AA ; play note Fs4
#_1B91A9: #_E1A5u: db $AA ; play note Fs4
#_1B91AA: #_E1A6u: db $AD ; play note A4
#_1B91AB: #_E1A7u: db $AD ; play note A4
#_1B91AC: #_E1A8u: db $AC ; play note Gs4
#_1B91AD: #_E1A9u: db $AC ; play note Gs4
#_1B91AE: #_E1AAu: db $30 ; duration
#_1B91AF: #_E1ABu: db $C9 ; rest
#_1B91B0: #_E1ACu: db $60 ; duration
#_1B91B1: #_E1ADu: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song12_Segment1_Track3:
#_1B91B2: #_E1AEu: db $E0, $11 ; set instrument - trumpet
#_1B91B4: #_E1B0u: db $ED, $C8 ; set channel volume
#_1B91B6: #_E1B2u: db $E1, $0B ; set panning - leaning left
#_1B91B8: #_E1B4u: db $E3, $14, $19, $1E ; enable vibrato
#_1B91BC: #_E1B8u: db $60 ; duration
#_1B91BD: #_E1B9u: db $C9 ; rest
#_1B91BE: #_E1BAu: db $C9 ; rest
#_1B91BF: #_E1BBu: db $06, $2D ; duration, params
#_1B91C1: #_E1BDu: db $A6 ; play note D4
#_1B91C2: #_E1BEu: db $A6 ; play note D4
#_1B91C3: #_E1BFu: db $A5 ; play note Cs4
#_1B91C4: #_E1C0u: db $A5 ; play note Cs4
#_1B91C5: #_E1C1u: db $A8 ; play note E4
#_1B91C6: #_E1C2u: db $A8 ; play note E4
#_1B91C7: #_E1C3u: db $A7 ; play note Ds4
#_1B91C8: #_E1C4u: db $A7 ; play note Ds4
#_1B91C9: #_E1C5u: db $30 ; duration
#_1B91CA: #_E1C6u: db $C9 ; rest
#_1B91CB: #_E1C7u: db $60 ; duration
#_1B91CC: #_E1C8u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song12_Segment1_Track4:
#_1B91CD: #_E1C9u: db $E0, $02 ; set instrument - timpani
#_1B91CF: #_E1CBu: db $ED, $C8 ; set channel volume
#_1B91D1: #_E1CDu: db $54, $7D ; duration, params
#_1B91D3: #_E1CFu: db $85 ; play note F1
#_1B91D4: #_E1D0u: db $0C ; duration
#_1B91D5: #_E1D1u: db $85 ; play note F1
#_1B91D6: #_E1D2u: db $EF : dw Song12_Sub_E40D : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song12_Segment1_Track5:
#_1B91DA: #_E1D6u: db $E0, $10 ; set instrument - splash
#_1B91DC: #_E1D8u: db $ED, $C8 ; set channel volume
#_1B91DE: #_E1DAu: db $60 ; duration
#_1B91DF: #_E1DBu: db $C9 ; rest
#_1B91E0: #_E1DCu: db $30 ; duration
#_1B91E1: #_E1DDu: db $C9 ; rest
#_1B91E2: #_E1DEu: db $30, $7D ; duration, params
#_1B91E4: #_E1E0u: db $B7 ; play note G5
#_1B91E5: #_E1E1u: db $E0, $0A ; set instrument - strings B
#_1B91E7: #_E1E3u: db $ED, $8C ; set channel volume
#_1B91E9: #_E1E5u: db $12, $1D ; duration, params
#_1B91EB: #_E1E7u: db $BA ; play note As5
#_1B91EC: #_E1E8u: db $03, $7D ; duration, params
#_1B91EE: #_E1EAu: db $B8 ; play note Gs5
#_1B91EF: #_E1EBu: db $B9 ; play note A5
#_1B91F0: #_E1ECu: db $12, $1D ; duration, params
#_1B91F2: #_E1EEu: db $BA ; play note As5
#_1B91F3: #_E1EFu: db $03, $7D ; duration, params
#_1B91F5: #_E1F1u: db $B8 ; play note Gs5
#_1B91F6: #_E1F2u: db $B9 ; play note A5
#_1B91F7: #_E1F3u: db $12, $1D ; duration, params
#_1B91F9: #_E1F5u: db $BA ; play note As5
#_1B91FA: #_E1F6u: db $03, $7D ; duration, params
#_1B91FC: #_E1F8u: db $B8 ; play note Gs5
#_1B91FD: #_E1F9u: db $B9 ; play note A5
#_1B91FE: #_E1FAu: db $12, $1D ; duration, params
#_1B9200: #_E1FCu: db $BA ; play note As5
#_1B9201: #_E1FDu: db $03, $7D ; duration, params
#_1B9203: #_E1FFu: db $B7 ; play note G5
#_1B9204: #_E200u: db $B8 ; play note Gs5
#_1B9205: #_E201u: db $12, $1D ; duration, params
#_1B9207: #_E203u: db $BA ; play note As5
#_1B9208: #_E204u: db $03, $7D ; duration, params
#_1B920A: #_E206u: db $B8 ; play note Gs5
#_1B920B: #_E207u: db $B9 ; play note A5
#_1B920C: #_E208u: db $12, $1D ; duration, params
#_1B920E: #_E20Au: db $BA ; play note As5
#_1B920F: #_E20Bu: db $03, $7D ; duration, params
#_1B9211: #_E20Du: db $B8 ; play note Gs5
#_1B9212: #_E20Eu: db $B9 ; play note A5
#_1B9213: #_E20Fu: db $12, $1D ; duration, params
#_1B9215: #_E211u: db $BA ; play note As5
#_1B9216: #_E212u: db $03, $7D ; duration, params
#_1B9218: #_E214u: db $B8 ; play note Gs5
#_1B9219: #_E215u: db $B9 ; play note A5
#_1B921A: #_E216u: db $18, $1D ; duration, params
#_1B921C: #_E218u: db $BA ; play note As5

;---------------------------------------------------------------------------------------------------

Song12_Segment1_Track6:
#_1B921D: #_E219u: db $E0, $10 ; set instrument - splash
#_1B921F: #_E21Bu: db $ED, $C8 ; set channel volume
#_1B9221: #_E21Du: db $60 ; duration
#_1B9222: #_E21Eu: db $C9 ; rest
#_1B9223: #_E21Fu: db $3C ; duration
#_1B9224: #_E220u: db $C9 ; rest
#_1B9225: #_E221u: db $24, $7D ; duration, params
#_1B9227: #_E223u: db $BB ; play note B5
#_1B9228: #_E224u: db $E0, $0A ; set instrument - strings B
#_1B922A: #_E226u: db $ED, $8C ; set channel volume
#_1B922C: #_E228u: db $12, $1D ; duration, params
#_1B922E: #_E22Au: db $B8 ; play note Gs5
#_1B922F: #_E22Bu: db $03, $7D ; duration, params
#_1B9231: #_E22Du: db $B6 ; play note Fs5
#_1B9232: #_E22Eu: db $B7 ; play note G5
#_1B9233: #_E22Fu: db $12, $1D ; duration, params
#_1B9235: #_E231u: db $B8 ; play note Gs5
#_1B9236: #_E232u: db $03, $7D ; duration, params
#_1B9238: #_E234u: db $B6 ; play note Fs5
#_1B9239: #_E235u: db $B7 ; play note G5
#_1B923A: #_E236u: db $12, $1D ; duration, params
#_1B923C: #_E238u: db $B8 ; play note Gs5
#_1B923D: #_E239u: db $03, $7D ; duration, params
#_1B923F: #_E23Bu: db $B6 ; play note Fs5
#_1B9240: #_E23Cu: db $B7 ; play note G5
#_1B9241: #_E23Du: db $12, $1D ; duration, params
#_1B9243: #_E23Fu: db $B8 ; play note Gs5
#_1B9244: #_E240u: db $03, $7D ; duration, params
#_1B9246: #_E242u: db $B6 ; play note Fs5
#_1B9247: #_E243u: db $B7 ; play note G5
#_1B9248: #_E244u: db $12, $1D ; duration, params
#_1B924A: #_E246u: db $B8 ; play note Gs5
#_1B924B: #_E247u: db $03, $7D ; duration, params
#_1B924D: #_E249u: db $B6 ; play note Fs5
#_1B924E: #_E24Au: db $B7 ; play note G5
#_1B924F: #_E24Bu: db $12, $1D ; duration, params
#_1B9251: #_E24Du: db $B8 ; play note Gs5
#_1B9252: #_E24Eu: db $03, $7D ; duration, params
#_1B9254: #_E250u: db $B6 ; play note Fs5
#_1B9255: #_E251u: db $B7 ; play note G5
#_1B9256: #_E252u: db $12, $1D ; duration, params
#_1B9258: #_E254u: db $B8 ; play note Gs5
#_1B9259: #_E255u: db $03, $7D ; duration, params
#_1B925B: #_E257u: db $B6 ; play note Fs5
#_1B925C: #_E258u: db $B7 ; play note G5
#_1B925D: #_E259u: db $18, $1D ; duration, params
#_1B925F: #_E25Bu: db $B8 ; play note Gs5

;---------------------------------------------------------------------------------------------------

Song12_Segment0_Track0:
#_1B9260: #_E25Cu: db $FA, $19 ; set base percussion sample
#_1B9262: #_E25Eu: db $E5, $C8 ; set song volume
#_1B9264: #_E260u: db $E7, $19 ; set song tempo
#_1B9266: #_E262u: db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
#_1B926A: #_E266u: db $F7, $02, $5F, $02 ; configure EDL, EFB, FIR
#_1B926E: #_E26Au: db $F8, $14, $1E, $1E ; initiate gradual echo volume change
#_1B9272: #_E26Eu: db $ED, $C8 ; set channel volume
#_1B9274: #_E270u: db $E0, $0A ; set instrument - strings B
#_1B9276: #_E272u: db $E1, $07 ; set panning - leaning right
#_1B9278: #_E274u: db $E3, $14, $19, $1E ; enable vibrato
#_1B927C: #_E278u: db $EF : dw Song12_Sub_E3F3 : db $04 ; call segment subroutine
#_1B9280: #_E27Cu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Segment0_Track1:
#_1B9281: #_E27Du: db $E0, $0A ; set instrument - strings B
#_1B9283: #_E27Fu: db $ED, $C8 ; set channel volume
#_1B9285: #_E281u: db $E1, $05 ; set panning - leaning right
#_1B9287: #_E283u: db $E3, $14, $19, $1E ; enable vibrato
#_1B928B: #_E287u: db $EF : dw Song12_Sub_E400 : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song12_Segment0_Track2:
#_1B928F: #_E28Bu: db $E0, $11 ; set instrument - trumpet
#_1B9291: #_E28Du: db $ED, $C8 ; set channel volume
#_1B9293: #_E28Fu: db $E1, $09 ; set panning - leaning right
#_1B9295: #_E291u: db $E3, $14, $19, $1E ; enable vibrato
#_1B9299: #_E295u: db $60 ; duration
#_1B929A: #_E296u: db $C9 ; rest
#_1B929B: #_E297u: db $C9 ; rest
#_1B929C: #_E298u: db $06, $2D ; duration, params
#_1B929E: #_E29Au: db $AB ; play note G4
#_1B929F: #_E29Bu: db $AB ; play note G4
#_1B92A0: #_E29Cu: db $AA ; play note Fs4
#_1B92A1: #_E29Du: db $AA ; play note Fs4
#_1B92A2: #_E29Eu: db $AD ; play note A4
#_1B92A3: #_E29Fu: db $AD ; play note A4
#_1B92A4: #_E2A0u: db $AC ; play note Gs4
#_1B92A5: #_E2A1u: db $AC ; play note Gs4
#_1B92A6: #_E2A2u: db $30 ; duration
#_1B92A7: #_E2A3u: db $C9 ; rest
#_1B92A8: #_E2A4u: db $60 ; duration
#_1B92A9: #_E2A5u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song12_Segment0_Track3:
#_1B92AA: #_E2A6u: db $E0, $11 ; set instrument - trumpet
#_1B92AC: #_E2A8u: db $ED, $C8 ; set channel volume
#_1B92AE: #_E2AAu: db $E1, $0B ; set panning - leaning left
#_1B92B0: #_E2ACu: db $E3, $14, $19, $1E ; enable vibrato
#_1B92B4: #_E2B0u: db $60 ; duration
#_1B92B5: #_E2B1u: db $C9 ; rest
#_1B92B6: #_E2B2u: db $C9 ; rest
#_1B92B7: #_E2B3u: db $06, $2D ; duration, params
#_1B92B9: #_E2B5u: db $A6 ; play note D4
#_1B92BA: #_E2B6u: db $A6 ; play note D4
#_1B92BB: #_E2B7u: db $A5 ; play note Cs4
#_1B92BC: #_E2B8u: db $A5 ; play note Cs4
#_1B92BD: #_E2B9u: db $A8 ; play note E4
#_1B92BE: #_E2BAu: db $A8 ; play note E4
#_1B92BF: #_E2BBu: db $A7 ; play note Ds4
#_1B92C0: #_E2BCu: db $A7 ; play note Ds4
#_1B92C1: #_E2BDu: db $30 ; duration
#_1B92C2: #_E2BEu: db $C9 ; rest
#_1B92C3: #_E2BFu: db $60 ; duration
#_1B92C4: #_E2C0u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song12_Segment0_Track4:
#_1B92C5: #_E2C1u: db $E0, $02 ; set instrument - timpani
#_1B92C7: #_E2C3u: db $ED, $C8 ; set channel volume
#_1B92C9: #_E2C5u: db $54 ; duration
#_1B92CA: #_E2C6u: db $C9 ; rest
#_1B92CB: #_E2C7u: db $0C, $7D ; duration, params
#_1B92CD: #_E2C9u: db $85 ; play note F1
#_1B92CE: #_E2CAu: db $EF : dw Song12_Sub_E40D : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song12_Segment0_Track5:
#_1B92D2: #_E2CEu: db $E0, $10 ; set instrument - splash
#_1B92D4: #_E2D0u: db $ED, $C8 ; set channel volume
#_1B92D6: #_E2D2u: db $60 ; duration
#_1B92D7: #_E2D3u: db $C9 ; rest
#_1B92D8: #_E2D4u: db $30 ; duration
#_1B92D9: #_E2D5u: db $C9 ; rest
#_1B92DA: #_E2D6u: db $30, $7D ; duration, params
#_1B92DC: #_E2D8u: db $B7 ; play note G5
#_1B92DD: #_E2D9u: db $E0, $0A ; set instrument - strings B
#_1B92DF: #_E2DBu: db $ED, $8C ; set channel volume
#_1B92E1: #_E2DDu: db $12, $1D ; duration, params
#_1B92E3: #_E2DFu: db $BA ; play note As5
#_1B92E4: #_E2E0u: db $03, $7D ; duration, params
#_1B92E6: #_E2E2u: db $B8 ; play note Gs5
#_1B92E7: #_E2E3u: db $B9 ; play note A5
#_1B92E8: #_E2E4u: db $12, $1D ; duration, params
#_1B92EA: #_E2E6u: db $BA ; play note As5
#_1B92EB: #_E2E7u: db $03, $7D ; duration, params
#_1B92ED: #_E2E9u: db $B8 ; play note Gs5
#_1B92EE: #_E2EAu: db $B9 ; play note A5
#_1B92EF: #_E2EBu: db $12, $1D ; duration, params
#_1B92F1: #_E2EDu: db $BA ; play note As5
#_1B92F2: #_E2EEu: db $03, $7D ; duration, params
#_1B92F4: #_E2F0u: db $B8 ; play note Gs5
#_1B92F5: #_E2F1u: db $B9 ; play note A5
#_1B92F6: #_E2F2u: db $18, $1D ; duration, params
#_1B92F8: #_E2F4u: db $BA ; play note As5
#_1B92F9: #_E2F5u: db $12 ; duration
#_1B92FA: #_E2F6u: db $BA ; play note As5
#_1B92FB: #_E2F7u: db $03, $7D ; duration, params
#_1B92FD: #_E2F9u: db $B8 ; play note Gs5
#_1B92FE: #_E2FAu: db $B9 ; play note A5
#_1B92FF: #_E2FBu: db $12, $1D ; duration, params
#_1B9301: #_E2FDu: db $BA ; play note As5
#_1B9302: #_E2FEu: db $03, $7D ; duration, params
#_1B9304: #_E300u: db $B8 ; play note Gs5
#_1B9305: #_E301u: db $B9 ; play note A5
#_1B9306: #_E302u: db $12, $1D ; duration, params
#_1B9308: #_E304u: db $BA ; play note As5
#_1B9309: #_E305u: db $03, $7D ; duration, params
#_1B930B: #_E307u: db $B8 ; play note Gs5
#_1B930C: #_E308u: db $B9 ; play note A5
#_1B930D: #_E309u: db $18, $1D ; duration, params
#_1B930F: #_E30Bu: db $BA ; play note As5

;---------------------------------------------------------------------------------------------------

Song12_Segment2_Track0:
#_1B9310: #_E30Cu: db $ED, $C8 ; set channel volume
#_1B9312: #_E30Eu: db $E0, $0A ; set instrument - strings B
#_1B9314: #_E310u: db $E1, $07 ; set panning - leaning right
#_1B9316: #_E312u: db $E3, $14, $19, $1E ; enable vibrato
#_1B931A: #_E316u: db $EF : dw Song12_Sub_E412 : db $04 ; call segment subroutine
#_1B931E: #_E31Au: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Segment2_Track1:
#_1B931F: #_E31Bu: db $E0, $0A ; set instrument - strings B
#_1B9321: #_E31Du: db $ED, $C8 ; set channel volume
#_1B9323: #_E31Fu: db $E1, $05 ; set panning - leaning right
#_1B9325: #_E321u: db $E3, $14, $19, $1E ; enable vibrato
#_1B9329: #_E325u: db $EF : dw Song12_Sub_E41F : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song12_Segment2_Track2:
#_1B932D: #_E329u: db $E0, $11 ; set instrument - trumpet
#_1B932F: #_E32Bu: db $ED, $C8 ; set channel volume
#_1B9331: #_E32Du: db $E1, $09 ; set panning - leaning right
#_1B9333: #_E32Fu: db $E3, $14, $19, $1E ; enable vibrato
#_1B9337: #_E333u: db $60 ; duration
#_1B9338: #_E334u: db $C9 ; rest
#_1B9339: #_E335u: db $C9 ; rest
#_1B933A: #_E336u: db $06, $2D ; duration, params
#_1B933C: #_E338u: db $AC ; play note Gs4
#_1B933D: #_E339u: db $AC ; play note Gs4
#_1B933E: #_E33Au: db $AB ; play note G4
#_1B933F: #_E33Bu: db $AB ; play note G4
#_1B9340: #_E33Cu: db $AE ; play note As4
#_1B9341: #_E33Du: db $AE ; play note As4
#_1B9342: #_E33Eu: db $AD ; play note A4
#_1B9343: #_E33Fu: db $AD ; play note A4
#_1B9344: #_E340u: db $30 ; duration
#_1B9345: #_E341u: db $C9 ; rest
#_1B9346: #_E342u: db $60 ; duration
#_1B9347: #_E343u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song12_Segment2_Track3:
#_1B9348: #_E344u: db $E0, $11 ; set instrument - trumpet
#_1B934A: #_E346u: db $ED, $C8 ; set channel volume
#_1B934C: #_E348u: db $E1, $0B ; set panning - leaning left
#_1B934E: #_E34Au: db $E3, $14, $19, $1E ; enable vibrato
#_1B9352: #_E34Eu: db $60 ; duration
#_1B9353: #_E34Fu: db $C9 ; rest
#_1B9354: #_E350u: db $C9 ; rest
#_1B9355: #_E351u: db $06, $2D ; duration, params
#_1B9357: #_E353u: db $A7 ; play note Ds4
#_1B9358: #_E354u: db $A7 ; play note Ds4
#_1B9359: #_E355u: db $A6 ; play note D4
#_1B935A: #_E356u: db $A6 ; play note D4
#_1B935B: #_E357u: db $A9 ; play note F4
#_1B935C: #_E358u: db $A9 ; play note F4
#_1B935D: #_E359u: db $A8 ; play note E4
#_1B935E: #_E35Au: db $A8 ; play note E4
#_1B935F: #_E35Bu: db $30 ; duration
#_1B9360: #_E35Cu: db $C9 ; rest
#_1B9361: #_E35Du: db $60 ; duration
#_1B9362: #_E35Eu: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song12_Segment2_Track4:
#_1B9363: #_E35Fu: db $E0, $02 ; set instrument - timpani
#_1B9365: #_E361u: db $ED, $C8 ; set channel volume
#_1B9367: #_E363u: db $54, $7D ; duration, params
#_1B9369: #_E365u: db $86 ; play note Fs1
#_1B936A: #_E366u: db $0C ; duration
#_1B936B: #_E367u: db $86 ; play note Fs1
#_1B936C: #_E368u: db $EF : dw Song12_Sub_E42C : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song12_Segment2_Track5:
#_1B9370: #_E36Cu: db $E0, $10 ; set instrument - splash
#_1B9372: #_E36Eu: db $ED, $C8 ; set channel volume
#_1B9374: #_E370u: db $60 ; duration
#_1B9375: #_E371u: db $C9 ; rest
#_1B9376: #_E372u: db $30 ; duration
#_1B9377: #_E373u: db $C9 ; rest
#_1B9378: #_E374u: db $30, $7D ; duration, params
#_1B937A: #_E376u: db $B8 ; play note Gs5
#_1B937B: #_E377u: db $E0, $0A ; set instrument - strings B
#_1B937D: #_E379u: db $ED, $8C ; set channel volume
#_1B937F: #_E37Bu: db $12, $1D ; duration, params
#_1B9381: #_E37Du: db $BB ; play note B5
#_1B9382: #_E37Eu: db $03, $7D ; duration, params
#_1B9384: #_E380u: db $B9 ; play note A5
#_1B9385: #_E381u: db $BA ; play note As5
#_1B9386: #_E382u: db $12, $1D ; duration, params
#_1B9388: #_E384u: db $BB ; play note B5
#_1B9389: #_E385u: db $03, $7D ; duration, params
#_1B938B: #_E387u: db $B9 ; play note A5
#_1B938C: #_E388u: db $BA ; play note As5
#_1B938D: #_E389u: db $12, $1D ; duration, params
#_1B938F: #_E38Bu: db $BB ; play note B5
#_1B9390: #_E38Cu: db $03, $7D ; duration, params
#_1B9392: #_E38Eu: db $B9 ; play note A5
#_1B9393: #_E38Fu: db $BA ; play note As5
#_1B9394: #_E390u: db $12, $1D ; duration, params
#_1B9396: #_E392u: db $BB ; play note B5
#_1B9397: #_E393u: db $03, $7D ; duration, params
#_1B9399: #_E395u: db $B8 ; play note Gs5
#_1B939A: #_E396u: db $B9 ; play note A5
#_1B939B: #_E397u: db $12, $1D ; duration, params
#_1B939D: #_E399u: db $BB ; play note B5
#_1B939E: #_E39Au: db $03, $7D ; duration, params
#_1B93A0: #_E39Cu: db $B9 ; play note A5
#_1B93A1: #_E39Du: db $BA ; play note As5
#_1B93A2: #_E39Eu: db $12, $1D ; duration, params
#_1B93A4: #_E3A0u: db $BB ; play note B5
#_1B93A5: #_E3A1u: db $03, $7D ; duration, params
#_1B93A7: #_E3A3u: db $B9 ; play note A5
#_1B93A8: #_E3A4u: db $BA ; play note As5
#_1B93A9: #_E3A5u: db $12, $1D ; duration, params
#_1B93AB: #_E3A7u: db $BB ; play note B5
#_1B93AC: #_E3A8u: db $03, $7D ; duration, params
#_1B93AE: #_E3AAu: db $B9 ; play note A5
#_1B93AF: #_E3ABu: db $BA ; play note As5
#_1B93B0: #_E3ACu: db $18, $1D ; duration, params
#_1B93B2: #_E3AEu: db $BB ; play note B5

;---------------------------------------------------------------------------------------------------

Song12_Segment2_Track6:
#_1B93B3: #_E3AFu: db $E0, $10 ; set instrument - splash
#_1B93B5: #_E3B1u: db $ED, $C8 ; set channel volume
#_1B93B7: #_E3B3u: db $60 ; duration
#_1B93B8: #_E3B4u: db $C9 ; rest
#_1B93B9: #_E3B5u: db $3C ; duration
#_1B93BA: #_E3B6u: db $C9 ; rest
#_1B93BB: #_E3B7u: db $24, $7D ; duration, params
#_1B93BD: #_E3B9u: db $BC ; play note C6
#_1B93BE: #_E3BAu: db $E0, $0A ; set instrument - strings B
#_1B93C0: #_E3BCu: db $ED, $8C ; set channel volume
#_1B93C2: #_E3BEu: db $12, $1D ; duration, params
#_1B93C4: #_E3C0u: db $B9 ; play note A5
#_1B93C5: #_E3C1u: db $03, $7D ; duration, params
#_1B93C7: #_E3C3u: db $B7 ; play note G5
#_1B93C8: #_E3C4u: db $B8 ; play note Gs5
#_1B93C9: #_E3C5u: db $12, $1D ; duration, params
#_1B93CB: #_E3C7u: db $B9 ; play note A5
#_1B93CC: #_E3C8u: db $03, $7D ; duration, params
#_1B93CE: #_E3CAu: db $B7 ; play note G5
#_1B93CF: #_E3CBu: db $B8 ; play note Gs5
#_1B93D0: #_E3CCu: db $12, $1D ; duration, params
#_1B93D2: #_E3CEu: db $B9 ; play note A5
#_1B93D3: #_E3CFu: db $03, $7D ; duration, params
#_1B93D5: #_E3D1u: db $B7 ; play note G5
#_1B93D6: #_E3D2u: db $B8 ; play note Gs5
#_1B93D7: #_E3D3u: db $12, $1D ; duration, params
#_1B93D9: #_E3D5u: db $B9 ; play note A5
#_1B93DA: #_E3D6u: db $03, $7D ; duration, params
#_1B93DC: #_E3D8u: db $B7 ; play note G5
#_1B93DD: #_E3D9u: db $B8 ; play note Gs5
#_1B93DE: #_E3DAu: db $12, $1D ; duration, params
#_1B93E0: #_E3DCu: db $B9 ; play note A5
#_1B93E1: #_E3DDu: db $03, $7D ; duration, params
#_1B93E3: #_E3DFu: db $B7 ; play note G5
#_1B93E4: #_E3E0u: db $B8 ; play note Gs5
#_1B93E5: #_E3E1u: db $12, $1D ; duration, params
#_1B93E7: #_E3E3u: db $B9 ; play note A5
#_1B93E8: #_E3E4u: db $03, $7D ; duration, params
#_1B93EA: #_E3E6u: db $B7 ; play note G5
#_1B93EB: #_E3E7u: db $B8 ; play note Gs5
#_1B93EC: #_E3E8u: db $12, $1D ; duration, params
#_1B93EE: #_E3EAu: db $B9 ; play note A5
#_1B93EF: #_E3EBu: db $03, $7D ; duration, params
#_1B93F1: #_E3EDu: db $B7 ; play note G5
#_1B93F2: #_E3EEu: db $B8 ; play note Gs5
#_1B93F3: #_E3EFu: db $18, $1D ; duration, params
#_1B93F5: #_E3F1u: db $B9 ; play note A5
#_1B93F6: #_E3F2u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Sub_E3F3:
#_1B93F7: #_E3F3u: db $18, $1D ; duration, params
#_1B93F9: #_E3F5u: db $98 ; play note C3
#_1B93FA: #_E3F6u: db $18, $19 ; duration, params
#_1B93FC: #_E3F8u: db $98 ; play note C3
#_1B93FD: #_E3F9u: db $18, $18 ; duration, params
#_1B93FF: #_E3FBu: db $98 ; play note C3
#_1B9400: #_E3FCu: db $18, $17 ; duration, params
#_1B9402: #_E3FEu: db $98 ; play note C3
#_1B9403: #_E3FFu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Sub_E400:
#_1B9404: #_E400u: db $18, $1D ; duration, params
#_1B9406: #_E402u: db $91 ; play note F2
#_1B9407: #_E403u: db $18, $19 ; duration, params
#_1B9409: #_E405u: db $91 ; play note F2
#_1B940A: #_E406u: db $18, $18 ; duration, params
#_1B940C: #_E408u: db $91 ; play note F2
#_1B940D: #_E409u: db $18, $17 ; duration, params
#_1B940F: #_E40Bu: db $91 ; play note F2
#_1B9410: #_E40Cu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Sub_E40D:
#_1B9411: #_E40Du: db $54 ; duration
#_1B9412: #_E40Eu: db $85 ; play note F1
#_1B9413: #_E40Fu: db $0C ; duration
#_1B9414: #_E410u: db $85 ; play note F1
#_1B9415: #_E411u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Sub_E412:
#_1B9416: #_E412u: db $18, $1D ; duration, params
#_1B9418: #_E414u: db $99 ; play note Cs3
#_1B9419: #_E415u: db $18, $19 ; duration, params
#_1B941B: #_E417u: db $99 ; play note Cs3
#_1B941C: #_E418u: db $18, $18 ; duration, params
#_1B941E: #_E41Au: db $99 ; play note Cs3
#_1B941F: #_E41Bu: db $18, $17 ; duration, params
#_1B9421: #_E41Du: db $99 ; play note Cs3
#_1B9422: #_E41Eu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Sub_E41F:
#_1B9423: #_E41Fu: db $18, $1D ; duration, params
#_1B9425: #_E421u: db $92 ; play note Fs2
#_1B9426: #_E422u: db $18, $19 ; duration, params
#_1B9428: #_E424u: db $92 ; play note Fs2
#_1B9429: #_E425u: db $18, $18 ; duration, params
#_1B942B: #_E427u: db $92 ; play note Fs2
#_1B942C: #_E428u: db $18, $17 ; duration, params
#_1B942E: #_E42Au: db $92 ; play note Fs2
#_1B942F: #_E42Bu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song12_Sub_E42C:
#_1B9430: #_E42Cu: db $54 ; duration
#_1B9431: #_E42Du: db $86 ; play note Fs1
#_1B9432: #_E42Eu: db $0C ; duration
#_1B9433: #_E42Fu: db $86 ; play note Fs1
#_1B9434: #_E430u: db $00 ; End

;===================================================================================================

Song13_Fanfare:
#_1B9435: #_E431u: dw Song13_Segment0
#_1B9437: #_E433u: dw $0000 ; Song end

Song13_Segment0:
#_1B9439: #_E435u: dw Song13_Segment0_Track0
#_1B943B: #_E437u: dw Song13_Segment0_Track1
#_1B943D: #_E439u: dw Song13_Segment0_Track2
#_1B943F: #_E43Bu: dw Song13_Segment0_Track3
#_1B9441: #_E43Du: dw Song13_Segment0_Track4
#_1B9443: #_E43Fu: dw Song13_Segment0_Track5
#_1B9445: #_E441u: dw Song13_Segment0_Track6
#_1B9447: #_E443u: dw Song13_Segment0_Track7

;---------------------------------------------------------------------------------------------------

Song13_Segment0_Track0:
#_1B9449: #_E445u: db $FA, $15 ; set base percussion sample
#_1B944B: #_E447u: db $E5, $B4 ; set song volume
#_1B944D: #_E449u: db $E7, $1F ; set song tempo
#_1B944F: #_E44Bu: db $F5, $FF, $28, $28 ; configure EON, EVOLL, EVOLR
#_1B9453: #_E44Fu: db $F7, $02, $28, $02 ; configure EDL, EFB, FIR
#_1B9457: #_E453u: db $E0, $0B ; set instrument - trombone
#_1B9459: #_E455u: db $E3, $1E, $28, $15 ; enable vibrato
#_1B945D: #_E459u: db $ED, $F0 ; set channel volume
#_1B945F: #_E45Bu: db $0C ; duration
#_1B9460: #_E45Cu: db $C9 ; rest
#_1B9461: #_E45Du: db $06, $3D ; duration, params
#_1B9463: #_E45Fu: db $B2 ; play note D5
#_1B9464: #_E460u: db $B2 ; play note D5
#_1B9465: #_E461u: db $0C, $5D ; duration, params
#_1B9467: #_E463u: db $B2 ; play note D5
#_1B9468: #_E464u: db $06, $3D ; duration, params
#_1B946A: #_E466u: db $B0 ; play note C5
#_1B946B: #_E467u: db $B0 ; play note C5
#_1B946C: #_E468u: db $0C, $5D ; duration, params
#_1B946E: #_E46Au: db $B0 ; play note C5
#_1B946F: #_E46Bu: db $06, $3D ; duration, params
#_1B9471: #_E46Du: db $AE ; play note As4
#_1B9472: #_E46Eu: db $AE ; play note As4
#_1B9473: #_E46Fu: db $0C ; duration
#_1B9474: #_E470u: db $AE ; play note As4
#_1B9475: #_E471u: db $0C, $5D ; duration, params
#_1B9477: #_E473u: db $B0 ; play note C5
#_1B9478: #_E474u: db $EF : dw Song13_Sub_E6DC : db $01 ; call segment subroutine
#_1B947C: #_E478u: db $48 ; duration
#_1B947D: #_E479u: db $C8 ; sustain current note
#_1B947E: #_E47Au: db $E8, $48, $19 ; initiate gradual tempo change
#_1B9481: #_E47Du: db $0C ; duration
#_1B9482: #_E47Eu: db $C9 ; rest
#_1B9483: #_E47Fu: db $06, $3D ; duration, params
#_1B9485: #_E481u: db $B8 ; play note Gs5
#_1B9486: #_E482u: db $B8 ; play note Gs5
#_1B9487: #_E483u: db $0C, $5D ; duration, params
#_1B9489: #_E485u: db $B8 ; play note Gs5
#_1B948A: #_E486u: db $06, $3D ; duration, params
#_1B948C: #_E488u: db $B6 ; play note Fs5
#_1B948D: #_E489u: db $B6 ; play note Fs5
#_1B948E: #_E48Au: db $0C, $5D ; duration, params
#_1B9490: #_E48Cu: db $B6 ; play note Fs5
#_1B9491: #_E48Du: db $06, $3D ; duration, params
#_1B9493: #_E48Fu: db $B4 ; play note E5
#_1B9494: #_E490u: db $B4 ; play note E5
#_1B9495: #_E491u: db $0C ; duration
#_1B9496: #_E492u: db $B4 ; play note E5
#_1B9497: #_E493u: db $10, $5D ; duration, params
#_1B9499: #_E495u: db $B8 ; play note Gs5
#_1B949A: #_E496u: db $60, $6D ; duration, params
#_1B949C: #_E498u: db $BA ; play note As5
#_1B949D: #_E499u: db $18 ; duration
#_1B949E: #_E49Au: db $C9 ; rest
#_1B949F: #_E49Bu: db $C9 ; rest
#_1B94A0: #_E49Cu: db $08 ; duration
#_1B94A1: #_E49Du: db $C9 ; rest
#_1B94A2: #_E49Eu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song13_Segment0_Track1:
#_1B94A3: #_E49Fu: db $E0, $11 ; set instrument - trumpet
#_1B94A5: #_E4A1u: db $E3, $1E, $1E, $1E ; enable vibrato
#_1B94A9: #_E4A5u: db $ED, $FA ; set channel volume
#_1B94AB: #_E4A7u: db $60, $6D ; duration, params
#_1B94AD: #_E4A9u: db $91 ; play note F2
#_1B94AE: #_E4AAu: db $0C ; duration
#_1B94AF: #_E4ABu: db $C9 ; rest
#_1B94B0: #_E4ACu: db $06, $3D ; duration, params
#_1B94B2: #_E4AEu: db $91 ; play note F2
#_1B94B3: #_E4AFu: db $91 ; play note F2
#_1B94B4: #_E4B0u: db $0C, $6D ; duration, params
#_1B94B6: #_E4B2u: db $91 ; play note F2
#_1B94B7: #_E4B3u: db $91 ; play note F2
#_1B94B8: #_E4B4u: db $08, $5D ; duration, params
#_1B94BA: #_E4B6u: db $91 ; play note F2
#_1B94BB: #_E4B7u: db $92 ; play note Fs2
#_1B94BC: #_E4B8u: db $93 ; play note G2
#_1B94BD: #_E4B9u: db $60, $6D ; duration, params
#_1B94BF: #_E4BBu: db $94 ; play note Gs2
#_1B94C0: #_E4BCu: db $0C ; duration
#_1B94C1: #_E4BDu: db $C9 ; rest
#_1B94C2: #_E4BEu: db $06, $3D ; duration, params
#_1B94C4: #_E4C0u: db $94 ; play note Gs2
#_1B94C5: #_E4C1u: db $94 ; play note Gs2
#_1B94C6: #_E4C2u: db $0C, $6D ; duration, params
#_1B94C8: #_E4C4u: db $94 ; play note Gs2
#_1B94C9: #_E4C5u: db $94 ; play note Gs2
#_1B94CA: #_E4C6u: db $08, $5D ; duration, params
#_1B94CC: #_E4C8u: db $94 ; play note Gs2
#_1B94CD: #_E4C9u: db $95 ; play note A2
#_1B94CE: #_E4CAu: db $96 ; play note As2
#_1B94CF: #_E4CBu: db $64, $6D ; duration, params
#_1B94D1: #_E4CDu: db $97 ; play note B2
#_1B94D2: #_E4CEu: db $60 ; duration
#_1B94D3: #_E4CFu: db $8A ; play note As1
#_1B94D4: #_E4D0u: db $18 ; duration
#_1B94D5: #_E4D1u: db $C9 ; rest
#_1B94D6: #_E4D2u: db $C9 ; rest
#_1B94D7: #_E4D3u: db $08 ; duration
#_1B94D8: #_E4D4u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song13_Segment0_Track2:
#_1B94D9: #_E4D5u: db $E0, $0B ; set instrument - trombone
#_1B94DB: #_E4D7u: db $E3, $22, $30, $0A ; enable vibrato
#_1B94DF: #_E4DBu: db $ED, $DC ; set channel volume
#_1B94E1: #_E4DDu: db $F4, $0A ; set channel fine tuning
#_1B94E3: #_E4DFu: db $E1, $08 ; set panning - leaning right
#_1B94E5: #_E4E1u: db $0C ; duration
#_1B94E6: #_E4E2u: db $C9 ; rest
#_1B94E7: #_E4E3u: db $06, $3D ; duration, params
#_1B94E9: #_E4E5u: db $AE ; play note As4
#_1B94EA: #_E4E6u: db $AE ; play note As4
#_1B94EB: #_E4E7u: db $0C, $5D ; duration, params
#_1B94ED: #_E4E9u: db $AE ; play note As4
#_1B94EE: #_E4EAu: db $06, $3D ; duration, params
#_1B94F0: #_E4ECu: db $AD ; play note A4
#_1B94F1: #_E4EDu: db $AD ; play note A4
#_1B94F2: #_E4EEu: db $0C, $5D ; duration, params
#_1B94F4: #_E4F0u: db $AD ; play note A4
#_1B94F5: #_E4F1u: db $06, $3D ; duration, params
#_1B94F7: #_E4F3u: db $AB ; play note G4
#_1B94F8: #_E4F4u: db $AB ; play note G4
#_1B94F9: #_E4F5u: db $0C ; duration
#_1B94FA: #_E4F6u: db $AB ; play note G4
#_1B94FB: #_E4F7u: db $0C, $5D ; duration, params
#_1B94FD: #_E4F9u: db $AD ; play note A4
#_1B94FE: #_E4FAu: db $48, $48 ; duration, params
#_1B9500: #_E4FCu: db $C8 ; sustain current note
#_1B9501: #_E4FDu: db $0C ; duration
#_1B9502: #_E4FEu: db $C9 ; rest
#_1B9503: #_E4FFu: db $06, $3D ; duration, params
#_1B9505: #_E501u: db $B1 ; play note Cs5
#_1B9506: #_E502u: db $B1 ; play note Cs5
#_1B9507: #_E503u: db $0C, $5D ; duration, params
#_1B9509: #_E505u: db $B1 ; play note Cs5
#_1B950A: #_E506u: db $06, $3D ; duration, params
#_1B950C: #_E508u: db $B0 ; play note C5
#_1B950D: #_E509u: db $B0 ; play note C5
#_1B950E: #_E50Au: db $0C, $5D ; duration, params
#_1B9510: #_E50Cu: db $B0 ; play note C5
#_1B9511: #_E50Du: db $06, $3D ; duration, params
#_1B9513: #_E50Fu: db $AE ; play note As4
#_1B9514: #_E510u: db $AE ; play note As4
#_1B9515: #_E511u: db $0C ; duration
#_1B9516: #_E512u: db $AE ; play note As4
#_1B9517: #_E513u: db $0C, $5D ; duration, params
#_1B9519: #_E515u: db $B0 ; play note C5
#_1B951A: #_E516u: db $48 ; duration
#_1B951B: #_E517u: db $C8 ; sustain current note
#_1B951C: #_E518u: db $0C ; duration
#_1B951D: #_E519u: db $C9 ; rest
#_1B951E: #_E51Au: db $06, $3D ; duration, params
#_1B9520: #_E51Cu: db $B4 ; play note E5
#_1B9521: #_E51Du: db $B4 ; play note E5
#_1B9522: #_E51Eu: db $0C, $5D ; duration, params
#_1B9524: #_E520u: db $B4 ; play note E5
#_1B9525: #_E521u: db $06, $3D ; duration, params
#_1B9527: #_E523u: db $B3 ; play note Ds5
#_1B9528: #_E524u: db $B3 ; play note Ds5
#_1B9529: #_E525u: db $0C, $5D ; duration, params
#_1B952B: #_E527u: db $B3 ; play note Ds5
#_1B952C: #_E528u: db $06, $3D ; duration, params
#_1B952E: #_E52Au: db $B1 ; play note Cs5
#_1B952F: #_E52Bu: db $B1 ; play note Cs5
#_1B9530: #_E52Cu: db $0C ; duration
#_1B9531: #_E52Du: db $B1 ; play note Cs5
#_1B9532: #_E52Eu: db $10, $5D ; duration, params
#_1B9534: #_E530u: db $B4 ; play note E5
#_1B9535: #_E531u: db $60, $6D ; duration, params
#_1B9537: #_E533u: db $B7 ; play note G5
#_1B9538: #_E534u: db $18 ; duration
#_1B9539: #_E535u: db $C9 ; rest
#_1B953A: #_E536u: db $C9 ; rest
#_1B953B: #_E537u: db $08 ; duration
#_1B953C: #_E538u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song13_Segment0_Track3:
#_1B953D: #_E539u: db $E0, $0B ; set instrument - trombone
#_1B953F: #_E53Bu: db $E3, $14, $2C, $0A ; enable vibrato
#_1B9543: #_E53Fu: db $ED, $DC ; set channel volume
#_1B9545: #_E541u: db $F4, $0F ; set channel fine tuning
#_1B9547: #_E543u: db $E1, $0C ; set panning - leaning left
#_1B9549: #_E545u: db $0C ; duration
#_1B954A: #_E546u: db $C9 ; rest
#_1B954B: #_E547u: db $06, $3D ; duration, params
#_1B954D: #_E549u: db $AB ; play note G4
#_1B954E: #_E54Au: db $AB ; play note G4
#_1B954F: #_E54Bu: db $0C, $5D ; duration, params
#_1B9551: #_E54Du: db $AB ; play note G4
#_1B9552: #_E54Eu: db $06, $3D ; duration, params
#_1B9554: #_E550u: db $A9 ; play note F4
#_1B9555: #_E551u: db $A9 ; play note F4
#_1B9556: #_E552u: db $0C, $5D ; duration, params
#_1B9558: #_E554u: db $A9 ; play note F4
#_1B9559: #_E555u: db $06, $3D ; duration, params
#_1B955B: #_E557u: db $A7 ; play note Ds4
#_1B955C: #_E558u: db $A7 ; play note Ds4
#_1B955D: #_E559u: db $0C ; duration
#_1B955E: #_E55Au: db $A7 ; play note Ds4
#_1B955F: #_E55Bu: db $0C, $5D ; duration, params
#_1B9561: #_E55Du: db $A9 ; play note F4
#_1B9562: #_E55Eu: db $48, $48 ; duration, params
#_1B9564: #_E560u: db $C8 ; sustain current note
#_1B9565: #_E561u: db $0C ; duration
#_1B9566: #_E562u: db $C9 ; rest
#_1B9567: #_E563u: db $06, $3D ; duration, params
#_1B9569: #_E565u: db $AE ; play note As4
#_1B956A: #_E566u: db $AE ; play note As4
#_1B956B: #_E567u: db $0C, $5D ; duration, params
#_1B956D: #_E569u: db $AE ; play note As4
#_1B956E: #_E56Au: db $06, $3D ; duration, params
#_1B9570: #_E56Cu: db $AC ; play note Gs4
#_1B9571: #_E56Du: db $AC ; play note Gs4
#_1B9572: #_E56Eu: db $0C, $5D ; duration, params
#_1B9574: #_E570u: db $AC ; play note Gs4
#_1B9575: #_E571u: db $06, $3D ; duration, params
#_1B9577: #_E573u: db $AA ; play note Fs4
#_1B9578: #_E574u: db $AA ; play note Fs4
#_1B9579: #_E575u: db $0C ; duration
#_1B957A: #_E576u: db $AA ; play note Fs4
#_1B957B: #_E577u: db $0C, $5D ; duration, params
#_1B957D: #_E579u: db $AC ; play note Gs4
#_1B957E: #_E57Au: db $48 ; duration
#_1B957F: #_E57Bu: db $C8 ; sustain current note
#_1B9580: #_E57Cu: db $0C ; duration
#_1B9581: #_E57Du: db $C9 ; rest
#_1B9582: #_E57Eu: db $06, $3D ; duration, params
#_1B9584: #_E580u: db $B1 ; play note Cs5
#_1B9585: #_E581u: db $B1 ; play note Cs5
#_1B9586: #_E582u: db $0C, $5D ; duration, params
#_1B9588: #_E584u: db $B1 ; play note Cs5
#_1B9589: #_E585u: db $06, $3D ; duration, params
#_1B958B: #_E587u: db $AF ; play note B4
#_1B958C: #_E588u: db $AF ; play note B4
#_1B958D: #_E589u: db $0C, $5D ; duration, params
#_1B958F: #_E58Bu: db $AF ; play note B4
#_1B9590: #_E58Cu: db $06, $3D ; duration, params
#_1B9592: #_E58Eu: db $AD ; play note A4
#_1B9593: #_E58Fu: db $AD ; play note A4
#_1B9594: #_E590u: db $0C ; duration
#_1B9595: #_E591u: db $AD ; play note A4
#_1B9596: #_E592u: db $10, $5D ; duration, params
#_1B9598: #_E594u: db $B3 ; play note Ds5
#_1B9599: #_E595u: db $60, $6D ; duration, params
#_1B959B: #_E597u: db $B3 ; play note Ds5
#_1B959C: #_E598u: db $18 ; duration
#_1B959D: #_E599u: db $C9 ; rest
#_1B959E: #_E59Au: db $C9 ; rest
#_1B959F: #_E59Bu: db $08 ; duration
#_1B95A0: #_E59Cu: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song13_Segment0_Track4:
#_1B95A1: #_E59Du: db $E0, $0B ; set instrument - trombone
#_1B95A3: #_E59Fu: db $E3, $19, $32, $0E ; enable vibrato
#_1B95A7: #_E5A3u: db $ED, $DC ; set channel volume
#_1B95A9: #_E5A5u: db $F4, $05 ; set channel fine tuning
#_1B95AB: #_E5A7u: db $E1, $0E ; set panning - leaning left
#_1B95AD: #_E5A9u: db $0C ; duration
#_1B95AE: #_E5AAu: db $C9 ; rest
#_1B95AF: #_E5ABu: db $06, $3D ; duration, params
#_1B95B1: #_E5ADu: db $A7 ; play note Ds4
#_1B95B2: #_E5AEu: db $A7 ; play note Ds4
#_1B95B3: #_E5AFu: db $0C, $5D ; duration, params
#_1B95B5: #_E5B1u: db $A7 ; play note Ds4
#_1B95B6: #_E5B2u: db $06, $3D ; duration, params
#_1B95B8: #_E5B4u: db $A6 ; play note D4
#_1B95B9: #_E5B5u: db $A6 ; play note D4
#_1B95BA: #_E5B6u: db $0C, $5D ; duration, params
#_1B95BC: #_E5B8u: db $A6 ; play note D4
#_1B95BD: #_E5B9u: db $06, $3D ; duration, params
#_1B95BF: #_E5BBu: db $A4 ; play note C4
#_1B95C0: #_E5BCu: db $A4 ; play note C4
#_1B95C1: #_E5BDu: db $0C ; duration
#_1B95C2: #_E5BEu: db $A4 ; play note C4
#_1B95C3: #_E5BFu: db $0C, $5D ; duration, params
#_1B95C5: #_E5C1u: db $A6 ; play note D4
#_1B95C6: #_E5C2u: db $48, $48 ; duration, params
#_1B95C8: #_E5C4u: db $C8 ; sustain current note
#_1B95C9: #_E5C5u: db $0C ; duration
#_1B95CA: #_E5C6u: db $C9 ; rest
#_1B95CB: #_E5C7u: db $06, $3D ; duration, params
#_1B95CD: #_E5C9u: db $AA ; play note Fs4
#_1B95CE: #_E5CAu: db $AA ; play note Fs4
#_1B95CF: #_E5CBu: db $0C, $5D ; duration, params
#_1B95D1: #_E5CDu: db $AA ; play note Fs4
#_1B95D2: #_E5CEu: db $06, $3D ; duration, params
#_1B95D4: #_E5D0u: db $A9 ; play note F4
#_1B95D5: #_E5D1u: db $A9 ; play note F4
#_1B95D6: #_E5D2u: db $0C, $5D ; duration, params
#_1B95D8: #_E5D4u: db $A9 ; play note F4
#_1B95D9: #_E5D5u: db $06, $3D ; duration, params
#_1B95DB: #_E5D7u: db $A7 ; play note Ds4
#_1B95DC: #_E5D8u: db $A7 ; play note Ds4
#_1B95DD: #_E5D9u: db $0C ; duration
#_1B95DE: #_E5DAu: db $A7 ; play note Ds4
#_1B95DF: #_E5DBu: db $0C, $5D ; duration, params
#_1B95E1: #_E5DDu: db $A9 ; play note F4
#_1B95E2: #_E5DEu: db $48 ; duration
#_1B95E3: #_E5DFu: db $C8 ; sustain current note
#_1B95E4: #_E5E0u: db $0C ; duration
#_1B95E5: #_E5E1u: db $C9 ; rest
#_1B95E6: #_E5E2u: db $06, $3D ; duration, params
#_1B95E8: #_E5E4u: db $AD ; play note A4
#_1B95E9: #_E5E5u: db $AD ; play note A4
#_1B95EA: #_E5E6u: db $0C, $5D ; duration, params
#_1B95EC: #_E5E8u: db $AD ; play note A4
#_1B95ED: #_E5E9u: db $06, $3D ; duration, params
#_1B95EF: #_E5EBu: db $AC ; play note Gs4
#_1B95F0: #_E5ECu: db $AC ; play note Gs4
#_1B95F1: #_E5EDu: db $0C, $5D ; duration, params
#_1B95F3: #_E5EFu: db $AC ; play note Gs4
#_1B95F4: #_E5F0u: db $06, $3D ; duration, params
#_1B95F6: #_E5F2u: db $AA ; play note Fs4
#_1B95F7: #_E5F3u: db $AA ; play note Fs4
#_1B95F8: #_E5F4u: db $0C ; duration
#_1B95F9: #_E5F5u: db $AA ; play note Fs4
#_1B95FA: #_E5F6u: db $10, $5D ; duration, params
#_1B95FC: #_E5F8u: db $AF ; play note B4
#_1B95FD: #_E5F9u: db $60, $6D ; duration, params
#_1B95FF: #_E5FBu: db $AE ; play note As4
#_1B9600: #_E5FCu: db $18 ; duration
#_1B9601: #_E5FDu: db $C9 ; rest
#_1B9602: #_E5FEu: db $C9 ; rest
#_1B9603: #_E5FFu: db $08 ; duration
#_1B9604: #_E600u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song13_Segment0_Track5:
#_1B9605: #_E601u: db $E0, $0B ; set instrument - trombone
#_1B9607: #_E603u: db $E3, $1B, $1E, $1C ; enable vibrato
#_1B960B: #_E607u: db $ED, $A0 ; set channel volume
#_1B960D: #_E609u: db $E1, $06 ; set panning - leaning right
#_1B960F: #_E60Bu: db $14 ; duration
#_1B9610: #_E60Cu: db $C9 ; rest
#_1B9611: #_E60Du: db $06, $3D ; duration, params
#_1B9613: #_E60Fu: db $B2 ; play note D5
#_1B9614: #_E610u: db $B2 ; play note D5
#_1B9615: #_E611u: db $0C, $5D ; duration, params
#_1B9617: #_E613u: db $B2 ; play note D5
#_1B9618: #_E614u: db $06, $3D ; duration, params
#_1B961A: #_E616u: db $B0 ; play note C5
#_1B961B: #_E617u: db $B0 ; play note C5
#_1B961C: #_E618u: db $0C, $5D ; duration, params
#_1B961E: #_E61Au: db $B0 ; play note C5
#_1B961F: #_E61Bu: db $06, $3D ; duration, params
#_1B9621: #_E61Du: db $AE ; play note As4
#_1B9622: #_E61Eu: db $AE ; play note As4
#_1B9623: #_E61Fu: db $0C ; duration
#_1B9624: #_E620u: db $AE ; play note As4
#_1B9625: #_E621u: db $0C, $5D ; duration, params
#_1B9627: #_E623u: db $B0 ; play note C5
#_1B9628: #_E624u: db $EF : dw Song13_Sub_E6DC : db $01 ; call segment subroutine
#_1B962C: #_E628u: db $48 ; duration
#_1B962D: #_E629u: db $C8 ; sustain current note
#_1B962E: #_E62Au: db $0C ; duration
#_1B962F: #_E62Bu: db $C9 ; rest
#_1B9630: #_E62Cu: db $06, $3D ; duration, params
#_1B9632: #_E62Eu: db $B8 ; play note Gs5
#_1B9633: #_E62Fu: db $B8 ; play note Gs5
#_1B9634: #_E630u: db $0C, $5D ; duration, params
#_1B9636: #_E632u: db $B8 ; play note Gs5
#_1B9637: #_E633u: db $06, $3D ; duration, params
#_1B9639: #_E635u: db $B6 ; play note Fs5
#_1B963A: #_E636u: db $B6 ; play note Fs5
#_1B963B: #_E637u: db $0C, $5D ; duration, params
#_1B963D: #_E639u: db $B6 ; play note Fs5
#_1B963E: #_E63Au: db $06, $3D ; duration, params
#_1B9640: #_E63Cu: db $B4 ; play note E5
#_1B9641: #_E63Du: db $B4 ; play note E5
#_1B9642: #_E63Eu: db $0C ; duration
#_1B9643: #_E63Fu: db $B4 ; play note E5
#_1B9644: #_E640u: db $10, $5D ; duration, params
#_1B9646: #_E642u: db $B8 ; play note Gs5
#_1B9647: #_E643u: db $5C, $6D ; duration, params
#_1B9649: #_E645u: db $BA ; play note As5
#_1B964A: #_E646u: db $18 ; duration
#_1B964B: #_E647u: db $C9 ; rest
#_1B964C: #_E648u: db $C9 ; rest
#_1B964D: #_E649u: db $04 ; duration
#_1B964E: #_E64Au: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song13_Segment0_Track6:
#_1B964F: #_E64Bu: db $E0, $0F ; set instrument - harp
#_1B9651: #_E64Du: db $ED, $B4 ; set channel volume
#_1B9653: #_E64Fu: db $E1, $14 ; set panning - leaning left
#_1B9655: #_E651u: db $54 ; duration
#_1B9656: #_E652u: db $C9 ; rest
#_1B9657: #_E653u: db $0C, $4D ; duration, params
#_1B9659: #_E655u: db $A1 ; play note A3
#_1B965A: #_E656u: db $E2, $60, $00 ; initiate gradual panning change
#_1B965D: #_E659u: db $A6 ; play note D4
#_1B965E: #_E65Au: db $A6 ; play note D4
#_1B965F: #_E65Bu: db $AD ; play note A4
#_1B9660: #_E65Cu: db $B2 ; play note D5
#_1B9661: #_E65Du: db $0C, $3D ; duration, params
#_1B9663: #_E65Fu: db $B0 ; play note C5
#_1B9664: #_E660u: db $B5 ; play note F5
#_1B9665: #_E661u: db $54, $4D ; duration, params
#_1B9667: #_E663u: db $BC ; play note C6
#_1B9668: #_E664u: db $E1, $14 ; set panning - leaning left
#_1B966A: #_E666u: db $E2, $60, $00 ; initiate gradual panning change
#_1B966D: #_E669u: db $0C ; duration
#_1B966E: #_E66Au: db $A4 ; play note C4
#_1B966F: #_E66Bu: db $A9 ; play note F4
#_1B9670: #_E66Cu: db $A9 ; play note F4
#_1B9671: #_E66Du: db $B0 ; play note C5
#_1B9672: #_E66Eu: db $B5 ; play note F5
#_1B9673: #_E66Fu: db $0C, $3D ; duration, params
#_1B9675: #_E671u: db $B3 ; play note Ds5
#_1B9676: #_E672u: db $B8 ; play note Gs5
#_1B9677: #_E673u: db $64, $4D ; duration, params
#_1B9679: #_E675u: db $BF ; play note Ds6
#_1B967A: #_E676u: db $E0, $02 ; set instrument - timpani
#_1B967C: #_E678u: db $ED, $F0 ; set channel volume
#_1B967E: #_E67Au: db $E1, $0A ; set panning - balanced
#_1B9680: #_E67Cu: db $0C, $79 ; duration, params
#_1B9682: #_E67Eu: db $8F ; play note Ds2
#_1B9683: #_E67Fu: db $0C, $7A ; duration, params
#_1B9685: #_E681u: db $8F ; play note Ds2
#_1B9686: #_E682u: db $0C, $7B ; duration, params
#_1B9688: #_E684u: db $8F ; play note Ds2
#_1B9689: #_E685u: db $0C, $7C ; duration, params
#_1B968B: #_E687u: db $8F ; play note Ds2
#_1B968C: #_E688u: db $0C, $7D ; duration, params
#_1B968E: #_E68Au: db $8F ; play note Ds2
#_1B968F: #_E68Bu: db $0C, $7E ; duration, params
#_1B9691: #_E68Du: db $8F ; play note Ds2
#_1B9692: #_E68Eu: db $50, $7F ; duration, params
#_1B9694: #_E690u: db $8F ; play note Ds2

;---------------------------------------------------------------------------------------------------

Song13_Segment0_Track7:
#_1B9695: #_E691u: db $E0, $0F ; set instrument - harp
#_1B9697: #_E693u: db $ED, $B4 ; set channel volume
#_1B9699: #_E695u: db $E1, $14 ; set panning - leaning left
#_1B969B: #_E697u: db $5A ; duration
#_1B969C: #_E698u: db $C9 ; rest
#_1B969D: #_E699u: db $0C, $4D ; duration, params
#_1B969F: #_E69Bu: db $A4 ; play note C4
#_1B96A0: #_E69Cu: db $E2, $60, $00 ; initiate gradual panning change
#_1B96A3: #_E69Fu: db $A9 ; play note F4
#_1B96A4: #_E6A0u: db $A9 ; play note F4
#_1B96A5: #_E6A1u: db $B0 ; play note C5
#_1B96A6: #_E6A2u: db $B5 ; play note F5
#_1B96A7: #_E6A3u: db $0C, $3D ; duration, params
#_1B96A9: #_E6A5u: db $B2 ; play note D5
#_1B96AA: #_E6A6u: db $B9 ; play note A5
#_1B96AB: #_E6A7u: db $54 ; duration
#_1B96AC: #_E6A8u: db $C9 ; rest
#_1B96AD: #_E6A9u: db $E1, $14 ; set panning - leaning left
#_1B96AF: #_E6ABu: db $E2, $60, $00 ; initiate gradual panning change
#_1B96B2: #_E6AEu: db $0C, $4D ; duration, params
#_1B96B4: #_E6B0u: db $A7 ; play note Ds4
#_1B96B5: #_E6B1u: db $AC ; play note Gs4
#_1B96B6: #_E6B2u: db $AC ; play note Gs4
#_1B96B7: #_E6B3u: db $B3 ; play note Ds5
#_1B96B8: #_E6B4u: db $B8 ; play note Gs5
#_1B96B9: #_E6B5u: db $0C, $3D ; duration, params
#_1B96BB: #_E6B7u: db $B5 ; play note F5
#_1B96BC: #_E6B8u: db $BC ; play note C6
#_1B96BD: #_E6B9u: db $60 ; duration
#_1B96BE: #_E6BAu: db $C9 ; rest
#_1B96BF: #_E6BBu: db $E0, $02 ; set instrument - timpani
#_1B96C1: #_E6BDu: db $ED, $F0 ; set channel volume
#_1B96C3: #_E6BFu: db $E1, $0A ; set panning - balanced
#_1B96C5: #_E6C1u: db $06, $77 ; duration, params
#_1B96C7: #_E6C3u: db $8F ; play note Ds2
#_1B96C8: #_E6C4u: db $0C, $78 ; duration, params
#_1B96CA: #_E6C6u: db $8F ; play note Ds2
#_1B96CB: #_E6C7u: db $0C, $79 ; duration, params
#_1B96CD: #_E6C9u: db $8F ; play note Ds2
#_1B96CE: #_E6CAu: db $0C, $7A ; duration, params
#_1B96D0: #_E6CCu: db $8F ; play note Ds2
#_1B96D1: #_E6CDu: db $0C, $7B ; duration, params
#_1B96D3: #_E6CFu: db $8F ; play note Ds2
#_1B96D4: #_E6D0u: db $0C, $7C ; duration, params
#_1B96D6: #_E6D2u: db $8F ; play note Ds2
#_1B96D7: #_E6D3u: db $0C, $7D ; duration, params
#_1B96D9: #_E6D5u: db $8F ; play note Ds2
#_1B96DA: #_E6D6u: db $3C, $7F ; duration, params
#_1B96DC: #_E6D8u: db $8F ; play note Ds2
#_1B96DD: #_E6D9u: db $0C ; duration
#_1B96DE: #_E6DAu: db $C9 ; rest
#_1B96DF: #_E6DBu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song13_Sub_E6DC:
#_1B96E0: #_E6DCu: db $48, $48 ; duration, params
#_1B96E2: #_E6DEu: db $C8 ; sustain current note
#_1B96E3: #_E6DFu: db $0C ; duration
#_1B96E4: #_E6E0u: db $C9 ; rest
#_1B96E5: #_E6E1u: db $06, $3D ; duration, params
#_1B96E7: #_E6E3u: db $B5 ; play note F5
#_1B96E8: #_E6E4u: db $B5 ; play note F5
#_1B96E9: #_E6E5u: db $0C, $5D ; duration, params
#_1B96EB: #_E6E7u: db $B5 ; play note F5
#_1B96EC: #_E6E8u: db $06, $3D ; duration, params
#_1B96EE: #_E6EAu: db $B3 ; play note Ds5
#_1B96EF: #_E6EBu: db $B3 ; play note Ds5
#_1B96F0: #_E6ECu: db $0C, $5D ; duration, params
#_1B96F2: #_E6EEu: db $B3 ; play note Ds5
#_1B96F3: #_E6EFu: db $06, $3D ; duration, params
#_1B96F5: #_E6F1u: db $B1 ; play note Cs5
#_1B96F6: #_E6F2u: db $B1 ; play note Cs5
#_1B96F7: #_E6F3u: db $0C ; duration
#_1B96F8: #_E6F4u: db $B1 ; play note Cs5
#_1B96F9: #_E6F5u: db $0C, $5D ; duration, params
#_1B96FB: #_E6F7u: db $B3 ; play note Ds5
#_1B96FC: #_E6F8u: db $00 ; End

;===================================================================================================

Song14_Sanctuary:
#_1B96FD: #_E6F9u: dw Song14_Segment0
#_1B96FF: #_E6FBu: dw Song14_Segment1
#_1B9701: #_E6FDu: dw Song14_Segment2

Song14_Loop:
#_1B9703: #_E6FFu: dw Song14_Segment3
#_1B9705: #_E701u: dw Song14_Segment4
#_1B9707: #_E703u: dw $00FF, Song14_Loop ; Loop point
#_1B970B: #_E707u: dw $0000

Song14_Segment3:
#_1B970D: #_E709u: dw Song14_Segment3_Track0
#_1B970F: #_E70Bu: dw Song14_Segment3_Track1
#_1B9711: #_E70Du: dw Song14_Segment3_Track2
#_1B9713: #_E70Fu: dw Song14_Segment3_Track3
#_1B9715: #_E711u: dw Song14_Segment3_Track4
#_1B9717: #_E713u: dw Song14_Segment3_Track5
#_1B9719: #_E715u: dw $0000
#_1B971B: #_E717u: dw $0000

Song14_Segment1:
#_1B971D: #_E719u: dw Song14_Segment1_Track0
#_1B971F: #_E71Bu: dw Song14_Segment1_Track1
#_1B9721: #_E71Du: dw Song14_Segment1_Track2
#_1B9723: #_E71Fu: dw Song14_Segment1_Track3
#_1B9725: #_E721u: dw Song14_Segment1_Track4
#_1B9727: #_E723u: dw Song14_Segment1_Track5
#_1B9729: #_E725u: dw $0000
#_1B972B: #_E727u: dw $0000

Song14_Segment4:
#_1B972D: #_E729u: dw Song14_Segment4_Track0
#_1B972F: #_E72Bu: dw Song14_Segment4_Track1
#_1B9731: #_E72Du: dw Song14_Segment4_Track2
#_1B9733: #_E72Fu: dw Song14_Segment4_Track3
#_1B9735: #_E731u: dw Song14_Segment4_Track4
#_1B9737: #_E733u: dw Song14_Segment4_Track5
#_1B9739: #_E735u: dw $0000
#_1B973B: #_E737u: dw $0000

Song14_Segment2:
#_1B973D: #_E739u: dw Song14_Segment2_Track0
#_1B973F: #_E73Bu: dw Song14_Segment2_Track1
#_1B9741: #_E73Du: dw Song14_Segment2_Track2
#_1B9743: #_E73Fu: dw Song14_Segment2_Track3
#_1B9745: #_E741u: dw $0000
#_1B9747: #_E743u: dw Song14_Segment2_Track5
#_1B9749: #_E745u: dw $0000
#_1B974B: #_E747u: dw $0000

Song14_Segment0:
#_1B974D: #_E749u: dw Song14_Segment0_Track0
#_1B974F: #_E74Bu: dw $0000
#_1B9751: #_E74Du: dw $0000
#_1B9753: #_E74Fu: dw $0000
#_1B9755: #_E751u: dw $0000
#_1B9757: #_E753u: dw $0000
#_1B9759: #_E755u: dw $0000
#_1B975B: #_E757u: dw $0000

;---------------------------------------------------------------------------------------------------

Song14_Segment3_Track0:
#_1B975D: #_E759u: db $30, $7D ; duration, params
#_1B975F: #_E75Bu: db $AB ; play note G4
#_1B9760: #_E75Cu: db $A4 ; play note C4
#_1B9761: #_E75Du: db $AF ; play note B4
#_1B9762: #_E75Eu: db $A6 ; play note D4
#_1B9763: #_E75Fu: db $AB ; play note G4
#_1B9764: #_E760u: db $A4 ; play note C4
#_1B9765: #_E761u: db $AF ; play note B4
#_1B9766: #_E762u: db $B2 ; play note D5
#_1B9767: #_E763u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song14_Segment3_Track1:
#_1B9768: #_E764u: db $EF : dw Song14_Sub_E906 : db $01 ; call segment subroutine
#_1B976C: #_E768u: db $C9 ; rest
#_1B976D: #_E769u: db $30 ; duration
#_1B976E: #_E76Au: db $A7 ; play note Ds4
#_1B976F: #_E76Bu: db $18 ; duration
#_1B9770: #_E76Cu: db $B0 ; play note C5
#_1B9771: #_E76Du: db $C8 ; sustain current note
#_1B9772: #_E76Eu: db $30 ; duration
#_1B9773: #_E76Fu: db $B0 ; play note C5
#_1B9774: #_E770u: db $18 ; duration
#_1B9775: #_E771u: db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song14_Segment3_Track2:
#_1B9776: #_E772u: db $60, $6D ; duration, params
#_1B9778: #_E774u: db $8C ; play note C2
#_1B9779: #_E775u: db $8B ; play note B1
#_1B977A: #_E776u: db $8A ; play note As1
#_1B977B: #_E777u: db $89 ; play note A1

;---------------------------------------------------------------------------------------------------

Song14_Segment3_Track3:
#_1B977C: #_E778u: db $60 ; duration
#_1B977D: #_E779u: db $C9 ; rest
#_1B977E: #_E77Au: db $C9 ; rest
#_1B977F: #_E77Bu: db $18, $7D ; duration, params
#_1B9781: #_E77Du: db $93 ; play note G2
#_1B9782: #_E77Eu: db $94 ; play note Gs2
#_1B9783: #_E77Fu: db $30 ; duration
#_1B9784: #_E780u: db $93 ; play note G2
#_1B9785: #_E781u: db $18 ; duration
#_1B9786: #_E782u: db $93 ; play note G2
#_1B9787: #_E783u: db $94 ; play note Gs2
#_1B9788: #_E784u: db $30 ; duration
#_1B9789: #_E785u: db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song14_Segment3_Track4:
#_1B978A: #_E786u: db $60, $6D ; duration, params
#_1B978C: #_E788u: db $98 ; play note C3
#_1B978D: #_E789u: db $97 ; play note B2
#_1B978E: #_E78Au: db $96 ; play note As2
#_1B978F: #_E78Bu: db $95 ; play note A2

;---------------------------------------------------------------------------------------------------

Song14_Segment3_Track5:
#_1B9790: #_E78Cu: db $08 ; duration
#_1B9791: #_E78Du: db $C9 ; rest
#_1B9792: #_E78Eu: db $18, $7D ; duration, params
#_1B9794: #_E790u: db $AB ; play note G4
#_1B9795: #_E791u: db $A7 ; play note Ds4
#_1B9796: #_E792u: db $A4 ; play note C4
#_1B9797: #_E793u: db $B0 ; play note C5
#_1B9798: #_E794u: db $AF ; play note B4
#_1B9799: #_E795u: db $AB ; play note G4
#_1B979A: #_E796u: db $A6 ; play note D4
#_1B979B: #_E797u: db $A3 ; play note B3
#_1B979C: #_E798u: db $AB ; play note G4
#_1B979D: #_E799u: db $A7 ; play note Ds4
#_1B979E: #_E79Au: db $A4 ; play note C4
#_1B979F: #_E79Bu: db $B0 ; play note C5
#_1B97A0: #_E79Cu: db $AF ; play note B4
#_1B97A1: #_E79Du: db $B0 ; play note C5
#_1B97A2: #_E79Eu: db $B2 ; play note D5
#_1B97A3: #_E79Fu: db $10 ; duration
#_1B97A4: #_E7A0u: db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song14_Segment1_Track0:
#_1B97A5: #_E7A1u: db $ED, $C8 ; set channel volume
#_1B97A7: #_E7A3u: db $E0, $15 ; set instrument - choir
#_1B97A9: #_E7A5u: db $E3, $0A, $1E, $64 ; enable vibrato
#_1B97AD: #_E7A9u: db $18, $7D ; duration, params
#_1B97AF: #_E7ABu: db $9B ; play note Ds3
#_1B97B0: #_E7ACu: db $9D ; play note F3
#_1B97B1: #_E7ADu: db $30 ; duration
#_1B97B2: #_E7AEu: db $9A ; play note D3
#_1B97B3: #_E7AFu: db $EF : dw Song14_Sub_E913 : db $01 ; call segment subroutine
#_1B97B7: #_E7B3u: db $18, $7D ; duration, params
#_1B97B9: #_E7B5u: db $9B ; play note Ds3
#_1B97BA: #_E7B6u: db $9D ; play note F3
#_1B97BB: #_E7B7u: db $30 ; duration
#_1B97BC: #_E7B8u: db $9A ; play note D3
#_1B97BD: #_E7B9u: db $60, $68 ; duration, params
#_1B97BF: #_E7BBu: db $C8 ; sustain current note
#_1B97C0: #_E7BCu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song14_Segment1_Track1:
#_1B97C1: #_E7BDu: db $ED, $C8 ; set channel volume
#_1B97C3: #_E7BFu: db $E0, $15 ; set instrument - choir
#_1B97C5: #_E7C1u: db $E3, $0E, $28, $50 ; enable vibrato
#_1B97C9: #_E7C5u: db $30, $7D ; duration, params
#_1B97CB: #_E7C7u: db $98 ; play note C3
#_1B97CC: #_E7C8u: db $97 ; play note B2
#_1B97CD: #_E7C9u: db $30, $5D ; duration, params
#_1B97CF: #_E7CBu: db $C8 ; sustain current note
#_1B97D0: #_E7CCu: db $30, $7D ; duration, params
#_1B97D2: #_E7CEu: db $98 ; play note C3
#_1B97D3: #_E7CFu: db $60 ; duration
#_1B97D4: #_E7D0u: db $97 ; play note B2
#_1B97D5: #_E7D1u: db $30 ; duration
#_1B97D6: #_E7D2u: db $98 ; play note C3
#_1B97D7: #_E7D3u: db $97 ; play note B2
#_1B97D8: #_E7D4u: db $60, $68 ; duration, params
#_1B97DA: #_E7D6u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song14_Segment1_Track2:
#_1B97DB: #_E7D7u: db $ED, $C8 ; set channel volume
#_1B97DD: #_E7D9u: db $E0, $15 ; set instrument - choir
#_1B97DF: #_E7DBu: db $E3, $14, $1A, $46 ; enable vibrato
#_1B97E3: #_E7DFu: db $60, $7D ; duration, params
#_1B97E5: #_E7E1u: db $88 ; play note Gs1
#_1B97E6: #_E7E2u: db $F9, $28, $08, $87 ; slide to note
#_1B97EA: #_E7E6u: db $30, $6D ; duration, params
#_1B97EC: #_E7E8u: db $C8 ; sustain current note
#_1B97ED: #_E7E9u: db $30, $7D ; duration, params
#_1B97EF: #_E7EBu: db $88 ; play note Gs1
#_1B97F0: #_E7ECu: db $60, $6D ; duration, params
#_1B97F2: #_E7EEu: db $87 ; play note G1
#_1B97F3: #_E7EFu: db $30, $7D ; duration, params
#_1B97F5: #_E7F1u: db $88 ; play note Gs1
#_1B97F6: #_E7F2u: db $87 ; play note G1
#_1B97F7: #_E7F3u: db $60, $68 ; duration, params
#_1B97F9: #_E7F5u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song14_Segment1_Track3:
#_1B97FA: #_E7F6u: db $ED, $C8 ; set channel volume
#_1B97FC: #_E7F8u: db $E0, $15 ; set instrument - choir
#_1B97FE: #_E7FAu: db $E3, $14, $1E, $5A ; enable vibrato
#_1B9802: #_E7FEu: db $60 ; duration
#_1B9803: #_E7FFu: db $C9 ; rest
#_1B9804: #_E800u: db $30 ; duration
#_1B9805: #_E801u: db $C9 ; rest
#_1B9806: #_E802u: db $C9 ; rest
#_1B9807: #_E803u: db $60 ; duration
#_1B9808: #_E804u: db $C9 ; rest
#_1B9809: #_E805u: db $30, $7D ; duration, params
#_1B980B: #_E807u: db $92 ; play note Fs2
#_1B980C: #_E808u: db $91 ; play note F2
#_1B980D: #_E809u: db $60, $68 ; duration, params
#_1B980F: #_E80Bu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song14_Segment1_Track4:
#_1B9810: #_E80Cu: db $ED, $C8 ; set channel volume
#_1B9812: #_E80Eu: db $E0, $15 ; set instrument - choir
#_1B9814: #_E810u: db $E3, $0A, $12, $3C ; enable vibrato
#_1B9818: #_E814u: db $60 ; duration
#_1B9819: #_E815u: db $C9 ; rest
#_1B981A: #_E816u: db $C9 ; rest
#_1B981B: #_E817u: db $C9 ; rest
#_1B981C: #_E818u: db $30, $7D ; duration, params
#_1B981E: #_E81Au: db $A4 ; play note C4
#_1B981F: #_E81Bu: db $F9, $16, $02, $A6 ; slide to note
#_1B9823: #_E81Fu: db $A3 ; play note B3
#_1B9824: #_E820u: db $60, $68 ; duration, params
#_1B9826: #_E822u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song14_Segment1_Track5:
#_1B9827: #_E823u: db $ED, $A0 ; set channel volume
#_1B9829: #_E825u: db $E0, $15 ; set instrument - choir
#_1B982B: #_E827u: db $E3, $0E, $1E, $50 ; enable vibrato
#_1B982F: #_E82Bu: db $08 ; duration
#_1B9830: #_E82Cu: db $C9 ; rest
#_1B9831: #_E82Du: db $30, $7D ; duration, params
#_1B9833: #_E82Fu: db $9B ; play note Ds3
#_1B9834: #_E830u: db $F9, $14, $04, $9D ; slide to note
#_1B9838: #_E834u: db $9A ; play note D3
#_1B9839: #_E835u: db $EF : dw Song14_Sub_E913 : db $01 ; call segment subroutine
#_1B983D: #_E839u: db $18, $7D ; duration, params
#_1B983F: #_E83Bu: db $9B ; play note Ds3
#_1B9840: #_E83Cu: db $9D ; play note F3
#_1B9841: #_E83Du: db $30 ; duration
#_1B9842: #_E83Eu: db $9A ; play note D3
#_1B9843: #_E83Fu: db $58, $68 ; duration, params
#_1B9845: #_E841u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song14_Segment4_Track0:
#_1B9846: #_E842u: db $30, $7D ; duration, params
#_1B9848: #_E844u: db $B0 ; play note C5
#_1B9849: #_E845u: db $B0 ; play note C5
#_1B984A: #_E846u: db $C8 ; sustain current note
#_1B984B: #_E847u: db $AF ; play note B4
#_1B984C: #_E848u: db $B0 ; play note C5
#_1B984D: #_E849u: db $B0 ; play note C5
#_1B984E: #_E84Au: db $C8 ; sustain current note
#_1B984F: #_E84Bu: db $AF ; play note B4
#_1B9850: #_E84Cu: db $B0 ; play note C5
#_1B9851: #_E84Du: db $A7 ; play note Ds4
#_1B9852: #_E84Eu: db $C8 ; sustain current note
#_1B9853: #_E84Fu: db $AA ; play note Fs4
#_1B9854: #_E850u: db $60 ; duration
#_1B9855: #_E851u: db $AF ; play note B4
#_1B9856: #_E852u: db $C8 ; sustain current note
#_1B9857: #_E853u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song14_Segment4_Track1:
#_1B9858: #_E854u: db $18 ; duration
#_1B9859: #_E855u: db $C9 ; rest
#_1B985A: #_E856u: db $30, $7D ; duration, params
#_1B985C: #_E858u: db $AB ; play note G4
#_1B985D: #_E859u: db $18 ; duration
#_1B985E: #_E85Au: db $B7 ; play note G5
#_1B985F: #_E85Bu: db $C8 ; sustain current note
#_1B9860: #_E85Cu: db $30 ; duration
#_1B9861: #_E85Du: db $B2 ; play note D5
#_1B9862: #_E85Eu: db $18 ; duration
#_1B9863: #_E85Fu: db $AB ; play note G4
#_1B9864: #_E860u: db $C8 ; sustain current note
#_1B9865: #_E861u: db $30 ; duration
#_1B9866: #_E862u: db $AB ; play note G4
#_1B9867: #_E863u: db $18 ; duration
#_1B9868: #_E864u: db $B7 ; play note G5
#_1B9869: #_E865u: db $C8 ; sustain current note
#_1B986A: #_E866u: db $30 ; duration
#_1B986B: #_E867u: db $B2 ; play note D5
#_1B986C: #_E868u: db $18 ; duration
#_1B986D: #_E869u: db $AB ; play note G4
#_1B986E: #_E86Au: db $C8 ; sustain current note
#_1B986F: #_E86Bu: db $30 ; duration
#_1B9870: #_E86Cu: db $AD ; play note A4
#_1B9871: #_E86Du: db $18 ; duration
#_1B9872: #_E86Eu: db $A4 ; play note C4
#_1B9873: #_E86Fu: db $C8 ; sustain current note
#_1B9874: #_E870u: db $30 ; duration
#_1B9875: #_E871u: db $A7 ; play note Ds4
#_1B9876: #_E872u: db $18 ; duration
#_1B9877: #_E873u: db $B0 ; play note C5
#_1B9878: #_E874u: db $60 ; duration
#_1B9879: #_E875u: db $AB ; play note G4
#_1B987A: #_E876u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song14_Segment4_Track2:
#_1B987B: #_E877u: db $60, $6D ; duration, params
#_1B987D: #_E879u: db $88 ; play note Gs1
#_1B987E: #_E87Au: db $87 ; play note G1
#_1B987F: #_E87Bu: db $88 ; play note Gs1
#_1B9880: #_E87Cu: db $87 ; play note G1
#_1B9881: #_E87Du: db $86 ; play note Fs1
#_1B9882: #_E87Eu: db $86 ; play note Fs1
#_1B9883: #_E87Fu: db $87 ; play note G1
#_1B9884: #_E880u: db $87 ; play note G1

;---------------------------------------------------------------------------------------------------

Song14_Segment4_Track3:
#_1B9885: #_E881u: db $30 ; duration
#_1B9886: #_E882u: db $C9 ; rest
#_1B9887: #_E883u: db $18, $7D ; duration, params
#_1B9889: #_E885u: db $A7 ; play note Ds4
#_1B988A: #_E886u: db $A4 ; play note C4
#_1B988B: #_E887u: db $A3 ; play note B3
#_1B988C: #_E888u: db $A4 ; play note C4
#_1B988D: #_E889u: db $A6 ; play note D4
#_1B988E: #_E88Au: db $A3 ; play note B3
#_1B988F: #_E88Bu: db $30 ; duration
#_1B9890: #_E88Cu: db $C9 ; rest
#_1B9891: #_E88Du: db $18 ; duration
#_1B9892: #_E88Eu: db $A7 ; play note Ds4
#_1B9893: #_E88Fu: db $A4 ; play note C4
#_1B9894: #_E890u: db $A3 ; play note B3
#_1B9895: #_E891u: db $A4 ; play note C4
#_1B9896: #_E892u: db $A6 ; play note D4
#_1B9897: #_E893u: db $A3 ; play note B3
#_1B9898: #_E894u: db $A4 ; play note C4
#_1B9899: #_E895u: db $A3 ; play note B3
#_1B989A: #_E896u: db $A4 ; play note C4
#_1B989B: #_E897u: db $A1 ; play note A3
#_1B989C: #_E898u: db $9E ; play note Fs3
#_1B989D: #_E899u: db $A1 ; play note A3
#_1B989E: #_E89Au: db $A7 ; play note Ds4
#_1B989F: #_E89Bu: db $A6 ; play note D4
#_1B98A0: #_E89Cu: db $A6 ; play note D4
#_1B98A1: #_E89Du: db $A9 ; play note F4
#_1B98A2: #_E89Eu: db $AC ; play note Gs4
#_1B98A3: #_E89Fu: db $AB ; play note G4
#_1B98A4: #_E8A0u: db $C8 ; sustain current note
#_1B98A5: #_E8A1u: db $A9 ; play note F4
#_1B98A6: #_E8A2u: db $A6 ; play note D4
#_1B98A7: #_E8A3u: db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song14_Segment4_Track4:
#_1B98A8: #_E8A4u: db $60, $6D ; duration, params
#_1B98AA: #_E8A6u: db $94 ; play note Gs2
#_1B98AB: #_E8A7u: db $93 ; play note G2
#_1B98AC: #_E8A8u: db $94 ; play note Gs2
#_1B98AD: #_E8A9u: db $93 ; play note G2
#_1B98AE: #_E8AAu: db $92 ; play note Fs2
#_1B98AF: #_E8ABu: db $92 ; play note Fs2
#_1B98B0: #_E8ACu: db $93 ; play note G2
#_1B98B1: #_E8ADu: db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song14_Segment4_Track5:
#_1B98B2: #_E8AEu: db $08 ; duration
#_1B98B3: #_E8AFu: db $C9 ; rest
#_1B98B4: #_E8B0u: db $18, $7D ; duration, params
#_1B98B6: #_E8B2u: db $B0 ; play note C5
#_1B98B7: #_E8B3u: db $AB ; play note G4
#_1B98B8: #_E8B4u: db $B0 ; play note C5
#_1B98B9: #_E8B5u: db $B7 ; play note G5
#_1B98BA: #_E8B6u: db $C8 ; sustain current note
#_1B98BB: #_E8B7u: db $B2 ; play note D5
#_1B98BC: #_E8B8u: db $AF ; play note B4
#_1B98BD: #_E8B9u: db $AB ; play note G4
#_1B98BE: #_E8BAu: db $B0 ; play note C5
#_1B98BF: #_E8BBu: db $AB ; play note G4
#_1B98C0: #_E8BCu: db $B0 ; play note C5
#_1B98C1: #_E8BDu: db $B7 ; play note G5
#_1B98C2: #_E8BEu: db $C8 ; sustain current note
#_1B98C3: #_E8BFu: db $B2 ; play note D5
#_1B98C4: #_E8C0u: db $AF ; play note B4
#_1B98C5: #_E8C1u: db $AB ; play note G4
#_1B98C6: #_E8C2u: db $B0 ; play note C5
#_1B98C7: #_E8C3u: db $AD ; play note A4
#_1B98C8: #_E8C4u: db $A7 ; play note Ds4
#_1B98C9: #_E8C5u: db $A4 ; play note C4
#_1B98CA: #_E8C6u: db $C8 ; sustain current note
#_1B98CB: #_E8C7u: db $A7 ; play note Ds4
#_1B98CC: #_E8C8u: db $AA ; play note Fs4
#_1B98CD: #_E8C9u: db $B0 ; play note C5
#_1B98CE: #_E8CAu: db $60 ; duration
#_1B98CF: #_E8CBu: db $AF ; play note B4
#_1B98D0: #_E8CCu: db $58 ; duration
#_1B98D1: #_E8CDu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song14_Segment2_Track0:
#_1B98D2: #_E8CEu: db $30, $7D ; duration, params
#_1B98D4: #_E8D0u: db $AB ; play note G4
#_1B98D5: #_E8D1u: db $A4 ; play note C4
#_1B98D6: #_E8D2u: db $AF ; play note B4
#_1B98D7: #_E8D3u: db $A6 ; play note D4
#_1B98D8: #_E8D4u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song14_Segment2_Track1:
#_1B98D9: #_E8D5u: db $EF : dw Song14_Sub_E906 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song14_Segment2_Track2:
#_1B98DD: #_E8D9u: db $60 ; duration
#_1B98DE: #_E8DAu: db $C9 ; rest
#_1B98DF: #_E8DBu: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song14_Segment2_Track3:
#_1B98E0: #_E8DCu: db $60 ; duration
#_1B98E1: #_E8DDu: db $C9 ; rest
#_1B98E2: #_E8DEu: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song14_Segment2_Track5:
#_1B98E3: #_E8DFu: db $08 ; duration
#_1B98E4: #_E8E0u: db $C9 ; rest
#_1B98E5: #_E8E1u: db $18, $7D ; duration, params
#_1B98E7: #_E8E3u: db $AB ; play note G4
#_1B98E8: #_E8E4u: db $A7 ; play note Ds4
#_1B98E9: #_E8E5u: db $A4 ; play note C4
#_1B98EA: #_E8E6u: db $B0 ; play note C5
#_1B98EB: #_E8E7u: db $AF ; play note B4
#_1B98EC: #_E8E8u: db $AB ; play note G4
#_1B98ED: #_E8E9u: db $A6 ; play note D4
#_1B98EE: #_E8EAu: db $10 ; duration
#_1B98EF: #_E8EBu: db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song14_Segment0_Track0:
#_1B98F0: #_E8ECu: db $FA, $18 ; set base percussion sample
#_1B98F2: #_E8EEu: db $E5, $C8 ; set song volume
#_1B98F4: #_E8F0u: db $E7, $19 ; set song tempo
#_1B98F6: #_E8F2u: db $F5, $FF, $1E, $1E ; configure EON, EVOLL, EVOLR
#_1B98FA: #_E8F6u: db $F7, $02, $14, $02 ; configure EDL, EFB, FIR
#_1B98FE: #_E8FAu: db $ED, $C8 ; set channel volume
#_1B9900: #_E8FCu: db $E0, $15 ; set instrument - choir
#_1B9902: #_E8FEu: db $E3, $0A, $1E, $64 ; enable vibrato
#_1B9906: #_E902u: db $30 ; duration
#_1B9907: #_E903u: db $C9 ; rest
#_1B9908: #_E904u: db $00 ; End
#_1B9909: #_E905u: db $00

;---------------------------------------------------------------------------------------------------

Song14_Sub_E906:
#_1B990A: #_E906u: db $18 ; duration
#_1B990B: #_E907u: db $C9 ; rest
#_1B990C: #_E908u: db $30, $7D ; duration, params
#_1B990E: #_E90Au: db $A7 ; play note Ds4
#_1B990F: #_E90Bu: db $18 ; duration
#_1B9910: #_E90Cu: db $B0 ; play note C5
#_1B9911: #_E90Du: db $C8 ; sustain current note
#_1B9912: #_E90Eu: db $30 ; duration
#_1B9913: #_E90Fu: db $AB ; play note G4
#_1B9914: #_E910u: db $18 ; duration
#_1B9915: #_E911u: db $A3 ; play note B3
#_1B9916: #_E912u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song14_Sub_E913:
#_1B9917: #_E913u: db $30, $5D ; duration, params
#_1B9919: #_E915u: db $C8 ; sustain current note
#_1B991A: #_E916u: db $18, $7D ; duration, params
#_1B991C: #_E918u: db $9B ; play note Ds3
#_1B991D: #_E919u: db $9D ; play note F3
#_1B991E: #_E91Au: db $60, $6D ; duration, params
#_1B9920: #_E91Cu: db $9A ; play note D3
#_1B9921: #_E91Du: db $00 ; End

;===================================================================================================

Song15_Boss:
#_1B9922: #_E91Eu: dw Song15_Segment0

Song15_Loop:
#_1B9924: #_E920u: dw Song15_Segment1
#_1B9926: #_E922u: dw Song15_Segment2
#_1B9928: #_E924u: dw $00FF, Song15_Loop ; Loop point
#_1B992C: #_E928u: dw $0000

Song15_Segment1:
#_1B992E: #_E92Au: dw Song15_Segment1_Track0
#_1B9930: #_E92Cu: dw Song15_Segment1_Track1
#_1B9932: #_E92Eu: dw Song15_Segment1_Track2
#_1B9934: #_E930u: dw Song15_Segment1_Track3
#_1B9936: #_E932u: dw Song15_Segment1_Track4
#_1B9938: #_E934u: dw $0000
#_1B993A: #_E936u: dw $0000
#_1B993C: #_E938u: dw $0000

Song15_Segment0:
#_1B993E: #_E93Au: dw Song15_Segment0_Track0
#_1B9940: #_E93Cu: dw Song15_Segment0_Track1
#_1B9942: #_E93Eu: dw Song15_Segment0_Track2
#_1B9944: #_E940u: dw Song15_Segment0_Track3
#_1B9946: #_E942u: dw Song15_Segment0_Track4
#_1B9948: #_E944u: dw $0000
#_1B994A: #_E946u: dw $0000
#_1B994C: #_E948u: dw $0000

Song15_Unused0:
#_1B994E: #_E94Au: dw Song15_Unused0_Track0
#_1B9950: #_E94Cu: dw Song15_Unused0_Track1
#_1B9952: #_E94Eu: dw Song15_Unused0_Track2
#_1B9954: #_E950u: dw $0000
#_1B9956: #_E952u: dw $0000
#_1B9958: #_E954u: dw $0000
#_1B995A: #_E956u: dw $0000
#_1B995C: #_E958u: dw $0000

Song15_Segment2:
#_1B995E: #_E95Au: dw Song15_Segment2_Track0
#_1B9960: #_E95Cu: dw Song15_Segment2_Track1
#_1B9962: #_E95Eu: dw Song15_Segment2_Track2
#_1B9964: #_E960u: dw Song15_Segment2_Track3
#_1B9966: #_E962u: dw Song15_Segment2_Track4
#_1B9968: #_E964u: dw $0000
#_1B996A: #_E966u: dw $0000
#_1B996C: #_E968u: dw $0000

;---------------------------------------------------------------------------------------------------

Song15_Segment1_Track0:
#_1B996E: #_E96Au: db $ED, $C8 ; set channel volume
#_1B9970: #_E96Cu: db $E0, $02 ; set instrument - timpani
#_1B9972: #_E96Eu: db $0C, $5D ; duration, params
#_1B9974: #_E970u: db $8E ; play note D2
#_1B9975: #_E971u: db $89 ; play note A1
#_1B9976: #_E972u: db $8E ; play note D2
#_1B9977: #_E973u: db $89 ; play note A1
#_1B9978: #_E974u: db $8E ; play note D2
#_1B9979: #_E975u: db $89 ; play note A1
#_1B997A: #_E976u: db $8E ; play note D2
#_1B997B: #_E977u: db $89 ; play note A1
#_1B997C: #_E978u: db $EF : dw Song15_Sub_EBEE : db $03 ; call segment subroutine
#_1B9980: #_E97Cu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song15_Segment1_Track1:
#_1B9981: #_E97Du: db $ED, $DC ; set channel volume
#_1B9983: #_E97Fu: db $E0, $0B ; set instrument - trombone
#_1B9985: #_E981u: db $0C, $6D ; duration, params
#_1B9987: #_E983u: db $95 ; play note A2
#_1B9988: #_E984u: db $9C ; play note E3
#_1B9989: #_E985u: db $A1 ; play note A3
#_1B998A: #_E986u: db $95 ; play note A2
#_1B998B: #_E987u: db $9C ; play note E3
#_1B998C: #_E988u: db $A1 ; play note A3
#_1B998D: #_E989u: db $96 ; play note As2
#_1B998E: #_E98Au: db $A2 ; play note As3
#_1B998F: #_E98Bu: db $95 ; play note A2
#_1B9990: #_E98Cu: db $9C ; play note E3
#_1B9991: #_E98Du: db $A1 ; play note A3
#_1B9992: #_E98Eu: db $95 ; play note A2
#_1B9993: #_E98Fu: db $9C ; play note E3
#_1B9994: #_E990u: db $A1 ; play note A3
#_1B9995: #_E991u: db $94 ; play note Gs2
#_1B9996: #_E992u: db $A0 ; play note Gs3
#_1B9997: #_E993u: db $95 ; play note A2
#_1B9998: #_E994u: db $9C ; play note E3
#_1B9999: #_E995u: db $A1 ; play note A3
#_1B999A: #_E996u: db $95 ; play note A2
#_1B999B: #_E997u: db $9C ; play note E3
#_1B999C: #_E998u: db $A1 ; play note A3
#_1B999D: #_E999u: db $96 ; play note As2
#_1B999E: #_E99Au: db $A2 ; play note As3
#_1B999F: #_E99Bu: db $95 ; play note A2
#_1B99A0: #_E99Cu: db $9C ; play note E3
#_1B99A1: #_E99Du: db $A1 ; play note A3
#_1B99A2: #_E99Eu: db $95 ; play note A2
#_1B99A3: #_E99Fu: db $9C ; play note E3
#_1B99A4: #_E9A0u: db $A1 ; play note A3
#_1B99A5: #_E9A1u: db $94 ; play note Gs2
#_1B99A6: #_E9A2u: db $A0 ; play note Gs3

;---------------------------------------------------------------------------------------------------

Song15_Segment1_Track2:
#_1B99A7: #_E9A3u: db $ED, $C8 ; set channel volume
#_1B99A9: #_E9A5u: db $E0, $0B ; set instrument - trombone
#_1B99AB: #_E9A7u: db $18 ; duration
#_1B99AC: #_E9A8u: db $C9 ; rest
#_1B99AD: #_E9A9u: db $0C, $6D ; duration, params
#_1B99AF: #_E9ABu: db $B9 ; play note A5
#_1B99B0: #_E9ACu: db $18 ; duration
#_1B99B1: #_E9ADu: db $C9 ; rest
#_1B99B2: #_E9AEu: db $0C ; duration
#_1B99B3: #_E9AFu: db $B9 ; play note A5
#_1B99B4: #_E9B0u: db $C9 ; rest
#_1B99B5: #_E9B1u: db $BA ; play note As5
#_1B99B6: #_E9B2u: db $18 ; duration
#_1B99B7: #_E9B3u: db $C9 ; rest
#_1B99B8: #_E9B4u: db $0C ; duration
#_1B99B9: #_E9B5u: db $B9 ; play note A5
#_1B99BA: #_E9B6u: db $18 ; duration
#_1B99BB: #_E9B7u: db $C9 ; rest
#_1B99BC: #_E9B8u: db $0C ; duration
#_1B99BD: #_E9B9u: db $B9 ; play note A5
#_1B99BE: #_E9BAu: db $C9 ; rest
#_1B99BF: #_E9BBu: db $B8 ; play note Gs5
#_1B99C0: #_E9BCu: db $18 ; duration
#_1B99C1: #_E9BDu: db $C9 ; rest
#_1B99C2: #_E9BEu: db $0C ; duration
#_1B99C3: #_E9BFu: db $B9 ; play note A5
#_1B99C4: #_E9C0u: db $18 ; duration
#_1B99C5: #_E9C1u: db $C9 ; rest
#_1B99C6: #_E9C2u: db $0C ; duration
#_1B99C7: #_E9C3u: db $B9 ; play note A5
#_1B99C8: #_E9C4u: db $C9 ; rest
#_1B99C9: #_E9C5u: db $BA ; play note As5
#_1B99CA: #_E9C6u: db $18 ; duration
#_1B99CB: #_E9C7u: db $C9 ; rest
#_1B99CC: #_E9C8u: db $0C ; duration
#_1B99CD: #_E9C9u: db $B9 ; play note A5
#_1B99CE: #_E9CAu: db $18 ; duration
#_1B99CF: #_E9CBu: db $C9 ; rest
#_1B99D0: #_E9CCu: db $0C ; duration
#_1B99D1: #_E9CDu: db $B9 ; play note A5
#_1B99D2: #_E9CEu: db $C9 ; rest
#_1B99D3: #_E9CFu: db $B8 ; play note Gs5

;---------------------------------------------------------------------------------------------------

Song15_Segment1_Track3:
#_1B99D4: #_E9D0u: db $ED, $C8 ; set channel volume
#_1B99D6: #_E9D2u: db $E0, $0B ; set instrument - trombone
#_1B99D8: #_E9D4u: db $18 ; duration
#_1B99D9: #_E9D5u: db $C9 ; rest
#_1B99DA: #_E9D6u: db $0C, $6D ; duration, params
#_1B99DC: #_E9D8u: db $B4 ; play note E5
#_1B99DD: #_E9D9u: db $18 ; duration
#_1B99DE: #_E9DAu: db $C9 ; rest
#_1B99DF: #_E9DBu: db $0C ; duration
#_1B99E0: #_E9DCu: db $B4 ; play note E5
#_1B99E1: #_E9DDu: db $C9 ; rest
#_1B99E2: #_E9DEu: db $B5 ; play note F5
#_1B99E3: #_E9DFu: db $18 ; duration
#_1B99E4: #_E9E0u: db $C9 ; rest
#_1B99E5: #_E9E1u: db $0C ; duration
#_1B99E6: #_E9E2u: db $B4 ; play note E5
#_1B99E7: #_E9E3u: db $18 ; duration
#_1B99E8: #_E9E4u: db $C9 ; rest
#_1B99E9: #_E9E5u: db $0C ; duration
#_1B99EA: #_E9E6u: db $B4 ; play note E5
#_1B99EB: #_E9E7u: db $C9 ; rest
#_1B99EC: #_E9E8u: db $B3 ; play note Ds5
#_1B99ED: #_E9E9u: db $18 ; duration
#_1B99EE: #_E9EAu: db $C9 ; rest
#_1B99EF: #_E9EBu: db $0C ; duration
#_1B99F0: #_E9ECu: db $B4 ; play note E5
#_1B99F1: #_E9EDu: db $18 ; duration
#_1B99F2: #_E9EEu: db $C9 ; rest
#_1B99F3: #_E9EFu: db $0C ; duration
#_1B99F4: #_E9F0u: db $B4 ; play note E5
#_1B99F5: #_E9F1u: db $C9 ; rest
#_1B99F6: #_E9F2u: db $B5 ; play note F5
#_1B99F7: #_E9F3u: db $18 ; duration
#_1B99F8: #_E9F4u: db $C9 ; rest
#_1B99F9: #_E9F5u: db $0C ; duration
#_1B99FA: #_E9F6u: db $B4 ; play note E5
#_1B99FB: #_E9F7u: db $18 ; duration
#_1B99FC: #_E9F8u: db $C9 ; rest
#_1B99FD: #_E9F9u: db $0C ; duration
#_1B99FE: #_E9FAu: db $B4 ; play note E5
#_1B99FF: #_E9FBu: db $C9 ; rest
#_1B9A00: #_E9FCu: db $B3 ; play note Ds5

;---------------------------------------------------------------------------------------------------

Song15_Segment1_Track4:
#_1B9A01: #_E9FDu: db $ED, $AA ; set channel volume
#_1B9A03: #_E9FFu: db $E0, $14 ; set instrument - snare B
#_1B9A05: #_EA01u: db $04, $6D ; duration, params
#_1B9A07: #_EA03u: db $A8 ; play note E4
#_1B9A08: #_EA04u: db $A8 ; play note E4
#_1B9A09: #_EA05u: db $A8 ; play note E4
#_1B9A0A: #_EA06u: db $0C ; duration
#_1B9A0B: #_EA07u: db $A8 ; play note E4
#_1B9A0C: #_EA08u: db $06 ; duration
#_1B9A0D: #_EA09u: db $A8 ; play note E4
#_1B9A0E: #_EA0Au: db $A8 ; play note E4
#_1B9A0F: #_EA0Bu: db $0C ; duration
#_1B9A10: #_EA0Cu: db $A8 ; play note E4
#_1B9A11: #_EA0Du: db $A8 ; play note E4
#_1B9A12: #_EA0Eu: db $A8 ; play note E4
#_1B9A13: #_EA0Fu: db $04 ; duration
#_1B9A14: #_EA10u: db $A8 ; play note E4
#_1B9A15: #_EA11u: db $A8 ; play note E4
#_1B9A16: #_EA12u: db $A8 ; play note E4
#_1B9A17: #_EA13u: db $0C ; duration
#_1B9A18: #_EA14u: db $A8 ; play note E4
#_1B9A19: #_EA15u: db $EF : dw Song15_Sub_EBF7 : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song15_Segment0_Track0:
#_1B9A1D: #_EA19u: db $FA, $17 ; set base percussion sample
#_1B9A1F: #_EA1Bu: db $E5, $C8 ; set song volume
#_1B9A21: #_EA1Du: db $E7, $25 ; set song tempo
#_1B9A23: #_EA1Fu: db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
#_1B9A27: #_EA23u: db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
#_1B9A2B: #_EA27u: db $F8, $1E, $1E, $1E ; initiate gradual echo volume change
#_1B9A2F: #_EA2Bu: db $ED, $C8 ; set channel volume
#_1B9A31: #_EA2Du: db $E0, $0B ; set instrument - trombone
#_1B9A33: #_EA2Fu: db $E3, $14, $1E, $14 ; enable vibrato
#_1B9A37: #_EA33u: db $24, $6D ; duration, params
#_1B9A39: #_EA35u: db $BC ; play note C6
#_1B9A3A: #_EA36u: db $BB ; play note B5
#_1B9A3B: #_EA37u: db $18 ; duration
#_1B9A3C: #_EA38u: db $B5 ; play note F5
#_1B9A3D: #_EA39u: db $24 ; duration
#_1B9A3E: #_EA3Au: db $B4 ; play note E5
#_1B9A3F: #_EA3Bu: db $B3 ; play note Ds5
#_1B9A40: #_EA3Cu: db $0C ; duration
#_1B9A41: #_EA3Du: db $AF ; play note B4
#_1B9A42: #_EA3Eu: db $AE ; play note As4
#_1B9A43: #_EA3Fu: db $48 ; duration
#_1B9A44: #_EA40u: db $C8 ; sustain current note
#_1B9A45: #_EA41u: db $04 ; duration
#_1B9A46: #_EA42u: db $B4 ; play note E5
#_1B9A47: #_EA43u: db $B3 ; play note Ds5
#_1B9A48: #_EA44u: db $B2 ; play note D5
#_1B9A49: #_EA45u: db $B1 ; play note Cs5
#_1B9A4A: #_EA46u: db $AF ; play note B4
#_1B9A4B: #_EA47u: db $AE ; play note As4
#_1B9A4C: #_EA48u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song15_Segment0_Track1:
#_1B9A4D: #_EA49u: db $ED, $C8 ; set channel volume
#_1B9A4F: #_EA4Bu: db $E0, $0B ; set instrument - trombone
#_1B9A51: #_EA4Du: db $E3, $14, $1E, $14 ; enable vibrato
#_1B9A55: #_EA51u: db $24, $6D ; duration, params
#_1B9A57: #_EA53u: db $B7 ; play note G5
#_1B9A58: #_EA54u: db $B6 ; play note Fs5
#_1B9A59: #_EA55u: db $18 ; duration
#_1B9A5A: #_EA56u: db $B0 ; play note C5
#_1B9A5B: #_EA57u: db $24 ; duration
#_1B9A5C: #_EA58u: db $AF ; play note B4
#_1B9A5D: #_EA59u: db $AE ; play note As4
#_1B9A5E: #_EA5Au: db $0C ; duration
#_1B9A5F: #_EA5Bu: db $AA ; play note Fs4
#_1B9A60: #_EA5Cu: db $A9 ; play note F4
#_1B9A61: #_EA5Du: db $48 ; duration
#_1B9A62: #_EA5Eu: db $C8 ; sustain current note
#_1B9A63: #_EA5Fu: db $04 ; duration
#_1B9A64: #_EA60u: db $B0 ; play note C5
#_1B9A65: #_EA61u: db $AF ; play note B4
#_1B9A66: #_EA62u: db $AE ; play note As4
#_1B9A67: #_EA63u: db $AD ; play note A4
#_1B9A68: #_EA64u: db $AC ; play note Gs4
#_1B9A69: #_EA65u: db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song15_Segment0_Track2:
#_1B9A6A: #_EA66u: db $ED, $C8 ; set channel volume
#_1B9A6C: #_EA68u: db $E0, $0B ; set instrument - trombone
#_1B9A6E: #_EA6Au: db $E3, $14, $1E, $14 ; enable vibrato
#_1B9A72: #_EA6Eu: db $24, $6D ; duration, params
#_1B9A74: #_EA70u: db $B2 ; play note D5
#_1B9A75: #_EA71u: db $B1 ; play note Cs5
#_1B9A76: #_EA72u: db $18 ; duration
#_1B9A77: #_EA73u: db $AB ; play note G4
#_1B9A78: #_EA74u: db $24 ; duration
#_1B9A79: #_EA75u: db $AA ; play note Fs4
#_1B9A7A: #_EA76u: db $A9 ; play note F4
#_1B9A7B: #_EA77u: db $0C ; duration
#_1B9A7C: #_EA78u: db $A5 ; play note Cs4
#_1B9A7D: #_EA79u: db $A4 ; play note C4
#_1B9A7E: #_EA7Au: db $48 ; duration
#_1B9A7F: #_EA7Bu: db $C8 ; sustain current note
#_1B9A80: #_EA7Cu: db $04 ; duration
#_1B9A81: #_EA7Du: db $A8 ; play note E4
#_1B9A82: #_EA7Eu: db $A7 ; play note Ds4
#_1B9A83: #_EA7Fu: db $A6 ; play note D4
#_1B9A84: #_EA80u: db $A5 ; play note Cs4
#_1B9A85: #_EA81u: db $A3 ; play note B3
#_1B9A86: #_EA82u: db $A2 ; play note As3

;---------------------------------------------------------------------------------------------------

Song15_Segment0_Track3:
#_1B9A87: #_EA83u: db $ED, $C8 ; set channel volume
#_1B9A89: #_EA85u: db $E0, $0B ; set instrument - trombone
#_1B9A8B: #_EA87u: db $E3, $14, $1E, $14 ; enable vibrato
#_1B9A8F: #_EA8Bu: db $24, $6D ; duration, params
#_1B9A91: #_EA8Du: db $AC ; play note Gs4
#_1B9A92: #_EA8Eu: db $AB ; play note G4
#_1B9A93: #_EA8Fu: db $18 ; duration
#_1B9A94: #_EA90u: db $A5 ; play note Cs4
#_1B9A95: #_EA91u: db $24 ; duration
#_1B9A96: #_EA92u: db $A4 ; play note C4
#_1B9A97: #_EA93u: db $A3 ; play note B3
#_1B9A98: #_EA94u: db $0C ; duration
#_1B9A99: #_EA95u: db $9F ; play note G3
#_1B9A9A: #_EA96u: db $9E ; play note Fs3
#_1B9A9B: #_EA97u: db $60 ; duration
#_1B9A9C: #_EA98u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song15_Segment0_Track4:
#_1B9A9D: #_EA99u: db $ED, $FA ; set channel volume
#_1B9A9F: #_EA9Bu: db $E0, $02 ; set instrument - timpani
#_1B9AA1: #_EA9Du: db $04, $6D ; duration, params
#_1B9AA3: #_EA9Fu: db $89 ; play note A1
#_1B9AA4: #_EAA0u: db $89 ; play note A1
#_1B9AA5: #_EAA1u: db $40 ; duration
#_1B9AA6: #_EAA2u: db $89 ; play note A1
#_1B9AA7: #_EAA3u: db $18 ; duration
#_1B9AA8: #_EAA4u: db $89 ; play note A1
#_1B9AA9: #_EAA5u: db $04 ; duration
#_1B9AAA: #_EAA6u: db $87 ; play note G1
#_1B9AAB: #_EAA7u: db $87 ; play note G1
#_1B9AAC: #_EAA8u: db $40 ; duration
#_1B9AAD: #_EAA9u: db $87 ; play note G1
#_1B9AAE: #_EAAAu: db $18 ; duration
#_1B9AAF: #_EAABu: db $87 ; play note G1
#_1B9AB0: #_EAACu: db $04 ; duration
#_1B9AB1: #_EAADu: db $85 ; play note F1
#_1B9AB2: #_EAAEu: db $85 ; play note F1
#_1B9AB3: #_EAAFu: db $04, $69 ; duration, params
#_1B9AB5: #_EAB1u: db $85 ; play note F1
#_1B9AB6: #_EAB2u: db $04, $65 ; duration, params
#_1B9AB8: #_EAB4u: db $85 ; play note F1
#_1B9AB9: #_EAB5u: db $04, $66 ; duration, params
#_1B9ABB: #_EAB7u: db $85 ; play note F1
#_1B9ABC: #_EAB8u: db $04, $67 ; duration, params
#_1B9ABE: #_EABAu: db $85 ; play note F1
#_1B9ABF: #_EABBu: db $04, $68 ; duration, params
#_1B9AC1: #_EABDu: db $85 ; play note F1
#_1B9AC2: #_EABEu: db $85 ; play note F1
#_1B9AC3: #_EABFu: db $04, $69 ; duration, params
#_1B9AC5: #_EAC1u: db $85 ; play note F1
#_1B9AC6: #_EAC2u: db $85 ; play note F1
#_1B9AC7: #_EAC3u: db $85 ; play note F1
#_1B9AC8: #_EAC4u: db $04, $6A ; duration, params
#_1B9ACA: #_EAC6u: db $85 ; play note F1
#_1B9ACB: #_EAC7u: db $85 ; play note F1
#_1B9ACC: #_EAC8u: db $04, $6B ; duration, params
#_1B9ACE: #_EACAu: db $85 ; play note F1
#_1B9ACF: #_EACBu: db $85 ; play note F1
#_1B9AD0: #_EACCu: db $85 ; play note F1
#_1B9AD1: #_EACDu: db $04, $6C ; duration, params
#_1B9AD3: #_EACFu: db $85 ; play note F1
#_1B9AD4: #_EAD0u: db $85 ; play note F1
#_1B9AD5: #_EAD1u: db $85 ; play note F1
#_1B9AD6: #_EAD2u: db $04, $6D ; duration, params
#_1B9AD8: #_EAD4u: db $85 ; play note F1
#_1B9AD9: #_EAD5u: db $85 ; play note F1
#_1B9ADA: #_EAD6u: db $04, $6F ; duration, params
#_1B9ADC: #_EAD8u: db $85 ; play note F1
#_1B9ADD: #_EAD9u: db $85 ; play note F1
#_1B9ADE: #_EADAu: db $85 ; play note F1

;---------------------------------------------------------------------------------------------------

Song15_Unused0_Track0:
#_1B9ADF: #_EADBu: db $E5, $C8 ; set song volume
#_1B9AE1: #_EADDu: db $E7, $19 ; set song tempo
#_1B9AE3: #_EADFu: db $ED, $FA ; set channel volume
#_1B9AE5: #_EAE1u: db $E0, $02 ; set instrument - timpani
#_1B9AE7: #_EAE3u: db $0C, $5D ; duration, params
#_1B9AE9: #_EAE5u: db $8E ; play note D2
#_1B9AEA: #_EAE6u: db $89 ; play note A1
#_1B9AEB: #_EAE7u: db $8E ; play note D2
#_1B9AEC: #_EAE8u: db $89 ; play note A1
#_1B9AED: #_EAE9u: db $8E ; play note D2
#_1B9AEE: #_EAEAu: db $89 ; play note A1
#_1B9AEF: #_EAEBu: db $8E ; play note D2
#_1B9AF0: #_EAECu: db $89 ; play note A1
#_1B9AF1: #_EAEDu: db $EF : dw Song15_Sub_EBEE : db $03 ; call segment subroutine
#_1B9AF5: #_EAF1u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song15_Unused0_Track1:
#_1B9AF6: #_EAF2u: db $ED, $C8 ; set channel volume
#_1B9AF8: #_EAF4u: db $E0, $0B ; set instrument - trombone
#_1B9AFA: #_EAF6u: db $0C, $6D ; duration, params
#_1B9AFC: #_EAF8u: db $92 ; play note Fs2
#_1B9AFD: #_EAF9u: db $93 ; play note G2
#_1B9AFE: #_EAFAu: db $92 ; play note Fs2
#_1B9AFF: #_EAFBu: db $93 ; play note G2
#_1B9B00: #_EAFCu: db $96 ; play note As2
#_1B9B01: #_EAFDu: db $95 ; play note A2
#_1B9B02: #_EAFEu: db $96 ; play note As2
#_1B9B03: #_EAFFu: db $95 ; play note A2
#_1B9B04: #_EB00u: db $92 ; play note Fs2
#_1B9B05: #_EB01u: db $93 ; play note G2
#_1B9B06: #_EB02u: db $96 ; play note As2
#_1B9B07: #_EB03u: db $95 ; play note A2
#_1B9B08: #_EB04u: db $94 ; play note Gs2
#_1B9B09: #_EB05u: db $93 ; play note G2
#_1B9B0A: #_EB06u: db $91 ; play note F2
#_1B9B0B: #_EB07u: db $92 ; play note Fs2
#_1B9B0C: #_EB08u: db $92 ; play note Fs2
#_1B9B0D: #_EB09u: db $93 ; play note G2
#_1B9B0E: #_EB0Au: db $92 ; play note Fs2
#_1B9B0F: #_EB0Bu: db $93 ; play note G2
#_1B9B10: #_EB0Cu: db $96 ; play note As2
#_1B9B11: #_EB0Du: db $95 ; play note A2
#_1B9B12: #_EB0Eu: db $96 ; play note As2
#_1B9B13: #_EB0Fu: db $95 ; play note A2
#_1B9B14: #_EB10u: db $92 ; play note Fs2
#_1B9B15: #_EB11u: db $93 ; play note G2
#_1B9B16: #_EB12u: db $96 ; play note As2
#_1B9B17: #_EB13u: db $95 ; play note A2
#_1B9B18: #_EB14u: db $94 ; play note Gs2
#_1B9B19: #_EB15u: db $93 ; play note G2
#_1B9B1A: #_EB16u: db $91 ; play note F2
#_1B9B1B: #_EB17u: db $92 ; play note Fs2

;---------------------------------------------------------------------------------------------------

Song15_Unused0_Track2:
#_1B9B1C: #_EB18u: db $ED, $C8 ; set channel volume
#_1B9B1E: #_EB1Au: db $E0, $0B ; set instrument - trombone
#_1B9B20: #_EB1Cu: db $0C, $6D ; duration, params
#_1B9B22: #_EB1Eu: db $9E ; play note Fs3
#_1B9B23: #_EB1Fu: db $9F ; play note G3
#_1B9B24: #_EB20u: db $9E ; play note Fs3
#_1B9B25: #_EB21u: db $9F ; play note G3
#_1B9B26: #_EB22u: db $A2 ; play note As3
#_1B9B27: #_EB23u: db $A1 ; play note A3
#_1B9B28: #_EB24u: db $A2 ; play note As3
#_1B9B29: #_EB25u: db $A1 ; play note A3
#_1B9B2A: #_EB26u: db $9E ; play note Fs3
#_1B9B2B: #_EB27u: db $9F ; play note G3
#_1B9B2C: #_EB28u: db $A2 ; play note As3
#_1B9B2D: #_EB29u: db $A1 ; play note A3
#_1B9B2E: #_EB2Au: db $A0 ; play note Gs3
#_1B9B2F: #_EB2Bu: db $9F ; play note G3
#_1B9B30: #_EB2Cu: db $9D ; play note F3
#_1B9B31: #_EB2Du: db $9E ; play note Fs3
#_1B9B32: #_EB2Eu: db $9E ; play note Fs3
#_1B9B33: #_EB2Fu: db $9F ; play note G3
#_1B9B34: #_EB30u: db $9E ; play note Fs3
#_1B9B35: #_EB31u: db $9F ; play note G3
#_1B9B36: #_EB32u: db $A2 ; play note As3
#_1B9B37: #_EB33u: db $A1 ; play note A3
#_1B9B38: #_EB34u: db $A2 ; play note As3
#_1B9B39: #_EB35u: db $A1 ; play note A3
#_1B9B3A: #_EB36u: db $9E ; play note Fs3
#_1B9B3B: #_EB37u: db $9F ; play note G3
#_1B9B3C: #_EB38u: db $A2 ; play note As3
#_1B9B3D: #_EB39u: db $A1 ; play note A3
#_1B9B3E: #_EB3Au: db $A0 ; play note Gs3
#_1B9B3F: #_EB3Bu: db $9F ; play note G3
#_1B9B40: #_EB3Cu: db $9D ; play note F3
#_1B9B41: #_EB3Du: db $9E ; play note Fs3

;---------------------------------------------------------------------------------------------------

Song15_Segment2_Track0:
#_1B9B42: #_EB3Eu: db $ED, $C8 ; set channel volume
#_1B9B44: #_EB40u: db $E0, $02 ; set instrument - timpani
#_1B9B46: #_EB42u: db $0C, $5D ; duration, params
#_1B9B48: #_EB44u: db $8E ; play note D2
#_1B9B49: #_EB45u: db $89 ; play note A1
#_1B9B4A: #_EB46u: db $8E ; play note D2
#_1B9B4B: #_EB47u: db $89 ; play note A1
#_1B9B4C: #_EB48u: db $8E ; play note D2
#_1B9B4D: #_EB49u: db $89 ; play note A1
#_1B9B4E: #_EB4Au: db $8E ; play note D2
#_1B9B4F: #_EB4Bu: db $89 ; play note A1
#_1B9B50: #_EB4Cu: db $EF : dw Song15_Sub_EBEE : db $03 ; call segment subroutine
#_1B9B54: #_EB50u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song15_Segment2_Track1:
#_1B9B55: #_EB51u: db $ED, $DC ; set channel volume
#_1B9B57: #_EB53u: db $E0, $0B ; set instrument - trombone
#_1B9B59: #_EB55u: db $0C, $6D ; duration, params
#_1B9B5B: #_EB57u: db $9A ; play note D3
#_1B9B5C: #_EB58u: db $A1 ; play note A3
#_1B9B5D: #_EB59u: db $A6 ; play note D4
#_1B9B5E: #_EB5Au: db $9A ; play note D3
#_1B9B5F: #_EB5Bu: db $A1 ; play note A3
#_1B9B60: #_EB5Cu: db $A6 ; play note D4
#_1B9B61: #_EB5Du: db $9B ; play note Ds3
#_1B9B62: #_EB5Eu: db $A7 ; play note Ds4
#_1B9B63: #_EB5Fu: db $9A ; play note D3
#_1B9B64: #_EB60u: db $A1 ; play note A3
#_1B9B65: #_EB61u: db $A6 ; play note D4
#_1B9B66: #_EB62u: db $9A ; play note D3
#_1B9B67: #_EB63u: db $A1 ; play note A3
#_1B9B68: #_EB64u: db $A6 ; play note D4
#_1B9B69: #_EB65u: db $99 ; play note Cs3
#_1B9B6A: #_EB66u: db $A5 ; play note Cs4
#_1B9B6B: #_EB67u: db $9A ; play note D3
#_1B9B6C: #_EB68u: db $A1 ; play note A3
#_1B9B6D: #_EB69u: db $A6 ; play note D4
#_1B9B6E: #_EB6Au: db $9A ; play note D3
#_1B9B6F: #_EB6Bu: db $A1 ; play note A3
#_1B9B70: #_EB6Cu: db $A6 ; play note D4
#_1B9B71: #_EB6Du: db $9B ; play note Ds3
#_1B9B72: #_EB6Eu: db $A7 ; play note Ds4
#_1B9B73: #_EB6Fu: db $9A ; play note D3
#_1B9B74: #_EB70u: db $A1 ; play note A3
#_1B9B75: #_EB71u: db $A6 ; play note D4
#_1B9B76: #_EB72u: db $9A ; play note D3
#_1B9B77: #_EB73u: db $A1 ; play note A3
#_1B9B78: #_EB74u: db $A6 ; play note D4
#_1B9B79: #_EB75u: db $99 ; play note Cs3
#_1B9B7A: #_EB76u: db $A5 ; play note Cs4

;---------------------------------------------------------------------------------------------------

Song15_Segment2_Track2:
#_1B9B7B: #_EB77u: db $ED, $C8 ; set channel volume
#_1B9B7D: #_EB79u: db $E0, $0B ; set instrument - trombone
#_1B9B7F: #_EB7Bu: db $18 ; duration
#_1B9B80: #_EB7Cu: db $C9 ; rest
#_1B9B81: #_EB7Du: db $0C, $6D ; duration, params
#_1B9B83: #_EB7Fu: db $BE ; play note D6
#_1B9B84: #_EB80u: db $18 ; duration
#_1B9B85: #_EB81u: db $C9 ; rest
#_1B9B86: #_EB82u: db $0C ; duration
#_1B9B87: #_EB83u: db $BE ; play note D6
#_1B9B88: #_EB84u: db $C9 ; rest
#_1B9B89: #_EB85u: db $BF ; play note Ds6
#_1B9B8A: #_EB86u: db $18 ; duration
#_1B9B8B: #_EB87u: db $C9 ; rest
#_1B9B8C: #_EB88u: db $0C ; duration
#_1B9B8D: #_EB89u: db $BE ; play note D6
#_1B9B8E: #_EB8Au: db $18 ; duration
#_1B9B8F: #_EB8Bu: db $C9 ; rest
#_1B9B90: #_EB8Cu: db $0C ; duration
#_1B9B91: #_EB8Du: db $BE ; play note D6
#_1B9B92: #_EB8Eu: db $C9 ; rest
#_1B9B93: #_EB8Fu: db $BD ; play note Cs6
#_1B9B94: #_EB90u: db $18 ; duration
#_1B9B95: #_EB91u: db $C9 ; rest
#_1B9B96: #_EB92u: db $0C ; duration
#_1B9B97: #_EB93u: db $BE ; play note D6
#_1B9B98: #_EB94u: db $18 ; duration
#_1B9B99: #_EB95u: db $C9 ; rest
#_1B9B9A: #_EB96u: db $0C ; duration
#_1B9B9B: #_EB97u: db $BE ; play note D6
#_1B9B9C: #_EB98u: db $C9 ; rest
#_1B9B9D: #_EB99u: db $BF ; play note Ds6
#_1B9B9E: #_EB9Au: db $18 ; duration
#_1B9B9F: #_EB9Bu: db $C9 ; rest
#_1B9BA0: #_EB9Cu: db $0C ; duration
#_1B9BA1: #_EB9Du: db $BE ; play note D6
#_1B9BA2: #_EB9Eu: db $18 ; duration
#_1B9BA3: #_EB9Fu: db $C9 ; rest
#_1B9BA4: #_EBA0u: db $0C ; duration
#_1B9BA5: #_EBA1u: db $BE ; play note D6
#_1B9BA6: #_EBA2u: db $C9 ; rest
#_1B9BA7: #_EBA3u: db $BD ; play note Cs6

;---------------------------------------------------------------------------------------------------

Song15_Segment2_Track3:
#_1B9BA8: #_EBA4u: db $ED, $C8 ; set channel volume
#_1B9BAA: #_EBA6u: db $E0, $0B ; set instrument - trombone
#_1B9BAC: #_EBA8u: db $18 ; duration
#_1B9BAD: #_EBA9u: db $C9 ; rest
#_1B9BAE: #_EBAAu: db $0C, $6D ; duration, params
#_1B9BB0: #_EBACu: db $B9 ; play note A5
#_1B9BB1: #_EBADu: db $18 ; duration
#_1B9BB2: #_EBAEu: db $C9 ; rest
#_1B9BB3: #_EBAFu: db $0C ; duration
#_1B9BB4: #_EBB0u: db $B9 ; play note A5
#_1B9BB5: #_EBB1u: db $C9 ; rest
#_1B9BB6: #_EBB2u: db $BA ; play note As5
#_1B9BB7: #_EBB3u: db $18 ; duration
#_1B9BB8: #_EBB4u: db $C9 ; rest
#_1B9BB9: #_EBB5u: db $0C ; duration
#_1B9BBA: #_EBB6u: db $B9 ; play note A5
#_1B9BBB: #_EBB7u: db $18 ; duration
#_1B9BBC: #_EBB8u: db $C9 ; rest
#_1B9BBD: #_EBB9u: db $0C ; duration
#_1B9BBE: #_EBBAu: db $B9 ; play note A5
#_1B9BBF: #_EBBBu: db $C9 ; rest
#_1B9BC0: #_EBBCu: db $B8 ; play note Gs5
#_1B9BC1: #_EBBDu: db $18 ; duration
#_1B9BC2: #_EBBEu: db $C9 ; rest
#_1B9BC3: #_EBBFu: db $0C ; duration
#_1B9BC4: #_EBC0u: db $B9 ; play note A5
#_1B9BC5: #_EBC1u: db $18 ; duration
#_1B9BC6: #_EBC2u: db $C9 ; rest
#_1B9BC7: #_EBC3u: db $0C ; duration
#_1B9BC8: #_EBC4u: db $B9 ; play note A5
#_1B9BC9: #_EBC5u: db $C9 ; rest
#_1B9BCA: #_EBC6u: db $BA ; play note As5
#_1B9BCB: #_EBC7u: db $18 ; duration
#_1B9BCC: #_EBC8u: db $C9 ; rest
#_1B9BCD: #_EBC9u: db $0C ; duration
#_1B9BCE: #_EBCAu: db $B9 ; play note A5
#_1B9BCF: #_EBCBu: db $18 ; duration
#_1B9BD0: #_EBCCu: db $C9 ; rest
#_1B9BD1: #_EBCDu: db $0C ; duration
#_1B9BD2: #_EBCEu: db $B9 ; play note A5
#_1B9BD3: #_EBCFu: db $C9 ; rest
#_1B9BD4: #_EBD0u: db $B8 ; play note Gs5

;---------------------------------------------------------------------------------------------------

Song15_Segment2_Track4:
#_1B9BD5: #_EBD1u: db $ED, $AA ; set channel volume
#_1B9BD7: #_EBD3u: db $E0, $14 ; set instrument - snare B
#_1B9BD9: #_EBD5u: db $04, $6D ; duration, params
#_1B9BDB: #_EBD7u: db $A8 ; play note E4
#_1B9BDC: #_EBD8u: db $A8 ; play note E4
#_1B9BDD: #_EBD9u: db $A8 ; play note E4
#_1B9BDE: #_EBDAu: db $0C ; duration
#_1B9BDF: #_EBDBu: db $A8 ; play note E4
#_1B9BE0: #_EBDCu: db $06 ; duration
#_1B9BE1: #_EBDDu: db $A8 ; play note E4
#_1B9BE2: #_EBDEu: db $A8 ; play note E4
#_1B9BE3: #_EBDFu: db $0C ; duration
#_1B9BE4: #_EBE0u: db $A8 ; play note E4
#_1B9BE5: #_EBE1u: db $A8 ; play note E4
#_1B9BE6: #_EBE2u: db $A8 ; play note E4
#_1B9BE7: #_EBE3u: db $04 ; duration
#_1B9BE8: #_EBE4u: db $A8 ; play note E4
#_1B9BE9: #_EBE5u: db $A8 ; play note E4
#_1B9BEA: #_EBE6u: db $A8 ; play note E4
#_1B9BEB: #_EBE7u: db $0C ; duration
#_1B9BEC: #_EBE8u: db $A8 ; play note E4
#_1B9BED: #_EBE9u: db $EF : dw Song15_Sub_EBF7 : db $03 ; call segment subroutine
#_1B9BF1: #_EBEDu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song15_Sub_EBEE:
#_1B9BF2: #_EBEEu: db $8E ; play note D2
#_1B9BF3: #_EBEFu: db $89 ; play note A1
#_1B9BF4: #_EBF0u: db $8E ; play note D2
#_1B9BF5: #_EBF1u: db $89 ; play note A1
#_1B9BF6: #_EBF2u: db $8E ; play note D2
#_1B9BF7: #_EBF3u: db $89 ; play note A1
#_1B9BF8: #_EBF4u: db $8E ; play note D2
#_1B9BF9: #_EBF5u: db $89 ; play note A1
#_1B9BFA: #_EBF6u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song15_Sub_EBF7:
#_1B9BFB: #_EBF7u: db $04 ; duration
#_1B9BFC: #_EBF8u: db $A8 ; play note E4
#_1B9BFD: #_EBF9u: db $A8 ; play note E4
#_1B9BFE: #_EBFAu: db $A8 ; play note E4
#_1B9BFF: #_EBFBu: db $0C ; duration
#_1B9C00: #_EBFCu: db $A8 ; play note E4
#_1B9C01: #_EBFDu: db $06 ; duration
#_1B9C02: #_EBFEu: db $A8 ; play note E4
#_1B9C03: #_EBFFu: db $A8 ; play note E4
#_1B9C04: #_EC00u: db $0C ; duration
#_1B9C05: #_EC01u: db $A8 ; play note E4
#_1B9C06: #_EC02u: db $A8 ; play note E4
#_1B9C07: #_EC03u: db $A8 ; play note E4
#_1B9C08: #_EC04u: db $04 ; duration
#_1B9C09: #_EC05u: db $A8 ; play note E4
#_1B9C0A: #_EC06u: db $A8 ; play note E4
#_1B9C0B: #_EC07u: db $A8 ; play note E4
#_1B9C0C: #_EC08u: db $0C ; duration
#_1B9C0D: #_EC09u: db $A8 ; play note E4
#_1B9C0E: #_EC0Au: db $00 ; End

;===================================================================================================

Song16_CrystalDungeon:
#_1B9C0F: #_EC0Bu: dw Song16_Segment0

Song16_Loop:
#_1B9C11: #_EC0Du: dw Song16_Segment1
#_1B9C13: #_EC0Fu: dw Song16_Segment2
#_1B9C15: #_EC11u: dw Song16_Segment3
#_1B9C17: #_EC13u: dw Song16_Segment4
#_1B9C19: #_EC15u: dw Song16_Segment5
#_1B9C1B: #_EC17u: dw $00FF, Song16_Loop ; Loop point
#_1B9C1F: #_EC1Bu: dw $0000

Song16_Segment1:
#_1B9C21: #_EC1Du: dw Song16_Segment1_Track0
#_1B9C23: #_EC1Fu: dw Song16_Segment1_Track1
#_1B9C25: #_EC21u: dw Song16_Segment1_Track2
#_1B9C27: #_EC23u: dw Song16_Segment1_Track3
#_1B9C29: #_EC25u: dw Song16_Segment1_Track4
#_1B9C2B: #_EC27u: dw $0000
#_1B9C2D: #_EC29u: dw $0000
#_1B9C2F: #_EC2Bu: dw $0000

Song16_Segment0:
#_1B9C31: #_EC2Du: dw Song16_Segment0_Track0
#_1B9C33: #_EC2Fu: dw Song16_Segment0_Track1
#_1B9C35: #_EC31u: dw $0000
#_1B9C37: #_EC33u: dw $0000
#_1B9C39: #_EC35u: dw $0000
#_1B9C3B: #_EC37u: dw $0000
#_1B9C3D: #_EC39u: dw $0000
#_1B9C3F: #_EC3Bu: dw $0000

Song16_Segment2:
#_1B9C41: #_EC3Du: dw Song16_Segment2_Track0
#_1B9C43: #_EC3Fu: dw Song16_Segment2_Track1
#_1B9C45: #_EC41u: dw Song16_Segment2_Track2
#_1B9C47: #_EC43u: dw Song16_Segment2_Track3
#_1B9C49: #_EC45u: dw Song16_Segment2_Track4
#_1B9C4B: #_EC47u: dw $0000
#_1B9C4D: #_EC49u: dw $0000
#_1B9C4F: #_EC4Bu: dw $0000

Song16_Segment3:
#_1B9C51: #_EC4Du: dw Song16_Segment3_Track0
#_1B9C53: #_EC4Fu: dw Song16_Segment3_Track1
#_1B9C55: #_EC51u: dw Song16_Segment3_Track2
#_1B9C57: #_EC53u: dw Song16_Segment3_Track3
#_1B9C59: #_EC55u: dw Song16_Segment3_Track4
#_1B9C5B: #_EC57u: dw Song16_Segment3_Track5
#_1B9C5D: #_EC59u: dw $0000
#_1B9C5F: #_EC5Bu: dw $0000

Song16_Segment4:
#_1B9C61: #_EC5Du: dw Song16_Segment4_Track0
#_1B9C63: #_EC5Fu: dw Song16_Segment4_Track1
#_1B9C65: #_EC61u: dw Song16_Segment4_Track2
#_1B9C67: #_EC63u: dw Song16_Segment4_Track3
#_1B9C69: #_EC65u: dw Song16_Segment4_Track4
#_1B9C6B: #_EC67u: dw Song16_Segment4_Track5
#_1B9C6D: #_EC69u: dw $0000
#_1B9C6F: #_EC6Bu: dw $0000

Song16_Segment5:
#_1B9C71: #_EC6Du: dw Song16_Segment5_Track0
#_1B9C73: #_EC6Fu: dw Song16_Segment5_Track1
#_1B9C75: #_EC71u: dw Song16_Segment5_Track2
#_1B9C77: #_EC73u: dw Song16_Segment5_Track3
#_1B9C79: #_EC75u: dw Song16_Segment5_Track4
#_1B9C7B: #_EC77u: dw Song16_Segment5_Track5
#_1B9C7D: #_EC79u: dw $0000
#_1B9C7F: #_EC7Bu: dw $0000

;---------------------------------------------------------------------------------------------------

Song16_Segment1_Track0:
#_1B9C81: #_EC7Du: db $E0, $09 ; set instrument - strings A
#_1B9C83: #_EC7Fu: db $ED, $C8 ; set channel volume
#_1B9C85: #_EC81u: db $EF : dw Song16_Sub_EFA7 : db $01 ; call segment subroutine
#_1B9C89: #_EC85u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Segment1_Track1:
#_1B9C8A: #_EC86u: db $E0, $09 ; set instrument - strings A
#_1B9C8C: #_EC88u: db $ED, $C8 ; set channel volume
#_1B9C8E: #_EC8Au: db $EF : dw Song16_Sub_F028 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song16_Segment1_Track2:
#_1B9C92: #_EC8Eu: db $E0, $09 ; set instrument - strings A
#_1B9C94: #_EC90u: db $ED, $F0 ; set channel volume
#_1B9C96: #_EC92u: db $E1, $08 ; set panning - leaning right
#_1B9C98: #_EC94u: db $E3, $1C, $1C, $10 ; enable vibrato
#_1B9C9C: #_EC98u: db $30 ; duration
#_1B9C9D: #_EC99u: db $C9 ; rest
#_1B9C9E: #_EC9Au: db $10, $6D ; duration, params
#_1B9CA0: #_EC9Cu: db $9B ; play note Ds3
#_1B9CA1: #_EC9Du: db $9A ; play note D3
#_1B9CA2: #_EC9Eu: db $A0 ; play note Gs3
#_1B9CA3: #_EC9Fu: db $EF : dw Song16_Sub_F0A9 : db $01 ; call segment subroutine
#_1B9CA7: #_ECA3u: db $60 ; duration
#_1B9CA8: #_ECA4u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment1_Track3:
#_1B9CA9: #_ECA5u: db $E0, $09 ; set instrument - strings A
#_1B9CAB: #_ECA7u: db $ED, $C8 ; set channel volume
#_1B9CAD: #_ECA9u: db $E1, $06 ; set panning - leaning right
#_1B9CAF: #_ECABu: db $E3, $1A, $1D, $12 ; enable vibrato
#_1B9CB3: #_ECAFu: db $EF : dw Song16_Sub_F0B5 : db $01 ; call segment subroutine
#_1B9CB7: #_ECB3u: db $60 ; duration
#_1B9CB8: #_ECB4u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment1_Track4:
#_1B9CB9: #_ECB5u: db $E0, $09 ; set instrument - strings A
#_1B9CBB: #_ECB7u: db $ED, $B4 ; set channel volume
#_1B9CBD: #_ECB9u: db $E1, $0E ; set panning - leaning left
#_1B9CBF: #_ECBBu: db $E3, $1C, $1C, $10 ; enable vibrato
#_1B9CC3: #_ECBFu: db $38 ; duration
#_1B9CC4: #_ECC0u: db $C9 ; rest
#_1B9CC5: #_ECC1u: db $10, $6D ; duration, params
#_1B9CC7: #_ECC3u: db $9B ; play note Ds3
#_1B9CC8: #_ECC4u: db $9A ; play note D3
#_1B9CC9: #_ECC5u: db $A0 ; play note Gs3
#_1B9CCA: #_ECC6u: db $EF : dw Song16_Sub_F0A9 : db $01 ; call segment subroutine
#_1B9CCE: #_ECCAu: db $58 ; duration
#_1B9CCF: #_ECCBu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment0_Track0:
#_1B9CD0: #_ECCCu: db $FA, $19 ; set base percussion sample
#_1B9CD2: #_ECCEu: db $E5, $50 ; set song volume
#_1B9CD4: #_ECD0u: db $E6, $28, $B4 ; initiate gradual song volume change
#_1B9CD7: #_ECD3u: db $E7, $1D ; set song tempo
#_1B9CD9: #_ECD5u: db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
#_1B9CDD: #_ECD9u: db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
#_1B9CE1: #_ECDDu: db $F8, $32, $28, $28 ; initiate gradual echo volume change
#_1B9CE5: #_ECE1u: db $E0, $09 ; set instrument - strings A
#_1B9CE7: #_ECE3u: db $ED, $C8 ; set channel volume
#_1B9CE9: #_ECE5u: db $E1, $0E ; set panning - leaning left
#_1B9CEB: #_ECE7u: db $EF : dw Song16_Sub_EFA7 : db $01 ; call segment subroutine
#_1B9CEF: #_ECEBu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Segment0_Track1:
#_1B9CF0: #_ECECu: db $E0, $09 ; set instrument - strings A
#_1B9CF2: #_ECEEu: db $ED, $C8 ; set channel volume
#_1B9CF4: #_ECF0u: db $E1, $0C ; set panning - leaning left
#_1B9CF6: #_ECF2u: db $EF : dw Song16_Sub_F028 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song16_Segment2_Track0:
#_1B9CFA: #_ECF6u: db $E0, $09 ; set instrument - strings A
#_1B9CFC: #_ECF8u: db $ED, $C8 ; set channel volume
#_1B9CFE: #_ECFAu: db $EF : dw Song16_Sub_EFA7 : db $01 ; call segment subroutine
#_1B9D02: #_ECFEu: db $06, $6D ; duration, params
#_1B9D04: #_ED00u: db $B3 ; play note Ds5
#_1B9D05: #_ED01u: db $06, $69 ; duration, params
#_1B9D07: #_ED03u: db $B3 ; play note Ds5
#_1B9D08: #_ED04u: db $B3 ; play note Ds5
#_1B9D09: #_ED05u: db $B3 ; play note Ds5
#_1B9D0A: #_ED06u: db $06, $6B ; duration, params
#_1B9D0C: #_ED08u: db $B3 ; play note Ds5
#_1B9D0D: #_ED09u: db $06, $69 ; duration, params
#_1B9D0F: #_ED0Bu: db $B3 ; play note Ds5
#_1B9D10: #_ED0Cu: db $B3 ; play note Ds5
#_1B9D11: #_ED0Du: db $B3 ; play note Ds5
#_1B9D12: #_ED0Eu: db $06, $6C ; duration, params
#_1B9D14: #_ED10u: db $B3 ; play note Ds5
#_1B9D15: #_ED11u: db $06, $69 ; duration, params
#_1B9D17: #_ED13u: db $B3 ; play note Ds5
#_1B9D18: #_ED14u: db $B3 ; play note Ds5
#_1B9D19: #_ED15u: db $B3 ; play note Ds5
#_1B9D1A: #_ED16u: db $06, $6B ; duration, params
#_1B9D1C: #_ED18u: db $B3 ; play note Ds5
#_1B9D1D: #_ED19u: db $06, $69 ; duration, params
#_1B9D1F: #_ED1Bu: db $B3 ; play note Ds5
#_1B9D20: #_ED1Cu: db $B3 ; play note Ds5
#_1B9D21: #_ED1Du: db $B3 ; play note Ds5
#_1B9D22: #_ED1Eu: db $06, $6D ; duration, params
#_1B9D24: #_ED20u: db $B5 ; play note F5
#_1B9D25: #_ED21u: db $06, $69 ; duration, params
#_1B9D27: #_ED23u: db $B5 ; play note F5
#_1B9D28: #_ED24u: db $B5 ; play note F5
#_1B9D29: #_ED25u: db $B5 ; play note F5
#_1B9D2A: #_ED26u: db $06, $6B ; duration, params
#_1B9D2C: #_ED28u: db $B5 ; play note F5
#_1B9D2D: #_ED29u: db $06, $69 ; duration, params
#_1B9D2F: #_ED2Bu: db $B5 ; play note F5
#_1B9D30: #_ED2Cu: db $B5 ; play note F5
#_1B9D31: #_ED2Du: db $B5 ; play note F5
#_1B9D32: #_ED2Eu: db $06, $6C ; duration, params
#_1B9D34: #_ED30u: db $B5 ; play note F5
#_1B9D35: #_ED31u: db $06, $69 ; duration, params
#_1B9D37: #_ED33u: db $B5 ; play note F5
#_1B9D38: #_ED34u: db $B5 ; play note F5
#_1B9D39: #_ED35u: db $B5 ; play note F5
#_1B9D3A: #_ED36u: db $06, $6B ; duration, params
#_1B9D3C: #_ED38u: db $B5 ; play note F5
#_1B9D3D: #_ED39u: db $06, $69 ; duration, params
#_1B9D3F: #_ED3Bu: db $B5 ; play note F5
#_1B9D40: #_ED3Cu: db $B5 ; play note F5
#_1B9D41: #_ED3Du: db $B5 ; play note F5
#_1B9D42: #_ED3Eu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Segment2_Track1:
#_1B9D43: #_ED3Fu: db $E0, $09 ; set instrument - strings A
#_1B9D45: #_ED41u: db $ED, $C8 ; set channel volume
#_1B9D47: #_ED43u: db $EF : dw Song16_Sub_F028 : db $01 ; call segment subroutine
#_1B9D4B: #_ED47u: db $06, $6D ; duration, params
#_1B9D4D: #_ED49u: db $AD ; play note A4
#_1B9D4E: #_ED4Au: db $06, $69 ; duration, params
#_1B9D50: #_ED4Cu: db $AD ; play note A4
#_1B9D51: #_ED4Du: db $AD ; play note A4
#_1B9D52: #_ED4Eu: db $AD ; play note A4
#_1B9D53: #_ED4Fu: db $06, $6B ; duration, params
#_1B9D55: #_ED51u: db $AD ; play note A4
#_1B9D56: #_ED52u: db $06, $69 ; duration, params
#_1B9D58: #_ED54u: db $AD ; play note A4
#_1B9D59: #_ED55u: db $AD ; play note A4
#_1B9D5A: #_ED56u: db $AD ; play note A4
#_1B9D5B: #_ED57u: db $06, $6C ; duration, params
#_1B9D5D: #_ED59u: db $AD ; play note A4
#_1B9D5E: #_ED5Au: db $06, $69 ; duration, params
#_1B9D60: #_ED5Cu: db $AD ; play note A4
#_1B9D61: #_ED5Du: db $AD ; play note A4
#_1B9D62: #_ED5Eu: db $AD ; play note A4
#_1B9D63: #_ED5Fu: db $06, $6B ; duration, params
#_1B9D65: #_ED61u: db $AD ; play note A4
#_1B9D66: #_ED62u: db $06, $69 ; duration, params
#_1B9D68: #_ED64u: db $AD ; play note A4
#_1B9D69: #_ED65u: db $AD ; play note A4
#_1B9D6A: #_ED66u: db $AD ; play note A4
#_1B9D6B: #_ED67u: db $06, $6D ; duration, params
#_1B9D6D: #_ED69u: db $AF ; play note B4
#_1B9D6E: #_ED6Au: db $06, $69 ; duration, params
#_1B9D70: #_ED6Cu: db $AF ; play note B4
#_1B9D71: #_ED6Du: db $AF ; play note B4
#_1B9D72: #_ED6Eu: db $AF ; play note B4
#_1B9D73: #_ED6Fu: db $06, $6B ; duration, params
#_1B9D75: #_ED71u: db $AF ; play note B4
#_1B9D76: #_ED72u: db $06, $69 ; duration, params
#_1B9D78: #_ED74u: db $AF ; play note B4
#_1B9D79: #_ED75u: db $AF ; play note B4
#_1B9D7A: #_ED76u: db $AF ; play note B4
#_1B9D7B: #_ED77u: db $06, $6C ; duration, params
#_1B9D7D: #_ED79u: db $AF ; play note B4
#_1B9D7E: #_ED7Au: db $06, $69 ; duration, params
#_1B9D80: #_ED7Cu: db $AF ; play note B4
#_1B9D81: #_ED7Du: db $AF ; play note B4
#_1B9D82: #_ED7Eu: db $AF ; play note B4
#_1B9D83: #_ED7Fu: db $06, $6B ; duration, params
#_1B9D85: #_ED81u: db $AF ; play note B4
#_1B9D86: #_ED82u: db $06, $69 ; duration, params
#_1B9D88: #_ED84u: db $AF ; play note B4
#_1B9D89: #_ED85u: db $AF ; play note B4
#_1B9D8A: #_ED86u: db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song16_Segment2_Track2:
#_1B9D8B: #_ED87u: db $30 ; duration
#_1B9D8C: #_ED88u: db $C9 ; rest
#_1B9D8D: #_ED89u: db $10, $6D ; duration, params
#_1B9D8F: #_ED8Bu: db $9B ; play note Ds3
#_1B9D90: #_ED8Cu: db $9A ; play note D3
#_1B9D91: #_ED8Du: db $A0 ; play note Gs3
#_1B9D92: #_ED8Eu: db $EF : dw Song16_Sub_F0A9 : db $01 ; call segment subroutine
#_1B9D96: #_ED92u: db $EF : dw Song16_Sub_F0C8 : db $01 ; call segment subroutine
#_1B9D9A: #_ED96u: db $60 ; duration
#_1B9D9B: #_ED97u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment2_Track3:
#_1B9D9C: #_ED98u: db $EF : dw Song16_Sub_F0B5 : db $01 ; call segment subroutine
#_1B9DA0: #_ED9Cu: db $48 ; duration
#_1B9DA1: #_ED9Du: db $C8 ; sustain current note
#_1B9DA2: #_ED9Eu: db $0C ; duration
#_1B9DA3: #_ED9Fu: db $94 ; play note Gs2
#_1B9DA4: #_EDA0u: db $93 ; play note G2
#_1B9DA5: #_EDA1u: db $48 ; duration
#_1B9DA6: #_EDA2u: db $C8 ; sustain current note
#_1B9DA7: #_EDA3u: db $0C ; duration
#_1B9DA8: #_EDA4u: db $96 ; play note As2
#_1B9DA9: #_EDA5u: db $95 ; play note A2
#_1B9DAA: #_EDA6u: db $60 ; duration
#_1B9DAB: #_EDA7u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment2_Track4:
#_1B9DAC: #_EDA8u: db $38 ; duration
#_1B9DAD: #_EDA9u: db $C9 ; rest
#_1B9DAE: #_EDAAu: db $10, $6D ; duration, params
#_1B9DB0: #_EDACu: db $9B ; play note Ds3
#_1B9DB1: #_EDADu: db $9A ; play note D3
#_1B9DB2: #_EDAEu: db $A0 ; play note Gs3
#_1B9DB3: #_EDAFu: db $EF : dw Song16_Sub_F0A9 : db $01 ; call segment subroutine
#_1B9DB7: #_EDB3u: db $EF : dw Song16_Sub_F0C8 : db $01 ; call segment subroutine
#_1B9DBB: #_EDB7u: db $58 ; duration
#_1B9DBC: #_EDB8u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment3_Track0:
#_1B9DBD: #_EDB9u: db $E0, $09 ; set instrument - strings A
#_1B9DBF: #_EDBBu: db $ED, $B4 ; set channel volume
#_1B9DC1: #_EDBDu: db $06, $6D ; duration, params
#_1B9DC3: #_EDBFu: db $B3 ; play note Ds5
#_1B9DC4: #_EDC0u: db $06, $69 ; duration, params
#_1B9DC6: #_EDC2u: db $B3 ; play note Ds5
#_1B9DC7: #_EDC3u: db $B3 ; play note Ds5
#_1B9DC8: #_EDC4u: db $B3 ; play note Ds5
#_1B9DC9: #_EDC5u: db $06, $6B ; duration, params
#_1B9DCB: #_EDC7u: db $B3 ; play note Ds5
#_1B9DCC: #_EDC8u: db $06, $69 ; duration, params
#_1B9DCE: #_EDCAu: db $B3 ; play note Ds5
#_1B9DCF: #_EDCBu: db $B3 ; play note Ds5
#_1B9DD0: #_EDCCu: db $B3 ; play note Ds5
#_1B9DD1: #_EDCDu: db $06, $6C ; duration, params
#_1B9DD3: #_EDCFu: db $B3 ; play note Ds5
#_1B9DD4: #_EDD0u: db $06, $69 ; duration, params
#_1B9DD6: #_EDD2u: db $B3 ; play note Ds5
#_1B9DD7: #_EDD3u: db $B3 ; play note Ds5
#_1B9DD8: #_EDD4u: db $B3 ; play note Ds5
#_1B9DD9: #_EDD5u: db $06, $6B ; duration, params
#_1B9DDB: #_EDD7u: db $B3 ; play note Ds5
#_1B9DDC: #_EDD8u: db $06, $69 ; duration, params
#_1B9DDE: #_EDDAu: db $B3 ; play note Ds5
#_1B9DDF: #_EDDBu: db $B3 ; play note Ds5
#_1B9DE0: #_EDDCu: db $B3 ; play note Ds5
#_1B9DE1: #_EDDDu: db $06, $6D ; duration, params
#_1B9DE3: #_EDDFu: db $B2 ; play note D5
#_1B9DE4: #_EDE0u: db $06, $69 ; duration, params
#_1B9DE6: #_EDE2u: db $B2 ; play note D5
#_1B9DE7: #_EDE3u: db $B2 ; play note D5
#_1B9DE8: #_EDE4u: db $B2 ; play note D5
#_1B9DE9: #_EDE5u: db $06, $6B ; duration, params
#_1B9DEB: #_EDE7u: db $B2 ; play note D5
#_1B9DEC: #_EDE8u: db $06, $69 ; duration, params
#_1B9DEE: #_EDEAu: db $B2 ; play note D5
#_1B9DEF: #_EDEBu: db $B2 ; play note D5
#_1B9DF0: #_EDECu: db $B2 ; play note D5
#_1B9DF1: #_EDEDu: db $06, $6C ; duration, params
#_1B9DF3: #_EDEFu: db $B2 ; play note D5
#_1B9DF4: #_EDF0u: db $06, $69 ; duration, params
#_1B9DF6: #_EDF2u: db $B2 ; play note D5
#_1B9DF7: #_EDF3u: db $B2 ; play note D5
#_1B9DF8: #_EDF4u: db $B2 ; play note D5
#_1B9DF9: #_EDF5u: db $06, $6B ; duration, params
#_1B9DFB: #_EDF7u: db $B2 ; play note D5
#_1B9DFC: #_EDF8u: db $06, $69 ; duration, params
#_1B9DFE: #_EDFAu: db $B2 ; play note D5
#_1B9DFF: #_EDFBu: db $B2 ; play note D5
#_1B9E00: #_EDFCu: db $B2 ; play note D5
#_1B9E01: #_EDFDu: db $06, $6D ; duration, params
#_1B9E03: #_EDFFu: db $B1 ; play note Cs5
#_1B9E04: #_EE00u: db $06, $69 ; duration, params
#_1B9E06: #_EE02u: db $B1 ; play note Cs5
#_1B9E07: #_EE03u: db $B1 ; play note Cs5
#_1B9E08: #_EE04u: db $B1 ; play note Cs5
#_1B9E09: #_EE05u: db $06, $6B ; duration, params
#_1B9E0B: #_EE07u: db $B1 ; play note Cs5
#_1B9E0C: #_EE08u: db $06, $69 ; duration, params
#_1B9E0E: #_EE0Au: db $B1 ; play note Cs5
#_1B9E0F: #_EE0Bu: db $B1 ; play note Cs5
#_1B9E10: #_EE0Cu: db $B1 ; play note Cs5
#_1B9E11: #_EE0Du: db $06, $6C ; duration, params
#_1B9E13: #_EE0Fu: db $B1 ; play note Cs5
#_1B9E14: #_EE10u: db $06, $69 ; duration, params
#_1B9E16: #_EE12u: db $B1 ; play note Cs5
#_1B9E17: #_EE13u: db $B1 ; play note Cs5
#_1B9E18: #_EE14u: db $B1 ; play note Cs5
#_1B9E19: #_EE15u: db $06, $6B ; duration, params
#_1B9E1B: #_EE17u: db $B1 ; play note Cs5
#_1B9E1C: #_EE18u: db $B1 ; play note Cs5
#_1B9E1D: #_EE19u: db $B1 ; play note Cs5
#_1B9E1E: #_EE1Au: db $06, $69 ; duration, params
#_1B9E20: #_EE1Cu: db $B1 ; play note Cs5
#_1B9E21: #_EE1Du: db $06, $6D ; duration, params
#_1B9E23: #_EE1Fu: db $B0 ; play note C5
#_1B9E24: #_EE20u: db $06, $69 ; duration, params
#_1B9E26: #_EE22u: db $B0 ; play note C5
#_1B9E27: #_EE23u: db $B0 ; play note C5
#_1B9E28: #_EE24u: db $B0 ; play note C5
#_1B9E29: #_EE25u: db $06, $6B ; duration, params
#_1B9E2B: #_EE27u: db $B0 ; play note C5
#_1B9E2C: #_EE28u: db $06, $69 ; duration, params
#_1B9E2E: #_EE2Au: db $B0 ; play note C5
#_1B9E2F: #_EE2Bu: db $B0 ; play note C5
#_1B9E30: #_EE2Cu: db $B0 ; play note C5
#_1B9E31: #_EE2Du: db $06, $6C ; duration, params
#_1B9E33: #_EE2Fu: db $B0 ; play note C5
#_1B9E34: #_EE30u: db $06, $69 ; duration, params
#_1B9E36: #_EE32u: db $B0 ; play note C5
#_1B9E37: #_EE33u: db $B0 ; play note C5
#_1B9E38: #_EE34u: db $B0 ; play note C5
#_1B9E39: #_EE35u: db $06, $6B ; duration, params
#_1B9E3B: #_EE37u: db $B0 ; play note C5
#_1B9E3C: #_EE38u: db $06, $69 ; duration, params
#_1B9E3E: #_EE3Au: db $B0 ; play note C5
#_1B9E3F: #_EE3Bu: db $B0 ; play note C5
#_1B9E40: #_EE3Cu: db $B0 ; play note C5
#_1B9E41: #_EE3Du: db $EF : dw Song16_Sub_F0D3 : db $04 ; call segment subroutine
#_1B9E45: #_EE41u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Segment3_Track1:
#_1B9E46: #_EE42u: db $E0, $09 ; set instrument - strings A
#_1B9E48: #_EE44u: db $ED, $B4 ; set channel volume
#_1B9E4A: #_EE46u: db $06, $6D ; duration, params
#_1B9E4C: #_EE48u: db $AD ; play note A4
#_1B9E4D: #_EE49u: db $06, $69 ; duration, params
#_1B9E4F: #_EE4Bu: db $AD ; play note A4
#_1B9E50: #_EE4Cu: db $AD ; play note A4
#_1B9E51: #_EE4Du: db $AD ; play note A4
#_1B9E52: #_EE4Eu: db $06, $6B ; duration, params
#_1B9E54: #_EE50u: db $AD ; play note A4
#_1B9E55: #_EE51u: db $06, $69 ; duration, params
#_1B9E57: #_EE53u: db $AD ; play note A4
#_1B9E58: #_EE54u: db $AD ; play note A4
#_1B9E59: #_EE55u: db $AD ; play note A4
#_1B9E5A: #_EE56u: db $06, $6C ; duration, params
#_1B9E5C: #_EE58u: db $AD ; play note A4
#_1B9E5D: #_EE59u: db $06, $69 ; duration, params
#_1B9E5F: #_EE5Bu: db $AD ; play note A4
#_1B9E60: #_EE5Cu: db $AD ; play note A4
#_1B9E61: #_EE5Du: db $AD ; play note A4
#_1B9E62: #_EE5Eu: db $06, $6B ; duration, params
#_1B9E64: #_EE60u: db $AD ; play note A4
#_1B9E65: #_EE61u: db $06, $69 ; duration, params
#_1B9E67: #_EE63u: db $AD ; play note A4
#_1B9E68: #_EE64u: db $AD ; play note A4
#_1B9E69: #_EE65u: db $AD ; play note A4
#_1B9E6A: #_EE66u: db $EF : dw Song16_Sub_F0E4 : db $01 ; call segment subroutine
#_1B9E6E: #_EE6Au: db $06, $6D ; duration, params
#_1B9E70: #_EE6Cu: db $AA ; play note Fs4
#_1B9E71: #_EE6Du: db $06, $69 ; duration, params
#_1B9E73: #_EE6Fu: db $AA ; play note Fs4
#_1B9E74: #_EE70u: db $AA ; play note Fs4
#_1B9E75: #_EE71u: db $AA ; play note Fs4
#_1B9E76: #_EE72u: db $06, $6B ; duration, params
#_1B9E78: #_EE74u: db $AA ; play note Fs4
#_1B9E79: #_EE75u: db $06, $69 ; duration, params
#_1B9E7B: #_EE77u: db $AA ; play note Fs4
#_1B9E7C: #_EE78u: db $AA ; play note Fs4
#_1B9E7D: #_EE79u: db $AA ; play note Fs4
#_1B9E7E: #_EE7Au: db $AA ; play note Fs4
#_1B9E7F: #_EE7Bu: db $AA ; play note Fs4
#_1B9E80: #_EE7Cu: db $AA ; play note Fs4
#_1B9E81: #_EE7Du: db $AA ; play note Fs4
#_1B9E82: #_EE7Eu: db $06, $6B ; duration, params
#_1B9E84: #_EE80u: db $AA ; play note Fs4
#_1B9E85: #_EE81u: db $06, $69 ; duration, params
#_1B9E87: #_EE83u: db $AA ; play note Fs4
#_1B9E88: #_EE84u: db $AA ; play note Fs4
#_1B9E89: #_EE85u: db $AA ; play note Fs4
#_1B9E8A: #_EE86u: db $EF : dw Song16_Sub_F125 : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song16_Segment3_Track2:
#_1B9E8E: #_EE8Au: db $30 ; duration
#_1B9E8F: #_EE8Bu: db $C9 ; rest
#_1B9E90: #_EE8Cu: db $10, $6D ; duration, params
#_1B9E92: #_EE8Eu: db $9F ; play note G3
#_1B9E93: #_EE8Fu: db $9E ; play note Fs3
#_1B9E94: #_EE90u: db $A4 ; play note C4
#_1B9E95: #_EE91u: db $EF : dw Song16_Sub_F136 : db $01 ; call segment subroutine
#_1B9E99: #_EE95u: db $60 ; duration
#_1B9E9A: #_EE96u: db $C8 ; sustain current note
#_1B9E9B: #_EE97u: db $18 ; duration
#_1B9E9C: #_EE98u: db $C8 ; sustain current note
#_1B9E9D: #_EE99u: db $0C ; duration
#_1B9E9E: #_EE9Au: db $A6 ; play note D4
#_1B9E9F: #_EE9Bu: db $A5 ; play note Cs4
#_1B9EA0: #_EE9Cu: db $30 ; duration
#_1B9EA1: #_EE9Du: db $C8 ; sustain current note
#_1B9EA2: #_EE9Eu: db $60 ; duration
#_1B9EA3: #_EE9Fu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment3_Track3:
#_1B9EA4: #_EEA0u: db $30 ; duration
#_1B9EA5: #_EEA1u: db $C9 ; rest
#_1B9EA6: #_EEA2u: db $10, $6D ; duration, params
#_1B9EA8: #_EEA4u: db $93 ; play note G2
#_1B9EA9: #_EEA5u: db $92 ; play note Fs2
#_1B9EAA: #_EEA6u: db $98 ; play note C3
#_1B9EAB: #_EEA7u: db $30 ; duration
#_1B9EAC: #_EEA8u: db $97 ; play note B2
#_1B9EAD: #_EEA9u: db $24 ; duration
#_1B9EAE: #_EEAAu: db $91 ; play note F2
#_1B9EAF: #_EEABu: db $0C ; duration
#_1B9EB0: #_EEACu: db $90 ; play note E2
#_1B9EB1: #_EEADu: db $30 ; duration
#_1B9EB2: #_EEAEu: db $C8 ; sustain current note
#_1B9EB3: #_EEAFu: db $10 ; duration
#_1B9EB4: #_EEB0u: db $90 ; play note E2
#_1B9EB5: #_EEB1u: db $8F ; play note Ds2
#_1B9EB6: #_EEB2u: db $96 ; play note As2
#_1B9EB7: #_EEB3u: db $30 ; duration
#_1B9EB8: #_EEB4u: db $95 ; play note A2
#_1B9EB9: #_EEB5u: db $24 ; duration
#_1B9EBA: #_EEB6u: db $8F ; play note Ds2
#_1B9EBB: #_EEB7u: db $0C ; duration
#_1B9EBC: #_EEB8u: db $8E ; play note D2
#_1B9EBD: #_EEB9u: db $60 ; duration
#_1B9EBE: #_EEBAu: db $C8 ; sustain current note
#_1B9EBF: #_EEBBu: db $18 ; duration
#_1B9EC0: #_EEBCu: db $C8 ; sustain current note
#_1B9EC1: #_EEBDu: db $0C ; duration
#_1B9EC2: #_EEBEu: db $9D ; play note F3
#_1B9EC3: #_EEBFu: db $9C ; play note E3
#_1B9EC4: #_EEC0u: db $30 ; duration
#_1B9EC5: #_EEC1u: db $C8 ; sustain current note
#_1B9EC6: #_EEC2u: db $48 ; duration
#_1B9EC7: #_EEC3u: db $C8 ; sustain current note
#_1B9EC8: #_EEC4u: db $0C ; duration
#_1B9EC9: #_EEC5u: db $A9 ; play note F4
#_1B9ECA: #_EEC6u: db $A8 ; play note E4
#_1B9ECB: #_EEC7u: db $60 ; duration
#_1B9ECC: #_EEC8u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment3_Track4:
#_1B9ECD: #_EEC9u: db $38 ; duration
#_1B9ECE: #_EECAu: db $C9 ; rest
#_1B9ECF: #_EECBu: db $10, $6D ; duration, params
#_1B9ED1: #_EECDu: db $9F ; play note G3
#_1B9ED2: #_EECEu: db $9E ; play note Fs3
#_1B9ED3: #_EECFu: db $A4 ; play note C4
#_1B9ED4: #_EED0u: db $EF : dw Song16_Sub_F136 : db $01 ; call segment subroutine
#_1B9ED8: #_EED4u: db $60 ; duration
#_1B9ED9: #_EED5u: db $C8 ; sustain current note
#_1B9EDA: #_EED6u: db $18 ; duration
#_1B9EDB: #_EED7u: db $C8 ; sustain current note
#_1B9EDC: #_EED8u: db $0C ; duration
#_1B9EDD: #_EED9u: db $A6 ; play note D4
#_1B9EDE: #_EEDAu: db $A5 ; play note Cs4
#_1B9EDF: #_EEDBu: db $30 ; duration
#_1B9EE0: #_EEDCu: db $C8 ; sustain current note
#_1B9EE1: #_EEDDu: db $58 ; duration
#_1B9EE2: #_EEDEu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment3_Track5:
#_1B9EE3: #_EEDFu: db $E0, $09 ; set instrument - strings A
#_1B9EE5: #_EEE1u: db $ED, $F0 ; set channel volume
#_1B9EE7: #_EEE3u: db $E1, $08 ; set panning - leaning right
#_1B9EE9: #_EEE5u: db $E3, $1C, $1C, $10 ; enable vibrato
#_1B9EED: #_EEE9u: db $60 ; duration
#_1B9EEE: #_EEEAu: db $C9 ; rest
#_1B9EEF: #_EEEBu: db $C9 ; rest
#_1B9EF0: #_EEECu: db $C9 ; rest
#_1B9EF1: #_EEEDu: db $C9 ; rest
#_1B9EF2: #_EEEEu: db $C9 ; rest
#_1B9EF3: #_EEEFu: db $48, $6D ; duration, params
#_1B9EF5: #_EEF1u: db $C8 ; sustain current note
#_1B9EF6: #_EEF2u: db $0C ; duration
#_1B9EF7: #_EEF3u: db $A0 ; play note Gs3
#_1B9EF8: #_EEF4u: db $9F ; play note G3
#_1B9EF9: #_EEF5u: db $60 ; duration
#_1B9EFA: #_EEF6u: db $C8 ; sustain current note
#_1B9EFB: #_EEF7u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment4_Track0:
#_1B9EFC: #_EEF8u: db $06, $69 ; duration, params
#_1B9EFE: #_EEFAu: db $AE ; play note As4
#_1B9EFF: #_EEFBu: db $AE ; play note As4
#_1B9F00: #_EEFCu: db $AE ; play note As4
#_1B9F01: #_EEFDu: db $AE ; play note As4
#_1B9F02: #_EEFEu: db $AE ; play note As4
#_1B9F03: #_EEFFu: db $AE ; play note As4
#_1B9F04: #_EF00u: db $AE ; play note As4
#_1B9F05: #_EF01u: db $AE ; play note As4
#_1B9F06: #_EF02u: db $AE ; play note As4
#_1B9F07: #_EF03u: db $AE ; play note As4
#_1B9F08: #_EF04u: db $AE ; play note As4
#_1B9F09: #_EF05u: db $AE ; play note As4
#_1B9F0A: #_EF06u: db $AE ; play note As4
#_1B9F0B: #_EF07u: db $AE ; play note As4
#_1B9F0C: #_EF08u: db $AE ; play note As4
#_1B9F0D: #_EF09u: db $AE ; play note As4
#_1B9F0E: #_EF0Au: db $EF : dw Song16_Sub_F14E : db $03 ; call segment subroutine
#_1B9F12: #_EF0Eu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Segment4_Track1:
#_1B9F13: #_EF0Fu: db $06, $69 ; duration, params
#_1B9F15: #_EF11u: db $A8 ; play note E4
#_1B9F16: #_EF12u: db $A8 ; play note E4
#_1B9F17: #_EF13u: db $A8 ; play note E4
#_1B9F18: #_EF14u: db $A8 ; play note E4
#_1B9F19: #_EF15u: db $A8 ; play note E4
#_1B9F1A: #_EF16u: db $A8 ; play note E4
#_1B9F1B: #_EF17u: db $A8 ; play note E4
#_1B9F1C: #_EF18u: db $A8 ; play note E4
#_1B9F1D: #_EF19u: db $A8 ; play note E4
#_1B9F1E: #_EF1Au: db $A8 ; play note E4
#_1B9F1F: #_EF1Bu: db $A8 ; play note E4
#_1B9F20: #_EF1Cu: db $A8 ; play note E4
#_1B9F21: #_EF1Du: db $A8 ; play note E4
#_1B9F22: #_EF1Eu: db $A8 ; play note E4
#_1B9F23: #_EF1Fu: db $A8 ; play note E4
#_1B9F24: #_EF20u: db $A8 ; play note E4
#_1B9F25: #_EF21u: db $EF : dw Song16_Sub_F15F : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song16_Segment4_Track2:
#_1B9F29: #_EF25u: db $30, $6D ; duration, params
#_1B9F2B: #_EF27u: db $C8 ; sustain current note
#_1B9F2C: #_EF28u: db $0C ; duration
#_1B9F2D: #_EF29u: db $99 ; play note Cs3
#_1B9F2E: #_EF2Au: db $24 ; duration
#_1B9F2F: #_EF2Bu: db $98 ; play note C3
#_1B9F30: #_EF2Cu: db $60 ; duration
#_1B9F31: #_EF2Du: db $C8 ; sustain current note
#_1B9F32: #_EF2Eu: db $0C ; duration
#_1B9F33: #_EF2Fu: db $A5 ; play note Cs4
#_1B9F34: #_EF30u: db $A4 ; play note C4
#_1B9F35: #_EF31u: db $48 ; duration
#_1B9F36: #_EF32u: db $C8 ; sustain current note
#_1B9F37: #_EF33u: db $60 ; duration
#_1B9F38: #_EF34u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment4_Track3:
#_1B9F39: #_EF35u: db $60, $68 ; duration, params
#_1B9F3B: #_EF37u: db $C8 ; sustain current note
#_1B9F3C: #_EF38u: db $0C, $6D ; duration, params
#_1B9F3E: #_EF3Au: db $9C ; play note E3
#_1B9F3F: #_EF3Bu: db $9B ; play note Ds3
#_1B9F40: #_EF3Cu: db $48 ; duration
#_1B9F41: #_EF3Du: db $C8 ; sustain current note
#_1B9F42: #_EF3Eu: db $30 ; duration
#_1B9F43: #_EF3Fu: db $C8 ; sustain current note
#_1B9F44: #_EF40u: db $0C ; duration
#_1B9F45: #_EF41u: db $A8 ; play note E4
#_1B9F46: #_EF42u: db $A7 ; play note Ds4
#_1B9F47: #_EF43u: db $18 ; duration
#_1B9F48: #_EF44u: db $C8 ; sustain current note
#_1B9F49: #_EF45u: db $60 ; duration
#_1B9F4A: #_EF46u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment4_Track4:
#_1B9F4B: #_EF47u: db $38, $6D ; duration, params
#_1B9F4D: #_EF49u: db $C8 ; sustain current note
#_1B9F4E: #_EF4Au: db $0C ; duration
#_1B9F4F: #_EF4Bu: db $99 ; play note Cs3
#_1B9F50: #_EF4Cu: db $98 ; play note C3
#_1B9F51: #_EF4Du: db $18 ; duration
#_1B9F52: #_EF4Eu: db $C8 ; sustain current note
#_1B9F53: #_EF4Fu: db $60 ; duration
#_1B9F54: #_EF50u: db $C8 ; sustain current note
#_1B9F55: #_EF51u: db $0C ; duration
#_1B9F56: #_EF52u: db $A5 ; play note Cs4
#_1B9F57: #_EF53u: db $A4 ; play note C4
#_1B9F58: #_EF54u: db $48 ; duration
#_1B9F59: #_EF55u: db $C8 ; sustain current note
#_1B9F5A: #_EF56u: db $58 ; duration
#_1B9F5B: #_EF57u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment4_Track5:
#_1B9F5C: #_EF58u: db $60, $68 ; duration, params
#_1B9F5E: #_EF5Au: db $C8 ; sustain current note
#_1B9F5F: #_EF5Bu: db $30 ; duration
#_1B9F60: #_EF5Cu: db $C8 ; sustain current note
#_1B9F61: #_EF5Du: db $0C, $6D ; duration, params
#_1B9F63: #_EF5Fu: db $9F ; play note G3
#_1B9F64: #_EF60u: db $9E ; play note Fs3
#_1B9F65: #_EF61u: db $18 ; duration
#_1B9F66: #_EF62u: db $C8 ; sustain current note
#_1B9F67: #_EF63u: db $60 ; duration
#_1B9F68: #_EF64u: db $C8 ; sustain current note
#_1B9F69: #_EF65u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment5_Track0:
#_1B9F6A: #_EF66u: db $06, $6B ; duration, params
#_1B9F6C: #_EF68u: db $AF ; play note B4
#_1B9F6D: #_EF69u: db $AF ; play note B4
#_1B9F6E: #_EF6Au: db $AF ; play note B4
#_1B9F6F: #_EF6Bu: db $AF ; play note B4
#_1B9F70: #_EF6Cu: db $AF ; play note B4
#_1B9F71: #_EF6Du: db $AF ; play note B4
#_1B9F72: #_EF6Eu: db $06, $69 ; duration, params
#_1B9F74: #_EF70u: db $AF ; play note B4
#_1B9F75: #_EF71u: db $AF ; play note B4
#_1B9F76: #_EF72u: db $06, $6C ; duration, params
#_1B9F78: #_EF74u: db $AF ; play note B4
#_1B9F79: #_EF75u: db $06, $69 ; duration, params
#_1B9F7B: #_EF77u: db $AF ; play note B4
#_1B9F7C: #_EF78u: db $AF ; play note B4
#_1B9F7D: #_EF79u: db $AF ; play note B4
#_1B9F7E: #_EF7Au: db $06, $6B ; duration, params
#_1B9F80: #_EF7Cu: db $AF ; play note B4
#_1B9F81: #_EF7Du: db $06, $69 ; duration, params
#_1B9F83: #_EF7Fu: db $AF ; play note B4
#_1B9F84: #_EF80u: db $AF ; play note B4
#_1B9F85: #_EF81u: db $AF ; play note B4
#_1B9F86: #_EF82u: db $EF : dw Song16_Sub_F170 : db $01 ; call segment subroutine
#_1B9F8A: #_EF86u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Segment5_Track1:
#_1B9F8B: #_EF87u: db $EF : dw Song16_Sub_F028 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song16_Segment5_Track2:
#_1B9F8F: #_EF8Bu: db $60, $7D ; duration, params
#_1B9F91: #_EF8Du: db $A8 ; play note E4
#_1B9F92: #_EF8Eu: db $C8 ; sustain current note
#_1B9F93: #_EF8Fu: db $C8 ; sustain current note
#_1B9F94: #_EF90u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment5_Track3:
#_1B9F95: #_EF91u: db $60, $6D ; duration, params
#_1B9F97: #_EF93u: db $99 ; play note Cs3
#_1B9F98: #_EF94u: db $C8 ; sustain current note
#_1B9F99: #_EF95u: db $C8 ; sustain current note
#_1B9F9A: #_EF96u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment5_Track4:
#_1B9F9B: #_EF97u: db $08 ; duration
#_1B9F9C: #_EF98u: db $C9 ; rest
#_1B9F9D: #_EF99u: db $58, $7D ; duration, params
#_1B9F9F: #_EF9Bu: db $A8 ; play note E4
#_1B9FA0: #_EF9Cu: db $60 ; duration
#_1B9FA1: #_EF9Du: db $C8 ; sustain current note
#_1B9FA2: #_EF9Eu: db $C8 ; sustain current note
#_1B9FA3: #_EF9Fu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song16_Segment5_Track5:
#_1B9FA4: #_EFA0u: db $60, $6D ; duration, params
#_1B9FA6: #_EFA2u: db $9F ; play note G3
#_1B9FA7: #_EFA3u: db $C8 ; sustain current note
#_1B9FA8: #_EFA4u: db $C8 ; sustain current note
#_1B9FA9: #_EFA5u: db $C8 ; sustain current note
#_1B9FAA: #_EFA6u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_EFA7:
#_1B9FAB: #_EFA7u: db $06, $6D ; duration, params
#_1B9FAD: #_EFA9u: db $AF ; play note B4
#_1B9FAE: #_EFAAu: db $06, $69 ; duration, params
#_1B9FB0: #_EFACu: db $AF ; play note B4
#_1B9FB1: #_EFADu: db $AF ; play note B4
#_1B9FB2: #_EFAEu: db $AF ; play note B4
#_1B9FB3: #_EFAFu: db $06, $6B ; duration, params
#_1B9FB5: #_EFB1u: db $AF ; play note B4
#_1B9FB6: #_EFB2u: db $06, $69 ; duration, params
#_1B9FB8: #_EFB4u: db $AF ; play note B4
#_1B9FB9: #_EFB5u: db $AF ; play note B4
#_1B9FBA: #_EFB6u: db $AF ; play note B4
#_1B9FBB: #_EFB7u: db $06, $6C ; duration, params
#_1B9FBD: #_EFB9u: db $AF ; play note B4
#_1B9FBE: #_EFBAu: db $06, $69 ; duration, params
#_1B9FC0: #_EFBCu: db $AF ; play note B4
#_1B9FC1: #_EFBDu: db $AF ; play note B4
#_1B9FC2: #_EFBEu: db $AF ; play note B4
#_1B9FC3: #_EFBFu: db $06, $6B ; duration, params
#_1B9FC5: #_EFC1u: db $AF ; play note B4
#_1B9FC6: #_EFC2u: db $06, $69 ; duration, params
#_1B9FC8: #_EFC4u: db $AF ; play note B4
#_1B9FC9: #_EFC5u: db $AF ; play note B4
#_1B9FCA: #_EFC6u: db $AF ; play note B4
#_1B9FCB: #_EFC7u: db $06, $6D ; duration, params
#_1B9FCD: #_EFC9u: db $AE ; play note As4
#_1B9FCE: #_EFCAu: db $06, $69 ; duration, params
#_1B9FD0: #_EFCCu: db $AE ; play note As4
#_1B9FD1: #_EFCDu: db $AE ; play note As4
#_1B9FD2: #_EFCEu: db $AE ; play note As4
#_1B9FD3: #_EFCFu: db $06, $6B ; duration, params
#_1B9FD5: #_EFD1u: db $AE ; play note As4
#_1B9FD6: #_EFD2u: db $06, $69 ; duration, params
#_1B9FD8: #_EFD4u: db $AE ; play note As4
#_1B9FD9: #_EFD5u: db $AE ; play note As4
#_1B9FDA: #_EFD6u: db $AE ; play note As4
#_1B9FDB: #_EFD7u: db $06, $6C ; duration, params
#_1B9FDD: #_EFD9u: db $AE ; play note As4
#_1B9FDE: #_EFDAu: db $06, $69 ; duration, params
#_1B9FE0: #_EFDCu: db $AE ; play note As4
#_1B9FE1: #_EFDDu: db $AE ; play note As4
#_1B9FE2: #_EFDEu: db $AE ; play note As4
#_1B9FE3: #_EFDFu: db $06, $6B ; duration, params
#_1B9FE5: #_EFE1u: db $AE ; play note As4
#_1B9FE6: #_EFE2u: db $06, $69 ; duration, params
#_1B9FE8: #_EFE4u: db $AE ; play note As4
#_1B9FE9: #_EFE5u: db $AE ; play note As4
#_1B9FEA: #_EFE6u: db $AE ; play note As4
#_1B9FEB: #_EFE7u: db $06, $6D ; duration, params
#_1B9FED: #_EFE9u: db $B2 ; play note D5
#_1B9FEE: #_EFEAu: db $06, $69 ; duration, params
#_1B9FF0: #_EFECu: db $B2 ; play note D5
#_1B9FF1: #_EFEDu: db $B2 ; play note D5
#_1B9FF2: #_EFEEu: db $B2 ; play note D5
#_1B9FF3: #_EFEFu: db $06, $6B ; duration, params
#_1B9FF5: #_EFF1u: db $B2 ; play note D5
#_1B9FF6: #_EFF2u: db $06, $69 ; duration, params
#_1B9FF8: #_EFF4u: db $B2 ; play note D5
#_1B9FF9: #_EFF5u: db $B2 ; play note D5
#_1B9FFA: #_EFF6u: db $B2 ; play note D5
#_1B9FFB: #_EFF7u: db $06, $6C ; duration, params
#_1B9FFD: #_EFF9u: db $B2 ; play note D5
#_1B9FFE: #_EFFAu: db $06, $69 ; duration, params
#_1BA000: #_EFFCu: db $B2 ; play note D5
#_1BA001: #_EFFDu: db $B2 ; play note D5
#_1BA002: #_EFFEu: db $B2 ; play note D5
#_1BA003: #_EFFFu: db $06, $6B ; duration, params
#_1BA005: #_F001u: db $B2 ; play note D5
#_1BA006: #_F002u: db $06, $69 ; duration, params
#_1BA008: #_F004u: db $B2 ; play note D5
#_1BA009: #_F005u: db $B2 ; play note D5
#_1BA00A: #_F006u: db $B2 ; play note D5
#_1BA00B: #_F007u: db $06, $6D ; duration, params
#_1BA00D: #_F009u: db $B1 ; play note Cs5
#_1BA00E: #_F00Au: db $06, $69 ; duration, params
#_1BA010: #_F00Cu: db $B1 ; play note Cs5
#_1BA011: #_F00Du: db $B1 ; play note Cs5
#_1BA012: #_F00Eu: db $B1 ; play note Cs5
#_1BA013: #_F00Fu: db $06, $6B ; duration, params
#_1BA015: #_F011u: db $B1 ; play note Cs5
#_1BA016: #_F012u: db $06, $69 ; duration, params
#_1BA018: #_F014u: db $B1 ; play note Cs5
#_1BA019: #_F015u: db $B1 ; play note Cs5
#_1BA01A: #_F016u: db $B1 ; play note Cs5
#_1BA01B: #_F017u: db $06, $6C ; duration, params
#_1BA01D: #_F019u: db $B1 ; play note Cs5
#_1BA01E: #_F01Au: db $06, $69 ; duration, params
#_1BA020: #_F01Cu: db $B1 ; play note Cs5
#_1BA021: #_F01Du: db $B1 ; play note Cs5
#_1BA022: #_F01Eu: db $B1 ; play note Cs5
#_1BA023: #_F01Fu: db $06, $6B ; duration, params
#_1BA025: #_F021u: db $B1 ; play note Cs5
#_1BA026: #_F022u: db $06, $69 ; duration, params
#_1BA028: #_F024u: db $B1 ; play note Cs5
#_1BA029: #_F025u: db $B1 ; play note Cs5
#_1BA02A: #_F026u: db $B1 ; play note Cs5
#_1BA02B: #_F027u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F028:
#_1BA02C: #_F028u: db $06, $6D ; duration, params
#_1BA02E: #_F02Au: db $A9 ; play note F4
#_1BA02F: #_F02Bu: db $06, $69 ; duration, params
#_1BA031: #_F02Du: db $A9 ; play note F4
#_1BA032: #_F02Eu: db $A9 ; play note F4
#_1BA033: #_F02Fu: db $A9 ; play note F4
#_1BA034: #_F030u: db $06, $6B ; duration, params
#_1BA036: #_F032u: db $A9 ; play note F4
#_1BA037: #_F033u: db $06, $69 ; duration, params
#_1BA039: #_F035u: db $A9 ; play note F4
#_1BA03A: #_F036u: db $A9 ; play note F4
#_1BA03B: #_F037u: db $A9 ; play note F4
#_1BA03C: #_F038u: db $06, $6C ; duration, params
#_1BA03E: #_F03Au: db $A9 ; play note F4
#_1BA03F: #_F03Bu: db $06, $69 ; duration, params
#_1BA041: #_F03Du: db $A9 ; play note F4
#_1BA042: #_F03Eu: db $A9 ; play note F4
#_1BA043: #_F03Fu: db $A9 ; play note F4
#_1BA044: #_F040u: db $06, $6B ; duration, params
#_1BA046: #_F042u: db $A9 ; play note F4
#_1BA047: #_F043u: db $06, $69 ; duration, params
#_1BA049: #_F045u: db $A9 ; play note F4
#_1BA04A: #_F046u: db $A9 ; play note F4
#_1BA04B: #_F047u: db $A9 ; play note F4
#_1BA04C: #_F048u: db $06, $6D ; duration, params
#_1BA04E: #_F04Au: db $A8 ; play note E4
#_1BA04F: #_F04Bu: db $06, $69 ; duration, params
#_1BA051: #_F04Du: db $A8 ; play note E4
#_1BA052: #_F04Eu: db $A8 ; play note E4
#_1BA053: #_F04Fu: db $A8 ; play note E4
#_1BA054: #_F050u: db $06, $6B ; duration, params
#_1BA056: #_F052u: db $A8 ; play note E4
#_1BA057: #_F053u: db $06, $69 ; duration, params
#_1BA059: #_F055u: db $A8 ; play note E4
#_1BA05A: #_F056u: db $A8 ; play note E4
#_1BA05B: #_F057u: db $A8 ; play note E4
#_1BA05C: #_F058u: db $06, $6C ; duration, params
#_1BA05E: #_F05Au: db $A8 ; play note E4
#_1BA05F: #_F05Bu: db $06, $69 ; duration, params
#_1BA061: #_F05Du: db $A8 ; play note E4
#_1BA062: #_F05Eu: db $A8 ; play note E4
#_1BA063: #_F05Fu: db $A8 ; play note E4
#_1BA064: #_F060u: db $06, $6B ; duration, params
#_1BA066: #_F062u: db $A8 ; play note E4
#_1BA067: #_F063u: db $06, $69 ; duration, params
#_1BA069: #_F065u: db $A8 ; play note E4
#_1BA06A: #_F066u: db $A8 ; play note E4
#_1BA06B: #_F067u: db $A8 ; play note E4
#_1BA06C: #_F068u: db $06, $6D ; duration, params
#_1BA06E: #_F06Au: db $AC ; play note Gs4
#_1BA06F: #_F06Bu: db $06, $69 ; duration, params
#_1BA071: #_F06Du: db $AC ; play note Gs4
#_1BA072: #_F06Eu: db $AC ; play note Gs4
#_1BA073: #_F06Fu: db $AC ; play note Gs4
#_1BA074: #_F070u: db $06, $6B ; duration, params
#_1BA076: #_F072u: db $AC ; play note Gs4
#_1BA077: #_F073u: db $06, $69 ; duration, params
#_1BA079: #_F075u: db $AC ; play note Gs4
#_1BA07A: #_F076u: db $AC ; play note Gs4
#_1BA07B: #_F077u: db $AC ; play note Gs4
#_1BA07C: #_F078u: db $06, $6C ; duration, params
#_1BA07E: #_F07Au: db $AC ; play note Gs4
#_1BA07F: #_F07Bu: db $06, $69 ; duration, params
#_1BA081: #_F07Du: db $AC ; play note Gs4
#_1BA082: #_F07Eu: db $AC ; play note Gs4
#_1BA083: #_F07Fu: db $AC ; play note Gs4
#_1BA084: #_F080u: db $06, $6B ; duration, params
#_1BA086: #_F082u: db $AC ; play note Gs4
#_1BA087: #_F083u: db $06, $69 ; duration, params
#_1BA089: #_F085u: db $AC ; play note Gs4
#_1BA08A: #_F086u: db $AC ; play note Gs4
#_1BA08B: #_F087u: db $AC ; play note Gs4
#_1BA08C: #_F088u: db $06, $6D ; duration, params
#_1BA08E: #_F08Au: db $AB ; play note G4
#_1BA08F: #_F08Bu: db $06, $69 ; duration, params
#_1BA091: #_F08Du: db $AB ; play note G4
#_1BA092: #_F08Eu: db $AB ; play note G4
#_1BA093: #_F08Fu: db $AB ; play note G4
#_1BA094: #_F090u: db $06, $6B ; duration, params
#_1BA096: #_F092u: db $AB ; play note G4
#_1BA097: #_F093u: db $06, $69 ; duration, params
#_1BA099: #_F095u: db $AB ; play note G4
#_1BA09A: #_F096u: db $AB ; play note G4
#_1BA09B: #_F097u: db $AB ; play note G4
#_1BA09C: #_F098u: db $06, $6C ; duration, params
#_1BA09E: #_F09Au: db $AB ; play note G4
#_1BA09F: #_F09Bu: db $06, $69 ; duration, params
#_1BA0A1: #_F09Du: db $AB ; play note G4
#_1BA0A2: #_F09Eu: db $AB ; play note G4
#_1BA0A3: #_F09Fu: db $AB ; play note G4
#_1BA0A4: #_F0A0u: db $06, $6B ; duration, params
#_1BA0A6: #_F0A2u: db $AB ; play note G4
#_1BA0A7: #_F0A3u: db $06, $69 ; duration, params
#_1BA0A9: #_F0A5u: db $AB ; play note G4
#_1BA0AA: #_F0A6u: db $AB ; play note G4
#_1BA0AB: #_F0A7u: db $AB ; play note G4
#_1BA0AC: #_F0A8u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F0A9:
#_1BA0AD: #_F0A9u: db $30 ; duration
#_1BA0AE: #_F0AAu: db $9F ; play note G3
#_1BA0AF: #_F0ABu: db $24 ; duration
#_1BA0B0: #_F0ACu: db $96 ; play note As2
#_1BA0B1: #_F0ADu: db $0C ; duration
#_1BA0B2: #_F0AEu: db $95 ; play note A2
#_1BA0B3: #_F0AFu: db $48 ; duration
#_1BA0B4: #_F0B0u: db $C8 ; sustain current note
#_1BA0B5: #_F0B1u: db $0C ; duration
#_1BA0B6: #_F0B2u: db $A2 ; play note As3
#_1BA0B7: #_F0B3u: db $A1 ; play note A3
#_1BA0B8: #_F0B4u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F0B5:
#_1BA0B9: #_F0B5u: db $30 ; duration
#_1BA0BA: #_F0B6u: db $C9 ; rest
#_1BA0BB: #_F0B7u: db $10, $6D ; duration, params
#_1BA0BD: #_F0B9u: db $8F ; play note Ds2
#_1BA0BE: #_F0BAu: db $8E ; play note D2
#_1BA0BF: #_F0BBu: db $94 ; play note Gs2
#_1BA0C0: #_F0BCu: db $30 ; duration
#_1BA0C1: #_F0BDu: db $93 ; play note G2
#_1BA0C2: #_F0BEu: db $24 ; duration
#_1BA0C3: #_F0BFu: db $8A ; play note As1
#_1BA0C4: #_F0C0u: db $0C ; duration
#_1BA0C5: #_F0C1u: db $89 ; play note A1
#_1BA0C6: #_F0C2u: db $48 ; duration
#_1BA0C7: #_F0C3u: db $C8 ; sustain current note
#_1BA0C8: #_F0C4u: db $0C ; duration
#_1BA0C9: #_F0C5u: db $92 ; play note Fs2
#_1BA0CA: #_F0C6u: db $91 ; play note F2
#_1BA0CB: #_F0C7u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F0C8:
#_1BA0CC: #_F0C8u: db $48 ; duration
#_1BA0CD: #_F0C9u: db $C8 ; sustain current note
#_1BA0CE: #_F0CAu: db $0C ; duration
#_1BA0CF: #_F0CBu: db $A4 ; play note C4
#_1BA0D0: #_F0CCu: db $A3 ; play note B3
#_1BA0D1: #_F0CDu: db $48 ; duration
#_1BA0D2: #_F0CEu: db $C8 ; sustain current note
#_1BA0D3: #_F0CFu: db $0C ; duration
#_1BA0D4: #_F0D0u: db $A6 ; play note D4
#_1BA0D5: #_F0D1u: db $A5 ; play note Cs4
#_1BA0D6: #_F0D2u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F0D3:
#_1BA0D7: #_F0D3u: db $AF ; play note B4
#_1BA0D8: #_F0D4u: db $AF ; play note B4
#_1BA0D9: #_F0D5u: db $AF ; play note B4
#_1BA0DA: #_F0D6u: db $AF ; play note B4
#_1BA0DB: #_F0D7u: db $AF ; play note B4
#_1BA0DC: #_F0D8u: db $AF ; play note B4
#_1BA0DD: #_F0D9u: db $AF ; play note B4
#_1BA0DE: #_F0DAu: db $AF ; play note B4
#_1BA0DF: #_F0DBu: db $AF ; play note B4
#_1BA0E0: #_F0DCu: db $AF ; play note B4
#_1BA0E1: #_F0DDu: db $AF ; play note B4
#_1BA0E2: #_F0DEu: db $AF ; play note B4
#_1BA0E3: #_F0DFu: db $AF ; play note B4
#_1BA0E4: #_F0E0u: db $AF ; play note B4
#_1BA0E5: #_F0E1u: db $AF ; play note B4
#_1BA0E6: #_F0E2u: db $AF ; play note B4
#_1BA0E7: #_F0E3u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F0E4:
#_1BA0E8: #_F0E4u: db $06, $6D ; duration, params
#_1BA0EA: #_F0E6u: db $AC ; play note Gs4
#_1BA0EB: #_F0E7u: db $06, $69 ; duration, params
#_1BA0ED: #_F0E9u: db $AC ; play note Gs4
#_1BA0EE: #_F0EAu: db $AC ; play note Gs4
#_1BA0EF: #_F0EBu: db $AC ; play note Gs4
#_1BA0F0: #_F0ECu: db $06, $6B ; duration, params
#_1BA0F2: #_F0EEu: db $AC ; play note Gs4
#_1BA0F3: #_F0EFu: db $06, $69 ; duration, params
#_1BA0F5: #_F0F1u: db $AC ; play note Gs4
#_1BA0F6: #_F0F2u: db $AC ; play note Gs4
#_1BA0F7: #_F0F3u: db $AC ; play note Gs4
#_1BA0F8: #_F0F4u: db $06, $6C ; duration, params
#_1BA0FA: #_F0F6u: db $AC ; play note Gs4
#_1BA0FB: #_F0F7u: db $06, $69 ; duration, params
#_1BA0FD: #_F0F9u: db $AC ; play note Gs4
#_1BA0FE: #_F0FAu: db $AC ; play note Gs4
#_1BA0FF: #_F0FBu: db $AC ; play note Gs4
#_1BA100: #_F0FCu: db $06, $6B ; duration, params
#_1BA102: #_F0FEu: db $AC ; play note Gs4
#_1BA103: #_F0FFu: db $06, $69 ; duration, params
#_1BA105: #_F101u: db $AC ; play note Gs4
#_1BA106: #_F102u: db $AC ; play note Gs4
#_1BA107: #_F103u: db $AC ; play note Gs4
#_1BA108: #_F104u: db $06, $6D ; duration, params
#_1BA10A: #_F106u: db $AB ; play note G4
#_1BA10B: #_F107u: db $06, $69 ; duration, params
#_1BA10D: #_F109u: db $AB ; play note G4
#_1BA10E: #_F10Au: db $AB ; play note G4
#_1BA10F: #_F10Bu: db $AB ; play note G4
#_1BA110: #_F10Cu: db $06, $6B ; duration, params
#_1BA112: #_F10Eu: db $AB ; play note G4
#_1BA113: #_F10Fu: db $06, $69 ; duration, params
#_1BA115: #_F111u: db $AB ; play note G4
#_1BA116: #_F112u: db $AB ; play note G4
#_1BA117: #_F113u: db $AB ; play note G4
#_1BA118: #_F114u: db $06, $6C ; duration, params
#_1BA11A: #_F116u: db $AB ; play note G4
#_1BA11B: #_F117u: db $06, $69 ; duration, params
#_1BA11D: #_F119u: db $AB ; play note G4
#_1BA11E: #_F11Au: db $AB ; play note G4
#_1BA11F: #_F11Bu: db $AB ; play note G4
#_1BA120: #_F11Cu: db $06, $6B ; duration, params
#_1BA122: #_F11Eu: db $AB ; play note G4
#_1BA123: #_F11Fu: db $06, $69 ; duration, params
#_1BA125: #_F121u: db $AB ; play note G4
#_1BA126: #_F122u: db $AB ; play note G4
#_1BA127: #_F123u: db $AB ; play note G4
#_1BA128: #_F124u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F125:
#_1BA129: #_F125u: db $A9 ; play note F4
#_1BA12A: #_F126u: db $A9 ; play note F4
#_1BA12B: #_F127u: db $A9 ; play note F4
#_1BA12C: #_F128u: db $A9 ; play note F4
#_1BA12D: #_F129u: db $A9 ; play note F4
#_1BA12E: #_F12Au: db $A9 ; play note F4
#_1BA12F: #_F12Bu: db $A9 ; play note F4
#_1BA130: #_F12Cu: db $A9 ; play note F4
#_1BA131: #_F12Du: db $A9 ; play note F4
#_1BA132: #_F12Eu: db $A9 ; play note F4
#_1BA133: #_F12Fu: db $A9 ; play note F4
#_1BA134: #_F130u: db $A9 ; play note F4
#_1BA135: #_F131u: db $A9 ; play note F4
#_1BA136: #_F132u: db $A9 ; play note F4
#_1BA137: #_F133u: db $A9 ; play note F4
#_1BA138: #_F134u: db $A9 ; play note F4
#_1BA139: #_F135u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F136:
#_1BA13A: #_F136u: db $30 ; duration
#_1BA13B: #_F137u: db $A3 ; play note B3
#_1BA13C: #_F138u: db $24 ; duration
#_1BA13D: #_F139u: db $9D ; play note F3
#_1BA13E: #_F13Au: db $0C ; duration
#_1BA13F: #_F13Bu: db $9C ; play note E3
#_1BA140: #_F13Cu: db $30 ; duration
#_1BA141: #_F13Du: db $C8 ; sustain current note
#_1BA142: #_F13Eu: db $10 ; duration
#_1BA143: #_F13Fu: db $9C ; play note E3
#_1BA144: #_F140u: db $9B ; play note Ds3
#_1BA145: #_F141u: db $A2 ; play note As3
#_1BA146: #_F142u: db $30 ; duration
#_1BA147: #_F143u: db $A1 ; play note A3
#_1BA148: #_F144u: db $24 ; duration
#_1BA149: #_F145u: db $9B ; play note Ds3
#_1BA14A: #_F146u: db $0C ; duration
#_1BA14B: #_F147u: db $9A ; play note D3
#_1BA14C: #_F148u: db $48 ; duration
#_1BA14D: #_F149u: db $C8 ; sustain current note
#_1BA14E: #_F14Au: db $0C ; duration
#_1BA14F: #_F14Bu: db $9A ; play note D3
#_1BA150: #_F14Cu: db $99 ; play note Cs3
#_1BA151: #_F14Du: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F14E:
#_1BA152: #_F14Eu: db $AE ; play note As4
#_1BA153: #_F14Fu: db $AE ; play note As4
#_1BA154: #_F150u: db $AE ; play note As4
#_1BA155: #_F151u: db $AE ; play note As4
#_1BA156: #_F152u: db $AE ; play note As4
#_1BA157: #_F153u: db $AE ; play note As4
#_1BA158: #_F154u: db $AE ; play note As4
#_1BA159: #_F155u: db $AE ; play note As4
#_1BA15A: #_F156u: db $AE ; play note As4
#_1BA15B: #_F157u: db $AE ; play note As4
#_1BA15C: #_F158u: db $AE ; play note As4
#_1BA15D: #_F159u: db $AE ; play note As4
#_1BA15E: #_F15Au: db $AE ; play note As4
#_1BA15F: #_F15Bu: db $AE ; play note As4
#_1BA160: #_F15Cu: db $AE ; play note As4
#_1BA161: #_F15Du: db $AE ; play note As4
#_1BA162: #_F15Eu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F15F:
#_1BA163: #_F15Fu: db $A8 ; play note E4
#_1BA164: #_F160u: db $A8 ; play note E4
#_1BA165: #_F161u: db $A8 ; play note E4
#_1BA166: #_F162u: db $A8 ; play note E4
#_1BA167: #_F163u: db $A8 ; play note E4
#_1BA168: #_F164u: db $A8 ; play note E4
#_1BA169: #_F165u: db $A8 ; play note E4
#_1BA16A: #_F166u: db $A8 ; play note E4
#_1BA16B: #_F167u: db $A8 ; play note E4
#_1BA16C: #_F168u: db $A8 ; play note E4
#_1BA16D: #_F169u: db $A8 ; play note E4
#_1BA16E: #_F16Au: db $A8 ; play note E4
#_1BA16F: #_F16Bu: db $A8 ; play note E4
#_1BA170: #_F16Cu: db $A8 ; play note E4
#_1BA171: #_F16Du: db $A8 ; play note E4
#_1BA172: #_F16Eu: db $A8 ; play note E4
#_1BA173: #_F16Fu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song16_Sub_F170:
#_1BA174: #_F170u: db $06, $6D ; duration, params
#_1BA176: #_F172u: db $AE ; play note As4
#_1BA177: #_F173u: db $06, $69 ; duration, params
#_1BA179: #_F175u: db $AE ; play note As4
#_1BA17A: #_F176u: db $AE ; play note As4
#_1BA17B: #_F177u: db $AE ; play note As4
#_1BA17C: #_F178u: db $06, $6B ; duration, params
#_1BA17E: #_F17Au: db $AE ; play note As4
#_1BA17F: #_F17Bu: db $06, $69 ; duration, params
#_1BA181: #_F17Du: db $AE ; play note As4
#_1BA182: #_F17Eu: db $AE ; play note As4
#_1BA183: #_F17Fu: db $AE ; play note As4
#_1BA184: #_F180u: db $06, $6C ; duration, params
#_1BA186: #_F182u: db $AE ; play note As4
#_1BA187: #_F183u: db $06, $69 ; duration, params
#_1BA189: #_F185u: db $AE ; play note As4
#_1BA18A: #_F186u: db $AE ; play note As4
#_1BA18B: #_F187u: db $AE ; play note As4
#_1BA18C: #_F188u: db $06, $6B ; duration, params
#_1BA18E: #_F18Au: db $AE ; play note As4
#_1BA18F: #_F18Bu: db $06, $69 ; duration, params
#_1BA191: #_F18Du: db $AE ; play note As4
#_1BA192: #_F18Eu: db $AE ; play note As4
#_1BA193: #_F18Fu: db $AE ; play note As4
#_1BA194: #_F190u: db $06, $6D ; duration, params
#_1BA196: #_F192u: db $B2 ; play note D5
#_1BA197: #_F193u: db $06, $69 ; duration, params
#_1BA199: #_F195u: db $B2 ; play note D5
#_1BA19A: #_F196u: db $B2 ; play note D5
#_1BA19B: #_F197u: db $B2 ; play note D5
#_1BA19C: #_F198u: db $06, $6B ; duration, params
#_1BA19E: #_F19Au: db $B2 ; play note D5
#_1BA19F: #_F19Bu: db $06, $69 ; duration, params
#_1BA1A1: #_F19Du: db $B2 ; play note D5
#_1BA1A2: #_F19Eu: db $B2 ; play note D5
#_1BA1A3: #_F19Fu: db $B2 ; play note D5
#_1BA1A4: #_F1A0u: db $06, $6C ; duration, params
#_1BA1A6: #_F1A2u: db $B2 ; play note D5
#_1BA1A7: #_F1A3u: db $06, $69 ; duration, params
#_1BA1A9: #_F1A5u: db $B2 ; play note D5
#_1BA1AA: #_F1A6u: db $B2 ; play note D5
#_1BA1AB: #_F1A7u: db $B2 ; play note D5
#_1BA1AC: #_F1A8u: db $06, $6B ; duration, params
#_1BA1AE: #_F1AAu: db $B2 ; play note D5
#_1BA1AF: #_F1ABu: db $06, $69 ; duration, params
#_1BA1B1: #_F1ADu: db $B2 ; play note D5
#_1BA1B2: #_F1AEu: db $B2 ; play note D5
#_1BA1B3: #_F1AFu: db $B2 ; play note D5
#_1BA1B4: #_F1B0u: db $06, $6D ; duration, params
#_1BA1B6: #_F1B2u: db $B1 ; play note Cs5
#_1BA1B7: #_F1B3u: db $06, $69 ; duration, params
#_1BA1B9: #_F1B5u: db $B1 ; play note Cs5
#_1BA1BA: #_F1B6u: db $B1 ; play note Cs5
#_1BA1BB: #_F1B7u: db $B1 ; play note Cs5
#_1BA1BC: #_F1B8u: db $06, $6B ; duration, params
#_1BA1BE: #_F1BAu: db $B1 ; play note Cs5
#_1BA1BF: #_F1BBu: db $06, $69 ; duration, params
#_1BA1C1: #_F1BDu: db $B1 ; play note Cs5
#_1BA1C2: #_F1BEu: db $B1 ; play note Cs5
#_1BA1C3: #_F1BFu: db $B1 ; play note Cs5
#_1BA1C4: #_F1C0u: db $06, $6C ; duration, params
#_1BA1C6: #_F1C2u: db $B1 ; play note Cs5
#_1BA1C7: #_F1C3u: db $06, $69 ; duration, params
#_1BA1C9: #_F1C5u: db $B1 ; play note Cs5
#_1BA1CA: #_F1C6u: db $B1 ; play note Cs5
#_1BA1CB: #_F1C7u: db $B1 ; play note Cs5
#_1BA1CC: #_F1C8u: db $06, $6B ; duration, params
#_1BA1CE: #_F1CAu: db $B1 ; play note Cs5
#_1BA1CF: #_F1CBu: db $06, $69 ; duration, params
#_1BA1D1: #_F1CDu: db $B1 ; play note Cs5
#_1BA1D2: #_F1CEu: db $B1 ; play note Cs5
#_1BA1D3: #_F1CFu: db $B1 ; play note Cs5
#_1BA1D4: #_F1D0u: db $00 ; End

;===================================================================================================

Song17_Shop:
#_1BA1D5: #_F1D1u: dw Song17_Segment0
#_1BA1D7: #_F1D3u: dw Song17_Segment1
#_1BA1D9: #_F1D5u: dw $00FF, Song17_Shop ; Loop point
#_1BA1DD: #_F1D9u: dw $0000

Song17_Segment1:
#_1BA1DF: #_F1DBu: dw Song17_Segment1_Track0
#_1BA1E1: #_F1DDu: dw Song17_Segment1_Track1
#_1BA1E3: #_F1DFu: dw Song17_Segment1_Track2
#_1BA1E5: #_F1E1u: dw Song17_Segment1_Track3
#_1BA1E7: #_F1E3u: dw $0000
#_1BA1E9: #_F1E5u: dw $0000
#_1BA1EB: #_F1E7u: dw $0000
#_1BA1ED: #_F1E9u: dw $0000

Song17_Segment0:
#_1BA1EF: #_F1EBu: dw Song17_Segment0_Track0
#_1BA1F1: #_F1EDu: dw $0000
#_1BA1F3: #_F1EFu: dw $0000
#_1BA1F5: #_F1F1u: dw Song17_Segment0_Track3
#_1BA1F7: #_F1F3u: dw $0000
#_1BA1F9: #_F1F5u: dw $0000
#_1BA1FB: #_F1F7u: dw $0000
#_1BA1FD: #_F1F9u: dw $0000

;---------------------------------------------------------------------------------------------------

Song17_Segment1_Track0:
#_1BA1FF: #_F1FBu: db $EF : dw Song17_Sub_F272 : db $01 ; call segment subroutine
#_1BA203: #_F1FFu: db $C8 ; sustain current note
#_1BA204: #_F200u: db $86 ; play note Fs1
#_1BA205: #_F201u: db $18 ; duration
#_1BA206: #_F202u: db $8A ; play note As1
#_1BA207: #_F203u: db $84 ; play note E1
#_1BA208: #_F204u: db $88 ; play note Gs1
#_1BA209: #_F205u: db $EF : dw Song17_Sub_F28F : db $02 ; call segment subroutine
#_1BA20D: #_F209u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Segment1_Track1:
#_1BA20E: #_F20Au: db $E0, $0E ; set instrument - chimes
#_1BA210: #_F20Cu: db $ED, $64 ; set channel volume
#_1BA212: #_F20Eu: db $08, $2D ; duration, params
#_1BA214: #_F210u: db $AC ; play note Gs4
#_1BA215: #_F211u: db $AC ; play note Gs4
#_1BA216: #_F212u: db $A7 ; play note Ds4
#_1BA217: #_F213u: db $A7 ; play note Ds4
#_1BA218: #_F214u: db $AA ; play note Fs4
#_1BA219: #_F215u: db $AA ; play note Fs4
#_1BA21A: #_F216u: db $A5 ; play note Cs4
#_1BA21B: #_F217u: db $A5 ; play note Cs4
#_1BA21C: #_F218u: db $AC ; play note Gs4
#_1BA21D: #_F219u: db $AC ; play note Gs4
#_1BA21E: #_F21Au: db $A7 ; play note Ds4
#_1BA21F: #_F21Bu: db $A7 ; play note Ds4
#_1BA220: #_F21Cu: db $AA ; play note Fs4
#_1BA221: #_F21Du: db $AA ; play note Fs4
#_1BA222: #_F21Eu: db $A5 ; play note Cs4
#_1BA223: #_F21Fu: db $A5 ; play note Cs4
#_1BA224: #_F220u: db $AC ; play note Gs4
#_1BA225: #_F221u: db $AC ; play note Gs4
#_1BA226: #_F222u: db $A7 ; play note Ds4
#_1BA227: #_F223u: db $A7 ; play note Ds4
#_1BA228: #_F224u: db $AA ; play note Fs4
#_1BA229: #_F225u: db $AA ; play note Fs4
#_1BA22A: #_F226u: db $A5 ; play note Cs4
#_1BA22B: #_F227u: db $A5 ; play note Cs4
#_1BA22C: #_F228u: db $EF : dw Song17_Sub_F29C : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song17_Segment1_Track2:
#_1BA230: #_F22Cu: db $E0, $0F ; set instrument - harp
#_1BA232: #_F22Eu: db $ED, $A0 ; set channel volume
#_1BA234: #_F230u: db $0C, $6D ; duration, params
#_1BA236: #_F232u: db $B6 ; play note Fs5
#_1BA237: #_F233u: db $BA ; play note As5
#_1BA238: #_F234u: db $B4 ; play note E5
#_1BA239: #_F235u: db $B8 ; play note Gs5
#_1BA23A: #_F236u: db $B2 ; play note D5
#_1BA23B: #_F237u: db $B7 ; play note G5
#_1BA23C: #_F238u: db $B6 ; play note Fs5
#_1BA23D: #_F239u: db $BA ; play note As5
#_1BA23E: #_F23Au: db $EF : dw Song17_Sub_F2B5 : db $01 ; call segment subroutine
#_1BA242: #_F23Eu: db $B6 ; play note Fs5
#_1BA243: #_F23Fu: db $BA ; play note As5
#_1BA244: #_F240u: db $B4 ; play note E5
#_1BA245: #_F241u: db $B8 ; play note Gs5
#_1BA246: #_F242u: db $B2 ; play note D5
#_1BA247: #_F243u: db $B7 ; play note G5
#_1BA248: #_F244u: db $B6 ; play note Fs5
#_1BA249: #_F245u: db $BA ; play note As5
#_1BA24A: #_F246u: db $EF : dw Song17_Sub_F2B5 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song17_Segment1_Track3:
#_1BA24E: #_F24Au: db $E0, $0E ; set instrument - chimes
#_1BA250: #_F24Cu: db $ED, $E6 ; set channel volume
#_1BA252: #_F24Eu: db $EF : dw Song17_Sub_F2C6 : db $01 ; call segment subroutine
#_1BA256: #_F252u: db $EF : dw Song17_Sub_F2E3 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song17_Segment0_Track0:
#_1BA25A: #_F256u: db $FA, $19 ; set base percussion sample
#_1BA25C: #_F258u: db $EF : dw Song17_Sub_F272 : db $01 ; call segment subroutine
#_1BA260: #_F25Cu: db $EF : dw Song17_Sub_F2F1 : db $01 ; call segment subroutine
#_1BA264: #_F260u: db $EF : dw Song17_Sub_F28F : db $01 ; call segment subroutine
#_1BA268: #_F264u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Segment0_Track3:
#_1BA269: #_F265u: db $E0, $0E ; set instrument - chimes
#_1BA26B: #_F267u: db $ED, $E6 ; set channel volume
#_1BA26D: #_F269u: db $EF : dw Song17_Sub_F2C6 : db $01 ; call segment subroutine
#_1BA271: #_F26Du: db $EF : dw Song17_Sub_F2E3 : db $01 ; call segment subroutine
#_1BA275: #_F271u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Sub_F272:
#_1BA276: #_F272u: db $E5, $B4 ; set song volume
#_1BA278: #_F274u: db $E7, $1F ; set song tempo
#_1BA27A: #_F276u: db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
#_1BA27E: #_F27Au: db $F7, $02, $1E, $02 ; configure EDL, EFB, FIR
#_1BA282: #_F27Eu: db $F8, $28, $50, $50 ; initiate gradual echo volume change
#_1BA286: #_F282u: db $E0, $0E ; set instrument - chimes
#_1BA288: #_F284u: db $ED, $FA ; set channel volume
#_1BA28A: #_F286u: db $18, $6D ; duration, params
#_1BA28C: #_F288u: db $86 ; play note Fs1
#_1BA28D: #_F289u: db $8A ; play note As1
#_1BA28E: #_F28Au: db $84 ; play note E1
#_1BA28F: #_F28Bu: db $0C ; duration
#_1BA290: #_F28Cu: db $88 ; play note Gs1
#_1BA291: #_F28Du: db $82 ; play note D1
#_1BA292: #_F28Eu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Sub_F28F:
#_1BA293: #_F28Fu: db $86 ; play note Fs1
#_1BA294: #_F290u: db $8A ; play note As1
#_1BA295: #_F291u: db $84 ; play note E1
#_1BA296: #_F292u: db $0C ; duration
#_1BA297: #_F293u: db $88 ; play note Gs1
#_1BA298: #_F294u: db $82 ; play note D1
#_1BA299: #_F295u: db $C8 ; sustain current note
#_1BA29A: #_F296u: db $86 ; play note Fs1
#_1BA29B: #_F297u: db $18 ; duration
#_1BA29C: #_F298u: db $8A ; play note As1
#_1BA29D: #_F299u: db $84 ; play note E1
#_1BA29E: #_F29Au: db $88 ; play note Gs1
#_1BA29F: #_F29Bu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Sub_F29C:
#_1BA2A0: #_F29Cu: db $AC ; play note Gs4
#_1BA2A1: #_F29Du: db $AC ; play note Gs4
#_1BA2A2: #_F29Eu: db $A7 ; play note Ds4
#_1BA2A3: #_F29Fu: db $A7 ; play note Ds4
#_1BA2A4: #_F2A0u: db $AA ; play note Fs4
#_1BA2A5: #_F2A1u: db $AA ; play note Fs4
#_1BA2A6: #_F2A2u: db $A5 ; play note Cs4
#_1BA2A7: #_F2A3u: db $A5 ; play note Cs4
#_1BA2A8: #_F2A4u: db $AC ; play note Gs4
#_1BA2A9: #_F2A5u: db $AC ; play note Gs4
#_1BA2AA: #_F2A6u: db $A7 ; play note Ds4
#_1BA2AB: #_F2A7u: db $A7 ; play note Ds4
#_1BA2AC: #_F2A8u: db $AA ; play note Fs4
#_1BA2AD: #_F2A9u: db $AA ; play note Fs4
#_1BA2AE: #_F2AAu: db $A5 ; play note Cs4
#_1BA2AF: #_F2ABu: db $A5 ; play note Cs4
#_1BA2B0: #_F2ACu: db $AC ; play note Gs4
#_1BA2B1: #_F2ADu: db $AC ; play note Gs4
#_1BA2B2: #_F2AEu: db $A7 ; play note Ds4
#_1BA2B3: #_F2AFu: db $A7 ; play note Ds4
#_1BA2B4: #_F2B0u: db $AA ; play note Fs4
#_1BA2B5: #_F2B1u: db $AA ; play note Fs4
#_1BA2B6: #_F2B2u: db $A5 ; play note Cs4
#_1BA2B7: #_F2B3u: db $A5 ; play note Cs4
#_1BA2B8: #_F2B4u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Sub_F2B5:
#_1BA2B9: #_F2B5u: db $B4 ; play note E5
#_1BA2BA: #_F2B6u: db $B8 ; play note Gs5
#_1BA2BB: #_F2B7u: db $B2 ; play note D5
#_1BA2BC: #_F2B8u: db $B7 ; play note G5
#_1BA2BD: #_F2B9u: db $B6 ; play note Fs5
#_1BA2BE: #_F2BAu: db $BA ; play note As5
#_1BA2BF: #_F2BBu: db $B4 ; play note E5
#_1BA2C0: #_F2BCu: db $B8 ; play note Gs5
#_1BA2C1: #_F2BDu: db $B2 ; play note D5
#_1BA2C2: #_F2BEu: db $B7 ; play note G5
#_1BA2C3: #_F2BFu: db $B6 ; play note Fs5
#_1BA2C4: #_F2C0u: db $BA ; play note As5
#_1BA2C5: #_F2C1u: db $B4 ; play note E5
#_1BA2C6: #_F2C2u: db $B8 ; play note Gs5
#_1BA2C7: #_F2C3u: db $B2 ; play note D5
#_1BA2C8: #_F2C4u: db $B7 ; play note G5
#_1BA2C9: #_F2C5u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Sub_F2C6:
#_1BA2CA: #_F2C6u: db $06 ; duration
#_1BA2CB: #_F2C7u: db $C9 ; rest
#_1BA2CC: #_F2C8u: db $18, $6D ; duration, params
#_1BA2CE: #_F2CAu: db $86 ; play note Fs1
#_1BA2CF: #_F2CBu: db $8A ; play note As1
#_1BA2D0: #_F2CCu: db $84 ; play note E1
#_1BA2D1: #_F2CDu: db $0C ; duration
#_1BA2D2: #_F2CEu: db $88 ; play note Gs1
#_1BA2D3: #_F2CFu: db $82 ; play note D1
#_1BA2D4: #_F2D0u: db $C8 ; sustain current note
#_1BA2D5: #_F2D1u: db $86 ; play note Fs1
#_1BA2D6: #_F2D2u: db $18 ; duration
#_1BA2D7: #_F2D3u: db $8A ; play note As1
#_1BA2D8: #_F2D4u: db $84 ; play note E1
#_1BA2D9: #_F2D5u: db $88 ; play note Gs1
#_1BA2DA: #_F2D6u: db $86 ; play note Fs1
#_1BA2DB: #_F2D7u: db $8A ; play note As1
#_1BA2DC: #_F2D8u: db $84 ; play note E1
#_1BA2DD: #_F2D9u: db $0C ; duration
#_1BA2DE: #_F2DAu: db $88 ; play note Gs1
#_1BA2DF: #_F2DBu: db $82 ; play note D1
#_1BA2E0: #_F2DCu: db $C8 ; sustain current note
#_1BA2E1: #_F2DDu: db $86 ; play note Fs1
#_1BA2E2: #_F2DEu: db $18 ; duration
#_1BA2E3: #_F2DFu: db $8A ; play note As1
#_1BA2E4: #_F2E0u: db $84 ; play note E1
#_1BA2E5: #_F2E1u: db $88 ; play note Gs1
#_1BA2E6: #_F2E2u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Sub_F2E3:
#_1BA2E7: #_F2E3u: db $86 ; play note Fs1
#_1BA2E8: #_F2E4u: db $8A ; play note As1
#_1BA2E9: #_F2E5u: db $84 ; play note E1
#_1BA2EA: #_F2E6u: db $0C ; duration
#_1BA2EB: #_F2E7u: db $88 ; play note Gs1
#_1BA2EC: #_F2E8u: db $82 ; play note D1
#_1BA2ED: #_F2E9u: db $C8 ; sustain current note
#_1BA2EE: #_F2EAu: db $86 ; play note Fs1
#_1BA2EF: #_F2EBu: db $18 ; duration
#_1BA2F0: #_F2ECu: db $8A ; play note As1
#_1BA2F1: #_F2EDu: db $84 ; play note E1
#_1BA2F2: #_F2EEu: db $12 ; duration
#_1BA2F3: #_F2EFu: db $88 ; play note Gs1
#_1BA2F4: #_F2F0u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song17_Sub_F2F1:
#_1BA2F5: #_F2F1u: db $C8 ; sustain current note
#_1BA2F6: #_F2F2u: db $86 ; play note Fs1
#_1BA2F7: #_F2F3u: db $18 ; duration
#_1BA2F8: #_F2F4u: db $8A ; play note As1
#_1BA2F9: #_F2F5u: db $84 ; play note E1
#_1BA2FA: #_F2F6u: db $88 ; play note Gs1
#_1BA2FB: #_F2F7u: db $86 ; play note Fs1
#_1BA2FC: #_F2F8u: db $8A ; play note As1
#_1BA2FD: #_F2F9u: db $84 ; play note E1
#_1BA2FE: #_F2FAu: db $0C ; duration
#_1BA2FF: #_F2FBu: db $88 ; play note Gs1
#_1BA300: #_F2FCu: db $82 ; play note D1
#_1BA301: #_F2FDu: db $C8 ; sustain current note
#_1BA302: #_F2FEu: db $86 ; play note Fs1
#_1BA303: #_F2FFu: db $18 ; duration
#_1BA304: #_F300u: db $8A ; play note As1
#_1BA305: #_F301u: db $84 ; play note E1
#_1BA306: #_F302u: db $88 ; play note Gs1
#_1BA307: #_F303u: db $00 ; End

;===================================================================================================

Song19_ZeldaRescue:
#_1BA308: #_F304u: dw Song19_Segment0

Song19_Loop:
#_1BA30A: #_F306u: dw Song19_Segment1
#_1BA30C: #_F308u: dw Song19_Segment2
#_1BA30E: #_F30Au: dw Song19_Segment3
#_1BA310: #_F30Cu: dw $00FF, Song19_Loop ; Loop point
#_1BA314: #_F310u: dw $0000

Song19_Segment1:
#_1BA316: #_F312u: dw Song19_Segment1_Track0
#_1BA318: #_F314u: dw Song19_Segment1_Track1
#_1BA31A: #_F316u: dw $0000
#_1BA31C: #_F318u: dw Song19_Segment1_Track3
#_1BA31E: #_F31Au: dw Song19_Segment1_Track4
#_1BA320: #_F31Cu: dw $0000
#_1BA322: #_F31Eu: dw $0000
#_1BA324: #_F320u: dw $0000

Song19_Segment2:
#_1BA326: #_F322u: dw Song19_Segment2_Track0
#_1BA328: #_F324u: dw Song19_Segment2_Track1
#_1BA32A: #_F326u: dw Song19_Segment2_Track2
#_1BA32C: #_F328u: dw Song19_Segment2_Track3
#_1BA32E: #_F32Au: dw Song19_Segment2_Track4
#_1BA330: #_F32Cu: dw $0000
#_1BA332: #_F32Eu: dw $0000
#_1BA334: #_F330u: dw $0000

Song19_Segment3:
#_1BA336: #_F332u: dw Song19_Segment3_Track0
#_1BA338: #_F334u: dw Song19_Segment3_Track1
#_1BA33A: #_F336u: dw Song19_Segment3_Track2
#_1BA33C: #_F338u: dw Song19_Segment3_Track3
#_1BA33E: #_F33Au: dw Song19_Segment3_Track4
#_1BA340: #_F33Cu: dw $0000
#_1BA342: #_F33Eu: dw $0000
#_1BA344: #_F340u: dw $0000

Song19_Segment0:
#_1BA346: #_F342u: dw Song19_Segment0_Track0
#_1BA348: #_F344u: dw Song19_Segment0_Track1
#_1BA34A: #_F346u: dw Song19_Segment0_Track2
#_1BA34C: #_F348u: dw Song19_Segment0_Track3
#_1BA34E: #_F34Au: dw Song19_Segment0_Track4
#_1BA350: #_F34Cu: dw Song19_Segment0_Track5
#_1BA352: #_F34Eu: dw $0000
#_1BA354: #_F350u: dw $0000

;---------------------------------------------------------------------------------------------------

Song19_Segment1_Track0:
#_1BA356: #_F352u: db $E0, $0A ; set instrument - strings B
#_1BA358: #_F354u: db $E7, $15 ; set song tempo
#_1BA35A: #_F356u: db $ED, $64 ; set channel volume
#_1BA35C: #_F358u: db $EE, $3C, $C8 ; initiate gradual channel volume change
#_1BA35F: #_F35Bu: db $E9, $00 ; set global transposition
#_1BA361: #_F35Du: db $E3, $1A, $1C, $1E ; enable vibrato
#_1BA365: #_F361u: db $E1, $0E ; set panning - leaning left
#_1BA367: #_F363u: db $30, $7D ; duration, params
#_1BA369: #_F365u: db $AF ; play note B4
#_1BA36A: #_F366u: db $18 ; duration
#_1BA36B: #_F367u: db $B2 ; play note D5
#_1BA36C: #_F368u: db $EF : dw Song19_Sub_F523 : db $01 ; call segment subroutine
#_1BA370: #_F36Cu: db $30 ; duration
#_1BA371: #_F36Du: db $B2 ; play note D5
#_1BA372: #_F36Eu: db $0C ; duration
#_1BA373: #_F36Fu: db $B0 ; play note C5
#_1BA374: #_F370u: db $AF ; play note B4
#_1BA375: #_F371u: db $48 ; duration
#_1BA376: #_F372u: db $AD ; play note A4
#_1BA377: #_F373u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song19_Segment1_Track1:
#_1BA378: #_F374u: db $E0, $0A ; set instrument - strings B
#_1BA37A: #_F376u: db $ED, $64 ; set channel volume
#_1BA37C: #_F378u: db $EE, $50, $C8 ; initiate gradual channel volume change
#_1BA37F: #_F37Bu: db $E1, $06 ; set panning - leaning right
#_1BA381: #_F37Du: db $48, $6D ; duration, params
#_1BA383: #_F37Fu: db $98 ; play note C3
#_1BA384: #_F380u: db $98 ; play note C3
#_1BA385: #_F381u: db $98 ; play note C3
#_1BA386: #_F382u: db $98 ; play note C3
#_1BA387: #_F383u: db $97 ; play note B2
#_1BA388: #_F384u: db $96 ; play note As2
#_1BA389: #_F385u: db $95 ; play note A2
#_1BA38A: #_F386u: db $9A ; play note D3

;---------------------------------------------------------------------------------------------------

Song19_Segment1_Track3:
#_1BA38B: #_F387u: db $E0, $0A ; set instrument - strings B
#_1BA38D: #_F389u: db $ED, $64 ; set channel volume
#_1BA38F: #_F38Bu: db $EE, $50, $C8 ; initiate gradual channel volume change
#_1BA392: #_F38Eu: db $E1, $0A ; set panning - balanced
#_1BA394: #_F390u: db $E3, $18, $1A, $18 ; enable vibrato
#_1BA398: #_F394u: db $EF : dw Song19_Sub_F537 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song19_Segment1_Track4:
#_1BA39C: #_F398u: db $E0, $0A ; set instrument - strings B
#_1BA39E: #_F39Au: db $ED, $64 ; set channel volume
#_1BA3A0: #_F39Cu: db $EE, $50, $A0 ; initiate gradual channel volume change
#_1BA3A3: #_F39Fu: db $E3, $1A, $1C, $1E ; enable vibrato
#_1BA3A7: #_F3A3u: db $E1, $0B ; set panning - leaning left
#_1BA3A9: #_F3A5u: db $08 ; duration
#_1BA3AA: #_F3A6u: db $C9 ; rest
#_1BA3AB: #_F3A7u: db $30, $7D ; duration, params
#_1BA3AD: #_F3A9u: db $AF ; play note B4
#_1BA3AE: #_F3AAu: db $18 ; duration
#_1BA3AF: #_F3ABu: db $B2 ; play note D5
#_1BA3B0: #_F3ACu: db $EF : dw Song19_Sub_F523 : db $01 ; call segment subroutine
#_1BA3B4: #_F3B0u: db $30 ; duration
#_1BA3B5: #_F3B1u: db $B2 ; play note D5
#_1BA3B6: #_F3B2u: db $0C ; duration
#_1BA3B7: #_F3B3u: db $B0 ; play note C5
#_1BA3B8: #_F3B4u: db $AF ; play note B4
#_1BA3B9: #_F3B5u: db $40 ; duration
#_1BA3BA: #_F3B6u: db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song19_Segment2_Track0:
#_1BA3BB: #_F3B7u: db $30, $7D ; duration, params
#_1BA3BD: #_F3B9u: db $AF ; play note B4
#_1BA3BE: #_F3BAu: db $18 ; duration
#_1BA3BF: #_F3BBu: db $B2 ; play note D5
#_1BA3C0: #_F3BCu: db $EF : dw Song19_Sub_F523 : db $01 ; call segment subroutine
#_1BA3C4: #_F3C0u: db $48 ; duration
#_1BA3C5: #_F3C1u: db $BE ; play note D6
#_1BA3C6: #_F3C2u: db $C8 ; sustain current note
#_1BA3C7: #_F3C3u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song19_Segment2_Track1:
#_1BA3C8: #_F3C4u: db $48, $6D ; duration, params
#_1BA3CA: #_F3C6u: db $98 ; play note C3
#_1BA3CB: #_F3C7u: db $98 ; play note C3
#_1BA3CC: #_F3C8u: db $98 ; play note C3
#_1BA3CD: #_F3C9u: db $98 ; play note C3
#_1BA3CE: #_F3CAu: db $97 ; play note B2
#_1BA3CF: #_F3CBu: db $96 ; play note As2
#_1BA3D0: #_F3CCu: db $95 ; play note A2
#_1BA3D1: #_F3CDu: db $9A ; play note D3

Song19_Segment2_Track2:
#_1BA3D2: #_F3CEu: db $E0, $15 ; set instrument - choir
#_1BA3D4: #_F3D0u: db $ED, $82 ; set channel volume
#_1BA3D6: #_F3D2u: db $E3, $1C, $1C, $1C ; enable vibrato
#_1BA3DA: #_F3D6u: db $48, $7D ; duration, params
#_1BA3DC: #_F3D8u: db $A8 ; play note E4
#_1BA3DD: #_F3D9u: db $AA ; play note Fs4
#_1BA3DE: #_F3DAu: db $A8 ; play note E4
#_1BA3DF: #_F3DBu: db $AA ; play note Fs4
#_1BA3E0: #_F3DCu: db $AA ; play note Fs4
#_1BA3E1: #_F3DDu: db $A9 ; play note F4
#_1BA3E2: #_F3DEu: db $A8 ; play note E4
#_1BA3E3: #_F3DFu: db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song19_Segment2_Track3:
#_1BA3E4: #_F3E0u: db $EF : dw Song19_Sub_F537 : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song19_Segment2_Track4:
#_1BA3E8: #_F3E4u: db $08 ; duration
#_1BA3E9: #_F3E5u: db $C9 ; rest
#_1BA3EA: #_F3E6u: db $30, $7D ; duration, params
#_1BA3EC: #_F3E8u: db $AF ; play note B4
#_1BA3ED: #_F3E9u: db $18 ; duration
#_1BA3EE: #_F3EAu: db $B2 ; play note D5
#_1BA3EF: #_F3EBu: db $EF : dw Song19_Sub_F523 : db $01 ; call segment subroutine
#_1BA3F3: #_F3EFu: db $48 ; duration
#_1BA3F4: #_F3F0u: db $BE ; play note D6
#_1BA3F5: #_F3F1u: db $40 ; duration
#_1BA3F6: #_F3F2u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song19_Segment3_Track0:
#_1BA3F7: #_F3F3u: db $E0, $16 ; set instrument - flute
#_1BA3F9: #_F3F5u: db $EF : dw Song19_Sub_F562 : db $01 ; call segment subroutine
#_1BA3FD: #_F3F9u: db $C8 ; sustain current note
#_1BA3FE: #_F3FAu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song19_Segment3_Track1:
#_1BA3FF: #_F3FBu: db $48, $6D ; duration, params
#_1BA401: #_F3FDu: db $9D ; play note F3
#_1BA402: #_F3FEu: db $9C ; play note E3
#_1BA403: #_F3FFu: db $9A ; play note D3
#_1BA404: #_F400u: db $98 ; play note C3
#_1BA405: #_F401u: db $9D ; play note F3
#_1BA406: #_F402u: db $9C ; play note E3
#_1BA407: #_F403u: db $9B ; play note Ds3
#_1BA408: #_F404u: db $30 ; duration
#_1BA409: #_F405u: db $9A ; play note D3
#_1BA40A: #_F406u: db $18 ; duration
#_1BA40B: #_F407u: db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song19_Segment3_Track2:
#_1BA40C: #_F408u: db $E0, $0A ; set instrument - strings B
#_1BA40E: #_F40Au: db $E3, $1C, $1C, $1C ; enable vibrato
#_1BA412: #_F40Eu: db $18 ; duration
#_1BA413: #_F40Fu: db $C9 ; rest
#_1BA414: #_F410u: db $30, $6D ; duration, params
#_1BA416: #_F412u: db $A4 ; play note C4
#_1BA417: #_F413u: db $18 ; duration
#_1BA418: #_F414u: db $C9 ; rest
#_1BA419: #_F415u: db $30 ; duration
#_1BA41A: #_F416u: db $A3 ; play note B3
#_1BA41B: #_F417u: db $18 ; duration
#_1BA41C: #_F418u: db $C9 ; rest
#_1BA41D: #_F419u: db $30 ; duration
#_1BA41E: #_F41Au: db $A1 ; play note A3
#_1BA41F: #_F41Bu: db $18 ; duration
#_1BA420: #_F41Cu: db $C9 ; rest
#_1BA421: #_F41Du: db $30 ; duration
#_1BA422: #_F41Eu: db $9F ; play note G3
#_1BA423: #_F41Fu: db $18 ; duration
#_1BA424: #_F420u: db $C9 ; rest
#_1BA425: #_F421u: db $30 ; duration
#_1BA426: #_F422u: db $A4 ; play note C4
#_1BA427: #_F423u: db $18 ; duration
#_1BA428: #_F424u: db $C9 ; rest
#_1BA429: #_F425u: db $30 ; duration
#_1BA42A: #_F426u: db $A3 ; play note B3
#_1BA42B: #_F427u: db $18 ; duration
#_1BA42C: #_F428u: db $C9 ; rest
#_1BA42D: #_F429u: db $30 ; duration
#_1BA42E: #_F42Au: db $A2 ; play note As3
#_1BA42F: #_F42Bu: db $18 ; duration
#_1BA430: #_F42Cu: db $C9 ; rest
#_1BA431: #_F42Du: db $A1 ; play note A3
#_1BA432: #_F42Eu: db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song19_Segment3_Track3:
#_1BA433: #_F42Fu: db $0C ; duration
#_1BA434: #_F430u: db $C9 ; rest
#_1BA435: #_F431u: db $0C, $6D ; duration, params
#_1BA437: #_F433u: db $A4 ; play note C4
#_1BA438: #_F434u: db $30 ; duration
#_1BA439: #_F435u: db $A8 ; play note E4
#_1BA43A: #_F436u: db $0C ; duration
#_1BA43B: #_F437u: db $C9 ; rest
#_1BA43C: #_F438u: db $A3 ; play note B3
#_1BA43D: #_F439u: db $30 ; duration
#_1BA43E: #_F43Au: db $A6 ; play note D4
#_1BA43F: #_F43Bu: db $0C ; duration
#_1BA440: #_F43Cu: db $C9 ; rest
#_1BA441: #_F43Du: db $A1 ; play note A3
#_1BA442: #_F43Eu: db $30 ; duration
#_1BA443: #_F43Fu: db $A4 ; play note C4
#_1BA444: #_F440u: db $0C ; duration
#_1BA445: #_F441u: db $C9 ; rest
#_1BA446: #_F442u: db $9F ; play note G3
#_1BA447: #_F443u: db $30 ; duration
#_1BA448: #_F444u: db $A3 ; play note B3
#_1BA449: #_F445u: db $0C ; duration
#_1BA44A: #_F446u: db $C9 ; rest
#_1BA44B: #_F447u: db $A4 ; play note C4
#_1BA44C: #_F448u: db $30 ; duration
#_1BA44D: #_F449u: db $A8 ; play note E4
#_1BA44E: #_F44Au: db $0C ; duration
#_1BA44F: #_F44Bu: db $C9 ; rest
#_1BA450: #_F44Cu: db $A3 ; play note B3
#_1BA451: #_F44Du: db $30 ; duration
#_1BA452: #_F44Eu: db $A6 ; play note D4
#_1BA453: #_F44Fu: db $0C ; duration
#_1BA454: #_F450u: db $C9 ; rest
#_1BA455: #_F451u: db $A2 ; play note As3
#_1BA456: #_F452u: db $30 ; duration
#_1BA457: #_F453u: db $A5 ; play note Cs4
#_1BA458: #_F454u: db $0C ; duration
#_1BA459: #_F455u: db $C9 ; rest
#_1BA45A: #_F456u: db $A1 ; play note A3
#_1BA45B: #_F457u: db $18 ; duration
#_1BA45C: #_F458u: db $A4 ; play note C4
#_1BA45D: #_F459u: db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song19_Segment3_Track4:
#_1BA45E: #_F45Au: db $EF : dw Song19_Sub_F562 : db $01 ; call segment subroutine
#_1BA462: #_F45Eu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song19_Segment0_Track0:
#_1BA463: #_F45Fu: db $FA, $18 ; set base percussion sample
#_1BA465: #_F461u: db $E5, $B4 ; set song volume
#_1BA467: #_F463u: db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
#_1BA46B: #_F467u: db $F7, $02, $3C, $02 ; configure EDL, EFB, FIR
#_1BA46F: #_F46Bu: db $F8, $1E, $28, $28 ; initiate gradual echo volume change
#_1BA473: #_F46Fu: db $E7, $1D ; set song tempo
#_1BA475: #_F471u: db $E0, $0A ; set instrument - strings B
#_1BA477: #_F473u: db $ED, $C8 ; set channel volume
#_1BA479: #_F475u: db $E3, $1A, $1C, $16 ; enable vibrato
#_1BA47D: #_F479u: db $E1, $0E ; set panning - leaning left
#_1BA47F: #_F47Bu: db $0C ; duration
#_1BA480: #_F47Cu: db $C9 ; rest
#_1BA481: #_F47Du: db $0E, $6D ; duration, params
#_1BA483: #_F47Fu: db $AB ; play note G4
#_1BA484: #_F480u: db $0D ; duration
#_1BA485: #_F481u: db $AD ; play note A4
#_1BA486: #_F482u: db $0C ; duration
#_1BA487: #_F483u: db $AF ; play note B4
#_1BA488: #_F484u: db $0B ; duration
#_1BA489: #_F485u: db $B0 ; play note C5
#_1BA48A: #_F486u: db $0A ; duration
#_1BA48B: #_F487u: db $B2 ; play note D5
#_1BA48C: #_F488u: db $09 ; duration
#_1BA48D: #_F489u: db $B4 ; play note E5
#_1BA48E: #_F48Au: db $08 ; duration
#_1BA48F: #_F48Bu: db $B5 ; play note F5
#_1BA490: #_F48Cu: db $18 ; duration
#_1BA491: #_F48Du: db $B7 ; play note G5
#_1BA492: #_F48Eu: db $B5 ; play note F5
#_1BA493: #_F48Fu: db $BC ; play note C6
#_1BA494: #_F490u: db $BA ; play note As5
#_1BA495: #_F491u: db $60, $7D ; duration, params
#_1BA497: #_F493u: db $BB ; play note B5
#_1BA498: #_F494u: db $30 ; duration
#_1BA499: #_F495u: db $C8 ; sustain current note
#_1BA49A: #_F496u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song19_Segment0_Track1:
#_1BA49B: #_F497u: db $E0, $0A ; set instrument - strings B
#_1BA49D: #_F499u: db $ED, $A0 ; set channel volume
#_1BA49F: #_F49Bu: db $E3, $18, $1A, $17 ; enable vibrato
#_1BA4A3: #_F49Fu: db $E1, $0C ; set panning - leaning left
#_1BA4A5: #_F4A1u: db $14 ; duration
#_1BA4A6: #_F4A2u: db $C9 ; rest
#_1BA4A7: #_F4A3u: db $0E, $6D ; duration, params
#_1BA4A9: #_F4A5u: db $AB ; play note G4
#_1BA4AA: #_F4A6u: db $0D ; duration
#_1BA4AB: #_F4A7u: db $AD ; play note A4
#_1BA4AC: #_F4A8u: db $0C ; duration
#_1BA4AD: #_F4A9u: db $AF ; play note B4
#_1BA4AE: #_F4AAu: db $0B ; duration
#_1BA4AF: #_F4ABu: db $B0 ; play note C5
#_1BA4B0: #_F4ACu: db $0A ; duration
#_1BA4B1: #_F4ADu: db $B2 ; play note D5
#_1BA4B2: #_F4AEu: db $09 ; duration
#_1BA4B3: #_F4AFu: db $B4 ; play note E5
#_1BA4B4: #_F4B0u: db $08 ; duration
#_1BA4B5: #_F4B1u: db $B5 ; play note F5
#_1BA4B6: #_F4B2u: db $18 ; duration
#_1BA4B7: #_F4B3u: db $B7 ; play note G5
#_1BA4B8: #_F4B4u: db $B5 ; play note F5
#_1BA4B9: #_F4B5u: db $BC ; play note C6
#_1BA4BA: #_F4B6u: db $BA ; play note As5
#_1BA4BB: #_F4B7u: db $60, $7D ; duration, params
#_1BA4BD: #_F4B9u: db $BB ; play note B5
#_1BA4BE: #_F4BAu: db $28 ; duration
#_1BA4BF: #_F4BBu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song19_Segment0_Track2:
#_1BA4C0: #_F4BCu: db $E0, $0A ; set instrument - strings B
#_1BA4C2: #_F4BEu: db $ED, $C8 ; set channel volume
#_1BA4C4: #_F4C0u: db $E3, $1C, $1A, $14 ; enable vibrato
#_1BA4C8: #_F4C4u: db $E1, $06 ; set panning - leaning right
#_1BA4CA: #_F4C6u: db $59 ; duration
#_1BA4CB: #_F4C7u: db $C9 ; rest
#_1BA4CC: #_F4C8u: db $30, $7D ; duration, params
#_1BA4CE: #_F4CAu: db $A0 ; play note Gs3
#_1BA4CF: #_F4CBu: db $A2 ; play note As3
#_1BA4D0: #_F4CCu: db $60 ; duration
#_1BA4D1: #_F4CDu: db $9F ; play note G3
#_1BA4D2: #_F4CEu: db $30 ; duration
#_1BA4D3: #_F4CFu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song19_Segment0_Track3:
#_1BA4D4: #_F4D0u: db $E0, $0A ; set instrument - strings B
#_1BA4D6: #_F4D2u: db $ED, $C8 ; set channel volume
#_1BA4D8: #_F4D4u: db $E3, $18, $1A, $17 ; enable vibrato
#_1BA4DC: #_F4D8u: db $E1, $0A ; set panning - balanced
#_1BA4DE: #_F4DAu: db $33 ; duration
#_1BA4DF: #_F4DBu: db $C9 ; rest
#_1BA4E0: #_F4DCu: db $0B, $6D ; duration, params
#_1BA4E2: #_F4DEu: db $A8 ; play note E4
#_1BA4E3: #_F4DFu: db $0A ; duration
#_1BA4E4: #_F4E0u: db $A9 ; play note F4
#_1BA4E5: #_F4E1u: db $09 ; duration
#_1BA4E6: #_F4E2u: db $AB ; play note G4
#_1BA4E7: #_F4E3u: db $08 ; duration
#_1BA4E8: #_F4E4u: db $AD ; play note A4
#_1BA4E9: #_F4E5u: db $18 ; duration
#_1BA4EA: #_F4E6u: db $A7 ; play note Ds4
#_1BA4EB: #_F4E7u: db $A6 ; play note D4
#_1BA4EC: #_F4E8u: db $AC ; play note Gs4
#_1BA4ED: #_F4E9u: db $AB ; play note G4
#_1BA4EE: #_F4EAu: db $60, $7D ; duration, params
#_1BA4F0: #_F4ECu: db $AA ; play note Fs4
#_1BA4F1: #_F4EDu: db $30 ; duration
#_1BA4F2: #_F4EEu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song19_Segment0_Track4:
#_1BA4F3: #_F4EFu: db $E0, $0A ; set instrument - strings B
#_1BA4F5: #_F4F1u: db $ED, $C8 ; set channel volume
#_1BA4F7: #_F4F3u: db $E3, $18, $1A, $17 ; enable vibrato
#_1BA4FB: #_F4F7u: db $E1, $08 ; set panning - leaning right
#_1BA4FD: #_F4F9u: db $33 ; duration
#_1BA4FE: #_F4FAu: db $C9 ; rest
#_1BA4FF: #_F4FBu: db $0B, $6D ; duration, params
#_1BA501: #_F4FDu: db $9F ; play note G3
#_1BA502: #_F4FEu: db $0A ; duration
#_1BA503: #_F4FFu: db $A1 ; play note A3
#_1BA504: #_F500u: db $09 ; duration
#_1BA505: #_F501u: db $A3 ; play note B3
#_1BA506: #_F502u: db $08 ; duration
#_1BA507: #_F503u: db $A4 ; play note C4
#_1BA508: #_F504u: db $18 ; duration
#_1BA509: #_F505u: db $B0 ; play note C5
#_1BA50A: #_F506u: db $AE ; play note As4
#_1BA50B: #_F507u: db $B5 ; play note F5
#_1BA50C: #_F508u: db $B3 ; play note Ds5
#_1BA50D: #_F509u: db $60, $7D ; duration, params
#_1BA50F: #_F50Bu: db $B2 ; play note D5
#_1BA510: #_F50Cu: db $30 ; duration
#_1BA511: #_F50Du: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song19_Segment0_Track5:
#_1BA512: #_F50Eu: db $E0, $0A ; set instrument - strings B
#_1BA514: #_F510u: db $ED, $C8 ; set channel volume
#_1BA516: #_F512u: db $E3, $1C, $1A, $14 ; enable vibrato
#_1BA51A: #_F516u: db $E1, $04 ; set panning - leaning right
#_1BA51C: #_F518u: db $59 ; duration
#_1BA51D: #_F519u: db $C9 ; rest
#_1BA51E: #_F51Au: db $30, $7D ; duration, params
#_1BA520: #_F51Cu: db $94 ; play note Gs2
#_1BA521: #_F51Du: db $96 ; play note As2
#_1BA522: #_F51Eu: db $60 ; duration
#_1BA523: #_F51Fu: db $93 ; play note G2
#_1BA524: #_F520u: db $30 ; duration
#_1BA525: #_F521u: db $C8 ; sustain current note
#_1BA526: #_F522u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song19_Sub_F523:
#_1BA527: #_F523u: db $30 ; duration
#_1BA528: #_F524u: db $AD ; play note A4
#_1BA529: #_F525u: db $0C ; duration
#_1BA52A: #_F526u: db $AB ; play note G4
#_1BA52B: #_F527u: db $AD ; play note A4
#_1BA52C: #_F528u: db $30 ; duration
#_1BA52D: #_F529u: db $AF ; play note B4
#_1BA52E: #_F52Au: db $18 ; duration
#_1BA52F: #_F52Bu: db $B2 ; play note D5
#_1BA530: #_F52Cu: db $48 ; duration
#_1BA531: #_F52Du: db $AD ; play note A4
#_1BA532: #_F52Eu: db $30 ; duration
#_1BA533: #_F52Fu: db $AF ; play note B4
#_1BA534: #_F530u: db $18 ; duration
#_1BA535: #_F531u: db $B2 ; play note D5
#_1BA536: #_F532u: db $30 ; duration
#_1BA537: #_F533u: db $B9 ; play note A5
#_1BA538: #_F534u: db $18 ; duration
#_1BA539: #_F535u: db $B7 ; play note G5
#_1BA53A: #_F536u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song19_Sub_F537:
#_1BA53B: #_F537u: db $0C ; duration
#_1BA53C: #_F538u: db $C9 ; rest
#_1BA53D: #_F539u: db $0C, $6D ; duration, params
#_1BA53F: #_F53Bu: db $9F ; play note G3
#_1BA540: #_F53Cu: db $30 ; duration
#_1BA541: #_F53Du: db $A8 ; play note E4
#_1BA542: #_F53Eu: db $0C ; duration
#_1BA543: #_F53Fu: db $C9 ; rest
#_1BA544: #_F540u: db $A1 ; play note A3
#_1BA545: #_F541u: db $30 ; duration
#_1BA546: #_F542u: db $AA ; play note Fs4
#_1BA547: #_F543u: db $0C ; duration
#_1BA548: #_F544u: db $C9 ; rest
#_1BA549: #_F545u: db $9F ; play note G3
#_1BA54A: #_F546u: db $30 ; duration
#_1BA54B: #_F547u: db $A8 ; play note E4
#_1BA54C: #_F548u: db $0C ; duration
#_1BA54D: #_F549u: db $C9 ; rest
#_1BA54E: #_F54Au: db $A1 ; play note A3
#_1BA54F: #_F54Bu: db $30 ; duration
#_1BA550: #_F54Cu: db $AA ; play note Fs4
#_1BA551: #_F54Du: db $0C ; duration
#_1BA552: #_F54Eu: db $C9 ; rest
#_1BA553: #_F54Fu: db $A6 ; play note D4
#_1BA554: #_F550u: db $30 ; duration
#_1BA555: #_F551u: db $AB ; play note G4
#_1BA556: #_F552u: db $0C ; duration
#_1BA557: #_F553u: db $C9 ; rest
#_1BA558: #_F554u: db $A5 ; play note Cs4
#_1BA559: #_F555u: db $30 ; duration
#_1BA55A: #_F556u: db $AB ; play note G4
#_1BA55B: #_F557u: db $0C ; duration
#_1BA55C: #_F558u: db $C9 ; rest
#_1BA55D: #_F559u: db $A4 ; play note C4
#_1BA55E: #_F55Au: db $30 ; duration
#_1BA55F: #_F55Bu: db $AB ; play note G4
#_1BA560: #_F55Cu: db $0C ; duration
#_1BA561: #_F55Du: db $C9 ; rest
#_1BA562: #_F55Eu: db $A4 ; play note C4
#_1BA563: #_F55Fu: db $30 ; duration
#_1BA564: #_F560u: db $AA ; play note Fs4
#_1BA565: #_F561u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song19_Sub_F562:
#_1BA566: #_F562u: db $30, $7D ; duration, params
#_1BA568: #_F564u: db $B2 ; play note D5
#_1BA569: #_F565u: db $0C ; duration
#_1BA56A: #_F566u: db $B0 ; play note C5
#_1BA56B: #_F567u: db $AF ; play note B4
#_1BA56C: #_F568u: db $B0 ; play note C5
#_1BA56D: #_F569u: db $AF ; play note B4
#_1BA56E: #_F56Au: db $30 ; duration
#_1BA56F: #_F56Bu: db $AB ; play note G4
#_1BA570: #_F56Cu: db $B0 ; play note C5
#_1BA571: #_F56Du: db $0C ; duration
#_1BA572: #_F56Eu: db $AF ; play note B4
#_1BA573: #_F56Fu: db $AD ; play note A4
#_1BA574: #_F570u: db $AF ; play note B4
#_1BA575: #_F571u: db $AD ; play note A4
#_1BA576: #_F572u: db $30 ; duration
#_1BA577: #_F573u: db $A8 ; play note E4
#_1BA578: #_F574u: db $B2 ; play note D5
#_1BA579: #_F575u: db $0C ; duration
#_1BA57A: #_F576u: db $B0 ; play note C5
#_1BA57B: #_F577u: db $AF ; play note B4
#_1BA57C: #_F578u: db $B0 ; play note C5
#_1BA57D: #_F579u: db $AF ; play note B4
#_1BA57E: #_F57Au: db $18 ; duration
#_1BA57F: #_F57Bu: db $AB ; play note G4
#_1BA580: #_F57Cu: db $B0 ; play note C5
#_1BA581: #_F57Du: db $48 ; duration
#_1BA582: #_F57Eu: db $B7 ; play note G5
#_1BA583: #_F57Fu: db $00 ; End

;===================================================================================================

Song1A_CrystalMaiden:
#_1BA584: #_F580u: dw Song1A_Segment0

Song1A_Loop:
#_1BA586: #_F582u: dw Song1A_Segment1
#_1BA588: #_F584u: dw Song1A_Segment2
#_1BA58A: #_F586u: dw $00FF, Song1A_Loop ; Loop point
#_1BA58E: #_F58Au: dw $0000

Song1A_Segment1:
#_1BA590: #_F58Cu: dw Song1A_Segment1_Track0
#_1BA592: #_F58Eu: dw Song1A_Segment1_Track1
#_1BA594: #_F590u: dw Song1A_Segment1_Track2
#_1BA596: #_F592u: dw Song1A_Segment1_Track3
#_1BA598: #_F594u: dw Song1A_Segment1_Track4
#_1BA59A: #_F596u: dw Song1A_Segment1_Track5
#_1BA59C: #_F598u: dw Song1A_Segment1_Track6
#_1BA59E: #_F59Au: dw Song1A_Segment1_Track7

Song1A_Segment0:
#_1BA5A0: #_F59Cu: dw Song1A_Segment0_Track0
#_1BA5A2: #_F59Eu: dw Song1A_Segment0_Track1
#_1BA5A4: #_F5A0u: dw Song1A_Segment0_Track2
#_1BA5A6: #_F5A2u: dw Song1A_Segment0_Track3
#_1BA5A8: #_F5A4u: dw Song1A_Segment0_Track4
#_1BA5AA: #_F5A6u: dw Song1A_Segment0_Track5
#_1BA5AC: #_F5A8u: dw Song1A_Segment0_Track6
#_1BA5AE: #_F5AAu: dw Song1A_Segment0_Track7

Song1A_Segment2:
#_1BA5B0: #_F5ACu: dw Song1A_Segment2_Track0
#_1BA5B2: #_F5AEu: dw Song1A_Segment2_Track1
#_1BA5B4: #_F5B0u: dw Song1A_Segment2_Track2
#_1BA5B6: #_F5B2u: dw Song1A_Segment2_Track3
#_1BA5B8: #_F5B4u: dw Song1A_Segment2_Track4
#_1BA5BA: #_F5B6u: dw Song1A_Segment2_Track5
#_1BA5BC: #_F5B8u: dw Song1A_Segment2_Track6
#_1BA5BE: #_F5BAu: dw Song1A_Segment2_Track7

;---------------------------------------------------------------------------------------------------

Song1A_Segment1_Track0:
#_1BA5C0: #_F5BCu: db $E0, $0A ; set instrument - strings B
#_1BA5C2: #_F5BEu: db $ED, $64 ; set channel volume
#_1BA5C4: #_F5C0u: db $EE, $96, $F0 ; initiate gradual channel volume change
#_1BA5C7: #_F5C3u: db $E3, $1A, $1C, $1E ; enable vibrato
#_1BA5CB: #_F5C7u: db $E1, $0E ; set panning - leaning left
#_1BA5CD: #_F5C9u: db $EF : dw Song1A_Sub_F8D8 : db $01 ; call segment subroutine
#_1BA5D1: #_F5CDu: db $EF : dw Song1A_Sub_F8E4 : db $01 ; call segment subroutine
#_1BA5D5: #_F5D1u: db $30 ; duration
#_1BA5D6: #_F5D2u: db $B2 ; play note D5
#_1BA5D7: #_F5D3u: db $0C ; duration
#_1BA5D8: #_F5D4u: db $B0 ; play note C5
#_1BA5D9: #_F5D5u: db $AF ; play note B4
#_1BA5DA: #_F5D6u: db $48 ; duration
#_1BA5DB: #_F5D7u: db $AD ; play note A4
#_1BA5DC: #_F5D8u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1A_Segment1_Track1:
#_1BA5DD: #_F5D9u: db $ED, $78 ; set channel volume
#_1BA5DF: #_F5DBu: db $E1, $14 ; set panning - leaning left
#_1BA5E1: #_F5DDu: db $E2, $90, $00 ; initiate gradual panning change
#_1BA5E4: #_F5E0u: db $18, $7D ; duration, params
#_1BA5E6: #_F5E2u: db $AB ; play note G4
#_1BA5E7: #_F5E3u: db $AB ; play note G4
#_1BA5E8: #_F5E4u: db $AB ; play note G4
#_1BA5E9: #_F5E5u: db $AB ; play note G4
#_1BA5EA: #_F5E6u: db $AB ; play note G4
#_1BA5EB: #_F5E7u: db $AB ; play note G4
#_1BA5EC: #_F5E8u: db $E2, $90, $14 ; initiate gradual panning change
#_1BA5EF: #_F5EBu: db $AB ; play note G4
#_1BA5F0: #_F5ECu: db $AB ; play note G4
#_1BA5F1: #_F5EDu: db $AB ; play note G4
#_1BA5F2: #_F5EEu: db $AB ; play note G4
#_1BA5F3: #_F5EFu: db $AB ; play note G4
#_1BA5F4: #_F5F0u: db $AB ; play note G4
#_1BA5F5: #_F5F1u: db $E2, $90, $00 ; initiate gradual panning change
#_1BA5F8: #_F5F4u: db $AB ; play note G4
#_1BA5F9: #_F5F5u: db $AB ; play note G4
#_1BA5FA: #_F5F6u: db $AB ; play note G4
#_1BA5FB: #_F5F7u: db $AB ; play note G4
#_1BA5FC: #_F5F8u: db $AB ; play note G4
#_1BA5FD: #_F5F9u: db $AB ; play note G4
#_1BA5FE: #_F5FAu: db $E2, $90, $14 ; initiate gradual panning change
#_1BA601: #_F5FDu: db $AB ; play note G4
#_1BA602: #_F5FEu: db $AB ; play note G4
#_1BA603: #_F5FFu: db $AB ; play note G4
#_1BA604: #_F600u: db $AB ; play note G4
#_1BA605: #_F601u: db $AB ; play note G4
#_1BA606: #_F602u: db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song1A_Segment1_Track2:
#_1BA607: #_F603u: db $ED, $78 ; set channel volume
#_1BA609: #_F605u: db $E1, $14 ; set panning - leaning left
#_1BA60B: #_F607u: db $E2, $90, $00 ; initiate gradual panning change
#_1BA60E: #_F60Au: db $06 ; duration
#_1BA60F: #_F60Bu: db $C9 ; rest
#_1BA610: #_F60Cu: db $18, $7D ; duration, params
#_1BA612: #_F60Eu: db $A8 ; play note E4
#_1BA613: #_F60Fu: db $A8 ; play note E4
#_1BA614: #_F610u: db $A8 ; play note E4
#_1BA615: #_F611u: db $A8 ; play note E4
#_1BA616: #_F612u: db $A8 ; play note E4
#_1BA617: #_F613u: db $A8 ; play note E4
#_1BA618: #_F614u: db $E2, $90, $14 ; initiate gradual panning change
#_1BA61B: #_F617u: db $A8 ; play note E4
#_1BA61C: #_F618u: db $A8 ; play note E4
#_1BA61D: #_F619u: db $A8 ; play note E4
#_1BA61E: #_F61Au: db $A8 ; play note E4
#_1BA61F: #_F61Bu: db $A8 ; play note E4
#_1BA620: #_F61Cu: db $A8 ; play note E4
#_1BA621: #_F61Du: db $E2, $90, $00 ; initiate gradual panning change
#_1BA624: #_F620u: db $A8 ; play note E4
#_1BA625: #_F621u: db $A8 ; play note E4
#_1BA626: #_F622u: db $A8 ; play note E4
#_1BA627: #_F623u: db $A8 ; play note E4
#_1BA628: #_F624u: db $A8 ; play note E4
#_1BA629: #_F625u: db $A8 ; play note E4
#_1BA62A: #_F626u: db $E2, $90, $14 ; initiate gradual panning change
#_1BA62D: #_F629u: db $A8 ; play note E4
#_1BA62E: #_F62Au: db $A8 ; play note E4
#_1BA62F: #_F62Bu: db $A8 ; play note E4
#_1BA630: #_F62Cu: db $A6 ; play note D4
#_1BA631: #_F62Du: db $A6 ; play note D4
#_1BA632: #_F62Eu: db $12 ; duration
#_1BA633: #_F62Fu: db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song1A_Segment1_Track3:
#_1BA634: #_F630u: db $ED, $78 ; set channel volume
#_1BA636: #_F632u: db $E1, $00 ; set panning - leaning right
#_1BA638: #_F634u: db $E2, $90, $14 ; initiate gradual panning change
#_1BA63B: #_F637u: db $0C ; duration
#_1BA63C: #_F638u: db $C9 ; rest
#_1BA63D: #_F639u: db $18, $7D ; duration, params
#_1BA63F: #_F63Bu: db $A6 ; play note D4
#_1BA640: #_F63Cu: db $A6 ; play note D4
#_1BA641: #_F63Du: db $A6 ; play note D4
#_1BA642: #_F63Eu: db $A6 ; play note D4
#_1BA643: #_F63Fu: db $A6 ; play note D4
#_1BA644: #_F640u: db $A6 ; play note D4
#_1BA645: #_F641u: db $E2, $90, $00 ; initiate gradual panning change
#_1BA648: #_F644u: db $A6 ; play note D4
#_1BA649: #_F645u: db $A6 ; play note D4
#_1BA64A: #_F646u: db $A6 ; play note D4
#_1BA64B: #_F647u: db $A6 ; play note D4
#_1BA64C: #_F648u: db $A6 ; play note D4
#_1BA64D: #_F649u: db $A6 ; play note D4
#_1BA64E: #_F64Au: db $E2, $90, $14 ; initiate gradual panning change
#_1BA651: #_F64Du: db $A6 ; play note D4
#_1BA652: #_F64Eu: db $A6 ; play note D4
#_1BA653: #_F64Fu: db $A6 ; play note D4
#_1BA654: #_F650u: db $A6 ; play note D4
#_1BA655: #_F651u: db $A6 ; play note D4
#_1BA656: #_F652u: db $A6 ; play note D4
#_1BA657: #_F653u: db $E2, $90, $00 ; initiate gradual panning change
#_1BA65A: #_F656u: db $A6 ; play note D4
#_1BA65B: #_F657u: db $A6 ; play note D4
#_1BA65C: #_F658u: db $A6 ; play note D4
#_1BA65D: #_F659u: db $A4 ; play note C4
#_1BA65E: #_F65Au: db $A4 ; play note C4
#_1BA65F: #_F65Bu: db $0C ; duration
#_1BA660: #_F65Cu: db $A4 ; play note C4

;---------------------------------------------------------------------------------------------------

Song1A_Segment1_Track4:
#_1BA661: #_F65Du: db $ED, $78 ; set channel volume
#_1BA663: #_F65Fu: db $E1, $00 ; set panning - leaning right
#_1BA665: #_F661u: db $E2, $90, $14 ; initiate gradual panning change
#_1BA668: #_F664u: db $12 ; duration
#_1BA669: #_F665u: db $C9 ; rest
#_1BA66A: #_F666u: db $18, $7D ; duration, params
#_1BA66C: #_F668u: db $A3 ; play note B3
#_1BA66D: #_F669u: db $A3 ; play note B3
#_1BA66E: #_F66Au: db $A3 ; play note B3
#_1BA66F: #_F66Bu: db $A3 ; play note B3
#_1BA670: #_F66Cu: db $A3 ; play note B3
#_1BA671: #_F66Du: db $A3 ; play note B3
#_1BA672: #_F66Eu: db $E2, $90, $00 ; initiate gradual panning change
#_1BA675: #_F671u: db $A3 ; play note B3
#_1BA676: #_F672u: db $A3 ; play note B3
#_1BA677: #_F673u: db $A3 ; play note B3
#_1BA678: #_F674u: db $A3 ; play note B3
#_1BA679: #_F675u: db $A3 ; play note B3
#_1BA67A: #_F676u: db $A3 ; play note B3
#_1BA67B: #_F677u: db $E2, $90, $14 ; initiate gradual panning change
#_1BA67E: #_F67Au: db $A3 ; play note B3
#_1BA67F: #_F67Bu: db $A3 ; play note B3
#_1BA680: #_F67Cu: db $A3 ; play note B3
#_1BA681: #_F67Du: db $A2 ; play note As3
#_1BA682: #_F67Eu: db $A2 ; play note As3
#_1BA683: #_F67Fu: db $A2 ; play note As3
#_1BA684: #_F680u: db $E2, $90, $00 ; initiate gradual panning change
#_1BA687: #_F683u: db $A1 ; play note A3
#_1BA688: #_F684u: db $A1 ; play note A3
#_1BA689: #_F685u: db $A1 ; play note A3
#_1BA68A: #_F686u: db $A1 ; play note A3
#_1BA68B: #_F687u: db $A1 ; play note A3
#_1BA68C: #_F688u: db $06 ; duration
#_1BA68D: #_F689u: db $A1 ; play note A3

;---------------------------------------------------------------------------------------------------

Song1A_Segment1_Track5:
#_1BA68E: #_F68Au: db $E0, $0A ; set instrument - strings B
#_1BA690: #_F68Cu: db $ED, $64 ; set channel volume
#_1BA692: #_F68Eu: db $EE, $8C, $DC ; initiate gradual channel volume change
#_1BA695: #_F691u: db $E1, $06 ; set panning - leaning right
#_1BA697: #_F693u: db $E3, $1A, $10, $14 ; enable vibrato
#_1BA69B: #_F697u: db $EF : dw Song1A_Sub_F8F3 : db $01 ; call segment subroutine
#_1BA69F: #_F69Bu: db $A4 ; play note C4
#_1BA6A0: #_F69Cu: db $A4 ; play note C4
#_1BA6A1: #_F69Du: db $A3 ; play note B3
#_1BA6A2: #_F69Eu: db $A2 ; play note As3
#_1BA6A3: #_F69Fu: db $A1 ; play note A3
#_1BA6A4: #_F6A0u: db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song1A_Segment1_Track6:
#_1BA6A5: #_F6A1u: db $E0, $0A ; set instrument - strings B
#_1BA6A7: #_F6A3u: db $ED, $64 ; set channel volume
#_1BA6A9: #_F6A5u: db $EE, $96, $DC ; initiate gradual channel volume change
#_1BA6AC: #_F6A8u: db $E1, $0A ; set panning - balanced
#_1BA6AE: #_F6AAu: db $E3, $14, $14, $14 ; enable vibrato
#_1BA6B2: #_F6AEu: db $0C ; duration
#_1BA6B3: #_F6AFu: db $C9 ; rest
#_1BA6B4: #_F6B0u: db $0C, $6D ; duration, params
#_1BA6B6: #_F6B2u: db $9F ; play note G3
#_1BA6B7: #_F6B3u: db $30 ; duration
#_1BA6B8: #_F6B4u: db $A8 ; play note E4
#_1BA6B9: #_F6B5u: db $0C ; duration
#_1BA6BA: #_F6B6u: db $C9 ; rest
#_1BA6BB: #_F6B7u: db $A1 ; play note A3
#_1BA6BC: #_F6B8u: db $30 ; duration
#_1BA6BD: #_F6B9u: db $AA ; play note Fs4
#_1BA6BE: #_F6BAu: db $0C ; duration
#_1BA6BF: #_F6BBu: db $C9 ; rest
#_1BA6C0: #_F6BCu: db $9F ; play note G3
#_1BA6C1: #_F6BDu: db $30 ; duration
#_1BA6C2: #_F6BEu: db $A8 ; play note E4
#_1BA6C3: #_F6BFu: db $0C ; duration
#_1BA6C4: #_F6C0u: db $C9 ; rest
#_1BA6C5: #_F6C1u: db $A1 ; play note A3
#_1BA6C6: #_F6C2u: db $30 ; duration
#_1BA6C7: #_F6C3u: db $AA ; play note Fs4
#_1BA6C8: #_F6C4u: db $0C ; duration
#_1BA6C9: #_F6C5u: db $C9 ; rest
#_1BA6CA: #_F6C6u: db $9F ; play note G3
#_1BA6CB: #_F6C7u: db $30 ; duration
#_1BA6CC: #_F6C8u: db $A6 ; play note D4
#_1BA6CD: #_F6C9u: db $0C ; duration
#_1BA6CE: #_F6CAu: db $C9 ; rest
#_1BA6CF: #_F6CBu: db $9F ; play note G3
#_1BA6D0: #_F6CCu: db $30 ; duration
#_1BA6D1: #_F6CDu: db $A5 ; play note Cs4
#_1BA6D2: #_F6CEu: db $0C ; duration
#_1BA6D3: #_F6CFu: db $C9 ; rest
#_1BA6D4: #_F6D0u: db $9F ; play note G3
#_1BA6D5: #_F6D1u: db $30 ; duration
#_1BA6D6: #_F6D2u: db $A4 ; play note C4
#_1BA6D7: #_F6D3u: db $0C ; duration
#_1BA6D8: #_F6D4u: db $C9 ; rest
#_1BA6D9: #_F6D5u: db $A1 ; play note A3
#_1BA6DA: #_F6D6u: db $30 ; duration
#_1BA6DB: #_F6D7u: db $AA ; play note Fs4

;---------------------------------------------------------------------------------------------------

Song1A_Segment1_Track7:
#_1BA6DC: #_F6D8u: db $E0, $0A ; set instrument - strings B
#_1BA6DE: #_F6DAu: db $ED, $64 ; set channel volume
#_1BA6E0: #_F6DCu: db $EE, $A0, $C8 ; initiate gradual channel volume change
#_1BA6E3: #_F6DFu: db $E3, $1A, $1C, $1E ; enable vibrato
#_1BA6E7: #_F6E3u: db $E1, $0C ; set panning - leaning left
#_1BA6E9: #_F6E5u: db $EF : dw Song1A_Sub_F8F8 : db $01 ; call segment subroutine
#_1BA6ED: #_F6E9u: db $EF : dw Song1A_Sub_F8E4 : db $01 ; call segment subroutine
#_1BA6F1: #_F6EDu: db $30 ; duration
#_1BA6F2: #_F6EEu: db $B2 ; play note D5
#_1BA6F3: #_F6EFu: db $0C ; duration
#_1BA6F4: #_F6F0u: db $B0 ; play note C5
#_1BA6F5: #_F6F1u: db $AF ; play note B4
#_1BA6F6: #_F6F2u: db $40 ; duration
#_1BA6F7: #_F6F3u: db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song1A_Segment0_Track0:
#_1BA6F8: #_F6F4u: db $FA, $18 ; set base percussion sample
#_1BA6FA: #_F6F6u: db $E5, $B4 ; set song volume
#_1BA6FC: #_F6F8u: db $F5, $FF, $00, $00 ; configure EON, EVOLL, EVOLR
#_1BA700: #_F6FCu: db $F7, $02, $3C, $02 ; configure EDL, EFB, FIR
#_1BA704: #_F700u: db $F8, $1E, $28, $28 ; initiate gradual echo volume change
#_1BA708: #_F704u: db $E7, $21 ; set song tempo
#_1BA70A: #_F706u: db $E8, $B4, $3E ; initiate gradual tempo change
#_1BA70D: #_F709u: db $E0, $0E ; set instrument - chimes
#_1BA70F: #_F70Bu: db $ED, $14 ; set channel volume
#_1BA711: #_F70Du: db $EF : dw Song1A_Sub_F905 : db $01 ; call segment subroutine
#_1BA715: #_F711u: db $C9 ; rest
#_1BA716: #_F712u: db $C9 ; rest
#_1BA717: #_F713u: db $E7, $15 ; set song tempo
#_1BA719: #_F715u: db $E0, $0E ; set instrument - chimes
#_1BA71B: #_F717u: db $E1, $14 ; set panning - leaning left
#_1BA71D: #_F719u: db $EE, $50, $78 ; initiate gradual channel volume change
#_1BA720: #_F71Cu: db $18 ; duration
#_1BA721: #_F71Du: db $C9 ; rest
#_1BA722: #_F71Eu: db $18, $7D ; duration, params
#_1BA724: #_F720u: db $AB ; play note G4
#_1BA725: #_F721u: db $AB ; play note G4
#_1BA726: #_F722u: db $AB ; play note G4
#_1BA727: #_F723u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1A_Segment0_Track1:
#_1BA728: #_F724u: db $E0, $0E ; set instrument - chimes
#_1BA72A: #_F726u: db $ED, $A0 ; set channel volume
#_1BA72C: #_F728u: db $E1, $14 ; set panning - leaning left
#_1BA72E: #_F72Au: db $30, $7D ; duration, params
#_1BA730: #_F72Cu: db $9A ; play note D3
#_1BA731: #_F72Du: db $9D ; play note F3
#_1BA732: #_F72Eu: db $A3 ; play note B3
#_1BA733: #_F72Fu: db $A6 ; play note D4
#_1BA734: #_F730u: db $EE, $FA, $3C ; initiate gradual channel volume change
#_1BA737: #_F733u: db $AD ; play note A4
#_1BA738: #_F734u: db $AD ; play note A4
#_1BA739: #_F735u: db $AD ; play note A4
#_1BA73A: #_F736u: db $AD ; play note A4
#_1BA73B: #_F737u: db $10 ; duration
#_1BA73C: #_F738u: db $AD ; play note A4
#_1BA73D: #_F739u: db $AD ; play note A4
#_1BA73E: #_F73Au: db $AD ; play note A4
#_1BA73F: #_F73Bu: db $AD ; play note A4
#_1BA740: #_F73Cu: db $AD ; play note A4
#_1BA741: #_F73Du: db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song1A_Segment0_Track2:
#_1BA742: #_F73Eu: db $E0, $0E ; set instrument - chimes
#_1BA744: #_F740u: db $ED, $A0 ; set channel volume
#_1BA746: #_F742u: db $E1, $0D ; set panning - leaning left
#_1BA748: #_F744u: db $0C ; duration
#_1BA749: #_F745u: db $C9 ; rest
#_1BA74A: #_F746u: db $30, $7D ; duration, params
#_1BA74C: #_F748u: db $9D ; play note F3
#_1BA74D: #_F749u: db $A1 ; play note A3
#_1BA74E: #_F74Au: db $A6 ; play note D4
#_1BA74F: #_F74Bu: db $A9 ; play note F4
#_1BA750: #_F74Cu: db $EE, $FA, $3C ; initiate gradual channel volume change
#_1BA753: #_F74Fu: db $AF ; play note B4
#_1BA754: #_F750u: db $AF ; play note B4
#_1BA755: #_F751u: db $AF ; play note B4
#_1BA756: #_F752u: db $24 ; duration
#_1BA757: #_F753u: db $AF ; play note B4
#_1BA758: #_F754u: db $04 ; duration
#_1BA759: #_F755u: db $C8 ; sustain current note
#_1BA75A: #_F756u: db $10 ; duration
#_1BA75B: #_F757u: db $AF ; play note B4
#_1BA75C: #_F758u: db $AF ; play note B4
#_1BA75D: #_F759u: db $AF ; play note B4
#_1BA75E: #_F75Au: db $AF ; play note B4
#_1BA75F: #_F75Bu: db $AF ; play note B4
#_1BA760: #_F75Cu: db $0C ; duration
#_1BA761: #_F75Du: db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song1A_Segment0_Track3:
#_1BA762: #_F75Eu: db $E0, $0E ; set instrument - chimes
#_1BA764: #_F760u: db $ED, $A0 ; set channel volume
#_1BA766: #_F762u: db $E1, $08 ; set panning - leaning right
#_1BA768: #_F764u: db $18 ; duration
#_1BA769: #_F765u: db $C9 ; rest
#_1BA76A: #_F766u: db $30, $7D ; duration, params
#_1BA76C: #_F768u: db $A1 ; play note A3
#_1BA76D: #_F769u: db $A3 ; play note B3
#_1BA76E: #_F76Au: db $A9 ; play note F4
#_1BA76F: #_F76Bu: db $AD ; play note A4
#_1BA770: #_F76Cu: db $EE, $FA, $3C ; initiate gradual channel volume change
#_1BA773: #_F76Fu: db $AD ; play note A4
#_1BA774: #_F770u: db $AD ; play note A4
#_1BA775: #_F771u: db $AD ; play note A4
#_1BA776: #_F772u: db $18 ; duration
#_1BA777: #_F773u: db $AD ; play note A4
#_1BA778: #_F774u: db $08 ; duration
#_1BA779: #_F775u: db $C8 ; sustain current note
#_1BA77A: #_F776u: db $10 ; duration
#_1BA77B: #_F777u: db $AD ; play note A4
#_1BA77C: #_F778u: db $AD ; play note A4
#_1BA77D: #_F779u: db $AD ; play note A4
#_1BA77E: #_F77Au: db $AD ; play note A4
#_1BA77F: #_F77Bu: db $AD ; play note A4
#_1BA780: #_F77Cu: db $08 ; duration
#_1BA781: #_F77Du: db $AD ; play note A4

;---------------------------------------------------------------------------------------------------

Song1A_Segment0_Track4:
#_1BA782: #_F77Eu: db $E0, $0E ; set instrument - chimes
#_1BA784: #_F780u: db $ED, $A0 ; set channel volume
#_1BA786: #_F782u: db $E1, $00 ; set panning - leaning right
#_1BA788: #_F784u: db $24 ; duration
#_1BA789: #_F785u: db $C9 ; rest
#_1BA78A: #_F786u: db $30, $7D ; duration, params
#_1BA78C: #_F788u: db $A3 ; play note B3
#_1BA78D: #_F789u: db $A6 ; play note D4
#_1BA78E: #_F78Au: db $AD ; play note A4
#_1BA78F: #_F78Bu: db $AF ; play note B4
#_1BA790: #_F78Cu: db $EE, $FA, $3C ; initiate gradual channel volume change
#_1BA793: #_F78Fu: db $AF ; play note B4
#_1BA794: #_F790u: db $AF ; play note B4
#_1BA795: #_F791u: db $AF ; play note B4
#_1BA796: #_F792u: db $0C ; duration
#_1BA797: #_F793u: db $AF ; play note B4
#_1BA798: #_F794u: db $C8 ; sustain current note
#_1BA799: #_F795u: db $10 ; duration
#_1BA79A: #_F796u: db $AF ; play note B4
#_1BA79B: #_F797u: db $AF ; play note B4
#_1BA79C: #_F798u: db $AF ; play note B4
#_1BA79D: #_F799u: db $AF ; play note B4
#_1BA79E: #_F79Au: db $AF ; play note B4
#_1BA79F: #_F79Bu: db $04 ; duration
#_1BA7A0: #_F79Cu: db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song1A_Segment0_Track5:
#_1BA7A1: #_F79Du: db $E0, $0E ; set instrument - chimes
#_1BA7A3: #_F79Fu: db $ED, $14 ; set channel volume
#_1BA7A5: #_F7A1u: db $E1, $0D ; set panning - leaning left
#_1BA7A7: #_F7A3u: db $EF : dw Song1A_Sub_F905 : db $01 ; call segment subroutine
#_1BA7AB: #_F7A7u: db $C9 ; rest
#_1BA7AC: #_F7A8u: db $C9 ; rest
#_1BA7AD: #_F7A9u: db $EE, $50, $78 ; initiate gradual channel volume change
#_1BA7B0: #_F7ACu: db $1E ; duration
#_1BA7B1: #_F7ADu: db $C9 ; rest
#_1BA7B2: #_F7AEu: db $18, $7D ; duration, params
#_1BA7B4: #_F7B0u: db $A8 ; play note E4
#_1BA7B5: #_F7B1u: db $A8 ; play note E4
#_1BA7B6: #_F7B2u: db $12 ; duration
#_1BA7B7: #_F7B3u: db $A8 ; play note E4

;---------------------------------------------------------------------------------------------------

Song1A_Segment0_Track6:
#_1BA7B8: #_F7B4u: db $E0, $0E ; set instrument - chimes
#_1BA7BA: #_F7B6u: db $ED, $14 ; set channel volume
#_1BA7BC: #_F7B8u: db $E1, $07 ; set panning - leaning right
#_1BA7BE: #_F7BAu: db $EF : dw Song1A_Sub_F905 : db $01 ; call segment subroutine
#_1BA7C2: #_F7BEu: db $C9 ; rest
#_1BA7C3: #_F7BFu: db $C9 ; rest
#_1BA7C4: #_F7C0u: db $EE, $50, $78 ; initiate gradual channel volume change
#_1BA7C7: #_F7C3u: db $24 ; duration
#_1BA7C8: #_F7C4u: db $C9 ; rest
#_1BA7C9: #_F7C5u: db $18, $7D ; duration, params
#_1BA7CB: #_F7C7u: db $A6 ; play note D4
#_1BA7CC: #_F7C8u: db $A6 ; play note D4
#_1BA7CD: #_F7C9u: db $0C ; duration
#_1BA7CE: #_F7CAu: db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song1A_Segment0_Track7:
#_1BA7CF: #_F7CBu: db $E0, $0E ; set instrument - chimes
#_1BA7D1: #_F7CDu: db $ED, $14 ; set channel volume
#_1BA7D3: #_F7CFu: db $E1, $00 ; set panning - leaning right
#_1BA7D5: #_F7D1u: db $EF : dw Song1A_Sub_F905 : db $01 ; call segment subroutine
#_1BA7D9: #_F7D5u: db $C9 ; rest
#_1BA7DA: #_F7D6u: db $C9 ; rest
#_1BA7DB: #_F7D7u: db $EE, $50, $78 ; initiate gradual channel volume change
#_1BA7DE: #_F7DAu: db $2A ; duration
#_1BA7DF: #_F7DBu: db $C9 ; rest
#_1BA7E0: #_F7DCu: db $18, $7D ; duration, params
#_1BA7E2: #_F7DEu: db $A3 ; play note B3
#_1BA7E3: #_F7DFu: db $A3 ; play note B3
#_1BA7E4: #_F7E0u: db $06 ; duration
#_1BA7E5: #_F7E1u: db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song1A_Segment2_Track0:
#_1BA7E6: #_F7E2u: db $EF : dw Song1A_Sub_F8D8 : db $01 ; call segment subroutine
#_1BA7EA: #_F7E6u: db $EF : dw Song1A_Sub_F8E4 : db $01 ; call segment subroutine
#_1BA7EE: #_F7EAu: db $48 ; duration
#_1BA7EF: #_F7EBu: db $BE ; play note D6
#_1BA7F0: #_F7ECu: db $C8 ; sustain current note
#_1BA7F1: #_F7EDu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1A_Segment2_Track1:
#_1BA7F2: #_F7EEu: db $E1, $14 ; set panning - leaning left
#_1BA7F4: #_F7F0u: db $E2, $90, $00 ; initiate gradual panning change
#_1BA7F7: #_F7F3u: db $18, $7D ; duration, params
#_1BA7F9: #_F7F5u: db $AB ; play note G4
#_1BA7FA: #_F7F6u: db $AB ; play note G4
#_1BA7FB: #_F7F7u: db $AB ; play note G4
#_1BA7FC: #_F7F8u: db $AB ; play note G4
#_1BA7FD: #_F7F9u: db $AB ; play note G4
#_1BA7FE: #_F7FAu: db $AB ; play note G4
#_1BA7FF: #_F7FBu: db $E2, $90, $14 ; initiate gradual panning change
#_1BA802: #_F7FEu: db $AB ; play note G4
#_1BA803: #_F7FFu: db $AB ; play note G4
#_1BA804: #_F800u: db $AB ; play note G4
#_1BA805: #_F801u: db $AB ; play note G4
#_1BA806: #_F802u: db $AB ; play note G4
#_1BA807: #_F803u: db $AB ; play note G4
#_1BA808: #_F804u: db $E2, $90, $00 ; initiate gradual panning change
#_1BA80B: #_F807u: db $AB ; play note G4
#_1BA80C: #_F808u: db $AB ; play note G4
#_1BA80D: #_F809u: db $AB ; play note G4
#_1BA80E: #_F80Au: db $AB ; play note G4
#_1BA80F: #_F80Bu: db $AB ; play note G4
#_1BA810: #_F80Cu: db $AB ; play note G4
#_1BA811: #_F80Du: db $E2, $90, $14 ; initiate gradual panning change
#_1BA814: #_F810u: db $AB ; play note G4
#_1BA815: #_F811u: db $AB ; play note G4
#_1BA816: #_F812u: db $AB ; play note G4
#_1BA817: #_F813u: db $AB ; play note G4
#_1BA818: #_F814u: db $AB ; play note G4
#_1BA819: #_F815u: db $AB ; play note G4

;---------------------------------------------------------------------------------------------------

Song1A_Segment2_Track2:
#_1BA81A: #_F816u: db $E1, $14 ; set panning - leaning left
#_1BA81C: #_F818u: db $E2, $90, $00 ; initiate gradual panning change
#_1BA81F: #_F81Bu: db $06 ; duration
#_1BA820: #_F81Cu: db $C9 ; rest
#_1BA821: #_F81Du: db $18, $7D ; duration, params
#_1BA823: #_F81Fu: db $A8 ; play note E4
#_1BA824: #_F820u: db $A8 ; play note E4
#_1BA825: #_F821u: db $A8 ; play note E4
#_1BA826: #_F822u: db $AA ; play note Fs4
#_1BA827: #_F823u: db $AA ; play note Fs4
#_1BA828: #_F824u: db $AA ; play note Fs4
#_1BA829: #_F825u: db $E2, $90, $14 ; initiate gradual panning change
#_1BA82C: #_F828u: db $A8 ; play note E4
#_1BA82D: #_F829u: db $A8 ; play note E4
#_1BA82E: #_F82Au: db $A8 ; play note E4
#_1BA82F: #_F82Bu: db $AA ; play note Fs4
#_1BA830: #_F82Cu: db $AA ; play note Fs4
#_1BA831: #_F82Du: db $AA ; play note Fs4
#_1BA832: #_F82Eu: db $E2, $90, $00 ; initiate gradual panning change
#_1BA835: #_F831u: db $A8 ; play note E4
#_1BA836: #_F832u: db $A8 ; play note E4
#_1BA837: #_F833u: db $A8 ; play note E4
#_1BA838: #_F834u: db $A8 ; play note E4
#_1BA839: #_F835u: db $A8 ; play note E4
#_1BA83A: #_F836u: db $A8 ; play note E4
#_1BA83B: #_F837u: db $E2, $90, $14 ; initiate gradual panning change
#_1BA83E: #_F83Au: db $A8 ; play note E4
#_1BA83F: #_F83Bu: db $A8 ; play note E4
#_1BA840: #_F83Cu: db $A8 ; play note E4
#_1BA841: #_F83Du: db $A6 ; play note D4
#_1BA842: #_F83Eu: db $A6 ; play note D4
#_1BA843: #_F83Fu: db $12 ; duration
#_1BA844: #_F840u: db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song1A_Segment2_Track3:
#_1BA845: #_F841u: db $E1, $00 ; set panning - leaning right
#_1BA847: #_F843u: db $E2, $90, $14 ; initiate gradual panning change
#_1BA84A: #_F846u: db $0C ; duration
#_1BA84B: #_F847u: db $C9 ; rest
#_1BA84C: #_F848u: db $18, $7D ; duration, params
#_1BA84E: #_F84Au: db $A6 ; play note D4
#_1BA84F: #_F84Bu: db $A6 ; play note D4
#_1BA850: #_F84Cu: db $A6 ; play note D4
#_1BA851: #_F84Du: db $A6 ; play note D4
#_1BA852: #_F84Eu: db $A6 ; play note D4
#_1BA853: #_F84Fu: db $A6 ; play note D4
#_1BA854: #_F850u: db $E2, $90, $00 ; initiate gradual panning change
#_1BA857: #_F853u: db $A6 ; play note D4
#_1BA858: #_F854u: db $A6 ; play note D4
#_1BA859: #_F855u: db $A6 ; play note D4
#_1BA85A: #_F856u: db $A6 ; play note D4
#_1BA85B: #_F857u: db $A6 ; play note D4
#_1BA85C: #_F858u: db $A6 ; play note D4
#_1BA85D: #_F859u: db $E2, $90, $14 ; initiate gradual panning change
#_1BA860: #_F85Cu: db $A6 ; play note D4
#_1BA861: #_F85Du: db $A6 ; play note D4
#_1BA862: #_F85Eu: db $A6 ; play note D4
#_1BA863: #_F85Fu: db $A6 ; play note D4
#_1BA864: #_F860u: db $A6 ; play note D4
#_1BA865: #_F861u: db $A6 ; play note D4
#_1BA866: #_F862u: db $E2, $90, $00 ; initiate gradual panning change
#_1BA869: #_F865u: db $A6 ; play note D4
#_1BA86A: #_F866u: db $A6 ; play note D4
#_1BA86B: #_F867u: db $A6 ; play note D4
#_1BA86C: #_F868u: db $A4 ; play note C4
#_1BA86D: #_F869u: db $A4 ; play note C4
#_1BA86E: #_F86Au: db $0C ; duration
#_1BA86F: #_F86Bu: db $A4 ; play note C4

;---------------------------------------------------------------------------------------------------

Song1A_Segment2_Track4:
#_1BA870: #_F86Cu: db $E1, $00 ; set panning - leaning right
#_1BA872: #_F86Eu: db $E2, $90, $14 ; initiate gradual panning change
#_1BA875: #_F871u: db $12 ; duration
#_1BA876: #_F872u: db $C9 ; rest
#_1BA877: #_F873u: db $18, $7D ; duration, params
#_1BA879: #_F875u: db $A3 ; play note B3
#_1BA87A: #_F876u: db $A3 ; play note B3
#_1BA87B: #_F877u: db $A3 ; play note B3
#_1BA87C: #_F878u: db $A1 ; play note A3
#_1BA87D: #_F879u: db $A1 ; play note A3
#_1BA87E: #_F87Au: db $A1 ; play note A3
#_1BA87F: #_F87Bu: db $E2, $90, $00 ; initiate gradual panning change
#_1BA882: #_F87Eu: db $A3 ; play note B3
#_1BA883: #_F87Fu: db $A3 ; play note B3
#_1BA884: #_F880u: db $A3 ; play note B3
#_1BA885: #_F881u: db $A1 ; play note A3
#_1BA886: #_F882u: db $A1 ; play note A3
#_1BA887: #_F883u: db $A1 ; play note A3
#_1BA888: #_F884u: db $E2, $90, $14 ; initiate gradual panning change
#_1BA88B: #_F887u: db $A3 ; play note B3
#_1BA88C: #_F888u: db $A3 ; play note B3
#_1BA88D: #_F889u: db $A3 ; play note B3
#_1BA88E: #_F88Au: db $A2 ; play note As3
#_1BA88F: #_F88Bu: db $A2 ; play note As3
#_1BA890: #_F88Cu: db $A2 ; play note As3
#_1BA891: #_F88Du: db $E2, $90, $00 ; initiate gradual panning change
#_1BA894: #_F890u: db $A1 ; play note A3
#_1BA895: #_F891u: db $A1 ; play note A3
#_1BA896: #_F892u: db $A1 ; play note A3
#_1BA897: #_F893u: db $A1 ; play note A3
#_1BA898: #_F894u: db $A1 ; play note A3
#_1BA899: #_F895u: db $06 ; duration
#_1BA89A: #_F896u: db $A1 ; play note A3

;---------------------------------------------------------------------------------------------------

Song1A_Segment2_Track5:
#_1BA89B: #_F897u: db $EF : dw Song1A_Sub_F8F3 : db $01 ; call segment subroutine
#_1BA89F: #_F89Bu: db $A4 ; play note C4
#_1BA8A0: #_F89Cu: db $A4 ; play note C4
#_1BA8A1: #_F89Du: db $A3 ; play note B3
#_1BA8A2: #_F89Eu: db $A2 ; play note As3
#_1BA8A3: #_F89Fu: db $A1 ; play note A3
#_1BA8A4: #_F8A0u: db $A6 ; play note D4

;---------------------------------------------------------------------------------------------------

Song1A_Segment2_Track6:
#_1BA8A5: #_F8A1u: db $0C ; duration
#_1BA8A6: #_F8A2u: db $C9 ; rest
#_1BA8A7: #_F8A3u: db $0C, $6D ; duration, params
#_1BA8A9: #_F8A5u: db $9F ; play note G3
#_1BA8AA: #_F8A6u: db $30 ; duration
#_1BA8AB: #_F8A7u: db $A8 ; play note E4
#_1BA8AC: #_F8A8u: db $0C ; duration
#_1BA8AD: #_F8A9u: db $C9 ; rest
#_1BA8AE: #_F8AAu: db $A1 ; play note A3
#_1BA8AF: #_F8ABu: db $30 ; duration
#_1BA8B0: #_F8ACu: db $AA ; play note Fs4
#_1BA8B1: #_F8ADu: db $0C ; duration
#_1BA8B2: #_F8AEu: db $C9 ; rest
#_1BA8B3: #_F8AFu: db $9F ; play note G3
#_1BA8B4: #_F8B0u: db $30 ; duration
#_1BA8B5: #_F8B1u: db $A8 ; play note E4
#_1BA8B6: #_F8B2u: db $0C ; duration
#_1BA8B7: #_F8B3u: db $C9 ; rest
#_1BA8B8: #_F8B4u: db $A1 ; play note A3
#_1BA8B9: #_F8B5u: db $30 ; duration
#_1BA8BA: #_F8B6u: db $AA ; play note Fs4
#_1BA8BB: #_F8B7u: db $0C ; duration
#_1BA8BC: #_F8B8u: db $C9 ; rest
#_1BA8BD: #_F8B9u: db $9F ; play note G3
#_1BA8BE: #_F8BAu: db $30 ; duration
#_1BA8BF: #_F8BBu: db $A6 ; play note D4
#_1BA8C0: #_F8BCu: db $0C ; duration
#_1BA8C1: #_F8BDu: db $C9 ; rest
#_1BA8C2: #_F8BEu: db $9F ; play note G3
#_1BA8C3: #_F8BFu: db $30 ; duration
#_1BA8C4: #_F8C0u: db $A5 ; play note Cs4
#_1BA8C5: #_F8C1u: db $0C ; duration
#_1BA8C6: #_F8C2u: db $C9 ; rest
#_1BA8C7: #_F8C3u: db $9F ; play note G3
#_1BA8C8: #_F8C4u: db $30 ; duration
#_1BA8C9: #_F8C5u: db $A4 ; play note C4
#_1BA8CA: #_F8C6u: db $0C ; duration
#_1BA8CB: #_F8C7u: db $C9 ; rest
#_1BA8CC: #_F8C8u: db $A1 ; play note A3
#_1BA8CD: #_F8C9u: db $30 ; duration
#_1BA8CE: #_F8CAu: db $AA ; play note Fs4

;---------------------------------------------------------------------------------------------------

Song1A_Segment2_Track7:
#_1BA8CF: #_F8CBu: db $EF : dw Song1A_Sub_F8F8 : db $01 ; call segment subroutine
#_1BA8D3: #_F8CFu: db $EF : dw Song1A_Sub_F8E4 : db $01 ; call segment subroutine
#_1BA8D7: #_F8D3u: db $48 ; duration
#_1BA8D8: #_F8D4u: db $BE ; play note D6
#_1BA8D9: #_F8D5u: db $40 ; duration
#_1BA8DA: #_F8D6u: db $C8 ; sustain current note
#_1BA8DB: #_F8D7u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1A_Sub_F8D8:
#_1BA8DC: #_F8D8u: db $30, $6D ; duration, params
#_1BA8DE: #_F8DAu: db $AF ; play note B4
#_1BA8DF: #_F8DBu: db $18 ; duration
#_1BA8E0: #_F8DCu: db $B2 ; play note D5
#_1BA8E1: #_F8DDu: db $30, $7D ; duration, params
#_1BA8E3: #_F8DFu: db $AD ; play note A4
#_1BA8E4: #_F8E0u: db $0C ; duration
#_1BA8E5: #_F8E1u: db $AB ; play note G4
#_1BA8E6: #_F8E2u: db $AD ; play note A4
#_1BA8E7: #_F8E3u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1A_Sub_F8E4:
#_1BA8E8: #_F8E4u: db $30 ; duration
#_1BA8E9: #_F8E5u: db $AF ; play note B4
#_1BA8EA: #_F8E6u: db $18 ; duration
#_1BA8EB: #_F8E7u: db $B2 ; play note D5
#_1BA8EC: #_F8E8u: db $48 ; duration
#_1BA8ED: #_F8E9u: db $AD ; play note A4
#_1BA8EE: #_F8EAu: db $30 ; duration
#_1BA8EF: #_F8EBu: db $AF ; play note B4
#_1BA8F0: #_F8ECu: db $18 ; duration
#_1BA8F1: #_F8EDu: db $B2 ; play note D5
#_1BA8F2: #_F8EEu: db $30 ; duration
#_1BA8F3: #_F8EFu: db $B9 ; play note A5
#_1BA8F4: #_F8F0u: db $18 ; duration
#_1BA8F5: #_F8F1u: db $B7 ; play note G5
#_1BA8F6: #_F8F2u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1A_Sub_F8F3:
#_1BA8F7: #_F8F3u: db $48, $6D ; duration, params
#_1BA8F9: #_F8F5u: db $A4 ; play note C4
#_1BA8FA: #_F8F6u: db $A4 ; play note C4
#_1BA8FB: #_F8F7u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1A_Sub_F8F8:
#_1BA8FC: #_F8F8u: db $08 ; duration
#_1BA8FD: #_F8F9u: db $C9 ; rest
#_1BA8FE: #_F8FAu: db $30, $6D ; duration, params
#_1BA900: #_F8FCu: db $AF ; play note B4
#_1BA901: #_F8FDu: db $18 ; duration
#_1BA902: #_F8FEu: db $B2 ; play note D5
#_1BA903: #_F8FFu: db $30 ; duration
#_1BA904: #_F900u: db $AD ; play note A4
#_1BA905: #_F901u: db $0C ; duration
#_1BA906: #_F902u: db $AB ; play note G4
#_1BA907: #_F903u: db $AD ; play note A4
#_1BA908: #_F904u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1A_Sub_F905:
#_1BA909: #_F905u: db $60 ; duration
#_1BA90A: #_F906u: db $C9 ; rest
#_1BA90B: #_F907u: db $C9 ; rest
#_1BA90C: #_F908u: db $00 ; End

;===================================================================================================

Song1B_BigFairy:
#_1BA90D: #_F909u: dw Song1B_Segment0

Song1B_Loop:
#_1BA90F: #_F90Bu: dw Song1B_Segment1
#_1BA911: #_F90Du: dw Song1B_Segment2
#_1BA913: #_F90Fu: dw $00FF, Song1B_Loop ; Loop point
#_1BA917: #_F913u: dw $0000

Song1B_Segment1:
#_1BA919: #_F915u: dw Song1B_Segment1_Track0
#_1BA91B: #_F917u: dw Song1B_Segment1_Track1
#_1BA91D: #_F919u: dw Song1B_Segment1_Track2
#_1BA91F: #_F91Bu: dw Song1B_Segment1_Track3
#_1BA921: #_F91Du: dw Song1B_Segment1_Track4
#_1BA923: #_F91Fu: dw Song1B_Segment1_Track5
#_1BA925: #_F921u: dw Song1B_Segment1_Track6
#_1BA927: #_F923u: dw $0000

Song1B_Segment0:
#_1BA929: #_F925u: dw Song1B_Segment0_Track0
#_1BA92B: #_F927u: dw Song1B_Segment0_Track1
#_1BA92D: #_F929u: dw Song1B_Segment0_Track2
#_1BA92F: #_F92Bu: dw Song1B_Segment0_Track3
#_1BA931: #_F92Du: dw Song1B_Segment0_Track4
#_1BA933: #_F92Fu: dw $0000
#_1BA935: #_F931u: dw $0000
#_1BA937: #_F933u: dw $0000

Song1B_Segment2:
#_1BA939: #_F935u: dw Song1B_Segment2_Track0
#_1BA93B: #_F937u: dw Song1B_Segment2_Track1
#_1BA93D: #_F939u: dw Song1B_Segment2_Track2
#_1BA93F: #_F93Bu: dw Song1B_Segment2_Track3
#_1BA941: #_F93Du: dw Song1B_Segment2_Track4
#_1BA943: #_F93Fu: dw Song1B_Segment2_Track5
#_1BA945: #_F941u: dw Song1B_Segment2_Track6
#_1BA947: #_F943u: dw $0000

;---------------------------------------------------------------------------------------------------

Song1B_Segment1_Track0:
#_1BA949: #_F945u: db $E5, $A0 ; set song volume
#_1BA94B: #_F947u: db $F5, $FF, $28, $28 ; configure EON, EVOLL, EVOLR
#_1BA94F: #_F94Bu: db $F7, $02, $50, $02 ; configure EDL, EFB, FIR
#_1BA953: #_F94Fu: db $E7, $21 ; set song tempo
#_1BA955: #_F951u: db $E0, $0F ; set instrument - harp
#_1BA957: #_F953u: db $ED, $8C ; set channel volume
#_1BA959: #_F955u: db $E1, $02 ; set panning - leaning right
#_1BA95B: #_F957u: db $30, $7D ; duration, params
#_1BA95D: #_F959u: db $BA ; play note As5
#_1BA95E: #_F95Au: db $B8 ; play note Gs5
#_1BA95F: #_F95Bu: db $B7 ; play note G5
#_1BA960: #_F95Cu: db $B8 ; play note Gs5
#_1BA961: #_F95Du: db $B8 ; play note Gs5
#_1BA962: #_F95Eu: db $B6 ; play note Fs5
#_1BA963: #_F95Fu: db $B5 ; play note F5
#_1BA964: #_F960u: db $B6 ; play note Fs5
#_1BA965: #_F961u: db $B6 ; play note Fs5
#_1BA966: #_F962u: db $B5 ; play note F5
#_1BA967: #_F963u: db $B4 ; play note E5
#_1BA968: #_F964u: db $B5 ; play note F5
#_1BA969: #_F965u: db $B5 ; play note F5
#_1BA96A: #_F966u: db $B3 ; play note Ds5
#_1BA96B: #_F967u: db $B2 ; play note D5
#_1BA96C: #_F968u: db $B3 ; play note Ds5
#_1BA96D: #_F969u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1B_Segment1_Track1:
#_1BA96E: #_F96Au: db $E0, $0F ; set instrument - harp
#_1BA970: #_F96Cu: db $ED, $8C ; set channel volume
#_1BA972: #_F96Eu: db $E1, $04 ; set panning - leaning right
#_1BA974: #_F970u: db $0C ; duration
#_1BA975: #_F971u: db $C9 ; rest
#_1BA976: #_F972u: db $30, $7D ; duration, params
#_1BA978: #_F974u: db $B3 ; play note Ds5
#_1BA979: #_F975u: db $B3 ; play note Ds5
#_1BA97A: #_F976u: db $B3 ; play note Ds5
#_1BA97B: #_F977u: db $B3 ; play note Ds5
#_1BA97C: #_F978u: db $B1 ; play note Cs5
#_1BA97D: #_F979u: db $B1 ; play note Cs5
#_1BA97E: #_F97Au: db $B1 ; play note Cs5
#_1BA97F: #_F97Bu: db $B1 ; play note Cs5
#_1BA980: #_F97Cu: db $AF ; play note B4
#_1BA981: #_F97Du: db $AF ; play note B4
#_1BA982: #_F97Eu: db $AF ; play note B4
#_1BA983: #_F97Fu: db $AF ; play note B4
#_1BA984: #_F980u: db $AE ; play note As4
#_1BA985: #_F981u: db $AE ; play note As4
#_1BA986: #_F982u: db $AE ; play note As4
#_1BA987: #_F983u: db $24 ; duration
#_1BA988: #_F984u: db $AE ; play note As4

;---------------------------------------------------------------------------------------------------

Song1B_Segment1_Track2:
#_1BA989: #_F985u: db $E0, $0F ; set instrument - harp
#_1BA98B: #_F987u: db $ED, $8C ; set channel volume
#_1BA98D: #_F989u: db $E1, $06 ; set panning - leaning right
#_1BA98F: #_F98Bu: db $18 ; duration
#_1BA990: #_F98Cu: db $C9 ; rest
#_1BA991: #_F98Du: db $30, $7D ; duration, params
#_1BA993: #_F98Fu: db $AF ; play note B4
#_1BA994: #_F990u: db $AF ; play note B4
#_1BA995: #_F991u: db $AF ; play note B4
#_1BA996: #_F992u: db $AF ; play note B4
#_1BA997: #_F993u: db $AE ; play note As4
#_1BA998: #_F994u: db $AE ; play note As4
#_1BA999: #_F995u: db $AE ; play note As4
#_1BA99A: #_F996u: db $AE ; play note As4
#_1BA99B: #_F997u: db $AC ; play note Gs4
#_1BA99C: #_F998u: db $AC ; play note Gs4
#_1BA99D: #_F999u: db $AC ; play note Gs4
#_1BA99E: #_F99Au: db $AC ; play note Gs4
#_1BA99F: #_F99Bu: db $AA ; play note Fs4
#_1BA9A0: #_F99Cu: db $AA ; play note Fs4
#_1BA9A1: #_F99Du: db $AA ; play note Fs4
#_1BA9A2: #_F99Eu: db $18 ; duration
#_1BA9A3: #_F99Fu: db $AA ; play note Fs4

;---------------------------------------------------------------------------------------------------

Song1B_Segment1_Track3:
#_1BA9A4: #_F9A0u: db $E0, $0F ; set instrument - harp
#_1BA9A6: #_F9A2u: db $ED, $8C ; set channel volume
#_1BA9A8: #_F9A4u: db $E1, $08 ; set panning - leaning right
#_1BA9AA: #_F9A6u: db $24 ; duration
#_1BA9AB: #_F9A7u: db $C9 ; rest
#_1BA9AC: #_F9A8u: db $30, $7D ; duration, params
#_1BA9AE: #_F9AAu: db $AC ; play note Gs4
#_1BA9AF: #_F9ABu: db $AC ; play note Gs4
#_1BA9B0: #_F9ACu: db $AC ; play note Gs4
#_1BA9B1: #_F9ADu: db $AC ; play note Gs4
#_1BA9B2: #_F9AEu: db $AA ; play note Fs4
#_1BA9B3: #_F9AFu: db $AA ; play note Fs4
#_1BA9B4: #_F9B0u: db $AA ; play note Fs4
#_1BA9B5: #_F9B1u: db $AA ; play note Fs4
#_1BA9B6: #_F9B2u: db $A9 ; play note F4
#_1BA9B7: #_F9B3u: db $A9 ; play note F4
#_1BA9B8: #_F9B4u: db $A9 ; play note F4
#_1BA9B9: #_F9B5u: db $A9 ; play note F4
#_1BA9BA: #_F9B6u: db $A7 ; play note Ds4
#_1BA9BB: #_F9B7u: db $A7 ; play note Ds4
#_1BA9BC: #_F9B8u: db $A7 ; play note Ds4
#_1BA9BD: #_F9B9u: db $0C ; duration
#_1BA9BE: #_F9BAu: db $A7 ; play note Ds4

;---------------------------------------------------------------------------------------------------

Song1B_Segment1_Track4:
#_1BA9BF: #_F9BBu: db $E0, $0F ; set instrument - harp
#_1BA9C1: #_F9BDu: db $ED, $C8 ; set channel volume
#_1BA9C3: #_F9BFu: db $E1, $0A ; set panning - balanced
#_1BA9C5: #_F9C1u: db $24, $7D ; duration, params
#_1BA9C7: #_F9C3u: db $8B ; play note B1
#_1BA9C8: #_F9C4u: db $48 ; duration
#_1BA9C9: #_F9C5u: db $A2 ; play note As3
#_1BA9CA: #_F9C6u: db $24 ; duration
#_1BA9CB: #_F9C7u: db $9B ; play note Ds3
#_1BA9CC: #_F9C8u: db $A5 ; play note Cs4
#_1BA9CD: #_F9C9u: db $0C ; duration
#_1BA9CE: #_F9CAu: db $9B ; play note Ds3
#_1BA9CF: #_F9CBu: db $24 ; duration
#_1BA9D0: #_F9CCu: db $8A ; play note As1
#_1BA9D1: #_F9CDu: db $48 ; duration
#_1BA9D2: #_F9CEu: db $A0 ; play note Gs3
#_1BA9D3: #_F9CFu: db $24 ; duration
#_1BA9D4: #_F9D0u: db $8A ; play note As1
#_1BA9D5: #_F9D1u: db $A5 ; play note Cs4
#_1BA9D6: #_F9D2u: db $0C ; duration
#_1BA9D7: #_F9D3u: db $99 ; play note Cs3
#_1BA9D8: #_F9D4u: db $24 ; duration
#_1BA9D9: #_F9D5u: db $88 ; play note Gs1
#_1BA9DA: #_F9D6u: db $3C ; duration
#_1BA9DB: #_F9D7u: db $9E ; play note Fs3
#_1BA9DC: #_F9D8u: db $24 ; duration
#_1BA9DD: #_F9D9u: db $88 ; play note Gs1
#_1BA9DE: #_F9DAu: db $9D ; play note F3
#_1BA9DF: #_F9DBu: db $18 ; duration
#_1BA9E0: #_F9DCu: db $99 ; play note Cs3
#_1BA9E1: #_F9DDu: db $24 ; duration
#_1BA9E2: #_F9DEu: db $86 ; play note Fs1
#_1BA9E3: #_F9DFu: db $3C ; duration
#_1BA9E4: #_F9E0u: db $9D ; play note F3
#_1BA9E5: #_F9E1u: db $24 ; duration
#_1BA9E6: #_F9E2u: db $86 ; play note Fs1
#_1BA9E7: #_F9E3u: db $9B ; play note Ds3
#_1BA9E8: #_F9E4u: db $18 ; duration
#_1BA9E9: #_F9E5u: db $A5 ; play note Cs4

;---------------------------------------------------------------------------------------------------

Song1B_Segment1_Track5:
#_1BA9EA: #_F9E6u: db $E0, $0F ; set instrument - harp
#_1BA9EC: #_F9E8u: db $ED, $C8 ; set channel volume
#_1BA9EE: #_F9EAu: db $E1, $0E ; set panning - leaning left
#_1BA9F0: #_F9ECu: db $0C ; duration
#_1BA9F1: #_F9EDu: db $C9 ; rest
#_1BA9F2: #_F9EEu: db $60, $7D ; duration, params
#_1BA9F4: #_F9F0u: db $97 ; play note B2
#_1BA9F5: #_F9F1u: db $0C ; duration
#_1BA9F6: #_F9F2u: db $C8 ; sustain current note
#_1BA9F7: #_F9F3u: db $24 ; duration
#_1BA9F8: #_F9F4u: db $A2 ; play note As3
#_1BA9F9: #_F9F5u: db $A2 ; play note As3
#_1BA9FA: #_F9F6u: db $0C ; duration
#_1BA9FB: #_F9F7u: db $C8 ; sustain current note
#_1BA9FC: #_F9F8u: db $60 ; duration
#_1BA9FD: #_F9F9u: db $96 ; play note As2
#_1BA9FE: #_F9FAu: db $0C ; duration
#_1BA9FF: #_F9FBu: db $C8 ; sustain current note
#_1BAA00: #_F9FCu: db $24 ; duration
#_1BAA01: #_F9FDu: db $A0 ; play note Gs3
#_1BAA02: #_F9FEu: db $A0 ; play note Gs3
#_1BAA03: #_F9FFu: db $0C ; duration
#_1BAA04: #_FA00u: db $C8 ; sustain current note
#_1BAA05: #_FA01u: db $54 ; duration
#_1BAA06: #_FA02u: db $94 ; play note Gs2
#_1BAA07: #_FA03u: db $0C ; duration
#_1BAA08: #_FA04u: db $C8 ; sustain current note
#_1BAA09: #_FA05u: db $24 ; duration
#_1BAA0A: #_FA06u: db $94 ; play note Gs2
#_1BAA0B: #_FA07u: db $A0 ; play note Gs3
#_1BAA0C: #_FA08u: db $0C ; duration
#_1BAA0D: #_FA09u: db $97 ; play note B2
#_1BAA0E: #_FA0Au: db $C8 ; sustain current note
#_1BAA0F: #_FA0Bu: db $54 ; duration
#_1BAA10: #_FA0Cu: db $92 ; play note Fs2
#_1BAA11: #_FA0Du: db $0C ; duration
#_1BAA12: #_FA0Eu: db $C8 ; sustain current note
#_1BAA13: #_FA0Fu: db $24 ; duration
#_1BAA14: #_FA10u: db $92 ; play note Fs2
#_1BAA15: #_FA11u: db $A0 ; play note Gs3
#_1BAA16: #_FA12u: db $0C ; duration
#_1BAA17: #_FA13u: db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song1B_Segment1_Track6:
#_1BAA18: #_FA14u: db $E0, $0F ; set instrument - harp
#_1BAA1A: #_FA16u: db $ED, $C8 ; set channel volume
#_1BAA1C: #_FA18u: db $E1, $12 ; set panning - leaning left
#_1BAA1E: #_FA1Au: db $18 ; duration
#_1BAA1F: #_FA1Bu: db $C9 ; rest
#_1BAA20: #_FA1Cu: db $54, $7D ; duration, params
#_1BAA22: #_FA1Eu: db $9B ; play note Ds3
#_1BAA23: #_FA1Fu: db $18 ; duration
#_1BAA24: #_FA20u: db $C8 ; sustain current note
#_1BAA25: #_FA21u: db $24 ; duration
#_1BAA26: #_FA22u: db $A0 ; play note Gs3
#_1BAA27: #_FA23u: db $18 ; duration
#_1BAA28: #_FA24u: db $A0 ; play note Gs3
#_1BAA29: #_FA25u: db $C8 ; sustain current note
#_1BAA2A: #_FA26u: db $54 ; duration
#_1BAA2B: #_FA27u: db $99 ; play note Cs3
#_1BAA2C: #_FA28u: db $18 ; duration
#_1BAA2D: #_FA29u: db $C8 ; sustain current note
#_1BAA2E: #_FA2Au: db $24 ; duration
#_1BAA2F: #_FA2Bu: db $9E ; play note Fs3
#_1BAA30: #_FA2Cu: db $18 ; duration
#_1BAA31: #_FA2Du: db $9E ; play note Fs3
#_1BAA32: #_FA2Eu: db $C8 ; sustain current note
#_1BAA33: #_FA2Fu: db $48 ; duration
#_1BAA34: #_FA30u: db $97 ; play note B2
#_1BAA35: #_FA31u: db $18 ; duration
#_1BAA36: #_FA32u: db $C8 ; sustain current note
#_1BAA37: #_FA33u: db $24 ; duration
#_1BAA38: #_FA34u: db $9E ; play note Fs3
#_1BAA39: #_FA35u: db $9D ; play note F3
#_1BAA3A: #_FA36u: db $18 ; duration
#_1BAA3B: #_FA37u: db $C8 ; sustain current note
#_1BAA3C: #_FA38u: db $48 ; duration
#_1BAA3D: #_FA39u: db $96 ; play note As2
#_1BAA3E: #_FA3Au: db $18 ; duration
#_1BAA3F: #_FA3Bu: db $C8 ; sustain current note
#_1BAA40: #_FA3Cu: db $24 ; duration
#_1BAA41: #_FA3Du: db $9D ; play note F3
#_1BAA42: #_FA3Eu: db $9E ; play note Fs3

;---------------------------------------------------------------------------------------------------

Song1B_Segment0_Track0:
#_1BAA43: #_FA3Fu: db $FA, $19 ; set base percussion sample
#_1BAA45: #_FA41u: db $E5, $B4 ; set song volume
#_1BAA47: #_FA43u: db $F5, $FF, $28, $28 ; configure EON, EVOLL, EVOLR
#_1BAA4B: #_FA47u: db $F7, $02, $50, $02 ; configure EDL, EFB, FIR
#_1BAA4F: #_FA4Bu: db $E7, $33 ; set song tempo
#_1BAA51: #_FA4Du: db $E8, $FA, $4E ; initiate gradual tempo change
#_1BAA54: #_FA50u: db $E0, $0F ; set instrument - harp
#_1BAA56: #_FA52u: db $ED, $C8 ; set channel volume
#_1BAA58: #_FA54u: db $E1, $02 ; set panning - leaning right
#_1BAA5A: #_FA56u: db $10 ; duration
#_1BAA5B: #_FA57u: db $C9 ; rest
#_1BAA5C: #_FA58u: db $30, $7D ; duration, params
#_1BAA5E: #_FA5Au: db $9B ; play note Ds3
#_1BAA5F: #_FA5Bu: db $9D ; play note F3
#_1BAA60: #_FA5Cu: db $A0 ; play note Gs3
#_1BAA61: #_FA5Du: db $A3 ; play note B3
#_1BAA62: #_FA5Eu: db $A7 ; play note Ds4
#_1BAA63: #_FA5Fu: db $A9 ; play note F4
#_1BAA64: #_FA60u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1B_Segment0_Track1:
#_1BAA65: #_FA61u: db $E0, $0F ; set instrument - harp
#_1BAA67: #_FA63u: db $ED, $B4 ; set channel volume
#_1BAA69: #_FA65u: db $E1, $12 ; set panning - leaning left
#_1BAA6B: #_FA67u: db $30, $7D ; duration, params
#_1BAA6D: #_FA69u: db $8D ; play note Cs2
#_1BAA6E: #_FA6Au: db $91 ; play note F2
#_1BAA6F: #_FA6Bu: db $94 ; play note Gs2
#_1BAA70: #_FA6Cu: db $97 ; play note B2
#_1BAA71: #_FA6Du: db $9B ; play note Ds3
#_1BAA72: #_FA6Eu: db $40 ; duration
#_1BAA73: #_FA6Fu: db $9D ; play note F3

;---------------------------------------------------------------------------------------------------

Song1B_Segment0_Track2:
#_1BAA74: #_FA70u: db $E0, $0F ; set instrument - harp
#_1BAA76: #_FA72u: db $ED, $B4 ; set channel volume
#_1BAA78: #_FA74u: db $E1, $0E ; set panning - leaning left
#_1BAA7A: #_FA76u: db $04 ; duration
#_1BAA7B: #_FA77u: db $C9 ; rest
#_1BAA7C: #_FA78u: db $30, $7D ; duration, params
#_1BAA7E: #_FA7Au: db $91 ; play note F2
#_1BAA7F: #_FA7Bu: db $94 ; play note Gs2
#_1BAA80: #_FA7Cu: db $97 ; play note B2
#_1BAA81: #_FA7Du: db $9B ; play note Ds3
#_1BAA82: #_FA7Eu: db $9D ; play note F3
#_1BAA83: #_FA7Fu: db $3C ; duration
#_1BAA84: #_FA80u: db $A0 ; play note Gs3

;---------------------------------------------------------------------------------------------------

Song1B_Segment0_Track3:
#_1BAA85: #_FA81u: db $E0, $0F ; set instrument - harp
#_1BAA87: #_FA83u: db $ED, $B4 ; set channel volume
#_1BAA89: #_FA85u: db $E1, $0A ; set panning - balanced
#_1BAA8B: #_FA87u: db $08 ; duration
#_1BAA8C: #_FA88u: db $C9 ; rest
#_1BAA8D: #_FA89u: db $30, $7D ; duration, params
#_1BAA8F: #_FA8Bu: db $94 ; play note Gs2
#_1BAA90: #_FA8Cu: db $97 ; play note B2
#_1BAA91: #_FA8Du: db $9B ; play note Ds3
#_1BAA92: #_FA8Eu: db $9D ; play note F3
#_1BAA93: #_FA8Fu: db $A0 ; play note Gs3
#_1BAA94: #_FA90u: db $38 ; duration
#_1BAA95: #_FA91u: db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song1B_Segment0_Track4:
#_1BAA96: #_FA92u: db $E0, $0F ; set instrument - harp
#_1BAA98: #_FA94u: db $ED, $B4 ; set channel volume
#_1BAA9A: #_FA96u: db $E1, $06 ; set panning - leaning right
#_1BAA9C: #_FA98u: db $0C ; duration
#_1BAA9D: #_FA99u: db $C9 ; rest
#_1BAA9E: #_FA9Au: db $30, $7D ; duration, params
#_1BAAA0: #_FA9Cu: db $97 ; play note B2
#_1BAAA1: #_FA9Du: db $9B ; play note Ds3
#_1BAAA2: #_FA9Eu: db $9D ; play note F3
#_1BAAA3: #_FA9Fu: db $A0 ; play note Gs3
#_1BAAA4: #_FAA0u: db $A3 ; play note B3
#_1BAAA5: #_FAA1u: db $34 ; duration
#_1BAAA6: #_FAA2u: db $A7 ; play note Ds4

;---------------------------------------------------------------------------------------------------

Song1B_Segment2_Track0:
#_1BAAA7: #_FAA3u: db $30, $7D ; duration, params
#_1BAAA9: #_FAA5u: db $BA ; play note As5
#_1BAAAA: #_FAA6u: db $B8 ; play note Gs5
#_1BAAAB: #_FAA7u: db $B7 ; play note G5
#_1BAAAC: #_FAA8u: db $B8 ; play note Gs5
#_1BAAAD: #_FAA9u: db $BB ; play note B5
#_1BAAAE: #_FAAAu: db $BA ; play note As5
#_1BAAAF: #_FAABu: db $B9 ; play note A5
#_1BAAB0: #_FAACu: db $BA ; play note As5
#_1BAAB1: #_FAADu: db $BD ; play note Cs6
#_1BAAB2: #_FAAEu: db $BB ; play note B5
#_1BAAB3: #_FAAFu: db $BA ; play note As5
#_1BAAB4: #_FAB0u: db $BB ; play note B5
#_1BAAB5: #_FAB1u: db $BA ; play note As5
#_1BAAB6: #_FAB2u: db $B8 ; play note Gs5
#_1BAAB7: #_FAB3u: db $B6 ; play note Fs5
#_1BAAB8: #_FAB4u: db $B5 ; play note F5
#_1BAAB9: #_FAB5u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1B_Segment2_Track1:
#_1BAABA: #_FAB6u: db $0C ; duration
#_1BAABB: #_FAB7u: db $C9 ; rest
#_1BAABC: #_FAB8u: db $30, $7D ; duration, params
#_1BAABE: #_FABAu: db $B3 ; play note Ds5
#_1BAABF: #_FABBu: db $B3 ; play note Ds5
#_1BAAC0: #_FABCu: db $B3 ; play note Ds5
#_1BAAC1: #_FABDu: db $B3 ; play note Ds5
#_1BAAC2: #_FABEu: db $B4 ; play note E5
#_1BAAC3: #_FABFu: db $B4 ; play note E5
#_1BAAC4: #_FAC0u: db $B4 ; play note E5
#_1BAAC5: #_FAC1u: db $B4 ; play note E5
#_1BAAC6: #_FAC2u: db $B3 ; play note Ds5
#_1BAAC7: #_FAC3u: db $B3 ; play note Ds5
#_1BAAC8: #_FAC4u: db $B3 ; play note Ds5
#_1BAAC9: #_FAC5u: db $B3 ; play note Ds5
#_1BAACA: #_FAC6u: db $AF ; play note B4
#_1BAACB: #_FAC7u: db $AF ; play note B4
#_1BAACC: #_FAC8u: db $AF ; play note B4
#_1BAACD: #_FAC9u: db $24 ; duration
#_1BAACE: #_FACAu: db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song1B_Segment2_Track2:
#_1BAACF: #_FACBu: db $18 ; duration
#_1BAAD0: #_FACCu: db $C9 ; rest
#_1BAAD1: #_FACDu: db $30, $7D ; duration, params
#_1BAAD3: #_FACFu: db $AF ; play note B4
#_1BAAD4: #_FAD0u: db $AF ; play note B4
#_1BAAD5: #_FAD1u: db $AF ; play note B4
#_1BAAD6: #_FAD2u: db $AF ; play note B4
#_1BAAD7: #_FAD3u: db $B1 ; play note Cs5
#_1BAAD8: #_FAD4u: db $B1 ; play note Cs5
#_1BAAD9: #_FAD5u: db $B1 ; play note Cs5
#_1BAADA: #_FAD6u: db $B1 ; play note Cs5
#_1BAADB: #_FAD7u: db $AF ; play note B4
#_1BAADC: #_FAD8u: db $AF ; play note B4
#_1BAADD: #_FAD9u: db $AF ; play note B4
#_1BAADE: #_FADAu: db $AF ; play note B4
#_1BAADF: #_FADBu: db $AC ; play note Gs4
#_1BAAE0: #_FADCu: db $AC ; play note Gs4
#_1BAAE1: #_FADDu: db $AC ; play note Gs4
#_1BAAE2: #_FADEu: db $18 ; duration
#_1BAAE3: #_FADFu: db $AC ; play note Gs4

;---------------------------------------------------------------------------------------------------

Song1B_Segment2_Track3:
#_1BAAE4: #_FAE0u: db $24 ; duration
#_1BAAE5: #_FAE1u: db $C9 ; rest
#_1BAAE6: #_FAE2u: db $30, $7D ; duration, params
#_1BAAE8: #_FAE4u: db $AC ; play note Gs4
#_1BAAE9: #_FAE5u: db $AC ; play note Gs4
#_1BAAEA: #_FAE6u: db $AC ; play note Gs4
#_1BAAEB: #_FAE7u: db $AC ; play note Gs4
#_1BAAEC: #_FAE8u: db $AB ; play note G4
#_1BAAED: #_FAE9u: db $AB ; play note G4
#_1BAAEE: #_FAEAu: db $AB ; play note G4
#_1BAAEF: #_FAEBu: db $AB ; play note G4
#_1BAAF0: #_FAECu: db $AC ; play note Gs4
#_1BAAF1: #_FAEDu: db $AC ; play note Gs4
#_1BAAF2: #_FAEEu: db $AC ; play note Gs4
#_1BAAF3: #_FAEFu: db $AC ; play note Gs4
#_1BAAF4: #_FAF0u: db $A9 ; play note F4
#_1BAAF5: #_FAF1u: db $A9 ; play note F4
#_1BAAF6: #_FAF2u: db $A9 ; play note F4
#_1BAAF7: #_FAF3u: db $0C ; duration
#_1BAAF8: #_FAF4u: db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song1B_Segment2_Track4:
#_1BAAF9: #_FAF5u: db $24, $7D ; duration, params
#_1BAAFB: #_FAF7u: db $8B ; play note B1
#_1BAAFC: #_FAF8u: db $3C ; duration
#_1BAAFD: #_FAF9u: db $A2 ; play note As3
#_1BAAFE: #_FAFAu: db $24 ; duration
#_1BAAFF: #_FAFBu: db $8B ; play note B1
#_1BAB00: #_FAFCu: db $A0 ; play note Gs3
#_1BAB01: #_FAFDu: db $18 ; duration
#_1BAB02: #_FAFEu: db $A0 ; play note Gs3
#_1BAB03: #_FAFFu: db $24 ; duration
#_1BAB04: #_FB00u: db $8A ; play note As1
#_1BAB05: #_FB01u: db $3C ; duration
#_1BAB06: #_FB02u: db $A5 ; play note Cs4
#_1BAB07: #_FB03u: db $24 ; duration
#_1BAB08: #_FB04u: db $8F ; play note Ds2
#_1BAB09: #_FB05u: db $A2 ; play note As3
#_1BAB0A: #_FB06u: db $18 ; duration
#_1BAB0B: #_FB07u: db $A5 ; play note Cs4
#_1BAB0C: #_FB08u: db $24 ; duration
#_1BAB0D: #_FB09u: db $88 ; play note Gs1
#_1BAB0E: #_FB0Au: db $3C ; duration
#_1BAB0F: #_FB0Bu: db $A3 ; play note B3
#_1BAB10: #_FB0Cu: db $24 ; duration
#_1BAB11: #_FB0Du: db $88 ; play note Gs1
#_1BAB12: #_FB0Eu: db $A2 ; play note As3
#_1BAB13: #_FB0Fu: db $18 ; duration
#_1BAB14: #_FB10u: db $A0 ; play note Gs3
#_1BAB15: #_FB11u: db $24 ; duration
#_1BAB16: #_FB12u: db $8D ; play note Cs2
#_1BAB17: #_FB13u: db $3C ; duration
#_1BAB18: #_FB14u: db $A3 ; play note B3
#_1BAB19: #_FB15u: db $24 ; duration
#_1BAB1A: #_FB16u: db $8D ; play note Cs2
#_1BAB1B: #_FB17u: db $A0 ; play note Gs3
#_1BAB1C: #_FB18u: db $18 ; duration
#_1BAB1D: #_FB19u: db $AC ; play note Gs4

;---------------------------------------------------------------------------------------------------

Song1B_Segment2_Track5:
#_1BAB1E: #_FB1Au: db $0C ; duration
#_1BAB1F: #_FB1Bu: db $C9 ; rest
#_1BAB20: #_FB1Cu: db $54, $7D ; duration, params
#_1BAB22: #_FB1Eu: db $97 ; play note B2
#_1BAB23: #_FB1Fu: db $0C ; duration
#_1BAB24: #_FB20u: db $C8 ; sustain current note
#_1BAB25: #_FB21u: db $24 ; duration
#_1BAB26: #_FB22u: db $97 ; play note B2
#_1BAB27: #_FB23u: db $A7 ; play note Ds4
#_1BAB28: #_FB24u: db $0C ; duration
#_1BAB29: #_FB25u: db $9B ; play note Ds3
#_1BAB2A: #_FB26u: db $C8 ; sustain current note
#_1BAB2B: #_FB27u: db $54 ; duration
#_1BAB2C: #_FB28u: db $96 ; play note As2
#_1BAB2D: #_FB29u: db $0C ; duration
#_1BAB2E: #_FB2Au: db $C8 ; sustain current note
#_1BAB2F: #_FB2Bu: db $24 ; duration
#_1BAB30: #_FB2Cu: db $9B ; play note Ds3
#_1BAB31: #_FB2Du: db $A8 ; play note E4
#_1BAB32: #_FB2Eu: db $0C ; duration
#_1BAB33: #_FB2Fu: db $A2 ; play note As3
#_1BAB34: #_FB30u: db $C8 ; sustain current note
#_1BAB35: #_FB31u: db $54 ; duration
#_1BAB36: #_FB32u: db $94 ; play note Gs2
#_1BAB37: #_FB33u: db $0C ; duration
#_1BAB38: #_FB34u: db $C8 ; sustain current note
#_1BAB39: #_FB35u: db $24 ; duration
#_1BAB3A: #_FB36u: db $94 ; play note Gs2
#_1BAB3B: #_FB37u: db $A5 ; play note Cs4
#_1BAB3C: #_FB38u: db $0C ; duration
#_1BAB3D: #_FB39u: db $9B ; play note Ds3
#_1BAB3E: #_FB3Au: db $C8 ; sustain current note
#_1BAB3F: #_FB3Bu: db $54 ; duration
#_1BAB40: #_FB3Cu: db $99 ; play note Cs3
#_1BAB41: #_FB3Du: db $0C ; duration
#_1BAB42: #_FB3Eu: db $C8 ; sustain current note
#_1BAB43: #_FB3Fu: db $24 ; duration
#_1BAB44: #_FB40u: db $99 ; play note Cs3
#_1BAB45: #_FB41u: db $A9 ; play note F4
#_1BAB46: #_FB42u: db $0C ; duration
#_1BAB47: #_FB43u: db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song1B_Segment2_Track6:
#_1BAB48: #_FB44u: db $18 ; duration
#_1BAB49: #_FB45u: db $C9 ; rest
#_1BAB4A: #_FB46u: db $48, $7D ; duration, params
#_1BAB4C: #_FB48u: db $9B ; play note Ds3
#_1BAB4D: #_FB49u: db $18 ; duration
#_1BAB4E: #_FB4Au: db $C8 ; sustain current note
#_1BAB4F: #_FB4Bu: db $24 ; duration
#_1BAB50: #_FB4Cu: db $A2 ; play note As3
#_1BAB51: #_FB4Du: db $A2 ; play note As3
#_1BAB52: #_FB4Eu: db $18 ; duration
#_1BAB53: #_FB4Fu: db $C8 ; sustain current note
#_1BAB54: #_FB50u: db $48 ; duration
#_1BAB55: #_FB51u: db $99 ; play note Cs3
#_1BAB56: #_FB52u: db $18 ; duration
#_1BAB57: #_FB53u: db $C8 ; sustain current note
#_1BAB58: #_FB54u: db $24 ; duration
#_1BAB59: #_FB55u: db $A5 ; play note Cs4
#_1BAB5A: #_FB56u: db $A7 ; play note Ds4
#_1BAB5B: #_FB57u: db $18 ; duration
#_1BAB5C: #_FB58u: db $C8 ; sustain current note
#_1BAB5D: #_FB59u: db $48 ; duration
#_1BAB5E: #_FB5Au: db $9B ; play note Ds3
#_1BAB5F: #_FB5Bu: db $18 ; duration
#_1BAB60: #_FB5Cu: db $C8 ; sustain current note
#_1BAB61: #_FB5Du: db $24 ; duration
#_1BAB62: #_FB5Eu: db $A3 ; play note B3
#_1BAB63: #_FB5Fu: db $A3 ; play note B3
#_1BAB64: #_FB60u: db $18 ; duration
#_1BAB65: #_FB61u: db $C8 ; sustain current note
#_1BAB66: #_FB62u: db $48 ; duration
#_1BAB67: #_FB63u: db $A0 ; play note Gs3
#_1BAB68: #_FB64u: db $18 ; duration
#_1BAB69: #_FB65u: db $C8 ; sustain current note
#_1BAB6A: #_FB66u: db $24 ; duration
#_1BAB6B: #_FB67u: db $A3 ; play note B3
#_1BAB6C: #_FB68u: db $A7 ; play note Ds4
#_1BAB6D: #_FB69u: db $00 ; End

;===================================================================================================

Song1C_Suspense:
#_1BAB6E: #_FB6Au: dw Song1C_Segment0

Song1C_Loop:
#_1BAB70: #_FB6Cu: dw Song1C_Segment1
#_1BAB72: #_FB6Eu: dw Song1C_Segment1
#_1BAB74: #_FB70u: dw Song1C_Segment2
#_1BAB76: #_FB72u: dw $00FF, Song1C_Loop ; Loop point
#_1BAB7A: #_FB76u: dw $0000

Song1C_Segment1:
#_1BAB7C: #_FB78u: dw Song1C_Segment1_Track0
#_1BAB7E: #_FB7Au: dw Song1C_Segment1_Track1
#_1BAB80: #_FB7Cu: dw Song1C_Segment1_Track2
#_1BAB82: #_FB7Eu: dw Song1C_Segment1_Track3
#_1BAB84: #_FB80u: dw Song1C_Segment1_Track4
#_1BAB86: #_FB82u: dw $0000
#_1BAB88: #_FB84u: dw $0000
#_1BAB8A: #_FB86u: dw $0000

Song1C_Segment2:
#_1BAB8C: #_FB88u: dw Song1C_Segment2_Track0
#_1BAB8E: #_FB8Au: dw Song1C_Segment2_Track1
#_1BAB90: #_FB8Cu: dw Song1C_Segment2_Track2
#_1BAB92: #_FB8Eu: dw Song1C_Segment2_Track3
#_1BAB94: #_FB90u: dw Song1C_Segment2_Track4
#_1BAB96: #_FB92u: dw $0000
#_1BAB98: #_FB94u: dw $0000
#_1BAB9A: #_FB96u: dw $0000

Song1C_Segment0:
#_1BAB9C: #_FB98u: dw Song1C_Segment0_Track0
#_1BAB9E: #_FB9Au: dw $0000
#_1BABA0: #_FB9Cu: dw $0000
#_1BABA2: #_FB9Eu: dw $0000
#_1BABA4: #_FBA0u: dw $0000
#_1BABA6: #_FBA2u: dw $0000
#_1BABA8: #_FBA4u: dw $0000
#_1BABAA: #_FBA6u: dw $0000

;---------------------------------------------------------------------------------------------------

Song1C_Segment1_Track0:
#_1BABAC: #_FBA8u: db $E0, $09 ; set instrument - strings A
#_1BABAE: #_FBAAu: db $ED, $C8 ; set channel volume
#_1BABB0: #_FBACu: db $E3, $1A, $1C, $18 ; enable vibrato
#_1BABB4: #_FBB0u: db $E1, $0C ; set panning - leaning left
#_1BABB6: #_FBB2u: db $58, $7D ; duration, params
#_1BABB8: #_FBB4u: db $A2 ; play note As3
#_1BABB9: #_FBB5u: db $08 ; duration
#_1BABBA: #_FBB6u: db $A1 ; play note A3
#_1BABBB: #_FBB7u: db $58 ; duration
#_1BABBC: #_FBB8u: db $A3 ; play note B3
#_1BABBD: #_FBB9u: db $08 ; duration
#_1BABBE: #_FBBAu: db $A2 ; play note As3
#_1BABBF: #_FBBBu: db $58 ; duration
#_1BABC0: #_FBBCu: db $A6 ; play note D4
#_1BABC1: #_FBBDu: db $08 ; duration
#_1BABC2: #_FBBEu: db $A5 ; play note Cs4
#_1BABC3: #_FBBFu: db $60 ; duration
#_1BABC4: #_FBC0u: db $A8 ; play note E4
#_1BABC5: #_FBC1u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1C_Segment1_Track1:
#_1BABC6: #_FBC2u: db $E0, $09 ; set instrument - strings A
#_1BABC8: #_FBC4u: db $ED, $C8 ; set channel volume
#_1BABCA: #_FBC6u: db $E3, $1A, $1C, $18 ; enable vibrato
#_1BABCE: #_FBCAu: db $E1, $08 ; set panning - leaning right
#_1BABD0: #_FBCCu: db $58, $7D ; duration, params
#_1BABD2: #_FBCEu: db $9D ; play note F3
#_1BABD3: #_FBCFu: db $08 ; duration
#_1BABD4: #_FBD0u: db $9C ; play note E3
#_1BABD5: #_FBD1u: db $58 ; duration
#_1BABD6: #_FBD2u: db $9E ; play note Fs3
#_1BABD7: #_FBD3u: db $08 ; duration
#_1BABD8: #_FBD4u: db $9D ; play note F3
#_1BABD9: #_FBD5u: db $58 ; duration
#_1BABDA: #_FBD6u: db $A1 ; play note A3
#_1BABDB: #_FBD7u: db $08 ; duration
#_1BABDC: #_FBD8u: db $A0 ; play note Gs3
#_1BABDD: #_FBD9u: db $60 ; duration
#_1BABDE: #_FBDAu: db $A3 ; play note B3

;---------------------------------------------------------------------------------------------------

Song1C_Segment1_Track2:
#_1BABDF: #_FBDBu: db $E0, $09 ; set instrument - strings A
#_1BABE1: #_FBDDu: db $ED, $C8 ; set channel volume
#_1BABE3: #_FBDFu: db $E3, $1A, $1C, $18 ; enable vibrato
#_1BABE7: #_FBE3u: db $E1, $04 ; set panning - leaning right
#_1BABE9: #_FBE5u: db $30, $7D ; duration, params
#_1BABEB: #_FBE7u: db $8C ; play note C2
#_1BABEC: #_FBE8u: db $93 ; play note G2
#_1BABED: #_FBE9u: db $8C ; play note C2
#_1BABEE: #_FBEAu: db $93 ; play note G2
#_1BABEF: #_FBEBu: db $8C ; play note C2
#_1BABF0: #_FBECu: db $93 ; play note G2
#_1BABF1: #_FBEDu: db $8C ; play note C2
#_1BABF2: #_FBEEu: db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song1C_Segment1_Track3:
#_1BABF3: #_FBEFu: db $E0, $09 ; set instrument - strings A
#_1BABF5: #_FBF1u: db $ED, $A0 ; set channel volume
#_1BABF7: #_FBF3u: db $E3, $1A, $1C, $18 ; enable vibrato
#_1BABFB: #_FBF7u: db $E1, $02 ; set panning - leaning right
#_1BABFD: #_FBF9u: db $08 ; duration
#_1BABFE: #_FBFAu: db $C9 ; rest
#_1BABFF: #_FBFBu: db $30, $7D ; duration, params
#_1BAC01: #_FBFDu: db $8C ; play note C2
#_1BAC02: #_FBFEu: db $93 ; play note G2
#_1BAC03: #_FBFFu: db $8C ; play note C2
#_1BAC04: #_FC00u: db $93 ; play note G2
#_1BAC05: #_FC01u: db $8C ; play note C2
#_1BAC06: #_FC02u: db $93 ; play note G2
#_1BAC07: #_FC03u: db $8C ; play note C2
#_1BAC08: #_FC04u: db $28 ; duration
#_1BAC09: #_FC05u: db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song1C_Segment1_Track4:
#_1BAC0A: #_FC06u: db $E0, $09 ; set instrument - strings A
#_1BAC0C: #_FC08u: db $ED, $A0 ; set channel volume
#_1BAC0E: #_FC0Au: db $E3, $1A, $1C, $18 ; enable vibrato
#_1BAC12: #_FC0Eu: db $E1, $0A ; set panning - balanced
#_1BAC14: #_FC10u: db $08 ; duration
#_1BAC15: #_FC11u: db $C9 ; rest
#_1BAC16: #_FC12u: db $58, $7D ; duration, params
#_1BAC18: #_FC14u: db $A2 ; play note As3
#_1BAC19: #_FC15u: db $08 ; duration
#_1BAC1A: #_FC16u: db $A1 ; play note A3
#_1BAC1B: #_FC17u: db $58 ; duration
#_1BAC1C: #_FC18u: db $A3 ; play note B3
#_1BAC1D: #_FC19u: db $08 ; duration
#_1BAC1E: #_FC1Au: db $A2 ; play note As3
#_1BAC1F: #_FC1Bu: db $58 ; duration
#_1BAC20: #_FC1Cu: db $A6 ; play note D4
#_1BAC21: #_FC1Du: db $08 ; duration
#_1BAC22: #_FC1Eu: db $A5 ; play note Cs4
#_1BAC23: #_FC1Fu: db $58 ; duration
#_1BAC24: #_FC20u: db $A8 ; play note E4

;---------------------------------------------------------------------------------------------------

Song1C_Segment2_Track0:
#_1BAC25: #_FC21u: db $E0, $09 ; set instrument - strings A
#_1BAC27: #_FC23u: db $ED, $C8 ; set channel volume
#_1BAC29: #_FC25u: db $E3, $1A, $1C, $18 ; enable vibrato
#_1BAC2D: #_FC29u: db $E1, $0C ; set panning - leaning left
#_1BAC2F: #_FC2Bu: db $60, $7D ; duration, params
#_1BAC31: #_FC2Du: db $A7 ; play note Ds4
#_1BAC32: #_FC2Eu: db $58 ; duration
#_1BAC33: #_FC2Fu: db $A6 ; play note D4
#_1BAC34: #_FC30u: db $50 ; duration
#_1BAC35: #_FC31u: db $A9 ; play note F4
#_1BAC36: #_FC32u: db $48 ; duration
#_1BAC37: #_FC33u: db $A8 ; play note E4
#_1BAC38: #_FC34u: db $40 ; duration
#_1BAC39: #_FC35u: db $AB ; play note G4
#_1BAC3A: #_FC36u: db $38 ; duration
#_1BAC3B: #_FC37u: db $AA ; play note Fs4
#_1BAC3C: #_FC38u: db $34 ; duration
#_1BAC3D: #_FC39u: db $AD ; play note A4
#_1BAC3E: #_FC3Au: db $30 ; duration
#_1BAC3F: #_FC3Bu: db $AC ; play note Gs4
#_1BAC40: #_FC3Cu: db $60 ; duration
#_1BAC41: #_FC3Du: db $AF ; play note B4
#_1BAC42: #_FC3Eu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1C_Segment2_Track1:
#_1BAC43: #_FC3Fu: db $E0, $09 ; set instrument - strings A
#_1BAC45: #_FC41u: db $ED, $C8 ; set channel volume
#_1BAC47: #_FC43u: db $E3, $1A, $1C, $18 ; enable vibrato
#_1BAC4B: #_FC47u: db $E1, $08 ; set panning - leaning right
#_1BAC4D: #_FC49u: db $60, $7D ; duration, params
#_1BAC4F: #_FC4Bu: db $A2 ; play note As3
#_1BAC50: #_FC4Cu: db $58 ; duration
#_1BAC51: #_FC4Du: db $A1 ; play note A3
#_1BAC52: #_FC4Eu: db $50 ; duration
#_1BAC53: #_FC4Fu: db $A4 ; play note C4
#_1BAC54: #_FC50u: db $48 ; duration
#_1BAC55: #_FC51u: db $A3 ; play note B3
#_1BAC56: #_FC52u: db $40 ; duration
#_1BAC57: #_FC53u: db $A6 ; play note D4
#_1BAC58: #_FC54u: db $38 ; duration
#_1BAC59: #_FC55u: db $A5 ; play note Cs4
#_1BAC5A: #_FC56u: db $34 ; duration
#_1BAC5B: #_FC57u: db $A8 ; play note E4
#_1BAC5C: #_FC58u: db $30 ; duration
#_1BAC5D: #_FC59u: db $A7 ; play note Ds4
#_1BAC5E: #_FC5Au: db $60 ; duration
#_1BAC5F: #_FC5Bu: db $AA ; play note Fs4

;---------------------------------------------------------------------------------------------------

Song1C_Segment2_Track2:
#_1BAC60: #_FC5Cu: db $E0, $09 ; set instrument - strings A
#_1BAC62: #_FC5Eu: db $ED, $C8 ; set channel volume
#_1BAC64: #_FC60u: db $E3, $1A, $1C, $18 ; enable vibrato
#_1BAC68: #_FC64u: db $E1, $04 ; set panning - leaning right
#_1BAC6A: #_FC66u: db $60, $7D ; duration, params
#_1BAC6C: #_FC68u: db $92 ; play note Fs2
#_1BAC6D: #_FC69u: db $58 ; duration
#_1BAC6E: #_FC6Au: db $91 ; play note F2
#_1BAC6F: #_FC6Bu: db $50 ; duration
#_1BAC70: #_FC6Cu: db $94 ; play note Gs2
#_1BAC71: #_FC6Du: db $48 ; duration
#_1BAC72: #_FC6Eu: db $93 ; play note G2
#_1BAC73: #_FC6Fu: db $40 ; duration
#_1BAC74: #_FC70u: db $96 ; play note As2
#_1BAC75: #_FC71u: db $38 ; duration
#_1BAC76: #_FC72u: db $95 ; play note A2
#_1BAC77: #_FC73u: db $34 ; duration
#_1BAC78: #_FC74u: db $98 ; play note C3
#_1BAC79: #_FC75u: db $30 ; duration
#_1BAC7A: #_FC76u: db $97 ; play note B2
#_1BAC7B: #_FC77u: db $60 ; duration
#_1BAC7C: #_FC78u: db $9A ; play note D3

;---------------------------------------------------------------------------------------------------

Song1C_Segment2_Track3:
#_1BAC7D: #_FC79u: db $08 ; duration
#_1BAC7E: #_FC7Au: db $C9 ; rest
#_1BAC7F: #_FC7Bu: db $60, $7D ; duration, params
#_1BAC81: #_FC7Du: db $92 ; play note Fs2
#_1BAC82: #_FC7Eu: db $58 ; duration
#_1BAC83: #_FC7Fu: db $91 ; play note F2
#_1BAC84: #_FC80u: db $50 ; duration
#_1BAC85: #_FC81u: db $94 ; play note Gs2
#_1BAC86: #_FC82u: db $48 ; duration
#_1BAC87: #_FC83u: db $93 ; play note G2
#_1BAC88: #_FC84u: db $40 ; duration
#_1BAC89: #_FC85u: db $96 ; play note As2
#_1BAC8A: #_FC86u: db $38 ; duration
#_1BAC8B: #_FC87u: db $95 ; play note A2
#_1BAC8C: #_FC88u: db $34 ; duration
#_1BAC8D: #_FC89u: db $98 ; play note C3
#_1BAC8E: #_FC8Au: db $30 ; duration
#_1BAC8F: #_FC8Bu: db $97 ; play note B2
#_1BAC90: #_FC8Cu: db $58 ; duration
#_1BAC91: #_FC8Du: db $9A ; play note D3

;---------------------------------------------------------------------------------------------------

Song1C_Segment2_Track4:
#_1BAC92: #_FC8Eu: db $08 ; duration
#_1BAC93: #_FC8Fu: db $C9 ; rest
#_1BAC94: #_FC90u: db $60, $7D ; duration, params
#_1BAC96: #_FC92u: db $9B ; play note Ds3
#_1BAC97: #_FC93u: db $58 ; duration
#_1BAC98: #_FC94u: db $9A ; play note D3
#_1BAC99: #_FC95u: db $50 ; duration
#_1BAC9A: #_FC96u: db $A9 ; play note F4
#_1BAC9B: #_FC97u: db $48 ; duration
#_1BAC9C: #_FC98u: db $A8 ; play note E4
#_1BAC9D: #_FC99u: db $40 ; duration
#_1BAC9E: #_FC9Au: db $AB ; play note G4
#_1BAC9F: #_FC9Bu: db $38 ; duration
#_1BACA0: #_FC9Cu: db $AA ; play note Fs4
#_1BACA1: #_FC9Du: db $34 ; duration
#_1BACA2: #_FC9Eu: db $AD ; play note A4
#_1BACA3: #_FC9Fu: db $30 ; duration
#_1BACA4: #_FCA0u: db $AC ; play note Gs4
#_1BACA5: #_FCA1u: db $58 ; duration
#_1BACA6: #_FCA2u: db $AF ; play note B4

;---------------------------------------------------------------------------------------------------

Song1C_Segment0_Track0:
#_1BACA7: #_FCA3u: db $FA, $19 ; set base percussion sample
#_1BACA9: #_FCA5u: db $E5, $B4 ; set song volume
#_1BACAB: #_FCA7u: db $F5, $FF, $28, $28 ; configure EON, EVOLL, EVOLR
#_1BACAF: #_FCABu: db $F7, $02, $14, $02 ; configure EDL, EFB, FIR
#_1BACB3: #_FCAFu: db $E7, $19 ; set song tempo
#_1BACB5: #_FCB1u: db $E0, $09 ; set instrument - strings A
#_1BACB7: #_FCB3u: db $ED, $C8 ; set channel volume
#_1BACB9: #_FCB5u: db $E3, $1A, $1C, $18 ; enable vibrato
#_1BACBD: #_FCB9u: db $E1, $0C ; set panning - leaning left
#_1BACBF: #_FCBBu: db $18 ; duration
#_1BACC0: #_FCBCu: db $C9 ; rest
#_1BACC1: #_FCBDu: db $00 ; End
#_1BACC2: #_FCBEu: db $00

base off

;===================================================================================================

SongBank_Underworld_Auxiliary:
#_1BACC3: dw $050C, SONG_POINTERS_AUX ; Transfer size, transfer address

base SONG_POINTERS_AUX

;===================================================================================================

Song1D_AgahnimEscapes:
#_1BACC7: #_2B00u: dw Song1D_Segment0
#_1BACC9: #_2B02u: dw $0000 ; Song end

Song1D_Segment0:
#_1BACCB: #_2B04u: dw Song1D_Segment0_Track0
#_1BACCD: #_2B06u: dw Song1D_Segment0_Track1
#_1BACCF: #_2B08u: dw Song1D_Segment0_Track2
#_1BACD1: #_2B0Au: dw Song1D_Segment0_Track3
#_1BACD3: #_2B0Cu: dw Song1D_Segment0_Track4
#_1BACD5: #_2B0Eu: dw $0000
#_1BACD7: #_2B10u: dw $0000
#_1BACD9: #_2B12u: dw $0000

;---------------------------------------------------------------------------------------------------

Song1D_Segment0_Track0:
#_1BACDB: #_2B14u: db $FA, $19 ; set base percussion sample
#_1BACDD: #_2B16u: db $E5, $C8 ; set song volume
#_1BACDF: #_2B18u: db $F5, $FF, $28, $28 ; configure EON, EVOLL, EVOLR
#_1BACE3: #_2B1Cu: db $F7, $02, $14, $02 ; configure EDL, EFB, FIR
#_1BACE7: #_2B20u: db $E7, $19 ; set song tempo
#_1BACE9: #_2B22u: db $E0, $0B ; set instrument - trombone
#_1BACEB: #_2B24u: db $ED, $C8 ; set channel volume
#_1BACED: #_2B26u: db $E1, $12 ; set panning - leaning left
#_1BACEF: #_2B28u: db $06, $6D ; duration, params
#_1BACF1: #_2B2Au: db $A2 ; play note As3
#_1BACF2: #_2B2Bu: db $A3 ; play note B3
#_1BACF3: #_2B2Cu: db $A4 ; play note C4
#_1BACF4: #_2B2Du: db $A3 ; play note B3
#_1BACF5: #_2B2Eu: db $A4 ; play note C4
#_1BACF6: #_2B2Fu: db $A8 ; play note E4
#_1BACF7: #_2B30u: db $A9 ; play note F4
#_1BACF8: #_2B31u: db $A8 ; play note E4
#_1BACF9: #_2B32u: db $A9 ; play note F4
#_1BACFA: #_2B33u: db $AE ; play note As4
#_1BACFB: #_2B34u: db $AF ; play note B4
#_1BACFC: #_2B35u: db $B0 ; play note C5
#_1BACFD: #_2B36u: db $AF ; play note B4
#_1BACFE: #_2B37u: db $B4 ; play note E5
#_1BACFF: #_2B38u: db $B5 ; play note F5
#_1BAD00: #_2B39u: db $BA ; play note As5
#_1BAD01: #_2B3Au: db $BB ; play note B5
#_1BAD02: #_2B3Bu: db $5A ; duration
#_1BAD03: #_2B3Cu: db $C9 ; rest
#_1BAD04: #_2B3Du: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1D_Segment0_Track1:
#_1BAD05: #_2B3Eu: db $E0, $0B ; set instrument - trombone
#_1BAD07: #_2B40u: db $ED, $C8 ; set channel volume
#_1BAD09: #_2B42u: db $E1, $10 ; set panning - leaning left
#_1BAD0B: #_2B44u: db $12 ; duration
#_1BAD0C: #_2B45u: db $C9 ; rest
#_1BAD0D: #_2B46u: db $06, $6D ; duration, params
#_1BAD0F: #_2B48u: db $A2 ; play note As3
#_1BAD10: #_2B49u: db $A3 ; play note B3
#_1BAD11: #_2B4Au: db $A4 ; play note C4
#_1BAD12: #_2B4Bu: db $A3 ; play note B3
#_1BAD13: #_2B4Cu: db $A4 ; play note C4
#_1BAD14: #_2B4Du: db $A8 ; play note E4
#_1BAD15: #_2B4Eu: db $A9 ; play note F4
#_1BAD16: #_2B4Fu: db $A8 ; play note E4
#_1BAD17: #_2B50u: db $A9 ; play note F4
#_1BAD18: #_2B51u: db $AE ; play note As4
#_1BAD19: #_2B52u: db $AF ; play note B4
#_1BAD1A: #_2B53u: db $B0 ; play note C5
#_1BAD1B: #_2B54u: db $AF ; play note B4
#_1BAD1C: #_2B55u: db $B4 ; play note E5
#_1BAD1D: #_2B56u: db $B5 ; play note F5
#_1BAD1E: #_2B57u: db $BA ; play note As5
#_1BAD1F: #_2B58u: db $BB ; play note B5
#_1BAD20: #_2B59u: db $48 ; duration
#_1BAD21: #_2B5Au: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song1D_Segment0_Track2:
#_1BAD22: #_2B5Bu: db $E0, $0B ; set instrument - trombone
#_1BAD24: #_2B5Du: db $ED, $C8 ; set channel volume
#_1BAD26: #_2B5Fu: db $E1, $0C ; set panning - leaning left
#_1BAD28: #_2B61u: db $24 ; duration
#_1BAD29: #_2B62u: db $C9 ; rest
#_1BAD2A: #_2B63u: db $06, $6D ; duration, params
#_1BAD2C: #_2B65u: db $A2 ; play note As3
#_1BAD2D: #_2B66u: db $A3 ; play note B3
#_1BAD2E: #_2B67u: db $A4 ; play note C4
#_1BAD2F: #_2B68u: db $A3 ; play note B3
#_1BAD30: #_2B69u: db $A4 ; play note C4
#_1BAD31: #_2B6Au: db $A8 ; play note E4
#_1BAD32: #_2B6Bu: db $A9 ; play note F4
#_1BAD33: #_2B6Cu: db $A8 ; play note E4
#_1BAD34: #_2B6Du: db $A9 ; play note F4
#_1BAD35: #_2B6Eu: db $AE ; play note As4
#_1BAD36: #_2B6Fu: db $AF ; play note B4
#_1BAD37: #_2B70u: db $B0 ; play note C5
#_1BAD38: #_2B71u: db $AF ; play note B4
#_1BAD39: #_2B72u: db $B4 ; play note E5
#_1BAD3A: #_2B73u: db $B5 ; play note F5
#_1BAD3B: #_2B74u: db $BA ; play note As5
#_1BAD3C: #_2B75u: db $BB ; play note B5
#_1BAD3D: #_2B76u: db $36 ; duration
#_1BAD3E: #_2B77u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song1D_Segment0_Track3:
#_1BAD3F: #_2B78u: db $E0, $0B ; set instrument - trombone
#_1BAD41: #_2B7Au: db $ED, $C8 ; set channel volume
#_1BAD43: #_2B7Cu: db $E1, $08 ; set panning - leaning right
#_1BAD45: #_2B7Eu: db $36 ; duration
#_1BAD46: #_2B7Fu: db $C9 ; rest
#_1BAD47: #_2B80u: db $06, $6D ; duration, params
#_1BAD49: #_2B82u: db $A2 ; play note As3
#_1BAD4A: #_2B83u: db $A3 ; play note B3
#_1BAD4B: #_2B84u: db $A4 ; play note C4
#_1BAD4C: #_2B85u: db $A3 ; play note B3
#_1BAD4D: #_2B86u: db $A4 ; play note C4
#_1BAD4E: #_2B87u: db $A8 ; play note E4
#_1BAD4F: #_2B88u: db $A9 ; play note F4
#_1BAD50: #_2B89u: db $A8 ; play note E4
#_1BAD51: #_2B8Au: db $A9 ; play note F4
#_1BAD52: #_2B8Bu: db $AE ; play note As4
#_1BAD53: #_2B8Cu: db $AF ; play note B4
#_1BAD54: #_2B8Du: db $B0 ; play note C5
#_1BAD55: #_2B8Eu: db $AF ; play note B4
#_1BAD56: #_2B8Fu: db $B4 ; play note E5
#_1BAD57: #_2B90u: db $B5 ; play note F5
#_1BAD58: #_2B91u: db $BA ; play note As5
#_1BAD59: #_2B92u: db $BB ; play note B5
#_1BAD5A: #_2B93u: db $24 ; duration
#_1BAD5B: #_2B94u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song1D_Segment0_Track4:
#_1BAD5C: #_2B95u: db $E0, $0B ; set instrument - trombone
#_1BAD5E: #_2B97u: db $ED, $C8 ; set channel volume
#_1BAD60: #_2B99u: db $E1, $04 ; set panning - leaning right
#_1BAD62: #_2B9Bu: db $48 ; duration
#_1BAD63: #_2B9Cu: db $C9 ; rest
#_1BAD64: #_2B9Du: db $06, $6D ; duration, params
#_1BAD66: #_2B9Fu: db $A2 ; play note As3
#_1BAD67: #_2BA0u: db $A3 ; play note B3
#_1BAD68: #_2BA1u: db $A4 ; play note C4
#_1BAD69: #_2BA2u: db $A3 ; play note B3
#_1BAD6A: #_2BA3u: db $A4 ; play note C4
#_1BAD6B: #_2BA4u: db $A8 ; play note E4
#_1BAD6C: #_2BA5u: db $A9 ; play note F4
#_1BAD6D: #_2BA6u: db $A8 ; play note E4
#_1BAD6E: #_2BA7u: db $A9 ; play note F4
#_1BAD6F: #_2BA8u: db $AE ; play note As4
#_1BAD70: #_2BA9u: db $AF ; play note B4
#_1BAD71: #_2BAAu: db $B0 ; play note C5
#_1BAD72: #_2BABu: db $AF ; play note B4
#_1BAD73: #_2BACu: db $B4 ; play note E5
#_1BAD74: #_2BADu: db $B5 ; play note F5
#_1BAD75: #_2BAEu: db $BA ; play note As5
#_1BAD76: #_2BAFu: db $BB ; play note B5
#_1BAD77: #_2BB0u: db $12 ; duration
#_1BAD78: #_2BB1u: db $C9 ; rest
#_1BAD79: #_2BB2u: db $00 ; End

;===================================================================================================

Song1F_KingOfThieves:
#_1BAD7A: #_2BB3u: dw Song1F_Segment0

Song1F_Loop:
#_1BAD7C: #_2BB5u: dw Song1F_Segment1
#_1BAD7E: #_2BB7u: dw Song1F_Segment2
#_1BAD80: #_2BB9u: dw Song1F_Segment3
#_1BAD82: #_2BBBu: dw Song1F_Segment4
#_1BAD84: #_2BBDu: dw $00FF, Song1F_Loop ; Loop point
#_1BAD88: #_2BC1u: dw $0000

Song1F_Segment1:
#_1BAD8A: #_2BC3u: dw Song1F_Segment1_Track0
#_1BAD8C: #_2BC5u: dw $0000
#_1BAD8E: #_2BC7u: dw Song1F_Segment1_Track2
#_1BAD90: #_2BC9u: dw Song1F_Segment1_Track3
#_1BAD92: #_2BCBu: dw Song1F_Segment1_Track4
#_1BAD94: #_2BCDu: dw Song1F_Segment1_Track5
#_1BAD96: #_2BCFu: dw Song1F_Segment1_Track6
#_1BAD98: #_2BD1u: dw $0000

Song1F_Segment0:
#_1BAD9A: #_2BD3u: dw Song1F_Segment0_Track0
#_1BAD9C: #_2BD5u: dw $0000
#_1BAD9E: #_2BD7u: dw Song1F_Segment0_Track2
#_1BADA0: #_2BD9u: dw Song1F_Segment0_Track3
#_1BADA2: #_2BDBu: dw Song1F_Segment0_Track4
#_1BADA4: #_2BDDu: dw $0000
#_1BADA6: #_2BDFu: dw Song1F_Segment0_Track6
#_1BADA8: #_2BE1u: dw $0000

Song1F_Segment2:
#_1BADAA: #_2BE3u: dw Song1F_Segment2_Track0
#_1BADAC: #_2BE5u: dw Song1F_Segment2_Track1
#_1BADAE: #_2BE7u: dw Song1F_Segment2_Track2
#_1BADB0: #_2BE9u: dw Song1F_Segment2_Track3
#_1BADB2: #_2BEBu: dw Song1F_Segment2_Track4
#_1BADB4: #_2BEDu: dw Song1F_Segment2_Track5
#_1BADB6: #_2BEFu: dw Song1F_Segment2_Track6
#_1BADB8: #_2BF1u: dw $0000

Song1F_Segment4:
#_1BADBA: #_2BF3u: dw Song1F_Segment4_Track0
#_1BADBC: #_2BF5u: dw Song1F_Segment4_Track1
#_1BADBE: #_2BF7u: dw Song1F_Segment4_Track2
#_1BADC0: #_2BF9u: dw Song1F_Segment4_Track3
#_1BADC2: #_2BFBu: dw Song1F_Segment4_Track4
#_1BADC4: #_2BFDu: dw Song1F_Segment4_Track5
#_1BADC6: #_2BFFu: dw $0000
#_1BADC8: #_2C01u: dw $0000

Song1F_Segment3:
#_1BADCA: #_2C03u: dw Song1F_Segment3_Track0
#_1BADCC: #_2C05u: dw Song1F_Segment3_Track1
#_1BADCE: #_2C07u: dw Song1F_Segment3_Track2
#_1BADD0: #_2C09u: dw Song1F_Segment3_Track3
#_1BADD2: #_2C0Bu: dw Song1F_Segment3_Track4
#_1BADD4: #_2C0Du: dw Song1F_Segment3_Track5
#_1BADD6: #_2C0Fu: dw Song1F_Segment3_Track6
#_1BADD8: #_2C11u: dw $0000

;---------------------------------------------------------------------------------------------------

Song1F_Segment1_Track0:
#_1BADDA: #_2C13u: db $0C, $6D ; duration, params
#_1BADDC: #_2C15u: db $8C ; play note C2
#_1BADDD: #_2C16u: db $93 ; play note G2
#_1BADDE: #_2C17u: db $98 ; play note C3
#_1BADDF: #_2C18u: db $8F ; play note Ds2
#_1BADE0: #_2C19u: db $96 ; play note As2
#_1BADE1: #_2C1Au: db $9B ; play note Ds3
#_1BADE2: #_2C1Bu: db $91 ; play note F2
#_1BADE3: #_2C1Cu: db $98 ; play note C3
#_1BADE4: #_2C1Du: db $9D ; play note F3
#_1BADE5: #_2C1Eu: db $94 ; play note Gs2
#_1BADE6: #_2C1Fu: db $9B ; play note Ds3
#_1BADE7: #_2C20u: db $A0 ; play note Gs3
#_1BADE8: #_2C21u: db $93 ; play note G2
#_1BADE9: #_2C22u: db $9F ; play note G3
#_1BADEA: #_2C23u: db $EF : dw Song1F_Sub_2EDB : db $06 ; call segment subroutine
#_1BADEE: #_2C27u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Segment1_Track2:
#_1BADEF: #_2C28u: db $EF : dw Song1F_Sub_2EEA : db $06 ; call segment subroutine
#_1BADF3: #_2C2Cu: db $0C, $6D ; duration, params
#_1BADF5: #_2C2Eu: db $A9 ; play note F4
#_1BADF6: #_2C2Fu: db $0C, $69 ; duration, params
#_1BADF8: #_2C31u: db $A9 ; play note F4
#_1BADF9: #_2C32u: db $A9 ; play note F4
#_1BADFA: #_2C33u: db $0C, $6D ; duration, params
#_1BADFC: #_2C35u: db $A9 ; play note F4
#_1BADFD: #_2C36u: db $0C, $69 ; duration, params
#_1BADFF: #_2C38u: db $A9 ; play note F4
#_1BAE00: #_2C39u: db $A9 ; play note F4
#_1BAE01: #_2C3Au: db $0C, $6D ; duration, params
#_1BAE03: #_2C3Cu: db $A9 ; play note F4
#_1BAE04: #_2C3Du: db $0C, $69 ; duration, params
#_1BAE06: #_2C3Fu: db $A9 ; play note F4
#_1BAE07: #_2C40u: db $A9 ; play note F4
#_1BAE08: #_2C41u: db $06, $6D ; duration, params
#_1BAE0A: #_2C43u: db $A9 ; play note F4
#_1BAE0B: #_2C44u: db $A9 ; play note F4
#_1BAE0C: #_2C45u: db $0C ; duration
#_1BAE0D: #_2C46u: db $A9 ; play note F4
#_1BAE0E: #_2C47u: db $A9 ; play note F4
#_1BAE0F: #_2C48u: db $06 ; duration
#_1BAE10: #_2C49u: db $A9 ; play note F4
#_1BAE11: #_2C4Au: db $A9 ; play note F4
#_1BAE12: #_2C4Bu: db $0C ; duration
#_1BAE13: #_2C4Cu: db $A9 ; play note F4

;---------------------------------------------------------------------------------------------------

Song1F_Segment1_Track3:
#_1BAE14: #_2C4Du: db $E0, $11 ; set instrument - trumpet
#_1BAE16: #_2C4Fu: db $ED, $C8 ; set channel volume
#_1BAE18: #_2C51u: db $60, $6D ; duration, params
#_1BAE1A: #_2C53u: db $A4 ; play note C4
#_1BAE1B: #_2C54u: db $48 ; duration
#_1BAE1C: #_2C55u: db $C8 ; sustain current note
#_1BAE1D: #_2C56u: db $60 ; duration
#_1BAE1E: #_2C57u: db $A7 ; play note Ds4
#_1BAE1F: #_2C58u: db $48 ; duration
#_1BAE20: #_2C59u: db $C8 ; sustain current note
#_1BAE21: #_2C5Au: db $A6 ; play note D4
#_1BAE22: #_2C5Bu: db $60 ; duration
#_1BAE23: #_2C5Cu: db $C8 ; sustain current note
#_1BAE24: #_2C5Du: db $A5 ; play note Cs4
#_1BAE25: #_2C5Eu: db $48 ; duration
#_1BAE26: #_2C5Fu: db $C8 ; sustain current note
#_1BAE27: #_2C60u: db $A4 ; play note C4
#_1BAE28: #_2C61u: db $60 ; duration
#_1BAE29: #_2C62u: db $C8 ; sustain current note
#_1BAE2A: #_2C63u: db $C8 ; sustain current note
#_1BAE2B: #_2C64u: db $48 ; duration
#_1BAE2C: #_2C65u: db $C9 ; rest
#_1BAE2D: #_2C66u: db $60 ; duration
#_1BAE2E: #_2C67u: db $C9 ; rest
#_1BAE2F: #_2C68u: db $48 ; duration
#_1BAE30: #_2C69u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song1F_Segment1_Track4:
#_1BAE31: #_2C6Au: db $E0, $11 ; set instrument - trumpet
#_1BAE33: #_2C6Cu: db $ED, $C8 ; set channel volume
#_1BAE35: #_2C6Eu: db $60, $6D ; duration, params
#_1BAE37: #_2C70u: db $9F ; play note G3
#_1BAE38: #_2C71u: db $48 ; duration
#_1BAE39: #_2C72u: db $C8 ; sustain current note
#_1BAE3A: #_2C73u: db $60 ; duration
#_1BAE3B: #_2C74u: db $A2 ; play note As3
#_1BAE3C: #_2C75u: db $48 ; duration
#_1BAE3D: #_2C76u: db $C8 ; sustain current note
#_1BAE3E: #_2C77u: db $A1 ; play note A3
#_1BAE3F: #_2C78u: db $60 ; duration
#_1BAE40: #_2C79u: db $C8 ; sustain current note
#_1BAE41: #_2C7Au: db $A0 ; play note Gs3
#_1BAE42: #_2C7Bu: db $48 ; duration
#_1BAE43: #_2C7Cu: db $C8 ; sustain current note
#_1BAE44: #_2C7Du: db $9F ; play note G3
#_1BAE45: #_2C7Eu: db $60 ; duration
#_1BAE46: #_2C7Fu: db $C8 ; sustain current note
#_1BAE47: #_2C80u: db $C8 ; sustain current note
#_1BAE48: #_2C81u: db $48 ; duration
#_1BAE49: #_2C82u: db $C9 ; rest
#_1BAE4A: #_2C83u: db $60 ; duration
#_1BAE4B: #_2C84u: db $C9 ; rest
#_1BAE4C: #_2C85u: db $48 ; duration
#_1BAE4D: #_2C86u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song1F_Segment1_Track5:
#_1BAE4E: #_2C87u: db $E0, $11 ; set instrument - trumpet
#_1BAE50: #_2C89u: db $ED, $C8 ; set channel volume
#_1BAE52: #_2C8Bu: db $60, $6D ; duration, params
#_1BAE54: #_2C8Du: db $9A ; play note D3
#_1BAE55: #_2C8Eu: db $48 ; duration
#_1BAE56: #_2C8Fu: db $C8 ; sustain current note
#_1BAE57: #_2C90u: db $60 ; duration
#_1BAE58: #_2C91u: db $9D ; play note F3
#_1BAE59: #_2C92u: db $48 ; duration
#_1BAE5A: #_2C93u: db $C8 ; sustain current note
#_1BAE5B: #_2C94u: db $9C ; play note E3
#_1BAE5C: #_2C95u: db $60 ; duration
#_1BAE5D: #_2C96u: db $C8 ; sustain current note
#_1BAE5E: #_2C97u: db $9B ; play note Ds3
#_1BAE5F: #_2C98u: db $48 ; duration
#_1BAE60: #_2C99u: db $C8 ; sustain current note
#_1BAE61: #_2C9Au: db $9A ; play note D3
#_1BAE62: #_2C9Bu: db $60 ; duration
#_1BAE63: #_2C9Cu: db $C8 ; sustain current note
#_1BAE64: #_2C9Du: db $C8 ; sustain current note
#_1BAE65: #_2C9Eu: db $48 ; duration
#_1BAE66: #_2C9Fu: db $C9 ; rest
#_1BAE67: #_2CA0u: db $60 ; duration
#_1BAE68: #_2CA1u: db $C9 ; rest
#_1BAE69: #_2CA2u: db $48 ; duration
#_1BAE6A: #_2CA3u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song1F_Segment1_Track6:
#_1BAE6B: #_2CA4u: db $24, $7D ; duration, params
#_1BAE6D: #_2CA6u: db $8C ; play note C2
#_1BAE6E: #_2CA7u: db $8F ; play note Ds2
#_1BAE6F: #_2CA8u: db $91 ; play note F2
#_1BAE70: #_2CA9u: db $94 ; play note Gs2
#_1BAE71: #_2CAAu: db $18 ; duration
#_1BAE72: #_2CABu: db $93 ; play note G2
#_1BAE73: #_2CACu: db $EF : dw Song1F_Sub_2F0D : db $06 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song1F_Segment0_Track0:
#_1BAE77: #_2CB0u: db $FA, $19 ; set base percussion sample
#_1BAE79: #_2CB2u: db $E5, $C8 ; set song volume
#_1BAE7B: #_2CB4u: db $F5, $FF, $1E, $1E ; configure EON, EVOLL, EVOLR
#_1BAE7F: #_2CB8u: db $F7, $02, $14, $02 ; configure EDL, EFB, FIR
#_1BAE83: #_2CBCu: db $E7, $31 ; set song tempo
#_1BAE85: #_2CBEu: db $E0, $0B ; set instrument - trombone
#_1BAE87: #_2CC0u: db $ED, $DC ; set channel volume
#_1BAE89: #_2CC2u: db $06, $6D ; duration, params
#_1BAE8B: #_2CC4u: db $B3 ; play note Ds5
#_1BAE8C: #_2CC5u: db $B2 ; play note D5
#_1BAE8D: #_2CC6u: db $B1 ; play note Cs5
#_1BAE8E: #_2CC7u: db $B0 ; play note C5
#_1BAE8F: #_2CC8u: db $AF ; play note B4
#_1BAE90: #_2CC9u: db $B2 ; play note D5
#_1BAE91: #_2CCAu: db $B1 ; play note Cs5
#_1BAE92: #_2CCBu: db $B0 ; play note C5
#_1BAE93: #_2CCCu: db $AF ; play note B4
#_1BAE94: #_2CCDu: db $AE ; play note As4
#_1BAE95: #_2CCEu: db $AD ; play note A4
#_1BAE96: #_2CCFu: db $AC ; play note Gs4
#_1BAE97: #_2CD0u: db $AB ; play note G4
#_1BAE98: #_2CD1u: db $AA ; play note Fs4
#_1BAE99: #_2CD2u: db $A9 ; play note F4
#_1BAE9A: #_2CD3u: db $A8 ; play note E4
#_1BAE9B: #_2CD4u: db $E0, $18 ; set instrument - piano
#_1BAE9D: #_2CD6u: db $0C ; duration
#_1BAE9E: #_2CD7u: db $8C ; play note C2
#_1BAE9F: #_2CD8u: db $93 ; play note G2
#_1BAEA0: #_2CD9u: db $98 ; play note C3
#_1BAEA1: #_2CDAu: db $8F ; play note Ds2
#_1BAEA2: #_2CDBu: db $96 ; play note As2
#_1BAEA3: #_2CDCu: db $9B ; play note Ds3
#_1BAEA4: #_2CDDu: db $91 ; play note F2
#_1BAEA5: #_2CDEu: db $98 ; play note C3
#_1BAEA6: #_2CDFu: db $9D ; play note F3
#_1BAEA7: #_2CE0u: db $94 ; play note Gs2
#_1BAEA8: #_2CE1u: db $9B ; play note Ds3
#_1BAEA9: #_2CE2u: db $A0 ; play note Gs3
#_1BAEAA: #_2CE3u: db $93 ; play note G2
#_1BAEAB: #_2CE4u: db $9F ; play note G3
#_1BAEAC: #_2CE5u: db $8C ; play note C2
#_1BAEAD: #_2CE6u: db $93 ; play note G2
#_1BAEAE: #_2CE7u: db $98 ; play note C3
#_1BAEAF: #_2CE8u: db $8F ; play note Ds2
#_1BAEB0: #_2CE9u: db $96 ; play note As2
#_1BAEB1: #_2CEAu: db $9B ; play note Ds3
#_1BAEB2: #_2CEBu: db $91 ; play note F2
#_1BAEB3: #_2CECu: db $98 ; play note C3
#_1BAEB4: #_2CEDu: db $9D ; play note F3
#_1BAEB5: #_2CEEu: db $94 ; play note Gs2
#_1BAEB6: #_2CEFu: db $9B ; play note Ds3
#_1BAEB7: #_2CF0u: db $A0 ; play note Gs3
#_1BAEB8: #_2CF1u: db $93 ; play note G2
#_1BAEB9: #_2CF2u: db $9F ; play note G3
#_1BAEBA: #_2CF3u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Segment0_Track2:
#_1BAEBB: #_2CF4u: db $E0, $13 ; set instrument - snare A
#_1BAEBD: #_2CF6u: db $ED, $A0 ; set channel volume
#_1BAEBF: #_2CF8u: db $60 ; duration
#_1BAEC0: #_2CF9u: db $C9 ; rest
#_1BAEC1: #_2CFAu: db $EF : dw Song1F_Sub_2EEA : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song1F_Segment0_Track3:
#_1BAEC5: #_2CFEu: db $E0, $0B ; set instrument - trombone
#_1BAEC7: #_2D00u: db $ED, $DC ; set channel volume
#_1BAEC9: #_2D02u: db $06, $6D ; duration, params
#_1BAECB: #_2D04u: db $AF ; play note B4
#_1BAECC: #_2D05u: db $AE ; play note As4
#_1BAECD: #_2D06u: db $AD ; play note A4
#_1BAECE: #_2D07u: db $AC ; play note Gs4
#_1BAECF: #_2D08u: db $AB ; play note G4
#_1BAED0: #_2D09u: db $AE ; play note As4
#_1BAED1: #_2D0Au: db $AD ; play note A4
#_1BAED2: #_2D0Bu: db $AC ; play note Gs4
#_1BAED3: #_2D0Cu: db $AB ; play note G4
#_1BAED4: #_2D0Du: db $AA ; play note Fs4
#_1BAED5: #_2D0Eu: db $A9 ; play note F4
#_1BAED6: #_2D0Fu: db $A8 ; play note E4
#_1BAED7: #_2D10u: db $A7 ; play note Ds4
#_1BAED8: #_2D11u: db $A6 ; play note D4
#_1BAED9: #_2D12u: db $A5 ; play note Cs4
#_1BAEDA: #_2D13u: db $A4 ; play note C4
#_1BAEDB: #_2D14u: db $60 ; duration
#_1BAEDC: #_2D15u: db $C9 ; rest
#_1BAEDD: #_2D16u: db $48 ; duration
#_1BAEDE: #_2D17u: db $C9 ; rest
#_1BAEDF: #_2D18u: db $60 ; duration
#_1BAEE0: #_2D19u: db $C9 ; rest
#_1BAEE1: #_2D1Au: db $48 ; duration
#_1BAEE2: #_2D1Bu: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song1F_Segment0_Track4:
#_1BAEE3: #_2D1Cu: db $E0, $0B ; set instrument - trombone
#_1BAEE5: #_2D1Eu: db $ED, $DC ; set channel volume
#_1BAEE7: #_2D20u: db $06, $6D ; duration, params
#_1BAEE9: #_2D22u: db $A9 ; play note F4
#_1BAEEA: #_2D23u: db $A8 ; play note E4
#_1BAEEB: #_2D24u: db $A7 ; play note Ds4
#_1BAEEC: #_2D25u: db $A6 ; play note D4
#_1BAEED: #_2D26u: db $A5 ; play note Cs4
#_1BAEEE: #_2D27u: db $A8 ; play note E4
#_1BAEEF: #_2D28u: db $A7 ; play note Ds4
#_1BAEF0: #_2D29u: db $A6 ; play note D4
#_1BAEF1: #_2D2Au: db $A5 ; play note Cs4
#_1BAEF2: #_2D2Bu: db $A4 ; play note C4
#_1BAEF3: #_2D2Cu: db $A3 ; play note B3
#_1BAEF4: #_2D2Du: db $A2 ; play note As3
#_1BAEF5: #_2D2Eu: db $A1 ; play note A3
#_1BAEF6: #_2D2Fu: db $A0 ; play note Gs3
#_1BAEF7: #_2D30u: db $9F ; play note G3
#_1BAEF8: #_2D31u: db $9E ; play note Fs3
#_1BAEF9: #_2D32u: db $60 ; duration
#_1BAEFA: #_2D33u: db $C9 ; rest
#_1BAEFB: #_2D34u: db $48 ; duration
#_1BAEFC: #_2D35u: db $C9 ; rest
#_1BAEFD: #_2D36u: db $60 ; duration
#_1BAEFE: #_2D37u: db $C9 ; rest
#_1BAEFF: #_2D38u: db $48 ; duration
#_1BAF00: #_2D39u: db $C9 ; rest

;---------------------------------------------------------------------------------------------------

Song1F_Segment0_Track6:
#_1BAF01: #_2D3Au: db $E0, $02 ; set instrument - timpani
#_1BAF03: #_2D3Cu: db $ED, $B4 ; set channel volume
#_1BAF05: #_2D3Eu: db $60 ; duration
#_1BAF06: #_2D3Fu: db $C9 ; rest
#_1BAF07: #_2D40u: db $24, $7D ; duration, params
#_1BAF09: #_2D42u: db $8C ; play note C2
#_1BAF0A: #_2D43u: db $8F ; play note Ds2
#_1BAF0B: #_2D44u: db $91 ; play note F2
#_1BAF0C: #_2D45u: db $94 ; play note Gs2
#_1BAF0D: #_2D46u: db $18 ; duration
#_1BAF0E: #_2D47u: db $93 ; play note G2
#_1BAF0F: #_2D48u: db $24 ; duration
#_1BAF10: #_2D49u: db $8C ; play note C2
#_1BAF11: #_2D4Au: db $8F ; play note Ds2
#_1BAF12: #_2D4Bu: db $91 ; play note F2
#_1BAF13: #_2D4Cu: db $94 ; play note Gs2
#_1BAF14: #_2D4Du: db $18 ; duration
#_1BAF15: #_2D4Eu: db $93 ; play note G2

;---------------------------------------------------------------------------------------------------

Song1F_Segment2_Track0:
#_1BAF16: #_2D4Fu: db $0C, $6D ; duration, params
#_1BAF18: #_2D51u: db $92 ; play note Fs2
#_1BAF19: #_2D52u: db $99 ; play note Cs3
#_1BAF1A: #_2D53u: db $9E ; play note Fs3
#_1BAF1B: #_2D54u: db $95 ; play note A2
#_1BAF1C: #_2D55u: db $9C ; play note E3
#_1BAF1D: #_2D56u: db $A1 ; play note A3
#_1BAF1E: #_2D57u: db $97 ; play note B2
#_1BAF1F: #_2D58u: db $9E ; play note Fs3
#_1BAF20: #_2D59u: db $A3 ; play note B3
#_1BAF21: #_2D5Au: db $9A ; play note D3
#_1BAF22: #_2D5Bu: db $A1 ; play note A3
#_1BAF23: #_2D5Cu: db $A6 ; play note D4
#_1BAF24: #_2D5Du: db $99 ; play note Cs3
#_1BAF25: #_2D5Eu: db $A5 ; play note Cs4
#_1BAF26: #_2D5Fu: db $EF : dw Song1F_Sub_2F15 : db $04 ; call segment subroutine
#_1BAF2A: #_2D63u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Segment2_Track1:
#_1BAF2B: #_2D64u: db $E0, $0B ; set instrument - trombone
#_1BAF2D: #_2D66u: db $ED, $C8 ; set channel volume
#_1BAF2F: #_2D68u: db $0C, $6D ; duration, params
#_1BAF31: #_2D6Au: db $B1 ; play note Cs5
#_1BAF32: #_2D6Bu: db $60 ; duration
#_1BAF33: #_2D6Cu: db $B6 ; play note Fs5
#_1BAF34: #_2D6Du: db $3C ; duration
#_1BAF35: #_2D6Eu: db $C8 ; sustain current note
#_1BAF36: #_2D6Fu: db $0C ; duration
#_1BAF37: #_2D70u: db $B7 ; play note G5
#_1BAF38: #_2D71u: db $48 ; duration
#_1BAF39: #_2D72u: db $B0 ; play note C5
#_1BAF3A: #_2D73u: db $54 ; duration
#_1BAF3B: #_2D74u: db $C8 ; sustain current note
#_1BAF3C: #_2D75u: db $0C ; duration
#_1BAF3D: #_2D76u: db $B5 ; play note F5
#_1BAF3E: #_2D77u: db $60 ; duration
#_1BAF3F: #_2D78u: db $AC ; play note Gs4
#_1BAF40: #_2D79u: db $3C ; duration
#_1BAF41: #_2D7Au: db $C8 ; sustain current note
#_1BAF42: #_2D7Bu: db $0C ; duration
#_1BAF43: #_2D7Cu: db $AB ; play note G4
#_1BAF44: #_2D7Du: db $60 ; duration
#_1BAF45: #_2D7Eu: db $B2 ; play note D5
#_1BAF46: #_2D7Fu: db $3C ; duration
#_1BAF47: #_2D80u: db $C8 ; sustain current note
#_1BAF48: #_2D81u: db $0C ; duration
#_1BAF49: #_2D82u: db $B3 ; play note Ds5
#_1BAF4A: #_2D83u: db $60 ; duration
#_1BAF4B: #_2D84u: db $AA ; play note Fs4
#_1BAF4C: #_2D85u: db $3C ; duration
#_1BAF4D: #_2D86u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1F_Segment2_Track2:
#_1BAF4E: #_2D87u: db $EF : dw Song1F_Sub_2EEA : db $05 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song1F_Segment2_Track3:
#_1BAF52: #_2D8Bu: db $E0, $11 ; set instrument - trumpet
#_1BAF54: #_2D8Du: db $ED, $C8 ; set channel volume
#_1BAF56: #_2D8Fu: db $60, $6D ; duration, params
#_1BAF58: #_2D91u: db $AA ; play note Fs4
#_1BAF59: #_2D92u: db $48 ; duration
#_1BAF5A: #_2D93u: db $C8 ; sustain current note
#_1BAF5B: #_2D94u: db $60 ; duration
#_1BAF5C: #_2D95u: db $AD ; play note A4
#_1BAF5D: #_2D96u: db $48 ; duration
#_1BAF5E: #_2D97u: db $C8 ; sustain current note
#_1BAF5F: #_2D98u: db $AC ; play note Gs4
#_1BAF60: #_2D99u: db $60 ; duration
#_1BAF61: #_2D9Au: db $C8 ; sustain current note
#_1BAF62: #_2D9Bu: db $AB ; play note G4
#_1BAF63: #_2D9Cu: db $48 ; duration
#_1BAF64: #_2D9Du: db $C8 ; sustain current note
#_1BAF65: #_2D9Eu: db $AA ; play note Fs4
#_1BAF66: #_2D9Fu: db $60 ; duration
#_1BAF67: #_2DA0u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1F_Segment2_Track4:
#_1BAF68: #_2DA1u: db $E0, $11 ; set instrument - trumpet
#_1BAF6A: #_2DA3u: db $ED, $C8 ; set channel volume
#_1BAF6C: #_2DA5u: db $60, $6D ; duration, params
#_1BAF6E: #_2DA7u: db $A5 ; play note Cs4
#_1BAF6F: #_2DA8u: db $48 ; duration
#_1BAF70: #_2DA9u: db $C8 ; sustain current note
#_1BAF71: #_2DAAu: db $60 ; duration
#_1BAF72: #_2DABu: db $A8 ; play note E4
#_1BAF73: #_2DACu: db $48 ; duration
#_1BAF74: #_2DADu: db $C8 ; sustain current note
#_1BAF75: #_2DAEu: db $A7 ; play note Ds4
#_1BAF76: #_2DAFu: db $60 ; duration
#_1BAF77: #_2DB0u: db $C8 ; sustain current note
#_1BAF78: #_2DB1u: db $A6 ; play note D4
#_1BAF79: #_2DB2u: db $48 ; duration
#_1BAF7A: #_2DB3u: db $C8 ; sustain current note
#_1BAF7B: #_2DB4u: db $A5 ; play note Cs4
#_1BAF7C: #_2DB5u: db $60 ; duration
#_1BAF7D: #_2DB6u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1F_Segment2_Track5:
#_1BAF7E: #_2DB7u: db $E0, $11 ; set instrument - trumpet
#_1BAF80: #_2DB9u: db $ED, $C8 ; set channel volume
#_1BAF82: #_2DBBu: db $60, $6D ; duration, params
#_1BAF84: #_2DBDu: db $A0 ; play note Gs3
#_1BAF85: #_2DBEu: db $48 ; duration
#_1BAF86: #_2DBFu: db $C8 ; sustain current note
#_1BAF87: #_2DC0u: db $60 ; duration
#_1BAF88: #_2DC1u: db $A3 ; play note B3
#_1BAF89: #_2DC2u: db $48 ; duration
#_1BAF8A: #_2DC3u: db $C8 ; sustain current note
#_1BAF8B: #_2DC4u: db $A2 ; play note As3
#_1BAF8C: #_2DC5u: db $60 ; duration
#_1BAF8D: #_2DC6u: db $C8 ; sustain current note
#_1BAF8E: #_2DC7u: db $A1 ; play note A3
#_1BAF8F: #_2DC8u: db $48 ; duration
#_1BAF90: #_2DC9u: db $C8 ; sustain current note
#_1BAF91: #_2DCAu: db $A0 ; play note Gs3
#_1BAF92: #_2DCBu: db $60 ; duration
#_1BAF93: #_2DCCu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1F_Segment2_Track6:
#_1BAF94: #_2DCDu: db $24, $7D ; duration, params
#_1BAF96: #_2DCFu: db $92 ; play note Fs2
#_1BAF97: #_2DD0u: db $95 ; play note A2
#_1BAF98: #_2DD1u: db $97 ; play note B2
#_1BAF99: #_2DD2u: db $9A ; play note D3
#_1BAF9A: #_2DD3u: db $18 ; duration
#_1BAF9B: #_2DD4u: db $99 ; play note Cs3
#_1BAF9C: #_2DD5u: db $EF : dw Song1F_Sub_2F24 : db $04 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song1F_Segment4_Track0:
#_1BAFA0: #_2DD9u: db $EF : dw Song1F_Sub_2F2C : db $01 ; call segment subroutine
#_1BAFA4: #_2DDDu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Segment4_Track1:
#_1BAFA5: #_2DDEu: db $EF : dw Song1F_Sub_2F2C : db $01 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song1F_Segment4_Track2:
#_1BAFA9: #_2DE2u: db $E0, $13 ; set instrument - snare A
#_1BAFAB: #_2DE4u: db $ED, $A0 ; set channel volume
#_1BAFAD: #_2DE6u: db $EF : dw Song1F_Sub_2EEA : db $03 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song1F_Segment4_Track3:
#_1BAFB1: #_2DEAu: db $0C, $4D ; duration, params
#_1BAFB3: #_2DECu: db $AF ; play note B4
#_1BAFB4: #_2DEDu: db $18 ; duration
#_1BAFB5: #_2DEEu: db $AF ; play note B4
#_1BAFB6: #_2DEFu: db $0C ; duration
#_1BAFB7: #_2DF0u: db $AF ; play note B4
#_1BAFB8: #_2DF1u: db $AF ; play note B4
#_1BAFB9: #_2DF2u: db $18 ; duration
#_1BAFBA: #_2DF3u: db $AF ; play note B4
#_1BAFBB: #_2DF4u: db $0C ; duration
#_1BAFBC: #_2DF5u: db $AF ; play note B4
#_1BAFBD: #_2DF6u: db $AF ; play note B4
#_1BAFBE: #_2DF7u: db $AF ; play note B4
#_1BAFBF: #_2DF8u: db $AF ; play note B4
#_1BAFC0: #_2DF9u: db $AF ; play note B4
#_1BAFC1: #_2DFAu: db $18 ; duration
#_1BAFC2: #_2DFBu: db $AF ; play note B4
#_1BAFC3: #_2DFCu: db $0C ; duration
#_1BAFC4: #_2DFDu: db $AE ; play note As4
#_1BAFC5: #_2DFEu: db $18 ; duration
#_1BAFC6: #_2DFFu: db $AE ; play note As4
#_1BAFC7: #_2E00u: db $0C ; duration
#_1BAFC8: #_2E01u: db $AE ; play note As4
#_1BAFC9: #_2E02u: db $AE ; play note As4
#_1BAFCA: #_2E03u: db $18 ; duration
#_1BAFCB: #_2E04u: db $AE ; play note As4
#_1BAFCC: #_2E05u: db $AE ; play note As4
#_1BAFCD: #_2E06u: db $0C ; duration
#_1BAFCE: #_2E07u: db $AE ; play note As4
#_1BAFCF: #_2E08u: db $AE ; play note As4
#_1BAFD0: #_2E09u: db $AE ; play note As4
#_1BAFD1: #_2E0Au: db $18 ; duration
#_1BAFD2: #_2E0Bu: db $AE ; play note As4
#_1BAFD3: #_2E0Cu: db $0C ; duration
#_1BAFD4: #_2E0Du: db $AD ; play note A4
#_1BAFD5: #_2E0Eu: db $18 ; duration
#_1BAFD6: #_2E0Fu: db $AD ; play note A4
#_1BAFD7: #_2E10u: db $0C ; duration
#_1BAFD8: #_2E11u: db $AD ; play note A4
#_1BAFD9: #_2E12u: db $AD ; play note A4
#_1BAFDA: #_2E13u: db $18 ; duration
#_1BAFDB: #_2E14u: db $AD ; play note A4
#_1BAFDC: #_2E15u: db $AD ; play note A4
#_1BAFDD: #_2E16u: db $0C ; duration
#_1BAFDE: #_2E17u: db $AC ; play note Gs4
#_1BAFDF: #_2E18u: db $AC ; play note Gs4
#_1BAFE0: #_2E19u: db $AC ; play note Gs4
#_1BAFE1: #_2E1Au: db $18 ; duration
#_1BAFE2: #_2E1Bu: db $AC ; play note Gs4

;---------------------------------------------------------------------------------------------------

Song1F_Segment4_Track4:
#_1BAFE3: #_2E1Cu: db $0C, $4D ; duration, params
#_1BAFE5: #_2E1Eu: db $AA ; play note Fs4
#_1BAFE6: #_2E1Fu: db $18 ; duration
#_1BAFE7: #_2E20u: db $AA ; play note Fs4
#_1BAFE8: #_2E21u: db $0C ; duration
#_1BAFE9: #_2E22u: db $AA ; play note Fs4
#_1BAFEA: #_2E23u: db $AA ; play note Fs4
#_1BAFEB: #_2E24u: db $18 ; duration
#_1BAFEC: #_2E25u: db $AA ; play note Fs4
#_1BAFED: #_2E26u: db $0C ; duration
#_1BAFEE: #_2E27u: db $AA ; play note Fs4
#_1BAFEF: #_2E28u: db $AA ; play note Fs4
#_1BAFF0: #_2E29u: db $AA ; play note Fs4
#_1BAFF1: #_2E2Au: db $AA ; play note Fs4
#_1BAFF2: #_2E2Bu: db $AA ; play note Fs4
#_1BAFF3: #_2E2Cu: db $18 ; duration
#_1BAFF4: #_2E2Du: db $AA ; play note Fs4
#_1BAFF5: #_2E2Eu: db $0C ; duration
#_1BAFF6: #_2E2Fu: db $A9 ; play note F4
#_1BAFF7: #_2E30u: db $18 ; duration
#_1BAFF8: #_2E31u: db $A9 ; play note F4
#_1BAFF9: #_2E32u: db $0C ; duration
#_1BAFFA: #_2E33u: db $A9 ; play note F4
#_1BAFFB: #_2E34u: db $A9 ; play note F4
#_1BAFFC: #_2E35u: db $18 ; duration
#_1BAFFD: #_2E36u: db $A9 ; play note F4
#_1BAFFE: #_2E37u: db $A9 ; play note F4
#_1BAFFF: #_2E38u: db $0C ; duration
#_1BB000: #_2E39u: db $A9 ; play note F4
#_1BB001: #_2E3Au: db $A9 ; play note F4
#_1BB002: #_2E3Bu: db $A9 ; play note F4
#_1BB003: #_2E3Cu: db $18 ; duration
#_1BB004: #_2E3Du: db $A9 ; play note F4
#_1BB005: #_2E3Eu: db $0C ; duration
#_1BB006: #_2E3Fu: db $A8 ; play note E4
#_1BB007: #_2E40u: db $18 ; duration
#_1BB008: #_2E41u: db $A8 ; play note E4
#_1BB009: #_2E42u: db $0C ; duration
#_1BB00A: #_2E43u: db $A8 ; play note E4
#_1BB00B: #_2E44u: db $A8 ; play note E4
#_1BB00C: #_2E45u: db $18 ; duration
#_1BB00D: #_2E46u: db $A8 ; play note E4
#_1BB00E: #_2E47u: db $A8 ; play note E4
#_1BB00F: #_2E48u: db $0C ; duration
#_1BB010: #_2E49u: db $A7 ; play note Ds4
#_1BB011: #_2E4Au: db $A7 ; play note Ds4
#_1BB012: #_2E4Bu: db $A7 ; play note Ds4
#_1BB013: #_2E4Cu: db $18 ; duration
#_1BB014: #_2E4Du: db $A7 ; play note Ds4

;---------------------------------------------------------------------------------------------------

Song1F_Segment4_Track5:
#_1BB015: #_2E4Eu: db $0C, $4D ; duration, params
#_1BB017: #_2E50u: db $A4 ; play note C4
#_1BB018: #_2E51u: db $18 ; duration
#_1BB019: #_2E52u: db $A4 ; play note C4
#_1BB01A: #_2E53u: db $0C ; duration
#_1BB01B: #_2E54u: db $A4 ; play note C4
#_1BB01C: #_2E55u: db $A4 ; play note C4
#_1BB01D: #_2E56u: db $18 ; duration
#_1BB01E: #_2E57u: db $A4 ; play note C4
#_1BB01F: #_2E58u: db $0C ; duration
#_1BB020: #_2E59u: db $A4 ; play note C4
#_1BB021: #_2E5Au: db $A4 ; play note C4
#_1BB022: #_2E5Bu: db $A4 ; play note C4
#_1BB023: #_2E5Cu: db $A4 ; play note C4
#_1BB024: #_2E5Du: db $A4 ; play note C4
#_1BB025: #_2E5Eu: db $18 ; duration
#_1BB026: #_2E5Fu: db $A4 ; play note C4
#_1BB027: #_2E60u: db $0C ; duration
#_1BB028: #_2E61u: db $A3 ; play note B3
#_1BB029: #_2E62u: db $18 ; duration
#_1BB02A: #_2E63u: db $A3 ; play note B3
#_1BB02B: #_2E64u: db $0C ; duration
#_1BB02C: #_2E65u: db $A3 ; play note B3
#_1BB02D: #_2E66u: db $A3 ; play note B3
#_1BB02E: #_2E67u: db $18 ; duration
#_1BB02F: #_2E68u: db $A3 ; play note B3
#_1BB030: #_2E69u: db $A3 ; play note B3
#_1BB031: #_2E6Au: db $0C ; duration
#_1BB032: #_2E6Bu: db $A3 ; play note B3
#_1BB033: #_2E6Cu: db $A3 ; play note B3
#_1BB034: #_2E6Du: db $A3 ; play note B3
#_1BB035: #_2E6Eu: db $18 ; duration
#_1BB036: #_2E6Fu: db $A3 ; play note B3
#_1BB037: #_2E70u: db $0C ; duration
#_1BB038: #_2E71u: db $A2 ; play note As3
#_1BB039: #_2E72u: db $18 ; duration
#_1BB03A: #_2E73u: db $A2 ; play note As3
#_1BB03B: #_2E74u: db $0C ; duration
#_1BB03C: #_2E75u: db $A2 ; play note As3
#_1BB03D: #_2E76u: db $A2 ; play note As3
#_1BB03E: #_2E77u: db $18 ; duration
#_1BB03F: #_2E78u: db $A2 ; play note As3
#_1BB040: #_2E79u: db $A2 ; play note As3
#_1BB041: #_2E7Au: db $0C ; duration
#_1BB042: #_2E7Bu: db $A1 ; play note A3
#_1BB043: #_2E7Cu: db $A1 ; play note A3
#_1BB044: #_2E7Du: db $A1 ; play note A3
#_1BB045: #_2E7Eu: db $18 ; duration
#_1BB046: #_2E7Fu: db $A1 ; play note A3

;---------------------------------------------------------------------------------------------------

Song1F_Segment3_Track0:
#_1BB047: #_2E80u: db $0C, $6D ; duration, params
#_1BB049: #_2E82u: db $91 ; play note F2
#_1BB04A: #_2E83u: db $98 ; play note C3
#_1BB04B: #_2E84u: db $9D ; play note F3
#_1BB04C: #_2E85u: db $94 ; play note Gs2
#_1BB04D: #_2E86u: db $9B ; play note Ds3
#_1BB04E: #_2E87u: db $A0 ; play note Gs3
#_1BB04F: #_2E88u: db $96 ; play note As2
#_1BB050: #_2E89u: db $9D ; play note F3
#_1BB051: #_2E8Au: db $A2 ; play note As3
#_1BB052: #_2E8Bu: db $99 ; play note Cs3
#_1BB053: #_2E8Cu: db $A0 ; play note Gs3
#_1BB054: #_2E8Du: db $A5 ; play note Cs4
#_1BB055: #_2E8Eu: db $98 ; play note C3
#_1BB056: #_2E8Fu: db $A4 ; play note C4
#_1BB057: #_2E90u: db $90 ; play note E2
#_1BB058: #_2E91u: db $97 ; play note B2
#_1BB059: #_2E92u: db $9C ; play note E3
#_1BB05A: #_2E93u: db $93 ; play note G2
#_1BB05B: #_2E94u: db $9A ; play note D3
#_1BB05C: #_2E95u: db $9F ; play note G3
#_1BB05D: #_2E96u: db $95 ; play note A2
#_1BB05E: #_2E97u: db $9C ; play note E3
#_1BB05F: #_2E98u: db $A1 ; play note A3
#_1BB060: #_2E99u: db $98 ; play note C3
#_1BB061: #_2E9Au: db $9F ; play note G3
#_1BB062: #_2E9Bu: db $A4 ; play note C4
#_1BB063: #_2E9Cu: db $97 ; play note B2
#_1BB064: #_2E9Du: db $A3 ; play note B3
#_1BB065: #_2E9Eu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Segment3_Track1:
#_1BB066: #_2E9Fu: db $0C, $6D ; duration, params
#_1BB068: #_2EA1u: db $AA ; play note Fs4
#_1BB069: #_2EA2u: db $60 ; duration
#_1BB06A: #_2EA3u: db $A9 ; play note F4
#_1BB06B: #_2EA4u: db $3C ; duration
#_1BB06C: #_2EA5u: db $C8 ; sustain current note
#_1BB06D: #_2EA6u: db $0C ; duration
#_1BB06E: #_2EA7u: db $A9 ; play note F4
#_1BB06F: #_2EA8u: db $48 ; duration
#_1BB070: #_2EA9u: db $A8 ; play note E4
#_1BB071: #_2EAAu: db $54 ; duration
#_1BB072: #_2EABu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1F_Segment3_Track2:
#_1BB073: #_2EACu: db $EF : dw Song1F_Sub_2EEA : db $02 ; call segment subroutine

;---------------------------------------------------------------------------------------------------

Song1F_Segment3_Track3:
#_1BB077: #_2EB0u: db $60, $6D ; duration, params
#_1BB079: #_2EB2u: db $A9 ; play note F4
#_1BB07A: #_2EB3u: db $48 ; duration
#_1BB07B: #_2EB4u: db $C8 ; sustain current note
#_1BB07C: #_2EB5u: db $60 ; duration
#_1BB07D: #_2EB6u: db $A8 ; play note E4
#_1BB07E: #_2EB7u: db $48 ; duration
#_1BB07F: #_2EB8u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1F_Segment3_Track4:
#_1BB080: #_2EB9u: db $60, $6D ; duration, params
#_1BB082: #_2EBBu: db $A4 ; play note C4
#_1BB083: #_2EBCu: db $48 ; duration
#_1BB084: #_2EBDu: db $C8 ; sustain current note
#_1BB085: #_2EBEu: db $60 ; duration
#_1BB086: #_2EBFu: db $A3 ; play note B3
#_1BB087: #_2EC0u: db $48 ; duration
#_1BB088: #_2EC1u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1F_Segment3_Track5:
#_1BB089: #_2EC2u: db $60, $6D ; duration, params
#_1BB08B: #_2EC4u: db $9F ; play note G3
#_1BB08C: #_2EC5u: db $48 ; duration
#_1BB08D: #_2EC6u: db $C8 ; sustain current note
#_1BB08E: #_2EC7u: db $60 ; duration
#_1BB08F: #_2EC8u: db $9E ; play note Fs3
#_1BB090: #_2EC9u: db $48 ; duration
#_1BB091: #_2ECAu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1F_Segment3_Track6:
#_1BB092: #_2ECBu: db $24, $7D ; duration, params
#_1BB094: #_2ECDu: db $91 ; play note F2
#_1BB095: #_2ECEu: db $94 ; play note Gs2
#_1BB096: #_2ECFu: db $96 ; play note As2
#_1BB097: #_2ED0u: db $99 ; play note Cs3
#_1BB098: #_2ED1u: db $18 ; duration
#_1BB099: #_2ED2u: db $98 ; play note C3
#_1BB09A: #_2ED3u: db $24 ; duration
#_1BB09B: #_2ED4u: db $90 ; play note E2
#_1BB09C: #_2ED5u: db $93 ; play note G2
#_1BB09D: #_2ED6u: db $95 ; play note A2
#_1BB09E: #_2ED7u: db $98 ; play note C3
#_1BB09F: #_2ED8u: db $18 ; duration
#_1BB0A0: #_2ED9u: db $97 ; play note B2
#_1BB0A1: #_2EDAu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Sub_2EDB:
#_1BB0A2: #_2EDBu: db $8C ; play note C2
#_1BB0A3: #_2EDCu: db $93 ; play note G2
#_1BB0A4: #_2EDDu: db $98 ; play note C3
#_1BB0A5: #_2EDEu: db $8F ; play note Ds2
#_1BB0A6: #_2EDFu: db $96 ; play note As2
#_1BB0A7: #_2EE0u: db $9B ; play note Ds3
#_1BB0A8: #_2EE1u: db $91 ; play note F2
#_1BB0A9: #_2EE2u: db $98 ; play note C3
#_1BB0AA: #_2EE3u: db $9D ; play note F3
#_1BB0AB: #_2EE4u: db $94 ; play note Gs2
#_1BB0AC: #_2EE5u: db $9B ; play note Ds3
#_1BB0AD: #_2EE6u: db $A0 ; play note Gs3
#_1BB0AE: #_2EE7u: db $93 ; play note G2
#_1BB0AF: #_2EE8u: db $9F ; play note G3
#_1BB0B0: #_2EE9u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Sub_2EEA:
#_1BB0B1: #_2EEAu: db $0C, $6D ; duration, params
#_1BB0B3: #_2EECu: db $A9 ; play note F4
#_1BB0B4: #_2EEDu: db $0C, $69 ; duration, params
#_1BB0B6: #_2EEFu: db $A9 ; play note F4
#_1BB0B7: #_2EF0u: db $A9 ; play note F4
#_1BB0B8: #_2EF1u: db $0C, $6D ; duration, params
#_1BB0BA: #_2EF3u: db $A9 ; play note F4
#_1BB0BB: #_2EF4u: db $0C, $69 ; duration, params
#_1BB0BD: #_2EF6u: db $A9 ; play note F4
#_1BB0BE: #_2EF7u: db $A9 ; play note F4
#_1BB0BF: #_2EF8u: db $0C, $6D ; duration, params
#_1BB0C1: #_2EFAu: db $A9 ; play note F4
#_1BB0C2: #_2EFBu: db $0C, $69 ; duration, params
#_1BB0C4: #_2EFDu: db $A9 ; play note F4
#_1BB0C5: #_2EFEu: db $A9 ; play note F4
#_1BB0C6: #_2EFFu: db $0C, $6D ; duration, params
#_1BB0C8: #_2F01u: db $A9 ; play note F4
#_1BB0C9: #_2F02u: db $0C, $69 ; duration, params
#_1BB0CB: #_2F04u: db $A9 ; play note F4
#_1BB0CC: #_2F05u: db $A9 ; play note F4
#_1BB0CD: #_2F06u: db $0C, $6D ; duration, params
#_1BB0CF: #_2F08u: db $A9 ; play note F4
#_1BB0D0: #_2F09u: db $0C, $69 ; duration, params
#_1BB0D2: #_2F0Bu: db $A9 ; play note F4
#_1BB0D3: #_2F0Cu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Sub_2F0D:
#_1BB0D4: #_2F0Du: db $24 ; duration
#_1BB0D5: #_2F0Eu: db $8C ; play note C2
#_1BB0D6: #_2F0Fu: db $8F ; play note Ds2
#_1BB0D7: #_2F10u: db $91 ; play note F2
#_1BB0D8: #_2F11u: db $94 ; play note Gs2
#_1BB0D9: #_2F12u: db $18 ; duration
#_1BB0DA: #_2F13u: db $93 ; play note G2
#_1BB0DB: #_2F14u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Sub_2F15:
#_1BB0DC: #_2F15u: db $92 ; play note Fs2
#_1BB0DD: #_2F16u: db $99 ; play note Cs3
#_1BB0DE: #_2F17u: db $9E ; play note Fs3
#_1BB0DF: #_2F18u: db $95 ; play note A2
#_1BB0E0: #_2F19u: db $9C ; play note E3
#_1BB0E1: #_2F1Au: db $A1 ; play note A3
#_1BB0E2: #_2F1Bu: db $97 ; play note B2
#_1BB0E3: #_2F1Cu: db $9E ; play note Fs3
#_1BB0E4: #_2F1Du: db $A3 ; play note B3
#_1BB0E5: #_2F1Eu: db $9A ; play note D3
#_1BB0E6: #_2F1Fu: db $A1 ; play note A3
#_1BB0E7: #_2F20u: db $A6 ; play note D4
#_1BB0E8: #_2F21u: db $99 ; play note Cs3
#_1BB0E9: #_2F22u: db $A5 ; play note Cs4
#_1BB0EA: #_2F23u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Sub_2F24:
#_1BB0EB: #_2F24u: db $24 ; duration
#_1BB0EC: #_2F25u: db $92 ; play note Fs2
#_1BB0ED: #_2F26u: db $95 ; play note A2
#_1BB0EE: #_2F27u: db $97 ; play note B2
#_1BB0EF: #_2F28u: db $9A ; play note D3
#_1BB0F0: #_2F29u: db $18 ; duration
#_1BB0F1: #_2F2Au: db $99 ; play note Cs3
#_1BB0F2: #_2F2Bu: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1F_Sub_2F2C:
#_1BB0F3: #_2F2Cu: db $0C, $6D ; duration, params
#_1BB0F5: #_2F2Eu: db $8F ; play note Ds2
#_1BB0F6: #_2F2Fu: db $96 ; play note As2
#_1BB0F7: #_2F30u: db $9B ; play note Ds3
#_1BB0F8: #_2F31u: db $9E ; play note Fs3
#_1BB0F9: #_2F32u: db $A5 ; play note Cs4
#_1BB0FA: #_2F33u: db $AA ; play note Fs4
#_1BB0FB: #_2F34u: db $AC ; play note Gs4
#_1BB0FC: #_2F35u: db $A7 ; play note Ds4
#_1BB0FD: #_2F36u: db $A0 ; play note Gs3
#_1BB0FE: #_2F37u: db $97 ; play note B2
#_1BB0FF: #_2F38u: db $9E ; play note Fs3
#_1BB100: #_2F39u: db $A3 ; play note B3
#_1BB101: #_2F3Au: db $96 ; play note As2
#_1BB102: #_2F3Bu: db $A2 ; play note As3
#_1BB103: #_2F3Cu: db $8E ; play note D2
#_1BB104: #_2F3Du: db $95 ; play note A2
#_1BB105: #_2F3Eu: db $9A ; play note D3
#_1BB106: #_2F3Fu: db $9D ; play note F3
#_1BB107: #_2F40u: db $A4 ; play note C4
#_1BB108: #_2F41u: db $A9 ; play note F4
#_1BB109: #_2F42u: db $AB ; play note G4
#_1BB10A: #_2F43u: db $A6 ; play note D4
#_1BB10B: #_2F44u: db $9F ; play note G3
#_1BB10C: #_2F45u: db $96 ; play note As2
#_1BB10D: #_2F46u: db $9D ; play note F3
#_1BB10E: #_2F47u: db $A2 ; play note As3
#_1BB10F: #_2F48u: db $95 ; play note A2
#_1BB110: #_2F49u: db $A1 ; play note A3
#_1BB111: #_2F4Au: db $8D ; play note Cs2
#_1BB112: #_2F4Bu: db $94 ; play note Gs2
#_1BB113: #_2F4Cu: db $99 ; play note Cs3
#_1BB114: #_2F4Du: db $9C ; play note E3
#_1BB115: #_2F4Eu: db $A3 ; play note B3
#_1BB116: #_2F4Fu: db $A8 ; play note E4
#_1BB117: #_2F50u: db $AA ; play note Fs4
#_1BB118: #_2F51u: db $A5 ; play note Cs4
#_1BB119: #_2F52u: db $A9 ; play note F4
#_1BB11A: #_2F53u: db $AC ; play note Gs4
#_1BB11B: #_2F54u: db $A7 ; play note Ds4
#_1BB11C: #_2F55u: db $A0 ; play note Gs3
#_1BB11D: #_2F56u: db $9F ; play note G3
#_1BB11E: #_2F57u: db $AB ; play note G4
#_1BB11F: #_2F58u: db $00 ; End

;===================================================================================================

Song1E_MeetingGanon:
#_1BB120: #_2F59u: dw Song1E_Segment0

Song1E_Loop:
#_1BB122: #_2F5Bu: dw Song1C_Segment1
#_1BB124: #_2F5Du: dw Song1C_Segment1
#_1BB126: #_2F5Fu: dw Song1C_Segment2
#_1BB128: #_2F61u: dw $00FF, Song1E_Loop ; Loop point
#_1BB12C: #_2F65u: dw $0000

Song1E_Segment0:
#_1BB12E: #_2F67u: dw Song1E_Segment0_Track0
#_1BB130: #_2F69u: dw Song1E_Segment0_Track1
#_1BB132: #_2F6Bu: dw Song1E_Segment0_Track2
#_1BB134: #_2F6Du: dw Song1E_Segment0_Track3
#_1BB136: #_2F6Fu: dw Song1E_Segment0_Track4
#_1BB138: #_2F71u: dw Song1E_Segment0_Track5
#_1BB13A: #_2F73u: dw $0000
#_1BB13C: #_2F75u: dw $0000

;---------------------------------------------------------------------------------------------------

Song1E_Segment0_Track0:
#_1BB13E: #_2F77u: db $FA, $19 ; set base percussion sample
#_1BB140: #_2F79u: db $E5, $C8 ; set song volume
#_1BB142: #_2F7Bu: db $F5, $FF, $28, $28 ; configure EON, EVOLL, EVOLR
#_1BB146: #_2F7Fu: db $F7, $02, $14, $02 ; configure EDL, EFB, FIR
#_1BB14A: #_2F83u: db $E7, $19 ; set song tempo
#_1BB14C: #_2F85u: db $E0, $09 ; set instrument - strings A
#_1BB14E: #_2F87u: db $ED, $C8 ; set channel volume
#_1BB150: #_2F89u: db $E3, $1A, $1C, $18 ; enable vibrato
#_1BB154: #_2F8Du: db $E1, $0C ; set panning - leaning left
#_1BB156: #_2F8Fu: db $08, $6D ; duration, params
#_1BB158: #_2F91u: db $B5 ; play note F5
#_1BB159: #_2F92u: db $10 ; duration
#_1BB15A: #_2F93u: db $B4 ; play note E5
#_1BB15B: #_2F94u: db $08 ; duration
#_1BB15C: #_2F95u: db $AF ; play note B4
#_1BB15D: #_2F96u: db $10 ; duration
#_1BB15E: #_2F97u: db $AE ; play note As4
#_1BB15F: #_2F98u: db $08 ; duration
#_1BB160: #_2F99u: db $A9 ; play note F4
#_1BB161: #_2F9Au: db $A8 ; play note E4
#_1BB162: #_2F9Bu: db $A3 ; play note B3
#_1BB163: #_2F9Cu: db $10 ; duration
#_1BB164: #_2F9Du: db $A2 ; play note As3
#_1BB165: #_2F9Eu: db $60 ; duration
#_1BB166: #_2F9Fu: db $C8 ; sustain current note
#_1BB167: #_2FA0u: db $00 ; End

;---------------------------------------------------------------------------------------------------

Song1E_Segment0_Track1:
#_1BB168: #_2FA1u: db $E0, $09 ; set instrument - strings A
#_1BB16A: #_2FA3u: db $ED, $C8 ; set channel volume
#_1BB16C: #_2FA5u: db $08, $6D ; duration, params
#_1BB16E: #_2FA7u: db $A9 ; play note F4
#_1BB16F: #_2FA8u: db $10 ; duration
#_1BB170: #_2FA9u: db $A8 ; play note E4
#_1BB171: #_2FAAu: db $08 ; duration
#_1BB172: #_2FABu: db $A3 ; play note B3
#_1BB173: #_2FACu: db $10 ; duration
#_1BB174: #_2FADu: db $A2 ; play note As3
#_1BB175: #_2FAEu: db $08 ; duration
#_1BB176: #_2FAFu: db $9D ; play note F3
#_1BB177: #_2FB0u: db $9C ; play note E3
#_1BB178: #_2FB1u: db $97 ; play note B2
#_1BB179: #_2FB2u: db $10 ; duration
#_1BB17A: #_2FB3u: db $96 ; play note As2
#_1BB17B: #_2FB4u: db $60 ; duration
#_1BB17C: #_2FB5u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1E_Segment0_Track2:
#_1BB17D: #_2FB6u: db $E0, $09 ; set instrument - strings A
#_1BB17F: #_2FB8u: db $ED, $C8 ; set channel volume
#_1BB181: #_2FBAu: db $08, $6D ; duration, params
#_1BB183: #_2FBCu: db $AF ; play note B4
#_1BB184: #_2FBDu: db $10 ; duration
#_1BB185: #_2FBEu: db $AE ; play note As4
#_1BB186: #_2FBFu: db $08 ; duration
#_1BB187: #_2FC0u: db $A9 ; play note F4
#_1BB188: #_2FC1u: db $10 ; duration
#_1BB189: #_2FC2u: db $A8 ; play note E4
#_1BB18A: #_2FC3u: db $08 ; duration
#_1BB18B: #_2FC4u: db $A3 ; play note B3
#_1BB18C: #_2FC5u: db $A2 ; play note As3
#_1BB18D: #_2FC6u: db $9D ; play note F3
#_1BB18E: #_2FC7u: db $10 ; duration
#_1BB18F: #_2FC8u: db $9C ; play note E3
#_1BB190: #_2FC9u: db $60 ; duration
#_1BB191: #_2FCAu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1E_Segment0_Track3:
#_1BB192: #_2FCBu: db $E0, $09 ; set instrument - strings A
#_1BB194: #_2FCDu: db $ED, $C8 ; set channel volume
#_1BB196: #_2FCFu: db $08, $6D ; duration, params
#_1BB198: #_2FD1u: db $AE ; play note As4
#_1BB199: #_2FD2u: db $10 ; duration
#_1BB19A: #_2FD3u: db $AD ; play note A4
#_1BB19B: #_2FD4u: db $08 ; duration
#_1BB19C: #_2FD5u: db $A8 ; play note E4
#_1BB19D: #_2FD6u: db $10 ; duration
#_1BB19E: #_2FD7u: db $A7 ; play note Ds4
#_1BB19F: #_2FD8u: db $08 ; duration
#_1BB1A0: #_2FD9u: db $A2 ; play note As3
#_1BB1A1: #_2FDAu: db $A1 ; play note A3
#_1BB1A2: #_2FDBu: db $9C ; play note E3
#_1BB1A3: #_2FDCu: db $10 ; duration
#_1BB1A4: #_2FDDu: db $9B ; play note Ds3
#_1BB1A5: #_2FDEu: db $60 ; duration
#_1BB1A6: #_2FDFu: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1E_Segment0_Track4:
#_1BB1A7: #_2FE0u: db $E0, $09 ; set instrument - strings A
#_1BB1A9: #_2FE2u: db $ED, $C8 ; set channel volume
#_1BB1AB: #_2FE4u: db $08, $6D ; duration, params
#_1BB1AD: #_2FE6u: db $9D ; play note F3
#_1BB1AE: #_2FE7u: db $10 ; duration
#_1BB1AF: #_2FE8u: db $9C ; play note E3
#_1BB1B0: #_2FE9u: db $08 ; duration
#_1BB1B1: #_2FEAu: db $97 ; play note B2
#_1BB1B2: #_2FEBu: db $10 ; duration
#_1BB1B3: #_2FECu: db $96 ; play note As2
#_1BB1B4: #_2FEDu: db $08 ; duration
#_1BB1B5: #_2FEEu: db $91 ; play note F2
#_1BB1B6: #_2FEFu: db $90 ; play note E2
#_1BB1B7: #_2FF0u: db $8B ; play note B1
#_1BB1B8: #_2FF1u: db $10 ; duration
#_1BB1B9: #_2FF2u: db $8A ; play note As1
#_1BB1BA: #_2FF3u: db $60 ; duration
#_1BB1BB: #_2FF4u: db $C8 ; sustain current note

;---------------------------------------------------------------------------------------------------

Song1E_Segment0_Track5:
#_1BB1BC: #_2FF5u: db $E0, $02 ; set instrument - timpani
#_1BB1BE: #_2FF7u: db $ED, $DC ; set channel volume
#_1BB1C0: #_2FF9u: db $08, $7D ; duration, params
#_1BB1C2: #_2FFBu: db $89 ; play note A1
#_1BB1C3: #_2FFCu: db $10 ; duration
#_1BB1C4: #_2FFDu: db $89 ; play note A1
#_1BB1C5: #_2FFEu: db $08 ; duration
#_1BB1C6: #_2FFFu: db $89 ; play note A1
#_1BB1C7: #_3000u: db $10 ; duration
#_1BB1C8: #_3001u: db $89 ; play note A1
#_1BB1C9: #_3002u: db $08 ; duration
#_1BB1CA: #_3003u: db $89 ; play note A1
#_1BB1CB: #_3004u: db $89 ; play note A1
#_1BB1CC: #_3005u: db $89 ; play note A1
#_1BB1CD: #_3006u: db $10 ; duration
#_1BB1CE: #_3007u: db $89 ; play note A1
#_1BB1CF: #_3008u: db $60, $68 ; duration, params
#_1BB1D1: #_300Au: db $C8 ; sustain current note
#_1BB1D2: #_300Bu: db $00 ; End

;===================================================================================================

base off

#_1BB1D3: dw $0000, SPC_ENGINE ; end of transfer

;===================================================================================================
; FREE ROM: 0x629
; including garbage
;===================================================================================================
GARBAGE_1BB1D7:
#_1BB1D7: db $C0, $00, $00, $00, $00, $01, $FF, $00, $00

;---------------------------------------------------------------------------------------------------

NULL_1BB1E0:
#_1BB1E0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB1E8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB1F0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB1F8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB200: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB208: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB210: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB218: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB220: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB228: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB230: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB238: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB240: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB248: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB250: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB258: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB260: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB268: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB270: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB278: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB280: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB288: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB290: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB298: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB2A0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB2A8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB2B0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB2B8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB2C0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB2C8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB2D0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB2D8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB2E0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB2E8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB2F0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB2F8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB300: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB308: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB310: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB318: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB320: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB328: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB330: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB338: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB340: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB348: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB350: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB358: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB360: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB368: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB370: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB378: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB380: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB388: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB390: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB398: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB3A0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB3A8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB3B0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB3B8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB3C0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB3C8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB3D0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB3D8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB3E0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB3E8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB3F0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB3F8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB400: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB408: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB410: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB418: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB420: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB428: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB430: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB438: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB440: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB448: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB450: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB458: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB460: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB468: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB470: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB478: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB480: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB488: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB490: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB498: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB4A0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB4A8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB4B0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB4B8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB4C0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB4C8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB4D0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB4D8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB4E0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB4E8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB4F0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB4F8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB500: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB508: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB510: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB518: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB520: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB528: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB530: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB538: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB540: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB548: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB550: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB558: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB560: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB568: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB570: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB578: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB580: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB588: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB590: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB598: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB5A0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB5A8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB5B0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB5B8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB5C0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB5C8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB5D0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB5D8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB5E0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB5E8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB5F0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB5F8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB600: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB608: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB610: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB618: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB620: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB628: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB630: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB638: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB640: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB648: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB650: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB658: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB660: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB668: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB670: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB678: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB680: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB688: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB690: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB698: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB6A0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB6A8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB6B0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB6B8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB6C0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB6C8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB6D0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB6D8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB6E0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB6E8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB6F0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB6F8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB700: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB708: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB710: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB718: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB720: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB728: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB730: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB738: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB740: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB748: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB750: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB758: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB760: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB768: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB770: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB778: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB780: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB788: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB790: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB798: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB7A0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB7A8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB7B0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB7B8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB7C0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB7C8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB7D0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB7D8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB7E0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB7E8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB7F0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BB7F8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

pool Overworld_GetPitDestination

.map16
#_1BB800: dw $0CE0 ; Skull Woods big chest
#_1BB802: dw $124E ; Skull Woods compass chest
#_1BB804: dw $12CE ; Skull Woods compass chest
#_1BB806: dw $1162 ; Skull Woods bumper room
#_1BB808: dw $11E2 ; Skull Woods bumper room
#_1BB80A: dw $073C ; Skull Woods middle pit
#_1BB80C: dw $07BC ; Skull Woods middle pit
#_1BB80E: dw $0CE0 ; Lost Woods HP
#_1BB810: dw $003C ; Ganon
#_1BB812: dw $00BE ; Ganon
#_1BB814: dw $003E ; Ganon
#_1BB816: dw $0388 ; Graveyard big faiy
#_1BB818: dw $0170 ; Castle secret passage
#_1BB81A: dw $03A4 ; Magic bat
#_1BB81C: dw $0424 ; Magic bat
#_1BB81E: dw $0518 ; Lumberjack tree
#_1BB820: dw $028A ; Kakariko well
#_1BB822: dw $020A ; Kakariko well
#_1BB824: dw $0108 ; Back of sewers

.screen
#_1BB826: dw $0040 ; OW 40 - Skull Woods big chest
#_1BB828: dw $0040 ; OW 40 - Skull Woods compass chest
#_1BB82A: dw $0040 ; OW 40 - Skull Woods compass chest
#_1BB82C: dw $0040 ; OW 40 - Skull Woods bumper room
#_1BB82E: dw $0040 ; OW 40 - Skull Woods bumper room
#_1BB830: dw $0040 ; OW 40 - Skull Woods middle pit
#_1BB832: dw $0040 ; OW 40 - Skull Woods middle pit
#_1BB834: dw $0000 ; OW 00 - Lost Woods HP
#_1BB836: dw $005B ; OW 5B - Ganon
#_1BB838: dw $005B ; OW 5B - Ganon
#_1BB83A: dw $005B ; OW 5B - Ganon
#_1BB83C: dw $0015 ; OW 15 - Graveyard big faiy
#_1BB83E: dw $001B ; OW 1B - Castle secret passage
#_1BB840: dw $0022 ; OW 22 - Magic bat
#_1BB842: dw $0022 ; OW 22 - Magic bat
#_1BB844: dw $0002 ; OW 02 - Lumberjack tree
#_1BB846: dw $0018 ; OW 18 - Kakariko well
#_1BB848: dw $0018 ; OW 18 - Kakariko well
#_1BB84A: dw $0014 ; OW 14 - Back of sewers

.entrance
#_1BB84C: db $76 ; ENTRANCE 76 - Skull Woods big chest
#_1BB84D: db $77 ; ENTRANCE 77 - Skull Woods compass chest
#_1BB84E: db $77 ; ENTRANCE 77 - Skull Woods compass chest
#_1BB84F: db $78 ; ENTRANCE 78 - Skull Woods bumper room
#_1BB850: db $78 ; ENTRANCE 78 - Skull Woods bumper room
#_1BB851: db $79 ; ENTRANCE 79 - Skull Woods middle pit
#_1BB852: db $79 ; ENTRANCE 79 - Skull Woods middle pit
#_1BB853: db $7A ; ENTRANCE 7A - Lost Woods HP
#_1BB854: db $7B ; ENTRANCE 7B - Ganon
#_1BB855: db $7B ; ENTRANCE 7B - Ganon
#_1BB856: db $7B ; ENTRANCE 7B - Ganon
#_1BB857: db $7C ; ENTRANCE 7C - Graveyard big faiy
#_1BB858: db $7D ; ENTRANCE 7D - Castle secret passage
#_1BB859: db $7E ; ENTRANCE 7E - Magic bat
#_1BB85A: db $7E ; ENTRANCE 7E - Magic bat
#_1BB85B: db $7F ; ENTRANCE 7F - Lumberjack tree
#_1BB85C: db $80 ; ENTRANCE 80 - Kakariko well
#_1BB85D: db $80 ; ENTRANCE 80 - Kakariko well
#_1BB85E: db $81 ; ENTRANCE 81 - Back of sewers
#_1BB85F: db $82 ; ENTRANCE 82 - Houlihan room

pool off

;---------------------------------------------------------------------------------------------------

Overworld_GetPitDestination:
#_1BB860: PHB
#_1BB861: PHK
#_1BB862: PLB

; Calculate map16 offset
#_1BB863: REP #$31

; Y portion
#_1BB865: LDA.b $20
#_1BB867: AND.w #$FFF8
#_1BB86A: STA.b $00

#_1BB86C: SEC
#_1BB86D: SBC.w $0708
#_1BB870: AND.w $070A
#_1BB873: ASL A
#_1BB874: ASL A
#_1BB875: ASL A
#_1BB876: STA.b $06

; X portion
#_1BB878: LDA.b $22
#_1BB87A: AND.w #$FFF8
#_1BB87D: LSR A
#_1BB87E: LSR A
#_1BB87F: LSR A
#_1BB880: STA.b $02

#_1BB882: SEC
#_1BB883: SBC.w $070C
#_1BB886: AND.w $070E
#_1BB889: CLC
#_1BB88A: ADC.b $06
#_1BB88C: STA.b $00

;---------------------------------------------------------------------------------------------------

; Loop each entrance
#_1BB88E: LDX.w #$0024

.next_entrance
; Check map16 and screen for a match
#_1BB891: LDA.b $00
#_1BB893: CMP.w .map16,X
#_1BB896: BNE .map16mismatch

#_1BB898: LDA.w $040A
#_1BB89B: CMP.w .screen,X
#_1BB89E: BEQ .found_entrance

.map16mismatch
#_1BB8A0: DEX
#_1BB8A1: DEX
#_1BB8A2: BPL .next_entrance

;---------------------------------------------------------------------------------------------------

; Default to Houlihan entrance
#_1BB8A4: LDX.w #$0026

; Set to light world
#_1BB8A7: SEP #$20

#_1BB8A9: LDA.b #$00
#_1BB8AB: STA.l $7EF3CA

;---------------------------------------------------------------------------------------------------

.found_entrance
#_1BB8AF: SEP #$30

#_1BB8B1: TXA
#_1BB8B2: LSR A
#_1BB8B3: TAX

#_1BB8B4: LDA.w .entrance,X
#_1BB8B7: STA.w $010E
#_1BB8BA: STZ.w $010F

#_1BB8BD: PLB

#_1BB8BE: RTL

;===================================================================================================
; TODO format and name
;===================================================================================================
ValidDoorTypes_low:
#_1BB8BF: dw $00FE, $00C5, $00FE, $0114
#_1BB8C7: dw $0115, $0175, $0156, $00F5
#_1BB8CF: dw $00E2, $01EF, $0119, $00FE
#_1BB8D7: dw $0172, $0177, $013F, $0172
#_1BB8DF: dw $0112, $0161, $0172, $014C
#_1BB8E7: dw $0156, $01EF, $00FE, $00FE
#_1BB8EF: dw $00FE, $010B, $0173, $0143
#_1BB8F7: dw $0149, $0175, $0103, $0100
#_1BB8FF: dw $01CC, $015E, $0167, $0128
#_1BB907: dw $0131, $0112, $016D, $0163
#_1BB90F: dw $0173, $00FE, $0113, $0177

;---------------------------------------------------------------------------------------------------

ValidDoorTypes_high:
#_1BB917: dw $014A, $00C4, $014F, $0115
#_1BB91F: dw $0114, $0174, $0155, $00F5
#_1BB927: dw $00EE, $01EB, $0118, $0146
#_1BB92F: dw $0171, $0155, $0137, $0174
#_1BB937: dw $0173, $0121, $0164, $0155
#_1BB93F: dw $0157, $0128, $0114, $0123
#_1BB947: dw $0113, $0109, $0118, $0161
#_1BB94F: dw $0149, $0117, $0174, $0101
#_1BB957: dw $01CC, $0131, $0051, $014E
#_1BB95F: dw $0131, $0112, $017A, $0163
#_1BB967: dw $0172, $01BD, $0152, $0167

;---------------------------------------------------------------------------------------------------

Overworld_EntranceScreens:
#_1BB96F: dw $002C ; 0x00 - OW 2C  - Link's house
#_1BB971: dw $0013 ; 0x01 - OW 13  - Sanctuary
#_1BB973: dw $001B ; 0x02 - OW 1B  - Castle west wing
#_1BB975: dw $001B ; 0x03 - OW 1B  - Castle lobby
#_1BB977: dw $001B ; 0x04 - OW 1B  - Castle east wing
#_1BB979: dw $000A ; 0x05 - OW 0A  - Old man cave west
#_1BB97B: dw $0003 ; 0x06 - OW 03  - Old man cave east
#_1BB97D: dw $001E ; 0x07 - OW 1E  - Eastern Palace
#_1BB97F: dw $0030 ; 0x08 - OW 30  - Desert Palace lobby
#_1BB981: dw $0030 ; 0x09 - OW 30  - Desert Palace east
#_1BB983: dw $0030 ; 0x0A - OW 30  - Desert Palace west
#_1BB985: dw $0030 ; 0x0B - OW 30  - Desert Palace back
#_1BB987: dw $0018 ; 0x0C - OW 18  - Sahasrahla's house west
#_1BB989: dw $0018 ; 0x0D - OW 18  - Sahasrahla's house east
#_1BB98B: dw $0028 ; 0x0E - OW 28  - Angry bro west
#_1BB98D: dw $0029 ; 0x0F - OW 29  - Angry bro east
#_1BB98F: dw $0022 ; 0x10 - OW 22  - Magic bat
#_1BB991: dw $0002 ; 0x11 - OW 02  - Lumberjack cave
#_1BB993: dw $0045 ; 0x12 - OW 45  - Super bunny bottom
#_1BB995: dw $0045 ; 0x13 - OW 45  - Super bunny top
#_1BB997: dw $0045 ; 0x14 - OW 45  - Turtle Rock laser pots
#_1BB999: dw $004A ; 0x15 - OW 4A  - Bumper cave bottom
#_1BB99B: dw $004A ; 0x16 - OW 4A  - Bumper cave top
#_1BB99D: dw $0045 ; 0x17 - OW 45  - Turtle Rock laser bridge
#_1BB99F: dw $0045 ; 0x18 - OW 45  - Turtle Rock big chest
#_1BB9A1: dw $0005 ; 0x19 - OW 05  - East Death Mountain useless bottom
#_1BB9A3: dw $0005 ; 0x1A - OW 05  - East Death Mountain useless top
#_1BB9A5: dw $0005 ; 0x1B - OW 05  - Spiral cave exit
#_1BB9A7: dw $0005 ; 0x1C - OW 05  - Spiral cave top
#_1BB9A9: dw $0005 ; 0x1D - OW 05  - Paradox cave bottom
#_1BB9AB: dw $0005 ; 0x1E - OW 05  - Paradox cave middle
#_1BB9AD: dw $0005 ; 0x1F - OW 05  - Paradox cave top
#_1BB9AF: dw $0003 ; 0x20 - OW 03  - Kiki cave west
#_1BB9B1: dw $0003 ; 0x21 - OW 03  - Kiki cave east
#_1BB9B3: dw $0003 ; 0x22 - OW 03  - Spectacle rock
#_1BB9B5: dw $001B ; 0x23 - OW 1B  - Agahnim's Tower
#_1BB9B7: dw $007B ; 0x24 - OW 7B  - Swamp Palace
#_1BB9B9: dw $005E ; 0x25 - OW 5E  - Palace of Darkness
#_1BB9BB: dw $0070 ; 0x26 - OW 70  - Misery Mire
#_1BB9BD: dw $0040 ; 0x27 - OW 40  - Skull Woods west
#_1BB9BF: dw $0040 ; 0x28 - OW 40  - Skull Woods mummy statue
#_1BB9C1: dw $0040 ; 0x29 - OW 40  - Skull Woods big chest
#_1BB9C3: dw $0040 ; 0x2A - OW 40  - Skull Woods back
#_1BB9C5: dw $0000 ; 0x2B - OW 00  - Lost Woods hideout
#_1BB9C7: dw $0075 ; 0x2C - OW 75  - Ice Palace
#_1BB9C9: dw $000A ; 0x2D - OW 0A  - Death Mountain exit west
#_1BB9CB: dw $0003 ; 0x2E - OW 03  - Death Mountain exit from summit
#_1BB9CD: dw $0003 ; 0x2F - OW 03  - Old man home cave west
#_1BB9CF: dw $0003 ; 0x30 - OW 03  - Old man home cave east
#_1BB9D1: dw $001B ; 0x31 - OW 1B  - Hyrule Castle secret entrance
#_1BB9D3: dw $0003 ; 0x32 - OW 03  - Tower of Hera
#_1BB9D5: dw $0058 ; 0x33 - OW 58  - Thieves' Town
#_1BB9D7: dw $0047 ; 0x34 - OW 47  - Turtle Rock
#_1BB9D9: dw $005B ; 0x35 - OW 5B  - Pyramid drop
#_1BB9DB: dw $0043 ; 0x36 - OW 43  - Ganon's Tower
#_1BB9DD: dw $0015 ; 0x37 - OW 15  - Graveyard fairy
#_1BB9DF: dw $0018 ; 0x38 - OW 18  - Kakariko well
#_1BB9E1: dw $0045 ; 0x39 - OW 45  - Hookshot cave bottom
#_1BB9E3: dw $0045 ; 0x3A - OW 45  - Hookshot cave top
#_1BB9E5: dw $0000 ; 0x3B - OW 00  - Lost Woods chest game
#_1BB9E7: dw $0074 ; 0x3C - OW 74  - Swamp thief cave hideout
#_1BB9E9: dw $0018 ; 0x3D - OW 18  - Eastern snitch house
#_1BB9EB: dw $0018 ; 0x3E - OW 18  - Cucco easter egg
#_1BB9ED: dw $0018 ; 0x3F - OW 18  - Sick kid
#_1BB9EF: dw $0043 ; 0x40 - OW 43  - Spike cave
#_1BB9F1: dw $0018 ; 0x41 - OW 18  - Tavern front
#_1BB9F3: dw $0018 ; 0x42 - OW 18  - Tavern back
#_1BB9F5: dw $0018 ; 0x43 - OW 18  - Kakariko Inn
#_1BB9F7: dw $001E ; 0x44 - OW 1E  - Sahasrahla's hideout
#_1BB9F9: dw $0018 ; 0x45 - OW 18  - Kakariko shop
#_1BB9FB: dw $0058 ; 0x46 - OW 58  - Village of Outcasts chest game
#_1BB9FD: dw $0058 ; 0x47 - OW 58  - Village of Outcasts bombable hut
#_1BB9FF: dw $0029 ; 0x48 - OW 29  - Library
#_1BBA01: dw $0018 ; 0x49 - OW 18  - Kakariko bombable hut
#_1BBA03: dw $0018 ; 0x4A - OW 18  - Chicken hut
#_1BBA05: dw $0016 ; 0x4B - OW 16  - Potion shop
#_1BBA07: dw $0030 ; 0x4C - OW 30  - Aginah's cave
#_1BBA09: dw $003B ; 0x4D - OW 3B  - Dam
#_1BBA0B: dw $0005 ; 0x4E - OW 05  - Mimic cave
#_1BBA0D: dw $0005 ; 0x4F - OW 05  - East Death Mountain fairy pond cave
#_1BBA0F: dw $0032 ; 0x50 - OW 32  - Circle of bushes heart piece cave
#_1BBA11: dw $0014 ; 0x51 - OW 14  - Graveyard ledge heart piece cave
#_1BBA13: dw $006C ; 0x52 - OW 6C  - Bomb shop
#_1BBA15: dw $0058 ; 0x53 - OW 58  - C-shaped house
#_1BBA17: dw $002F ; 0x54 - OW 2F  - Southeast of Eastern Ruins fairy cave
#_1BBA19: dw $0070 ; 0x55 - OW 70  - Mire big fairy
#_1BBA1B: dw $0042 ; 0x56 - OW 42  - Dark World lumberjacks shop
#_1BBA1D: dw $0035 ; 0x57 - OW 35  - Lake Hylia shop
#_1BBA1F: dw $0069 ; 0x58 - OW 69  - Arrow game
#_1BBA21: dw $0053 ; 0x59 - OW 53  - Dark World sanctuary cave
#_1BBA23: dw $0014 ; 0x5A - OW 14  - King's tomb
#_1BBA25: dw $000F ; 0x5B - OW 0F  - Waterfall of Wishing
#_1BBA27: dw $0035 ; 0x5C - OW 35  - Pond of Happiness
#_1BBA29: dw $002E ; 0x5D - OW 2E  - Big fairy (Eastern Ruins)
#_1BBA2B: dw $0070 ; 0x5E - OW 70  - Mire shed
#_1BBA2D: dw $0058 ; 0x5F - OW 58  - Village of Outcasts shop
#_1BBA2F: dw $0018 ; 0x60 - OW 18  - Blind's hut
#_1BBA31: dw $0070 ; 0x61 - OW 70  - Watto's cave
#_1BBA33: dw $005B ; 0x62 - OW 5B  - Fat Fairy
#_1BBA35: dw $0022 ; 0x63 - OW 22  - Smithy's house
#_1BBA37: dw $0011 ; 0x64 - OW 11  - Light World fortune teller (Kakariko)
#_1BBA39: dw $0051 ; 0x65 - OW 51  - Dark World fortune teller
#_1BBA3B: dw $0029 ; 0x66 - OW 29  - South of Kakariko chest game
#_1BBA3D: dw $005E ; 0x67 - OW 5E  - Broccoli's house
#_1BBA3F: dw $006F ; 0x68 - OW 6F  - Bird hint NPC cave
#_1BBA41: dw $0077 ; 0x69 - OW 77  - Hamburger Helper's cave
#_1BBA43: dw $0037 ; 0x6A - OW 37  - Ice rod cave golden bee
#_1BBA45: dw $0034 ; 0x6B - OW 34  - Big fairy (South of Link's house)
#_1BBA47: dw $006E ; 0x6C - OW 6E  - Big fairy (South of Kiki)
#_1BBA49: dw $0045 ; 0x6D - OW 45  - Dark Death Mountain shop
#_1BBA4B: dw $0056 ; 0x6E - OW 56  - Dark World witch shop
#_1BBA4D: dw $0043 ; 0x6F - OW 43  - Dark West Death Mountain big fairy
#_1BBA4F: dw $0030 ; 0x70 - OW 30  - Aginah's cave
#_1BBA51: dw $003A ; 0x71 - OW 3A  - Desert big fairy
#_1BBA53: dw $0035 ; 0x72 - OW 35  - Light World fortune teller (Lake Hylia)
#_1BBA55: dw $0075 ; 0x73 - OW 75  - Dark Lake Hylia shop
#_1BBA57: dw $005A ; 0x74 - OW 5A  - East of Village of Outcasts shop
#_1BBA59: dw $0002 ; 0x75 - OW 02  - Bumpkin residency
#_1BBA5B: dw $002B ; 0x76 - OW 2B  - Link's house bonk rocks fairy pond
#_1BBA5D: dw $006B ; 0x77 - OW 6B  - Bomb shop bonk rocks fairy pond
#_1BBA5F: dw $003A ; 0x78 - OW 3A  - Desert thief hideout
#_1BBA61: dw $0013 ; 0x79 - OW 13  - Bonk rocks heart piece cave
#_1BBA63: dw $0037 ; 0x7A - OW 37  - Lake Hylia falls thief hideout
#_1BBA65: dw $0077 ; 0x7B - OW 77  - Dark Lake Hylia falls spike cave
#_1BBA67: dw $0035 ; 0x7C - OW 35  - Mini moldorm cave
#_1BBA69: dw $0030 ; 0x7D - OW 30  - Checkerboard cave heart piece
#_1BBA6B: dw $0062 ; 0x7E - OW 62  - Stake puzzle heart piece cave
#_1BBA6D: dw $0037 ; 0x7F - OW 37  - Ice rod cave
#_1BBA6F: dw $0077 ; 0x80 - OW 77  - Dark ice rod big fairy

;---------------------------------------------------------------------------------------------------

Overworld_EntranceTileIndex:
#_1BBA71: dw $0796 ; 0x00 - Link's house
#_1BBA73: dw $01AA ; 0x01 - Sanctuary
#_1BBA75: dw $0124 ; 0x02 - Castle west wing
#_1BBA77: dw $07BE ; 0x03 - Castle lobby
#_1BBA79: dw $0158 ; 0x04 - Castle east wing
#_1BBA7B: dw $0634 ; 0x05 - Old man cave west
#_1BBA7D: dw $178E ; 0x06 - Old man cave east
#_1BBA7F: dw $016A ; 0x07 - Eastern Palace
#_1BBA81: dw $05A4 ; 0x08 - Desert Palace lobby
#_1BBA83: dw $0538 ; 0x09 - Desert Palace east
#_1BBA85: dw $0510 ; 0x0A - Desert Palace west
#_1BBA87: dw $01A4 ; 0x0B - Desert Palace back
#_1BBA89: dw $054C ; 0x0C - Sahasrahla's house west
#_1BBA8B: dw $0554 ; 0x0D - Sahasrahla's house east
#_1BBA8D: dw $0B36 ; 0x0E - Angry bro west
#_1BBA8F: dw $0B06 ; 0x0F - Angry bro east
#_1BBA91: dw $06A0 ; 0x10 - Magic bat
#_1BBA93: dw $03A8 ; 0x11 - Lumberjack cave
#_1BBA95: dw $126E ; 0x12 - Super bunny bottom
#_1BBA97: dw $07F6 ; 0x13 - Super bunny top
#_1BBA99: dw $0B56 ; 0x14 - Turtle Rock laser pots
#_1BBA9B: dw $0634 ; 0x15 - Bumper cave bottom
#_1BBA9D: dw $0336 ; 0x16 - Bumper cave top
#_1BBA9F: dw $0E62 ; 0x17 - Turtle Rock laser bridge
#_1BBAA1: dw $0B6E ; 0x18 - Turtle Rock big chest
#_1BBAA3: dw $1162 ; 0x19 - East Death Mountain useless bottom
#_1BBAA5: dw $0E62 ; 0x1A - East Death Mountain useless top
#_1BBAA7: dw $1058 ; 0x1B - Spiral cave exit
#_1BBAA9: dw $0B56 ; 0x1C - Spiral cave top
#_1BBAAB: dw $1274 ; 0x1D - Paradox cave bottom
#_1BBAAD: dw $1B78 ; 0x1E - Paradox cave middle
#_1BBAAF: dw $07F6 ; 0x1F - Paradox cave top
#_1BBAB1: dw $1128 ; 0x20 - Kiki cave west
#_1BBAB3: dw $1238 ; 0x21 - Kiki cave east
#_1BBAB5: dw $0CB8 ; 0x22 - Spectacle rock
#_1BBAB7: dw $02BE ; 0x23 - Agahnim's Tower
#_1BBAB9: dw $072E ; 0x24 - Swamp Palace
#_1BBABB: dw $01EA ; 0x25 - Palace of Darkness
#_1BBABD: dw $06A4 ; 0x26 - Misery Mire
#_1BBABF: dw $101C ; 0x27 - Skull Woods west
#_1BBAC1: dw $1248 ; 0x28 - Skull Woods mummy statue
#_1BBAC3: dw $12DC ; 0x29 - Skull Woods big chest
#_1BBAC5: dw $0612 ; 0x2A - Skull Woods back
#_1BBAC7: dw $12DC ; 0x2B - Lost Woods hideout
#_1BBAC9: dw $0E56 ; 0x2C - Ice Palace
#_1BBACB: dw $0336 ; 0x2D - Death Mountain exit west
#_1BBACD: dw $1108 ; 0x2E - Death Mountain exit from summit
#_1BBACF: dw $1DA4 ; 0x2F - Old man home cave west
#_1BBAD1: dw $1450 ; 0x30 - Old man home cave east
#_1BBAD3: dw $06D8 ; 0x31 - Hyrule Castle secret entrance
#_1BBAD5: dw $03DE ; 0x32 - Tower of Hera
#_1BBAD7: dw $0DBE ; 0x33 - Thieves' Town
#_1BBAD9: dw $09A0 ; 0x34 - Turtle Rock
#_1BBADB: dw $0D9C ; 0x35 - Pyramid drop
#_1BBADD: dw $01DE ; 0x36 - Ganon's Tower
#_1BBADF: dw $0294 ; 0x37 - Graveyard fairy
#_1BBAE1: dw $0616 ; 0x38 - Kakariko well
#_1BBAE3: dw $0868 ; 0x39 - Hookshot cave bottom
#_1BBAE5: dw $01D8 ; 0x3A - Hookshot cave top
#_1BBAE7: dw $00DE ; 0x3B - Lost Woods chest game
#_1BBAE9: dw $0330 ; 0x3C - Swamp thief cave hideout
#_1BBAEB: dw $0D68 ; 0x3D - Eastern snitch house
#_1BBAED: dw $0B18 ; 0x3E - Cucco easter egg
#_1BBAEF: dw $144E ; 0x3F - Sick kid
#_1BBAF1: dw $1264 ; 0x40 - Spike cave
#_1BBAF3: dw $1BD0 ; 0x41 - Tavern front
#_1BBAF5: dw $18D0 ; 0x42 - Tavern back
#_1BBAF7: dw $13E6 ; 0x43 - Kakariko Inn
#_1BBAF9: dw $099E ; 0x44 - Sahasrahla's hideout
#_1BBAFB: dw $1A36 ; 0x45 - Kakariko shop
#_1BBAFD: dw $0B18 ; 0x46 - Village of Outcasts chest game
#_1BBAFF: dw $1A36 ; 0x47 - Village of Outcasts bombable hut
#_1BBB01: dw $038E ; 0x48 - Library
#_1BBB03: dw $1B8C ; 0x49 - Kakariko bombable hut
#_1BBB05: dw $14B0 ; 0x4A - Chicken hut
#_1BBB07: dw $0A18 ; 0x4B - Potion shop
#_1BBB09: dw $0964 ; 0x4C - Aginah's cave
#_1BBB0B: dw $072E ; 0x4D - Dam
#_1BBB0D: dw $0B6E ; 0x4E - Mimic cave
#_1BBB0F: dw $126E ; 0x4F - East Death Mountain fairy pond cave
#_1BBB11: dw $0906 ; 0x50 - Circle of bushes heart piece cave
#_1BBB13: dw $02A2 ; 0x51 - Graveyard ledge heart piece cave
#_1BBB15: dw $0796 ; 0x52 - Bomb shop
#_1BBB17: dw $0D68 ; 0x53 - C-shaped house
#_1BBB19: dw $0934 ; 0x54 - Southeast of Eastern Ruins fairy cave
#_1BBB1B: dw $0636 ; 0x55 - Mire big fairy
#_1BBB1D: dw $06AA ; 0x56 - Dark World lumberjacks shop
#_1BBB1F: dw $01B2 ; 0x57 - Lake Hylia shop
#_1BBB21: dw $092C ; 0x58 - Arrow game
#_1BBB23: dw $02AA ; 0x59 - Dark World sanctuary cave
#_1BBB25: dw $05B2 ; 0x5A - King's tomb
#_1BBB27: dw $008C ; 0x5B - Waterfall of Wishing
#_1BBB29: dw $0CD4 ; 0x5C - Pond of Happiness
#_1BBB2B: dw $0224 ; 0x5D - Big fairy (Eastern Ruins)
#_1BBB2D: dw $0612 ; 0x5E - Mire shed
#_1BBB2F: dw $13E6 ; 0x5F - Village of Outcasts shop
#_1BBB31: dw $0540 ; 0x60 - Blind's hut
#_1BBB33: dw $0964 ; 0x61 - Watto's cave
#_1BBB35: dw $0DAE ; 0x62 - Fat Fairy
#_1BBB37: dw $039A ; 0x63 - Smithy's house
#_1BBB39: dw $089E ; 0x64 - Light World fortune teller (Kakariko)
#_1BBB3B: dw $089E ; 0x65 - Dark World fortune teller
#_1BBB3D: dw $092C ; 0x66 - South of Kakariko chest game
#_1BBB3F: dw $0FB2 ; 0x67 - Broccoli's house
#_1BBB41: dw $0934 ; 0x68 - Bird hint NPC cave
#_1BBB43: dw $0212 ; 0x69 - Hamburger Helper's cave
#_1BBB45: dw $0212 ; 0x6A - Ice rod cave golden bee
#_1BBB47: dw $0330 ; 0x6B - Big fairy (South of Link's house)
#_1BBB49: dw $0224 ; 0x6C - Big fairy (South of Kiki)
#_1BBB4B: dw $1274 ; 0x6D - Dark Death Mountain shop
#_1BBB4D: dw $0A9A ; 0x6E - Dark World witch shop
#_1BBB4F: dw $178E ; 0x6F - Dark West Death Mountain big fairy
#_1BBB51: dw $0964 ; 0x70 - Aginah's cave
#_1BBB53: dw $018C ; 0x71 - Desert big fairy
#_1BBB55: dw $060A ; 0x72 - Light World fortune teller (Lake Hylia)
#_1BBB57: dw $060A ; 0x73 - Dark Lake Hylia shop
#_1BBB59: dw $0A28 ; 0x74 - East of Village of Outcasts shop
#_1BBB5B: dw $072A ; 0x75 - Bumpkin residency
#_1BBB5D: dw $0330 ; 0x76 - Link's house bonk rocks fairy pond
#_1BBB5F: dw $0330 ; 0x77 - Bomb shop bonk rocks fairy pond
#_1BBB61: dw $0A1E ; 0x78 - Desert thief hideout
#_1BBB63: dw $0506 ; 0x79 - Bonk rocks heart piece cave
#_1BBB65: dw $040C ; 0x7A - Lake Hylia falls thief hideout
#_1BBB67: dw $040C ; 0x7B - Dark Lake Hylia falls spike cave
#_1BBB69: dw $178C ; 0x7C - Mini moldorm cave
#_1BBB6B: dw $0358 ; 0x7D - Checkerboard cave heart piece
#_1BBB6D: dw $0D20 ; 0x7E - Stake puzzle heart piece cave
#_1BBB6F: dw $0208 ; 0x7F - Ice rod cave
#_1BBB71: dw $0208 ; 0x80 - Dark ice rod big fairy

;---------------------------------------------------------------------------------------------------

Overworld_Entrance_ID:
#_1BBB73: db $01 ; 0x00 - ENTRANCE 01 - Link's house
#_1BBB74: db $02 ; 0x01 - ENTRANCE 02 - Sanctuary
#_1BBB75: db $03 ; 0x02 - ENTRANCE 03 - Castle west wing
#_1BBB76: db $04 ; 0x03 - ENTRANCE 04 - Castle lobby
#_1BBB77: db $05 ; 0x04 - ENTRANCE 05 - Castle east wing
#_1BBB78: db $06 ; 0x05 - ENTRANCE 06 - Old man cave west
#_1BBB79: db $07 ; 0x06 - ENTRANCE 07 - Old man cave east
#_1BBB7A: db $08 ; 0x07 - ENTRANCE 08 - Eastern Palace
#_1BBB7B: db $09 ; 0x08 - ENTRANCE 09 - Desert Palace lobby
#_1BBB7C: db $0A ; 0x09 - ENTRANCE 0A - Desert Palace east
#_1BBB7D: db $0B ; 0x0A - ENTRANCE 0B - Desert Palace west
#_1BBB7E: db $0C ; 0x0B - ENTRANCE 0C - Desert Palace back
#_1BBB7F: db $0D ; 0x0C - ENTRANCE 0D - Sahasrahla's house west
#_1BBB80: db $0E ; 0x0D - ENTRANCE 0E - Sahasrahla's house east
#_1BBB81: db $0F ; 0x0E - ENTRANCE 0F - Angry bro west
#_1BBB82: db $10 ; 0x0F - ENTRANCE 10 - Angry bro east
#_1BBB83: db $11 ; 0x10 - ENTRANCE 11 - Magic bat
#_1BBB84: db $12 ; 0x11 - ENTRANCE 12 - Lumberjack cave
#_1BBB85: db $13 ; 0x12 - ENTRANCE 13 - Super bunny bottom
#_1BBB86: db $14 ; 0x13 - ENTRANCE 14 - Super bunny top
#_1BBB87: db $15 ; 0x14 - ENTRANCE 15 - Turtle Rock laser pots
#_1BBB88: db $16 ; 0x15 - ENTRANCE 16 - Bumper cave bottom
#_1BBB89: db $17 ; 0x16 - ENTRANCE 17 - Bumper cave top
#_1BBB8A: db $18 ; 0x17 - ENTRANCE 18 - Turtle Rock laser bridge
#_1BBB8B: db $19 ; 0x18 - ENTRANCE 19 - Turtle Rock big chest
#_1BBB8C: db $1A ; 0x19 - ENTRANCE 1A - East Death Mountain useless bottom
#_1BBB8D: db $1B ; 0x1A - ENTRANCE 1B - East Death Mountain useless top
#_1BBB8E: db $1C ; 0x1B - ENTRANCE 1C - Spiral cave exit
#_1BBB8F: db $1D ; 0x1C - ENTRANCE 1D - Spiral cave top
#_1BBB90: db $1E ; 0x1D - ENTRANCE 1E - Paradox cave bottom
#_1BBB91: db $1F ; 0x1E - ENTRANCE 1F - Paradox cave middle
#_1BBB92: db $20 ; 0x1F - ENTRANCE 20 - Paradox cave top
#_1BBB93: db $21 ; 0x20 - ENTRANCE 21 - Kiki cave west
#_1BBB94: db $22 ; 0x21 - ENTRANCE 22 - Kiki cave east
#_1BBB95: db $23 ; 0x22 - ENTRANCE 23 - Spectacle rock
#_1BBB96: db $24 ; 0x23 - ENTRANCE 24 - Agahnim's Tower
#_1BBB97: db $25 ; 0x24 - ENTRANCE 25 - Swamp Palace
#_1BBB98: db $26 ; 0x25 - ENTRANCE 26 - Palace of Darkness
#_1BBB99: db $27 ; 0x26 - ENTRANCE 27 - Misery Mire
#_1BBB9A: db $28 ; 0x27 - ENTRANCE 28 - Skull Woods west
#_1BBB9B: db $29 ; 0x28 - ENTRANCE 29 - Skull Woods mummy statue
#_1BBB9C: db $2A ; 0x29 - ENTRANCE 2A - Skull Woods big chest
#_1BBB9D: db $2B ; 0x2A - ENTRANCE 2B - Skull Woods back
#_1BBB9E: db $2C ; 0x2B - ENTRANCE 2C - Lost Woods hideout
#_1BBB9F: db $2D ; 0x2C - ENTRANCE 2D - Ice Palace
#_1BBBA0: db $2E ; 0x2D - ENTRANCE 2E - Death Mountain exit west
#_1BBBA1: db $2F ; 0x2E - ENTRANCE 2F - Death Mountain exit from summit
#_1BBBA2: db $30 ; 0x2F - ENTRANCE 30 - Old man home cave west
#_1BBBA3: db $31 ; 0x30 - ENTRANCE 31 - Old man home cave east
#_1BBBA4: db $32 ; 0x31 - ENTRANCE 32 - Hyrule Castle secret entrance
#_1BBBA5: db $33 ; 0x32 - ENTRANCE 33 - Tower of Hera
#_1BBBA6: db $34 ; 0x33 - ENTRANCE 34 - Thieves' Town
#_1BBBA7: db $35 ; 0x34 - ENTRANCE 35 - Turtle Rock
#_1BBBA8: db $36 ; 0x35 - ENTRANCE 36 - Pyramid drop
#_1BBBA9: db $37 ; 0x36 - ENTRANCE 37 - Ganon's Tower
#_1BBBAA: db $38 ; 0x37 - ENTRANCE 38 - Graveyard fairy
#_1BBBAB: db $39 ; 0x38 - ENTRANCE 39 - Kakariko well
#_1BBBAC: db $3A ; 0x39 - ENTRANCE 3A - Hookshot cave bottom
#_1BBBAD: db $3B ; 0x3A - ENTRANCE 3B - Hookshot cave top
#_1BBBAE: db $3C ; 0x3B - ENTRANCE 3C - Lost Woods chest game
#_1BBBAF: db $3D ; 0x3C - ENTRANCE 3D - Swamp thief cave hideout
#_1BBBB0: db $3E ; 0x3D - ENTRANCE 3E - Eastern snitch house
#_1BBBB1: db $3F ; 0x3E - ENTRANCE 3F - Cucco easter egg
#_1BBBB2: db $40 ; 0x3F - ENTRANCE 40 - Sick kid
#_1BBBB3: db $41 ; 0x40 - ENTRANCE 41 - Spike cave
#_1BBBB4: db $42 ; 0x41 - ENTRANCE 42 - Tavern front
#_1BBBB5: db $43 ; 0x42 - ENTRANCE 43 - Tavern back
#_1BBBB6: db $44 ; 0x43 - ENTRANCE 44 - Kakariko Inn
#_1BBBB7: db $45 ; 0x44 - ENTRANCE 45 - Sahasrahla's hideout
#_1BBBB8: db $46 ; 0x45 - ENTRANCE 46 - Kakariko shop
#_1BBBB9: db $47 ; 0x46 - ENTRANCE 47 - Village of Outcasts chest game
#_1BBBBA: db $48 ; 0x47 - ENTRANCE 48 - Village of Outcasts bombable hut
#_1BBBBB: db $49 ; 0x48 - ENTRANCE 49 - Library
#_1BBBBC: db $4A ; 0x49 - ENTRANCE 4A - Kakariko bombable hut
#_1BBBBD: db $4B ; 0x4A - ENTRANCE 4B - Chicken hut
#_1BBBBE: db $4C ; 0x4B - ENTRANCE 4C - Potion shop
#_1BBBBF: db $4D ; 0x4C - ENTRANCE 4D - Aginah's cave
#_1BBBC0: db $4E ; 0x4D - ENTRANCE 4E - Dam
#_1BBBC1: db $4F ; 0x4E - ENTRANCE 4F - Mimic cave
#_1BBBC2: db $50 ; 0x4F - ENTRANCE 50 - East Death Mountain fairy pond cave
#_1BBBC3: db $51 ; 0x50 - ENTRANCE 51 - Circle of bushes heart piece cave
#_1BBBC4: db $52 ; 0x51 - ENTRANCE 52 - Graveyard ledge heart piece cave
#_1BBBC5: db $53 ; 0x52 - ENTRANCE 53 - Bomb shop
#_1BBBC6: db $54 ; 0x53 - ENTRANCE 54 - C-shaped house
#_1BBBC7: db $55 ; 0x54 - ENTRANCE 55 - Southeast of Eastern Ruins fairy cave
#_1BBBC8: db $5E ; 0x55 - ENTRANCE 5E - Mire big fairy
#_1BBBC9: db $60 ; 0x56 - ENTRANCE 60 - Dark World lumberjacks shop
#_1BBBCA: db $58 ; 0x57 - ENTRANCE 58 - Lake Hylia shop
#_1BBBCB: db $59 ; 0x58 - ENTRANCE 59 - Arrow game
#_1BBBCC: db $5A ; 0x59 - ENTRANCE 5A - Dark World sanctuary cave
#_1BBBCD: db $5B ; 0x5A - ENTRANCE 5B - King's tomb
#_1BBBCE: db $5C ; 0x5B - ENTRANCE 5C - Waterfall of Wishing
#_1BBBCF: db $5D ; 0x5C - ENTRANCE 5D - Pond of Happiness
#_1BBBD0: db $5E ; 0x5D - ENTRANCE 5E - Big fairy (Eastern Ruins)
#_1BBBD1: db $5F ; 0x5E - ENTRANCE 5F - Mire shed
#_1BBBD2: db $60 ; 0x5F - ENTRANCE 60 - Village of Outcasts shop
#_1BBBD3: db $61 ; 0x60 - ENTRANCE 61 - Blind's hut
#_1BBBD4: db $62 ; 0x61 - ENTRANCE 62 - Watto's cave
#_1BBBD5: db $63 ; 0x62 - ENTRANCE 63 - Fat Fairy
#_1BBBD6: db $64 ; 0x63 - ENTRANCE 64 - Smithy's house
#_1BBBD7: db $65 ; 0x64 - ENTRANCE 65 - Light World fortune teller (Kakariko)
#_1BBBD8: db $66 ; 0x65 - ENTRANCE 66 - Dark World fortune teller
#_1BBBD9: db $67 ; 0x66 - ENTRANCE 67 - South of Kakariko chest game
#_1BBBDA: db $68 ; 0x67 - ENTRANCE 68 - Broccoli's house
#_1BBBDB: db $69 ; 0x68 - ENTRANCE 69 - Bird hint NPC cave
#_1BBBDC: db $6A ; 0x69 - ENTRANCE 6A - Hamburger Helper's cave
#_1BBBDD: db $56 ; 0x6A - ENTRANCE 56 - Ice rod cave golden bee
#_1BBBDE: db $5E ; 0x6B - ENTRANCE 5E - Big fairy (South of Link's house)
#_1BBBDF: db $5E ; 0x6C - ENTRANCE 5E - Big fairy (South of Kiki)
#_1BBBE0: db $58 ; 0x6D - ENTRANCE 58 - Dark Death Mountain shop
#_1BBBE1: db $60 ; 0x6E - ENTRANCE 60 - Dark World witch shop
#_1BBBE2: db $5E ; 0x6F - ENTRANCE 5E - Dark West Death Mountain big fairy
#_1BBBE3: db $4D ; 0x70 - ENTRANCE 4D - Aginah's cave
#_1BBBE4: db $5E ; 0x71 - ENTRANCE 5E - Desert big fairy
#_1BBBE5: db $65 ; 0x72 - ENTRANCE 65 - Light World fortune teller (Lake Hylia)
#_1BBBE6: db $60 ; 0x73 - ENTRANCE 60 - Dark Lake Hylia shop
#_1BBBE7: db $57 ; 0x74 - ENTRANCE 57 - East of Village of Outcasts shop
#_1BBBE8: db $6B ; 0x75 - ENTRANCE 6B - Bumpkin residency
#_1BBBE9: db $71 ; 0x76 - ENTRANCE 71 - Link's house bonk rocks fairy pond
#_1BBBEA: db $71 ; 0x77 - ENTRANCE 71 - Bomb shop bonk rocks fairy pond
#_1BBBEB: db $6D ; 0x78 - ENTRANCE 6D - Desert thief hideout
#_1BBBEC: db $6E ; 0x79 - ENTRANCE 6E - Bonk rocks heart piece cave
#_1BBBED: db $6F ; 0x7A - ENTRANCE 6F - Lake Hylia falls thief hideout
#_1BBBEE: db $70 ; 0x7B - ENTRANCE 70 - Dark Lake Hylia falls spike cave
#_1BBBEF: db $6C ; 0x7C - ENTRANCE 6C - Mini moldorm cave
#_1BBBF0: db $72 ; 0x7D - ENTRANCE 72 - Checkerboard cave heart piece
#_1BBBF1: db $83 ; 0x7E - ENTRANCE 83 - Stake puzzle heart piece cave
#_1BBBF2: db $84 ; 0x7F - ENTRANCE 84 - Ice rod cave
#_1BBBF3: db $5E ; 0x80 - ENTRANCE 5E - Dark ice rod big fairy

;===================================================================================================

Overworld_UseEntrance:
; Get map16 coordinate
#_1BBBF4: REP #$31

; Y portion
#_1BBBF6: LDA.b $20
#_1BBBF8: CLC
#_1BBBF9: ADC.w #$0007
#_1BBBFC: STA.b $00

#_1BBBFE: SEC
#_1BBBFF: SBC.w $0708
#_1BBC02: AND.w $070A
#_1BBC05: ASL A
#_1BBC06: ASL A
#_1BBC07: ASL A
#_1BBC08: STA.b $06

#_1BBC0A: LDA.b $22
#_1BBC0C: LSR A
#_1BBC0D: LSR A
#_1BBC0E: LSR A
#_1BBC0F: STA.b $02

#_1BBC11: SEC
#_1BBC12: SBC.w $070C
#_1BBC15: AND.w $070E
#_1BBC18: CLC
#_1BBC19: ADC.b $06

#_1BBC1B: TAY
#_1BBC1C: TAX

; Get the tile type
#_1BBC1D: LDA.l $7E2000,X
#_1BBC21: ASL A
#_1BBC22: ASL A
#_1BBC23: ASL A
#_1BBC24: TAX

#_1BBC25: LDA.b $2F
#_1BBC27: AND.w #$00FF
#_1BBC2A: BNE .not_facing_up

#_1BBC2C: LDA.l Map16Definitions+2,X
#_1BBC30: AND.w #$41FF
#_1BBC33: CMP.w #$00E9
#_1BBC36: BEQ .open_door

#_1BBC38: CMP.w #$0149
#_1BBC3B: BEQ .left_side_castle_door

#_1BBC3D: CMP.w #$0169
#_1BBC40: BEQ .left_side_castle_door

#_1BBC42: TYX

#_1BBC43: LDA.l $7E2002,X
#_1BBC47: ASL A
#_1BBC48: ASL A
#_1BBC49: ASL A
#_1BBC4A: TAX

#_1BBC4B: LDA.l Map16Definitions+0,X
#_1BBC4F: AND.w #$41FF
#_1BBC52: CMP.w #$4149
#_1BBC55: BEQ .right_side_castle_door

#_1BBC57: CMP.w #$4169
#_1BBC5A: BEQ .right_side_castle_door

#_1BBC5C: CMP.w #$40E9
#_1BBC5F: BNE .check_door_type

#_1BBC61: DEY
#_1BBC62: DEY

.open_door
; TODO seems different from US
#_1BBC63: TYX

#_1BBC64: LDA.w #$0D9E
#_1BBC67: JSL Overworld_DrawMap16_Persist

#_1BBC6B: LDA.w #$0DA0
#_1BBC6E: STA.l $7E2002,X

#_1BBC72: LDY.w #$0002
#_1BBC75: JSL Overworld_DrawMap16_Anywhere

#_1BBC79: SEP #$30

#_1BBC7B: LDA.b #$15 ; SFX3.15
#_1BBC7D: STA.w $012F

#_1BBC80: LDA.b #$01
#_1BBC82: STA.b $14

#_1BBC84: RTL

;---------------------------------------------------------------------------------------------------

.not_facing_up
#_1BBC85: BRA .check_door_type

.right_side_castle_door
#_1BBC87: DEY
#_1BBC88: DEY

.left_side_castle_door
#_1BBC89: STZ.w $0692

#_1BBC8C: AND.w #$03FF
#_1BBC8F: CMP.w #$0169
#_1BBC92: BNE .open_this_castle_door

; Can't open castle doors after aga is defeated
#_1BBC94: LDA.l $7EF3C5
#_1BBC98: AND.w #$000F
#_1BBC9B: CMP.w #$0003
#_1BBC9E: BCS .check_door_type

#_1BBCA0: LDA.w #$0018
#_1BBCA3: STA.w $0692

.open_this_castle_door
#_1BBCA6: TYA
#_1BBCA7: SEC
#_1BBCA8: SBC.w #$0080
#_1BBCAB: STA.w $0698

#_1BBCAE: SEP #$20

#_1BBCB0: LDA.b #$15 ; SFX3.15
#_1BBCB2: STA.w $012F

#_1BBCB5: STZ.b $B0
#_1BBCB7: STZ.w $0690

#_1BBCBA: LDA.b #$0C
#_1BBCBC: STA.b $11

#_1BBCBE: SEP #$30

#_1BBCC0: RTL

;---------------------------------------------------------------------------------------------------

.check_door_type
#_1BBCC1: LDA.l Map16Definitions+4,X
#_1BBCC5: AND.w #$01FF
#_1BBCC8: STA.b $00

#_1BBCCA: LDA.l Map16Definitions+6,X
#_1BBCCE: AND.w #$01FF
#_1BBCD1: STA.b $02

#_1BBCD3: LDX.w #$0056

.check_next
#_1BBCD6: LDA.b $00
#_1BBCD8: CMP.l ValidDoorTypes_low,X
#_1BBCDC: BNE .low_byte_fail

#_1BBCDE: LDA.b $02
#_1BBCE0: CMP.l ValidDoorTypes_high,X
#_1BBCE4: BEQ FindEntrance

.low_byte_fail
#_1BBCE6: DEX
#_1BBCE7: DEX
#_1BBCE8: BPL .check_next

#_1BBCEA: STZ.w $04B8

.message_received
#_1BBCED: SEP #$30

#_1BBCEF: RTL

;---------------------------------------------------------------------------------------------------

#Overworld_ForbidEntry:
#_1BBCF0: LDA.w $04B8
#_1BBCF3: BNE .message_received

#_1BBCF5: INC.w $04B8

#_1BBCF8: LDA.w #$0005 ; MESSAGE 0005
#_1BBCFB: STA.w $1CF0

#_1BBCFE: SEP #$30

#_1BBD00: JML Interface_PrepAndDisplayMessage

;===================================================================================================

; Check for a valid entrance now
FindEntrance:
#_1BBD04: TYA
#_1BBD05: STA.b $00

#_1BBD07: LDX.w #$0102

.next_check
#_1BBD0A: LDA.b $00

.tile_fail
#_1BBD0C: DEX
#_1BBD0D: DEX
#_1BBD0E: BMI .no_entrance_found

#_1BBD10: CMP.l Overworld_EntranceTileIndex,X
#_1BBD14: BNE .tile_fail

#_1BBD16: LDA.w $040A
#_1BBD19: CMP.l Overworld_EntranceScreens,X
#_1BBD1D: BNE .next_check

#_1BBD1F: LDA.l $7EF3D3
#_1BBD23: AND.w #$00FF
#_1BBD26: BNE .entry_allowed

#_1BBD28: LDA.w $02DA
#_1BBD2B: AND.w #$00FF
#_1BBD2E: CMP.w #$0001
#_1BBD31: BEQ Overworld_ForbidEntry

;---------------------------------------------------------------------------------------------------

; Which followers are allowed in entrances?
#_1BBD33: LDA.l $7EF3CC
#_1BBD37: AND.w #$00FF
#_1BBD3A: BEQ .entry_allowed

; Zelda telepathy - allowed
#_1BBD3C: CMP.w #$05 ; FOLLOWER 05
#_1BBD3F: BEQ .entry_allowed

; Telepathy - allowed
#_1BBD41: CMP.w #$0E ; FOLLOWER 0E
#_1BBD44: BEQ .entry_allowed

; Zelda - allowed
#_1BBD46: CMP.w #$01 ; FOLLOWER 01
#_1BBD49: BEQ .entry_allowed

; Frog - single entrance only
#_1BBD4B: CMP.w #$07 ; FOLLOWER 07
#_1BBD4E: BEQ .check_single_entrance

; Dwarf - single entrance only
#_1BBD50: CMP.w #$08 ; FOLLOWER 08

; All other followers are BANNED
#_1BBD53: BNE Overworld_ForbidEntry

.check_single_entrance
#_1BBD55: CPX.w #$0076
#_1BBD58: BCC Overworld_ForbidEntry

;---------------------------------------------------------------------------------------------------

.entry_allowed
#_1BBD5A: TXA
#_1BBD5B: LSR A
#_1BBD5C: TAX

#_1BBD5D: SEP #$20

#_1BBD5F: LDA.l Overworld_Entrance_ID,X
#_1BBD63: STA.w $010E

#_1BBD66: STZ.b $4D
#_1BBD68: STZ.b $46

#_1BBD6A: LDA.b #$0F
#_1BBD6C: STA.b $10

#_1BBD6E: LDA.b #$06
#_1BBD70: STA.w $010C

#_1BBD73: STZ.b $11
#_1BBD75: STZ.b $B0

.no_entrance_found
#_1BBD77: SEP #$30

#_1BBD79: RTL

;===================================================================================================

HandleItemTileAction_Overworld:
#_1BBD7A: LDA.b $1B
#_1BBD7C: BEQ .continue

#_1BBD7E: JML HandleItemTileAction_Underworld

;---------------------------------------------------------------------------------------------------

.continue
#_1BBD82: REP #$30

#_1BBD84: STZ.w $04B2
#_1BBD87: STZ.b $76

#_1BBD89: LDA.b $00
#_1BBD8B: SEC
#_1BBD8C: SBC.w $0708
#_1BBD8F: AND.w $070A
#_1BBD92: ASL A
#_1BBD93: ASL A
#_1BBD94: ASL A
#_1BBD95: STA.b $06

#_1BBD97: LDA.b $02
#_1BBD99: SEC
#_1BBD9A: SBC.w $070C
#_1BBD9D: AND.w $070E
#_1BBDA0: CLC
#_1BBDA1: ADC.b $06
#_1BBDA3: TAX

#_1BBDA4: LDA.w $0301
#_1BBDA7: AND.w #$0002
#_1BBDAA: BNE .hammer

#_1BBDAC: LDA.w $0301
#_1BBDAF: AND.w #$0040
#_1BBDB2: BEQ .not_powder

.powder
#_1BBDB4: LDA.l $7E2000,X
#_1BBDB8: PHA

; Normal bush?
#_1BBDB9: LDY.w #$0002
#_1BBDBC: CMP.w #$0036
#_1BBDBF: BEQ .is_bush

; Dark bush?
#_1BBDC1: LDY.w #$0004
#_1BBDC4: CMP.w #$0727
#_1BBDC7: BNE .not_bush

.is_bush
#_1BBDC9: JMP.w OverworldTileAction_Bush

.hammer
#_1BBDCC: LDA.l $7E2000,X
#_1BBDD0: PHA

#_1BBDD1: CMP.w #$021B
#_1BBDD4: BNE .not_peg

#_1BBDD6: SEP #$20

#_1BBDD8: LDA.b #$11 ; SFX2.11
#_1BBDDA: STA.w $012E

#_1BBDDD: REP #$20

#_1BBDDF: JSL HandlePegPuzzles

#_1BBDE3: LDA.w #$0DC5
#_1BBDE6: JMP.w OverworldTileAction_Bush_no_secret

.not_peg
#_1BBDE9: JSR Overworld_PickHammerSFX

.not_bush
#_1BBDEC: JMP.w OverworldTileAction_Exit

;---------------------------------------------------------------------------------------------------

.not_powder
#_1BBDEF: LDA.l $7E2000,X
#_1BBDF3: PHA

; TODO what tile types
#_1BBDF4: CMP.w #$0034
#_1BBDF7: BEQ OverworldTileAction_Diggable

#_1BBDF9: CMP.w #$0071
#_1BBDFC: BEQ OverworldTileAction_Diggable

#_1BBDFE: CMP.w #$0035
#_1BBE01: BEQ OverworldTileAction_Diggable

#_1BBE03: CMP.w #$010D
#_1BBE06: BEQ OverworldTileAction_Diggable

#_1BBE08: CMP.w #$010F
#_1BBE0B: BEQ OverworldTileAction_Diggable

#_1BBE0D: CMP.w #$00E1
#_1BBE10: BEQ OverworldTileAction_Diggable

#_1BBE12: CMP.w #$00E2
#_1BBE15: BEQ OverworldTileAction_Diggable

#_1BBE17: CMP.w #$00DA
#_1BBE1A: BEQ OverworldTileAction_Diggable

#_1BBE1C: CMP.w #$00F8
#_1BBE1F: BEQ OverworldTileAction_Diggable

#_1BBE21: CMP.w #$010E
#_1BBE24: BEQ OverworldTileAction_Diggable

#_1BBE26: CMP.w #$037D
#_1BBE29: BEQ .not_grass

#_1BBE2B: LDY.w #$0002
#_1BBE2E: CMP.w #$0036
#_1BBE31: BEQ OverworldTileAction_Bush

#_1BBE33: LDY.w #$0004
#_1BBE36: CMP.w #$0727
#_1BBE39: BEQ OverworldTileAction_Bush

.not_digging
#_1BBE3B: JMP.w OverworldTileAction_Exit

;---------------------------------------------------------------------------------------------------

#OverworldTileAction_Diggable:
#_1BBE3E: LDA.w $037A
#_1BBE41: AND.w #$00FF
#_1BBE44: CMP.w #$0001
#_1BBE47: BNE .not_digging

; Are we in the haunted grove?
#_1BBE49: LDA.b $8A
#_1BBE4B: CMP.w #$002A ; OW 2A
#_1BBE4E: BNE .not_flute_spot

; Are we on the correct tile?
#_1BBE50: CPX.w #$0492
#_1BBE53: BNE .not_flute_spot

#_1BBE55: STX.w $04B2

.not_flute_spot
#_1BBE58: LDY.w #$0DC3
#_1BBE5B: BRA OverworldTileAction_RevealSecret

.not_grass ; TODO verify
#_1BBE5D: LDA.w $037A
#_1BBE60: AND.w #$00FF
#_1BBE63: CMP.w #$0001
#_1BBE66: BNE .not_digging_carry_on

#_1BBE68: JMP.w OverworldTileAction_Exit

.not_digging_carry_on
#_1BBE6B: LDA.b $02
#_1BBE6D: ASL A
#_1BBE6E: ASL A
#_1BBE6F: ASL A
#_1BBE70: SEC
#_1BBE71: SBC.w #$0008
#_1BBE74: PHA

#_1BBE75: LDA.b $00
#_1BBE77: SEC
#_1BBE78: SBC.w #$0008
#_1BBE7B: AND.w #$FFF8
#_1BBE7E: STA.b $74

; Why even push?
#_1BBE80: PLA
#_1BBE81: STA.b $72

#_1BBE83: LDA.w #$0003
#_1BBE86: STA.b $76

#_1BBE88: LDY.w #$0DBF
#_1BBE8B: BRA OverworldTileAction_RevealSecret

;===================================================================================================

OverworldTileAction_Bush:
#_1BBE8D: LDA.w $037A
#_1BBE90: AND.w #$00FF
#_1BBE93: CMP.w #$0001
#_1BBE96: BEQ .digging

#_1BBE98: LDA.b $02
#_1BBE9A: AND.w #$FFFE
#_1BBE9D: ASL A
#_1BBE9E: ASL A
#_1BBE9F: ASL A
#_1BBEA0: PHA

#_1BBEA1: LDA.b $00
#_1BBEA3: AND.w #$FFF0
#_1BBEA6: STA.b $74

; Again, why even push and pull?
#_1BBEA8: PLA
#_1BBEA9: STA.b $72

#_1BBEAB: STY.b $76

#_1BBEAD: PLA ; LDA 1,S bro
#_1BBEAE: PHA

#_1BBEAF: LDY.w #$0DC1
#_1BBEB2: CMP.w #$0727
#_1BBEB5: BNE OverworldTileAction_RevealSecret

#_1BBEB7: LDY.w #$0DC2

;---------------------------------------------------------------------------------------------------

#OverworldTileAction_RevealSecret:
#_1BBEBA: STY.b $0E

#_1BBEBC: JSR Overworld_RevealSecret
#_1BBEBF: BCS .no_secret

#_1BBEC1: LDA.b $0E

.no_secret
#_1BBEC3: STA.l $7E2000,X

#_1BBEC7: JSL Overworld_MemorizeMap16Change
#_1BBECB: JSL Overworld_DrawMap16

#_1BBECF: SEP #$20

#_1BBED1: LDA.b #$01
#_1BBED3: STA.b $14

#_1BBED5: REP #$20

#_1BBED7: PLA

#_1BBED8: BRA .continue_continue

;---------------------------------------------------------------------------------------------------

.digging
#_1BBEDA: PLA
#_1BBEDB: LDA.l $7E2000,X

.continue_continue
#_1BBEDF: ASL A
#_1BBEE0: ASL A
#_1BBEE1: STA.b $06

#_1BBEE3: LDA.b $00
#_1BBEE5: AND.w #$0008
#_1BBEE8: LSR A
#_1BBEE9: LSR A
#_1BBEEA: TSB.b $06

#_1BBEEC: LDA.b $02
#_1BBEEE: AND.w #$0001
#_1BBEF1: ORA.b $06
#_1BBEF3: ASL A
#_1BBEF4: TAX

#_1BBEF5: LDA.l Map16Definitions+0,X
#_1BBEF9: AND.w #$01FF
#_1BBEFC: TAX

#_1BBEFD: LDA.l OverworldTileTypes,X
#_1BBF01: PHA

#_1BBF02: LDA.b $72
#_1BBF04: STA.b $00

#_1BBF06: LDA.b $74
#_1BBF08: STA.b $02

#_1BBF0A: SEP #$30

#_1BBF0C: LDA.b $76
#_1BBF0E: BEQ .no_poof

#_1BBF10: JSL Sprite_SpawnImmediatelySmashedTerrain
#_1BBF14: JSL AncillaAdd_BushPoof

.no_poof
#_1BBF18: REP #$30

;---------------------------------------------------------------------------------------------------

#OverworldTileAction_Exit:
#_1BBF1A: PLA

#_1BBF1B: SEP #$30

#_1BBF1D: RTL

;===================================================================================================
; Picks from a selection of hammer SFX to use.
;===================================================================================================
Overworld_PickHammerSFX:
#_1BBF1E: ASL A
#_1BBF1F: ASL A
#_1BBF20: ASL A
#_1BBF21: TAX

#_1BBF22: LDA.l Map16Definitions+0,X
#_1BBF26: AND.w #$01FF
#_1BBF29: TAX

#_1BBF2A: LDA.l OverworldTileTypes,X

#_1BBF2E: SEP #$30

#_1BBF30: CMP.b #$50
#_1BBF32: BCC .no_sfx

#_1BBF34: LDY.b #$1A ; SFX2.1A
#_1BBF36: CMP.b #$52
#_1BBF38: BCC .play_sfx

#_1BBF3A: LDY.b #$11 ; SFX2.11
#_1BBF3C: CMP.b #$54
#_1BBF3E: BEQ .play_sfx

#_1BBF40: LDY.b #$05 ; SFX2.05
#_1BBF42: CMP.b #$58
#_1BBF44: BCS .no_sfx

.play_sfx
#_1BBF46: STY.w $012E

.no_sfx
#_1BBF49: REP #$30

#_1BBF4B: RTS

;===================================================================================================

RockSmashReplaceOffset:
.tile1
#_1BBF4C: dw    0 ; from top left
#_1BBF4E: dw   -2 ; from top right
#_1BBF50: dw -128 ; from bottom left
#_1BBF52: dw -130 ; from bottom right

.tile2
#_1BBF54: dw    0 ; from top left
#_1BBF56: dw    0 ; from top right
#_1BBF58: dw -128 ; from bottom left
#_1BBF5A: dw -128 ; from bottom right

.tile3
#_1BBF5C: dw    0 ; from top left
#_1BBF5E: dw   -2 ; from top right
#_1BBF60: dw    0 ; from bottom left
#_1BBF62: dw   -2 ; from bottom right

;===================================================================================================

Overworld_GetLinkMap16Coords:
#_1BBF64: LDA.b $2F
#_1BBF66: AND.w #$00FF
#_1BBF69: TAX

#_1BBF6A: LDA.b $20
#_1BBF6C: CLC
#_1BBF6D: ADC.l LiftableCheckOffset_Y,X
#_1BBF71: AND.w #$FFF0
#_1BBF74: STA.b $00

#_1BBF76: SEC
#_1BBF77: SBC.w $0708
#_1BBF7A: AND.w $070A
#_1BBF7D: ASL A
#_1BBF7E: ASL A
#_1BBF7F: ASL A
#_1BBF80: STA.b $06

#_1BBF82: LDA.b $22
#_1BBF84: CLC
#_1BBF85: ADC.l LiftableCheckOffset_X,X
#_1BBF89: AND.w #$FFF0
#_1BBF8C: STA.b $02

#_1BBF8E: LSR A
#_1BBF8F: LSR A
#_1BBF90: LSR A
#_1BBF91: SEC
#_1BBF92: SBC.w $070C
#_1BBF95: AND.w $070E
#_1BBF98: CLC
#_1BBF99: ADC.b $06

#_1BBF9B: TAX

#_1BBF9C: RTS

;===================================================================================================

Overworld_HandleLiftableTiles:
#_1BBF9D: REP #$30

#_1BBF9F: JSR Overworld_GetLinkMap16Coords

#_1BBFA2: LDA.b $00
#_1BBFA4: PHA

#_1BBFA5: LDA.b $02
#_1BBFA7: PHA

#_1BBFA8: LDA.l $7E2000,X

#_1BBFAC: LDY.w #$0000
#_1BBFAF: CMP.w #$036C
#_1BBFB2: BEQ .large_rock

#_1BBFB4: INY
#_1BBFB5: CMP.w #$036D
#_1BBFB8: BEQ .large_rock

#_1BBFBA: INY
#_1BBFBB: CMP.w #$0373
#_1BBFBE: BEQ .large_rock

#_1BBFC0: INY
#_1BBFC1: CMP.w #$0374
#_1BBFC4: BEQ .large_rock

#_1BBFC6: LDY.w #$0000
#_1BBFC9: CMP.w #$023B
#_1BBFCC: BEQ .large_rock

#_1BBFCE: INY
#_1BBFCF: CMP.w #$023C
#_1BBFD2: BEQ .large_rock

#_1BBFD4: INY
#_1BBFD5: CMP.w #$023D
#_1BBFD8: BEQ .large_rock

#_1BBFDA: CMP.w #$023E
#_1BBFDD: BNE .not_large_rock

#_1BBFDF: INY

.large_rock
#_1BBFE0: JMP.w SmashRockPile_fromLift

;---------------------------------------------------------------------------------------------------

.not_large_rock
#_1BBFE3: LDY.w #$0DC1
#_1BBFE6: CMP.w #$0036
#_1BBFE9: BEQ .small_object

#_1BBFEB: LDY.w #$0DC2
#_1BBFEE: CMP.w #$0727
#_1BBFF1: BEQ .small_object

#_1BBFF3: LDY.w #$0DC4
#_1BBFF6: CMP.w #$020F
#_1BBFF9: BEQ .small_object

#_1BBFFB: CMP.w #$0239
#_1BBFFE: BEQ .small_object

#_1BC000: CMP.w #$0101
#_1BC003: BNE .not_small_object

#_1BC005: LDY.w #$0DC0

.small_object
#_1BC008: STY.b $0E

#_1BC00A: PHA

#_1BC00B: JSR Overworld_RevealSecret
#_1BC00E: BCS .no_secret

#_1BC010: LDA.b $0E

.no_secret
#_1BC012: STA.l $7E2000,X

#_1BC016: JSL Overworld_MemorizeMap16Change
#_1BC01A: JSL Overworld_DrawMap16

#_1BC01E: SEP #$20

#_1BC020: LDA.b #$01
#_1BC022: STA.b $14

;===================================================================================================

#Overworld_GetLiftableTileType:
#_1BC024: REP #$30

#_1BC026: PLA

;---------------------------------------------------------------------------------------------------

.not_small_object
#_1BC027: ASL A
#_1BC028: ASL A
#_1BC029: STA.b $06

#_1BC02B: LDA.b $02
#_1BC02D: AND.w #$0008
#_1BC030: LSR A
#_1BC031: LSR A
#_1BC032: TSB.b $06 ; TODO figure out what these TSBs are for

#_1BC034: LDA.b $00
#_1BC036: LSR A
#_1BC037: LSR A
#_1BC038: LSR A
#_1BC039: AND.w #$0001
#_1BC03C: ORA.b $06

#_1BC03E: ASL A
#_1BC03F: TAX

#_1BC040: LDA.l Map16Definitions+0,X
#_1BC044: AND.w #$01FF
#_1BC047: TAX

#_1BC048: PLA
#_1BC049: STA.b $00

#_1BC04B: PLA
#_1BC04C: STA.b $02

#_1BC04E: LDA.l OverworldTileTypes,X

#_1BC052: SEP #$31

#_1BC054: RTL

;---------------------------------------------------------------------------------------------------

#Overworld_SmashRockPile:
#_1BC055: LDY.w #$0DC1
#_1BC058: CMP.w #$0036
#_1BC05B: BEQ .small_object

#_1BC05D: PLA
#_1BC05E: PLA

#_1BC05F: SEP #$30
#_1BC061: CLC

#_1BC062: RTL

;===================================================================================================

Overworld_SmashRockPileFromAbove:
#_1BC063: REP #$30

#_1BC065: LDA.b $20
#_1BC067: PHA

#_1BC068: CLC
#_1BC069: ADC.w #$0008
#_1BC06C: STA.b $20

#_1BC06E: JSR Overworld_GetLinkMap16Coords

#_1BC071: PLA
#_1BC072: STA.b $20

#_1BC074: BRA .continue

;===================================================================================================

#Overworld_SmashRockPileFromHere:
#_1BC076: REP #$30

#_1BC078: JSR Overworld_GetLinkMap16Coords

.continue
#_1BC07B: LDA.b $00
#_1BC07D: PHA

; A poem:
;   No PEI
;   Makes me cry
#_1BC07E: LDA.b $02
#_1BC080: PHA

#_1BC081: LDA.l $7E2000,X
#_1BC085: LDY.w #$0000
#_1BC088: CMP.w #$0226
#_1BC08B: BEQ .rock_pile

#_1BC08D: INY
#_1BC08E: CMP.w #$0227
#_1BC091: BEQ .rock_pile

#_1BC093: INY
#_1BC094: CMP.w #$0228
#_1BC097: BEQ .rock_pile

#_1BC099: CMP.w #$0229
#_1BC09C: BNE Overworld_SmashRockPile

#_1BC09E: INY

.rock_pile

;===================================================================================================

#SmashRockPile_fromLift:
#_1BC09F: STY.b $0C

#_1BC0A1: PHA

#_1BC0A2: ASL.b $0C

#_1BC0A4: TXA
#_1BC0A5: CLC
#_1BC0A6: LDX.b $0C

#_1BC0A8: ADC.l RockSmashReplaceOffset_tile1,X
#_1BC0AC: STA.w $0698

#_1BC0AF: TAX

#_1BC0B0: LDA.w #$0028
#_1BC0B3: STA.w $0692

#_1BC0B6: STZ.b $0E

#_1BC0B8: JSR Overworld_RevealSecret

#_1BC0BB: LDA.b $0E
#_1BC0BD: CMP.w #$FFFF
#_1BC0C0: BNE .no_secret

;---------------------------------------------------------------------------------------------------

#_1BC0C2: SEP #$20

#_1BC0C4: LDX.b $8A

#_1BC0C6: LDA.l $7EF280,X
#_1BC0CA: ORA.b #$20
#_1BC0CC: STA.l $7EF280,X

#_1BC0D0: LDA.b #$1B ; SFX3.1B
#_1BC0D2: STA.w $012F

#_1BC0D5: REP #$20

#_1BC0D7: LDA.w #$0050
#_1BC0DA: STA.w $0692

;---------------------------------------------------------------------------------------------------

.no_secret
#_1BC0DD: LDX.b $0C

#_1BC0DF: LDA.b $00
#_1BC0E1: CLC
#_1BC0E2: ADC.l RockSmashReplaceOffset_tile2,X
#_1BC0E6: STA.b $00

#_1BC0E8: LDA.b $02
#_1BC0EA: CLC
#_1BC0EB: ADC.l RockSmashReplaceOffset_tile3,X
#_1BC0EF: STA.b $02

#_1BC0F1: JSL Overworld_DoMapUpdate32x32_long

#_1BC0F5: JMP.w Overworld_GetLiftableTileType

;===================================================================================================

Overworld_BombTiles32x32:
#_1BC0F8: REP #$30

#_1BC0FA: STZ.b $0E
#_1BC0FC: STZ.b $08

#_1BC0FE: LDA.w #$0003
#_1BC101: STA.b $C8

#_1BC103: LDA.b $00
#_1BC105: SEC
#_1BC106: SBC.w #$0014
#_1BC109: AND.w #$FFF8
#_1BC10C: STA.w $0488

#_1BC10F: LDA.b $02
#_1BC111: SEC
#_1BC112: SBC.w #$0017
#_1BC115: AND.w #$FFF8
#_1BC118: STA.w $0486

;---------------------------------------------------------------------------------------------------

.next_row
#_1BC11B: LDA.w $0488
#_1BC11E: SEC
#_1BC11F: SBC.w $0708
#_1BC122: AND.w $070A
#_1BC125: ASL A
#_1BC126: ASL A
#_1BC127: ASL A
#_1BC128: STA.b $CA

#_1BC12A: LDA.w $0486
#_1BC12D: JSR Overworld_BombTile

#_1BC130: LDA.w $0486
#_1BC133: CLC
#_1BC134: ADC.w #$0010
#_1BC137: JSR Overworld_BombTile

#_1BC13A: LDA.w $0486
#_1BC13D: CLC
#_1BC13E: ADC.w #$0020
#_1BC141: JSR Overworld_BombTile

#_1BC144: LDA.w $0488
#_1BC147: CLC
#_1BC148: ADC.w #$0010
#_1BC14B: STA.w $0488

#_1BC14E: DEC.b $C8
#_1BC150: BNE .next_row

;---------------------------------------------------------------------------------------------------

#_1BC152: SEP #$30

#_1BC154: RTL

;===================================================================================================

Overworld_BombTile:
#_1BC155: PHA

#_1BC156: LSR A
#_1BC157: LSR A
#_1BC158: LSR A
#_1BC159: SEC
#_1BC15A: SBC.w $070C
#_1BC15D: AND.w $070E
#_1BC160: CLC
#_1BC161: ADC.b $CA
#_1BC163: TAX

#_1BC164: STX.b $04

;---------------------------------------------------------------------------------------------------

#_1BC166: LDA.l $7EF3CC
#_1BC16A: AND.w #$00FF
#_1BC16D: CMP.w #$0D ; FOLLOWER 0D
#_1BC170: BEQ .check_for_cave

#_1BC172: LDA.l $7E2000,X

#_1BC176: LDY.w #$0DC1
#_1BC179: LDX.w #$0002

#_1BC17C: CMP.w #$0036
#_1BC17F: BEQ .greenery

#_1BC181: LDX.w #$0004
#_1BC184: LDY.w #$0DC2

#_1BC187: CMP.w #$0727
#_1BC18A: BEQ .greenery

#_1BC18C: CMP.w #$037D
#_1BC18F: BNE .check_for_cave

#_1BC191: LDY.w #$0DBF
#_1BC194: LDX.w #$0003

.greenery
#_1BC197: STX.b $0A
#_1BC199: STY.b $0E

#_1BC19B: LDX.b $04

#_1BC19D: JSR Overworld_RevealSecret
#_1BC1A0: BCS .no_secret

#_1BC1A2: LDA.b $0E

;---------------------------------------------------------------------------------------------------

.no_secret
#_1BC1A4: STA.l $7E2000,X
#_1BC1A8: JSL Overworld_MemorizeMap16Change

#_1BC1AC: LDY.w #$0000
#_1BC1AF: JSL Overworld_DrawMap16_Anywhere

#_1BC1B3: PLA
#_1BC1B4: AND.w #$FFF8
#_1BC1B7: STA.b $00

#_1BC1B9: LDA.w $0488
#_1BC1BC: AND.w #$FFF8
#_1BC1BF: STA.b $02

#_1BC1C1: LDA.b $08
#_1BC1C3: PHA

#_1BC1C4: SEP #$30

#_1BC1C6: LDA.b $0A
#_1BC1C8: JSL Sprite_SpawnImmediatelySmashedTerrain

#_1BC1CC: LDA.b #$01
#_1BC1CE: STA.b $14

#_1BC1D0: REP #$30

#_1BC1D2: PLA
#_1BC1D3: STA.b $08

#_1BC1D5: RTS

;---------------------------------------------------------------------------------------------------

.check_for_cave
#_1BC1D6: LDX.b $04
#_1BC1D8: JSR Overworld_RevealSecret

#_1BC1DB: LDA.b $0E
#_1BC1DD: CMP.w #$0DAE
#_1BC1E0: BEQ .bomb_the_cave

#_1BC1E2: PLA

#_1BC1E3: RTS

;---------------------------------------------------------------------------------------------------

.bomb_the_cave
#_1BC1E4: STA.l $7E2000,X
#_1BC1E8: JSL Overworld_MemorizeMap16Change

#_1BC1EC: LDY.w #$0000
#_1BC1EF: JSL Overworld_DrawMap16_Anywhere

#_1BC1F3: LDA.w #$0DAF
#_1BC1F6: STA.l $7E2002,X
#_1BC1FA: JSL Overworld_MemorizeMap16Change

#_1BC1FE: LDY.w #$0002
#_1BC201: JSL Overworld_DrawMap16_Anywhere

#_1BC205: STZ.b $0E

#_1BC207: SEP #$20

#_1BC209: LDA.b #$01
#_1BC20B: STA.b $14

#_1BC20D: LDX.b $8A

#_1BC20F: LDA.l $7EF280,X
#_1BC213: ORA.b #$02
#_1BC215: STA.l $7EF280,X

#_1BC219: REP #$30

#_1BC21B: PLA

#_1BC21C: RTS

;===================================================================================================

Overworld_AlterWeathervane:
#_1BC21D: REP #$30

#_1BC21F: LDA.w #$0068
#_1BC222: STA.w $0692

#_1BC225: LDA.w #$0C3E
#_1BC228: STA.w $0698

#_1BC22B: JSL Overworld_DoMapUpdate32x32_long

#_1BC22F: REP #$30

#_1BC231: LDX.w #$0C42
#_1BC234: LDA.w #$0E1B
#_1BC237: STA.l $7E2000,X

#_1BC23B: LDY.w #$0000
#_1BC23E: JSL Overworld_DrawMap16_Anywhere

#_1BC242: LDX.w #$0CC0
#_1BC245: LDA.w #$0E1F
#_1BC248: STA.l $7E2002,X

#_1BC24C: LDY.w #$0002
#_1BC24F: JSL Overworld_DrawMap16_Anywhere

#_1BC253: SEP #$30

; Kakariko overlay
#_1BC255: LDA.l $7EF298
#_1BC259: ORA.b #$20
#_1BC25B: STA.l $7EF298

#_1BC25F: LDA.b #$01
#_1BC261: STA.b $14

#_1BC263: RTL

;===================================================================================================

OpenGargoylesDomain:
#_1BC264: REP #$30

#_1BC266: LDX.w #$0D3E
#_1BC269: LDA.w #$0E15
#_1BC26C: JSL Overworld_DrawMap16_Persist

#_1BC270: LDX.w #$0D40
#_1BC273: LDA.w #$0E16
#_1BC276: JSR Overworld_AlterTileHardcore

#_1BC279: LDX.w #$0DBE
#_1BC27C: JSR Overworld_AlterTileHardcore
#_1BC27F: JSR Overworld_AlterTileHardcore

#_1BC282: LDX.w #$0E3E
#_1BC285: JSR Overworld_AlterTileHardcore
#_1BC288: JSR Overworld_AlterTileHardcore

#_1BC28B: LDA.w #$FFFF
#_1BC28E: STA.w $1012,Y

#_1BC291: SEP #$30

; Village of Outcast overlay
#_1BC293: LDA.l $7EF2D8
#_1BC297: ORA.b #$20
#_1BC299: STA.l $7EF2D8

#_1BC29D: LDA.b #$1B ; SFX3.1B
#_1BC29F: STA.w $012F

#_1BC2A2: LDA.b #$01
#_1BC2A4: STA.b $14

#_1BC2A6: RTL

;===================================================================================================

CreatePyramidHole:
#_1BC2A7: REP #$30

#_1BC2A9: LDX.w #$03BC
#_1BC2AC: LDA.w #$0E39
#_1BC2AF: JSL Overworld_DrawMap16_Persist

#_1BC2B3: LDX.w #$03BE
#_1BC2B6: LDA.w #$0E3A
#_1BC2B9: JSR Overworld_AlterTileHardcore
#_1BC2BC: JSR Overworld_AlterTileHardcore

#_1BC2BF: LDX.w #$043C
#_1BC2C2: JSR Overworld_AlterTileHardcore
#_1BC2C5: JSR Overworld_AlterTileHardcore
#_1BC2C8: JSR Overworld_AlterTileHardcore

#_1BC2CB: LDX.w #$04BC
#_1BC2CE: JSR Overworld_AlterTileHardcore
#_1BC2D1: JSR Overworld_AlterTileHardcore
#_1BC2D4: JSR Overworld_AlterTileHardcore

#_1BC2D7: LDA.w #$FFFF
#_1BC2DA: STA.w $1012,Y

#_1BC2DD: LDA.w #$3515 ; plays 2 at once SFX1.15 / SFX2.35
#_1BC2E0: STA.w $012D

#_1BC2E3: SEP #$30

#_1BC2E5: LDA.l $7EF2DB
#_1BC2E9: ORA.b #$20
#_1BC2EB: STA.l $7EF2DB

#_1BC2EF: LDA.b #$03 ; SFX3.03
#_1BC2F1: STA.w $012F

#_1BC2F4: LDA.b #$01
#_1BC2F6: STA.b $14

#_1BC2F8: RTL

;===================================================================================================

OverworldData_HiddenItems:

;---------------------------------------------------------------------------------------------------
; Light World
;---------------------------------------------------------------------------------------------------
#_1BC2F9: dw OverworldData_HiddenItems_Screen_00 ; 0x00 - Lost Woods
#_1BC2FB: dw OverworldData_HiddenItems_Screen_00 ; 0x01 - Lost Woods
#_1BC2FD: dw OverworldData_HiddenItems_Screen_02 ; 0x02 - Lumberjacks
#_1BC2FF: dw OverworldData_HiddenItems_Screen_03 ; 0x03 - West Death Mountain
#_1BC301: dw OverworldData_HiddenItems_Screen_03 ; 0x04 - West Death Mountain
#_1BC303: dw OverworldData_HiddenItems_Screen_05 ; 0x05 - East Death Mountain
#_1BC305: dw OverworldData_HiddenItems_Screen_05 ; 0x06 - East Death Mountain
#_1BC307: dw OverworldData_HiddenItems_Screen_07 ; 0x07 - Turtle Rock Portalway
#_1BC309: dw OverworldData_HiddenItems_Screen_00 ; 0x08 - Lost Woods
#_1BC30B: dw OverworldData_HiddenItems_Screen_00 ; 0x09 - Lost Woods
#_1BC30D: dw OverworldData_HiddenItems_Screen_0A ; 0x0A - Death Mountain Foot
#_1BC30F: dw OverworldData_HiddenItems_Screen_03 ; 0x0B - West Death Mountain
#_1BC311: dw OverworldData_HiddenItems_Screen_03 ; 0x0C - West Death Mountain
#_1BC313: dw OverworldData_HiddenItems_Screen_05 ; 0x0D - East Death Mountain
#_1BC315: dw OverworldData_HiddenItems_Screen_05 ; 0x0E - East Death Mountain
#_1BC317: dw OverworldData_HiddenItems_Screen_0F ; 0x0F - Waterfall of Wishing
#_1BC319: dw OverworldData_HiddenItems_Screen_10 ; 0x10 - Lost Woods Alcove
#_1BC31B: dw OverworldData_HiddenItems_Screen_11 ; 0x11 - North of Kakariko
#_1BC31D: dw OverworldData_HiddenItems_Screen_12 ; 0x12 - Northwest Pond
#_1BC31F: dw OverworldData_HiddenItems_Screen_13 ; 0x13 - Sanctuary
#_1BC321: dw OverworldData_HiddenItems_Screen_14 ; 0x14 - Graveyard
#_1BC323: dw OverworldData_HiddenItems_Screen_15 ; 0x15 - Hylia River Bend
#_1BC325: dw OverworldData_HiddenItems_Screen_16 ; 0x16 - Potion Shop
#_1BC327: dw OverworldData_HiddenItems_Screen_17 ; 0x17 - Octorok Pit
#_1BC329: dw OverworldData_HiddenItems_Screen_18 ; 0x18 - Kakariko Village
#_1BC32B: dw OverworldData_HiddenItems_Screen_18 ; 0x19 - Kakariko Village
#_1BC32D: dw OverworldData_HiddenItems_Screen_1A ; 0x1A - Kakariko Orchard
#_1BC32F: dw OverworldData_HiddenItems_Screen_1B ; 0x1B - Hyrule Castle
#_1BC331: dw OverworldData_HiddenItems_Screen_1B ; 0x1C - Hyrule Castle
#_1BC333: dw OverworldData_HiddenItems_Screen_1D ; 0x1D - Hylia River Peninsula
#_1BC335: dw OverworldData_HiddenItems_Screen_1E ; 0x1E - Eastern Ruins
#_1BC337: dw OverworldData_HiddenItems_Screen_1E ; 0x1F - Eastern Ruins
#_1BC339: dw OverworldData_HiddenItems_Screen_18 ; 0x20 - Kakariko Village
#_1BC33B: dw OverworldData_HiddenItems_Screen_18 ; 0x21 - Kakariko Village
#_1BC33D: dw OverworldData_HiddenItems_Screen_22 ; 0x22 - Smith's House
#_1BC33F: dw OverworldData_HiddenItems_Screen_1B ; 0x23 - Hyrule Castle
#_1BC341: dw OverworldData_HiddenItems_Screen_1B ; 0x24 - Hyrule Castle
#_1BC343: dw OverworldData_HiddenItems_Screen_25 ; 0x25 - Boulder Field
#_1BC345: dw OverworldData_HiddenItems_Screen_1E ; 0x26 - Eastern Ruins
#_1BC347: dw OverworldData_HiddenItems_Screen_1E ; 0x27 - Eastern Ruins
#_1BC349: dw OverworldData_HiddenItems_Screen_28 ; 0x28 - Racing Game
#_1BC34B: dw OverworldData_HiddenItems_Screen_29 ; 0x29 - South of Kakariko
#_1BC34D: dw OverworldData_HiddenItems_Screen_2A ; 0x2A - Haunted Grove
#_1BC34F: dw OverworldData_HiddenItems_Screen_2B ; 0x2B - West of Link's House
#_1BC351: dw OverworldData_HiddenItems_Screen_2C ; 0x2C - Link's House
#_1BC353: dw OverworldData_HiddenItems_Screen_2D ; 0x2D - Eastern Bridge
#_1BC355: dw OverworldData_HiddenItems_Screen_2E ; 0x2E - Lake Hylia River Bend
#_1BC357: dw OverworldData_HiddenItems_Screen_2F ; 0x2F - Eastern Portalway
#_1BC359: dw OverworldData_HiddenItems_Screen_30 ; 0x30 - Desert
#_1BC35B: dw OverworldData_HiddenItems_Screen_30 ; 0x31 - Desert
#_1BC35D: dw OverworldData_HiddenItems_Screen_32 ; 0x32 - Haunted Grove Entrance
#_1BC35F: dw OverworldData_HiddenItems_Screen_33 ; 0x33 - Marshlands Portalway
#_1BC361: dw OverworldData_HiddenItems_Screen_34 ; 0x34 - Marshlands Totems
#_1BC363: dw OverworldData_HiddenItems_Screen_35 ; 0x35 - Lake Hylia
#_1BC365: dw OverworldData_HiddenItems_Screen_35 ; 0x36 - Lake Hylia
#_1BC367: dw OverworldData_HiddenItems_Screen_37 ; 0x37 - Lake Hylia River End
#_1BC369: dw OverworldData_HiddenItems_Screen_30 ; 0x38 - Desert
#_1BC36B: dw OverworldData_HiddenItems_Screen_30 ; 0x39 - Desert
#_1BC36D: dw OverworldData_HiddenItems_Screen_3A ; 0x3A - Desert Pass
#_1BC36F: dw OverworldData_HiddenItems_Screen_3B ; 0x3B - Marshlands Dam Entrance
#_1BC371: dw OverworldData_HiddenItems_Screen_3C ; 0x3C - Marshlands Ravine
#_1BC373: dw OverworldData_HiddenItems_Screen_35 ; 0x3D - Lake Hylia
#_1BC375: dw OverworldData_HiddenItems_Screen_35 ; 0x3E - Lake Hylia
#_1BC377: dw OverworldData_HiddenItems_Screen_3F ; 0x3F - Lake Hylia Waterfall

;---------------------------------------------------------------------------------------------------
; Dark World
;---------------------------------------------------------------------------------------------------
#_1BC379: dw OverworldData_HiddenItems_Screen_40 ; 0x40 - Skull Woods
#_1BC37B: dw OverworldData_HiddenItems_Screen_40 ; 0x41 - Skull Woods
#_1BC37D: dw OverworldData_HiddenItems_Screen_42 ; 0x42 - Dark Lumberjacks
#_1BC37F: dw OverworldData_HiddenItems_Screen_43 ; 0x43 - West Dark Death Mountain
#_1BC381: dw OverworldData_HiddenItems_Screen_43 ; 0x44 - West Dark Death Mountain
#_1BC383: dw OverworldData_HiddenItems_Screen_45 ; 0x45 - East Dark Death Mountain
#_1BC385: dw OverworldData_HiddenItems_Screen_45 ; 0x46 - East Dark Death Mountain
#_1BC387: dw OverworldData_HiddenItems_Screen_47 ; 0x47 - Turtle Rock
#_1BC389: dw OverworldData_HiddenItems_Screen_40 ; 0x48 - Skull Woods
#_1BC38B: dw OverworldData_HiddenItems_Screen_40 ; 0x49 - Skull Woods
#_1BC38D: dw OverworldData_HiddenItems_Screen_4A ; 0x4A - Bumper Ledge
#_1BC38F: dw OverworldData_HiddenItems_Screen_43 ; 0x4B - West Dark Death Mountain
#_1BC391: dw OverworldData_HiddenItems_Screen_43 ; 0x4C - West Dark Death Mountain
#_1BC393: dw OverworldData_HiddenItems_Screen_45 ; 0x4D - East Dark Death Mountain
#_1BC395: dw OverworldData_HiddenItems_Screen_45 ; 0x4E - East Dark Death Mountain
#_1BC397: dw OverworldData_HiddenItems_Screen_4F ; 0x4F - Lake of Bad Omens
#_1BC399: dw OverworldData_HiddenItems_Screen_50 ; 0x50 - Skull Woods Alcove
#_1BC39B: dw OverworldData_HiddenItems_Screen_51 ; 0x51 - North of Outcasts
#_1BC39D: dw OverworldData_HiddenItems_Screen_52 ; 0x52 - Dark Northwest Pond
#_1BC39F: dw OverworldData_HiddenItems_Screen_53 ; 0x53 - Dark Sanctuary
#_1BC3A1: dw OverworldData_HiddenItems_Screen_54 ; 0x54 - Dark Graveyard
#_1BC3A3: dw OverworldData_HiddenItems_Screen_55 ; 0x55 - Dark Hylia River Bend
#_1BC3A5: dw OverworldData_HiddenItems_Screen_56 ; 0x56 - Dark Northeast Shop
#_1BC3A7: dw OverworldData_HiddenItems_Screen_57 ; 0x57 - Dark Octorok Pit
#_1BC3A9: dw OverworldData_HiddenItems_Screen_58 ; 0x58 - Village of Outcasts
#_1BC3AB: dw OverworldData_HiddenItems_Screen_58 ; 0x59 - Village of Outcasts
#_1BC3AD: dw OverworldData_HiddenItems_Screen_5A ; 0x5A - Outcasts Orchard
#_1BC3AF: dw OverworldData_HiddenItems_Screen_5B ; 0x5B - Pyramid of Power
#_1BC3B1: dw OverworldData_HiddenItems_Screen_5B ; 0x5C - Pyramid of Power
#_1BC3B3: dw OverworldData_HiddenItems_Screen_5D ; 0x5D - Dark Hylia River Peninsula
#_1BC3B5: dw OverworldData_HiddenItems_Screen_5E ; 0x5E - Palace of Darkness Maze
#_1BC3B7: dw OverworldData_HiddenItems_Screen_5E ; 0x5F - Palace of Darkness Maze
#_1BC3B9: dw OverworldData_HiddenItems_Screen_58 ; 0x60 - Village of Outcasts
#_1BC3BB: dw OverworldData_HiddenItems_Screen_58 ; 0x61 - Village of Outcasts
#_1BC3BD: dw OverworldData_HiddenItems_Screen_62 ; 0x62 - Stake Puzzle
#_1BC3BF: dw OverworldData_HiddenItems_Screen_5B ; 0x63 - Pyramid of Power
#_1BC3C1: dw OverworldData_HiddenItems_Screen_5B ; 0x64 - Pyramid of Power
#_1BC3C3: dw OverworldData_HiddenItems_Screen_65 ; 0x65 - Boulder Field
#_1BC3C5: dw OverworldData_HiddenItems_Screen_5E ; 0x66 - Palace of Darkness Maze
#_1BC3C7: dw OverworldData_HiddenItems_Screen_5E ; 0x67 - Palace of Darkness Maze
#_1BC3C9: dw OverworldData_HiddenItems_Screen_68 ; 0x68 - Digging Game
#_1BC3CB: dw OverworldData_HiddenItems_Screen_69 ; 0x69 - South of Outcasts
#_1BC3CD: dw OverworldData_HiddenItems_Screen_6A ; 0x6A - Stumpy Grove
#_1BC3CF: dw OverworldData_HiddenItems_Screen_6B ; 0x6B - West of Bomb Shoppe
#_1BC3D1: dw OverworldData_HiddenItems_Screen_6C ; 0x6C - Bomb Shoppe
#_1BC3D3: dw OverworldData_HiddenItems_Screen_6D ; 0x6D - Hammer Bridge
#_1BC3D5: dw OverworldData_HiddenItems_Screen_6E ; 0x6E - Dark Lake Hylia River Bend
#_1BC3D7: dw OverworldData_HiddenItems_Screen_6F ; 0x6F - East Dark World Portalway
#_1BC3D9: dw OverworldData_HiddenItems_Screen_70 ; 0x70 - Misery Mire
#_1BC3DB: dw OverworldData_HiddenItems_Screen_70 ; 0x71 - Misery Mire
#_1BC3DD: dw OverworldData_HiddenItems_Screen_72 ; 0x72 - Stumpy Grove Entrance
#_1BC3DF: dw OverworldData_HiddenItems_Screen_73 ; 0x73 - Swamplands Portalway
#_1BC3E1: dw OverworldData_HiddenItems_Screen_74 ; 0x74 - Swamplands Totems
#_1BC3E3: dw OverworldData_HiddenItems_Screen_75 ; 0x75 - Dark Lake Hylia
#_1BC3E5: dw OverworldData_HiddenItems_Screen_75 ; 0x76 - Dark Lake Hylia
#_1BC3E7: dw OverworldData_HiddenItems_Screen_77 ; 0x77 - Dark Lake Hylia River End
#_1BC3E9: dw OverworldData_HiddenItems_Screen_70 ; 0x78 - Misery Mire
#_1BC3EB: dw OverworldData_HiddenItems_Screen_70 ; 0x79 - Misery Mire
#_1BC3ED: dw OverworldData_HiddenItems_Screen_7A ; 0x7A - West of Swamplands
#_1BC3EF: dw OverworldData_HiddenItems_Screen_7B ; 0x7B - Swamplands Palace Entrance
#_1BC3F1: dw OverworldData_HiddenItems_Screen_7C ; 0x7C - Swamplands Ravine
#_1BC3F3: dw OverworldData_HiddenItems_Screen_75 ; 0x7D - Dark Lake Hylia
#_1BC3F5: dw OverworldData_HiddenItems_Screen_75 ; 0x7E - Dark Lake Hylia
#_1BC3F7: dw OverworldData_HiddenItems_Screen_7F ; 0x7F - Dark Lake Hylia Waterfall

;===================================================================================================

; Lost Woods
OverworldData_HiddenItems_Screen_00:
#_1BC3F9: dw $036A : db $04 ; Random pack  xy:{ 0x350, 0x060 }
#_1BC3FC: dw $1914 : db $04 ; Random pack  xy:{ 0x0A0, 0x320 }
#_1BC3FF: dw $10E0 : db $80 ; Hole         xy:{ 0x300, 0x200 }
#_1BC402: dw $1AD0 : db $01 ; Green rupee  xy:{ 0x280, 0x340 }
#_1BC405: dw $FFFF

;===================================================================================================

; Lumberjacks
OverworldData_HiddenItems_Screen_02:
#_1BC407: dw $04AE : db $01 ; Green rupee  xy:{ 0x170, 0x080 }
#_1BC40A: dw $0D16 : db $03 ; Bee          xy:{ 0x0B0, 0x1A0 }
#_1BC40D: dw $0DA4 : db $01 ; Green rupee  xy:{ 0x120, 0x1A0 }
#_1BC410: dw $0EA0 : db $01 ; Green rupee  xy:{ 0x100, 0x1C0 }
#_1BC413: dw $FFFF

;===================================================================================================

; West Death Mountain
OverworldData_HiddenItems_Screen_03:
#_1BC415: dw $186A : db $05 ; Bomb         xy:{ 0x350, 0x300 }
#_1BC418: dw $1872 : db $05 ; Bomb         xy:{ 0x390, 0x300 }
#_1BC41B: dw $196E : db $04 ; Random pack  xy:{ 0x370, 0x320 }
#_1BC41E: dw $1A6A : db $05 ; Bomb         xy:{ 0x350, 0x340 }
#_1BC421: dw $1A72 : db $05 ; Bomb         xy:{ 0x390, 0x340 }
#_1BC424: dw $FFFF

;===================================================================================================

; East Death Mountain
OverworldData_HiddenItems_Screen_05:
#_1BC426: dw $1D4A : db $82 ; Warp         xy:{ 0x250, 0x3A0 }

;===================================================================================================

; Death Mountain peg puzzle
OverworldData_HiddenItems_Screen_07:
#_1BC429: dw $FFFF

;===================================================================================================

; Death Mountain foot
OverworldData_HiddenItems_Screen_0A:
#_1BC42B: dw $0730 : db $02 ; Hoarder      xy:{ 0x180, 0x0E0 }
#_1BC42E: dw $FFFF

;===================================================================================================

; Waterfall of Wishing
OverworldData_HiddenItems_Screen_0F:
#_1BC430: dw $0618 : db $06 ; Heart        xy:{ 0x0C0, 0x0C0 }
#_1BC433: dw $FFFF

;===================================================================================================

; Lost Woods grotto
OverworldData_HiddenItems_Screen_10:
#_1BC435: dw $0B28 : db $04 ; Random pack  xy:{ 0x140, 0x160 }
#_1BC438: dw $0B2E : db $82 ; Warp         xy:{ 0x170, 0x160 }
#_1BC43B: dw $FFFF

;===================================================================================================

; Kakariko fortune teller
OverworldData_HiddenItems_Screen_11:
#_1BC43D: dw $0A34 : db $05 ; Bomb         xy:{ 0x1A0, 0x140 }
#_1BC440: dw $0D8E : db $06 ; Heart        xy:{ 0x070, 0x1A0 }
#_1BC443: dw $FFFF

;===================================================================================================

; Northwest Pond
OverworldData_HiddenItems_Screen_12:
#_1BC445: dw $0530 : db $06 ; Heart        xy:{ 0x180, 0x0A0 }
#_1BC448: dw $0808 : db $04 ; Random pack  xy:{ 0x040, 0x100 }
#_1BC44B: dw $09B2 : db $06 ; Heart        xy:{ 0x190, 0x120 }
#_1BC44E: dw $FFFF

;===================================================================================================

; Sanctuary
OverworldData_HiddenItems_Screen_13:
#_1BC450: dw $0506 : db $84 ; Staircase    xy:{ 0x030, 0x0A0 }
#_1BC453: dw $07A0 : db $03 ; Bee          xy:{ 0x100, 0x0E0 }
#_1BC456: dw $0834 : db $04 ; Random pack  xy:{ 0x1A0, 0x100 }
#_1BC459: dw $08A8 : db $04 ; Random pack  xy:{ 0x140, 0x100 }
#_1BC45C: dw $09A2 : db $06 ; Heart        xy:{ 0x110, 0x120 }
#_1BC45F: dw $09B6 : db $04 ; Random pack  xy:{ 0x1B0, 0x120 }
#_1BC462: dw $FFFF

;===================================================================================================

; Graveyard
OverworldData_HiddenItems_Screen_14:
#_1BC464: dw $0490 : db $01 ; Green rupee  xy:{ 0x080, 0x080 }
#_1BC467: dw $0492 : db $01 ; Green rupee  xy:{ 0x090, 0x080 }
#_1BC46A: dw $071C : db $03 ; Bee          xy:{ 0x0E0, 0x0E0 }
#_1BC46D: dw $07B8 : db $04 ; Random pack  xy:{ 0x1C0, 0x0E0 }
#_1BC470: dw $0A08 : db $04 ; Random pack  xy:{ 0x040, 0x140 }
#_1BC473: dw $0A8C : db $03 ; Bee          xy:{ 0x060, 0x140 }
#_1BC476: dw $FFFF

;===================================================================================================

; Hylia River Bend
OverworldData_HiddenItems_Screen_15:
#_1BC478: dw $0390 : db $05 ; Bomb         xy:{ 0x080, 0x060 }
#_1BC47B: dw $0788 : db $80 ; Hole         xy:{ 0x040, 0x0E0 }
#_1BC47E: dw $FFFF

;===================================================================================================

; Potion Shop
OverworldData_HiddenItems_Screen_16:
#_1BC480: dw $079C : db $01 ; Green rupee  xy:{ 0x0E0, 0x0E0 }
#_1BC483: dw $0826 : db $03 ; Bee          xy:{ 0x130, 0x100 }
#_1BC486: dw $0928 : db $04 ; Random pack  xy:{ 0x140, 0x120 }
#_1BC489: dw $09A8 : db $04 ; Random pack  xy:{ 0x140, 0x120 }
#_1BC48C: dw $FFFF

;===================================================================================================

; Octorok Pit
OverworldData_HiddenItems_Screen_17:
#_1BC48E: dw $0E1C : db $06 ; Heart        xy:{ 0x0E0, 0x1C0 }
#_1BC491: dw $FFFF

;===================================================================================================

; Kakariko Village
OverworldData_HiddenItems_Screen_18:
#_1BC493: dw $0AF8 : db $04 ; Random pack  xy:{ 0x3C0, 0x140 }
#_1BC496: dw $0AFA : db $05 ; Bomb         xy:{ 0x3D0, 0x140 }
#_1BC499: dw $0EEE : db $01 ; Green rupee  xy:{ 0x370, 0x1C0 }
#_1BC49C: dw $1112 : db $03 ; Bee          xy:{ 0x090, 0x220 }
#_1BC49F: dw $111E : db $04 ; Random pack  xy:{ 0x0F0, 0x220 }
#_1BC4A2: dw $1216 : db $01 ; Green rupee  xy:{ 0x0B0, 0x240 }
#_1BC4A5: dw $12A0 : db $01 ; Green rupee  xy:{ 0x100, 0x240 }
#_1BC4A8: dw $1392 : db $01 ; Green rupee  xy:{ 0x090, 0x260 }
#_1BC4AB: dw $139E : db $01 ; Green rupee  xy:{ 0x0F0, 0x260 }
#_1BC4AE: dw $1A18 : db $04 ; Random pack  xy:{ 0x0C0, 0x340 }
#_1BC4B1: dw $1A96 : db $04 ; Random pack  xy:{ 0x0B0, 0x340 }
#_1BC4B4: dw $1A9A : db $05 ; Bomb         xy:{ 0x0D0, 0x340 }
#_1BC4B7: dw $1B14 : db $04 ; Random pack  xy:{ 0x0A0, 0x360 }
#_1BC4BA: dw $1C0C : db $86 ; Bomb door    xy:{ 0x060, 0x380 }
#_1BC4BD: dw $1CB2 : db $03 ; Bee          xy:{ 0x190, 0x380 }
#_1BC4C0: dw $156A : db $06 ; Heart        xy:{ 0x350, 0x2A0 }
#_1BC4C3: dw $15E2 : db $04 ; Random pack  xy:{ 0x310, 0x2A0 }
#_1BC4C6: dw $15EE : db $04 ; Random pack  xy:{ 0x370, 0x2A0 }
#_1BC4C9: dw $FFFF

;===================================================================================================

; Kakariko Orchard
OverworldData_HiddenItems_Screen_1A:
#_1BC4CB: dw $04AA : db $03 ; Bee          xy:{ 0x150, 0x080 }
#_1BC4CE: dw $0A98 : db $05 ; Bomb         xy:{ 0x0C0, 0x140 }
#_1BC4D1: dw $0DAA : db $04 ; Random pack  xy:{ 0x150, 0x1A0 }
#_1BC4D4: dw $FFFF

;===================================================================================================

; Hyrule Castle
OverworldData_HiddenItems_Screen_1B:
#_1BC4D6: dw $028C : db $01 ; Green rupee  xy:{ 0x060, 0x040 }
#_1BC4D9: dw $040C : db $04 ; Random pack  xy:{ 0x060, 0x080 }
#_1BC4DC: dw $040E : db $04 ; Random pack  xy:{ 0x070, 0x080 }
#_1BC4DF: dw $0724 : db $03 ; Bee          xy:{ 0x120, 0x0E0 }
#_1BC4E2: dw $02EC : db $04 ; Random pack  xy:{ 0x360, 0x040 }
#_1BC4E5: dw $0570 : db $80 ; Hole         xy:{ 0x380, 0x0A0 }
#_1BC4E8: dw $065C : db $06 ; Heart        xy:{ 0x2E0, 0x0C0 }
#_1BC4EB: dw $08F0 : db $01 ; Green rupee  xy:{ 0x380, 0x100 }
#_1BC4EE: dw $09EC : db $06 ; Heart        xy:{ 0x360, 0x120 }
#_1BC4F1: dw $0E4A : db $01 ; Green rupee  xy:{ 0x250, 0x1C0 }
#_1BC4F4: dw $0ED8 : db $01 ; Green rupee  xy:{ 0x2C0, 0x1C0 }
#_1BC4F7: dw $0F5A : db $01 ; Green rupee  xy:{ 0x2D0, 0x1E0 }
#_1BC4FA: dw $0FD8 : db $01 ; Green rupee  xy:{ 0x2C0, 0x1E0 }
#_1BC4FD: dw $10B4 : db $03 ; Bee          xy:{ 0x1A0, 0x200 }
#_1BC500: dw $169C : db $04 ; Random pack  xy:{ 0x0E0, 0x2C0 }
#_1BC503: dw $16A0 : db $01 ; Green rupee  xy:{ 0x100, 0x2C0 }
#_1BC506: dw $16A2 : db $01 ; Green rupee  xy:{ 0x110, 0x2C0 }
#_1BC509: dw $1C88 : db $01 ; Green rupee  xy:{ 0x040, 0x380 }
#_1BC50C: dw $1D92 : db $04 ; Random pack  xy:{ 0x090, 0x3A0 }
#_1BC50F: dw $10D4 : db $01 ; Green rupee  xy:{ 0x2A0, 0x200 }
#_1BC512: dw $1554 : db $01 ; Green rupee  xy:{ 0x2A0, 0x2A0 }
#_1BC515: dw $15DA : db $01 ; Green rupee  xy:{ 0x2D0, 0x2A0 }
#_1BC518: dw $15DE : db $01 ; Green rupee  xy:{ 0x2F0, 0x2A0 }
#_1BC51B: dw $1652 : db $01 ; Green rupee  xy:{ 0x290, 0x2C0 }
#_1BC51E: dw $1666 : db $01 ; Green rupee  xy:{ 0x330, 0x2C0 }
#_1BC521: dw $1D70 : db $05 ; Bomb         xy:{ 0x380, 0x3A0 }
#_1BC524: dw $1DDA : db $04 ; Random pack  xy:{ 0x2D0, 0x3A0 }
#_1BC527: dw $1DE0 : db $06 ; Heart        xy:{ 0x300, 0x3A0 }
#_1BC52A: dw $FFFF

;===================================================================================================

; Hylia River Peninsula
OverworldData_HiddenItems_Screen_1D:
#_1BC52C: dw $0230 : db $01 ; Green rupee  xy:{ 0x180, 0x040 }
#_1BC52F: dw $0234 : db $05 ; Bomb         xy:{ 0x1A0, 0x040 }

;===================================================================================================

; Eastern Ruins
OverworldData_HiddenItems_Screen_1E:
#_1BC532: dw $FFFF

;===================================================================================================

; Smith's House
OverworldData_HiddenItems_Screen_22:
#_1BC534: dw $0428 : db $05 ; Bomb         xy:{ 0x140, 0x080 }
#_1BC537: dw $0B0E : db $01 ; Green rupee  xy:{ 0x070, 0x160 }
#_1BC53A: dw $0B10 : db $01 ; Green rupee  xy:{ 0x080, 0x160 }
#_1BC53D: dw $0B16 : db $01 ; Green rupee  xy:{ 0x0B0, 0x160 }
#_1BC540: dw $0C16 : db $04 ; Random pack  xy:{ 0x0B0, 0x180 }
#_1BC543: dw $FFFF

;===================================================================================================

; Boulder Field
OverworldData_HiddenItems_Screen_25:
#_1BC545: dw $0908 : db $06 ; Heart        xy:{ 0x040, 0x120 }
#_1BC548: dw $FFFF

;===================================================================================================

; Racing Game
OverworldData_HiddenItems_Screen_28:
#_1BC54A: dw $072A : db $04 ; Random pack  xy:{ 0x150, 0x0E0 }
#_1BC54D: dw $FFFF

;===================================================================================================

; South of Kakariko
OverworldData_HiddenItems_Screen_29:
#_1BC54F: dw $0308 : db $01 ; Green rupee  xy:{ 0x040, 0x060 }
#_1BC552: dw $0728 : db $03 ; Bee          xy:{ 0x140, 0x0E0 }
#_1BC555: dw $0808 : db $04 ; Random pack  xy:{ 0x040, 0x100 }
#_1BC558: dw $0926 : db $04 ; Random pack  xy:{ 0x130, 0x120 }

;===================================================================================================

; Haunted Grove
OverworldData_HiddenItems_Screen_2A:
#_1BC55B: dw $FFFF

;===================================================================================================

; West of Link's House
OverworldData_HiddenItems_Screen_2B:
#_1BC55D: dw $031E : db $01 ; Green rupee  xy:{ 0x0F0, 0x060 }
#_1BC560: dw $0330 : db $84 ; Staircase    xy:{ 0x180, 0x060 }
#_1BC563: dw $0C10 : db $01 ; Green rupee  xy:{ 0x080, 0x180 }
#_1BC566: dw $0C18 : db $04 ; Random pack  xy:{ 0x0C0, 0x180 }
#_1BC569: dw $0C1A : db $06 ; Heart        xy:{ 0x0D0, 0x180 }
#_1BC56C: dw $0C8E : db $01 ; Green rupee  xy:{ 0x070, 0x180 }
#_1BC56F: dw $0C96 : db $01 ; Green rupee  xy:{ 0x0B0, 0x180 }
#_1BC572: dw $FFFF

;===================================================================================================

; Link's House
OverworldData_HiddenItems_Screen_2C:
#_1BC574: dw $0214 : db $01 ; Green rupee  xy:{ 0x0A0, 0x040 }
#_1BC577: dw $089E : db $01 ; Green rupee  xy:{ 0x0F0, 0x100 }
#_1BC57A: dw $0890 : db $01 ; Green rupee  xy:{ 0x080, 0x100 }
#_1BC57D: dw $0906 : db $01 ; Green rupee  xy:{ 0x030, 0x120 }
#_1BC580: dw $0984 : db $04 ; Random pack  xy:{ 0x020, 0x120 }
#_1BC583: dw $0A1C : db $05 ; Bomb         xy:{ 0x0E0, 0x140 }
#_1BC586: dw $0AB4 : db $06 ; Heart        xy:{ 0x1A0, 0x140 }
#_1BC589: dw $0BB6 : db $01 ; Green rupee  xy:{ 0x1B0, 0x160 }

;===================================================================================================

; Eastern Bridge
; Lake Hylia River Bend
OverworldData_HiddenItems_Screen_2D:
OverworldData_HiddenItems_Screen_2E:
#_1BC58C: dw $FFFF

;===================================================================================================

; Eastern Portalway
OverworldData_HiddenItems_Screen_2F:
#_1BC58E: dw $0BB2 : db $82 ; Warp         xy:{ 0x190, 0x160 }
#_1BC591: dw $0D12 : db $05 ; Bomb         xy:{ 0x090, 0x1A0 }
#_1BC594: dw $FFFF

;===================================================================================================

; Desert
OverworldData_HiddenItems_Screen_30:
#_1BC596: dw $0358 : db $84 ; Staircase    xy:{ 0x2C0, 0x060 }
#_1BC599: dw $0A50 : db $04 ; Random pack  xy:{ 0x280, 0x140 }
#_1BC59C: dw $1406 : db $06 ; Heart        xy:{ 0x030, 0x280 }
#_1BC59F: dw $1D94 : db $82 ; Warp         xy:{ 0x0A0, 0x3A0 }
#_1BC5A2: dw $FFFF

;===================================================================================================

; Haunted Grove Entrance
OverworldData_HiddenItems_Screen_32:
#_1BC5A4: dw $051E : db $05 ; Bomb         xy:{ 0x0F0, 0x0A0 }
#_1BC5A7: dw $052A : db $04 ; Random pack  xy:{ 0x150, 0x0A0 }
#_1BC5AA: dw $059C : db $05 ; Bomb         xy:{ 0x0E0, 0x0A0 }
#_1BC5AD: dw $FFFF

;===================================================================================================

; Marshlands Portalway
OverworldData_HiddenItems_Screen_33:
#_1BC5AF: dw $02A8 : db $82 ; Warp         xy:{ 0x140, 0x040 }
#_1BC5B2: dw $0B14 : db $02 ; Hoarder      xy:{ 0x0A0, 0x160 }
#_1BC5B5: dw $FFFF

;===================================================================================================

; Marshlands Totems
OverworldData_HiddenItems_Screen_34:
#_1BC5B7: dw $03B0 : db $86 ; Bomb door    xy:{ 0x180, 0x060 }
#_1BC5BA: dw $048C : db $04 ; Random pack  xy:{ 0x060, 0x080 }
#_1BC5BD: dw $FFFF

;===================================================================================================

; Lake Hylia
OverworldData_HiddenItems_Screen_35:
#_1BC5BF: dw $0A30 : db $04 ; Random pack  xy:{ 0x180, 0x140 }
#_1BC5C2: dw $0C10 : db $06 ; Heart        xy:{ 0x080, 0x180 }
#_1BC5C5: dw $0F56 : db $82 ; Warp         xy:{ 0x2B0, 0x1E0 }
#_1BC5C8: dw $180C : db $86 ; Bomb door    xy:{ 0x060, 0x300 }
#_1BC5CB: dw $1CDE : db $03 ; Bee          xy:{ 0x2F0, 0x380 }
#_1BC5CE: dw $FFFF

;===================================================================================================

; Lake Hylia River End
OverworldData_HiddenItems_Screen_37:
#_1BC5D0: dw $0288 : db $86 ; Bomb door    xy:{ 0x040, 0x040 }
#_1BC5D3: dw $03AA : db $05 ; Bomb         xy:{ 0x150, 0x060 }
#_1BC5D6: dw $040C : db $84 ; Staircase    xy:{ 0x060, 0x080 }
#_1BC5D9: dw $FFFF

;===================================================================================================

; Desert Pass
OverworldData_HiddenItems_Screen_3A:
#_1BC5DB: dw $081E : db $02 ; Hoarder      xy:{ 0x0F0, 0x100 }
#_1BC5DE: dw $09AC : db $06 ; Heart        xy:{ 0x160, 0x120 }
#_1BC5E1: dw $0A1E : db $84 ; Staircase    xy:{ 0x0F0, 0x140 }
#_1BC5E4: dw $FFFF

;===================================================================================================

; Marshlands Dam Entrance
OverworldData_HiddenItems_Screen_3B:
#_1BC5E6: dw $061A : db $03 ; Bee          xy:{ 0x0D0, 0x0C0 }
#_1BC5E9: dw $FFFF

;===================================================================================================

; Marshlands Ravine
OverworldData_HiddenItems_Screen_3C:
#_1BC5EB: dw $0696 : db $03 ; Bee          xy:{ 0x0B0, 0x0C0 }
#_1BC5EE: dw $0710 : db $04 ; Random pack  xy:{ 0x080, 0x0E0 }
#_1BC5F1: dw $FFFF

;===================================================================================================

; Lake Hylia Waterfall
OverworldData_HiddenItems_Screen_3F:
#_1BC5F3: dw $0C28 : db $04 ; Random pack  xy:{ 0x140, 0x180 }
#_1BC5F6: dw $FFFF

;---------------------------------------------------------------------------------------------------

; Skull Woods
OverworldData_HiddenItems_Screen_40:
#_1BC5F8: dw $0338 : db $04 ; Random pack  xy:{ 0x1C0, 0x060 }
#_1BC5FB: dw $036A : db $01 ; Green rupee  xy:{ 0x350, 0x060 }
#_1BC5FE: dw $0570 : db $03 ; Bee          xy:{ 0x380, 0x0A0 }
#_1BC601: dw $05F2 : db $04 ; Random pack  xy:{ 0x390, 0x0A0 }
#_1BC604: dw $1914 : db $03 ; Bee          xy:{ 0x0A0, 0x320 }
#_1BC607: dw $1D38 : db $06 ; Heart        xy:{ 0x1C0, 0x3A0 }
#_1BC60A: dw $1DBC : db $05 ; Bomb         xy:{ 0x1E0, 0x3A0 }
#_1BC60D: dw $105E : db $04 ; Random pack  xy:{ 0x2F0, 0x200 }
#_1BC610: dw $10E0 : db $80 ; Hole         xy:{ 0x300, 0x200 }
#_1BC613: dw $1162 : db $01 ; Green rupee  xy:{ 0x310, 0x220 }
#_1BC616: dw $FFFF

;===================================================================================================

; Dark Lumberjacks
OverworldData_HiddenItems_Screen_42:
#_1BC618: dw $04AC : db $01 ; Green rupee  xy:{ 0x160, 0x080 }
#_1BC61B: dw $05B4 : db $01 ; Green rupee  xy:{ 0x1A0, 0x0A0 }
#_1BC61E: dw $090A : db $03 ; Bee          xy:{ 0x050, 0x120 }
#_1BC621: dw $0D98 : db $01 ; Green rupee  xy:{ 0x0C0, 0x1A0 }
#_1BC624: dw $0DA4 : db $01 ; Green rupee  xy:{ 0x120, 0x1A0 }
#_1BC627: dw $0E1E : db $01 ; Green rupee  xy:{ 0x0F0, 0x1C0 }
#_1BC62A: dw $0EA8 : db $01 ; Green rupee  xy:{ 0x140, 0x1C0 }
#_1BC62D: dw $FFFF

;===================================================================================================

; West Dark Death Mountain
OverworldData_HiddenItems_Screen_43:
#_1BC62F: dw $0A60 : db $04 ; Random pack  xy:{ 0x300, 0x140 }
#_1BC632: dw $0BDA : db $04 ; Random pack  xy:{ 0x2D0, 0x160 }
#_1BC635: dw $0BE6 : db $04 ; Random pack  xy:{ 0x330, 0x160 }
#_1BC638: dw $0D60 : db $04 ; Random pack  xy:{ 0x300, 0x1A0 }
#_1BC63B: dw $1920 : db $01 ; Green rupee  xy:{ 0x100, 0x320 }
#_1BC63E: dw $1A04 : db $04 ; Random pack  xy:{ 0x020, 0x340 }
#_1BC641: dw $17EE : db $06 ; Heart        xy:{ 0x370, 0x2E0 }
#_1BC644: dw $1968 : db $06 ; Heart        xy:{ 0x340, 0x320 }
#_1BC647: dw $1974 : db $06 ; Heart        xy:{ 0x3A0, 0x320 }
#_1BC64A: dw $1AEE : db $06 ; Heart        xy:{ 0x370, 0x340 }
#_1BC64D: dw $FFFF

;===================================================================================================

; East Dark Death Mountain
OverworldData_HiddenItems_Screen_45:
#_1BC64F: dw $0868 : db $84 ; Staircase    xy:{ 0x340, 0x100 }
#_1BC652: dw $13D8 : db $05 ; Bomb         xy:{ 0x2C0, 0x260 }
#_1BC655: dw $145A : db $05 ; Bomb         xy:{ 0x2D0, 0x280 }

;===================================================================================================

; Turtle Rock
; Bumper Ledge
OverworldData_HiddenItems_Screen_47:
OverworldData_HiddenItems_Screen_4A:
#_1BC658: dw $FFFF

;===================================================================================================

; Lake of Bad Omens
OverworldData_HiddenItems_Screen_4F:
#_1BC65A: dw $06AE : db $05 ; Bomb         xy:{ 0x170, 0x0C0 }
#_1BC65D: dw $06B4 : db $05 ; Bomb         xy:{ 0x1A0, 0x0C0 }
#_1BC660: dw $0832 : db $06 ; Heart        xy:{ 0x190, 0x100 }
#_1BC663: dw $0A32 : db $06 ; Heart        xy:{ 0x190, 0x140 }
#_1BC666: dw $0B1C : db $06 ; Heart        xy:{ 0x0E0, 0x160 }
#_1BC669: dw $FFFF

;===================================================================================================

; Skull Woods Alcove
OverworldData_HiddenItems_Screen_50:
#_1BC66B: dw $040C : db $01 ; Green rupee  xy:{ 0x060, 0x080 }
#_1BC66E: dw $0792 : db $01 ; Green rupee  xy:{ 0x090, 0x0E0 }
#_1BC671: dw $0798 : db $04 ; Random pack  xy:{ 0x0C0, 0x0E0 }
#_1BC674: dw $079E : db $04 ; Random pack  xy:{ 0x0F0, 0x0E0 }
#_1BC677: dw $07A4 : db $01 ; Green rupee  xy:{ 0x120, 0x0E0 }
#_1BC67A: dw $0A34 : db $01 ; Green rupee  xy:{ 0x1A0, 0x140 }
#_1BC67D: dw $FFFF

;===================================================================================================

; North of Outcasts
OverworldData_HiddenItems_Screen_51:
#_1BC67F: dw $0716 : db $03 ; Bee          xy:{ 0x0B0, 0x0E0 }
#_1BC682: dw $092A : db $01 ; Green rupee  xy:{ 0x150, 0x120 }
#_1BC685: dw $0A34 : db $05 ; Bomb         xy:{ 0x1A0, 0x140 }
#_1BC688: dw $0AA4 : db $01 ; Green rupee  xy:{ 0x120, 0x140 }
#_1BC68B: dw $0B98 : db $01 ; Green rupee  xy:{ 0x0C0, 0x160 }
#_1BC68E: dw $0C1A : db $01 ; Green rupee  xy:{ 0x0D0, 0x180 }
#_1BC691: dw $0D18 : db $01 ; Green rupee  xy:{ 0x0C0, 0x1A0 }
#_1BC694: dw $0D8E : db $04 ; Random pack  xy:{ 0x070, 0x1A0 }
#_1BC697: dw $FFFF

;===================================================================================================

; Dark Northwest Pond
OverworldData_HiddenItems_Screen_52:
#_1BC699: dw $04B2 : db $06 ; Heart        xy:{ 0x190, 0x080 }
#_1BC69C: dw $0530 : db $06 ; Heart        xy:{ 0x180, 0x0A0 }
#_1BC69F: dw $05AE : db $06 ; Heart        xy:{ 0x170, 0x0A0 }
#_1BC6A2: dw $0788 : db $01 ; Green rupee  xy:{ 0x040, 0x0E0 }
#_1BC6A5: dw $0808 : db $01 ; Green rupee  xy:{ 0x040, 0x100 }
#_1BC6A8: dw $0888 : db $01 ; Green rupee  xy:{ 0x040, 0x100 }
#_1BC6AB: dw $09B2 : db $04 ; Random pack  xy:{ 0x190, 0x120 }
#_1BC6AE: dw $FFFF

;===================================================================================================

; Dark Sanctuary
OverworldData_HiddenItems_Screen_53:
#_1BC6B0: dw $0584 : db $05 ; Bomb         xy:{ 0x020, 0x0A0 }
#_1BC6B3: dw $05B8 : db $04 ; Random pack  xy:{ 0x1C0, 0x0A0 }
#_1BC6B6: dw $0606 : db $05 ; Bomb         xy:{ 0x030, 0x0C0 }
#_1BC6B9: dw $0688 : db $05 ; Bomb         xy:{ 0x040, 0x0C0 }
#_1BC6BC: dw $070A : db $05 ; Bomb         xy:{ 0x050, 0x0E0 }
#_1BC6BF: dw $078C : db $05 ; Bomb         xy:{ 0x060, 0x0E0 }
#_1BC6C2: dw $07A0 : db $01 ; Green rupee  xy:{ 0x100, 0x0E0 }
#_1BC6C5: dw $07B6 : db $03 ; Bee          xy:{ 0x1B0, 0x0E0 }
#_1BC6C8: dw $0822 : db $01 ; Green rupee  xy:{ 0x110, 0x100 }
#_1BC6CB: dw $082E : db $01 ; Green rupee  xy:{ 0x170, 0x100 }
#_1BC6CE: dw $08A6 : db $01 ; Green rupee  xy:{ 0x130, 0x100 }
#_1BC6D1: dw $08B0 : db $01 ; Green rupee  xy:{ 0x180, 0x100 }
#_1BC6D4: dw $0920 : db $04 ; Random pack  xy:{ 0x100, 0x120 }
#_1BC6D7: dw $0928 : db $01 ; Green rupee  xy:{ 0x140, 0x120 }
#_1BC6DA: dw $0934 : db $01 ; Green rupee  xy:{ 0x1A0, 0x120 }
#_1BC6DD: dw $09B6 : db $01 ; Green rupee  xy:{ 0x1B0, 0x120 }
#_1BC6E0: dw $FFFF

;===================================================================================================

; Dark Graveyard
OverworldData_HiddenItems_Screen_54:
#_1BC6E2: dw $0490 : db $04 ; Random pack  xy:{ 0x080, 0x080 }
#_1BC6E5: dw $0492 : db $04 ; Random pack  xy:{ 0x090, 0x080 }
#_1BC6E8: dw $05AE : db $01 ; Green rupee  xy:{ 0x170, 0x0A0 }
#_1BC6EB: dw $07B8 : db $03 ; Bee          xy:{ 0x1C0, 0x0E0 }
#_1BC6EE: dw $FFFF

;===================================================================================================

; Dark Hylia River Bend
OverworldData_HiddenItems_Screen_55:
#_1BC6F0: dw $038A : db $05 ; Bomb         xy:{ 0x050, 0x060 }
#_1BC6F3: dw $0788 : db $04 ; Random pack  xy:{ 0x040, 0x0E0 }
#_1BC6F6: dw $FFFF

; Dark Northeast Shop
OverworldData_HiddenItems_Screen_56:
#_1BC6F8: dw $079C : db $04 ; Random pack  xy:{ 0x0E0, 0x0E0 }
#_1BC6FB: dw $08A6 : db $01 ; Green rupee  xy:{ 0x130, 0x100 }
#_1BC6FE: dw $0926 : db $01 ; Green rupee  xy:{ 0x130, 0x120 }
#_1BC701: dw $09A6 : db $01 ; Green rupee  xy:{ 0x130, 0x120 }
#_1BC704: dw $0A26 : db $01 ; Green rupee  xy:{ 0x130, 0x140 }
#_1BC707: dw $0C98 : db $01 ; Green rupee  xy:{ 0x0C0, 0x180 }
#_1BC70A: dw $0D1A : db $01 ; Green rupee  xy:{ 0x0D0, 0x1A0 }
#_1BC70D: dw $FFFF

;===================================================================================================

; Dark Octorok Pit
OverworldData_HiddenItems_Screen_57:
#_1BC70F: dw $0E1C : db $06 ; Heart        xy:{ 0x0E0, 0x1C0 }
#_1BC712: dw $0E20 : db $06 ; Heart        xy:{ 0x100, 0x1C0 }
#_1BC715: dw $FFFF

;===================================================================================================

; Village of Outcasts
OverworldData_HiddenItems_Screen_58:
#_1BC717: dw $049A : db $04 ; Random pack  xy:{ 0x0D0, 0x080 }
#_1BC71A: dw $0C96 : db $03 ; Bee          xy:{ 0x0B0, 0x180 }
#_1BC71D: dw $0654 : db $01 ; Green rupee  xy:{ 0x2A0, 0x0C0 }
#_1BC720: dw $0656 : db $01 ; Green rupee  xy:{ 0x2B0, 0x0C0 }
#_1BC723: dw $0AF8 : db $04 ; Random pack  xy:{ 0x3C0, 0x140 }
#_1BC726: dw $0AFA : db $04 ; Random pack  xy:{ 0x3D0, 0x140 }
#_1BC729: dw $0CD6 : db $01 ; Green rupee  xy:{ 0x2B0, 0x180 }
#_1BC72C: dw $0E64 : db $01 ; Green rupee  xy:{ 0x320, 0x1C0 }
#_1BC72F: dw $0F66 : db $01 ; Green rupee  xy:{ 0x330, 0x1E0 }
#_1BC732: dw $1092 : db $01 ; Green rupee  xy:{ 0x090, 0x200 }
#_1BC735: dw $10A0 : db $04 ; Random pack  xy:{ 0x100, 0x200 }
#_1BC738: dw $1114 : db $01 ; Green rupee  xy:{ 0x0A0, 0x220 }
#_1BC73B: dw $1212 : db $01 ; Green rupee  xy:{ 0x090, 0x240 }
#_1BC73E: dw $121E : db $04 ; Random pack  xy:{ 0x0F0, 0x240 }
#_1BC741: dw $1296 : db $01 ; Green rupee  xy:{ 0x0B0, 0x240 }
#_1BC744: dw $199C : db $04 ; Random pack  xy:{ 0x0E0, 0x320 }
#_1BC747: dw $1A14 : db $04 ; Random pack  xy:{ 0x0A0, 0x340 }
#_1BC74A: dw $1A98 : db $04 ; Random pack  xy:{ 0x0C0, 0x340 }
#_1BC74D: dw $1B1E : db $04 ; Random pack  xy:{ 0x0F0, 0x360 }
#_1BC750: dw $1C34 : db $05 ; Bomb         xy:{ 0x1A0, 0x380 }
#_1BC753: dw $1CA6 : db $05 ; Bomb         xy:{ 0x130, 0x380 }
#_1BC756: dw $1AB6 : db $86 ; Bomb door    xy:{ 0x1B0, 0x340 }
#_1BC759: dw $14EC : db $01 ; Green rupee  xy:{ 0x360, 0x280 }
#_1BC75C: dw $15E2 : db $01 ; Green rupee  xy:{ 0x310, 0x2A0 }
#_1BC75F: dw $1A4A : db $04 ; Random pack  xy:{ 0x250, 0x340 }
#_1BC762: dw $1B48 : db $03 ; Bee          xy:{ 0x240, 0x360 }
#_1BC765: dw $FFFF

;===================================================================================================

; Outcasts Orchard
OverworldData_HiddenItems_Screen_5A:
#_1BC767: dw $041A : db $06 ; Heart        xy:{ 0x0D0, 0x080 }
#_1BC76A: dw $08B4 : db $01 ; Green rupee  xy:{ 0x1A0, 0x100 }
#_1BC76D: dw $0A32 : db $01 ; Green rupee  xy:{ 0x190, 0x140 }
#_1BC770: dw $0B32 : db $01 ; Green rupee  xy:{ 0x190, 0x160 }
#_1BC773: dw $0C22 : db $01 ; Green rupee  xy:{ 0x110, 0x180 }
#_1BC776: dw $0C26 : db $01 ; Green rupee  xy:{ 0x130, 0x180 }
#_1BC779: dw $0C2C : db $01 ; Green rupee  xy:{ 0x160, 0x180 }
#_1BC77C: dw $0C30 : db $01 ; Green rupee  xy:{ 0x180, 0x180 }
#_1BC77F: dw $0C8E : db $05 ; Bomb         xy:{ 0x070, 0x180 }
#_1BC782: dw $0CB4 : db $01 ; Green rupee  xy:{ 0x1A0, 0x180 }
#_1BC785: dw $FFFF

;===================================================================================================

; Pyramid of Power
OverworldData_HiddenItems_Screen_5B:
#_1BC787: dw $0E2E : db $86 ; Bomb door    xy:{ 0x170, 0x1C0 }
#_1BC78A: dw $1C88 : db $04 ; Random pack  xy:{ 0x040, 0x380 }
#_1BC78D: dw $1E0E : db $01 ; Green rupee  xy:{ 0x070, 0x3C0 }
#_1BC790: dw $1E12 : db $01 ; Green rupee  xy:{ 0x090, 0x3C0 }
#_1BC793: dw $1DDA : db $01 ; Green rupee  xy:{ 0x2D0, 0x3A0 }
#_1BC796: dw $1E60 : db $01 ; Green rupee  xy:{ 0x300, 0x3C0 }
#_1BC799: dw $1E72 : db $03 ; Bee          xy:{ 0x390, 0x3C0 }

;===================================================================================================

; Dark Hylia River Peninsula
; Palace of Darkness Maze
OverworldData_HiddenItems_Screen_5D:
OverworldData_HiddenItems_Screen_5E:
#_1BC79C: dw $FFFF

;===================================================================================================

; Stake Puzzle
OverworldData_HiddenItems_Screen_62:
#_1BC79E: dw $0428 : db $04 ; Random pack  xy:{ 0x140, 0x080 }
#_1BC7A1: dw $0B92 : db $01 ; Green rupee  xy:{ 0x090, 0x160 }
#_1BC7A4: dw $0C92 : db $01 ; Green rupee  xy:{ 0x090, 0x180 }
#_1BC7A7: dw $0C96 : db $01 ; Green rupee  xy:{ 0x0B0, 0x180 }
#_1BC7AA: dw $0D92 : db $01 ; Green rupee  xy:{ 0x090, 0x1A0 }
#_1BC7AD: dw $0E10 : db $01 ; Green rupee  xy:{ 0x080, 0x1C0 }
#_1BC7B0: dw $FFFF

;===================================================================================================

; Boulder Field
OverworldData_HiddenItems_Screen_65:
#_1BC7B2: dw $0908 : db $06 ; Heart        xy:{ 0x040, 0x120 }
#_1BC7B5: dw $FFFF

;===================================================================================================

; Digging Game
OverworldData_HiddenItems_Screen_68:
#_1BC7B7: dw $0420 : db $01 ; Green rupee  xy:{ 0x100, 0x080 }
#_1BC7BA: dw $0428 : db $01 ; Green rupee  xy:{ 0x140, 0x080 }
#_1BC7BD: dw $0920 : db $03 ; Bee          xy:{ 0x100, 0x120 }
#_1BC7C0: dw $0AB2 : db $04 ; Random pack  xy:{ 0x190, 0x140 }
#_1BC7C3: dw $FFFF

;===================================================================================================

; South of Outcasts
OverworldData_HiddenItems_Screen_69:
#_1BC7C5: dw $0408 : db $01 ; Green rupee  xy:{ 0x040, 0x080 }
#_1BC7C8: dw $040C : db $01 ; Green rupee  xy:{ 0x060, 0x080 }
#_1BC7CB: dw $0728 : db $04 ; Random pack  xy:{ 0x140, 0x0E0 }
#_1BC7CE: dw $0926 : db $01 ; Green rupee  xy:{ 0x130, 0x120 }
#_1BC7D1: dw $09A4 : db $01 ; Green rupee  xy:{ 0x120, 0x120 }
#_1BC7D4: dw $09A6 : db $01 ; Green rupee  xy:{ 0x130, 0x120 }

;===================================================================================================

; Stumpy Grove
OverworldData_HiddenItems_Screen_6A:
#_1BC7D7: dw $FFFF

;===================================================================================================

; West of Bomb Shoppe
OverworldData_HiddenItems_Screen_6B:
#_1BC7D9: dw $0320 : db $04 ; Random pack  xy:{ 0x100, 0x060 }
#_1BC7DC: dw $0330 : db $84 ; Staircase    xy:{ 0x180, 0x060 }
#_1BC7DF: dw $0C0E : db $01 ; Green rupee  xy:{ 0x070, 0x180 }
#_1BC7E2: dw $0C12 : db $01 ; Green rupee  xy:{ 0x090, 0x180 }
#_1BC7E5: dw $0C96 : db $01 ; Green rupee  xy:{ 0x0B0, 0x180 }
#_1BC7E8: dw $0C9A : db $01 ; Green rupee  xy:{ 0x0D0, 0x180 }
#_1BC7EB: dw $FFFF

;===================================================================================================

; Bomb Shoppe
OverworldData_HiddenItems_Screen_6C:
#_1BC7ED: dw $0226 : db $01 ; Green rupee  xy:{ 0x130, 0x040 }
#_1BC7F0: dw $0890 : db $01 ; Green rupee  xy:{ 0x080, 0x100 }
#_1BC7F3: dw $089C : db $01 ; Green rupee  xy:{ 0x0E0, 0x100 }
#_1BC7F6: dw $0906 : db $01 ; Green rupee  xy:{ 0x030, 0x120 }
#_1BC7F9: dw $0912 : db $01 ; Green rupee  xy:{ 0x090, 0x120 }
#_1BC7FC: dw $091E : db $01 ; Green rupee  xy:{ 0x0F0, 0x120 }
#_1BC7FF: dw $0984 : db $04 ; Random pack  xy:{ 0x020, 0x120 }
#_1BC802: dw $0AB4 : db $04 ; Random pack  xy:{ 0x1A0, 0x140 }
#_1BC805: dw $0B36 : db $04 ; Random pack  xy:{ 0x1B0, 0x160 }
#_1BC808: dw $0BB8 : db $04 ; Random pack  xy:{ 0x1C0, 0x160 }

;===================================================================================================

; Hammer Bridge
; Dark Lake Hylia River Bend
OverworldData_HiddenItems_Screen_6D:
OverworldData_HiddenItems_Screen_6E:
#_1BC80B: dw $FFFF

;===================================================================================================

; East Dark World Portalway
OverworldData_HiddenItems_Screen_6F:
#_1BC80D: dw $0B24 : db $05 ; Bomb         xy:{ 0x120, 0x160 }
#_1BC810: dw $0B8C : db $05 ; Bomb         xy:{ 0x060, 0x160 }
#_1BC813: dw $0B96 : db $05 ; Bomb         xy:{ 0x0B0, 0x160 }
#_1BC816: dw $0D12 : db $05 ; Bomb         xy:{ 0x090, 0x1A0 }
#_1BC819: dw $FFFF

;===================================================================================================

; Misery Mire
OverworldData_HiddenItems_Screen_70:
#_1BC81B: dw $1406 : db $06 ; Heart        xy:{ 0x030, 0x280 }
#_1BC81E: dw $1486 : db $06 ; Heart        xy:{ 0x030, 0x280 }
#_1BC821: dw $FFFF

;===================================================================================================

; Stumpy Grove Entrance
OverworldData_HiddenItems_Screen_72:
#_1BC823: dw $051C : db $04 ; Random pack  xy:{ 0x0E0, 0x0A0 }
#_1BC826: dw $051E : db $04 ; Random pack  xy:{ 0x0F0, 0x0A0 }
#_1BC829: dw $059C : db $04 ; Random pack  xy:{ 0x0E0, 0x0A0 }
#_1BC82C: dw $059E : db $04 ; Random pack  xy:{ 0x0F0, 0x0A0 }
#_1BC82F: dw $0626 : db $03 ; Bee          xy:{ 0x130, 0x0C0 }
#_1BC832: dw $0A8C : db $01 ; Green rupee  xy:{ 0x060, 0x140 }
#_1BC835: dw $0B90 : db $01 ; Green rupee  xy:{ 0x080, 0x160 }
#_1BC838: dw $0C08 : db $01 ; Green rupee  xy:{ 0x040, 0x180 }
#_1BC83B: dw $0D0C : db $01 ; Green rupee  xy:{ 0x060, 0x1A0 }

;===================================================================================================

; Swamplands Portalway
OverworldData_HiddenItems_Screen_73:
#_1BC83E: dw $FFFF

;===================================================================================================

; Swamplands Totems
OverworldData_HiddenItems_Screen_74:
#_1BC840: dw $03B0 : db $86 ; Bomb door    xy:{ 0x180, 0x060 }
#_1BC843: dw $040C : db $01 ; Green rupee  xy:{ 0x060, 0x080 }
#_1BC846: dw $0590 : db $01 ; Green rupee  xy:{ 0x080, 0x0A0 }
#_1BC849: dw $0614 : db $01 ; Green rupee  xy:{ 0x0A0, 0x0C0 }
#_1BC84C: dw $0728 : db $06 ; Heart        xy:{ 0x140, 0x0E0 }
#_1BC84F: dw $090A : db $01 ; Green rupee  xy:{ 0x050, 0x120 }
#_1BC852: dw $0D9E : db $04 ; Random pack  xy:{ 0x0F0, 0x1A0 }
#_1BC855: dw $FFFF

;===================================================================================================

; Dark Lake Hylia
OverworldData_HiddenItems_Screen_75:
#_1BC857: dw $0298 : db $06 ; Heart        xy:{ 0x0C0, 0x040 }
#_1BC85A: dw $0C10 : db $04 ; Random pack  xy:{ 0x080, 0x180 }
#_1BC85D: dw $FFFF

;===================================================================================================

; Dark Lake Hylia River End
OverworldData_HiddenItems_Screen_77:
#_1BC85F: dw $0288 : db $86 ; Bomb door    xy:{ 0x040, 0x040 }
#_1BC862: dw $03AA : db $06 ; Heart        xy:{ 0x150, 0x060 }
#_1BC865: dw $040C : db $84 ; Staircase    xy:{ 0x060, 0x080 }
#_1BC868: dw $0518 : db $05 ; Bomb         xy:{ 0x0C0, 0x0A0 }
#_1BC86B: dw $FFFF

;===================================================================================================

; West of Swamplands
OverworldData_HiddenItems_Screen_7A:
#_1BC86D: dw $0526 : db $05 ; Bomb         xy:{ 0x130, 0x0A0 }
#_1BC870: dw $052A : db $05 ; Bomb         xy:{ 0x150, 0x0A0 }
#_1BC873: dw $052E : db $05 ; Bomb         xy:{ 0x170, 0x0A0 }
#_1BC876: dw $09AC : db $06 ; Heart        xy:{ 0x160, 0x120 }
#_1BC879: dw $FFFF

;===================================================================================================

; Swamplands Palace Entrance
OverworldData_HiddenItems_Screen_7B:
#_1BC87B: dw $0420 : db $06 ; Heart        xy:{ 0x100, 0x080 }
#_1BC87E: dw $061A : db $04 ; Random pack  xy:{ 0x0D0, 0x0C0 }
#_1BC881: dw $0696 : db $04 ; Random pack  xy:{ 0x0B0, 0x0C0 }
#_1BC884: dw $FFFF

;===================================================================================================

; Swamplands Ravine
OverworldData_HiddenItems_Screen_7C:
#_1BC886: dw $02A8 : db $05 ; Bomb         xy:{ 0x140, 0x040 }
#_1BC889: dw $0316 : db $06 ; Heart        xy:{ 0x0B0, 0x060 }
#_1BC88C: dw $0698 : db $06 ; Heart        xy:{ 0x0C0, 0x0C0 }
#_1BC88F: dw $0714 : db $04 ; Random pack  xy:{ 0x0A0, 0x0E0 }
#_1BC892: dw $FFFF

;===================================================================================================

; Dark Lake Hylia Waterfall
OverworldData_HiddenItems_Screen_7F:
#_1BC894: dw $02AE : db $04 ; Random pack  xy:{ 0x170, 0x040 }
#_1BC897: dw $0C28 : db $04 ; Random pack  xy:{ 0x140, 0x180 }
#_1BC89A: dw $FFFF

;===================================================================================================

Overworld_SecretTileType:
#_1BC89C: dw $0DC6 ; hole
#_1BC89E: dw $0212 ; portal
#_1BC8A0: dw $FFFF ; garbage
#_1BC8A2: dw $0DAE ; bomb hole

;===================================================================================================
; Exits with carry to indicate success
;===================================================================================================
Overworld_RevealSecret:
#_1BC8A4: STX.b $04

#_1BC8A6: LDA.w $0B9C
#_1BC8A9: AND.w #$FF00
#_1BC8AC: STA.w $0B9C

; Special areas don't have secrets
#_1BC8AF: LDA.b $8A
#_1BC8B1: CMP.w #$0080 ; SPOW
#_1BC8B4: BCS .fail

; Save the pointer for the secrets list
#_1BC8B6: ASL A
#_1BC8B7: TAX

#_1BC8B8: LDA.l OverworldData_HiddenItems,X
#_1BC8BC: STA.b $00

#_1BC8BE: LDA.w #OverworldData_HiddenItems>>16
#_1BC8C1: STA.b $02

; we start with an increment, so init Y negative
#_1BC8C3: LDY.w #-3

.next_check
#_1BC8C6: INY
#_1BC8C7: INY
#_1BC8C8: INY

#_1BC8C9: LDA.b [$00],Y

; End of list was reached
#_1BC8CB: CMP.w #$FFFF
#_1BC8CE: BEQ .fail

#_1BC8D0: AND.w #$7FFF
#_1BC8D3: CMP.b $04
#_1BC8D5: BNE .next_check

#_1BC8D7: INY
#_1BC8D8: INY

#_1BC8D9: LDA.b [$00],Y
#_1BC8DB: AND.w #$00FF
#_1BC8DE: BEQ .dont_set_secret_id

; this branch could be pointed to $1B:C8F0
#_1BC8E0: CMP.w #$0080
#_1BC8E3: BCS .dont_set_secret_id

#_1BC8E5: TSB.w $0B9C

.dont_set_secret_id
; tile reveal secrets are 0x0080+
#_1BC8E8: AND.w #$00FF
#_1BC8EB: CMP.w #$0080
#_1BC8EE: BCC .item_secret

#_1BC8F0: PHA

#_1BC8F1: LDA.w $0B9C
#_1BC8F4: ORA.w #$00FF
#_1BC8F7: STA.w $0B9C

#_1BC8FA: PLA
#_1BC8FB: CMP.w #$0084
#_1BC8FE: BEQ .not_stairs

#_1BC900: LDX.b $8A
#_1BC902: LDA.l $7EF280,X
#_1BC906: AND.w #$0002
#_1BC909: BNE .not_stairs

; explicit check for super bomb at pyramid
#_1BC90B: LDA.b $8A
#_1BC90D: CMP.w #$005B ; OW 5B
#_1BC910: BNE .not_pyramid_screen

#_1BC912: LDA.l $7EF3CC
#_1BC916: AND.w #$00FF
#_1BC919: CMP.w #$0D ; FOLLOWER 0D
#_1BC91C: BNE .fail

.not_pyramid_screen
#_1BC91E: SEP #$20

#_1BC920: LDA.b #$1B ; SFX3.1B
#_1BC922: STA.w $012F

#_1BC925: REP #$20

.not_stairs
#_1BC927: LDA.b [$00],Y
#_1BC929: AND.w #$000F
#_1BC92C: TAX

#_1BC92D: LDA.l Overworld_SecretTileType,X
#_1BC931: STA.b $0E

.fail
#_1BC933: JSR AdjustSecretForPowder
#_1BC936: LDX.b $04

#_1BC938: CLC

#_1BC939: RTS

.item_secret
#_1BC93A: JSR AdjustSecretForPowder
#_1BC93D: LDX.b $04
#_1BC93F: LDA.b $0E

#_1BC941: SEC

#_1BC942: RTS

;===================================================================================================
; Sets the better prize pack when using powder.
; All it checks for is the powder bit.
; It doesn't care or check whether powder is what actually revealed the secret.
;===================================================================================================
AdjustSecretForPowder:
#_1BC943: LDA.w $0301
#_1BC946: AND.w #$0040
#_1BC949: BEQ .not_powder

#_1BC94B: LDA.w #$0004
#_1BC94E: STA.w $0B9C

.not_powder
#_1BC951: RTS

;===================================================================================================

Overworld_DrawWoodenDoor:
#_1BC952: BCS .closed

#_1BC954: LDA.w #$0D9E
#_1BC957: JSL Overworld_DrawMap16_Persist

#_1BC95B: LDA.w #$0DA0
#_1BC95E: BRA .right_side

.closed
#_1BC960: LDA.w #$0D9F
#_1BC963: JSL Overworld_DrawMap16_Persist

#_1BC967: LDA.w #$0DA1

.right_side
#_1BC96A: STA.l $7E2002,X

#_1BC96E: LDY.w #$0002
#_1BC971: JSL Overworld_DrawMap16_Anywhere

#_1BC975: SEP #$30

#_1BC977: LDA.b #$01
#_1BC979: STA.b $14

#_1BC97B: RTL

;===================================================================================================

Overworld_DrawMap16_Persist:
#_1BC97C: STA.l $7E2000,X

;---------------------------------------------------------------------------------------------------

Overworld_DrawMap16:
#_1BC980: LDY.w #$0000

;---------------------------------------------------------------------------------------------------

Overworld_DrawMap16_Anywhere:
#_1BC983: PHX

#_1BC984: ASL A
#_1BC985: ASL A
#_1BC986: ASL A

#_1BC987: STA.b $0C
#_1BC989: STY.b $00

#_1BC98B: TXA
#_1BC98C: CLC
#_1BC98D: ADC.b $00
#_1BC98F: STA.b $00

#_1BC991: JSR Overworld_FindMap16VRAMAddress

; builds stripes
#_1BC994: LDY.w $1000

#_1BC997: LDA.b $02
#_1BC999: XBA
#_1BC99A: STA.w $1002,Y

#_1BC99D: LDA.b $02
#_1BC99F: CLC
#_1BC9A0: ADC.w #$0020
#_1BC9A3: XBA
#_1BC9A4: STA.w $100A,Y

#_1BC9A7: LDA.w #$0300
#_1BC9AA: STA.w $1004,Y
#_1BC9AD: STA.w $100C,Y

#_1BC9B0: LDX.b $0C

#_1BC9B2: LDA.l Map16Definitions+0,X
#_1BC9B6: STA.w $1006,Y

#_1BC9B9: LDA.l Map16Definitions+2,X
#_1BC9BD: STA.w $1008,Y

#_1BC9C0: LDA.l Map16Definitions+4,X
#_1BC9C4: STA.w $100E,Y

#_1BC9C7: LDA.l Map16Definitions+6,X
#_1BC9CB: STA.w $1010,Y

#_1BC9CE: LDA.w #$FFFF
#_1BC9D1: STA.w $1012,Y

#_1BC9D4: TYA
#_1BC9D5: CLC
#_1BC9D6: ADC.w #$0010
#_1BC9D9: STA.w $1000

#_1BC9DC: PLX

#_1BC9DD: RTL

;===================================================================================================
; TODO needs a better name
; Extremely important routine related to tile map
; X = Index of tile - exits +2
; A = New tile - exits +1
;===================================================================================================
Overworld_AlterTileHardcore:
#_1BC9DE: PHA

#_1BC9DF: STA.l $7E2000,X

#_1BC9E3: PHX

#_1BC9E4: ASL A
#_1BC9E5: ASL A
#_1BC9E6: ASL A
#_1BC9E7: STA.b $0C

#_1BC9E9: TXA
#_1BC9EA: CLC
#_1BC9EB: ADC.w #$0000
#_1BC9EE: STA.b $00

; Holds VRAM address
#_1BC9F0: STZ.b $02

#_1BC9F2: AND.w #$003F
#_1BC9F5: CMP.w #$0020
#_1BC9F8: BCC .dont_adjust_vadd

#_1BC9FA: LDA.w #$0400
#_1BC9FD: STA.b $02

.dont_adjust_vadd
#_1BC9FF: LDA.b $00
#_1BCA01: AND.w #$0FFF
#_1BCA04: CMP.w #$0800
#_1BCA07: BCC .no_index_overflow

#_1BCA09: LDA.b $02
#_1BCA0B: ADC.w #$07FF
#_1BCA0E: STA.b $02

.no_index_overflow
#_1BCA10: LDA.b $00
#_1BCA12: AND.w #$001F
#_1BCA15: ADC.b $02
#_1BCA17: STA.b $02

#_1BCA19: LDA.b $00
#_1BCA1B: AND.w #$0780
#_1BCA1E: LSR A
#_1BCA1F: ADC.b $02
#_1BCA21: STA.b $02

;---------------------------------------------------------------------------------------------------

; build stripes
#_1BCA23: LDY.w $1000

#_1BCA26: XBA
#_1BCA27: STA.w $1002,Y

#_1BCA2A: LDA.b $02
#_1BCA2C: CLC
#_1BCA2D: ADC.w #$0020
#_1BCA30: XBA
#_1BCA31: STA.w $100A,Y

#_1BCA34: LDA.w #$0300
#_1BCA37: STA.w $1004,Y
#_1BCA3A: STA.w $100C,Y

#_1BCA3D: LDX.b $0C

#_1BCA3F: LDA.l Map16Definitions+0,X
#_1BCA43: STA.w $1006,Y

#_1BCA46: LDA.l Map16Definitions+2,X
#_1BCA4A: STA.w $1008,Y

#_1BCA4D: LDA.l Map16Definitions+4,X
#_1BCA51: STA.w $100E,Y

#_1BCA54: LDA.l Map16Definitions+6,X
#_1BCA58: STA.w $1010,Y

#_1BCA5B: TYA
#_1BCA5C: CLC
#_1BCA5D: ADC.w #$0010
#_1BCA60: STA.w $1000

#_1BCA63: PLX
#_1BCA64: INX
#_1BCA65: INX

#_1BCA66: PLA
#_1BCA67: INC A

#_1BCA68: RTS

;===================================================================================================

Overworld_FindMap16VRAMAddress:
#_1BCA69: STZ.b $02

#_1BCA6B: LDA.b $00
#_1BCA6D: AND.w #$003F
#_1BCA70: CMP.w #$0020
#_1BCA73: BCC .dont_adjust_vadd

#_1BCA75: LDA.w #$0400
#_1BCA78: STA.b $02

.dont_adjust_vadd
#_1BCA7A: LDA.b $00
#_1BCA7C: AND.w #$0FFF
#_1BCA7F: CMP.w #$0800
#_1BCA82: BCC .no_index_overflow

#_1BCA84: LDA.b $02
#_1BCA86: ADC.w #$07FF
#_1BCA89: STA.b $02

.no_index_overflow
#_1BCA8B: LDA.b $00
#_1BCA8D: AND.w #$001F
#_1BCA90: ADC.b $02
#_1BCA92: STA.b $02

#_1BCA94: LDA.b $00
#_1BCA96: AND.w #$0780
#_1BCA99: LSR A
#_1BCA9A: ADC.b $02
#_1BCA9C: STA.b $02

#_1BCA9E: RTS

;===================================================================================================

Overworld_CreateTRPortal:
#_1BCA9F: REP #$30

#_1BCAA1: LDA.w #$0212
#_1BCAA4: LDX.w #$0720
#_1BCAA7: STA.l $7E2000,X

#_1BCAAB: JSL Overworld_MemorizeMap16Change
#_1BCAAF: JSL Overworld_DrawMap16

#_1BCAB3: SEP #$30

#_1BCAB5: LDA.b #$01
#_1BCAB7: STA.b $14

#_1BCAB9: RTL

;===================================================================================================

pool Overworld_AnimateEntrance

.vectors
#_1BCABA: dw Overworld_AnimateEntrance_PoD
#_1BCABC: dw Overworld_AnimateEntrance_Skull
#_1BCABE: dw Overworld_AnimateEntrance_Mire
#_1BCAC0: dw Overworld_AnimateEntrance_TurtleRock
#_1BCAC2: dw Overworld_AnimateEntrance_GanonsTower

pool off

;---------------------------------------------------------------------------------------------------

Overworld_AnimateEntrance:
#_1BCAC4: STA.w $02E4
#_1BCAC7: STA.w $0FC1
#_1BCACA: STA.w $0710

#_1BCACD: DEC A
#_1BCACE: ASL A
#_1BCACF: TAX

#_1BCAD0: JSR (.vectors,X)

#_1BCAD3: RTL

;===================================================================================================

pool Overworld_AnimateEntrance_PoD

.vectors
#_1BCAD4: dw AnimateEntrance_PoD_step1
#_1BCAD6: dw AnimateEntrance_PoD_step2
#_1BCAD8: dw AnimateEntrance_PoD_step3
#_1BCADA: dw AnimateEntrance_PoD_step4
#_1BCADC: dw AnimateEntrance_PoD_step5

pool off

;---------------------------------------------------------------------------------------------------

Overworld_AnimateEntrance_PoD:
#_1BCADE: LDA.b $B0
#_1BCAE0: ASL A
#_1BCAE1: TAX

#_1BCAE2: JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_PoD_step1:
#_1BCAE5: INC.b $C8

#_1BCAE7: LDA.b $C8
#_1BCAE9: CMP.b #$40
#_1BCAEB: BNE .exit

#_1BCAED: JSR OverworldEntrance_AdvanceAndBoom

; PoD overlay
#_1BCAF0: LDA.l $7EF2DE
#_1BCAF4: ORA.b #$20
#_1BCAF6: STA.l $7EF2DE

#_1BCAFA: REP #$30

#_1BCAFC: LDX.w #$01E6
#_1BCAFF: LDA.w #$0E2B
#_1BCB02: JSL Overworld_DrawMap16_Persist

#_1BCB06: LDX.w #$02EA
#_1BCB09: LDA.w #$0E2A
#_1BCB0C: JSR Overworld_AlterTileHardcore

#_1BCB0F: LDX.w #$026A
#_1BCB12: LDA.w #$0E20
#_1BCB15: JSR Overworld_AlterTileHardcore

.modify_bottom_stair_part
#_1BCB18: LDX.w #$02EA

.modify_specific_stair_part
#_1BCB1B: JSR Overworld_AlterTileHardcore

#_1BCB1E: LDA.w #$FFFF
#_1BCB21: STA.w $1012,Y

#_1BCB24: SEP #$30

#_1BCB26: LDA.b #$01
#_1BCB28: STA.b $14

.exit
#_1BCB2A: RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_PoD_step2:
#_1BCB2B: INC.b $C8

#_1BCB2D: LDA.b $C8
#_1BCB2F: CMP.b #$20
#_1BCB31: BNE .exit

#_1BCB33: JSR OverworldEntrance_AdvanceAndBoom

#_1BCB36: REP #$30

#_1BCB38: LDX.w #$026A
#_1BCB3B: LDA.w #$0E22
#_1BCB3E: JSL Overworld_DrawMap16_Persist

#_1BCB42: LDA.w #$0E23
#_1BCB45: BRA .modify_bottom_stair_part

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_PoD_step3:
#_1BCB47: INC.b $C8

#_1BCB49: LDA.b $C8
#_1BCB4B: CMP.b #$20
#_1BCB4D: BNE .exit

#_1BCB4F: JSR OverworldEntrance_AdvanceAndBoom

#_1BCB52: REP #$30

#_1BCB54: LDX.w #$026A
#_1BCB57: LDA.w #$0E24
#_1BCB5A: JSL Overworld_DrawMap16_Persist

#_1BCB5E: LDX.w #$02EA
#_1BCB61: LDA.w #$0E25
#_1BCB64: JSR Overworld_AlterTileHardcore

#_1BCB67: LDX.w #$036A
#_1BCB6A: BRA .modify_specific_stair_part

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_PoD_step4:
#_1BCB6C: INC.b $C8

#_1BCB6E: LDA.b $C8
#_1BCB70: CMP.b #$20
#_1BCB72: BNE .exit

#_1BCB74: JSR OverworldEntrance_AdvanceAndBoom

#_1BCB77: REP #$30

#_1BCB79: LDX.w #$026A
#_1BCB7C: LDA.w #$0E27

#_1BCB7F: JSL Overworld_DrawMap16_Persist

#_1BCB83: LDX.w #$02EA
#_1BCB86: LDA.w #$0E28
#_1BCB89: JSR Overworld_AlterTileHardcore

#_1BCB8C: LDX.w #$036A
#_1BCB8F: BRA .modify_specific_stair_part

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_PoD_step5:
#_1BCB91: INC.b $C8

#_1BCB93: LDA.b $C8
#_1BCB95: CMP.b #$20
#_1BCB97: BNE .exit

#_1BCB99: JMP.w OverworldEntrance_PlayJingle

;===================================================================================================

pool Overworld_AnimateEntrance_Skull

.vectors
#_1BCB9C: dw AnimateEntrance_Skull_step1
#_1BCB9E: dw AnimateEntrance_Skull_step2
#_1BCBA0: dw AnimateEntrance_Skull_step3
#_1BCBA2: dw AnimateEntrance_Skull_step4
#_1BCBA4: dw AnimateEntrance_Skull_step5

pool off

;---------------------------------------------------------------------------------------------------

Overworld_AnimateEntrance_Skull:
#_1BCBA6: LDA.b $B0
#_1BCBA8: ASL A
#_1BCBA9: TAX

#_1BCBAA: JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_Skull_step1:
#_1BCBAD: INC.b $C8

#_1BCBAF: LDA.b $C8
#_1BCBB1: CMP.b #$04
#_1BCBB3: BNE .exit

#_1BCBB5: INC.b $B0

#_1BCBB7: STZ.b $C8

#_1BCBB9: REP #$30

#_1BCBBB: LDX.w #$0812
#_1BCBBE: LDA.w #$0E00
#_1BCBC1: JSL Overworld_DrawMap16_Persist

#_1BCBC5: LDX.w #$0814
#_1BCBC8: LDA.w #$0E00
#_1BCBCB: JSR Overworld_AlterTileHardcore

#_1BCBCE: LDA.w #$FFFF
#_1BCBD1: STA.w $1012,Y

;---------------------------------------------------------------------------------------------------

#_1BCBD4: SEP #$30

#_1BCBD6: LDX.b $8A

#_1BCBD8: LDA.l $7EF280,X
#_1BCBDC: ORA.b #$20
#_1BCBDE: STA.l $7EF280,X

#_1BCBE2: SEP #$30 ; redundant

#_1BCBE4: LDA.b #$01
#_1BCBE6: STA.b $14

#_1BCBE8: LDA.b #$16 ; SFX3.16
#_1BCBEA: STA.w $012F

.exit
#_1BCBED: RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_Skull_step2:
#_1BCBEE: INC.b $C8

#_1BCBF0: LDA.b $C8
#_1BCBF2: CMP.b #$0C
#_1BCBF4: BNE .exit

#_1BCBF6: INC.b $B0

#_1BCBF8: STZ.b $C8

#_1BCBFA: REP #$30

#_1BCBFC: LDX.w #$0790
#_1BCBFF: LDA.w #$0E01
#_1BCC02: JSL Overworld_DrawMap16_Persist

#_1BCC06: LDX.w #$0792
#_1BCC09: LDA.w #$0E02
#_1BCC0C: JSR Overworld_AlterTileHardcore
#_1BCC0F: JSR Overworld_AlterTileHardcore

;===================================================================================================

; Alters the tile, finishes, and plays a THUD SFX
#OverworldEntrance_AdvanceAndThud:
#_1BCC12: JSR Overworld_AlterTileHardcore

#_1BCC15: LDA.w #$FFFF
#_1BCC18: STA.w $1012,Y

#_1BCC1B: SEP #$30

#_1BCC1D: LDA.b #$01
#_1BCC1F: STA.b $14

#_1BCC21: LDA.b #$16 ; SFX3.16
#_1BCC23: STA.w $012F

.exit_b
#_1BCC26: RTS

;===================================================================================================

#AnimateEntrance_Skull_step3:
#_1BCC27: INC.b $C8

#_1BCC29: LDA.b $C8
#_1BCC2B: CMP.b #$0C
#_1BCC2D: BNE .exit

#_1BCC2F: INC.b $B0

#_1BCC31: STZ.b $C8

#_1BCC33: REP #$30

#_1BCC35: LDX.w #$0710
#_1BCC38: LDA.w #$0E01
#_1BCC3B: JSL Overworld_DrawMap16_Persist

#_1BCC3F: LDX.w #$0712
#_1BCC42: LDA.w #$0E02
#_1BCC45: JSR Overworld_AlterTileHardcore
#_1BCC48: JSR Overworld_AlterTileHardcore

#_1BCC4B: BRA OverworldEntrance_AdvanceAndThud

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_Skull_step4:
#_1BCC4D: INC.b $C8

#_1BCC4F: LDA.b $C8
#_1BCC51: CMP.b #$0C
#_1BCC53: BNE .exit

#_1BCC55: INC.b $B0

#_1BCC57: STZ.b $C8

#_1BCC59: REP #$30

#_1BCC5B: LDX.w #$0590
#_1BCC5E: LDA.w #$0E0B
#_1BCC61: JSL Overworld_DrawMap16_Persist

#_1BCC65: LDX.w #$0596
#_1BCC68: LDA.w #$0E0C
#_1BCC6B: JSR Overworld_AlterTileHardcore

#_1BCC6E: LDX.w #$0610
#_1BCC71: LDA.w #$0E07
#_1BCC74: JSR Overworld_AlterTileHardcore
#_1BCC77: JSR Overworld_AlterTileHardcore
#_1BCC7A: JSR Overworld_AlterTileHardcore
#_1BCC7D: JSR Overworld_AlterTileHardcore

#_1BCC80: LDX.w #$0692
#_1BCC83: LDA.w #$0E05
#_1BCC86: JSR Overworld_AlterTileHardcore

#_1BCC89: JMP.w OverworldEntrance_AdvanceAndThud

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_Skull_step5:
#_1BCC8C: INC.b $C8

#_1BCC8E: LDA.b $C8
#_1BCC90: CMP.b #$0C
#_1BCC92: BNE .exit_b

#_1BCC94: INC.b $B0

#_1BCC96: STZ.b $C8

#_1BCC98: REP #$30

#_1BCC9A: LDX.w #$0590
#_1BCC9D: LDA.w #$0E0D
#_1BCCA0: JSL Overworld_DrawMap16_Persist

#_1BCCA4: LDX.w #$0596
#_1BCCA7: LDA.w #$0E0E
#_1BCCAA: JSR Overworld_AlterTileHardcore

#_1BCCAD: LDX.w #$0610
#_1BCCB0: JSR Overworld_AlterTileHardcore
#_1BCCB3: JSR Overworld_AlterTileHardcore
#_1BCCB6: JSR Overworld_AlterTileHardcore
#_1BCCB9: JSR Overworld_AlterTileHardcore

#_1BCCBC: LDX.w #$0692
#_1BCCBF: JSR Overworld_AlterTileHardcore
#_1BCCC2: JSR OverworldEntrance_AdvanceAndThud

#_1BCCC5: JMP.w OverworldEntrance_PlayJingle

;===================================================================================================

pool Overworld_AnimateEntrance_Mire

.vectors
#_1BCCC8: dw AnimateEntrance_Mire_step1
#_1BCCCA: dw AnimateEntrance_Mire_step2
#_1BCCCC: dw AnimateEntrance_Mire_step2
#_1BCCCE: dw AnimateEntrance_Mire_step3
#_1BCCD0: dw AnimateEntrance_Mire_step4
#_1BCCD2: dw AnimateEntrance_Mire_step5

pool off

;---------------------------------------------------------------------------------------------------

Overworld_AnimateEntrance_Mire:
#_1BCCD4: LDA.b $B0
#_1BCCD6: CMP.b #$02
#_1BCCD8: BCC .no_shake

#_1BCCDA: REP #$20

#_1BCCDC: LDA.b $1A
#_1BCCDE: AND.w #$0001
#_1BCCE1: ASL A
#_1BCCE2: TAX

#_1BCCE3: LDA.l OverworldShake_Offsets_Y,X
#_1BCCE7: STA.w $011A

#_1BCCEA: LDA.l OverworldShake_Offsets_X,X
#_1BCCEE: STA.w $011C

#_1BCCF1: SEP #$20

.no_shake
#_1BCCF3: LDA.b $B0
#_1BCCF5: ASL A
#_1BCCF6: TAX

#_1BCCF7: JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

pool AnimateEntrance_Mire_step1

.shake_masks
#_1BCCFA: db $FF, $F7, $F7, $FB, $EE, $EE, $EE, $EE
#_1BCD02: db $EE, $EE, $AA, $AA, $AA, $AA, $AA, $AA
#_1BCD0A: db $AA, $88, $88, $88, $88, $80, $80, $80
#_1BCD12: db $80, $80

pool off

;---------------------------------------------------------------------------------------------------

AnimateEntrance_Mire_step1:
#_1BCD14: INC.b $C8

#_1BCD16: LDA.b $C8
#_1BCD18: CMP.b #$20
#_1BCD1A: BCC .exit

#_1BCD1C: SEC ; !USELESS
#_1BCD1D: SBC.b #$20
#_1BCD1F: CMP.b #$CF
#_1BCD21: BNE .dont_advance_step

#_1BCD23: INC.b $B0

#_1BCD25: STZ.b $C8

.dont_advance_step
#_1BCD27: PHA

#_1BCD28: AND.b #$07
#_1BCD2A: ASL A
#_1BCD2B: TAY

#_1BCD2C: PLA
#_1BCD2D: AND.b #$F8
#_1BCD2F: LSR A
#_1BCD30: LSR A
#_1BCD31: LSR A
#_1BCD32: TAX

#_1BCD33: LDA.w DungeonMask+1,Y

#_1BCD36: STZ.b $1D

#_1BCD38: AND.l .shake_masks,X
#_1BCD3C: BEQ .exit

#_1BCD3E: INC.b $1D

.exit
#_1BCD40: RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_Mire_step2:
#_1BCD41: INC.b $C8

#_1BCD43: LDA.b $C8
#_1BCD45: CMP.b #$10
#_1BCD47: BNE .delay_ambient_sfx

#_1BCD49: INC.b $B0

#_1BCD4B: LDY.b #$07 ; SFX1.07
#_1BCD4D: STY.w $012D

.delay_ambient_sfx
#_1BCD50: CMP.b #$48
#_1BCD52: BNE .exit_b

#_1BCD54: JSR OverworldEntrance_AdvanceAndBoom

#_1BCD57: LDX.b $8A

#_1BCD59: LDA.l $7EF280,X
#_1BCD5D: ORA.b #$20
#_1BCD5F: STA.l $7EF280,X

#_1BCD63: REP #$30

#_1BCD65: LDX.w #$0622
#_1BCD68: LDA.w #$0E42
#_1BCD6B: JSL Overworld_DrawMap16_Persist

#_1BCD6F: LDX.w #$0624
#_1BCD72: LDA.w #$0E43

.continue_many_replacements
#_1BCD75: JSR Overworld_AlterTileHardcore
#_1BCD78: JSR Overworld_AlterTileHardcore
#_1BCD7B: JSR Overworld_AlterTileHardcore

#_1BCD7E: LDX.w #$06A2
#_1BCD81: JSR Overworld_AlterTileHardcore
#_1BCD84: JSR Overworld_AlterTileHardcore
#_1BCD87: JSR Overworld_AlterTileHardcore
#_1BCD8A: JSR Overworld_AlterTileHardcore

#_1BCD8D: LDX.w #$0722
#_1BCD90: JSR Overworld_AlterTileHardcore
#_1BCD93: JSR Overworld_AlterTileHardcore
#_1BCD96: JSR Overworld_AlterTileHardcore
#_1BCD99: JSR Overworld_AlterTileHardcore

#_1BCD9C: LDA.w #$FFFF
#_1BCD9F: STA.w $1012,Y

#_1BCDA2: SEP #$30

#_1BCDA4: LDA.b #$01
#_1BCDA6: STA.b $14

.exit_b
#_1BCDA8: RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_Mire_step3:
#_1BCDA9: INC.b $C8

#_1BCDAB: LDA.b $C8
#_1BCDAD: CMP.b #$48
#_1BCDAF: BNE .exit_b

#_1BCDB1: JSR OverworldEntrance_AdvanceAndBoom

#_1BCDB4: REP #$30

#_1BCDB6: LDX.w #$05A2
#_1BCDB9: LDA.w #$0E4E
#_1BCDBC: JSL Overworld_DrawMap16_Persist

#_1BCDC0: LDX.w #$05A4
#_1BCDC3: LDA.w #$0E4F

.continue_many_many_replacements
#_1BCDC6: JSR Overworld_AlterTileHardcore
#_1BCDC9: JSR Overworld_AlterTileHardcore
#_1BCDCC: JSR Overworld_AlterTileHardcore

#_1BCDCF: LDX.w #$0622
#_1BCDD2: JSR Overworld_AlterTileHardcore
#_1BCDD5: BRA .continue_many_replacements

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_Mire_step4:
#_1BCDD7: INC.b $C8

#_1BCDD9: LDA.b $C8
#_1BCDDB: CMP.b #$50
#_1BCDDD: BNE .exit_b

#_1BCDDF: JSR OverworldEntrance_AdvanceAndBoom

#_1BCDE2: REP #$30

#_1BCDE4: LDX.w #$0522
#_1BCDE7: LDA.w #$0E5E
#_1BCDEA: JSL Overworld_DrawMap16_Persist

#_1BCDEE: LDX.w #$0524
#_1BCDF1: LDA.w #$0E5F
#_1BCDF4: JSR Overworld_AlterTileHardcore
#_1BCDF7: JSR Overworld_AlterTileHardcore
#_1BCDFA: JSR Overworld_AlterTileHardcore

#_1BCDFD: LDX.w #$05A2
#_1BCE00: JSR Overworld_AlterTileHardcore

#_1BCE03: BRA .continue_many_many_replacements

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_Mire_step5:
#_1BCE05: INC.b $C8

#_1BCE07: LDA.b $C8
#_1BCE09: CMP.b #$80
#_1BCE0B: BNE .exit_c

#_1BCE0D: JSR OverworldEntrance_PlayJingle

#_1BCE10: LDA.b #$05 ; SFX1.05
#_1BCE12: STA.w $012D

.exit_c
#_1BCE15: RTS

;===================================================================================================

pool Overworld_AnimateEntrance_TurtleRock

.vectors
#_1BCE16: dw AnimateEntrance_TurtleRock_step1
#_1BCE18: dw AnimateEntrance_TurtleRock_step2
#_1BCE1A: dw AnimateEntrance_TurtleRock_step3
#_1BCE1C: dw AnimateEntrance_TurtleRock_step4
#_1BCE1E: dw AnimateEntrance_TurtleRock_step5
#_1BCE20: dw AnimateEntrance_TurtleRock_step6
#_1BCE22: dw AnimateEntrance_TurtleRock_step7
#_1BCE24: dw AnimateEntrance_TurtleRock_step8
#_1BCE26: dw OverworldEntrance_PlayJingle

pool off

;---------------------------------------------------------------------------------------------------

Overworld_AnimateEntrance_TurtleRock:
#_1BCE28: REP #$20

; Shake on a frame rule
#_1BCE2A: LDA.b $1A
#_1BCE2C: AND.w #$0001
#_1BCE2F: ASL A
#_1BCE30: TAX

#_1BCE31: LDA.l OverworldShake_Offsets_Y,X
#_1BCE35: STA.w $011A

#_1BCE38: LDA.l OverworldShake_Offsets_X,X
#_1BCE3C: STA.w $011C

#_1BCE3F: SEP #$20

#_1BCE41: LDA.b $B0
#_1BCE43: ASL A
#_1BCE44: TAX

#_1BCE45: JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_TurtleRock_step1:
#_1BCE48: LDX.b $8A

#_1BCE4A: LDA.l $7EF280,X
#_1BCE4E: ORA.b #$20
#_1BCE50: STA.l $7EF280,X

#_1BCE54: LDA.b #$00
#_1BCE56: JSL ApplyGrayscaleFixed_Parameterized

#_1BCE5A: LDA.b #$10
#_1BCE5C: BRA .step_parameterized

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_TurtleRock_step2:
#_1BCE5E: LDA.b #$14
#_1BCE60: BRA .step_parameterized

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_TurtleRock_step3:
#_1BCE62: LDA.b #$18
#_1BCE64: BRA .step_parameterized

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_TurtleRock_step4:
#_1BCE66: LDA.b #$1C

;---------------------------------------------------------------------------------------------------

.step_parameterized
#_1BCE68: STA.w $1002
#_1BCE6B: STZ.w $1003

#_1BCE6E: REP #$20

#_1BCE70: LDA.w #$FE47
#_1BCE73: STA.w $1004

#_1BCE76: LDA.w #$01E3
#_1BCE79: STA.w $1006

#_1BCE7C: SEP #$20

#_1BCE7E: LDA.b #$FF
#_1BCE80: STA.w $1008

#_1BCE83: INC.b $B0

#_1BCE85: LDA.b #$01
#_1BCE87: STA.b $14

#_1BCE89: RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_TurtleRock_step5:
#_1BCE8A: REP #$20

#_1BCE8C: LDX.b #$0E
#_1BCE8E: LDA.w #$0000 ; RGB: #000000

.next_color
#_1BCE91: STA.l $7EC5B0,X
#_1BCE95: STA.l $7EC3D0,X

#_1BCE99: DEX
#_1BCE9A: DEX
#_1BCE9B: BPL .next_color

#_1BCE9D: LDA.b $E8
#_1BCE9F: STA.b $E6

#_1BCEA1: LDA.b $E2
#_1BCEA3: STA.b $E0

#_1BCEA5: SEP #$20

#_1BCEA7: INC.b $B0
#_1BCEA9: INC.b $15

#_1BCEAB: RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_TurtleRock_step6:
#_1BCEAC: JSR OverworldEntrance_DrawManyTR

; BG1 on subscreen
#_1BCEAF: LDA.b #$01
#_1BCEB1: STA.b $1D

; Use subscreen for color math
#_1BCEB3: LDA.b #$02
#_1BCEB5: STA.b $99

; Enable color math on BG2 and CGRAM0
#_1BCEB7: LDA.b #$22
#_1BCEB9: STA.b $9A

#_1BCEBB: REP #$30

#_1BCEBD: LDX.w #$0000

.next_stripe
#_1BCEC0: LDA.w $1002,X
#_1BCEC3: ORA.w #$0010
#_1BCEC6: STA.w $1002,X

#_1BCEC9: LDA.w $1006,X
#_1BCECC: CMP.w #$08AA
#_1BCECF: BNE .no_replace_1

#_1BCED1: LDA.w #$01E3
#_1BCED4: STA.w $1006,X

.no_replace_1
#_1BCED7: LDA.w $1008,X
#_1BCEDA: CMP.w #$08AA
#_1BCEDD: BNE .no_replace_2

#_1BCEDF: LDA.w #$01E3
#_1BCEE2: STA.w $1008,X

.no_replace_2
#_1BCEE5: INX ; +8
#_1BCEE6: INX
#_1BCEE7: INX
#_1BCEE8: INX
#_1BCEE9: INX
#_1BCEEA: INX
#_1BCEEB: INX
#_1BCEEC: INX
#_1BCEED: CPX.b $00
#_1BCEEF: BNE .next_stripe

#_1BCEF1: SEP #$30

#_1BCEF3: STZ.b $C8

#_1BCEF5: INC.b $B0

#_1BCEF7: RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_TurtleRock_step7:
#_1BCEF8: LDA.b $1A
#_1BCEFA: LSR A
#_1BCEFB: BCS .exit

#_1BCEFD: LDA.b $C8
#_1BCEFF: AND.b #$07
#_1BCF01: BNE .skip_sfx7

#_1BCF03: JSL PaletteFilter_Restore

#_1BCF07: LDA.b #$02 ; SFX3.02
#_1BCF09: STA.w $012F

.skip_sfx7
#_1BCF0C: DEC.b $C8
#_1BCF0E: BNE .exit

#_1BCF10: LDA.b #$30
#_1BCF12: STA.b $C8

#_1BCF14: INC.b $B0

.exit
#_1BCF16: RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_TurtleRock_step8:
#_1BCF17: LDA.b $1A
#_1BCF19: LSR A
#_1BCF1A: BCS .skip_sfx8

#_1BCF1C: LDA.b $C8
#_1BCF1E: AND.b #$07
#_1BCF20: BNE .skip_sfx8

#_1BCF22: LDA.b #$02 ; SFX3.02
#_1BCF24: STA.w $012F

.skip_sfx8
#_1BCF27: DEC.b $C8
#_1BCF29: BNE .exit

#_1BCF2B: JSR OverworldEntrance_DrawManyTR

#_1BCF2E: STZ.b $1D

#_1BCF30: LDA.b #$82
#_1BCF32: STA.b $99

#_1BCF34: LDA.b #$20
#_1BCF36: STA.b $9A

#_1BCF38: INC.b $B0

#_1BCF3A: LDA.b #$05 ; SFX1.05
#_1BCF3C: STA.w $012D

#_1BCF3F: RTS

;===================================================================================================

OverworldEntrance_PlayJingle:
#_1BCF40: LDA.b #$1B ; SFX3.1B

#_1BCF42: STA.w $012F

#_1BCF45: STZ.w $04C6
#_1BCF48: STZ.b $B0
#_1BCF4A: STZ.w $0710

#_1BCF4D: STZ.w $02E4

#_1BCF50: STZ.w $0FC1

#_1BCF53: STZ.w $011A
#_1BCF56: STZ.w $011B
#_1BCF59: STZ.w $011C
#_1BCF5C: STZ.w $011D

#_1BCF5F: RTS

;===================================================================================================

OverworldEntrance_DrawManyTR:
#_1BCF60: REP #$30

#_1BCF62: LDX.w #$099E
#_1BCF65: LDA.w #$0E72
#_1BCF68: JSL Overworld_DrawMap16_Persist

#_1BCF6C: LDX.w #$09A0
#_1BCF6F: LDA.w #$0E73
#_1BCF72: JSR Overworld_AlterTileHardcore
#_1BCF75: JSR Overworld_AlterTileHardcore
#_1BCF78: JSR Overworld_AlterTileHardcore

#_1BCF7B: LDX.w #$0A1E
#_1BCF7E: JSR Overworld_AlterTileHardcore
#_1BCF81: JSR Overworld_AlterTileHardcore
#_1BCF84: JSR Overworld_AlterTileHardcore
#_1BCF87: JSR Overworld_AlterTileHardcore

#_1BCF8A: LDX.w #$0A9E
#_1BCF8D: JSR Overworld_AlterTileHardcore
#_1BCF90: JSR Overworld_AlterTileHardcore
#_1BCF93: JSR Overworld_AlterTileHardcore
#_1BCF96: JSR Overworld_AlterTileHardcore

#_1BCF99: LDX.w #$0B1E
#_1BCF9C: JSR Overworld_AlterTileHardcore
#_1BCF9F: JSR Overworld_AlterTileHardcore
#_1BCFA2: JSR Overworld_AlterTileHardcore
#_1BCFA5: JSR Overworld_AlterTileHardcore

#_1BCFA8: LDA.w #$FFFF
#_1BCFAB: STA.w $1012,Y

#_1BCFAE: TYA
#_1BCFAF: CLC
#_1BCFB0: ADC.w #$0010
#_1BCFB3: STA.b $00

#_1BCFB5: SEP #$30

#_1BCFB7: LDA.b #$01
#_1BCFB9: STA.b $14
#_1BCFBB: STA.w $0710

#_1BCFBE: RTS

;===================================================================================================

pool Overworld_AnimateEntrance_GanonsTower

.vectors
#_1BCFBF: dw AnimateEntrance_GanonsTower_step01
#_1BCFC1: dw AnimateEntrance_GanonsTower_step01
#_1BCFC3: dw AnimateEntrance_GanonsTower_step02
#_1BCFC5: dw AnimateEntrance_GanonsTower_step03
#_1BCFC7: dw AnimateEntrance_GanonsTower_step04
#_1BCFC9: dw AnimateEntrance_GanonsTower_step05
#_1BCFCB: dw AnimateEntrance_GanonsTower_step06
#_1BCFCD: dw AnimateEntrance_GanonsTower_step07
#_1BCFCF: dw AnimateEntrance_GanonsTower_step08
#_1BCFD1: dw AnimateEntrance_GanonsTower_step09
#_1BCFD3: dw AnimateEntrance_GanonsTower_step10
#_1BCFD5: dw AnimateEntrance_GanonsTower_step11
#_1BCFD7: dw AnimateEntrance_GanonsTower_step12

pool off

;---------------------------------------------------------------------------------------------------

Overworld_AnimateEntrance_GanonsTower:
#_1BCFD9: LDA.b $B0
#_1BCFDB: ASL A
#_1BCFDC: TAX

#_1BCFDD: JMP.w (.vectors,X)

;---------------------------------------------------------------------------------------------------

AnimateEntrance_GanonsTower_step01:
#_1BCFE0: LDX.b $8A

#_1BCFE2: LDA.l $7EF280,X
#_1BCFE6: ORA.b #$20
#_1BCFE8: STA.l $7EF280,X

#_1BCFEC: JSL GanonsTower_FlashAfterCrystals

#_1BCFF0: RTS

;---------------------------------------------------------------------------------------------------

AnimateEntrance_GanonsTower_step02:
#_1BCFF1: JSL GanonsTower_FlashAfterCrystals

#_1BCFF5: LDA.b $1D
#_1BCFF7: BNE .exit

#_1BCFF9: INC.b $1D
#_1BCFFB: INC.b $C8

#_1BCFFD: LDA.b $C8
#_1BCFFF: CMP.b #$03
#_1BD001: BNE .skip_sfx

#_1BD003: STZ.b $C8

#_1BD005: LDA.b #$07 ; SFX1.07
#_1BD007: STA.w $012D

#_1BD00A: RTS

;---------------------------------------------------------------------------------------------------

.skip_sfx
#_1BD00B: STZ.b $B0

.exit
#_1BD00D: RTS

;===================================================================================================
; Advances the step and does the explosion SFX
;===================================================================================================
OverworldEntrance_AdvanceAndBoom:
#_1BD00E: INC.b $B0
#_1BD010: STZ.b $C8

#_1BD012: LDA.b #$0C ; SFX2.0C
#_1BD014: STA.w $012E

#_1BD017: LDA.b #$07 ; SFX3.07
#_1BD019: STA.w $012F

#_1BD01C: RTS

;---------------------------------------------------------------------------------------------------

AnimateEntrance_GanonsTower_step03:
#_1BD01D: INC.b $C8

#_1BD01F: LDA.b $C8
#_1BD021: CMP.b #$30
#_1BD023: BNE .exit_a

#_1BD025: JSR OverworldEntrance_AdvanceAndBoom

#_1BD028: REP #$30

#_1BD02A: LDX.w #$045E
#_1BD02D: LDA.w #$0E82
#_1BD030: JSL Overworld_DrawMap16_Persist

#_1BD034: LDX.w #$0460
#_1BD037: LDA.w #$0E83
#_1BD03A: JSR Overworld_AlterTileHardcore

#_1BD03D: LDX.w #$04DE
#_1BD040: LDA.w #$0E9C
#_1BD043: JSR Overworld_AlterTileHardcore
#_1BD046: JSR Overworld_AlterTileHardcore

#_1BD049: LDA.w #$0E84

; TODO where is this
.draw_at_055E
#_1BD04C: LDX.w #$055E

.draw2_advance
#_1BD04F: JSR Overworld_AlterTileHardcore

.draw1_advance
#_1BD052: JSR Overworld_AlterTileHardcore

#_1BD055: LDA.w #$FFFF
#_1BD058: STA.w $1012,Y

#_1BD05B: SEP #$30

#_1BD05D: LDA.b #$01
#_1BD05F: STA.b $14

.exit_a
#_1BD061: RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step04:
#_1BD062: INC.b $C8
#_1BD064: LDA.b $C8
#_1BD066: CMP.b #$30
#_1BD068: BNE .exit_a

#_1BD06A: JSR OverworldEntrance_AdvanceAndBoom

#_1BD06D: REP #$30

#_1BD06F: LDX.w #$045E
#_1BD072: LDA.w #$0E86
#_1BD075: JSL Overworld_DrawMap16_Persist

#_1BD079: LDX.w #$0460
#_1BD07C: LDA.w #$0E87
#_1BD07F: JSR Overworld_AlterTileHardcore

#_1BD082: LDX.w #$04DE
#_1BD085: LDA.w #$0E88
#_1BD088: JSR Overworld_AlterTileHardcore
#_1BD08B: JSR Overworld_AlterTileHardcore

#_1BD08E: LDA.w #$0E8A
#_1BD091: BRA .draw_at_055E

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step05:
#_1BD093: INC.b $C8

#_1BD095: LDA.b $C8
#_1BD097: CMP.b #$34
#_1BD099: BNE .exit_b

#_1BD09B: JSR OverworldEntrance_AdvanceAndBoom

#_1BD09E: REP #$30

#_1BD0A0: LDX.w #$045E
#_1BD0A3: LDA.w #$0E8C
#_1BD0A6: JSL Overworld_DrawMap16_Persist

#_1BD0AA: LDX.w #$0460
#_1BD0AD: LDA.w #$0E8D
#_1BD0B0: JSR Overworld_AlterTileHardcore

#_1BD0B3: LDX.w #$04DE
#_1BD0B6: LDA.w #$0E8E
#_1BD0B9: JSR Overworld_AlterTileHardcore

#_1BD0BC: LDA.w #$0E8E
#_1BD0BF: JSR Overworld_AlterTileHardcore

#_1BD0C2: LDX.w #$055E
#_1BD0C5: LDA.w #$0E8F
#_1BD0C8: JSR Overworld_AlterTileHardcore

#_1BD0CB: LDA.w #$0E8F
#_1BD0CE: JSR Overworld_AlterTileHardcore

#_1BD0D1: LDA.w #$FFFF
#_1BD0D4: STA.w $1012,Y

#_1BD0D7: SEP #$30

#_1BD0D9: LDA.b #$01
#_1BD0DB: STA.b $14

.exit_b
#_1BD0DD: RTS

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step06:
#_1BD0DE: INC.b $C8

#_1BD0E0: LDA.b $C8
#_1BD0E2: CMP.b #$20
#_1BD0E4: BNE .exit_b

#_1BD0E6: JSR OverworldEntrance_AdvanceAndBoom

#_1BD0E9: REP #$30

#_1BD0EB: LDX.w #$045E
#_1BD0EE: LDA.w #$0E90
#_1BD0F1: JSL Overworld_DrawMap16_Persist

#_1BD0F5: LDX.w #$0460
#_1BD0F8: LDA.w #$0E91
#_1BD0FB: JSR Overworld_AlterTileHardcore

#_1BD0FE: LDX.w #$04DE
#_1BD101: LDA.w #$0E92
#_1BD104: JMP.w .draw2_advance

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step07:
#_1BD107: INC.b $C8

#_1BD109: LDA.b $C8
#_1BD10B: CMP.b #$20
#_1BD10D: BNE .exit_b

#_1BD10F: JSR OverworldEntrance_AdvanceAndBoom

#_1BD112: REP #$30

#_1BD114: LDX.w #$04DE
#_1BD117: LDA.w #$0E94
#_1BD11A: JSL Overworld_DrawMap16_Persist

#_1BD11E: LDX.w #$04E0
#_1BD121: LDA.w #$0E95
#_1BD124: JMP.w .draw1_advance

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step08:
#_1BD127: INC.b $C8

#_1BD129: LDA.b $C8
#_1BD12B: CMP.b #$20
#_1BD12D: BNE .exit_b

#_1BD12F: JSR OverworldEntrance_AdvanceAndBoom

#_1BD132: REP #$30

#_1BD134: LDX.w #$04DE
#_1BD137: LDA.w #$0E96
#_1BD13A: JSL Overworld_DrawMap16_Persist

#_1BD13E: LDX.w #$04E0
#_1BD141: LDA.w #$0E97
#_1BD144: JSR Overworld_AlterTileHardcore

#_1BD147: LDA.w #$0E98
#_1BD14A: JMP.w .draw_at_055E

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step09:
#_1BD14D: INC.b $C8

#_1BD14F: LDA.b $C8
#_1BD151: CMP.b #$20
#_1BD153: BNE .exit_b

#_1BD155: JSR OverworldEntrance_AdvanceAndBoom

#_1BD158: REP #$30

#_1BD15A: LDX.w #$055E
#_1BD15D: LDA.w #$0E94
#_1BD160: JSL Overworld_DrawMap16_Persist

#_1BD164: LDX.w #$0560
#_1BD167: LDA.w #$0E95
#_1BD16A: JMP.w .draw1_advance

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step10:
#_1BD16D: INC.b $C8

#_1BD16F: LDA.b $C8
#_1BD171: CMP.b #$20
#_1BD173: BNE .exit_c

#_1BD175: JSR OverworldEntrance_AdvanceAndBoom

#_1BD178: REP #$30

#_1BD17A: LDX.w #$055E
#_1BD17D: LDA.w #$0E96
#_1BD180: JSL Overworld_DrawMap16_Persist

#_1BD184: LDX.w #$0560
#_1BD187: LDA.w #$0E97
#_1BD18A: JSR Overworld_AlterTileHardcore

#_1BD18D: LDX.w #$05DE
#_1BD190: LDA.w #$0E9A
#_1BD193: JSR Overworld_AlterTileHardcore

#_1BD196: LDA.w #$0E9B

; TODO where is this
.draw1_at_05E0_advance
#_1BD199: LDX.w #$05E0

#_1BD19C: JMP.w .draw1_advance

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step11:
#_1BD19F: INC.b $C8

#_1BD1A1: LDA.b $C8
#_1BD1A3: CMP.b #$20
#_1BD1A5: BNE .exit_c

#_1BD1A7: LDA.b #$05 ; SFX1.05
#_1BD1A9: STA.w $012D

#_1BD1AC: JSR OverworldEntrance_AdvanceAndBoom

#_1BD1AF: REP #$30

#_1BD1B1: LDX.w #$05DE
#_1BD1B4: LDA.w #$0E94
#_1BD1B7: JSL Overworld_DrawMap16_Persist

#_1BD1BB: LDA.w #$0E95
#_1BD1BE: BRA .draw1_at_05E0_advance

;---------------------------------------------------------------------------------------------------

#AnimateEntrance_GanonsTower_step12:
#_1BD1C0: INC.b $C8

#_1BD1C2: LDA.b $C8
#_1BD1C4: CMP.b #$48
#_1BD1C6: BNE .exit_c

#_1BD1C8: JSR OverworldEntrance_PlayJingle

#_1BD1CB: STZ.b $C8

#_1BD1CD: LDA.b #$0D ; SONG 0D
#_1BD1CF: STA.w $012C

#_1BD1D2: LDA.b #$09 ; SFX1.09
#_1BD1D4: STA.w $012D

.exit_c
#_1BD1D7: RTS

;===================================================================================================
; FREE ROM: 0x40
;===================================================================================================
NULL_1BD1D8:
#_1BD1D8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BD1E0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BD1E8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BD1F0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BD1F8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BD200: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BD208: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BD210: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================
; TODO palettes
;===================================================================================================
PaletteData:
.sprite_00
#Palettes_RedMelon:
; #RRGGBB :          F8F8F8, C83010, 388038, 50B090, 282828, F8C820, F87030
; #RRGGBB :  000000, F8F8F8, C85830, B02828, E07070, 282828, B8B8C8, 787888
#_1BD218: dw          $7FFF,  $08D9,  $1E07,  $4ACA,  $14A5,  $133F,  $19DF
.sprite_00_right
#_1BD226: dw  $0000,  $7FFF,  $1979,  $14B6,  $39DC,  $14A5,  $66F7,  $45EF

.sprite_01
#Palettes_BlueIce:
; #RRGGBB :          F8F8F8, 4850D0, 60B8C0, A0F8D8, 282828, 88D0F8, 7890F8
; #RRGGBB :  000000, F8F8F8, F880B0, 5068A8, 90A8E8, 282828, F8B050, B86028
#_1BD236: dw          $7FFF,  $6949,  $62EC,  $6FF4,  $14A5,  $7F51,  $7E4F
.sprite_01_right
#_1BD244: dw  $0000,  $7FFF,  $5A1F,  $55AA,  $76B2,  $14A5,  $2ADF,  $1597

.sprite_02
#Palettes_BlackoutRedGuard:
; #RRGGBB :          F8F8F8, B0B830, B06028, F0A068, 282828, F07880, B84048
; #RRGGBB :  000000, 282828, 282828, 282828, 282828, 282828, 282828, 282828
#_1BD254: dw          $7FFF,  $1AF6,  $1596,  $369E,  $14A5,  $41FE,  $2517
#_1BD262: dw  $0000,  $14A5,  $14A5,  $14A5,  $14A5,  $14A5,  $14A5,  $14A5

.sprite_03
#Palettes_GreenBlueGuard:
; #RRGGBB :          F8F8F8, D86060, B06028, F0A068, 282828, B090F8, 5070C8
; #RRGGBB :  000000, F8F8F8, C83018, 489030, 98D070, 282828, F8D038, B88820
#_1BD272: dw          $7FFF,  $319B,  $1596,  $369E,  $14A5,  $7E56,  $65CA
#_1BD280: dw  $0000,  $7FFF,  $0CD9,  $1A49,  $3B53,  $14A5,  $1F5F,  $1237

.sprite_04
#Palettes_DarkWorldMelon:
; #RRGGBB :          F8F8F8, C83010, 788830, A8B860, 282828, F8C820, F87030
; #RRGGBB :  000000, F8F8F8, C85830, B02828, E07070, 282828, B8B8C8, 787888
#_1BD290: dw          $7FFF,  $08D9,  $1A2F,  $32F5,  $14A5,  $133F,  $19DF
#_1BD29E: dw  $0000,  $7FFF,  $1979,  $14B6,  $39DC,  $14A5,  $66F7,  $45EF

.sprite_05
#Palettes_BlueDarkIce:
; #RRGGBB :          F8F8F8, 207058, 78B0C8, A8F0F8, 282828, 80D0B8, 50A088
; #RRGGBB :  000000, F8F8F8, F880B0, 5068A8, 90A8E8, 282828, F8B050, B86028
#_1BD2AE: dw          $7FFF,  $2DC4,  $66CF,  $7FD5,  $14A5,  $5F50,  $468A
#_1BD2BC: dw  $0000,  $7FFF,  $5A1F,  $55AA,  $76B2,  $14A5,  $2ADF,  $1597

.sprite_06
#Palettes_BlackoutRedGuard2:
; #RRGGBB :          F8F8F8, D8B818, B06028, F0A068, 282828, F07880, B84048
; #RRGGBB :  000000, 282828, 282828, 282828, 282828, 282828, 282828, 282828
#_1BD2CC: dw          $7FFF,  $0EFB,  $1596,  $369E,  $14A5,  $41FE,  $2517
#_1BD2DA: dw  $0000,  $14A5,  $14A5,  $14A5,  $14A5,  $14A5,  $14A5,  $14A5

.sprite_07
#Palettes_GreenBlueGuard2:
; #RRGGBB :          F8F8F8, D86060, B06028, F0A068, 282828, B090F8, 5070C8
; #RRGGBB :  000000, F8F8F8, C83018, 489030, 98D070, 282828, F8D038, B88820
#_1BD2EA: dw          $7FFF,  $319B,  $1596,  $369E,  $14A5,  $7E56,  $65CA
#_1BD2F8: dw  $0000,  $7FFF,  $0CD9,  $1A49,  $3B53,  $14A5,  $1F5F,  $1237

.Link
.link_00
#Palettes_GreenMail:
; #RRGGBB :          F8F8F8, F0D840, B86820, F0A068, 282828, F87800, C01820
; #RRGGBB :  E860B0, 389068, 40D870, 509010, 78B820, E09050, 885828, C080F0
#_1BD308: dw          $7FFF,  $237E,  $11B7,  $369E,  $14A5,  $01FF,  $1078
#_1BD316: dw  $599D,  $3647,  $3B68,  $0A4A,  $12EF,  $2A5C,  $1571,  $7A18

.link_01
#Palettes_BlueMail:
; #RRGGBB :          F8F8F8, F0D840, B86820, F0A068, 282828, F87800, C01820
; #RRGGBB :  E860B0, 0060D0, 88A0E8, C0A848, F8D880, E09050, C86020, C080F0
#_1BD326: dw          $7FFF,  $237E,  $11B7,  $369E,  $14A5,  $01FF,  $1078
#_1BD334: dw  $599D,  $6980,  $7691,  $26B8,  $437F,  $2A5C,  $1199,  $7A18

.link_02
#Palettes_RedMail:
; #RRGGBB :          F8F8F8, F0D840, B86820, F0A068, 282828, F87800, C01820
; #RRGGBB :  E860B0, B81020, F05888, 9878D8, C8A8F8, E09050, 388840, C080F0
#_1BD344: dw          $7FFF,  $237E,  $11B7,  $369E,  $14A5,  $01FF,  $1078
#_1BD352: dw  $599D,  $1057,  $457E,  $6DF3,  $7EB9,  $2A5C,  $2227,  $7A18

.link_03
#Palettes_Bunny:
; #RRGGBB :          F8F8F8, F0D840, D07020, F0A068, 282828, F87800, C01820
; #RRGGBB :  B86078, 389068, 40D870, 509010, 78B820, F098A8, 901830, C080F0
#_1BD362: dw          $7FFF,  $237E,  $11DA,  $369E,  $14A5,  $01FF,  $1078
#_1BD370: dw  $3D97,  $3647,  $3B68,  $0A4A,  $12EF,  $567E,  $1872,  $7A18

.link_04
#Palettes_Zap:
; #RRGGBB :          000000, D0B818, 8870F8, 000000, D0C0F8, 000000, D0C0F8
; #RRGGBB :  7058E0, 8870F8, 382880, 8870F8, 382880, 483890, 7830A0, F8F8F8
#_1BD380: dw          $0000,  $0EFA,  $7DD1,  $0000,  $7F1A,  $0000,  $7F1A
#_1BD38E: dw  $716E,  $7DD1,  $40A7,  $7DD1,  $40A7,  $48E9,  $50CF,  $7FFF

.sprpal0_00
#Palettes_UglyThrone:
; #RRGGBB :  303020, A08020, E8C870, F0B0C8, C880A0, 68B880, 488848
#_1BD39E: dw  $10C6,  $1214,  $3B3D,  $66DE,  $5219,  $42ED,  $2629

.sprpal0_01
#Palettes_DarkMelon:
; #RRGGBB :  F8F8F8, 305818, C05058, E88888, 282828, 80A060, 587838
#_1BD3AC: dw  $7FFF,  $0D66,  $2D58,  $463D,  $14A5,  $3290,  $1DEB

.sprpal0_02
#Palettes_DebirandoBlue:
; #RRGGBB :  887848, 484018, 5048A0, 8890E0, 282828, 787040, 585030
#_1BD3BA: dw  $25F1,  $0D09,  $512A,  $7251,  $14A5,  $21CF,  $194B

.sprpal0_03
#Palettes_UglyThrone5:
; #RRGGBB :  B09868, 503808, 00A820, 00E058, 282828, 887040, 685020
#_1BD3C8: dw  $3676,  $04EA,  $12A0,  $2F80,  $14A5,  $21D1,  $114D

.sprpal0_04
#Palettes_UglyThrone6:
; #RRGGBB :  F8F8F8, 98F898, A85820, F0A068, 282828, F87818, C83800
#_1BD3D6: dw  $7FFF,  $4FF3,  $1175,  $369E,  $14A5,  $0DFF,  $00F9

.sprpal0_05
#Palettes_SoylentGreen:
; #RRGGBB :  F8F8F8, D0C848, A85820, F0A068, 282828, 78C820, 489808
#_1BD3E4: dw  $7FFF,  $273A,  $1175,  $369E,  $14A5,  $132F,  $0669

.sprpal0_06
#Palettes_RockyMiddleNeck:
; #RRGGBB :  F8F8F8, 505060, 788890, 78C0A8, 282828, 78E8A8, 503860
#_1BD3F2: dw  $7FFF,  $314A,  $4A2F,  $570F,  $14A5,  $57AF,  $30EA

.sprpal0_07
#Palettes_WizzardsInRobes:
; #RRGGBB :  F8F8F8, D84030, 60A828, A8F070, 282828, F09848, C06018
#_1BD400: dw  $7FFF,  $191B,  $16AC,  $3BD5,  $14A5,  $267E,  $0D98

.sprpal0_08
#Palettes_spraux01:
; #RRGGBB :  F8F8F8, 604838, 686898, 686898, 282828, A08050, 886038
#_1BD40E: dw  $7FFF,  $1D2C,  $4DAD,  $4DAD,  $14A5,  $2A14,  $1D91

.sprpal0_09
#Palettes_spraux02:
; #RRGGBB :  F8F8F8, 286040, C05058, E88888, 282828, 68A080, 488060
#_1BD41C: dw  $7FFF,  $2185,  $2D58,  $463D,  $14A5,  $428D,  $3209

.sprpal0_0A
#Palettes_spraux03:
; #RRGGBB :  F8F8F8, A0A0A0, 383088, 7068C0, 282828, D88830, A85820
#_1BD42A: dw  $7FFF,  $5294,  $44C7,  $61AE,  $14A5,  $1A3B,  $1175

.sprpal0_0B
#Palettes_OopsAllBlue:
; #RRGGBB :  686898, 686898, 686898, 686898, 686898, 686898, 686898
#_1BD438: dw  $4DAD,  $4DAD,  $4DAD,  $4DAD,  $4DAD,  $4DAD,  $4DAD

.spriteenvironment_00
#Palettes_spraux05:
; #RRGGBB :  203028, 585858, 7048C0, A068B8, C8B0F0, E8E8E8, A0A0A0
#_1BD446: dw  $14C4,  $2D6B,  $612E,  $5DB4,  $7AD9,  $77BD,  $5294

.spriteenvironment_01
#Palettes_spraux06:
; #RRGGBB :  203028, 585858, 407898, 70A8C8, A0D8F8, E8E8E8, A0A0A0
#_1BD454: dw  $14C4,  $2D6B,  $4DE8,  $66AE,  $7F74,  $77BD,  $5294

.spriteenvironment_02
#Palettes_spraux07:
; #RRGGBB :  203028, 585858, F84000, F87800, F8F000, E8E8E8, A0A0A0
#_1BD462: dw  $14C4,  $2D6B,  $011F,  $01FF,  $03DF,  $77BD,  $5294

.spriteenvironment_03
#Palettes_spraux08:
; #RRGGBB :  F8F8F8, 000000, 000000, 000000, 8000F0, F8D8F8, B800F8
#_1BD470: dw  $7FFF,  $0000,  $0000,  $0000,  $7810,  $7F7F,  $7C17

.spriteenvironment_04
#Palettes_spraux09:
; #RRGGBB :  F8F8F8, 000000, 3840B0, 7080D8, 000000, D8E8F8, 9098E8
#_1BD47E: dw  $7FFF,  $0000,  $5907,  $6E0E,  $0000,  $7FBB,  $7672

.spriteenvironment_05
#Palettes_spraux0A:
; #RRGGBB :  F8F8F8, F8E0B8, 500000, A880F8, 200858, 8070E8, 5848C0
#_1BD48C: dw  $7FFF,  $5F9F,  $000A,  $7E15,  $2C24,  $75D0,  $612B

.spriteenvironment_06
#Palettes_spraux0B:
; #RRGGBB :  282828, 508070, 287838, 489848, A08860, B0E8B8, 78B890
#_1BD49A: dw  $14A5,  $3A0A,  $1DE5,  $2669,  $3234,  $5FB6,  $4AEF

.spriteenvironment_07
#Palettes_spraux0C:
; #RRGGBB :  282828, 282828, 686028, 888040, A08860, 78B890, 508070
#_1BD4A8: dw  $14A5,  $14A5,  $158D,  $2211,  $3234,  $4AEF,  $3A0A

.spriteenvironment_08
#Palettes_PurpleShrubs:
; #RRGGBB :  203010, 487040, 886898, 98B0E0, B8A820, A0C898, 709868
#_1BD4B6: dw  $08C4,  $21C9,  $4DB1,  $72D3,  $12B7,  $4F34,  $366E

.spriteenvironment_09
#Palettes_DarkAndHeavyBush:
; #RRGGBB :  181818, 203010, 705830, 907850, 907850, 709868, 487040
#_1BD4C4: dw  $0C63,  $08C4,  $196E,  $29F2,  $29F2,  $366E,  $21C9

.spriteenvironment_0A
#Palettes_StarryTile:
; #RRGGBB :  303030, 585858, A87850, D0A830, 784848, E8E8E8, A0A0A0
#_1BD4D2: dw  $18C6,  $2D6B,  $29F5,  $1ABA,  $252F,  $77BD,  $5294

.spriteaux_00
#Palettes_spraux10:
; #RRGGBB :  F8F8F8, A0C0F0, 9020B8, D040F0, 282828, F8A800, E86820
#_1BD4E0: dw  $7FFF,  $7B14,  $5C92,  $791A,  $14A5,  $02BF,  $11BD

.spriteaux_01
#Palettes_LeftOfRedItems:
; #RRGGBB :  F8F8F8, D8B060, B02800, F08848, 282828, A0A0A8, 686870
#_1BD4EE: dw  $7FFF,  $32DB,  $00B6,  $263E,  $14A5,  $5694,  $39AD

.spriteaux_02
#Palettes_RodentsAndGhosts:
; #RRGGBB :  F8F8F8, 885008, 6860B8, 9098E0, 282828, E8B818, B07818
#_1BD4FC: dw  $7FFF,  $0551,  $5D8D,  $7272,  $14A5,  $0EFD,  $0DF6

.spriteaux_03
#Palettes_BumpkinBrothers:
; #RRGGBB :  F8F8F8, F0D840, A85820, F0A068, 282828, 88D830, 009838
#_1BD50A: dw  $7FFF,  $237E,  $1175,  $369E,  $14A5,  $1B71,  $1E60

.spriteaux_04
#Palettes_BonyPaladin:
; #RRGGBB :  F8F8F8, D02040, A06818, D8B850, 282828, 78D800, 589800
#_1BD518: dw  $7FFF,  $209A,  $0DB4,  $2AFB,  $14A5,  $036F,  $026B

.spriteaux_05
#Palettes_ThickPikit:
; #RRGGBB :  F8F8F8, A85810, 903068, C868A0, 282828, F8B058, E07820
#_1BD526: dw  $7FFF,  $0975,  $34D2,  $51B9,  $14A5,  $2EDF,  $11FC

.spriteaux_06
#Palettes_spraux16:
; #RRGGBB :  E8E8E8, E03810, A07010, E0B020, 282828, C0B098, 887050
#_1BD534: dw  $77BD,  $08FC,  $09D4,  $12DC,  $14A5,  $4ED8,  $29D1

.spriteaux_07
#Palettes_PolishedEyegore:
; #RRGGBB :  F8F8F8, 305830, E06018, D8A800, 282828, 50C090, 408858
#_1BD542: dw  $7FFF,  $1966,  $0D9C,  $02BB,  $14A5,  $4B0A,  $2E28

.spriteaux_08
#Palettes_MoldormArmy:
; #RRGGBB :  F8F8F8, 503818, C8B818, F8D018, 282828, A89818, 806818
#_1BD550: dw  $7FFF,  $0CEA,  $0EF9,  $0F5F,  $14A5,  $0E75,  $0DB0

.spriteaux_09
#Palettes_VictimPink:
; #RRGGBB :  F8F8F8, E088B0, 7098C0, A0C8F8, 000000, F8C8F8, F0A0D8
#_1BD55E: dw  $7FFF,  $5A3C,  $626E,  $7F34,  $0000,  $7F3F,  $6E9E

.spriteaux_0A
#Palettes_spraux1A:
; #RRGGBB :  F8F8F8, C83010, A85820, F0A068, 282828, D0C040, 988818
#_1BD56C: dw  $7FFF,  $08D9,  $1175,  $369E,  $14A5,  $231A,  $0E33

.spriteaux_0B
#Palettes_LynelsMane:
; #RRGGBB :  F8F8F8, A04010, 289828, 70D8B8, 282828, F89848, C86828
#_1BD57A: dw  $7FFF,  $0914,  $1665,  $5F6E,  $14A5,  $267F,  $15B9

.spriteaux_0C
#Palettes_HammerableMask:
; #RRGGBB :  F8F8F8, 4848B0, D85820, F8A840, 282828, A8A8F8, 7870E8
#_1BD588: dw  $7FFF,  $5929,  $117B,  $22BF,  $14A5,  $7EB5,  $75CF

.spriteaux_0D
#Palettes_KleptomanicSwine:
; #RRGGBB :  F8F8F8, 385088, 886008, C0A028, 282828, 88C8A0, 5088A8
#_1BD596: dw  $7FFF,  $4547,  $0591,  $1698,  $14A5,  $5331,  $562A

.spriteaux_0E
#Palettes_AgahnimsRobe:
; #RRGGBB :  F8F8F8, C04080, B08828, E8C070, 282828, 90D038, 688020
#_1BD5A4: dw  $7FFF,  $4118,  $1636,  $3B1D,  $14A5,  $1F52,  $120D

.spriteaux_0F
#Palettes_SkateAndHover:
; #RRGGBB :  F8F8F8, D8A068, 58A040, 90D878, 282828, E06868, A84040
#_1BD5B2: dw  $7FFF,  $369B,  $228B,  $3F72,  $14A5,  $35BC,  $2115

.spriteaux_10
#Palettes_Outmaneuverable:
; #RRGGBB :  F8F8F8, A00028, 00D018, F8C040, 282828, E88820, D03828
#_1BD5C0: dw  $7FFF,  $1414,  $0F40,  $231F,  $14A5,  $123D,  $14FA

.spriteaux_11
#Palettes_AngryDeadrock:
; #RRGGBB :  F8F8F8, F890B8, 905810, C08848, 282828, B088E8, 7848A0
#_1BD5CE: dw  $7FFF,  $5E5F,  $0972,  $2638,  $14A5,  $7636,  $512F

.spriteaux_12
#Palettes_spraux22:
; #RRGGBB :  A888F8, D81830, A85820, F0A068, 282828, F8F8F8, A888F8
#_1BD5DC: dw  $7E35,  $187B,  $1175,  $369E,  $14A5,  $7FFF,  $7E35

.spriteaux_13
#Palettes_spraux23:
; #RRGGBB :  F8F8F8, A0A0B0, B83010, E86040, 282828, C0A028, 886008
#_1BD5EA: dw  $7FFF,  $5A94,  $08D7,  $219D,  $14A5,  $1698,  $0591

.spriteaux_14
#Palettes_RedBossBash:
; #RRGGBB :  F8F8F8, 903018, D85800, F8A828, 282828, E88068, B04038
#_1BD5F8: dw  $7FFF,  $0CD2,  $017B,  $16BF,  $14A5,  $361D,  $1D16

.spriteaux_15
#Palettes_FadingWarp:
; #RRGGBB :  989898, 203868, 904808, C07818, 000000, B83008, 307088
#_1BD606: dw  $4E73,  $34E4,  $0532,  $0DF8,  $0000,  $04D7,  $45C6

.spriteaux_16
#Palettes_spraux26:
; #RRGGBB :  F8F8F8, 709868, A07828, E0C040, 282828, A0C898, C0E8B8
#_1BD614: dw  $7FFF,  $366E,  $15F4,  $231C,  $14A5,  $4F34,  $5FB8

.spriteaux_17
#Palettes_StatueGray:
; #RRGGBB :  505050, E8E8E8, C0C0C0, 888888, E8E8E8, 888888, C0C0C0
#_1BD622: dw  $294A,  $77BD,  $6318,  $4631,  $77BD,  $4631,  $6318

.sword
.sword_00
#Palettes_FighterSword:
; #RRGGBB :  F8F8F8, F8F848, 6888B8
#_1BD630: dw  $7FFF,  $27FF,  $5E2D

.sword_01
#Palettes_MasterSword:
; #RRGGBB :  7090F8, A0F8D8, A83838
#_1BD636: dw  $7E4E,  $6FF4,  $1CF5

.sword_02
#Palettes_TemperedSword:
; #RRGGBB :  D84810, F8A028, 68A0F8
#_1BD63C: dw  $093B,  $169F,  $7E8D

.sword_03
#Palettes_GoldenSword:
; #RRGGBB :  F8C800, F8F8C8, 009048
#_1BD642: dw  $033F,  $67FF,  $2640

.shield
.shield_00
#Palettes_FighterShield:
; #RRGGBB :  F8F8F8, 383838, 8080F0, 2828C8
#_1BD648: dw  $7FFF,  $1CE7,  $7A10,  $64A5

.shield_01
#Palettes_FireShield:
; #RRGGBB :  F8D098, 383838, E0A058, B02828
#_1BD650: dw  $4F5F,  $1CE7,  $2E9C,  $14B6

.shield_02
#Palettes_MirrorShield:
; #RRGGBB :  C8E0E0, 383838, C8B800, 988800
#_1BD658: dw  $7399,  $1CE7,  $02F9,  $0233

.hud_00
#Palettes_HUD_Brown:
; #RRGGBB :  000000, C06000, A8A8A8, 000000
#_1BD660: dw  $0000,  $0198,  $56B5,  $0000

.hud_01
#Palettes_HUD_Red:
; #RRGGBB :  000000, C00000, F8F8F8, 000000
#_1BD668: dw  $0000,  $0018,  $7FFF,  $0000

.hud_02
#Palettes_HUD_Yellow:
; #RRGGBB :  000000, E0A800, F8F8F8, 000000
#_1BD670: dw  $0000,  $02BC,  $7FFF,  $0000

.hud_03
#Palettes_HUD_Blue:
; #RRGGBB :  000000, 4870D0, F8F8F8, 000000
#_1BD678: dw  $0000,  $69C9,  $7FFF,  $0000

.hud_04
#Palettes_HUD_Gray:
; #RRGGBB :  000000, 303030, 686870, 000000
#_1BD680: dw  $0000,  $18C6,  $39AD,  $0000

.hud_05
#Palettes_HUD_RedYellow:
; #RRGGBB :  000000, C02800, E8C880, 000000
#_1BD688: dw  $0000,  $00B8,  $433D,  $0000

.hud_06
#Palettes_HUD_Text:
; #RRGGBB :  000000, 000070, F8F8F8, C00000
#_1BD690: dw  $0000,  $3800,  $7FFF,  $0018

.hud_07
#Palettes_HUD_Green:
; #RRGGBB :  000000, 20C028, F8F8F8, 000000
#_1BD698: dw  $0000,  $1704,  $7FFF,  $0000

.hud_08
#Palettes_HUD_08:
; #RRGGBB :  000000, 785840, C89058, 403028
#_1BD6A0: dw  $0000,  $216F,  $2E59,  $14C8

.hud_09
#Palettes_HUD_09:
; #RRGGBB :  000000, C00000, F8F8F8, 000000
#_1BD6A8: dw  $0000,  $0018,  $7FFF,  $0000

.hud_0A
#Palettes_HUD_0A:
; #RRGGBB :  000000, 000000, 28F858, 000000
#_1BD6B0: dw  $0000,  $0000,  $2FE5,  $0000

.hud_0B
#Palettes_HUD_0B:
; #RRGGBB :  000000, 000000, F8C038, 000000
#_1BD6B8: dw  $0000,  $0000,  $1F1F,  $0000

.hud_0C
#Palettes_HUD_0C:
; #RRGGBB :  000000, C0B078, A09058, E8E848
#_1BD6C0: dw  $0000,  $3ED8,  $2E54,  $27BD

.hud_0D
#Palettes_HUD_0D:
; #RRGGBB :  000000, C0B078, A09058, 807038
#_1BD6C8: dw  $0000,  $3ED8,  $2E54,  $1DD0

.hud_0E
#Palettes_HUD_0E:
; #RRGGBB :  000000, 000070, F05038, 000000
#_1BD6D0: dw  $0000,  $3800,  $1D5E,  $0000

.hud_0F
#Palettes_HUD_0F:
; #RRGGBB :  000000, 000000, F8F8F8, 000000
#_1BD6D8: dw  $0000,  $0000,  $7FFF,  $0000

.sword_04
#Palettes_DuplicateButter:
; #RRGGBB :  F8C800, F8F8C8, 009048
#_1BD6E0: dw  $033F,  $67FF,  $2640

#Palettes_PURPLE:
; #RRGGBB :  C860E8, C860E8, C860E8, C860E8
#_1BD6E6: dw  $7599,  $7599,  $7599,  $7599

#Palettes_PaintedBlack:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
#_1BD6EE: dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000
#_1BD6FC: dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.dungeonmap_sprites_00
#Palettes_DungeonMapSprites:
; #RRGGBB :  F8F8F8, C80000, F8F8F8, F8F8F8, 282828, 000000, 000000
; #RRGGBB :  F8F8F8, F8F828, 90D0F8, 705840, 282828, 000000, 000000
; #RRGGBB :  9870F8, 70E0F8, 68A8C8, B83858, 282828, C0B0F8, 000000
#_1BD70A: dw  $7FFF,  $0019,  $7FFF,  $7FFF,  $14A5,  $0000,  $0000
#_1BD718: dw  $7FFF,  $17FF,  $7F52,  $216E,  $14A5,  $0000,  $0000
#_1BD726: dw  $7DD3,  $7F8E,  $66AD,  $2CF7,  $14A5,  $7ED8,  $0000

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
#_1BD734: dw          $0CC6,  $152B,  $19D0,  $3675,  $535D,  $1CEE,  $1089
#_1BD742: dw  $7FFF,  $0CC6,  $152B,  $19D0,  $3675,  $535D,  $1CEE,  $1089
#_1BD752: dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
#_1BD760: dw  $7FFF,  $0C84,  $3168,  $3DCB,  $460D,  $28E7,  $19D0,  $1CEE
#_1BD770: dw          $0CC6,  $152B,  $1A33,  $3B19,  $14AC,  $4DC7,  $4546
#_1BD77E: dw  $7FFF,  $0C84,  $2925,  $3166,  $39A8,  $7D6B,  $152B,  $1089
#_1BD78E: dw          $10C6,  $216E,  $21F3,  $3ADC,  $18CD,  $66DE,  $59D9
#_1BD79C: dw  $7FFF,  $0CA5,  $2D29,  $2D71,  $35B3,  $28E7,  $19D0,  $1CEE
#_1BD7AC: dw          $1463,  $2110,  $35B8,  $739C,  $4108,  $16DB,  $61AD
#_1BD7BA: dw  $7FFF,  $0CA5,  $2D29,  $210E,  $2950,  $28E7,  $314A,  $7D6B
#_1BD7CA: dw          $0CC6,  $152B,  $19D0,  $3675,  $535D,  $152B,  $7D6B
#_1BD7D8: dw  $7FFF,  $0CA5,  $150A,  $0000,  $0000,  $18CD,  $3675,  $19D0

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
#_1BD7E8: dw          $1463,  $2CC7,  $3D2A,  $49AE,  $6274,  $1CEC,  $1089
#_1BD7F6: dw  $7FFF,  $1463,  $2CC7,  $3D2A,  $49AE,  $6274,  $1D2D,  $10CA
#_1BD806: dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
#_1BD814: dw  $7FFF,  $1463,  $2D26,  $3989,  $3DCB,  $2D26,  $3D2A,  $1D2D
#_1BD824: dw          $1463,  $2CC7,  $3D2A,  $49AE,  $6274,  $1CEC,  $1089
#_1BD832: dw  $7FFF,  $1463,  $24E4,  $2905,  $3147,  $24E4,  $2CC7,  $10CA
#_1BD842: dw          $18C6,  $1D0B,  $2590,  $21F4,  $14C8,  $1CEC,  $1089
#_1BD850: dw  $7FFF,  $0C86,  $10C8,  $190A,  $214C,  $3635,  $4B1C,  $6FBF
#_1BD860: dw          $18C6,  $2110,  $35B8,  $739C,  $4108,  $16DB,  $61AD
#_1BD86E: dw  $7FFF,  $1463,  $24E4,  $2D26,  $3989,  $3989,  $4E73,  $5EF7
#_1BD87E: dw          $1463,  $6507,  $6949,  $7F51,  $44E7,  $5D69,  $7E4F
#_1BD88C: dw  $7FFF,  $1063,  $28C7,  $24E4,  $15A5,  $15A5,  $49AE,  $3D2A

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
#_1BD89C: dw          $14A7,  $214F,  $21B3,  $3215,  $3EBA,  $56F8,  $250F
#_1BD8AA: dw  $7FFF,  $14A7,  $214F,  $21B3,  $3215,  $3EBA,  $56F8,  $1CEC
#_1BD8BA: dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
#_1BD8C8: dw  $7FFF,  $14A7,  $3168,  $3DCB,  $460D,  $3168,  $2193,  $1CEC
#_1BD8D8: dw          $14A7,  $214F,  $21B3,  $3258,  $64C8,  $7DAF,  $7FFF
#_1BD8E6: dw  $7FFF,  $0CA5,  $192D,  $216F,  $29B1,  $192D,  $214F,  $18CA
#_1BD8F6: dw          $14E9,  $21B1,  $3657,  $3A9A,  $03AB,  $56D9,  $4A77
#_1BD904: dw  $7FFF,  $0CA5,  $192D,  $216F,  $29B1,  $192D,  $2193,  $1CEC
#_1BD914: dw          $18C6,  $2110,  $35B8,  $739C,  $3D08,  $1ABA,  $5DCE
#_1BD922: dw  $7FFF,  $0CA5,  $2504,  $3166,  $39A8,  $7FFF,  $214F,  $18CA
#_1BD932: dw          $14A7,  $0673,  $21AD,  $21EF,  $7FFF,  $7FFF,  $7FFF
#_1BD940: dw  $7FFF,  $0CA5,  $0885,  $14E8,  $2984,  $2984,  $14A7,  $14A7

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
#_1BD950: dw          $14A5,  $1946,  $25C8,  $3AB0,  $5359,  $418C,  $3529
#_1BD95E: dw  $7FFF,  $14A5,  $1946,  $25C8,  $3AB0,  $5359,  $3D28,  $28E7
#_1BD96E: dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
#_1BD97C: dw  $7FFF,  $0C63,  $3128,  $394A,  $418C,  $2CE6,  $29C8,  $3D28
#_1BD98C: dw          $14A5,  $1946,  $25C8,  $3AB0,  $5359,  $2A9C,  $2955
#_1BD99A: dw  $7FFF,  $0C63,  $2CC6,  $2CE7,  $3529,  $28C5,  $1D24,  $28E7
#_1BD9AA: dw          $14A5,  $1946,  $25C8,  $3AB0,  $5359,  $2D8C,  $3529
#_1BD9B8: dw  $7FFF,  $14A5,  $2108,  $294A,  $318C,  $4E73,  $6B5A,  $7FFF
#_1BD9C8: dw          $18C6,  $2110,  $35B8,  $739C,  $3D08,  $1ABA,  $5DCE
#_1BD9D6: dw  $7FFF,  $1084,  $1CA7,  $24C9,  $2D0B,  $394A,  $5294,  $739C
#_1BD9E6: dw          $14A5,  $4568,  $59ED,  $6650,  $2985,  $3A48,  $532B
#_1BD9F4: dw  $7FFF,  $14A5,  $1525,  $0000,  $1CED,  $1CED,  $3AB0,  $25C8

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
#_1BDA04: dw          $24A4,  $5925,  $6A4B,  $7795,  $7FFB,  $5DCE,  $558C
#_1BDA12: dw  $7FFF,  $24A4,  $5925,  $6A4B,  $7795,  $7FFB,  $5DEE,  $4D6A
#_1BDA22: dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
#_1BDA30: dw  $7FFF,  $24A4,  $4D6A,  $55AC,  $5DEE,  $4D25,  $5DEE,  $51A8
#_1BDA40: dw          $24A4,  $5925,  $6A4B,  $77BB,  $117B,  $75CF,  $7EB5
#_1BDA4E: dw  $7FFF,  $24A4,  $4D6A,  $55AC,  $5DEE,  $3D47,  $5DEE,  $51A8
#_1BDA5E: dw          $24A4,  $78A9,  $7DD0,  $76CB,  $7FFA,  $64A9,  $55AC
#_1BDA6C: dw  $7FFF,  $34C8,  $4D6A,  $55AC,  $5DEE,  $6AB3,  $7B58,  $7FFF
#_1BDA7C: dw          $1463,  $2910,  $3DB8,  $739C,  $614A,  $1ABA,  $7E31
#_1BDA8A: dw  $7FFF,  $24A4,  $5D8B,  $4D28,  $4106,  $5B09,  $5294,  $739C
#_1BDA9A: dw          $24A4,  $4988,  $5EE4,  $7367,  $44E7,  $5D69,  $7E4F
#_1BDAA8: dw  $7FFF,  $2084,  $5505,  $0000,  $0000,  $5D8B,  $7795,  $7FF9

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
#_1BDAB8: dw          $0CA5,  $10EA,  $194D,  $29F3,  $3EB6,  $2DCB,  $2589
#_1BDAC6: dw  $7FFF,  $0CA5,  $10EA,  $194D,  $29F3,  $3EB6,  $2168,  $1906
#_1BDAD6: dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
#_1BDAE4: dw  $7FFF,  $0C63,  $2168,  $29AA,  $29AD,  $2190,  $194D,  $2168
#_1BDAF4: dw          $0CA5,  $10EA,  $194D,  $29F3,  $3EB6,  $2ACC,  $15E5
#_1BDB02: dw  $7FFF,  $0C63,  $1926,  $2167,  $216B,  $1905,  $10EA,  $1906
#_1BDB12: dw          $0CA5,  $10EA,  $194D,  $29F3,  $3EB6,  $29AD,  $29AA
#_1BDB20: dw  $7FFF,  $10E7,  $154A,  $1DAD,  $2A10,  $42F7,  $5FBD,  $7FFF
#_1BDB30: dw          $18C6,  $2110,  $35B8,  $739C,  $4108,  $1ABA,  $61AD
#_1BDB3E: dw  $7FFF,  $0C63,  $15AE,  $1DF0,  $15AE,  $29AA,  $5294,  $739C
#_1BDB4E: dw          $24C6,  $4526,  $6167,  $65C9,  $4547,  $59C8,  $6A8C
#_1BDB5C: dw  $7FFF,  $0CA5,  $10EA,  $0000,  $1DEC,  $1DEC,  $29F3,  $194D

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
#_1BDB6C: dw          $1084,  $18CA,  $252E,  $39D3,  $529A,  $418C,  $3529
#_1BDB7A: dw  $7FFF,  $1084,  $18CA,  $252E,  $39F3,  $52BA,  $2D29,  $24E7
#_1BDB8A: dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
#_1BDB98: dw  $7FFF,  $0C63,  $3529,  $394A,  $418C,  $3108,  $252E,  $2D29
#_1BDBA8: dw          $1084,  $18CA,  $252E,  $39D3,  $52BA,  $1E5A,  $1CF5
#_1BDBB6: dw  $7FFF,  $0C63,  $28C6,  $2CE7,  $3129,  $28C6,  $18CA,  $24E7
#_1BDBC6: dw          $1084,  $18CA,  $252E,  $39D3,  $52BA,  $3D6B,  $3529
#_1BDBD4: dw  $7FFF,  $1CE4,  $2545,  $2D86,  $35C7,  $5A2F,  $7738,  $7FFF
#_1BDBE4: dw          $1084,  $2110,  $35B8,  $739C,  $4108,  $16DB,  $5D8C
#_1BDBF2: dw  $7FFF,  $1084,  $14C9,  $14CC,  $190D,  $3529,  $5294,  $739C
#_1BDC02: dw          $28A5,  $3128,  $396A,  $41AC,  $40E7,  $5D69,  $720E
#_1BDC10: dw  $7FFF,  $0C64,  $14A9,  $0000,  $1CEB,  $1CEB,  $39F3,  $212F

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
#_1BDC20: dw          $1085,  $10C8,  $18EB,  $1D91,  $2E35,  $254F,  $210C
#_1BDC2E: dw  $7FFF,  $1085,  $10C9,  $192D,  $1D91,  $2E35,  $4209,  $3187
#_1BDC3E: dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
#_1BDC4C: dw  $7FFF,  $1085,  $14C9,  $18EB,  $212E,  $10C8,  $216E,  $190B
#_1BDC5C: dw          $18C6,  $1984,  $2646,  $3B69,  $19FF,  $18D5,  $10A9
#_1BDC6A: dw  $7FFF,  $1085,  $1088,  $10A9,  $14CB,  $1086,  $192C,  $10C8
#_1BDC7A: dw          $1085,  $216E,  $21F3,  $42B7,  $65AA,  $190B,  $18EB
#_1BDC88: dw  $7FFF,  $1085,  $14C9,  $18EB,  $212E,  $2DB2,  $4298,  $67BF
#_1BDC98: dw          $1084,  $2110,  $35B8,  $739C,  $4126,  $16DB,  $61CB
#_1BDCA6: dw  $7FFF,  $0C63,  $110D,  $1D91,  $2E35,  $212D,  $5294,  $739C
#_1BDCB6: dw          $1463,  $58E6,  $6149,  $658B,  $44E7,  $5D69,  $7A2E
#_1BDCC4: dw  $7FFF,  $1085,  $10C9,  $0000,  $0000,  $35A5,  $1085,  $1085

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
#_1BDCD4: dw          $0C63,  $2108,  $35AD,  $4A52,  $6739,  $31CC,  $298A
#_1BDCE2: dw  $7FFF,  $0C63,  $2108,  $35AD,  $4A52,  $6739,  $2569,  $1D27
#_1BDCF2: dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
#_1BDD00: dw  $7FFF,  $1084,  $2148,  $298A,  $31AC,  $2148,  $35AD,  $2569
#_1BDD10: dw          $0C63,  $2108,  $35AD,  $4A52,  $6739,  $1AD7,  $19AE
#_1BDD1E: dw  $0000,  $1084,  $1906,  $1D27,  $2569,  $1906,  $2108,  $1D27
#_1BDD2E: dw          $0C63,  $2D6B,  $5294,  $739C,  $2E26,  $4F8A,  $3AA6
#_1BDD3C: dw  $7FFF,  $10C7,  $1109,  $1D8D,  $29F0,  $42F8,  $5F9D,  $7FFF
#_1BDD4C: dw          $18C6,  $2110,  $35B8,  $739C,  $4108,  $1ABA,  $61AD
#_1BDD5A: dw  $7FFF,  $1084,  $10E9,  $152B,  $1D6D,  $298A,  $5294,  $739C
#_1BDD6A: dw          $1084,  $2148,  $31CC,  $3677,  $44E7,  $5D69,  $7E4F
#_1BDD78: dw  $7FFF,  $0C63,  $1CE7,  $0000,  $0000,  $1DCC,  $4A52,  $35AD

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
#_1BDD88: dw          $1084,  $18E6,  $194C,  $29F2,  $46D8,  $298C,  $114A
#_1BDD96: dw  $7FFF,  $1084,  $18E6,  $194C,  $29F2,  $46D8,  $14AA,  $1086
#_1BDDA6: dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
#_1BDDB4: dw  $7FFF,  $1463,  $1148,  $114A,  $298C,  $1945,  $258A,  $14AA
#_1BDDC4: dw          $1084,  $18E6,  $194C,  $29F2,  $46D8,  $298C,  $14AA
#_1BDDD2: dw  $7FFF,  $1463,  $1087,  $14A8,  $1508,  $7FFF,  $1D07,  $1086
#_1BDDE2: dw          $1084,  $18E6,  $194C,  $29F2,  $46D8,  $298C,  $14AA
#_1BDDF0: dw  $7FFF,  $20C6,  $3108,  $416B,  $51CE,  $6252,  $7F39,  $7FFF
#_1BDE00: dw          $1463,  $2110,  $35B8,  $739C,  $4108,  $16DB,  $61AD
#_1BDE0E: dw  $7FFF,  $1084,  $3924,  $4986,  $5A0B,  $114A,  $4631,  $5AD6
#_1BDE1E: dw          $1463,  $7F51,  $6949,  $6507,  $44E7,  $5D69,  $7E4F
#_1BDE2C: dw  $7FFF,  $1463,  $2CC7,  $2108,  $7FFF,  $18CD,  $29F2,  $216D

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
#_1BDE3C: dw          $1084,  $2508,  $314A,  $45EF,  $66F7,  $3188,  $1986
#_1BDE4A: dw  $7FFF,  $1084,  $2508,  $314A,  $45EF,  $66F7,  $1D87,  $1926
#_1BDE5A: dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
#_1BDE68: dw  $7FFF,  $1084,  $1525,  $1986,  $3188,  $198D,  $314A,  $1D87
#_1BDE78: dw          $1084,  $2508,  $314A,  $45EF,  $66F7,  $3188,  $1986
#_1BDE86: dw  $7FFF,  $1084,  $10A7,  $14C8,  $18E9,  $10A6,  $2508,  $1926
#_1BDE96: dw          $1084,  $190A,  $214C,  $298E,  $6B18,  $3188,  $1986
#_1BDEA4: dw  $7FFF,  $10E9,  $192A,  $216C,  $29AE,  $3634,  $571A,  $6FBF
#_1BDEB4: dw          $18C6,  $2110,  $35B8,  $739C,  $4108,  $16DB,  $61AD
#_1BDEC2: dw  $7FFF,  $1084,  $1525,  $1986,  $3188,  $1986,  $5294,  $739C
#_1BDED2: dw          $1463,  $6507,  $6949,  $7F51,  $44E7,  $5D69,  $7E4F
#_1BDEE0: dw  $7FFF,  $0C63,  $14A5,  $18C6,  $198D,  $198D,  $45EF,  $294A

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
#_1BDEF0: dw          $0C63,  $1945,  $1DE6,  $3AD0,  $5777,  $426A,  $3608
#_1BDEFE: dw  $7FFF,  $0C63,  $1945,  $1DE6,  $3AD0,  $5777,  $1DAF,  $114B
#_1BDF0E: dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
#_1BDF1C: dw  $7FFF,  $0C63,  $29A7,  $3608,  $426A,  $2565,  $19E6,  $1DAF
#_1BDF2C: dw          $0C63,  $1945,  $1DE6,  $3AD0,  $29A7,  $3608,  $426A
#_1BDF3A: dw  $7FFF,  $0C63,  $2545,  $2985,  $2DC7,  $2545,  $1545,  $114B
#_1BDF4A: dw          $14A5,  $1966,  $2EEB,  $4B0A,  $7FFF,  $25B1,  $1CED
#_1BDF58: dw  $7FFF,  $14E9,  $152B,  $1D6D,  $29D0,  $3633,  $46B7,  $6FBF
#_1BDF68: dw          $1463,  $2110,  $35B8,  $739C,  $4108,  $16DB,  $61AD
#_1BDF76: dw  $7FFF,  $0C63,  $10A7,  $14EA,  $1D2B,  $2DC7,  $5294,  $739C
#_1BDF86: dw          $18C6,  $7000,  $7C84,  $7CA5,  $3543,  $41A3,  $5243
#_1BDF94: dw  $7FFF,  $0C42,  $1525,  $0000,  $0000,  $1DD0,  $3AD0,  $256D

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
#_1BDFA4: dw          $1085,  $10C9,  $192D,  $1D91,  $2E35,  $254F,  $210C
#_1BDFB2: dw  $7FFF,  $1085,  $10C9,  $192D,  $1D91,  $2E35,  $4209,  $3187
#_1BDFC2: dw          $18C6,  $2D6B,  $5294,  $77BD,  $252F,  $1ABA,  $29F5
#_1BDFD0: dw  $7FFF,  $1085,  $14C9,  $18EB,  $212E,  $10C8,  $216E,  $190B
#_1BDFE0: dw          $7FFF,  $3673,  $3718,  $37BD,  $14A5,  $3529,  $35CE
#_1BDFEE: dw  $7FFF,  $1085,  $1088,  $10A9,  $14CB,  $1086,  $192C,  $10C8
#_1BDFFE: dw          $1463,  $1508,  $196B,  $3252,  $5318,  $190C,  $18EB
#_1BE00C: dw  $7FFF,  $1085,  $14C9,  $18EB,  $212E,  $2DB2,  $4298,  $67BF
#_1BE01C: dw          $1084,  $2110,  $35B8,  $739C,  $3528,  $16DB,  $59AC
#_1BE02A: dw  $7FFF,  $0C63,  $110D,  $1D91,  $2E35,  $212D,  $5294,  $739C
#_1BE03A: dw          $14A5,  $0C72,  $109C,  $11FF,  $4D27,  $61EC,  $7E4E
#_1BE048: dw  $7FFF,  $1085,  $10C9,  $0000,  $19CE,  $35A5,  $1085,  $1085

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
#_1BE058: dw          $0C63,  $24CB,  $296F,  $3634,  $4AF9,  $39AD,  $316B
#_1BE066: dw  $7FFF,  $0C63,  $24CB,  $296F,  $3634,  $4AF9,  $3187,  $2525
#_1BE076: dw          $18C6,  $2D6B,  $5294,  $739C,  $252F,  $1ABA,  $29F5
#_1BE084: dw  $7FFF,  $0C63,  $2D4A,  $316B,  $39AD,  $14AA,  $296F,  $3187
#_1BE094: dw          $0C63,  $24CB,  $296F,  $3634,  $4AF9,  $16A6,  $15C5
#_1BE0A2: dw  $0000,  $0C63,  $20E7,  $2508,  $2929,  $20C6,  $24CB,  $2525
#_1BE0B2: dw          $0C63,  $24CB,  $296F,  $3634,  $4AF9,  $25F1,  $1DAF
#_1BE0C0: dw  $7FFF,  $1088,  $14AA,  $18CD,  $2533,  $463A,  $6B5D,  $7FFF
#_1BE0D0: dw          $18C6,  $2110,  $35B8,  $739C,  $3D28,  $1ABA,  $5DCE
#_1BE0DE: dw  $7FFF,  $1088,  $14AA,  $18CD,  $2533,  $18CD,  $2533,  $0000
#_1BE0EE: dw          $14A5,  $3505,  $51C6,  $5A69,  $4AF9,  $24CB,  $0000
#_1BE0FC: dw  $7FFF,  $0C63,  $24CA,  $0000,  $0000,  $34E7,  $3634,  $3E75

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
#_1BE10C: dw          $0C63,  $14C9,  $218D,  $3E73,  $5739,  $114E,  $11CE
#_1BE11A: dw  $7FFF,  $0C63,  $14C9,  $218D,  $3E73,  $5739,  $114E,  $11CE
#_1BE12A: dw          $14C4,  $2D6B,  $5294,  $77BD,  $2532,  $16DB,  $25F9
#_1BE138: dw  $7FFF,  $0C63,  $14E9,  $190C,  $1D2D,  $14E9,  $112B,  $10C9
#_1BE148: dw          $0C63,  $18CA,  $11D0,  $1683,  $16BF,  $7D4D,  $0C7B
#_1BE156: dw  $7FFF,  $0C63,  $10C6,  $14E8,  $1909,  $10C6,  $112B,  $10C9
#_1BE166: dw          $0C63,  $1CAA,  $1130,  $2A13,  $108D,  $7FFF,  $24EC
#_1BE174: dw  $7FFF,  $0C63,  $108D,  $2953,  $4218,  $631F,  $112B,  $10C9
#_1BE184: dw          $1084,  $1CF5,  $35BB,  $739C,  $3529,  $16DB,  $59AD
#_1BE192: dw  $7FFF,  $0C63,  $10C6,  $14E8,  $1909,  $190C,  $5294,  $739C
#_1BE1A2: dw          $0C63,  $1110,  $19F7,  $26FD,  $7D29,  $18DB,  $1683
#_1BE1B0: dw  $7FFF,  $0C63,  $14C9,  $0000,  $108D,  $108D,  $1104,  $1104

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
#_1BE1C0: dw          $1084,  $24EA,  $252F,  $39D3,  $4E7A,  $3ED6,  $156B
#_1BE1CE: dw  $7FFF,  $1084,  $24EA,  $252F,  $39D3,  $4E7A,  $3ED6,  $156B
#_1BE1DE: dw          $14C4,  $2D6B,  $5294,  $77BD,  $2532,  $16DB,  $25F9
#_1BE1EC: dw  $7FFF,  $1084,  $210C,  $252E,  $2950,  $1986,  $2D92,  $156B
#_1BE1FC: dw          $1084,  $24EA,  $252F,  $39D3,  $7F9C,  $7D8C,  $64A5
#_1BE20A: dw  $7FFF,  $2084,  $3908,  $3D4A,  $458C,  $1986,  $2D92,  $156B
#_1BE21A: dw          $1084,  $1D2C,  $21F0,  $3274,  $1CFB,  $7F9C,  $4D29
#_1BE228: dw  $7FFF,  $1084,  $6DA0,  $7F60,  $3274,  $7FFF,  $3DFF,  $1CFB
#_1BE238: dw          $1084,  $1275,  $4929,  $739C,  $1505,  $3DFF,  $1CFB
#_1BE246: dw  $7FFF,  $1084,  $28C9,  $310B,  $354C,  $1986,  $2D92,  $156B
#_1BE256: dw          $1084,  $2D91,  $290B,  $229B,  $11A8,  $1CFB,  $0853
#_1BE264: dw  $7FFF,  $1084,  $3589,  $0120,  $1DA7,  $1986,  $0CC3,  $0CC3

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
#_1BE274: dw          $0CA5,  $10E9,  $1D6E,  $2E54,  $433B,  $46B1,  $320C
#_1BE282: dw  $7FFF,  $0CA5,  $10EB,  $1D6E,  $2E54,  $3F39,  $1D47,  $14C5
#_1BE292: dw          $14C4,  $2D6B,  $5294,  $77BD,  $2532,  $16DB,  $25F9
#_1BE2A0: dw  $7FFF,  $1084,  $2D08,  $354A,  $398C,  $7FFF,  $1D6E,  $1D47
#_1BE2B0: dw          $0CA5,  $10E9,  $1D6E,  $2E54,  $433B,  $1E59,  $1555
#_1BE2BE: dw  $7FFF,  $0C63,  $1D2C,  $1D91,  $21D2,  $24E5,  $110B,  $14C5
#_1BE2CE: dw          $0CA5,  $1926,  $29CA,  $4290,  $5B5A,  $2E54,  $1D6E
#_1BE2DC: dw  $7FFF,  $10E7,  $10EB,  $1D6E,  $2E54,  $42F7,  $5FBD,  $7FFF
#_1BE2EC: dw          $1084,  $1CF5,  $35BB,  $739C,  $3529,  $16DB,  $59AD
#_1BE2FA: dw  $7FFF,  $0C63,  $24A5,  $28C6,  $28C6,  $2D08,  $5294,  $739C
#_1BE30A: dw          $1084,  $210D,  $3191,  $4E78,  $77DF,  $1D6E,  $2E54
#_1BE318: dw  $7FFF,  $0C84,  $10CA,  $0000,  $0000,  $1CF1,  $2E54,  $2E11

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
#_1BE328: dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE336: dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE346: dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE354: dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE364: dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE372: dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE382: dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE390: dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE3A0: dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE3AE: dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE3BE: dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE3CC: dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE

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
#_1BE3DC: dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE3EA: dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE3FA: dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE408: dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE418: dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE426: dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE436: dw          $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE444: dw  $0000,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE,  $77DE
#_1BE454: dw          $14A5,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
#_1BE462: dw  $0000,  $14A5,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
#_1BE472: dw          $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
#_1BE480: dw  $0000,  $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F

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
#_1BE490: dw          $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
#_1BE49E: dw  $0000,  $14A5,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
#_1BE4AE: dw          $14A5,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
#_1BE4BC: dw  $0000,  $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
#_1BE4CC: dw          $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
#_1BE4DA: dw  $0000,  $14A5,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
#_1BE4EA: dw          $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
#_1BE4F8: dw  $0000,  $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
#_1BE508: dw          $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
#_1BE516: dw  $0000,  $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
#_1BE526: dw          $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F
#_1BE534: dw  $0000,  $0000,  $380E,  $6018,  $7C1F,  $7DBF,  $7E7F,  $7F3F

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
#_1BE544: dw  $0000,  $71E7,  $71E7,  $71E7,  $71E7,  $71E7,  $7EB5,  $1CE7
#_1BE554: dw  $0000,  $7FFF,  $02BD,  $4E2D,  $66F3,  $7F99,  $4E2D,  $7F99
#_1BE564: dw  $0000,  $34E0,  $34E0,  $34E0,  $34E0,  $34E0,  $7EB5,  $1CE7
#_1BE574: dw  $0000,  $7FFF,  $4D67,  $01FE,  $02BD,  $3F7E,  $66F3,  $7F99
#_1BE584: dw  $0000,  $71E7,  $3B5F,  $71E7,  $71E7,  $71E7,  $7EB5,  $1CE7
#_1BE594: dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000
#_1BE5A4: dw  $0000,  $71E7,  $71E7,  $2DFF,  $3B5F,  $71E7,  $7EB5,  $1CE7
#_1BE5B4: dw  $0000,  $7FFF,  $4D67,  $4E2D,  $66F3,  $7F99,  $02BD,  $3F7E
#_1BE5C4: dw  $0000,  $0069,  $04AB,  $0D0E,  $1552,  $1DB4,  $2614,  $2A55
#_1BE5D4: dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000
#_1BE5E4: dw  $0000,  $38C0,  $4102,  $4944,  $5186,  $59C8,  $620A,  $6A4C
#_1BE5F4: dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_00
#Palettes_OW1BE604:
; #RRGGBB :  282828, 000000, 000000, 000000, 000000, 000000, 000000
#_1BE604: dw  $14A5,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_01
#Palettes_OW1BE612:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
#_1BE612: dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_02
#Palettes_OW1BE620:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
#_1BE620: dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_03
#Palettes_OW1BE62E:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
#_1BE62E: dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_04
#Palettes_OW1BE63C:
; #RRGGBB :  202020, 700000, C81020, F84050, 403838, 101010, 484040
#_1BE63C: dw  $1084,  $000E,  $1059,  $291F,  $1CE8,  $0842,  $2109

.owanim_05
#Palettes_OW1BE64A:
; #RRGGBB :  181818, 282880, 3858B8, 70A8F8, C0C0F8, 787030, E0D0F0
#_1BE64A: dw  $0C63,  $40A5,  $5D67,  $7EAE,  $7F18,  $19CF,  $7B5C

.owanim_06
#Palettes_OW1BE658:
; #RRGGBB :  203010, 201000, 005028, 308860, 503020, 006030, 806038
#_1BE658: dw  $08C4,  $0044,  $1540,  $3226,  $10CA,  $1980,  $1D90

.owanim_07
#Palettes_OW1BE666:
; #RRGGBB :  282828, 304878, 3860A8, 70B0F0, 483828, 5880C0, 786038
#_1BE666: dw  $14A5,  $3D26,  $5587,  $7ACE,  $14E9,  $620B,  $1D8F

.owanim_08
#Palettes_OW1BE674:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
#_1BE674: dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_09
#Palettes_OW1BE682:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
#_1BE682: dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_0A
#Palettes_OW1BE690:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
#_1BE690: dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_0B
#Palettes_OW1BE69E:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
#_1BE69E: dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_0C
#Palettes_OW1BE6AC:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
#_1BE6AC: dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owanim_0D
#Palettes_OW1BE6BA:
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
#_1BE6BA: dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owmain_00
#Palettes_OW1BE6C8:
; #RRGGBB :  282828, 483828, 604828, 786038, 307030, 489848, 887848
; #RRGGBB :  282828, 483828, 604828, 786038, 686028, 888040, 887848
; #RRGGBB :  282828, 483828, 604828, 786038, 604828, 887848, 887848
; #RRGGBB :  282828, 508070, 78B890, B0E8B8, 285828, 489848, 30D030
; #RRGGBB :  282828, 605030, 887048, A08860, 287838, 489848, 408848
#_1BE6C8: dw  $14A5,  $14E9,  $152C,  $1D8F,  $19C6,  $2669,  $25F1
#_1BE6D6: dw  $14A5,  $14E9,  $152C,  $1D8F,  $158D,  $2211,  $25F1
#_1BE6E4: dw  $14A5,  $14E9,  $152C,  $1D8F,  $152C,  $25F1,  $25F1
#_1BE6F2: dw  $14A5,  $3A0A,  $4AEF,  $5FB6,  $1565,  $2669,  $1B46
#_1BE700: dw  $14A5,  $194C,  $25D1,  $3234,  $1DE5,  $2669,  $2628

.owmain_01
#Palettes_OW1BE70E:
; #RRGGBB :  181818, 382018, 503020, 684820, 606030, 908850, 806038
; #RRGGBB :  181818, 382818, 503020, 684820, 705830, 907850, 806038
; #RRGGBB :  181818, 382818, 503020, 684820, 684820, 806038, 806038
; #RRGGBB :  203010, 487040, 709868, A0C898, 606030, 908850, A09860
; #RRGGBB :  203010, 886898, 98B0E0, B8A820, 606030, 908850, 787038
#_1BE70E: dw  $0C63,  $0C87,  $10CA,  $112D,  $198C,  $2A32,  $1D90
#_1BE71C: dw  $0C63,  $0CA7,  $10CA,  $112D,  $196E,  $29F2,  $1D90
#_1BE72A: dw  $0C63,  $0CA7,  $10CA,  $112D,  $112D,  $1D90,  $1D90
#_1BE738: dw  $08C4,  $21C9,  $366E,  $4F34,  $198C,  $2A32,  $3274
#_1BE746: dw  $08C4,  $4DB1,  $72D3,  $12B7,  $198C,  $2A32,  $1DCF

.owmain_02
#Palettes_OW1BE754:
; #RRGGBB :  181818, 382018, 503020, 684820, 686028, 787030, 806038
; #RRGGBB :  181818, 382018, 503020, 684820, B0E8D8, 805040, F8F8F8
; #RRGGBB :  181818, 382018, 503020, 684820, 684820, 806038, 806038
; #RRGGBB :  303828, 508070, 78B890, B0F0B8, 686028, 787030, F868F8
; #RRGGBB :  282828, 605020, 887038, A88858, 686028, 787030, 806038
#_1BE754: dw  $0C63,  $0C87,  $10CA,  $112D,  $158D,  $19CF,  $1D90
#_1BE762: dw  $0C63,  $0C87,  $10CA,  $112D,  $6FB6,  $2150,  $7FFF
#_1BE770: dw  $0C63,  $0C87,  $10CA,  $112D,  $112D,  $1D90,  $1D90
#_1BE77E: dw  $14E6,  $3A0A,  $4AEF,  $5FD6,  $158D,  $19CF,  $7DBF
#_1BE78C: dw  $14A5,  $114C,  $1DD1,  $2E35,  $158D,  $19CF,  $1D90

.owmain_03
#Palettes_OW1BE79A:
; #RRGGBB :  202010, 383018, 504028, 685028, 504028, 605038, 786840
; #RRGGBB :  202010, 383018, 484028, 605830, A87880, 101010, D0A0A8
; #RRGGBB :  202010, 383018, 484028, 605830, 484028, 786840, 786840
; #RRGGBB :  202020, 487040, 709868, A0C898, 504028, 605038, 706048
; #RRGGBB :  202020, 886898, 98B0E0, B8A820, 483820, 605038, 504028
#_1BE79A: dw  $0884,  $0CC7,  $150A,  $154D,  $150A,  $1D4C,  $21AF
#_1BE7A8: dw  $0884,  $0CC7,  $1509,  $196C,  $41F5,  $0842,  $569A
#_1BE7B6: dw  $0884,  $0CC7,  $1509,  $196C,  $1509,  $21AF,  $21AF
#_1BE7C4: dw  $1084,  $21C9,  $366E,  $4F34,  $150A,  $1D4C,  $258E
#_1BE7D2: dw  $1084,  $4DB1,  $72D3,  $12B7,  $10E9,  $1D4C,  $150A

.owmain_04
#Palettes_OW1BE7E0:
; #RRGGBB :  202000, 282800, 383800, 403800, 585000, 684000, C04000
; #RRGGBB :  002800, 004000, 105010, 186018, 206820, 606048, 404030
; #RRGGBB :  303848, 101828, 202838, 384050, 683038, 784048, 703840
; #RRGGBB :  586070, 485060, 304050, 303848, 202828, 606048, 404030
; #RRGGBB :  202020, 404030, 606048, 989880, B8B8A0, 582030, 904828
#_1BE7E0: dw  $0084,  $00A5,  $00E7,  $00E8,  $014B,  $010D,  $0118
#_1BE7EE: dw  $00A0,  $0100,  $0942,  $0D83,  $11A4,  $258C,  $1908
#_1BE7FC: dw  $24E6,  $1462,  $1CA4,  $2907,  $1CCD,  $250F,  $20EE
#_1BE80A: dw  $398B,  $3149,  $2906,  $24E6,  $14A4,  $258C,  $1908
#_1BE818: dw  $1084,  $1908,  $258C,  $4273,  $52F7,  $188B,  $1532

.owmain_05
#Palettes_OW1BE826:
; #RRGGBB :  F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8
; #RRGGBB :  F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8
; #RRGGBB :  F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
; #RRGGBB :  000000, 000000, 000000, 000000, 000000, 000000, 000000
#_1BE826: dw  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF
#_1BE834: dw  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF
#_1BE842: dw  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF
#_1BE850: dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000
#_1BE85E: dw  $0000,  $0000,  $0000,  $0000,  $0000,  $0000,  $0000

.owaux_00
#Palettes_OW1BE86C:
; #RRGGBB :  283028, 705840, 987850, B89868, 683838, 905050, B8B088
; #RRGGBB :  283028, 508070, 78B890, B0E8B8, D0F0D0, 307030, 489848
; #RRGGBB :  282828, 605030, 887040, A89060, 286840, 407840, 285830
#_1BE86C: dw  $14C5,  $216E,  $29F3,  $3677,  $1CED,  $2952,  $46D7
#_1BE87A: dw  $14C5,  $3A0A,  $4AEF,  $5FB6,  $6BDA,  $19C6,  $2669
#_1BE888: dw  $14A5,  $194C,  $21D1,  $3255,  $21A5,  $21E8,  $1965

.owaux_01
#Palettes_OW1BE896:
; #RRGGBB :  282828, 805868, B888A0, E0C0D0, 989840, 586090, 8090C0
; #RRGGBB :  282828, 605030, 887040, 285830, 905050, 307030, 703838
; #RRGGBB :  282828, 887050, C0B098, E8E8E8, 385030, 688060, 307030
#_1BE896: dw  $14A5,  $3570,  $5237,  $6B1C,  $2273,  $498B,  $6250
#_1BE8A4: dw  $14A5,  $194C,  $21D1,  $1965,  $2952,  $19C6,  $1CEE
#_1BE8B2: dw  $14A5,  $29D1,  $4ED8,  $77BD,  $1947,  $320D,  $19C6

.owaux_02
#Palettes_OW1BE8C0:
; #RRGGBB :  282828, 886038, C88038, E8A848, F8D0D0, B85858, D88090
; #RRGGBB :  282828, F8F8F8, 206878, 888888, 883838, F8F8F8, F8F8F8
; #RRGGBB :  383028, 787058, A09878, E0D0C0, 307030, 489848, F8F8F0
#_1BE8C0: dw  $14A5,  $1D91,  $1E19,  $26BD,  $6B5F,  $2D77,  $4A1B
#_1BE8CE: dw  $14A5,  $7FFF,  $3DA4,  $4631,  $1CF1,  $7FFF,  $7FFF
#_1BE8DC: dw  $14C7,  $2DCF,  $3E74,  $635C,  $19C6,  $2669,  $7BFF

.owaux_03
#Palettes_OW1BE8EA:
; #RRGGBB :  98C0F8, A8D0F8, C8F0F8, E8F8F8, 407060, 000000, 80B0F8
; #RRGGBB :  F8F8F8, E01000, 000000, E05000, F88000, F8A800, F8C800
; #RRGGBB :  F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8, F8F8F8
#_1BE8EA: dw  $7F13,  $7F55,  $7FD9,  $7FFD,  $31C8,  $0000,  $7ED0
#_1BE8F8: dw  $7FFF,  $005C,  $0000,  $015C,  $021F,  $02BF,  $033F
#_1BE906: dw  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF,  $7FFF

.owaux_04
#Palettes_OW1BE914:
; #RRGGBB :  303030, 786038, 5880C0, C0E0D0, 387838, 489848, 887848
; #RRGGBB :  303030, 3860A0, B08838, F0E078, 387838, 489848, 5880C0
; #RRGGBB :  282828, 483828, 604828, 786038, 307030, 489848, 887848
#_1BE914: dw  $18C6,  $1D8F,  $620B,  $6B98,  $1DE7,  $2669,  $25F1
#_1BE922: dw  $18C6,  $5187,  $1E36,  $3F9E,  $1DE7,  $2669,  $620B
#_1BE930: dw  $14A5,  $14E9,  $152C,  $1D8F,  $19C6,  $2669,  $25F1

.owaux_05
#Palettes_OW1BE93E:
; #RRGGBB :  202010, 504808, 787840, A8A870, C8C890, 605038, 602830
; #RRGGBB :  202010, 504808, 787840, A8A870, C8C890, 605038, 602830
; #RRGGBB :  202010, 404028, 605830, 786840, A87880, 605038, D0A0A8
#_1BE93E: dw  $0884,  $052A,  $21EF,  $3AB5,  $4B39,  $1D4C,  $18AC
#_1BE94C: dw  $0884,  $052A,  $21EF,  $3AB5,  $4B39,  $1D4C,  $18AC
#_1BE95A: dw  $0884,  $1508,  $196C,  $21AF,  $41F5,  $1D4C,  $569A

.owaux_06
#Palettes_OW1BE968:
; #RRGGBB :  103070, 1840B0, 3868E8, 58B8F8, 90E8F8, 787030, 181818
; #RRGGBB :  181818, 584828, 908050, C0B070, 501828, 806038, 483828
; #RRGGBB :  181818, 604838, 805040, B09848, B0E8D8, 787030, F8F8F8
#_1BE968: dw  $38C2,  $5903,  $75A7,  $7EEB,  $7FB2,  $19CF,  $0C63
#_1BE976: dw  $0C63,  $152B,  $2A12,  $3AD8,  $146A,  $1D90,  $14E9
#_1BE984: dw  $0C63,  $1D2C,  $2150,  $2676,  $6FB6,  $19CF,  $7FFF

.owaux_07
#Palettes_OW1BE992:
; #RRGGBB :  181818, 382018, 503020, 684820, 686028, 787030, 806038
; #RRGGBB :  181818, 382018, 503020, 684820, B0E8D8, F8F8F8, 806038
; #RRGGBB :  181818, 306060, 307070, 887058, C0C0F8, 509860, E0D0F0
#_1BE992: dw  $0C63,  $0C87,  $10CA,  $112D,  $158D,  $19CF,  $1D90
#_1BE9A0: dw  $0C63,  $0C87,  $10CA,  $112D,  $6FB6,  $7FFF,  $1D90
#_1BE9AE: dw  $0C63,  $3186,  $39C6,  $2DD1,  $7F18,  $326A,  $7B5C

.owaux_08
#Palettes_OW1BE9BC:
; #RRGGBB :  282828, 508070, 78B890, A0E0A8, 307030, 988870, B0A888
; #RRGGBB :  282828, 685838, 887858, F8F8F8, 286840, B87890, A06068
; #RRGGBB :  282828, 705840, 987850, B89868, 284860, 406888, B8B088
#_1BE9BC: dw  $14A5,  $3A0A,  $4AEF,  $5794,  $19C6,  $3A33,  $46B6
#_1BE9CA: dw  $14A5,  $1D6D,  $2DF1,  $7FFF,  $21A5,  $49F7,  $3594
#_1BE9D8: dw  $14A5,  $216E,  $29F3,  $3677,  $3125,  $45A8,  $46D7

.owaux_09
#Palettes_OW1BE9E6:
; #RRGGBB :  282828, 586848, 889860, B8C088, 304830, 483828, 887848
; #RRGGBB :  282828, 605030, 887040, 888040, 989030, 989040, 706828
; #RRGGBB :  282828, 586848, 889860, B8C088, D0D0B8, 706830, 888040
#_1BE9E6: dw  $14A5,  $25AB,  $3271,  $4717,  $1926,  $14E9,  $25F1
#_1BE9F4: dw  $14A5,  $194C,  $21D1,  $2211,  $1A53,  $2253,  $15AE
#_1BEA02: dw  $14A5,  $25AB,  $3271,  $4717,  $5F5A,  $19AE,  $2211

.owaux_0A
#Palettes_OW1BEA10:
; #RRGGBB :  000050, 001070, 082888, 2040A0, 6060C8, 6080D0, 489848
; #RRGGBB :  383838, 588060, 98B888, C8E0A0, F0F8D0, 406880, 489848
; #RRGGBB :  284028, 605020, 489848, 206830, 288048, 289860, 40B068
#_1BEA10: dw  $2800,  $3840,  $44A1,  $5104,  $658C,  $6A0C,  $2669
#_1BEA1E: dw  $1CE7,  $320B,  $46F3,  $5399,  $6BFE,  $41A8,  $2669
#_1BEA2C: dw  $1505,  $114C,  $2669,  $19A4,  $2605,  $3265,  $36C8

.owaux_0B
#Palettes_OW1BEA3A:
; #RRGGBB :  403800, B0C860, 706050, A09088, 88A850, 587828, A8B870
; #RRGGBB :  202010, 503808, 685020, 887040, B08020, D0B038, 805000
; #RRGGBB :  202010, 584818, 887830, B8A878, E8E8B0, 705830, 907850
#_1BEA3A: dw  $00E8,  $3336,  $298E,  $4654,  $2AB1,  $15EB,  $3AF5
#_1BEA48: dw  $0884,  $04EA,  $114D,  $21D1,  $1216,  $1EDA,  $0150
#_1BEA56: dw  $0884,  $0D2B,  $19F1,  $3EB7,  $5BBD,  $196E,  $29F2

.owaux_0C
#Palettes_OW1BEA64:
; #RRGGBB :  000000, 080810, 181820, 282830, 383858, 484868, 585890
; #RRGGBB :  382818, 705050, A08088, D0B8B8, 686838, F8F8F8, A8B870
; #RRGGBB :  202010, 606040, 909058, A8B870, 607038, 809058, 484820
#_1BEA64: dw  $0000,  $0821,  $1063,  $18A5,  $2CE7,  $3529,  $496B
#_1BEA72: dw  $0CA7,  $294E,  $4614,  $5EFA,  $1DAD,  $7FFF,  $3AF5
#_1BEA80: dw  $0884,  $218C,  $2E52,  $3AF5,  $1DCC,  $2E50,  $1129

.owaux_0D
#Palettes_OW1BEA8E:
; #RRGGBB :  204048, 405858, 607880, 609898, 80B0B0, 006030, A8D8D8
; #RRGGBB :  202010, 006030, 505818, 788830, C8C060, A87810, E0A858
; #RRGGBB :  202010, 005028, 003020, 807838, 705830, 907850, 006030
#_1BEA8E: dw  $2504,  $2D68,  $41EC,  $4E6C,  $5AD0,  $1980,  $6F75
#_1BEA9C: dw  $0884,  $1980,  $0D6A,  $1A2F,  $3319,  $09F5,  $2EBC
#_1BEAAA: dw  $0884,  $1540,  $10C0,  $1DF0,  $196E,  $29F2,  $1980

.owaux_0E
#Palettes_OW1BEAB8:
; #RRGGBB :  181818, 684820, 006030, 108050, 606030, 908850, 806038
; #RRGGBB :  181818, 005028, F8F8F8, F8F8F8, 606030, 908850, 006030
; #RRGGBB :  181818, 382018, 503020, 684820, 606030, 908850, 806038
#_1BEAB8: dw  $0C63,  $112D,  $1980,  $2A02,  $198C,  $2A32,  $1D90
#_1BEAC6: dw  $0C63,  $1540,  $7FFF,  $7FFF,  $198C,  $2A32,  $1980
#_1BEAD4: dw  $0C63,  $0C87,  $10CA,  $112D,  $198C,  $2A32,  $1D90

.owaux_0F
#Palettes_OW1BEAE2:
; #RRGGBB :  403828, 806838, A89858, D0C078, F8F8F8, C0C088, D0D098
; #RRGGBB :  202010, 503808, 685020, 887040, B87060, D89888, 985048
; #RRGGBB :  303020, 906848, B89060, D8B070, A06058, C08070, E0A898
#_1BEAE2: dw  $14E8,  $1DB0,  $2E75,  $3F1A,  $7FFF,  $4718,  $4F5A
#_1BEAF0: dw  $0884,  $04EA,  $114D,  $21D1,  $31D7,  $467B,  $2553
#_1BEAFE: dw  $10C6,  $25B2,  $3257,  $3ADB,  $2D94,  $3A18,  $4EBC

.owaux_10
#Palettes_OW1BEB0C:
; #RRGGBB :  181818, 906848, B89060, D8B868, 405050, 605870, 808090
; #RRGGBB :  303828, 487040, 709868, A0C898, C0E8B8, 606030, 908850
; #RRGGBB :  202010, 503808, 685020, 887040, 606830, 788848, 385838
#_1BEB0C: dw  $0C63,  $25B2,  $3257,  $36FB,  $2948,  $396C,  $4A10
#_1BEB1A: dw  $14E6,  $21C9,  $366E,  $4F34,  $5FB8,  $198C,  $2A32
#_1BEB28: dw  $0884,  $04EA,  $114D,  $21D1,  $19AC,  $262F,  $1D67

.owaux_11
#Palettes_OW1BEB36:
; #RRGGBB :  702028, A04030, C87040, F8B860, 080018, 080018, 500030
; #RRGGBB :  202010, 503808, 685020, 887040, 706090, 9880B0, 504878
; #RRGGBB :  202010, 705818, 987830, B09048, B8A058, 604020, 503000
#_1BEB36: dw  $148E,  $1914,  $21D9,  $32FF,  $0C01,  $0C01,  $180A
#_1BEB44: dw  $0884,  $04EA,  $114D,  $21D1,  $498E,  $5A13,  $3D2A
#_1BEB52: dw  $0884,  $0D6E,  $19F3,  $2656,  $2E97,  $110C,  $00CA

.owaux_12
#Palettes_OW1BEB60:
; #RRGGBB :  202010, 484008, 585820, 888850, A8A870, 605038, 807000
; #RRGGBB :  202010, 383018, 504028, 685028, F8F8B0, D0A0A8, 786840
; #RRGGBB :  101010, 101010, 181818, 481010, 403838, 181818, 484040
#_1BEB60: dw  $0884,  $0509,  $116B,  $2A31,  $3AB5,  $1D4C,  $01D0
#_1BEB6E: dw  $0884,  $0CC7,  $150A,  $154D,  $5BFF,  $569A,  $21AF
#_1BEB7C: dw  $0842,  $0842,  $0C63,  $0849,  $1CE8,  $0C63,  $2109

.owaux_13
#Palettes_OW1BEB8A:
; #RRGGBB :  202020, 380008, 501820, 703008, 905028, 284830, 403818
; #RRGGBB :  202010, 583038, 707038, A0A068, C0C088, 605038, 602830
; #RRGGBB :  202010, 404028, 605830, 786840, A87880, 605038, D0A0A8
#_1BEB8A: dw  $1084,  $0407,  $106A,  $04CE,  $1552,  $1925,  $0CE8
#_1BEB98: dw  $0884,  $1CCB,  $1DCE,  $3694,  $4718,  $1D4C,  $18AC
#_1BEBA6: dw  $0884,  $1508,  $196C,  $21AF,  $41F5,  $1D4C,  $569A

;===================================================================================================

SwordPaletteOffsets:
#_1BEBB4: db (PaletteData_sword_00-PaletteData_sword) ; $00
#_1BEBB5: db (PaletteData_sword_00-PaletteData_sword) ; $00
#_1BEBB6: db (PaletteData_sword_01-PaletteData_sword) ; $06
#_1BEBB7: db (PaletteData_sword_02-PaletteData_sword) ; $0C
#_1BEBB8: db (PaletteData_sword_03-PaletteData_sword) ; $12

; a lot of extra values here
; were more swords planned?
#_1BEBB9: db $18, $1E, $24, $2A, $30, $36, $3C, $42

ShieldPaletteOffsets:
#_1BEBC1: db (PaletteData_shield_00-PaletteData_shield) ; $00
#_1BEBC2: db (PaletteData_shield_00-PaletteData_shield) ; $00
#_1BEBC3: db (PaletteData_shield_01-PaletteData_shield) ; $08
#_1BEBC4: db (PaletteData_shield_02-PaletteData_shield) ; $10
#_1BEBC5: db $18 ; was an extra shield planned?

;===================================================================================================

PaletteIDtoOffset:
#_1BEBC6: db $00 ; 0x00*14
#_1BEBC7: db $0E ; 0x01*14
#_1BEBC8: db $1C ; 0x02*14
#_1BEBC9: db $2A ; 0x03*14
#_1BEBCA: db $38 ; 0x04*14
#_1BEBCB: db $46 ; 0x05*14
#_1BEBCC: db $54 ; 0x06*14
#_1BEBCD: db $62 ; 0x07*14
#_1BEBCE: db $70 ; 0x08*14
#_1BEBCF: db $7E ; 0x09*14
#_1BEBD0: db $8C ; 0x0A*14
#_1BEBD1: db $9A ; 0x0B*14
#_1BEBD2: db $A8 ; 0x0C*14
#_1BEBD3: db $B6 ; 0x0D*14
#_1BEBD4: db $C4 ; 0x0E*14
#_1BEBD5: db $D2 ; 0x0F*14

;---------------------------------------------------------------------------------------------------

PaletteIDtoOffset_16bit:
#_1BEBD6: dw $0000 ; 0x00*14
#_1BEBD8: dw $000E ; 0x01*14
#_1BEBDA: dw $001C ; 0x02*14
#_1BEBDC: dw $002A ; 0x03*14
#_1BEBDE: dw $0038 ; 0x04*14
#_1BEBE0: dw $0046 ; 0x05*14
#_1BEBE2: dw $0054 ; 0x06*14
#_1BEBE4: dw $0062 ; 0x07*14
#_1BEBE6: dw $0070 ; 0x08*14
#_1BEBE8: dw $007E ; 0x09*14
#_1BEBEA: dw $008C ; 0x0A*14
#_1BEBEC: dw $009A ; 0x0B*14
#_1BEBEE: dw $00A8 ; 0x0C*14
#_1BEBF0: dw $00B6 ; 0x0D*14
#_1BEBF2: dw $00C4 ; 0x0E*14
#_1BEBF4: dw $00D2 ; 0x0F*14
#_1BEBF6: dw $00E0 ; 0x10*14
#_1BEBF8: dw $00EE ; 0x11*14
#_1BEBFA: dw $00FC ; 0x12*14
#_1BEBFC: dw $010A ; 0x13*14
#_1BEBFE: dw $0118 ; 0x14*14
#_1BEC00: dw $0126 ; 0x15*14
#_1BEC02: dw $0134 ; 0x16*14
#_1BEC04: dw $0142 ; 0x17*14

;===================================================================================================

LinkMailPalettesOffsets:
#_1BEC06: db (Palettes_GreenMail-PaletteData_Link)/2 ; $00
#_1BEC07: db (Palettes_BlueMail-PaletteData_Link)/2  ; $0F
#_1BEC08: db (Palettes_RedMail-PaletteData_Link)/2   ; $1E
#_1BEC09: db (Palettes_Bunny-PaletteData_Link)/2     ; $2D
#_1BEC0A: db (Palettes_Zap-PaletteData_Link)/2       ; $3C

;===================================================================================================

UnusedPaletteOffsets:
#_1BEC0B: db $00
#_1BEC0C: db $1C
#_1BEC0D: db $38
#_1BEC0E: db $54
#_1BEC0F: db $70
#_1BEC10: db $8C
#_1BEC11: db $A8
#_1BEC12: db $C4

;===================================================================================================

PaletteIDtoOffset_OW:
#_1BEC13: dw $0000 ; 0x00*42
#_1BEC15: dw $002A ; 0x01*42
#_1BEC17: dw $0054 ; 0x02*42
#_1BEC19: dw $007E ; 0x03*42
#_1BEC1B: dw $00A8 ; 0x04*42
#_1BEC1D: dw $00D2 ; 0x05*42
#_1BEC1F: dw $00FC ; 0x06*42
#_1BEC21: dw $0126 ; 0x07*42
#_1BEC23: dw $0150 ; 0x08*42
#_1BEC25: dw $017A ; 0x09*42
#_1BEC27: dw $01A4 ; 0x0A*42
#_1BEC29: dw $01CE ; 0x0B*42
#_1BEC2B: dw $01F8 ; 0x0C*42
#_1BEC2D: dw $0222 ; 0x0D*42
#_1BEC2F: dw $024C ; 0x0E*42
#_1BEC31: dw $0276 ; 0x0F*42
#_1BEC33: dw $02A0 ; 0x10*42
#_1BEC35: dw $02CA ; 0x11*42
#_1BEC37: dw $02F4 ; 0x12*42
#_1BEC39: dw $031E ; 0x13*42

;---------------------------------------------------------------------------------------------------

PaletteIDtoOffset_OW2:
#_1BEC3B: dw $0000 ; 0x00*70
#_1BEC3D: dw $0046 ; 0x01*70
#_1BEC3F: dw $008C ; 0x02*70
#_1BEC41: dw $00D2 ; 0x03*70
#_1BEC43: dw $0118 ; 0x04*70
#_1BEC45: dw $015E ; 0x05*70

;===================================================================================================

PaletteIDtoOffset_HUD:
#_1BEC47: db $00
#_1BEC48: db $40
#_1BEC49: db $00
#_1BEC4A: db $30

;===================================================================================================

PaletteIDtoOffset_UW:
#_1BEC4B: dw $0000 ; $00*180 
#_1BEC4D: dw $00B4 ; $01*180 
#_1BEC4F: dw $0168 ; $02*180 
#_1BEC51: dw $021C ; $03*180 
#_1BEC53: dw $02D0 ; $04*180 
#_1BEC55: dw $0384 ; $05*180 
#_1BEC57: dw $0438 ; $06*180 
#_1BEC59: dw $04EC ; $07*180 
#_1BEC5B: dw $05A0 ; $08*180 
#_1BEC5D: dw $0654 ; $09*180 
#_1BEC5F: dw $0708 ; $0A*180 
#_1BEC61: dw $07BC ; $0B*180 
#_1BEC63: dw $0870 ; $0C*180 
#_1BEC65: dw $0924 ; $0D*180 
#_1BEC67: dw $09D8 ; $0E*180 
#_1BEC69: dw $0A8C ; $0F*180 
#_1BEC6B: dw $0B40 ; $10*180 
#_1BEC6D: dw $0BF4 ; $11*180 
#_1BEC6F: dw $0CA8 ; $12*180 
#_1BEC71: dw $0D5C ; $13*180 

;===================================================================================================

PaletteWorldIDtoOffset:
#_1BEC73: dw $0000 ; Light World
#_1BEC75: dw $0078 ; Dark World

;===================================================================================================

; TODO more descriptiveness in all of these

; this is palette 0
Palettes_Load_SpritePal0Left:
#_1BEC77: REP #$21

#_1BEC79: LDX.w $0AAC

#_1BEC7C: LDA.l PaletteIDtoOffset,X
#_1BEC80: AND.w #$00FF
#_1BEC83: ADC.w #PaletteData_sprpal0_00
#_1BEC86: STA.b $00

#_1BEC88: REP #$10

#_1BEC8A: LDA.w #$0102
#_1BEC8D: LDX.w $0ABD
#_1BEC90: BEQ .no_translucency

#_1BEC92: LDA.w #$01E2

.no_translucency
#_1BEC95: LDX.w #$0006
#_1BEC98: JSR Palettes_LoadSingle

#_1BEC9B: SEP #$30

#_1BEC9D: RTL

;===================================================================================================

Palettes_Load_SpriteMain:
#_1BEC9E: REP #$21

#_1BECA0: LDX.b #$00

#_1BECA2: LDA.b $8A
#_1BECA4: AND.w #$0040
#_1BECA7: BEQ .light_world

#_1BECA9: INX
#_1BECAA: INX

.light_world
#_1BECAB: LDA.l PaletteWorldIDtoOffset,X
#_1BECAF: ADC.w #PaletteData_sprite_00
#_1BECB2: STA.b $00

#_1BECB4: REP #$10

#_1BECB6: LDA.w #$0122
#_1BECB9: LDX.w #$000E
#_1BECBC: LDY.w #$0003
#_1BECBF: JSR Palettes_LoadMultiple

#_1BECC2: SEP #$30

#_1BECC4: RTL

;===================================================================================================

; this is palette 5
Palettes_Load_SpriteAux1:
#_1BECC5: REP #$31

#_1BECC7: LDA.w $0AAD
#_1BECCA: AND.w #$00FF
#_1BECCD: ASL A
#_1BECCE: TAX

#_1BECCF: LDA.l PaletteIDtoOffset_16bit,X
#_1BECD3: ADC.w #PaletteData_spriteaux_00
#_1BECD6: STA.b $00

#_1BECD8: LDA.w #$01A2
#_1BECDB: LDX.w #$0006
#_1BECDE: JSR Palettes_LoadSingle

#_1BECE1: SEP #$30

#_1BECE3: RTL

;===================================================================================================

; this is palette 6
Palettes_Load_SpriteAux2:
#_1BECE4: REP #$31

#_1BECE6: LDA.w $0AAE
#_1BECE9: AND.w #$00FF
#_1BECEC: ASL A
#_1BECED: TAX

#_1BECEE: LDA.l PaletteIDtoOffset_16bit,X
#_1BECF2: ADC.w #PaletteData_spriteaux_00
#_1BECF5: STA.b $00

#_1BECF7: LDA.w #$01C2
#_1BECFA: LDX.w #$0006
#_1BECFD: JSR Palettes_LoadSingle

#_1BED00: SEP #$30

#_1BED02: RTL

;===================================================================================================

Palettes_Load_Sword:
#_1BED03: REP #$21

#_1BED05: LDA.l $7EF359
#_1BED09: AND.w #$00FF
#_1BED0C: TAX

#_1BED0D: LDA.l SwordPaletteOffsets,X
#_1BED11: AND.w #$00FF
#_1BED14: ADC.w #PaletteData_sword_00
#_1BED17: STA.b $00

#_1BED19: REP #$10

#_1BED1B: LDA.w #$01B2
#_1BED1E: LDX.w #$0002
#_1BED21: JSR Palettes_LoadMultiple_Arbitrary

#_1BED24: SEP #$30

#_1BED26: INC.b $15

#_1BED28: RTL

;===================================================================================================

Palettes_Load_Shield:
#_1BED29: REP #$21

#_1BED2B: LDA.l $7EF35A
#_1BED2F: AND.w #$00FF
#_1BED32: TAX

#_1BED33: LDA.l ShieldPaletteOffsets,X
#_1BED37: AND.w #$00FF
#_1BED3A: ADC.w #PaletteData_shield_00
#_1BED3D: STA.b $00

#_1BED3F: REP #$10

#_1BED41: LDA.w #$01B8
#_1BED44: LDX.w #$0003
#_1BED47: JSR Palettes_LoadMultiple_Arbitrary

#_1BED4A: SEP #$30

#_1BED4C: INC.b $15

#_1BED4E: RTL

;===================================================================================================
; Unused sprite palette routine
;===================================================================================================
UNREACHABLE_1BED4F:
#_1BED4F: REP #$21

#_1BED51: LDX.w $0AB0

#_1BED54: LDA.l PaletteIDtoOffset,X
#_1BED58: AND.w #$00FF
#_1BED5B: ADC.w #PaletteData_spriteenvironment_00
#_1BED5E: STA.b $00

#_1BED60: REP #$10

#_1BED62: LDA.w #$01C2
#_1BED65: LDX.w #$0006
#_1BED68: JSR Palettes_LoadSingle

#_1BED6B: SEP #$30

#_1BED6D: RTL

;===================================================================================================

Palettes_Load_SpriteEnvironment:
#_1BED6E: LDA.b $1B
#_1BED70: BEQ .outdoors

#Palettes_Load_SpriteEnvironment_Underworld:
#_1BED72: REP #$21

#_1BED74: LDX.w $0AB1

#_1BED77: LDA.l PaletteIDtoOffset,X
#_1BED7B: AND.w #$00FF
#_1BED7E: ADC.w #PaletteData_spriteenvironment_00
#_1BED81: STA.b $00

#_1BED83: REP #$10

#_1BED85: LDA.w #$01D2
#_1BED88: LDX.w #$0006
#_1BED8B: JSR Palettes_LoadSingle

#_1BED8E: SEP #$30

#_1BED90: RTL

;---------------------------------------------------------------------------------------------------

.outdoors
#_1BED91: REP #$21

#_1BED93: LDX.b #$07

#_1BED95: LDA.b $8A
#_1BED97: AND.w #$0040
#_1BED9A: BEQ .light_world

#_1BED9C: INX
#_1BED9D: INX

.light_world
#_1BED9E: PHX

#_1BED9F: LDA.l PaletteIDtoOffset,X
#_1BEDA3: AND.w #$00FF
#_1BEDA6: ADC.w #PaletteData_spriteenvironment_00
#_1BEDA9: STA.b $00

#_1BEDAB: REP #$10

#_1BEDAD: LDA.w #$0112

#_1BEDB0: LDX.w $0ABD
#_1BEDB3: BEQ .not_trans

#_1BEDB5: LDA.w #$01F2

.not_trans
#_1BEDB8: LDX.w #$0006

#_1BEDBB: JSR Palettes_LoadSingle

#_1BEDBE: SEP #$10

#_1BEDC0: PLX
#_1BEDC1: DEX

#_1BEDC2: LDA.l PaletteIDtoOffset,X
#_1BEDC6: AND.w #$00FF
#_1BEDC9: CLC
#_1BEDCA: ADC.w #PaletteData_spriteenvironment_00
#_1BEDCD: STA.b $00

#_1BEDCF: REP #$10

#_1BEDD1: LDA.w #$01D2
#_1BEDD4: LDX.w #$0006
#_1BEDD7: JSR Palettes_LoadSingle

#_1BEDDA: SEP #$30

#_1BEDDC: RTL

;===================================================================================================

Palettes_Load_DungeonMapSprite:
#_1BEDDD: REP #$21

#_1BEDDF: LDA.w #PaletteData_dungeonmap_sprites_00
#_1BEDE2: STA.b $00

#_1BEDE4: REP #$10

#_1BEDE6: LDA.w #$0182
#_1BEDE9: LDX.w #$0006
#_1BEDEC: LDY.w #$0002
#_1BEDEF: JSR Palettes_LoadMultiple

#_1BEDF2: SEP #$30

#_1BEDF4: RTL

;===================================================================================================
; Reload's armor from whatever
;===================================================================================================
Palettes_LinkGloveColors:
; #RRGGBB :  B0B8A0, B0D800
#_1BEDF5: dw  $52F6,  $0376

;---------------------------------------------------------------------------------------------------

Palettes_Load_LinkArmorAndGloves:
#_1BEDF9: REP #$21

#_1BEDFB: LDA.l $7EF35B
#_1BEDFF: AND.w #$00FF
#_1BEE02: TAX

#_1BEE03: LDA.l LinkMailPalettesOffsets,X
#_1BEE07: AND.w #$00FF
#_1BEE0A: ASL A
#_1BEE0B: ADC.w #PaletteData_link_00
#_1BEE0E: STA.b $00

#_1BEE10: REP #$10

#_1BEE12: LDA.w #$01E2 ; sprite palette 7
#_1BEE15: LDX.w #$000E ; 15 colors
#_1BEE18: JSR Palettes_LoadMultiple_Arbitrary

;===================================================================================================

Palettes_Load_LinkGloves:
#_1BEE1B: REP #$30

#_1BEE1D: LDA.l $7EF354
#_1BEE21: AND.w #$00FF
#_1BEE24: BEQ .no_gloves

#_1BEE26: DEC A
#_1BEE27: ASL A
#_1BEE28: TAX

#_1BEE29: LDA.l Palettes_LinkGloveColors,X
#_1BEE2D: STA.l $7EC4FA
#_1BEE31: STA.l $7EC6FA

.no_gloves
#_1BEE35: SEP #$30

#_1BEE37: INC.b $15

#_1BEE39: RTL

;===================================================================================================

Palettes_Load_DungeonMapBG:
#_1BEE3A: REP #$21

#_1BEE3C: LDA.w #PaletteData_dungeonmap_bg_00
#_1BEE3F: STA.b $00

#_1BEE41: REP #$10

#_1BEE43: LDA.w #$0040
#_1BEE46: LDX.w #$000F
#_1BEE49: LDY.w #$0005
#_1BEE4C: JSR Palettes_LoadMultiple

#_1BEE4F: SEP #$30

#_1BEE51: RTL

;===================================================================================================

Palettes_Load_HUD:
#_1BEE52: REP #$21

#_1BEE54: LDX.w $0AB2

#_1BEE57: LDA.l PaletteIDtoOffset_HUD,X
#_1BEE5B: AND.w #$00FF
#_1BEE5E: ADC.w #PaletteData_hud_00
#_1BEE61: STA.b $00

#_1BEE63: REP #$10

#_1BEE65: LDA.w #$0000
#_1BEE68: LDX.w #$000F
#_1BEE6B: LDY.w #$0001
#_1BEE6E: JSR Palettes_LoadMultiple

#_1BEE71: SEP #$30

#_1BEE73: RTL

;===================================================================================================

Palettes_Load_UnderworldSet:
#_1BEE74: REP #$21

#_1BEE76: LDX.w $0AB6

#_1BEE79: LDA.l PaletteIDtoOffset_UW,X
#_1BEE7D: ADC.w #PaletteData_dungeon_00
#_1BEE80: STA.b $00

#_1BEE82: PHA

#_1BEE83: REP #$10

#_1BEE85: LDA.w #$0042
#_1BEE88: LDX.w #$000E
#_1BEE8B: LDY.w #$0005
#_1BEE8E: JSR Palettes_LoadMultiple

#_1BEE91: PLA
#_1BEE92: STA.b $00

#_1BEE94: LDA.w #$0112
#_1BEE97: LDX.w $0ABD
#_1BEE9A: BEQ .not_trans

#_1BEE9C: LDA.w #$01F2

.not_trans
#_1BEE9F: LDX.w #$0006
#_1BEEA2: JSR Palettes_LoadSingle

#_1BEEA5: SEP #$30

#_1BEEA7: RTL

;===================================================================================================

Palettes_Load_OWBG3:
#_1BEEA8: REP #$21

#_1BEEAA: LDX.w $0AB8

#_1BEEAD: LDA.l PaletteIDtoOffset,X
#_1BEEB1: AND.w #$00FF
#_1BEEB4: ADC.w #PaletteData_owanim_00
#_1BEEB7: STA.b $00

#_1BEEB9: REP #$10

#_1BEEBB: LDA.w #$00E2
#_1BEEBE: LDX.w #$0006
#_1BEEC1: JSR Palettes_LoadSingle

#_1BEEC4: SEP #$30

#_1BEEC6: RTL

;===================================================================================================

Palettes_Load_OWBGMain:
#_1BEEC7: REP #$21

#_1BEEC9: LDA.w $0AB3
#_1BEECC: ASL A
#_1BEECD: TAX

#_1BEECE: LDA.l PaletteIDtoOffset_OW2,X
#_1BEED2: ADC.w #PaletteData_owmain_00
#_1BEED5: STA.b $00

#_1BEED7: REP #$10

#_1BEED9: LDA.w #$0042
#_1BEEDC: LDX.w #$0006
#_1BEEDF: LDY.w #$0004
#_1BEEE2: JSR Palettes_LoadMultiple

#_1BEEE5: SEP #$30

#_1BEEE7: RTL

;===================================================================================================

Palettes_Load_OWBG1:
#_1BEEE8: REP #$21

#_1BEEEA: LDA.w $0AB4
#_1BEEED: AND.w #$00FF
#_1BEEF0: ASL A
#_1BEEF1: TAX

#_1BEEF2: LDA.l PaletteIDtoOffset_OW,X
#_1BEEF6: ADC.w #PaletteData_owaux_00
#_1BEEF9: STA.b $00

#_1BEEFB: REP #$10

#_1BEEFD: LDA.w #$0052
#_1BEF00: LDX.w #$0006
#_1BEF03: LDY.w #$0002
#_1BEF06: JSR Palettes_LoadMultiple

#_1BEF09: SEP #$30

#_1BEF0B: RTL

;===================================================================================================

Palettes_Load_OWBG2:
#_1BEF0C: REP #$21

#_1BEF0E: LDA.w $0AB5
#_1BEF11: AND.w #$00FF
#_1BEF14: ASL A
#_1BEF15: TAX

#_1BEF16: LDA.l PaletteIDtoOffset_OW,X
#_1BEF1A: ADC.w #PaletteData_owaux_00
#_1BEF1D: STA.b $00

#_1BEF1F: REP #$10

#_1BEF21: LDA.w #$00B2
#_1BEF24: LDX.w #$0006
#_1BEF27: LDY.w #$0002
#_1BEF2A: JSR Palettes_LoadMultiple

#_1BEF2D: SEP #$30

#_1BEF2F: RTL

;===================================================================================================
; Enters with:
; A = Palette offset
Palettes_LoadSingle:
#_1BEF30: TXY
#_1BEF31: CLC
#_1BEF32: ADC.w $0AA8
#_1BEF35: TAX

#_1BEF36: LDA.w #PaletteData>>16
#_1BEF39: STA.b $02

.next_color
#_1BEF3B: LDA.b [$00]
#_1BEF3D: STA.l $7EC300,X

#_1BEF41: INC.b $00
#_1BEF43: INC.b $00

#_1BEF45: INX
#_1BEF46: INX

#_1BEF47: DEY
#_1BEF48: BPL .next_color

#_1BEF4A: RTS

;===================================================================================================
; Enters with:
; A = Palette offset
; X = Number of colors per palette
; Y = Number of palettes
;===================================================================================================
Palettes_LoadMultiple:
#_1BEF4B: STA.b $04
#_1BEF4D: STX.b $06
#_1BEF4F: STY.b $08

#_1BEF51: LDA.w #PaletteData>>16
#_1BEF54: STA.b $02

;---------------------------------------------------------------------------------------------------

.next_palette
#_1BEF56: LDA.w $0AA8 ; get an offset for X start TODO
#_1BEF59: CLC
#_1BEF5A: ADC.b $04
#_1BEF5C: TAX

#_1BEF5D: LDY.b $06

.next_color
#_1BEF5F: LDA.b [$00]
#_1BEF61: STA.l $7EC300,X

#_1BEF65: INC.b $00
#_1BEF67: INC.b $00

#_1BEF69: INX
#_1BEF6A: INX

#_1BEF6B: DEY

#_1BEF6C: BPL .next_color

#_1BEF6E: LDA.b $04
#_1BEF70: CLC
#_1BEF71: ADC.w #$0020
#_1BEF74: STA.b $04

#_1BEF76: DEC.b $08
#_1BEF78: BPL .next_palette

#_1BEF7A: RTS

;===================================================================================================
; Enters with:
; A   = offset into buffer
; X   = Number of colors minus 1
; $00 = 16-bit address in bank1B
;===================================================================================================
Palettes_LoadMultiple_Arbitrary:
#_1BEF7B: TXY
#_1BEF7C: TAX

#_1BEF7D: LDA.w #PaletteData>>16
#_1BEF80: STA.b $02

.next_color
#_1BEF82: LDA.b [$00]

#_1BEF84: STA.l $7EC300,X
#_1BEF88: STA.l $7EC500,X

#_1BEF8C: INC.b $00
#_1BEF8E: INC.b $00

#_1BEF90: INX
#_1BEF91: INX

#_1BEF92: DEY
#_1BEF93: BPL .next_color

#_1BEF95: RTS

;===================================================================================================

Palettes_LoadForFileSelect:
#_1BEF96: PHB

#_1BEF97: LDA.b #PaletteData>>16
#_1BEF99: PHA
#_1BEF9A: PLB

#_1BEF9B: REP #$30

;---------------------------------------------------------------------------------------------------

; File 1
#_1BEF9D: LDX.w #$0000
#_1BEFA0: LDA.l $700354
#_1BEFA4: STA.b $0C

#_1BEFA6: LDA.l $70035B
#_1BEFAA: JSR Palettes_LoadForFileSelect_Armor

#_1BEFAD: LDX.w #$0000
#_1BEFB0: LDA.l $700359
#_1BEFB4: JSR Palettes_LoadForFileSelect_Sword

#_1BEFB7: LDX.w #$0000
#_1BEFBA: LDA.l $70035A
#_1BEFBE: JSR Palettes_LoadForFileSelect_Shield

;---------------------------------------------------------------------------------------------------

; File 2
#_1BEFC1: LDX.w #$0040
#_1BEFC4: LDA.l $700854
#_1BEFC8: STA.b $0C

#_1BEFCA: LDA.l $70085B
#_1BEFCE: JSR Palettes_LoadForFileSelect_Armor

#_1BEFD1: LDX.w #$0040
#_1BEFD4: LDA.l $700859
#_1BEFD8: JSR Palettes_LoadForFileSelect_Sword

#_1BEFDB: LDX.w #$0040
#_1BEFDE: LDA.l $70085A
#_1BEFE2: JSR Palettes_LoadForFileSelect_Shield

;---------------------------------------------------------------------------------------------------

; File 3
#_1BEFE5: LDX.w #$0080
#_1BEFE8: LDA.l $700D54
#_1BEFEC: STA.b $0C

#_1BEFEE: LDA.l $700D5B
#_1BEFF2: JSR Palettes_LoadForFileSelect_Armor

#_1BEFF5: LDX.w #$0080
#_1BEFF8: LDA.l $700D59
#_1BEFFC: JSR Palettes_LoadForFileSelect_Sword

#_1BEFFF: LDX.w #$0080
#_1BF002: LDA.l $700D5A
#_1BF006: JSR Palettes_LoadForFileSelect_Shield

#_1BF009: LDY.w #$0000
#_1BF00C: LDX.w #$0000

; Loads the low colors shared by every mail
.next_low_color
#_1BF00F: LDA.w PaletteData_sprite_00_right,Y
#_1BF012: STA.l $7EC4D0,X
#_1BF016: STA.l $7EC6D0,X

#_1BF01A: LDA.w PaletteData_sprite_01_right,Y
#_1BF01D: STA.l $7EC4F0,X
#_1BF021: STA.l $7EC6F0,X

#_1BF025: INY
#_1BF026: INY

#_1BF027: INX
#_1BF028: INX
#_1BF029: CPX.w #$000E ; This should be $0010, otherwise the fairy doesn't have her skin
#_1BF02C: BNE .next_low_color

#_1BF02E: SEP #$30

#_1BF030: PLB

#_1BF031: RTL

;===================================================================================================

Palettes_LoadForFileSelect_Armor:
#_1BF032: PHX

#_1BF033: AND.w #$00FF
#_1BF036: ASL A
#_1BF037: TAY

#_1BF038: LDA.w LinkMailPalettesOffsets,Y
#_1BF03B: AND.w #$00FF
#_1BF03E: CLC
#_1BF03F: ADC.w #$00F0
#_1BF042: TAY

#_1BF043: LDA.w #$000F
#_1BF046: STA.b $0E

;---------------------------------------------------------------------------------------------------

.next_color
#_1BF048: LDA.w PaletteData_sprite_00,Y
#_1BF04B: STA.l $7EC402,X
#_1BF04F: STA.l $7EC602,X

#_1BF053: INY
#_1BF054: INY

#_1BF055: INX
#_1BF056: INX

#_1BF057: DEC.b $0E
#_1BF059: BNE .next_color

;---------------------------------------------------------------------------------------------------

#_1BF05B: PLX

#_1BF05C: LDA.b $0C
#_1BF05E: AND.w #$00FF
#_1BF061: BEQ .exit

#_1BF063: DEC A
#_1BF064: ASL A
#_1BF065: TAY

#_1BF066: LDA.w Palettes_LinkGloveColors,Y
#_1BF069: STA.l $7EC41A,X
#_1BF06D: STA.l $7EC61A,X

.exit
#_1BF071: RTS

;===================================================================================================

; Sword $FF only just happens to read sword palette 0!
Palettes_LoadForFileSelect_Sword:
#_1BF072: AND.w #$00FF
#_1BF075: TAY

#_1BF076: LDA.w SwordPaletteOffsets,Y
#_1BF079: AND.w #$00FF
#_1BF07C: CLC
#_1BF07D: ADC.w #PaletteData_sword-PaletteData ; #$0418
#_1BF080: TAY

#_1BF081: LDA.w #$0003
#_1BF084: STA.b $0E

;---------------------------------------------------------------------------------------------------

.next_color
#_1BF086: LDA.w PaletteData_sprite_00,Y
#_1BF089: STA.l $7EC432,X
#_1BF08D: STA.l $7EC632,X

#_1BF091: INY
#_1BF092: INY

#_1BF093: INX
#_1BF094: INX

#_1BF095: DEC.b $0E
#_1BF097: BNE .next_color

#_1BF099: RTS

;===================================================================================================

Palettes_LoadForFileSelect_Shield:
#_1BF09A: AND.w #$00FF
#_1BF09D: TAY

#_1BF09E: LDA.w ShieldPaletteOffsets,Y
#_1BF0A1: AND.w #$00FF
#_1BF0A4: CLC
#_1BF0A5: ADC.w #PaletteData_shield-PaletteData ; #$0430
#_1BF0A8: TAY

#_1BF0A9: LDA.w #$0004
#_1BF0AC: STA.b $0E

;---------------------------------------------------------------------------------------------------

.next_color
#_1BF0AE: LDA.w PaletteData_sprite_00,Y
#_1BF0B1: STA.l $7EC438,X
#_1BF0B5: STA.l $7EC638,X

#_1BF0B9: INY
#_1BF0BA: INY

#_1BF0BB: INX
#_1BF0BC: INX

#_1BF0BD: DEC.b $0E
#_1BF0BF: BNE .next_color

#_1BF0C1: RTS

;===================================================================================================

Palettes_LoadAgahnim:
#_1BF0C2: REP #$31

; !HARDCODED index load
#_1BF0C4: LDA.l PaletteIDtoOffset_16bit+($0E*2)
#_1BF0C8: ADC.w #PaletteData_spriteaux_00
#_1BF0CB: STA.b $00

#_1BF0CD: PHA

#_1BF0CE: LDA.w #$0162
#_1BF0D1: LDX.w #$0006
#_1BF0D4: JSR Palettes_LoadMultiple_Arbitrary

;---------------------------------------------------------------------------------------------------

#_1BF0D7: PLA
#_1BF0D8: STA.b $00

#_1BF0DA: PHA

#_1BF0DB: LDA.w #$0182
#_1BF0DE: LDX.w #$0006
#_1BF0E1: JSR Palettes_LoadMultiple_Arbitrary

;---------------------------------------------------------------------------------------------------

#_1BF0E4: PLA
#_1BF0E5: STA.b $00

#_1BF0E7: LDA.w #$01A2
#_1BF0EA: LDX.w #$0006
#_1BF0ED: JSR Palettes_LoadMultiple_Arbitrary

;---------------------------------------------------------------------------------------------------

#_1BF0F0: LDA.l PaletteIDtoOffset_16bit+($15*2)
#_1BF0F4: CLC
#_1BF0F5: ADC.w #PaletteData_spriteaux_00
#_1BF0F8: STA.b $00

#_1BF0FA: LDA.w #$01C2
#_1BF0FD: LDX.w #$0006
#_1BF100: JSR Palettes_LoadMultiple_Arbitrary

#_1BF103: SEP #$30

#_1BF105: INC.b $15

#_1BF107: RTL

;===================================================================================================
; FREE ROM: 0x08
;===================================================================================================
NULL_1BF108:
#_1BF108: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================
; TODO make a chart of what tile is what collision...
;===================================================================================================
OverworldTileTypeTable:
#_1BF110: db $01, $27, $01, $02, $02, $02, $01, $01
#_1BF118: db $01, $01, $01, $01, $01, $01, $01, $02
#_1BF120: db $01, $27, $01, $01, $01, $01, $27, $27
#_1BF128: db $01, $02, $01, $02, $01, $01, $27, $27
#_1BF130: db $01, $01, $02, $27, $01, $01, $27, $27
#_1BF138: db $02, $27, $01, $01, $02, $02, $27, $02
#_1BF140: db $02, $01, $01, $02, $48, $48, $50, $02
#_1BF148: db $02, $01, $48, $02, $02, $00, $02, $02
#_1BF150: db $02, $02, $01, $02, $01, $27, $02, $02
#_1BF158: db $01, $00, $01, $02, $02, $01, $01, $01
#_1BF160: db $02, $02, $02, $02, $27, $43, $00, $01
#_1BF168: db $02, $02, $01, $01, $01, $01, $43, $01
#_1BF170: db $02, $01, $00, $01, $42, $02, $02, $48
#_1BF178: db $02, $02, $01, $02, $48, $02, $02, $42
#_1BF180: db $02, $48, $00, $48, $01, $02, $27, $27
#_1BF188: db $27, $48, $01, $48, $48, $02, $27, $27
#_1BF190: db $01, $02, $01, $01, $02, $02, $27, $27
#_1BF198: db $27, $27, $01, $01, $02, $01, $02, $02
#_1BF1A0: db $01, $01, $01, $01, $02, $27, $02, $01
#_1BF1A8: db $02, $02, $27, $27, $27, $27, $00, $00
#_1BF1B0: db $00, $00, $02, $00, $00, $00, $00, $48
#_1BF1B8: db $27, $00, $00, $00, $48, $00, $27, $27
#_1BF1C0: db $27, $27, $02, $02, $02, $00, $27, $02
#_1BF1C8: db $02, $00, $01, $01, $02, $02, $00, $02
#_1BF1D0: db $01, $02, $02, $02, $01, $00, $00, $10
#_1BF1D8: db $18, $01, $01, $02, $01, $01, $02, $01
#_1BF1E0: db $01, $29, $00, $18, $02, $02, $01, $01
#_1BF1E8: db $01, $01, $48, $10, $01, $01, $27, $01
#_1BF1F0: db $01, $48, $48, $01, $01, $01, $18, $00
#_1BF1F8: db $48, $01, $01, $01, $48, $01, $01, $01
#_1BF200: db $48, $01, $27, $01, $01, $01, $01, $01
#_1BF208: db $48, $02, $02, $02, $02, $02, $02, $48
#_1BF210: db $00, $54, $48, $48, $12, $1A, $1A, $00
#_1BF218: db $27, $00, $27, $27, $12, $48, $48, $48
#_1BF220: db $00, $00, $00, $09, $48, $09, $01, $01
#_1BF228: db $01, $09, $09, $09, $18, $48, $10, $09
#_1BF230: db $09, $09, $10, $10, $01, $48, $48, $01
#_1BF238: db $08, $10, $09, $09, $08, $02, $00, $48
#_1BF240: db $02, $01, $08, $09, $00, $02, $02, $02
#_1BF248: db $02, $48, $02, $01, $02, $02, $02, $02
#_1BF250: db $01, $12, $02, $01, $02, $02, $02, $02
#_1BF258: db $02, $10, $08, $00, $09, $00, $00, $12
#_1BF260: db $1A, $01, $01, $01, $01, $10, $01, $08
#_1BF268: db $01, $09, $09, $01, $00, $12, $01, $01
#_1BF270: db $48, $01, $12, $1A, $01, $00, $1A, $12
#_1BF278: db $48, $00, $01, $01, $29, $00, $18, $00
#_1BF280: db $00, $00, $12, $01, $01, $01, $01, $01
#_1BF288: db $01, $00, $01, $00, $00, $00, $00, $01
#_1BF290: db $02, $22, $01, $01, $02, $22, $01, $01
#_1BF298: db $01, $01, $01, $02, $02, $01, $01, $02
#_1BF2A0: db $42, $01, $01, $01, $02, $01, $43, $02
#_1BF2A8: db $02, $43, $42, $02, $01, $00, $29, $01
#_1BF2B0: db $42, $01, $02, $02, $01, $00, $01, $02
#_1BF2B8: db $02, $02, $02, $02, $02, $02, $02, $01
#_1BF2C0: db $02, $02, $02, $02, $02, $01, $00, $01
#_1BF2C8: db $01, $01, $01, $01, $01, $02, $02, $01
#_1BF2D0: db $00, $01, $00, $02, $00, $01, $02, $02
#_1BF2D8: db $02, $02, $02, $02, $22, $01, $02, $02
#_1BF2E0: db $02, $02, $02, $01, $01, $01, $01, $02
#_1BF2E8: db $02, $01, $01, $01, $01, $02, $43, $01
#_1BF2F0: db $02, $02, $01, $02, $02, $00, $12, $00
#_1BF2F8: db $01, $02, $12, $01, $01, $2B, $01, $00
#_1BF300: db $00, $01, $18, $00, $00, $00, $00, $00
#_1BF308: db $00, $10, $01, $00, $00, $48, $00, $00
#_1BF310: db $48, $01, $00, $02, $01, $02, $00, $00
#_1BF318: db $02, $01, $02, $00, $01, $00, $48, $52
#_1BF320: db $00, $00, $4B, $00, $00, $00, $00, $00
#_1BF328: db $00, $01, $12, $27, $2B, $01, $00, $12
#_1BF330: db $01, $01, $01, $01, $09, $01, $57, $57
#_1BF338: db $57, $57, $01, $1A, $02, $02, $01, $02
#_1BF340: db $02, $01, $1A, $00, $1A, $48, $00, $00
#_1BF348: db $01, $53, $18, $56, $56, $56, $56, $48
#_1BF350: db $48, $02, $01, $02, $01, $02, $02, $01
#_1BF358: db $01, $01, $02, $01, $01, $02, $01, $01
#_1BF360: db $01, $01, $01, $01, $02, $01, $01, $01
#_1BF368: db $01, $01, $01, $01, $01, $18, $10, $02
#_1BF370: db $02, $10, $01, $02, $02, $00, $00, $02
#_1BF378: db $00, $02, $02, $02, $02, $02, $02, $00
#_1BF380: db $01, $01, $48, $02, $48, $01, $02, $00
#_1BF388: db $00, $00, $00, $02, $01, $02, $02, $02
#_1BF390: db $02, $02, $02, $02, $02, $02, $02, $02
#_1BF398: db $02, $02, $02, $02, $02, $02, $01, $01
#_1BF3A0: db $02, $02, $02, $02, $02, $02, $00, $27
#_1BF3A8: db $20, $20, $20, $27, $27, $27, $02, $20
#_1BF3B0: db $20, $02, $02, $02, $02, $02, $02, $01
#_1BF3B8: db $01, $01, $01, $00, $00, $02, $02, $02
#_1BF3C0: db $01, $18, $02, $02, $01, $02, $02, $02
#_1BF3C8: db $02, $02, $5C, $09, $01, $02, $02, $02
#_1BF3D0: db $5C, $09, $09, $09, $02, $08, $09, $09
#_1BF3D8: db $48, $02, $09, $02, $08, $08, $02, $01
#_1BF3E0: db $10, $08, $09, $08, $18, $08, $09, $08
#_1BF3E8: db $08, $09, $09, $02, $09, $1A, $09, $1A
#_1BF3F0: db $00, $01, $01, $08, $00, $48, $48, $48
#_1BF3F8: db $09, $09, $00, $48, $48, $10, $09, $00
#_1BF400: db $01, $02, $22, $29, $00, $09, $1A, $08
#_1BF408: db $5C, $08, $5C, $01, $01, $02, $08, $12
#_1BF410: db $01, $18, $01, $12, $01, $1A, $48, $02
#_1BF418: db $08, $5C, $08, $00, $02, $02, $08, $02
#_1BF420: db $5C, $02, $02, $08, $00, $48, $00, $12
#_1BF428: db $01, $48, $00, $02, $02, $12, $12, $12
#_1BF430: db $02, $00, $02, $08, $08, $08, $02, $02
#_1BF438: db $01, $00, $01, $02, $01, $02, $02, $01
#_1BF440: db $02, $02, $27, $27, $27, $27, $27, $27
#_1BF448: db $01, $01, $01, $02, $02, $01, $01, $01
#_1BF450: db $02, $02, $02, $02, $01, $01, $02, $02
#_1BF458: db $02, $02, $01, $01, $01, $02, $02, $01
#_1BF460: db $01, $02, $01, $02, $2B, $01, $43, $01
#_1BF468: db $01, $01, $01, $01, $01, $02, $02, $02
#_1BF470: db $00, $00, $02, $02, $27, $27, $27, $27
#_1BF478: db $27, $01, $01, $27, $55, $55, $27, $01
#_1BF480: db $01, $27, $02, $55, $55, $01, $01, $01
#_1BF488: db $01, $01, $02, $02, $00, $40, $01, $02
#_1BF490: db $02, $48, $48, $48, $00, $29, $01, $01
#_1BF498: db $01, $2B, $01, $02, $01, $02, $42, $00
#_1BF4A0: db $02, $02, $00, $00, $08, $08, $08, $1A
#_1BF4A8: db $01, $01, $08, $02, $01, $08, $02, $01
#_1BF4B0: db $27, $01, $02, $00, $27, $27, $00, $00
#_1BF4B8: db $00, $00, $27, $00, $00, $00, $00, $01
#_1BF4C0: db $01, $01, $01, $01, $01, $01, $01, $01
#_1BF4C8: db $01, $27, $01, $22, $27, $48, $48, $48
#_1BF4D0: db $02, $01, $00, $00, $02, $01, $00, $00
#_1BF4D8: db $01, $01, $01, $00, $01, $01, $01, $00
#_1BF4E0: db $01, $01, $27, $27, $27, $27, $01, $01
#_1BF4E8: db $01, $01, $02, $01, $02, $01, $02, $02
#_1BF4F0: db $02, $02, $02, $20, $01, $00, $00, $01
#_1BF4F8: db $00, $00, $01, $01, $01, $02, $22, $22
#_1BF500: db $00, $01, $43, $01, $01, $01, $01, $02
#_1BF508: db $01, $01, $01, $01, $01, $01, $48, $01
#_1BF510: db $01, $01, $01, $01, $00, $00, $00, $01
#_1BF518: db $01, $01, $01, $01, $00, $02, $00, $00
#_1BF520: db $02, $00, $00, $00, $00, $00, $00, $00
#_1BF528: db $02, $00, $01, $01, $01, $00, $01, $02
#_1BF530: db $02, $02, $48, $00, $01, $00, $02, $01
#_1BF538: db $02, $01, $01, $27, $01, $01, $00, $02
#_1BF540: db $22, $02, $02, $00, $00, $48, $01, $01
#_1BF548: db $01, $01, $00, $02, $02, $00, $48, $01
#_1BF550: db $01, $01, $27, $27, $27, $02, $27, $27
#_1BF558: db $27, $02, $01, $02, $01, $01, $01, $01
#_1BF560: db $02, $01, $01, $01, $01, $01, $01, $01
#_1BF568: db $01, $01, $01, $01, $01, $01, $01, $01
#_1BF570: db $01, $01, $01, $01, $02, $02, $02, $01
#_1BF578: db $44, $01, $27, $01, $00, $00, $02, $02
#_1BF580: db $02, $01, $01, $01, $01, $02, $01, $01
#_1BF588: db $02, $02, $02, $01, $01, $01, $02, $02
#_1BF590: db $02, $01, $02, $00, $02, $02, $02, $02
#_1BF598: db $02, $02, $00, $01, $42, $01, $42, $42
#_1BF5A0: db $00, $00, $01, $01, $01, $01, $00, $02
#_1BF5A8: db $01, $01, $01, $02, $42, $01, $01, $02
#_1BF5B0: db $02, $02, $02, $02, $00, $02, $02, $22
#_1BF5B8: db $02, $02, $00, $00, $00, $02, $02, $00
#_1BF5C0: db $02, $02, $01, $01, $01, $01, $42, $01
#_1BF5C8: db $02, $02, $02, $48, $02, $01, $01, $01
#_1BF5D0: db $01, $01, $48, $02, $01, $02, $01, $02
#_1BF5D8: db $01, $02, $01, $00, $01, $01, $01, $01
#_1BF5E0: db $00, $00, $00, $00, $00, $48, $00, $01
#_1BF5E8: db $00, $48, $48, $48, $48, $02, $02, $00
#_1BF5F0: db $01, $01, $01, $01, $02, $02, $02, $02
#_1BF5F8: db $02, $02, $22, $02, $48, $02, $02, $00
#_1BF600: db $00, $02, $02, $02, $02, $48, $02, $02
#_1BF608: db $02, $02, $02, $00, $48, $02, $02, $02
#_1BF610: db $02, $02, $5C, $08, $08, $08, $02, $27
#_1BF618: db $02, $02, $02, $02, $02, $00, $00, $00
#_1BF620: db $02, $02, $02, $02, $02, $02, $02, $02
#_1BF628: db $02, $02, $02, $02, $02, $01, $08, $02
#_1BF630: db $02, $02, $01, $01, $01, $48, $01, $01
#_1BF638: db $01, $01, $01, $01, $01, $22, $01, $01
#_1BF640: db $01, $01, $2B, $01, $01, $01, $00, $00
#_1BF648: db $00, $01, $01, $00, $02, $01, $48, $01
#_1BF650: db $00, $00, $00, $00, $48, $00, $00, $00
#_1BF658: db $00, $00, $00, $12, $01, $02, $48, $00
#_1BF660: db $00, $00, $00, $00, $01, $01, $01, $02
#_1BF668: db $01, $01, $00, $00, $02, $01, $01, $00
#_1BF670: db $02, $02, $01, $01, $01, $01, $00, $01
#_1BF678: db $01, $00, $00, $00, $01, $00, $48, $01
#_1BF680: db $02, $01, $01, $01, $01, $01, $01, $02
#_1BF688: db $01, $01, $02, $02, $01, $01, $01, $01
#_1BF690: db $01, $00, $02, $02, $02, $02, $01, $02
#_1BF698: db $01, $02, $02, $02, $00, $00, $01, $01
#_1BF6A0: db $01, $01, $00, $00, $00, $00, $01, $00
#_1BF6A8: db $00, $12, $01, $01, $02, $01, $01, $00
#_1BF6B0: db $01, $29, $01, $42, $02, $02, $01, $00
#_1BF6B8: db $02, $01, $01, $01, $02, $01, $01, $01
#_1BF6C0: db $01, $01, $01, $01, $01, $01, $01, $01
#_1BF6C8: db $01, $01, $01, $01, $01, $01, $01, $02
#_1BF6D0: db $02, $00, $02, $02, $00, $00, $48, $48
#_1BF6D8: db $01, $01, $01, $01, $01, $01, $01, $01
#_1BF6E0: db $01, $01, $01, $01, $48, $02, $02, $48
#_1BF6E8: db $00, $00, $00, $00, $00, $48, $01, $01
#_1BF6F0: db $48, $48, $01, $01, $00, $02, $02, $48
#_1BF6F8: db $02, $02, $01, $01, $02, $02, $42, $02
#_1BF700: db $02, $02, $27, $00, $01, $29, $01, $01
#_1BF708: db $01, $01, $00, $01, $01, $01, $00, $01
#_1BF710: db $01, $00, $01, $01, $01, $01, $01, $01
#_1BF718: db $01, $00, $00, $02, $00, $02, $01, $02
#_1BF720: db $02, $00, $00, $02, $01, $01, $01, $01
#_1BF728: db $01, $01, $02, $27, $27, $00, $27, $02
#_1BF730: db $00, $01, $00, $00, $00, $00, $00, $48
#_1BF738: db $00, $00, $00, $00, $00, $48, $01, $01
#_1BF740: db $01, $00, $01, $01, $01, $02, $02, $02
#_1BF748: db $48, $02, $02, $01, $00, $00, $48, $48
#_1BF750: db $00, $27, $27, $27, $48, $00, $27, $01
#_1BF758: db $01, $48, $00, $27, $01, $01, $48, $01
#_1BF760: db $01, $01, $01, $01, $27, $27, $12, $01
#_1BF768: db $02, $27, $01, $01, $01, $01, $01, $48
#_1BF770: db $27, $02, $01, $01, $01, $00, $12, $00
#_1BF778: db $29, $27, $01, $01, $01, $10, $02, $01
#_1BF780: db $01, $01, $02, $01, $01, $00, $00, $00
#_1BF788: db $02, $01, $00, $00, $00, $02, $01, $00
#_1BF790: db $00, $00, $00, $02, $02, $00, $00, $09
#_1BF798: db $00, $00, $48, $00, $02, $00, $00, $00
#_1BF7A0: db $00, $00, $02, $00, $00, $00, $00, $00
#_1BF7A8: db $00, $00, $00, $00, $00, $08, $5C, $09
#_1BF7B0: db $02, $02, $48, $48, $48, $48, $01, $01
#_1BF7B8: db $01, $12, $00, $00, $01, $01, $02, $01
#_1BF7C0: db $01, $01, $01, $02, $01, $1A, $02, $02
#_1BF7C8: db $00, $02, $02, $2B, $01, $01, $02, $01
#_1BF7D0: db $02, $01, $01, $02, $02, $02, $01, $02
#_1BF7D8: db $00, $02, $02, $2B, $02, $01, $01, $01
#_1BF7E0: db $02, $02, $01, $01, $22, $02, $01, $01
#_1BF7E8: db $02, $02, $02, $01, $22, $10, $01, $22
#_1BF7F0: db $00, $00, $00, $00, $00, $00, $01, $10
#_1BF7F8: db $01, $01, $22, $01, $00, $00, $00, $00
#_1BF800: db $01, $01, $01, $01, $00, $00, $00, $00
#_1BF808: db $01, $01, $01, $01, $01, $01, $01, $01
#_1BF810: db $00, $01, $00, $00, $00, $00, $48, $02
#_1BF818: db $02, $46, $46, $01, $01, $01, $22, $01
#_1BF820: db $01, $00, $02, $02, $02, $22, $02, $02
#_1BF828: db $01, $44, $00, $01, $01, $00, $00, $00
#_1BF830: db $00, $01, $00, $02, $00, $01, $02, $51
#_1BF838: db $02, $02, $02, $02, $00, $00, $12, $01
#_1BF840: db $01, $01, $02, $02, $01, $01, $01, $01
#_1BF848: db $01, $02, $01, $01, $02, $01, $01, $02
#_1BF850: db $01, $02, $02, $44, $01, $02, $02, $02
#_1BF858: db $02, $02, $00, $01, $08, $02, $02, $02
#_1BF860: db $00, $00, $00, $00, $00, $02, $48, $00
#_1BF868: db $00, $00, $02, $29, $00, $00, $00, $00
#_1BF870: db $00, $00, $00, $00, $01, $00, $12, $00
#_1BF878: db $00, $00, $00, $00, $00, $00, $00, $00
#_1BF880: db $48, $00, $00, $48, $00, $00, $00, $00
#_1BF888: db $01, $48, $00, $12, $12, $1A, $12, $29
#_1BF890: db $01, $01, $01, $01, $00, $01, $01, $10
#_1BF898: db $48, $48, $48, $02, $48, $01, $01, $02
#_1BF8A0: db $01, $27, $01, $02, $02, $02, $01, $01
#_1BF8A8: db $01, $01, $01, $01, $01, $01, $01, $02
#_1BF8B0: db $02, $01, $27, $01, $01, $01, $01, $27
#_1BF8B8: db $27, $01, $02, $02, $01, $01, $27, $27
#_1BF8C0: db $02, $02, $01, $01, $01, $01, $02, $02
#_1BF8C8: db $01, $01, $01, $01, $02, $02, $02, $02
#_1BF8D0: db $02, $02, $02, $00, $48, $02, $02, $00
#_1BF8D8: db $02, $01, $00, $01, $02, $02, $02, $02
#_1BF8E0: db $01, $27, $02, $02, $01, $00, $01, $02
#_1BF8E8: db $02, $27, $02, $01, $01, $02, $02, $27
#_1BF8F0: db $02, $02, $01, $02, $02, $02, $02, $01
#_1BF8F8: db $01, $02, $02, $02, $02, $27, $02, $02
#_1BF900: db $02, $02, $02, $02, $44, $02, $01, $01
#_1BF908: db $02, $02, $02, $02, $01, $02, $02, $02
#_1BF910: db $27, $02, $02, $01, $02, $02, $02, $01
#_1BF918: db $01, $01, $02, $02, $01, $00, $01, $02
#_1BF920: db $02, $00, $20, $20, $20, $20, $02, $27
#_1BF928: db $27, $27, $00, $02, $00, $00, $02, $02
#_1BF930: db $02, $27, $27, $01, $01, $27, $27, $27
#_1BF938: db $27, $01, $02, $02, $01, $01, $02, $27
#_1BF940: db $02, $01, $27, $27, $27, $27, $00, $00
#_1BF948: db $02, $00, $27, $00, $00, $27, $27, $00
#_1BF950: db $27, $27, $02, $01, $02, $01, $01, $00
#_1BF958: db $02, $02, $48, $02, $10, $00, $02, $01
#_1BF960: db $02, $00, $00, $00, $00, $01, $00, $00
#_1BF968: db $02, $01, $02, $01, $01, $00, $00, $02
#_1BF970: db $08, $02, $00, $02, $09, $01, $02, $01
#_1BF978: db $01, $08, $01, $08, $01, $02, $12, $01
#_1BF980: db $02, $10, $12, $02, $02, $02, $01, $02
#_1BF988: db $02, $02, $02, $01, $08, $01, $00, $00
#_1BF990: db $00, $01, $10, $01, $02, $08, $08, $09
#_1BF998: db $08, $02, $01, $01, $02, $01, $00, $02
#_1BF9A0: db $01, $42, $01, $01, $01, $01, $02, $02
#_1BF9A8: db $02, $02, $01, $01, $01, $01, $42, $42
#_1BF9B0: db $01, $02, $02, $01, $02, $02, $02, $02
#_1BF9B8: db $01, $01, $01, $01, $01, $01, $01, $01
#_1BF9C0: db $02, $02, $02, $02, $02, $02, $02, $02
#_1BF9C8: db $02, $02, $01, $02, $01, $01, $02, $02
#_1BF9D0: db $02, $02, $02, $02, $02, $02, $02, $01
#_1BF9D8: db $01, $01, $01, $02, $22, $02, $01, $02
#_1BF9E0: db $02, $02, $01, $02, $02, $02, $22, $02
#_1BF9E8: db $02, $02, $01, $01, $02, $02, $01, $02
#_1BF9F0: db $02, $01, $02, $02, $02, $02, $02, $02
#_1BF9F8: db $02, $02, $01, $01, $01, $00, $01, $01
#_1BFA00: db $01, $01, $02, $02, $02, $02, $01, $01
#_1BFA08: db $02, $02, $02, $02, $02, $02, $02, $02
#_1BFA10: db $02, $02, $02, $02, $02, $01, $00, $02
#_1BFA18: db $00, $00, $00, $00, $00, $10, $02, $02
#_1BFA20: db $02, $02, $02, $02, $02, $02, $01, $08
#_1BFA28: db $08, $00, $01, $02, $02, $02, $02, $01
#_1BFA30: db $02, $01, $22, $01, $01, $02, $02, $18
#_1BFA38: db $01, $01, $01, $02, $02, $02, $02, $02
#_1BFA40: db $02, $02, $01, $02, $02, $02, $02, $02
#_1BFA48: db $02, $42, $02, $01, $02, $02, $02, $02
#_1BFA50: db $02, $48, $48, $48, $48, $00, $02, $01
#_1BFA58: db $00, $02, $02, $27, $27, $01, $00, $27
#_1BFA60: db $02, $00, $02, $00, $00, $02, $02, $00
#_1BFA68: db $00, $02, $01, $02, $27, $00, $00, $02
#_1BFA70: db $00, $01, $01, $29, $00, $02, $00, $10
#_1BFA78: db $01, $00, $12, $00, $00, $01, $01, $48
#_1BFA80: db $02, $02, $00, $00, $02, $02, $00, $02
#_1BFA88: db $02, $00, $00, $00, $02, $02, $00, $02
#_1BFA90: db $00, $00, $00, $02, $00, $02, $00, $00
#_1BFA98: db $00, $02, $00, $00, $00, $02, $00, $02
#_1BFAA0: db $00, $00, $00, $02, $00, $02, $02, $00
#_1BFAA8: db $00, $00, $00, $02, $00, $01, $09, $10
#_1BFAB0: db $27, $44, $02, $01, $00, $00, $02, $02
#_1BFAB8: db $02, $01, $01, $02, $02, $00, $01, $01
#_1BFAC0: db $01, $48, $00, $01, $00, $00, $01, $01
#_1BFAC8: db $00, $48, $48, $00, $02, $02, $02, $02
#_1BFAD0: db $02, $02, $00, $02, $00, $02, $02, $02
#_1BFAD8: db $00, $02, $48, $00, $01, $48, $48, $00
#_1BFAE0: db $01, $48, $01, $01, $01, $01, $01, $02
#_1BFAE8: db $02, $01, $01, $01, $01, $00, $02, $48
#_1BFAF0: db $02, $48, $01, $48, $01, $48, $00, $02
#_1BFAF8: db $02, $02, $01, $01, $02, $01, $01, $01
#_1BFB00: db $00, $00, $01, $00, $00, $00, $00, $00
#_1BFB08: db $00, $01, $01, $00, $01, $01, $01, $02
#_1BFB10: db $22, $00, $02, $01, $01, $01, $02, $01
#_1BFB18: db $44, $01, $01, $02, $00, $01, $02, $22
#_1BFB20: db $01, $02, $42, $22, $02, $02, $01, $01
#_1BFB28: db $02, $02, $02, $01, $01, $01, $01, $02
#_1BFB30: db $02, $01, $01, $02, $01, $01, $02, $02
#_1BFB38: db $01, $01, $01, $02, $01, $01, $02, $02
#_1BFB40: db $43, $02, $02, $02, $02, $02, $01, $02
#_1BFB48: db $02, $01, $01, $01, $02, $02, $01, $01
#_1BFB50: db $01, $02, $02, $02, $01, $02, $43, $01
#_1BFB58: db $01, $01, $01, $01, $01, $01, $01, $01
#_1BFB60: db $00, $01, $00, $00, $00, $01, $01, $00
#_1BFB68: db $01, $01, $01, $01, $01, $01, $02, $48
#_1BFB70: db $02, $02, $01, $00, $00, $00, $02, $43
#_1BFB78: db $00, $02, $01, $00, $00, $01, $01, $00
#_1BFB80: db $00, $02, $01, $01, $01, $01, $01, $01
#_1BFB88: db $01, $01, $01, $01, $01, $01, $01, $01
#_1BFB90: db $02, $02, $02, $01, $01, $01, $01, $01
#_1BFB98: db $02, $02, $01, $02, $02, $01, $01, $42
#_1BFBA0: db $01, $02, $02, $01, $02, $00, $02, $01
#_1BFBA8: db $02, $01, $00, $01, $01, $00, $00, $02
#_1BFBB0: db $01, $01, $02, $02, $02, $02, $01, $00
#_1BFBB8: db $01, $02, $01, $01, $01, $01, $01, $01
#_1BFBC0: db $00, $00, $01, $01, $01, $00, $00, $48
#_1BFBC8: db $00, $00, $00, $01, $01, $01, $02, $02
#_1BFBD0: db $01, $01, $02, $02, $01, $02, $02, $01
#_1BFBD8: db $01, $01, $01, $01, $01, $00, $48, $00
#_1BFBE0: db $48, $00, $00, $00, $01, $01, $01, $01
#_1BFBE8: db $01, $00, $00, $01, $00, $00, $00, $00
#_1BFBF0: db $01, $02, $01, $00, $02, $27, $00, $01
#_1BFBF8: db $01, $01, $01, $00, $02, $00, $01, $02
#_1BFC00: db $00, $01, $01, $01, $02, $00, $02, $01
#_1BFC08: db $02, $01, $01, $01, $27, $00, $09, $09
#_1BFC10: db $00, $09, $02, $1A, $10, $01, $01, $01
#_1BFC18: db $01, $00, $00, $48, $09, $09, $02, $00
#_1BFC20: db $09, $09, $02, $09, $09, $01, $02, $02
#_1BFC28: db $09, $09, $09, $42, $09, $01, $02, $09
#_1BFC30: db $02, $02, $02, $02, $02, $09, $09, $09
#_1BFC38: db $09, $02, $09, $02, $09, $01, $01, $01
#_1BFC40: db $09, $09, $09, $09, $09, $00, $00, $02
#_1BFC48: db $09, $02, $02, $02, $09, $00, $00, $02
#_1BFC50: db $48, $09, $09, $09, $09, $00, $00, $02
#_1BFC58: db $09, $09, $02, $09, $00, $00, $00, $02
#_1BFC60: db $00, $00, $00, $00, $00, $00, $01, $02
#_1BFC68: db $00, $02, $02, $00, $00, $00, $00, $00
#_1BFC70: db $00, $09, $48, $09, $01, $01, $02, $02
#_1BFC78: db $02, $01, $02, $48, $00, $00, $48, $00
#_1BFC80: db $00, $00, $00, $12, $09, $09, $02, $02
#_1BFC88: db $09, $02, $01, $02, $02, $09, $02, $12
#_1BFC90: db $01, $12, $02, $01, $01, $00, $00, $10
#_1BFC98: db $01, $00, $01, $1A, $01, $02, $01, $01
#_1BFCA0: db $18, $00, $00, $00, $00, $01, $08, $01
#_1BFCA8: db $09, $00, $09, $09, $00, $09, $00, $00
#_1BFCB0: db $00, $00, $00, $00, $00, $00, $00, $00
#_1BFCB8: db $00, $00, $02, $02, $02, $00, $09, $00
#_1BFCC0: db $01, $01, $01, $02, $02, $01, $00, $00
#_1BFCC8: db $01, $02, $02, $02, $00, $09, $01, $01
#_1BFCD0: db $01, $01, $02, $02, $00, $01, $02, $02
#_1BFCD8: db $01, $01, $02, $01, $01, $02, $00, $02
#_1BFCE0: db $22, $09, $00, $00, $00, $01, $00, $02
#_1BFCE8: db $00, $00, $48, $48, $48, $09, $09, $09
#_1BFCF0: db $09, $42, $02, $09, $09, $02, $09, $01
#_1BFCF8: db $09, $02, $02, $02, $02, $01, $01, $01
#_1BFD00: db $01, $01, $01, $01, $01, $01, $01, $01
#_1BFD08: db $01, $01, $01, $01, $00, $00, $00, $00
#_1BFD10: db $01, $01, $22, $22, $01, $01, $00, $02
#_1BFD18: db $00, $02, $02, $02, $09, $01, $02, $01
#_1BFD20: db $01, $01, $01, $02, $02, $02, $02, $00
#_1BFD28: db $02, $02, $00, $01, $08, $02, $00, $12
#_1BFD30: db $01, $01, $01, $01, $01, $01, $01, $01
#_1BFD38: db $02, $01, $01, $02, $02, $02, $02, $02
#_1BFD40: db $01, $02, $01, $01, $01, $01, $02, $02
#_1BFD48: db $02, $01, $02, $01, $01, $01, $01, $01
#_1BFD50: db $01, $02, $01, $01, $01, $00, $01, $01
#_1BFD58: db $02, $01, $01, $01, $01, $01, $01, $01
#_1BFD60: db $00, $00, $00, $00, $00, $00, $00, $00
#_1BFD68: db $00, $00, $00, $00, $00, $00, $00, $00
#_1BFD70: db $00, $00, $00, $48, $48, $02, $00, $02
#_1BFD78: db $02, $02, $02, $02, $02, $02, $01, $01
#_1BFD80: db $02, $02, $02, $02, $01, $01, $48, $00
#_1BFD88: db $01, $01, $01, $01, $02, $02, $02, $02
#_1BFD90: db $02, $48, $02, $02, $02, $02, $02, $02
#_1BFD98: db $00, $02, $00, $00, $02, $02, $00, $02
#_1BFDA0: db $00, $02, $00, $02, $02, $00, $02, $02
#_1BFDA8: db $02, $02, $02, $00, $00, $02, $02, $48
#_1BFDB0: db $02, $02, $02, $02, $02, $02, $42, $42
#_1BFDB8: db $02, $02, $02, $02, $02, $22, $22, $22
#_1BFDC0: db $02, $02, $08, $00, $02, $22, $22, $22
#_1BFDC8: db $02, $08, $02, $02, $02, $02, $00, $02
#_1BFDD0: db $02, $02, $02, $00, $01, $01, $01, $01
#_1BFDD8: db $02, $02, $02, $01, $01, $02, $01, $00
#_1BFDE0: db $01, $02, $01, $01, $02, $00, $02, $00
#_1BFDE8: db $00, $01, $02, $02, $02, $00, $01, $01
#_1BFDF0: db $01, $00, $01, $02, $02, $01, $02, $02
#_1BFDF8: db $01, $00, $01, $02, $01, $02, $02, $02
#_1BFE00: db $00, $02, $02, $00, $00, $48, $09, $09
#_1BFE08: db $09, $00, $09, $09, $09, $09, $09, $09
#_1BFE10: db $09, $09, $09, $09, $08, $09, $08, $00
#_1BFE18: db $00, $02, $02, $02, $02, $09, $5C, $08
#_1BFE20: db $00, $00, $02, $02, $00, $02, $02, $5C
#_1BFE28: db $09, $10, $09, $09, $27, $27, $27, $09
#_1BFE30: db $00, $5C, $02, $00, $00, $02, $01, $00
#_1BFE38: db $00, $01, $02, $02, $02, $02, $02, $02
#_1BFE40: db $02, $02, $02, $02, $02, $02, $02, $01
#_1BFE48: db $00, $00, $00, $09, $09, $09, $09, $09
#_1BFE50: db $00, $00, $09, $09, $09, $48, $09, $09
#_1BFE58: db $09, $09, $09, $09, $00, $09, $09, $09
#_1BFE60: db $48, $00, $00, $00, $02, $2E, $28, $2B
#_1BFE68: db $2A, $01, $01, $00, $01, $01, $01, $01
#_1BFE70: db $01, $02, $01, $22, $01, $01, $22, $01
#_1BFE78: db $02, $01, $01, $01, $01, $01, $00, $2E
#_1BFE80: db $22, $2F, $29, $02, $01, $01, $01, $01
#_1BFE88: db $01, $01, $1A, $1A, $1A, $1A, $1A, $1A
#_1BFE90: db $1A, $01, $01, $12, $01, $01, $01, $01
#_1BFE98: db $01, $01, $01, $01, $01, $12, $01, $02
#_1BFEA0: db $02, $01, $01, $02, $02, $02, $12, $02
#_1BFEA8: db $02, $01, $01, $02, $02, $02, $02, $02
#_1BFEB0: db $02, $02, $01, $01, $00, $00, $01, $01
#_1BFEB8: db $00, $00, $01, $01, $01, $01, $02, $02
#_1BFEC0: db $01, $01, $00, $00, $01, $01, $02, $02
#_1BFEC8: db $00, $00, $00, $00, $00, $00, $00, $48
#_1BFED0: db $00, $48, $48, $48, $48, $00, $20, $00
#_1BFED8: db $00, $00, $48, $02, $01, $02, $42, $02
#_1BFEE0: db $02, $02, $42, $02, $02, $02, $42, $02
#_1BFEE8: db $20, $00, $00, $00, $00, $00, $00, $00
#_1BFEF0: db $00, $00, $00, $00, $00, $00, $00, $00
#_1BFEF8: db $00, $09, $09, $09, $00, $00, $09, $00
#_1BFF00: db $09, $00, $00, $00, $00, $00, $00, $09
#_1BFF08: db $00, $00, $00, $48, $00, $00, $00, $00
#_1BFF10: db $00, $00, $00, $00, $00, $02, $02, $01
#_1BFF18: db $02, $02, $22, $02, $02, $02, $02, $02
#_1BFF20: db $02, $02, $02, $02, $02, $01, $02, $01
#_1BFF28: db $01, $01, $22, $00, $00, $01, $01, $01
#_1BFF30: db $22, $01, $44, $44, $29, $22, $00, $00
#_1BFF38: db $00, $00, $00, $01, $48, $02, $02, $02
#_1BFF40: db $01, $01, $02, $02, $01, $20, $02, $27
#_1BFF48: db $22, $00, $00, $20, $20, $20, $20, $00
#_1BFF50: db $20, $00, $09, $02, $02, $09, $01, $01
#_1BFF58: db $02, $02, $09, $01, $01, $01, $09, $02
#_1BFF60: db $02, $09, $02, $01, $02, $01, $02, $01
#_1BFF68: db $01, $01, $01, $01, $02, $01, $09, $02
#_1BFF70: db $02, $09, $02, $01, $02, $01, $02, $01
#_1BFF78: db $01, $01, $02, $01, $02, $01, $02, $02
#_1BFF80: db $09, $02, $02, $02, $02, $02, $44, $02
#_1BFF88: db $02, $44, $44, $02, $22, $44, $43, $02
#_1BFF90: db $22, $43, $01, $01, $01, $01, $01, $22
#_1BFF98: db $01, $01, $01, $02, $02, $22, $00, $02
#_1BFFA0: db $02, $22, $02, $22, $02, $22, $02, $22
#_1BFFA8: db $02, $22, $02, $22, $01, $01, $00, $00

;===================================================================================================
; FREE ROM: 0x50
;===================================================================================================
NULL_1BFFB0:
#_1BFFB0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BFFB8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BFFC0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BFFC8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BFFD0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BFFD8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BFFE0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BFFE8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BFFF0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1BFFF8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

;===================================================================================================

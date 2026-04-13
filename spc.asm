lang SPC700

site SPC_ENGINE

;===================================================================================================

Engine_Start:
|19FBCE:0800| clrp

|19FBCF:0801| mov.b X, #$CF
|19FBD1:0803| mov SP, X

|19FBD2:0804| mov.b A, #$00
|19FBD4:0806| mov X, A

.zeroing_loop_1
|19FBD5:0807| mov (X+), A

|19FBD6:0808| cmp.b X, #$E0
|19FBD8:080A| bne .zeroing_loop_1

|19FBDA:080C| mov.b X, #$00

.zeroing_loop_2
|19FBDC:080E| mov.w $0200+X, A

|19FBDF:0811| inc X
|19FBE0:0812| bne .zeroing_loop_2

.zeroing_loop_3
|19FBE2:0814| mov.w $0300+X, A

|19FBE5:0817| inc X
|19FBE6:0818| bne .zeroing_loop_3

; A = 1
|19FBE8:081A| inc A
|19FBE9:081B| call ConfigureEcho

|19FBEC:081E| set5.b $48

|19FBEE:0820| mov.b A, #$60
|19FBF0:0822| mov.b Y, #MVOLL
|19FBF2:0824| call WriteToDSP

|19FBF5:0827| mov.b Y, #MVOLR
|19FBF7:0829| call WriteToDSP

|19FBFA:082C| mov.b A, #>SAMPLE_POINTERS
|19FBFC:082E| mov.b Y, #DIR
|19FBFE:0830| call WriteToDSP

; Set $FFC0 to ROM, clear ports 0123, stop timer 0
|19FC01:0833| mov.b A, #$F0
|19FC03:0835| mov.w CONTROL, A

|19FC06:0838| mov.b A, #$10
|19FC08:083A| mov.w T0DIV, A
|19FC0B:083D| mov.b $53, A

; Start timer 0
|19FC0D:083F| mov.b A, #$01
|19FC0F:0841| mov.w CONTROL, A

;===================================================================================================

Engine_Main:
|19FC12:0844| mov.b Y, #$0A

.next_register
|19FC14:0846| cmp.b Y, #$05
|19FC16:0848| beq .FLG_register
|19FC18:084A| bcs .not_echo_register

|19FC1A:084C| cmp.b $4C, $4D
|19FC1D:084F| bne .skip

.FLG_register
|19FC1F:0851| bbs7.b $4C, .skip

.not_echo_register
|19FC22:0854| mov.w A, RegisterList-1+Y
|19FC25:0857| mov.w DSPADDR, A

|19FC28:085A| mov.w A, LoadValueFrom-1+Y
|19FC2B:085D| mov X, A
|19FC2C:085E| mov A, (X)
|19FC2D:085F| mov.w DSPDATA, A

.skip
|19FC30:0862| dbnz Y, .next_register

;---------------------------------------------------------------------------------------------------

|19FC32:0864| mov.b $45, Y
|19FC34:0866| mov.b $46, Y

|19FC36:0868| mov.b A, $18
|19FC38:086A| eor.b A, $19
|19FC3A:086C| lsr A
|19FC3B:086D| lsr A

|19FC3C:086E| notc
|19FC3D:086F| ror.b $18
|19FC3F:0871| ror.b $19

.timer_wait
|19FC41:0873| mov.w Y, T0OUT
|19FC44:0876| beq .timer_wait

|19FC46:0878| push Y

|19FC47:0879| mov.b A, #$38
|19FC49:087B| mul YA

|19FC4A:087C| clrc
|19FC4B:087D| adc.b A, $43
|19FC4D:087F| mov.b $43, A
|19FC4F:0881| bcc .wait_for_SFX

|19FC51:0883| call HandleSFX1
|19FC54:0886| call ProcessSFX1Input

|19FC57:0889| mov.b X, #$01
|19FC59:088B| call Synchronize

|19FC5C:088E| call HandleSFX2
|19FC5F:0891| call ProcessSFX2Input

|19FC62:0894| mov.b X, #$02
|19FC64:0896| call Synchronize

|19FC67:0899| call HandleSFX3
|19FC6A:089C| call ProcessSFX3Input

|19FC6D:089F| mov.b X, #$03
|19FC6F:08A1| call Synchronize

|19FC72:08A4| cmp.b $4C, $4D
|19FC75:08A7| beq .wait_for_SFX

|19FC77:08A9| inc.w $03C7
|19FC7A:08AC| mov.w A, $03C7
|19FC7D:08AF| lsr A
|19FC7E:08B0| bcs .wait_for_SFX

|19FC80:08B2| inc.b $4C

.wait_for_SFX
|19FC82:08B4| mov.b A, $53

|19FC84:08B6| pop Y
|19FC85:08B7| mul YA

|19FC86:08B8| clrc
|19FC87:08B9| adc.b A, $51
|19FC89:08BB| mov.b $51, A
|19FC8B:08BD| bcc .ignore_tracker

|19FC8D:08BF| call ProcessSongInput

|19FC90:08C2| mov.b X, #$00
|19FC92:08C4| call Synchronize

|19FC95:08C7| jmp Engine_Main

;---------------------------------------------------------------------------------------------------

.ignore_tracker
|19FC98:08CA| mov.b A, $04
|19FC9A:08CC| beq .no_song

|19FC9C:08CE| mov.b X, #$00
|19FC9E:08D0| mov.b $47, #$01

.next_track
|19FCA1:08D3| mov.b A, $31+X
|19FCA3:08D5| beq .skip_voice

|19FCA5:08D7| call BackgroundTasks

.skip_voice
|19FCA8:08DA| inc X
|19FCA9:08DB| inc X

|19FCAA:08DC| asl.b $47
|19FCAC:08DE| bne .next_track

.no_song
|19FCAE:08E0| jmp Engine_Main

;===================================================================================================

Synchronize:
|19FCB1:08E3| mov.b A, $04+X
|19FCB3:08E5| mov.w CPUIO0+X, A

.wait
|19FCB6:08E8| mov.w A, CPUIO0+X
|19FCB9:08EB| cmp.w A, CPUIO0+X
|19FCBC:08EE| bne .wait

|19FCBE:08F0| mov Y, A
|19FCBF:08F1| bne .dumb

.dumb
|19FCC1:08F3| mov.b A, $08+X
|19FCC3:08F5| mov.b $08+X, Y
|19FCC5:08F7| cbne.b $08+X, .change

|19FCC8:08FA| mov.b Y, #$00
|19FCCA:08FC| mov.b $00+X, Y

|19FCCC:08FE| ret

.change
|19FCCD:08FF| mov.b $00+X, Y

.exit
|19FCCF:0901| ret

;===================================================================================================

HandleNote:
|19FCD0:0902| cmp.b Y, #$CA ; check if percussion hit
|19FCD2:0904| bcc .not_percussion

|19FCD4:0906| call TrackCommand_E0_ChangeInstrument

|19FCD7:0909| mov.b Y, #$A4 ; note C4

.not_percussion
|19FCD9:090B| cmp.b Y, #$C8 ; check if tie
|19FCDB:090D| bcs Synchronize.exit

|19FCDD:090F| mov.b A, $1A
|19FCDF:0911| and.b A, $47
|19FCE1:0913| bne Synchronize.exit

|19FCE3:0915| mov A, Y
|19FCE4:0916| and.b A, #$7F

|19FCE6:0918| clrc
|19FCE7:0919| adc.b A, $50

|19FCE9:091B| clrc
|19FCEA:091C| adc.w A, $02F0+X
|19FCED:091F| mov.w $0361+X, A

|19FCF0:0922| mov.w A, $0381+X
|19FCF3:0925| mov.w $0360+X, A

|19FCF6:0928| mov.w A, $02B1+X
|19FCF9:092B| lsr A

|19FCFA:092C| mov.b A, #$00
|19FCFC:092E| ror A
|19FCFD:092F| mov.w $02A0+X, A

|19FD00:0932| mov.b A, #$00
|19FD02:0934| mov.b $B0+X, A
|19FD04:0936| mov.w $0100+X, A
|19FD07:0939| mov.w $02D0+X, A
|19FD0A:093C| mov.b $C0+X, A

|19FD0C:093E| or.b $5E, $47
|19FD0F:0941| or.b $45, $47

|19FD12:0944| mov.w A, $0280+X
|19FD15:0947| mov.b $A0+X, A
|19FD17:0949| beq .no_pitch_slide

|19FD19:094B| mov.w A, $0281+X
|19FD1C:094E| mov.b $A1+X, A

|19FD1E:0950| mov.w A, $0290+X
|19FD21:0953| bne .do_slide_to

|19FD23:0955| mov.w A, $0361+X
|19FD26:0958| setc
|19FD27:0959| sbc.w A, $0291+X
|19FD2A:095C| mov.w $0361+X, A

.do_slide_to
|19FD2D:095F| mov.w A, $0291+X
|19FD30:0962| clrc
|19FD31:0963| adc.w A, $0361+X
|19FD34:0966| call PitchSlide.calc_frames

.no_pitch_slide
|19FD37:0969| call GetTempPitch

;===================================================================================================

#HandleNote_external:
|19FD3A:096C| mov.b Y, #$00
|19FD3C:096E| mov.b A, $11

|19FD3E:0970| setc
|19FD3F:0971| sbc.b A, #$34
|19FD41:0973| bcs .high_note

|19FD43:0975| mov.b A, $11
|19FD45:0977| setc
|19FD46:0978| sbc.b A, #$13
|19FD48:097A| bcs .middle_note

|19FD4A:097C| dec Y
|19FD4B:097D| asl A

.high_note
|19FD4C:097E| addw.b YA, $10
|19FD4E:0980| movw.b $10, YA

.middle_note
|19FD50:0982| push X

|19FD51:0983| mov.b A, $11
|19FD53:0985| asl A
|19FD54:0986| mov.b Y, #$00
|19FD56:0988| mov.b X, #$18

|19FD58:098A| div YA, X
|19FD59:098B| mov X, A
|19FD5A:098C| mov.w A, TuningValues+1+Y
|19FD5D:098F| mov.b $15, A

|19FD5F:0991| mov.w A, TuningValues+0+Y
|19FD62:0994| mov.b $14, A

|19FD64:0996| mov.w A, TuningValues+3+Y
|19FD67:0999| push A

|19FD68:099A| mov.w A, TuningValues+2+Y

|19FD6B:099D| pop Y
|19FD6C:099E| subw.b YA, $14

|19FD6E:09A0| mov.b Y, $10
|19FD70:09A2| mul YA
|19FD71:09A3| mov A, Y

|19FD72:09A4| mov.b Y, #$00
|19FD74:09A6| addw.b YA, $14

|19FD76:09A8| mov.b $15, Y
|19FD78:09AA| asl A
|19FD79:09AB| rol.b $15
|19FD7B:09AD| mov.b $14, A
|19FD7D:09AF| bra .proceed

.pitch_loop
|19FD7F:09B1| lsr.b $15
|19FD81:09B3| ror A
|19FD82:09B4| inc X

.proceed
|19FD83:09B5| cmp.b X, #$06
|19FD85:09B7| bne .pitch_loop

|19FD87:09B9| mov.b $14, A

|19FD89:09BB| pop X

|19FD8A:09BC| mov.w A, $0220+X
|19FD8D:09BF| mov.b Y, $15
|19FD8F:09C1| mul YA
|19FD90:09C2| movw.b $16, YA

|19FD92:09C4| mov.w A, $0220+X
|19FD95:09C7| mov.b Y, $14
|19FD97:09C9| mul YA

|19FD98:09CA| push Y

|19FD99:09CB| mov.w A, $0221+X
|19FD9C:09CE| mov.b Y, $14
|19FD9E:09D0| mul YA
|19FD9F:09D1| addw.b YA, $16

|19FDA1:09D3| movw.b $16, YA
|19FDA3:09D5| mov.w A, $0221+X
|19FDA6:09D8| mov.b Y, $15
|19FDA8:09DA| mul YA

|19FDA9:09DB| mov Y, A
|19FDAA:09DC| pop A
|19FDAB:09DD| addw.b YA, $16
|19FDAD:09DF| movw.b $16, YA

|19FDAF:09E1| mov A, X
|19FDB0:09E2| xcn A
|19FDB1:09E3| lsr A
|19FDB2:09E4| or.b A, #$02

|19FDB4:09E6| mov Y, A
|19FDB5:09E7| mov.b A, $16
|19FDB7:09E9| call WriteToDSP_Checked

|19FDBA:09EC| inc Y
|19FDBB:09ED| mov.b A, $17

;===================================================================================================
; Writes value A to DSP register Y
; if the channel is enabled
;===================================================================================================
WriteToDSP_Checked:
|19FDBD:09EF| push A

|19FDBE:09F0| mov.b A, $47
|19FDC0:09F2| and.b A, $1A

|19FDC2:09F4| pop A
|19FDC3:09F5| bne .exit

;===================================================================================================
; Writes value A to DSP register Y
;===================================================================================================
#WriteToDSP:
|19FDC5:09F7| mov.w DSPADDR, Y
|19FDC8:09FA| mov.w DSPDATA, A

.exit
|19FDCB:09FD| ret

;===================================================================================================
; Mutes everything then prepares for transfer
;===================================================================================================
SongCommand_FF_TransferData:
|19FDCC:09FE| mov.b A, #$00
|19FDCE:0A00| mov.b Y, #EVOLL
|19FDD0:0A02| call WriteToDSP

|19FDD3:0A05| mov.b A, #$00
|19FDD5:0A07| mov.b Y, #EVOLR
|19FDD7:0A09| call WriteToDSP

|19FDDA:0A0C| mov.b A, #$FF
|19FDDC:0A0E| mov.b Y, #KOFF

|19FDDE:0A10| call WriteToDSP
|19FDE1:0A13| call Data_Loader

|19FDE4:0A16| mov.b A, #$00
|19FDE6:0A18| mov.w $03CA, A
|19FDE9:0A1B| mov.b $04, A
|19FDEB:0A1D| mov.w $03CF, A
|19FDEE:0A20| mov.w $03CB, A
|19FDF1:0A23| mov.w $03CD, A
|19FDF4:0A26| mov.b $1A, A

|19FDF6:0A28| ret

;===================================================================================================

SongCommand_F1_Fadeout:
|19FDF7:0A29| mov.b X, #$80
|19FDF9:0A2B| mov.b $5A, X
|19FDFB:0A2D| mov.w $03CA, X

|19FDFE:0A30| mov.b A, #$00
|19FE00:0A32| mov.b $5B, A

|19FE02:0A34| setc
|19FE03:0A35| sbc.b A, $59
|19FE05:0A37| call MakeFraction
|19FE08:0A3A| movw.b $5C, YA

|19FE0A:0A3C| jmp ProcessSongInput.no_new_song

;===================================================================================================

SongCommand_F2_HalfVolume:
|19FE0D:0A3F| mov.w A, $03E1
|19FE10:0A42| bne SongCommand_F3_MaxVolume.exit


|19FE12:0A44| mov.b A, $59
|19FE14:0A46| mov.w $03E1, A

|19FE17:0A49| mov.b A, #$70
|19FE19:0A4B| mov.b $59, A

|19FE1B:0A4D| jmp ProcessSongInput.no_new_song

;===================================================================================================

SongCommand_F3_MaxVolume:
|19FE1E:0A50| mov.w A, $03E1
|19FE21:0A53| beq .exit

|19FE23:0A55| mov.w A, $03E1
|19FE26:0A58| mov.b $59, A

|19FE28:0A5A| mov.b A, #$00
|19FE2A:0A5C| mov.w $03E1, A

|19FE2D:0A5F| jmp ProcessSongInput.no_new_song

.exit
|19FE30:0A62| ret

;===================================================================================================

Song_Commands:
|19FE31:0A63| cmp.b A, #$FF ; SONG FF - transfer
|19FE33:0A65| beq SongCommand_FF_TransferData

|19FE35:0A67| cmp.b A, #$F1 ; SONG F1 - fade
|19FE37:0A69| beq SongCommand_F1_Fadeout

|19FE39:0A6B| cmp.b A, #$F2 ; SONG F2 - half volume
|19FE3B:0A6D| beq SongCommand_F2_HalfVolume

|19FE3D:0A6F| cmp.b A, #$F3 ; SONG F3 - max volume
|19FE3F:0A71| beq SongCommand_F3_MaxVolume

|19FE41:0A73| cmp.b A, #$F0 ; SONG F0 - mute
|19FE43:0A75| beq SongCommand_F0_Mute

|19FE45:0A77| bra Song_NewJam

;===================================================================================================

PerformFadeout:
|19FE47:0A79| dec.w $03CA
|19FE4A:0A7C| beq SongCommand_F0_Mute

|19FE4C:0A7E| jmp ProcessSongInput.dont_fade_out

;===================================================================================================

SongCommand_F0_Mute:
|19FE4F:0A81| mov.b A, $1A
|19FE51:0A83| eor.b A, #$FF
|19FE53:0A85| tset.w $0046, A

|19FE56:0A88| mov.b $04, #$00
|19FE59:0A8B| mov.b $47, #$00

|19FE5C:0A8E| ret

;===================================================================================================

GetNextPart:
|19FE5D:0A8F| mov.b Y, #$00
|19FE5F:0A91| mov.b A, ($40)+Y
|19FE61:0A93| incw.b $40

|19FE63:0A95| push A
|19FE64:0A96| mov.b A, ($40)+Y
|19FE66:0A98| incw.b $40

|19FE68:0A9A| mov Y, A
|19FE69:0A9B| pop A

|19FE6A:0A9C| ret

;===================================================================================================
; Drops a new track
;===================================================================================================
Song_NewJam:
|19FE6B:0A9D| clrc

|19FE6C:0A9E| mov.b X, #$00
|19FE6E:0AA0| mov.w $03CA, X
|19FE71:0AA3| mov.w $03E1, X

|19FE74:0AA6| mov.b $04, A

|19FE76:0AA8| asl A
|19FE77:0AA9| mov X, A
|19FE78:0AAA| mov.w A, SONG_POINTERS-1+X

|19FE7B:0AAD| mov Y, A
|19FE7C:0AAE| mov.w A, SONG_POINTERS-2+X

|19FE7F:0AB1| movw.b $40, YA
|19FE81:0AB3| mov.b $0C, #$02

.key_off
|19FE84:0AB6| mov.b A, $1A
|19FE86:0AB8| eor.b A, #$FF
|19FE88:0ABA| tset.w $0046, A

|19FE8B:0ABD| ret

;===================================================================================================

EngineStartDelay:
|19FE8C:0ABE| mov.b X, #$0E
|19FE8E:0AC0| mov.b $47, #$80

.next_channel
|19FE91:0AC3| mov.b A, #$FF
|19FE93:0AC5| mov.w $0301+X, A

|19FE96:0AC8| mov.b A, #$0A
|19FE98:0ACA| call TrackCommand_E1_ChangePan

|19FE9B:0ACD| mov.w $0211+X, A
|19FE9E:0AD0| mov.w $0381+X, A
|19FEA1:0AD3| mov.w $02F0+X, A
|19FEA4:0AD6| mov.w $0280+X, A
|19FEA7:0AD9| mov.w $03FF+X, A

|19FEAA:0ADC| mov.b $B1+X, A
|19FEAC:0ADE| mov.b $C1+X, A

|19FEAE:0AE0| dec X
|19FEAF:0AE1| dec X

|19FEB0:0AE2| lsr.b $47
|19FEB2:0AE4| bne .next_channel

|19FEB4:0AE6| mov.b $5A, A
|19FEB6:0AE8| mov.b $68, A
|19FEB8:0AEA| mov.b $54, A
|19FEBA:0AEC| mov.b $50, A
|19FEBC:0AEE| mov.b $42, A
|19FEBE:0AF0| mov.b $5F, A

|19FEC0:0AF2| mov.b $59, #$C0
|19FEC3:0AF5| mov.b $53, #$20

.exit
|19FEC6:0AF8| ret

;===================================================================================================

ProcessSongInput:
|19FEC7:0AF9| mov.b A, $00
|19FEC9:0AFB| beq .no_new_song

|19FECB:0AFD| jmp Song_Commands

.no_new_song
|19FECE:0B00| mov.b A, $04
|19FED0:0B02| beq EngineStartDelay.exit

|19FED2:0B04| mov.w A, $03CA
|19FED5:0B07| beq .dont_fade_out

|19FED7:0B09| jmp PerformFadeout

.dont_fade_out
|19FEDA:0B0C| mov.b A, $0C
|19FEDC:0B0E| beq .no_delay

|19FEDE:0B10| dbnz.b $0C, EngineStartDelay

;---------------------------------------------------------------------------------------------------

.loop
|19FEE1:0B13| call GetNextPart
|19FEE4:0B16| bne .valid_pointer

|19FEE6:0B18| mov Y, A
|19FEE7:0B19| bne .valid_command

|19FEE9:0B1B| jmp SongCommand_F0_Mute

.valid_command
|19FEEC:0B1E| cmp.b A, #$80
|19FEEE:0B20| beq .disable_dsp

|19FEF0:0B22| cmp.b A, #$81
|19FEF2:0B24| bne .set_num_loops

|19FEF4:0B26| mov.b A, #$00

.disable_dsp
|19FEF6:0B28| mov.b $1B, A
|19FEF8:0B2A| bra .loop

.set_num_loops
|19FEFA:0B2C| dec.b $42
|19FEFC:0B2E| bpl .loop_in_progress

|19FEFE:0B30| mov.b $42, A

.loop_in_progress
|19FF00:0B32| call GetNextPart

|19FF03:0B35| mov.b X, $42
|19FF05:0B37| beq .loop

|19FF07:0B39| movw.b $40, YA
|19FF09:0B3B| bra .loop

.valid_pointer
|19FF0B:0B3D| movw.b $16, YA
|19FF0D:0B3F| mov.b Y, #$0F

.load_pattern_table_loop
|19FF0F:0B41| mov.b A, ($16)+Y
|19FF11:0B43| mov.w $0030+Y, A

|19FF14:0B46| dec Y
|19FF15:0B47| bpl .load_pattern_table_loop

;---------------------------------------------------------------------------------------------------

|19FF17:0B49| mov.b X, #$00
|19FF19:0B4B| mov.b $47, #$01

.next_channel
|19FF1C:0B4E| mov.b A, $31+X
|19FF1E:0B50| beq .dont_make_noise

|19FF20:0B52| mov.w A, $0211+X
|19FF23:0B55| bne .dont_make_noise

|19FF25:0B57| mov.b A, #$00
|19FF27:0B59| call TrackCommand_E0_ChangeInstrument

.dont_make_noise
|19FF2A:0B5C| mov.b A, #$00
|19FF2C:0B5E| mov.b $80+X, A
|19FF2E:0B60| mov.b $90+X, A
|19FF30:0B62| mov.b $91+X, A

|19FF32:0B64| inc A
|19FF33:0B65| mov.b $70+X, A

|19FF35:0B67| inc X
|19FF36:0B68| inc X

|19FF37:0B69| asl.b $47
|19FF39:0B6B| bne .next_channel

;---------------------------------------------------------------------------------------------------

.no_delay
|19FF3B:0B6D| mov.b X, #$00
|19FF3D:0B6F| mov.b $5E, X
|19FF3F:0B71| mov.b $47, #$01

.loop_2
|19FF42:0B74| mov.b $44, X
|19FF44:0B76| mov.b A, $31+X
|19FF46:0B78| beq .next_channel_2

|19FF48:0B7A| dec.b $70+X
|19FF4A:0B7C| bne .empty_track

.try_again
|19FF4C:0B7E| call GetTrackByte
|19FF4F:0B81| bne .non_terminating

|19FF51:0B83| mov.b A, $80+X
|19FF53:0B85| beq .loop

|19FF55:0B87| call IteratePartLoop

|19FF58:0B8A| dec.b $80+X
|19FF5A:0B8C| bne .try_again

|19FF5C:0B8E| mov.w A, $0230+X
|19FF5F:0B91| mov.b $30+X, A

|19FF61:0B93| mov.w A, $0231+X
|19FF64:0B96| mov.b $31+X, A

|19FF66:0B98| bra .try_again

;---------------------------------------------------------------------------------------------------

.non_terminating
|19FF68:0B9A| bmi .note_or_command

|19FF6A:0B9C| mov.w $0200+X, A

|19FF6D:0B9F| call GetTrackByte
|19FF70:0BA2| bmi .note_or_command

|19FF72:0BA4| push A

|19FF73:0BA5| xcn A
|19FF74:0BA6| and.b A, #$07
|19FF76:0BA8| mov Y, A
|19FF77:0BA9| mov.w A, NoteStacc+Y
|19FF7A:0BAC| mov.w $0201+X, A

|19FF7D:0BAF| pop A
|19FF7E:0BB0| and.b A, #$0F
|19FF80:0BB2| mov Y, A
|19FF81:0BB3| mov.w A, NoteAttack+Y
|19FF84:0BB6| mov.w $0210+X, A

|19FF87:0BB9| call GetTrackByte

.note_or_command
|19FF8A:0BBC| cmp.b A, #$E0 ; first command
|19FF8C:0BBE| bcc .note

|19FF8E:0BC0| call ExecuteCommand
|19FF91:0BC3| bra .try_again

.note
|19FF93:0BC5| mov.w A, $03FF+X
|19FF96:0BC8| or.b A, $1B
|19FF98:0BCA| bne .disabled_channel
|19FF9A:0BCC| mov A, Y

|19FF9B:0BCD| push A

|19FF9C:0BCE| mov.b A, $47
|19FF9E:0BD0| and.b A, $1A

|19FFA0:0BD2| pop A

|19FFA1:0BD3| bne .disabled_channel

|19FFA3:0BD5| call HandleNote

.disabled_channel
|19FFA6:0BD8| mov.w A, $0200+X
|19FFA9:0BDB| mov.b $70+X, A

|19FFAB:0BDD| mov Y, A
|19FFAC:0BDE| mov.w A, $0201+X
|19FFAF:0BE1| mul YA
|19FFB0:0BE2| mov A, Y
|19FFB1:0BE3| bne .non_zero

|19FFB3:0BE5| inc A

.non_zero
|19FFB4:0BE6| mov.b $71+X, A
|19FFB6:0BE8| bra .continue

.empty_track
|19FFB8:0BEA| mov.b A, $1B
|19FFBA:0BEC| bne .next_channel_2

|19FFBC:0BEE| call Tracker

.continue
|19FFBF:0BF1| call PitchSlide

.next_channel_2
|19FFC2:0BF4| inc X
|19FFC3:0BF5| inc X
|19FFC4:0BF6| asl.b $47
|19FFC6:0BF8| beq .done_with_channels

|19FFC8:0BFA| jmp .loop_2

;---------------------------------------------------------------------------------------------------

.done_with_channels
|19FFCB:0BFD| mov.b A, $54
|19FFCD:0BFF| beq .no_tempo_slide

|19FFCF:0C01| movw.b YA, $56
|19FFD1:0C03| addw.b YA, $52
|19FFD3:0C05| dbnz.b $54, .temp_slide_not_done

|19FFD6:0C08| movw.b YA, $54

.temp_slide_not_done
|19FFD8:0C0A| movw.b $52, YA

.no_tempo_slide
|19FFDA:0C0C| mov.b A, $68
|19FFDC:0C0E| beq .no_echo_pan_slide

|19FFDE:0C10| movw.b YA, $64
|19FFE0:0C12| addw.b YA, $60
|19FFE2:0C14| movw.b $60, YA

|19FFE4:0C16| movw.b YA, $66
|19FFE6:0C18| addw.b YA, $62
|19FFE8:0C1A| dbnz.b $68, .pan_slide_not_done

|19FFEB:0C1D| movw.b YA, $68
|19FFED:0C1F| movw.b $60, YA
|19FFEF:0C21| mov.b Y, $6A

.pan_slide_not_done
|19FFF1:0C23| movw.b $62, YA

.no_echo_pan_slide
|19FFF3:0C25| mov.b A, $5A
|19FFF5:0C27| beq .no_volume_slide

|19FFF7:0C29| movw.b YA, $5C
|19FFF9:0C2B| addw.b YA, $58
|19FFFB:0C2D| dbnz.b $5A, .volume_slide_not_done

|19FFFE:0C30| movw.b YA, $5A

.volume_slide_not_done
|1A8000:0C32| movw.b $58, YA
|1A8002:0C34| mov.b $5E, #$FF

.no_volume_slide
|1A8005:0C37| mov.b X, #$00
|1A8007:0C39| mov.b $47, #$01

.volume_settings_loop
|1A800A:0C3C| mov.b A, $31+X
|1A800C:0C3E| beq .inactive_track

|1A800E:0C40| call WritePitch

.inactive_track
|1A8011:0C43| inc X
|1A8012:0C44| inc X

|1A8013:0C45| asl.b $47
|1A8015:0C47| bne .volume_settings_loop

|1A8017:0C49| ret

;===================================================================================================

ExecuteCommand:
|1A8018:0C4A| asl A
|1A8019:0C4B| mov Y, A

|1A801A:0C4C| mov.w A, TrackCommandVectors+1-$C0+Y
|1A801D:0C4F| push A
|1A801E:0C50| mov.w A, TrackCommandVectors+0-$C0+Y
|1A8021:0C53| push A

|1A8022:0C54| mov A, Y
|1A8023:0C55| lsr A
|1A8024:0C56| mov Y, A

|1A8025:0C57| mov.w A, TrackCommandParamCount-$60+Y
|1A8028:0C5A| beq NoParameters

;===================================================================================================

GetTrackByte:
|1A802A:0C5C| mov.b A, ($30+X)

;===================================================================================================

SkipTrackByte:
|1A802C:0C5E| inc.b $30+X
|1A802E:0C60| bne NoParameters

|1A8030:0C62| inc.b $31+X

;===================================================================================================

NoParameters:
|1A8032:0C64| mov Y, A

|1A8033:0C65| ret

;===================================================================================================

TrackCommand_E0_ChangeInstrument:
|1A8034:0C66| mov.w $0211+X, A

|1A8037:0C69| mov Y, A
|1A8038:0C6A| bpl .no_percussion

|1A803A:0C6C| setc
|1A803B:0C6D| sbc.b A, #$CA ; Percussion base
|1A803D:0C6F| clrc
|1A803E:0C70| adc.b A, $5F

.no_percussion
|1A8040:0C72| mov.b Y, #$06
|1A8042:0C74| mul YA
|1A8043:0C75| movw.b $14, YA

|1A8045:0C77| clrc
|1A8046:0C78| adc.b $14, #<INSTRUMENT_DATA
|1A8049:0C7B| adc.b $15, #>INSTRUMENT_DATA

|1A804C:0C7E| mov.b A, $1A
|1A804E:0C80| and.b A, $47
|1A8050:0C82| bne .exit

|1A8052:0C84| push X

|1A8053:0C85| mov A, X
|1A8054:0C86| xcn A
|1A8055:0C87| lsr A
|1A8056:0C88| or.b A, #$04
|1A8058:0C8A| mov X, A

|1A8059:0C8B| mov.b Y, #$00
|1A805B:0C8D| mov.b A, ($14)+Y
|1A805D:0C8F| bpl .normal_sample

|1A805F:0C91| and.b A, #$1F
|1A8061:0C93| and.b $48, #$20
|1A8064:0C96| tset.w $0048, A

|1A8067:0C99| or.b $49, $47

|1A806A:0C9C| mov A, Y
|1A806B:0C9D| bra .resume

.normal_sample
|1A806D:0C9F| mov.b A, $47
|1A806F:0CA1| tclr.w $0049, A

.dsp_write_loop
|1A8072:0CA4| mov.b A, ($14)+Y

.resume
|1A8074:0CA6| mov.w DSPADDR, X
|1A8077:0CA9| mov.w DSPDATA, A

|1A807A:0CAC| inc X
|1A807B:0CAD| inc Y

|1A807C:0CAE| cmp.b Y, #$04
|1A807E:0CB0| bne .dsp_write_loop

|1A8080:0CB2| pop X

|1A8081:0CB3| mov.b A, ($14)+Y
|1A8083:0CB5| mov.w $0221+X, A

|1A8086:0CB8| inc Y
|1A8087:0CB9| mov.b A, ($14)+Y
|1A8089:0CBB| mov.w $0220+X, A

.exit
|1A808C:0CBE| ret

;===================================================================================================

TrackCommand_E1_ChangePan:
|1A808D:0CBF| mov.w $0351+X, A

|1A8090:0CC2| and.b A, #$1F
|1A8092:0CC4| mov.w $0331+X, A

|1A8095:0CC7| mov.b A, #$00
|1A8097:0CC9| mov.w $0330+X, A

|1A809A:0CCC| ret

;===================================================================================================

TrackCommand_E2_PanSlide:
|1A809B:0CCD| mov.b $91+X, A

|1A809D:0CCF| push A
|1A809E:0CD0| call GetTrackByte

|1A80A1:0CD3| mov.w $0350+X, A
|1A80A4:0CD6| setc
|1A80A5:0CD7| sbc.w A, $0331+X

|1A80A8:0CDA| pop X
|1A80A9:0CDB| call MakeFraction

|1A80AC:0CDE| mov.w $0340+X, A
|1A80AF:0CE1| mov A, Y
|1A80B0:0CE2| mov.w $0341+X, A

|1A80B3:0CE5| ret

;===================================================================================================

TrackCommand_E3_SetVibrato:
|1A80B4:0CE6| mov.w $02B0+X, A

|1A80B7:0CE9| call GetTrackByte
|1A80BA:0CEC| mov.w $02A1+X, A

|1A80BD:0CEF| call GetTrackByte

;===================================================================================================

TrackCommand_E4_VibratoOff:
|1A80C0:0CF2| mov.b $B1+X, A
|1A80C2:0CF4| mov.w $02C1+X, A

|1A80C5:0CF7| mov.b A, #$00
|1A80C7:0CF9| mov.w $02B1+X, A

|1A80CA:0CFC| ret

;===================================================================================================

TrackCommand_F0_VibratoChange:
|1A80CB:0CFD| mov.w $02B1+X, A
|1A80CE:0D00| push A

|1A80CF:0D01| mov.b Y, #$00
|1A80D1:0D03| mov.b A, $B1+X

|1A80D3:0D05| pop X

|1A80D4:0D06| div YA, X
|1A80D5:0D07| mov.b X, $44
|1A80D7:0D09| mov.w $02C0+X, A

|1A80DA:0D0C| ret

;===================================================================================================

TrackCommand_E5_GlobalVolume:
|1A80DB:0D0D| mov.w A, $03CA
|1A80DE:0D10| bne .exit

|1A80E0:0D12| mov.w A, $03E1
|1A80E3:0D15| bne .exit

|1A80E5:0D17| mov.b A, #$00
|1A80E7:0D19| movw.b $58, YA

.exit
|1A80E9:0D1B| ret

;===================================================================================================

TrackCommand_E6_GlobalVolumeSlide:
|1A80EA:0D1C| mov.b $5A, A

|1A80EC:0D1E| call GetTrackByte
|1A80EF:0D21| mov.b $5B, A

|1A80F1:0D23| setc
|1A80F2:0D24| sbc.b A, $59
|1A80F4:0D26| mov.b X, $5A
|1A80F6:0D28| call MakeFraction

|1A80F9:0D2B| movw.b $5C, YA

|1A80FB:0D2D| ret

;===================================================================================================

TrackCommand_E7_SetTempo:
|1A80FC:0D2E| mov.b A, #$00
|1A80FE:0D30| movw.b $52, YA

|1A8100:0D32| ret

;===================================================================================================

TrackCommand_E8_TempoSlide:
|1A8101:0D33| mov.b $54, A

|1A8103:0D35| call GetTrackByte
|1A8106:0D38| mov.b $55, A

|1A8108:0D3A| setc
|1A8109:0D3B| sbc.b A, $53
|1A810B:0D3D| mov.b X, $54
|1A810D:0D3F| call MakeFraction

|1A8110:0D42| movw.b $56, YA

|1A8112:0D44| ret

;===================================================================================================

TrackCommand_E9_GlobalTranspose:
|1A8113:0D45| mov.b $50, A

|1A8115:0D47| ret

;===================================================================================================

TrackCommand_EA_ChannelTranspose:
|1A8116:0D48| mov.w $02F0+X, A

|1A8119:0D4B| ret

;===================================================================================================

TrackCommand_EB_SetTremelo:
|1A811A:0D4C| mov.w $02E0+X, A

|1A811D:0D4F| call GetTrackByte
|1A8120:0D52| mov.w $02D1+X, A

|1A8123:0D55| call GetTrackByte

;===================================================================================================

TrackCommand_EC_TremeloOff:
|1A8126:0D58| mov.b $C1+X, A

|1A8128:0D5A| ret

;===================================================================================================

TrackCommand_F1_PitchSlideTo:
|1A8129:0D5B| mov.b A, #$01

|1A812B:0D5D| bra .start

;===================================================================================================

#TrackCommand_F2_PitchSlideFrom:
|1A812D:0D5F| mov.b A, #$00

.start
|1A812F:0D61| mov.w $0290+X, A

|1A8132:0D64| mov A, Y
|1A8133:0D65| mov.w $0281+X, A

|1A8136:0D68| call GetTrackByte
|1A8139:0D6B| mov.w $0280+X, A

|1A813C:0D6E| call GetTrackByte
|1A813F:0D71| mov.w $0291+X, A

|1A8142:0D74| ret

;===================================================================================================

TrackCommand_F3_PitchSlideStop:
|1A8143:0D75| mov.w $0280+X, A

|1A8146:0D78| ret

;===================================================================================================

TrackCommand_ED_ChannelVolume:
|1A8147:0D79| mov.w $0301+X, A

|1A814A:0D7C| mov.b A, #$00
|1A814C:0D7E| mov.w $0300+X, A

|1A814F:0D81| ret

;===================================================================================================

TrackCommand_EE_ChannelVolumeSlide:
|1A8150:0D82| mov.b $90+X, A
|1A8152:0D84| push A

|1A8153:0D85| call GetTrackByte
|1A8156:0D88| mov.w $0320+X, A

|1A8159:0D8B| setc
|1A815A:0D8C| sbc.w A, $0301+X

|1A815D:0D8F| pop X

|1A815E:0D90| call MakeFraction
|1A8161:0D93| mov.w $0310+X, A

|1A8164:0D96| mov A, Y
|1A8165:0D97| mov.w $0311+X, A

|1A8168:0D9A| ret

;===================================================================================================

TrackCommand_F4_FineTuning:
|1A8169:0D9B| mov.w $0381+X, A

|1A816C:0D9E| ret

;===================================================================================================

TrackCommand_EF_CallPart:
|1A816D:0D9F| mov.w $0240+X, A

|1A8170:0DA2| call GetTrackByte
|1A8173:0DA5| mov.w $0241+X, A

|1A8176:0DA8| call GetTrackByte
|1A8179:0DAB| mov.b $80+X, A

|1A817B:0DAD| mov.b A, $30+X
|1A817D:0DAF| mov.w $0230+X, A

|1A8180:0DB2| mov.b A, $31+X
|1A8182:0DB4| mov.w $0231+X, A

;===================================================================================================

IteratePartLoop:
|1A8185:0DB7| mov.w A, $0240+X
|1A8188:0DBA| mov.b $30+X, A

|1A818A:0DBC| mov.w A, $0241+X
|1A818D:0DBF| mov.b $31+X, A

|1A818F:0DC1| ret

;===================================================================================================

TrackCommand_F5_EchoBasicControl:
|1A8190:0DC2| mov.w $03C3, A
|1A8193:0DC5| mov.b $4A, A

|1A8195:0DC7| call GetTrackByte
|1A8198:0DCA| mov.b A, #$00
|1A819A:0DCC| movw.b $60, YA

|1A819C:0DCE| call GetTrackByte
|1A819F:0DD1| mov.b A, #$00
|1A81A1:0DD3| movw.b $62, YA

|1A81A3:0DD5| clr5.b $48

|1A81A5:0DD7| ret

;===================================================================================================

TrackCommand_F8_EchoSlide:
|1A81A6:0DD8| mov.b $68, A

|1A81A8:0DDA| call GetTrackByte
|1A81AB:0DDD| mov.b $69, A

|1A81AD:0DDF| setc
|1A81AE:0DE0| sbc.b A, $61
|1A81B0:0DE2| mov.b X, $68

|1A81B2:0DE4| call MakeFraction
|1A81B5:0DE7| movw.b $64, YA

|1A81B7:0DE9| call GetTrackByte
|1A81BA:0DEC| mov.b $6A, A

|1A81BC:0DEE| setc
|1A81BD:0DEF| sbc.b A, $63
|1A81BF:0DF1| mov.b X, $68

|1A81C1:0DF3| call MakeFraction
|1A81C4:0DF6| movw.b $66, YA

|1A81C6:0DF8| ret

;===================================================================================================

TrackCommand_F6_EchoSilence:
|1A81C7:0DF9| movw.b $60, YA
|1A81C9:0DFB| movw.b $62, YA

|1A81CB:0DFD| set5.b $48

|1A81CD:0DFF| ret

;===================================================================================================

TrackCommand_F7_EchoFilter:
|1A81CE:0E00| call ConfigureEcho

|1A81D1:0E03| call GetTrackByte
|1A81D4:0E06| mov.b $4E, A

|1A81D6:0E08| call GetTrackByte
|1A81D9:0E0B| mov.b Y, #$08
|1A81DB:0E0D| mul YA
|1A81DC:0E0E| mov X, A
|1A81DD:0E0F| mov.b Y, #FIR0

.set_next_filter
|1A81DF:0E11| mov.w A, EchoFilterParameters+X
|1A81E2:0E14| call WriteToDSP

|1A81E5:0E17| inc X

|1A81E6:0E18| mov A, Y
|1A81E7:0E19| clrc
|1A81E8:0E1A| adc.b A, #$10
|1A81EA:0E1C| mov Y, A

|1A81EB:0E1D| bpl .set_next_filter

|1A81ED:0E1F| mov.b X, $44

|1A81EF:0E21| ret

;===================================================================================================

ConfigureEcho:
|1A81F0:0E22| mov.b $4D, A
|1A81F2:0E24| mov.b Y, #EDL

|1A81F4:0E26| mov.w DSPADDR, Y
|1A81F7:0E29| mov.w A, DSPDATA

|1A81FA:0E2C| cmp.b A, $4D
|1A81FC:0E2E| beq .edl_same

|1A81FE:0E30| and.b A, #$0F
|1A8200:0E32| eor.b A, #$FF
|1A8202:0E34| bbc7.b $4C, .buffer_ready

|1A8205:0E37| clrc
|1A8206:0E38| adc.b A, $4C

.buffer_ready
|1A8208:0E3A| mov.b $4C, A
|1A820A:0E3C| mov.b Y, #$04

.write_register
|1A820C:0E3E| mov.w A, RegisterList-1+Y
|1A820F:0E41| mov.w DSPADDR, A

|1A8212:0E44| mov.b A, #$00
|1A8214:0E46| mov.w DSPDATA, A

|1A8217:0E49| dbnz Y, .write_register

|1A8219:0E4B| mov.b A, $48
|1A821B:0E4D| or.b A, #$20
|1A821D:0E4F| mov.b Y, #FLG
|1A821F:0E51| call WriteToDSP

|1A8222:0E54| mov.b A, $4D
|1A8224:0E56| mov.b Y, #EDL
|1A8226:0E58| call WriteToDSP

.edl_same
|1A8229:0E5B| asl A
|1A822A:0E5C| asl A
|1A822B:0E5D| asl A
|1A822C:0E5E| eor.b A, #$FF
|1A822E:0E60| setc
|1A822F:0E61| adc.b A, #>SONG_POINTERS
|1A8231:0E63| mov.b Y, #ESA

|1A8233:0E65| jmp WriteToDSP

;===================================================================================================

TrackCommand_FA_PercussionOffset:
|1A8236:0E68| mov.b $5F, A

|1A8238:0E6A| ret

;===================================================================================================
; Unused
;===================================================================================================
DummyCommand:
|1A8239:0E6B| call SkipTrackByte

|1A823C:0E6E| ret

;===================================================================================================
; Unused
;===================================================================================================
ChannelStop:
|1A823D:0E6F| inc A
|1A823E:0E70| mov.w $03FF+X, A

|1A8241:0E73| ret

;===================================================================================================
; Unused
;===================================================================================================
SongStop:
|1A8242:0E74| inc A

;===================================================================================================
; Unused
;===================================================================================================
SongContinue:
|1A8243:0E75| mov.b $1B, A

|1A8245:0E77| jmp Song_NewJam.key_off

;===================================================================================================

PitchSlide:
|1A8248:0E7A| mov.b A, $A0+X
|1A824A:0E7C| bne .exit

|1A824C:0E7E| mov.b A, ($30+X)
|1A824E:0E80| cmp.b A, #$F9
|1A8250:0E82| bne .exit

|1A8252:0E84| mov.b A, $47
|1A8254:0E86| and.b A, $1A
|1A8256:0E88| beq .do_pitch_slide

|1A8258:0E8A| mov.b $10, #$04

.skip_loop
|1A825B:0E8D| call SkipTrackByte

|1A825E:0E90| dbnz.b $10, .skip_loop
|1A8261:0E93| bra .exit

.do_pitch_slide
|1A8263:0E95| call SkipTrackByte
|1A8266:0E98| call GetTrackByte

;---------------------------------------------------------------------------------------------------

#TrackCommand_F9_SlideOnce:
|1A8269:0E9B| mov.b $A1+X, A

|1A826B:0E9D| call GetTrackByte
|1A826E:0EA0| mov.b $A0+X, A

|1A8270:0EA2| call GetTrackByte
|1A8273:0EA5| clrc
|1A8274:0EA6| adc.b A, $50
|1A8276:0EA8| adc.w A, $02F0+X

.calc_frames
|1A8279:0EAB| and.b A, #$7F
|1A827B:0EAD| mov.w $0380+X, A

|1A827E:0EB0| setc
|1A827F:0EB1| sbc.w A, $0361+X
|1A8282:0EB4| mov.b Y, $A0+X

|1A8284:0EB6| push Y
|1A8285:0EB7| pop X
|1A8286:0EB8| call MakeFraction

|1A8289:0EBB| mov.w $0370+X, A

|1A828C:0EBE| mov A, Y
|1A828D:0EBF| mov.w $0371+X, A

.exit
|1A8290:0EC2| ret

;===================================================================================================

GetTempPitch:
|1A8291:0EC3| mov.w A, $0361+X
|1A8294:0EC6| mov.b $11, A

|1A8296:0EC8| mov.w A, $0360+X
|1A8299:0ECB| mov.b $10, A

|1A829B:0ECD| ret

;===================================================================================================

MakeFraction:
|1A829C:0ECE| notc
|1A829D:0ECF| ror.b $12
|1A829F:0ED1| bpl .positive_input

|1A82A1:0ED3| eor.b A, #$FF
|1A82A3:0ED5| inc A

.positive_input
|1A82A4:0ED6| mov.b Y, #$00
|1A82A6:0ED8| div YA, X

|1A82A7:0ED9| push A

|1A82A8:0EDA| mov.b A, #$00
|1A82AA:0EDC| div YA, X

|1A82AB:0EDD| pop Y

|1A82AC:0EDE| mov.b X, $44

;---------------------------------------------------------------------------------------------------

#MakeFraction_abs:
|1A82AE:0EE0| bbc7.b $12, .keep_positive

|1A82B1:0EE3| movw.b $14, YA

|1A82B3:0EE5| movw.b YA, $0E
|1A82B5:0EE7| subw.b YA, $14

.keep_positive
|1A82B7:0EE9| ret

;===================================================================================================

TrackCommandVectors:
|1A82B8:0EEA| dw TrackCommand_E0_ChangeInstrument
|1A82BA:0EEC| dw TrackCommand_E1_ChangePan
|1A82BC:0EEE| dw TrackCommand_E2_PanSlide
|1A82BE:0EF0| dw TrackCommand_E3_SetVibrato

|1A82C0:0EF2| dw TrackCommand_E4_VibratoOff
|1A82C2:0EF4| dw TrackCommand_E5_GlobalVolume
|1A82C4:0EF6| dw TrackCommand_E6_GlobalVolumeSlide
|1A82C6:0EF8| dw TrackCommand_E7_SetTempo

|1A82C8:0EFA| dw TrackCommand_E8_TempoSlide
|1A82CA:0EFC| dw TrackCommand_E9_GlobalTranspose
|1A82CC:0EFE| dw TrackCommand_EA_ChannelTranspose
|1A82CE:0F00| dw TrackCommand_EB_SetTremelo

|1A82D0:0F02| dw TrackCommand_EC_TremeloOff
|1A82D2:0F04| dw TrackCommand_ED_ChannelVolume
|1A82D4:0F06| dw TrackCommand_EE_ChannelVolumeSlide
|1A82D6:0F08| dw TrackCommand_EF_CallPart

|1A82D8:0F0A| dw TrackCommand_F0_VibratoChange
|1A82DA:0F0C| dw TrackCommand_F1_PitchSlideTo
|1A82DC:0F0E| dw TrackCommand_F2_PitchSlideFrom
|1A82DE:0F10| dw TrackCommand_F3_PitchSlideStop

|1A82E0:0F12| dw TrackCommand_F4_FineTuning
|1A82E2:0F14| dw TrackCommand_F5_EchoBasicControl
|1A82E4:0F16| dw TrackCommand_F6_EchoSilence
|1A82E6:0F18| dw TrackCommand_F7_EchoFilter

|1A82E8:0F1A| dw TrackCommand_F8_EchoSlide
|1A82EA:0F1C| dw TrackCommand_F9_SlideOnce
|1A82EC:0F1E| dw TrackCommand_FA_PercussionOffset

;===================================================================================================

TrackCommandParamCount:
|1A82EE:0F20| db 1 ; E0
|1A82EF:0F21| db 1 ; E1
|1A82F0:0F22| db 2 ; E2
|1A82F1:0F23| db 3 ; E3
|1A82F2:0F24| db 0 ; E4
|1A82F3:0F25| db 1 ; E5
|1A82F4:0F26| db 2 ; E6
|1A82F5:0F27| db 1 ; E7
|1A82F6:0F28| db 2 ; E8
|1A82F7:0F29| db 1 ; E9
|1A82F8:0F2A| db 1 ; EA
|1A82F9:0F2B| db 3 ; EB
|1A82FA:0F2C| db 0 ; EC
|1A82FB:0F2D| db 1 ; ED
|1A82FC:0F2E| db 2 ; EE
|1A82FD:0F2F| db 3 ; EF
|1A82FE:0F30| db 1 ; F0
|1A82FF:0F31| db 3 ; F1
|1A8300:0F32| db 3 ; F2
|1A8301:0F33| db 0 ; F3
|1A8302:0F34| db 1 ; F4
|1A8303:0F35| db 3 ; F5
|1A8304:0F36| db 0 ; F6
|1A8305:0F37| db 3 ; F7
|1A8306:0F38| db 3 ; F8
|1A8307:0F39| db 3 ; F9
|1A8308:0F3A| db 1 ; FA

; extraneous
|1A8309:0F3B| db 2 ; FB
|1A830A:0F3C| db 0 ; FC
|1A830B:0F3D| db 0 ; FD
|1A830C:0F3E| db 0 ; FE

;===================================================================================================

WritePitch:
|1A830D:0F3F| mov.b A, $90+X
|1A830F:0F41| beq .no_volume_slide

|1A8311:0F43| mov.b A, #<$0300
|1A8313:0F45| mov.b Y, #>$0300
|1A8315:0F47| dec.b $90+X

|1A8317:0F49| call IncrementSlide

.no_volume_slide
|1A831A:0F4C| mov.b Y, $C1+X
|1A831C:0F4E| beq .no_tremelo

|1A831E:0F50| mov.w A, $02E0+X
|1A8321:0F53| cbne.b $C0+X, .tremelo_not_ready

|1A8324:0F56| or.b $5E, $47

|1A8327:0F59| mov.w A, $02D0+X
|1A832A:0F5C| bpl .tremelo_accumulate

|1A832C:0F5E| inc Y
|1A832D:0F5F| bne .tremelo_accumulate

|1A832F:0F61| mov.b A, #$80
|1A8331:0F63| bra .skip_accumulate

.tremelo_accumulate
|1A8333:0F65| clrc
|1A8334:0F66| adc.w A, $02D1+X

.skip_accumulate
|1A8337:0F69| mov.w $02D0+X, A
|1A833A:0F6C| call VolumeModulation.external
|1A833D:0F6F| bra .handle_pan_slide

.tremelo_not_ready
|1A833F:0F71| inc.b $C0+X

.no_tremelo
|1A8341:0F73| mov.b A, #$FF
|1A8343:0F75| call VolumeModulation.final_volume

.handle_pan_slide
|1A8346:0F78| mov.b A, $91+X
|1A8348:0F7A| beq .no_pan_slide

|1A834A:0F7C| mov.b A, #<$0330
|1A834C:0F7E| mov.b Y, #>$0330
|1A834E:0F80| dec.b $91+X

|1A8350:0F82| call IncrementSlide

.no_pan_slide
|1A8353:0F85| mov.b A, $47
|1A8355:0F87| and.b A, $5E
|1A8357:0F89| beq .exit

|1A8359:0F8B| mov.w A, $0331+X
|1A835C:0F8E| mov Y, A

|1A835D:0F8F| mov.w A, $0330+X
|1A8360:0F92| movw.b $10, YA

;===================================================================================================

#WritePitch_external:
|1A8362:0F94| mov A, X
|1A8363:0F95| xcn A
|1A8364:0F96| lsr A
|1A8365:0F97| mov.b $12, A

.vol_right
|1A8367:0F99| mov.b Y, $11
|1A8369:0F9B| mov.w A, LogisticFunc+1+Y
|1A836C:0F9E| setc
|1A836D:0F9F| sbc.w A, LogisticFunc+0+Y

|1A8370:0FA2| mov.b Y, $10
|1A8372:0FA4| mul YA

|1A8373:0FA5| mov A, Y
|1A8374:0FA6| mov.b Y, $11
|1A8376:0FA8| clrc
|1A8377:0FA9| adc.w A, LogisticFunc+0+Y
|1A837A:0FAC| mov Y, A

|1A837B:0FAD| mov.w A, $0321+X
|1A837E:0FB0| mul YA

|1A837F:0FB1| mov.w A, $0351+X
|1A8382:0FB4| asl A

|1A8383:0FB5| bbc0.b $12, .vol_left

|1A8386:0FB8| asl A

.vol_left
|1A8387:0FB9| mov A, Y
|1A8388:0FBA| bcc .no_phase_inversion

|1A838A:0FBC| eor.b A, #$FF
|1A838C:0FBE| inc A

.no_phase_inversion
|1A838D:0FBF| mov.b Y, $12
|1A838F:0FC1| call WriteToDSP_Checked

|1A8392:0FC4| mov.b Y, #$14
|1A8394:0FC6| mov.b A, #$00

|1A8396:0FC8| subw.b YA, $10
|1A8398:0FCA| movw.b $10, YA

|1A839A:0FCC| inc.b $12
|1A839C:0FCE| bbc1.b $12, .vol_right

.exit
|1A839F:0FD1| ret

;===================================================================================================

IncrementSlide:
|1A83A0:0FD2| or.b $5E, $47

.quiet
|1A83A3:0FD5| movw.b $14, YA
|1A83A5:0FD7| movw.b $16, YA

|1A83A7:0FD9| push X
|1A83A8:0FDA| pop Y

|1A83A9:0FDB| clrc
|1A83AA:0FDC| bne .still_sliding

|1A83AC:0FDE| adc.b $16, #$1F

|1A83AF:0FE1| mov.b A, #$00
|1A83B1:0FE3| mov.b ($14)+Y, A

|1A83B3:0FE5| inc Y
|1A83B4:0FE6| bra .add

.still_sliding
|1A83B6:0FE8| adc.b $16, #$10
|1A83B9:0FEB| call .add_slide_amount

|1A83BC:0FEE| inc Y

.add_slide_amount
|1A83BD:0FEF| mov.b A, ($14)+Y

.add
|1A83BF:0FF1| adc.b A, ($16)+Y
|1A83C1:0FF3| mov.b ($14)+Y, A

|1A83C3:0FF5| ret

;===================================================================================================

Tracker:
|1A83C4:0FF6| mov.b A, $71+X
|1A83C6:0FF8| beq .time_left

|1A83C8:0FFA| dec.b $71+X
|1A83CA:0FFC| beq .times_up

|1A83CC:0FFE| mov.b A, #$02
|1A83CE:1000| cbne.b $70+X, .time_left

.times_up
|1A83D1:1003| mov.b A, $80+X
|1A83D3:1005| mov.b $17, A

|1A83D5:1007| mov.b A, $30+X
|1A83D7:1009| mov.b Y, $31+X

.load_pointer
|1A83D9:100B| movw.b $14, YA
|1A83DB:100D| mov.b Y, #$00

.next_byte
|1A83DD:100F| mov.b A, ($14)+Y
|1A83DF:1011| beq .terminate_track
|1A83E1:1013| bmi .command

.read_track_data
|1A83E3:1015| inc Y
|1A83E4:1016| bmi .call_loop_over

|1A83E6:1018| mov.b A, ($14)+Y
|1A83E8:101A| bpl .read_track_data

.command
|1A83EA:101C| cmp.b A, #$C8 ; tie
|1A83EC:101E| beq .time_left

|1A83EE:1020| cmp.b A, #$EF ; call part
|1A83F0:1022| beq .call_loop_command

|1A83F2:1024| cmp.b A, #$E0 ; instrument change
|1A83F4:1026| bcc .call_loop_over

|1A83F6:1028| push Y
|1A83F7:1029| mov Y, A

|1A83F8:102A| pop A
|1A83F9:102B| adc.w A, TrackCommandParamCount-$E0+Y
|1A83FC:102E| mov Y, A

|1A83FD:102F| bra .next_byte

;---------------------------------------------------------------------------------------------------

.terminate_track
|1A83FF:1031| mov.b A, $17
|1A8401:1033| beq .call_loop_over

|1A8403:1035| dec.b $17
|1A8405:1037| bne .call_loop_notdone

|1A8407:1039| mov.w A, $0231+X
|1A840A:103C| push A

|1A840B:103D| mov.w A, $0230+X
|1A840E:1040| pop Y

|1A840F:1041| bra .load_pointer

.call_loop_notdone
|1A8411:1043| mov.w A, $0241+X
|1A8414:1046| push A

|1A8415:1047| mov.w A, $0240+X
|1A8418:104A| pop Y

|1A8419:104B| bra .load_pointer

.call_loop_command
|1A841B:104D| inc Y
|1A841C:104E| mov.b A, ($14)+Y

|1A841E:1050| push A
|1A841F:1051| inc Y

|1A8420:1052| mov.b A, ($14)+Y

|1A8422:1054| mov Y, A
|1A8423:1055| pop A

|1A8424:1056| bra .load_pointer

.call_loop_over
|1A8426:1058| mov.b A, $47
|1A8428:105A| mov.b Y, #KOFF
|1A842A:105C| call WriteToDSP_Checked

.time_left
|1A842D:105F| clr7.b $13

|1A842F:1061| mov.b A, $A0+X
|1A8431:1063| beq .no_pitch_slide

|1A8433:1065| mov.b A, $A1+X
|1A8435:1067| beq .delay_finished

|1A8437:1069| dec.b $A1+X
|1A8439:106B| bra .no_pitch_slide

.delay_finished
|1A843B:106D| mov.b A, $1A
|1A843D:106F| and.b A, $47
|1A843F:1071| bne .no_pitch_slide

|1A8441:1073| set7.b $13

|1A8443:1075| mov.b A, #<$0360
|1A8445:1077| mov.b Y, #>$0360

|1A8447:1079| dec.b $A0+X
|1A8449:107B| call IncrementSlide.quiet

.no_pitch_slide
|1A844C:107E| call GetTempPitch

|1A844F:1081| mov.b A, $B1+X
|1A8451:1083| beq Tracker_no_vibrato

|1A8453:1085| mov.w A, $02B0+X
|1A8456:1088| cbne.b $B0+X, .set_point_wait

|1A8459:108B| mov.w A, $0100+X
|1A845C:108E| cmp.w A, $02B1+X
|1A845F:1091| bne .increment

|1A8461:1093| mov.w A, $02C1+X
|1A8464:1096| bra .set_intensity

.increment
|1A8466:1098| setp
|1A8467:1099| inc.b $0100+X
|1A8469:109B| clrp

|1A846A:109C| mov Y, A
|1A846B:109D| beq .initializing

|1A846D:109F| mov.b A, $B1+X

.initializing
|1A846F:10A1| clrc
|1A8470:10A2| adc.w A, $02C0+X

.set_intensity
|1A8473:10A5| mov.b $B1+X, A
|1A8475:10A7| mov.w A, $02A0+X

|1A8478:10AA| clrc
|1A8479:10AB| adc.w A, $02A1+X
|1A847C:10AE| mov.w $02A0+X, A

;---------------------------------------------------------------------------------------------------

#Tracker_handle_pitch:
|1A847F:10B1| mov.b $12, A
|1A8481:10B3| asl A
|1A8482:10B4| asl A
|1A8483:10B5| bcc .low_enough

|1A8485:10B7| eor.b A, #$FF

.low_enough
|1A8487:10B9| mov Y, A

|1A8488:10BA| mov.b A, $B1+X
|1A848A:10BC| cmp.b A, #$F1
|1A848C:10BE| bcc .too_small

|1A848E:10C0| and.b A, #$0F
|1A8490:10C2| mul YA

|1A8491:10C3| bra .continue

.too_small
|1A8493:10C5| mul YA
|1A8494:10C6| mov A, Y
|1A8495:10C7| mov.b Y, #$00

.continue
|1A8497:10C9| call AdjustPitch

.change_pitch
|1A849A:10CC| jmp HandleNote_external

.set_point_wait
|1A849D:10CF| inc.b $B0+X

;---------------------------------------------------------------------------------------------------

#Tracker_no_vibrato:
|1A849F:10D1| bbs7.b $13, .change_pitch

|1A84A2:10D4| ret

;===================================================================================================

BackgroundTasks:
|1A84A3:10D5| clr7.b $13

|1A84A5:10D7| mov.b A, $C1+X
|1A84A7:10D9| beq .no_tremelo

|1A84A9:10DB| mov.w A, $02E0+X
|1A84AC:10DE| cbne.b $C0+X, .no_tremelo

|1A84AF:10E1| call VolumeModulation

.no_tremelo
|1A84B2:10E4| mov.w A, $0331+X
|1A84B5:10E7| mov Y, A

|1A84B6:10E8| mov.w A, $0330+X
|1A84B9:10EB| movw.b $10, YA

|1A84BB:10ED| mov.b A, $91+X
|1A84BD:10EF| beq .no_pan_slide

|1A84BF:10F1| mov.w A, $0341+X
|1A84C2:10F4| mov Y, A

|1A84C3:10F5| mov.w A, $0340+X
|1A84C6:10F8| call AdjustPitchByFrames

.no_pan_slide
|1A84C9:10FB| bbc7.b $13, .pitch_unchanged

|1A84CC:10FE| call WritePitch_external

.pitch_unchanged
|1A84CF:1101| clr7.b $13

|1A84D1:1103| call GetTempPitch

|1A84D4:1106| mov.b A, $A0+X
|1A84D6:1108| beq .no_pitch_slide

|1A84D8:110A| mov.b A, $A1+X
|1A84DA:110C| bne .no_pitch_slide

|1A84DC:110E| mov.w A, $0371+X
|1A84DF:1111| mov Y, A

|1A84E0:1112| mov.w A, $0370+X
|1A84E3:1115| call AdjustPitchByFrames

.no_pitch_slide
|1A84E6:1118| mov.b A, $B1+X
|1A84E8:111A| beq Tracker_no_vibrato

|1A84EA:111C| mov.w A, $02B0+X
|1A84ED:111F| cbne.b $B0+X, Tracker_no_vibrato

|1A84F0:1122| mov.b Y, $51
|1A84F2:1124| mov.w A, $02A1+X

|1A84F5:1127| mul YA
|1A84F6:1128| mov A, Y
|1A84F7:1129| clrc
|1A84F8:112A| adc.w A, $02A0+X

|1A84FB:112D| jmp Tracker_handle_pitch

;===================================================================================================

AdjustPitchByFrames:
|1A84FE:1130| set7.b $13

|1A8500:1132| mov.b $12, Y
|1A8502:1134| call MakeFraction_abs

|1A8505:1137| push Y

|1A8506:1138| mov.b Y, $51
|1A8508:113A| mul YA
|1A8509:113B| mov.b $14, Y
|1A850B:113D| mov.b $15, #$00

|1A850E:1140| mov.b Y, $51

|1A8510:1142| pop A
|1A8511:1143| mul YA
|1A8512:1144| addw.b YA, $14

;===================================================================================================

AdjustPitch:
|1A8514:1146| call MakeFraction_abs

|1A8517:1149| addw.b YA, $10
|1A8519:114B| movw.b $10, YA

|1A851B:114D| ret

;===================================================================================================

VolumeModulation:
|1A851C:114E| set7.b $13

|1A851E:1150| mov.b Y, $51
|1A8520:1152| mov.w A, $02D1+X

|1A8523:1155| mul YA
|1A8524:1156| mov A, Y
|1A8525:1157| clrc
|1A8526:1158| adc.w A, $02D0+X

;---------------------------------------------------------------------------------------------------

.external
|1A8529:115B| asl A
|1A852A:115C| bcc .no_phase_invert

|1A852C:115E| eor.b A, #$FF

.no_phase_invert
|1A852E:1160| mov.b Y, $C1+X
|1A8530:1162| mul YA
|1A8531:1163| mov A, Y
|1A8532:1164| eor.b A, #$FF

.final_volume
|1A8534:1166| mov.b Y, $59
|1A8536:1168| mul YA

|1A8537:1169| mov.w A, $0210+X
|1A853A:116C| mul YA

|1A853B:116D| mov.w A, $0301+X
|1A853E:1170| mul YA

|1A853F:1171| mov A, Y
|1A8540:1172| mul YA

|1A8541:1173| mov A, Y
|1A8542:1174| mov.w $0321+X, A

|1A8545:1177| ret

;===================================================================================================

LogisticFunc:
|1A8546:1178| db $00, $01, $03, $07, $0D, $15, $1E, $29
|1A854E:1180| db $34, $42, $51, $5E, $67, $6E, $73, $77
|1A8556:1188| db $7A, $7C, $7D, $7E, $7F

;===================================================================================================
; Contains values for each of the 8 bytes of filter
;===================================================================================================
EchoFilterParameters:
|1A855B:118D| db $7F, $00, $00, $00, $00, $00, $00, $00
|1A8563:1195| db $58, $BF, $DB, $F0, $FE, $07, $0C, $0C
|1A856B:119D| db $0C, $21, $2B, $2B, $13, $FE, $F3, $F9
|1A8573:11A5| db $34, $33, $00, $D9, $E5, $01, $FC, $EB

;===================================================================================================

RegisterList:
|1A857B:11AD| db EVOLL
|1A857C:11AE| db EVOLR
|1A857D:11AF| db EFB
|1A857E:11B0| db EON
|1A857F:11B1| db FLG
|1A8580:11B2| db KON
|1A8581:11B3| db KOFF
|1A8582:11B4| db NON
|1A8583:11B5| db PMON
|1A8584:11B6| db KOFF

;===================================================================================================

LoadValueFrom:
|1A8585:11B7| db $61 ; EVOLL
|1A8586:11B8| db $63 ; EVOLR
|1A8587:11B9| db $4E ; EFB
|1A8588:11BA| db $4A ; EON
|1A8589:11BB| db $48 ; FLG
|1A858A:11BC| db $45 ; KON
|1A858B:11BD| db $0E ; KOFF
|1A858C:11BE| db $49 ; NON
|1A858D:11BF| db $4B ; PMON
|1A858E:11C0| db $46 ; KOFF

;===================================================================================================

TuningValues:
|1A858F:11C1| dw $085F
|1A8591:11C3| dw $08DE
|1A8593:11C5| dw $0965
|1A8595:11C7| dw $09F4
|1A8597:11C9| dw $0A8C
|1A8599:11CB| dw $0B2C
|1A859B:11CD| dw $0BD6
|1A859D:11CF| dw $0C8B
|1A859F:11D1| dw $0D4A
|1A85A1:11D3| dw $0E14
|1A85A3:11D5| dw $0EEA
|1A85A5:11D7| dw $0FCD
|1A85A7:11D9| dw $10BE

;===================================================================================================

UNREACHABLE_11DB:
|1A85A9:11DB| db $2A
|1A85AA:11DC| db $56
|1A85AB:11DD| db $65
|1A85AC:11DE| db $72
|1A85AD:11DF| db $20
|1A85AE:11E0| db $53
|1A85AF:11E1| db $31
|1A85B0:11E2| db $2E
|1A85B1:11E3| db $32
|1A85B2:11E4| db $30
|1A85B3:11E5| db $2A

;===================================================================================================

Data_Loader:
|1A85B4:11E6| mov.b A, #$AA
|1A85B6:11E8| mov.w CPUIO0, A

|1A85B9:11EB| mov.b A, #$BB
|1A85BB:11ED| mov.w CPUIO1, A

.wait_data_start
|1A85BE:11F0| mov.w A, CPUIO0
|1A85C1:11F3| cmp.b A, #$CC
|1A85C3:11F5| bne .wait_data_start
|1A85C5:11F7| bra .begin_transfer

.loop
|1A85C7:11F9| mov.w Y, CPUIO0
|1A85CA:11FC| bne .loop

.reread
|1A85CC:11FE| cmp.w Y, CPUIO0
|1A85CF:1201| bne .coherence_error

|1A85D1:1203| mov.w A, CPUIO1
|1A85D4:1206| mov.w CPUIO0, Y
|1A85D7:1209| mov.b ($14)+Y, A

|1A85D9:120B| inc Y
|1A85DA:120C| bne .reread

|1A85DC:120E| inc.b $15
|1A85DE:1210| bra .reread

.coherence_error
|1A85E0:1212| bpl .reread

|1A85E2:1214| cmp.w Y, CPUIO0
|1A85E5:1217| bpl .reread

.begin_transfer
|1A85E7:1219| mov.w A, CPUIO2
|1A85EA:121C| mov.w Y, CPUIO3
|1A85ED:121F| movw.b $14, YA

|1A85EF:1221| mov.w Y, CPUIO0
|1A85F2:1224| mov.w A, CPUIO1
|1A85F5:1227| mov.w CPUIO0, Y
|1A85F8:122A| bne .loop

; clear ports 0123, start timer 0
|1A85FA:122C| mov.b X, #$31
|1A85FC:122E| mov.w CONTROL, X

|1A85FF:1231| ret

;===================================================================================================

SFX2_HandleEcho:
|1A8600:1232| mov.b A, $02
|1A8602:1234| and.b A, #$3F
|1A8604:1236| mov X, A

|1A8605:1237| mov.w A, SFX2_Echo-1+X
|1A8608:123A| mov.w $03E2, A

|1A860B:123D| mov.b Y, #$0E
|1A860D:123F| mov.b X, #$80
|1A860F:1241| mov.w $03C1, X

.loop_back
|1A8612:1244| mov.w A, $03CB
|1A8615:1247| and.w A, $03C1
|1A8618:124A| beq .SFX2_next_slot

|1A861A:124C| clrc
|1A861B:124D| mov.w A, $03A0+Y
|1A861E:1250| adc.w A, $03D0+Y

|1A8621:1253| cmp.b A, $02
|1A8623:1255| beq SFX3_HandleEcho.match

.SFX2_next_slot
|1A8625:1257| dec Y
|1A8626:1258| dec Y

|1A8627:1259| lsr.w $03C1
|1A862A:125C| bne .loop_back

|1A862C:125E| bra SFX3_HandleEcho.no_slot

;===================================================================================================

SFX3_HandleEcho:
|1A862E:1260| mov.b A, $03
|1A8630:1262| and.b A, #$3F
|1A8632:1264| mov X, A

|1A8633:1265| mov.w A, SFX3_Echo-1+X
|1A8636:1268| mov.w $03E2, A

|1A8639:126B| mov.b Y, #$0E
|1A863B:126D| mov.b X, #$80
|1A863D:126F| mov.w $03C1, X

.SFX3_loop_point
|1A8640:1272| mov.w A, $03CD
|1A8643:1275| and.w A, $03C1
|1A8646:1278| beq .SFX3_next_slot

|1A8648:127A| clrc
|1A8649:127B| mov.w A, $03A0+Y
|1A864C:127E| adc.w A, $03D0+Y

|1A864F:1281| cmp.b A, $03
|1A8651:1283| beq .match

.SFX3_next_slot
|1A8653:1285| dec Y
|1A8654:1286| dec Y

|1A8655:1287| lsr.w $03C1
|1A8658:128A| bne .SFX3_loop_point
|1A865A:128C| bra .no_slot

.match
|1A865C:128E| mov.w $03C0, Y
|1A865F:1291| bra .enabled

.no_slot
|1A8661:1293| clrc
|1A8662:1294| mov.b X, #$001A ; [DUMB] just check the address directly next time...

|1A8664:1296| mov.b A, #$80
|1A8666:1298| mov.w $03C1, A

|1A8669:129B| mov.b Y, #$0E

.loop_back_2
|1A866B:129D| and A, (X)
|1A866C:129E| beq .enabled

|1A866E:12A0| dec Y
|1A866F:12A1| dec Y

|1A8670:12A2| lsr.w $03C1
|1A8673:12A5| lsr A
|1A8674:12A6| bcc .loop_back_2

.enabled
|1A8676:12A8| mov.w $03C0, Y
|1A8679:12AB| mov.w $03C8, Y

|1A867C:12AE| mov.w A, $03C1
|1A867F:12B1| mov.w $03C9, A

|1A8682:12B4| or.b A, $1A
|1A8684:12B6| mov.b $1A, A

|1A8686:12B8| mov.w X, $03E2
|1A8689:12BB| beq .disabled

|1A868B:12BD| or.w A, $03E3
|1A868E:12C0| mov.w $03E3, A

.disabled
|1A8691:12C3| mov.w A, $0004
|1A8694:12C6| and.b A, #$10
|1A8696:12C8| beq .lower_bank

|1A8698:12CA| mov.w A, $03C1
|1A869B:12CD| and.w A, $03E3
|1A869E:12D0| beq .echo_off

.lower_bank
|1A86A0:12D2| mov.w A, $03C1
|1A86A3:12D5| and.b A, $4A
|1A86A5:12D7| beq .echo_off

|1A86A7:12D9| mov.b A, $4A
|1A86A9:12DB| setc
|1A86AA:12DC| sbc.w A, $03C1
|1A86AD:12DF| mov.b $4A, A

|1A86AF:12E1| mov.b Y, #EON
|1A86B1:12E3| call WriteToDSP

.echo_off
|1A86B4:12E6| ret

;===================================================================================================

UNREACHABLE_1A86B5:
|1A86B5:12E7| mov.w X, $03C4
|1A86B8:12EA| mov.w $03C0, X

|1A86BB:12ED| mov.w Y, $03C5
|1A86BE:12F0| mov.w $03C1, Y

|1A86C1:12F3| mov.w A, $03C1
|1A86C4:12F6| mov.b Y, #KOFF
|1A86C6:12F8| call WriteToDSP

|1A86C9:12FB| call ResumeMusic

|1A86CC:12FE| ret

;===================================================================================================

InitSFX1:
|1A86CD:12FF| mov.b $05, A
|1A86CF:1301| cmp.b A, #$05
|1A86D1:1303| bne .initialize

|1A86D3:1305| mov.w X, $03CF
|1A86D6:1308| bne .initialize

|1A86D8:130A| ret

.initialize
|1A86D9:130B| mov.b X, #$00
|1A86DB:130D| mov.w $03E4, X

|1A86DE:1310| mov.b X, #$0E

|1A86E0:1312| mov.b A, $01
|1A86E2:1314| mov.w $03A0+X, A

|1A86E5:1317| mov.b A, #$03
|1A86E7:1319| mov.w $03A1+X, A

|1A86EA:131C| mov.b A, #$00
|1A86EC:131E| mov.w $0280+X, A

|1A86EF:1321| mov.b A, #$80
|1A86F1:1323| mov.w $03CF, A

|1A86F4:1326| mov.b Y, #KOFF
|1A86F6:1328| call WriteToDSP

|1A86F9:132B| set7.b $1A

|1A86FB:132D| mov.b X, $01
|1A86FD:132F| mov.w A, SFX1_Accomp-1+X

|1A8700:1332| mov.b $01, A
|1A8702:1334| bne .also_use_chan_6

|1A8704:1336| ret

.also_use_chan_6
|1A8705:1337| mov.b X, #$0C

|1A8707:1339| mov.b A, $01
|1A8709:133B| mov.w $03A0+X, A

|1A870C:133E| mov.b A, #$03
|1A870E:1340| mov.w $03A1+X, A

|1A8711:1343| mov.b A, #$00
|1A8713:1345| mov.w $0280+X, A

|1A8716:1348| set6.b $1A

|1A8718:134A| mov.b A, #$40
|1A871A:134C| mov.b Y, #KOFF
|1A871C:134E| call WriteToDSP

|1A871F:1351| mov.b A, #$C0
|1A8721:1353| mov.w $03CF, A

|1A8724:1356| or.w A, $03E3
|1A8727:1359| mov.w $03E3, A

|1A872A:135C| mov.b A, #$3F
|1A872C:135E| and.w A, $03CB
|1A872F:1361| mov.w $03CB, A

|1A8732:1364| mov.b A, #$3F
|1A8734:1366| and.w A, $03CD
|1A8737:1369| mov.w $03CD, A

|1A873A:136C| ret

;===================================================================================================

ProcessSFX1Input:
|1A873B:136D| mov.b A, $01
|1A873D:136F| bmi .SFX1_negative

|1A873F:1371| bne InitSFX1

|1A8741:1373| ret

.SFX1_negative
|1A8742:1374| mov.b $05, A

|1A8744:1376| mov.w A, $03CF
|1A8747:1379| beq .channels_not_used

|1A8749:137B| mov.b A, #$78
|1A874B:137D| mov.w $03E4, A

.channels_not_used
|1A874E:1380| ret

;===================================================================================================

SFX1_FadeHandler:
|1A874F:1381| dec.w $03E4

|1A8752:1384| mov.w A, $03E4
|1A8755:1387| bne .still_fading

|1A8757:1389| mov.b A, #$05
|1A8759:138B| mov.b $01, A
|1A875B:138D| call InitSFX1.initialize

|1A875E:1390| mov.b A, #$00
|1A8760:1392| mov.b $01, A

|1A8762:1394| ret

.still_fading
|1A8763:1395| lsr A
|1A8764:1396| mov.w $03E5, A
|1A8767:1399| mov.b Y, #V7VOLL
|1A8769:139B| call WriteToDSP

|1A876C:139E| inc Y ; V7VOLR
|1A876D:139F| mov.w A, $03E5
|1A8770:13A2| call WriteToDSP

|1A8773:13A5| mov.b Y, #V6VOLL
|1A8775:13A7| mov.w A, $03E5
|1A8778:13AA| call WriteToDSP

|1A877B:13AD| inc Y ; V6VOLR
|1A877C:13AE| mov.w A, $03E5
|1A877F:13B1| call WriteToDSP

|1A8782:13B4| jmp HandleSFX1.no_fadeout

;===================================================================================================

ProcessSFX2Input:
|1A8785:13B7| mov.b A, $02
|1A8787:13B9| bne HandleValidSFX2

|1A8789:13BB| ret

;===================================================================================================

ProcessSFX3Input:
|1A878A:13BC| mov.b A, $03
|1A878C:13BE| bne .valid

|1A878E:13C0| ret

.valid
|1A878F:13C1| mov.b A, #$FF
|1A8791:13C3| cbne.b $1A, .not_all_muted
|1A8794:13C6| bra .exit

.not_all_muted
|1A8796:13C8| call SFX3_HandleEcho

|1A8799:13CB| mov.w X, $03C0

|1A879C:13CE| mov.b A, $03
|1A879E:13D0| and.b A, #$C0
|1A87A0:13D2| mov.w $03D0+X, A

|1A87A3:13D5| mov.b A, $03
|1A87A5:13D7| and.b A, #$3F
|1A87A7:13D9| mov.w $03A0+X, A

|1A87AA:13DC| mov.b A, #$03
|1A87AC:13DE| mov.w $03A1+X, A

|1A87AF:13E1| mov.b A, #$00
|1A87B1:13E3| mov.w $0280+X, A

|1A87B4:13E6| mov.w A, $03C1
|1A87B7:13E9| or.w A, $03CD
|1A87BA:13EC| mov.w $03CD, A

|1A87BD:13EF| mov.w A, $03C1
|1A87C0:13F2| mov.b Y, #KOFF
|1A87C2:13F4| call WriteToDSP

|1A87C5:13F7| mov.w A, $03A0+X
|1A87C8:13FA| mov X, A

|1A87C9:13FB| mov.w A, SFX3_Accomp-1+X
|1A87CC:13FE| mov.b $03, A
|1A87CE:1400| bne .valid

.exit
|1A87D0:1402| ret

;===================================================================================================

HandleValidSFX2:
|1A87D1:1403| mov.b A, #$FF
|1A87D3:1405| cbne.b $1A, .not_all_muted

|1A87D6:1408| bra .exit

.not_all_muted
|1A87D8:140A| call SFX2_HandleEcho

|1A87DB:140D| mov.w X, $03C0

|1A87DE:1410| mov.b A, $02
|1A87E0:1412| and.b A, #$3F
|1A87E2:1414| mov.w $03A0+X, A

|1A87E5:1417| mov.b A, $02
|1A87E7:1419| and.b A, #$C0
|1A87E9:141B| mov.w $03D0+X, A

|1A87EC:141E| mov.b A, #$03
|1A87EE:1420| mov.w $03A1+X, A

|1A87F1:1423| mov.b A, #$00
|1A87F3:1425| mov.w $0280+X, A

|1A87F6:1428| mov.w A, $03C1
|1A87F9:142B| or.w A, $03CB
|1A87FC:142E| mov.w $03CB, A

|1A87FF:1431| mov.w A, $03C1
|1A8802:1434| mov.b Y, #KOFF
|1A8804:1436| call WriteToDSP

|1A8807:1439| mov.w A, $03A0+X
|1A880A:143C| mov X, A

|1A880B:143D| mov.w A, SFX2_Accomp-1+X
|1A880E:1440| mov.b $02, A

|1A8810:1442| bne HandleValidSFX2

.exit
|1A8812:1444| ret

;===================================================================================================

HandleSFX1:
|1A8813:1445| mov.w A, $03E4
|1A8816:1448| beq .no_fadeout

|1A8818:144A| jmp SFX1_FadeHandler

.no_fadeout
|1A881B:144D| mov.w A, $03CF

|1A881E:1450| mov.w $03E0, A
|1A8821:1453| beq .exit

|1A8823:1455| mov.b X, #$0E
|1A8825:1457| mov.b A, #$80
|1A8827:1459| mov.w $03C1, A

.next_channel
|1A882A:145C| asl.w $03E0
|1A882D:145F| bcc .to_next_channel

|1A882F:1461| mov.w $03C0, X

|1A8832:1464| mov A, X
|1A8833:1465| xcn A
|1A8834:1466| lsr A
|1A8835:1467| mov.w $03C2, A

|1A8838:146A| mov.w A, $03D0+X
|1A883B:146D| mov.b $20, A

|1A883D:146F| mov.w A, $03A1+X
|1A8840:1472| bne .delayed

|1A8842:1474| mov.w A, $03A0+X
|1A8845:1477| beq .to_next_channel

|1A8847:1479| jmp SFXControl

.to_next_channel
|1A884A:147C| lsr.w $03C1

|1A884D:147F| dec X
|1A884E:1480| dec X

|1A884F:1481| cmp.b X, #$0A
|1A8851:1483| bpl .next_channel

.exit
|1A8853:1485| ret

;---------------------------------------------------------------------------------------------------

.delayed
|1A8854:1486| mov.w $03C0, X

|1A8857:1489| mov.w A, $03A1+X
|1A885A:148C| dec A
|1A885B:148D| mov.w $03A1+X, A

|1A885E:1490| beq .initialize

|1A8860:1492| jmp .to_next_channel

.initialize
|1A8863:1495| mov.w A, $03A0+X
|1A8866:1498| asl A
|1A8867:1499| mov Y, A

|1A8868:149A| mov.w A, SFX1_Pointers-1+Y
|1A886B:149D| mov.w $0391+X, A
|1A886E:14A0| mov.b $2D, A

|1A8870:14A2| mov.w A, SFX1_Pointers-2+Y
|1A8873:14A5| mov.w $0390+X, A
|1A8876:14A8| mov.b $2C, A

|1A8878:14AA| jmp SFXControl.process_byte

;===================================================================================================

HandleSFX2:
|1A887B:14AD| mov.w A, $03CB
|1A887E:14B0| mov.w $03CC, A
|1A8881:14B3| beq .exit

|1A8883:14B5| mov.b X, #$0E
|1A8885:14B7| mov.b A, #$80
|1A8887:14B9| mov.w $03C1, A

.next_channel
|1A888A:14BC| asl.w $03CC
|1A888D:14BF| bcc .to_next_channel

|1A888F:14C1| mov.w $03C0, X
|1A8892:14C4| mov A, X
|1A8893:14C5| xcn A
|1A8894:14C6| lsr A
|1A8895:14C7| mov.w $03C2, A

|1A8898:14CA| mov.w A, $03D0+X
|1A889B:14CD| mov.b $20, A

|1A889D:14CF| mov.w A, $03A1+X
|1A88A0:14D2| bne .delayed

|1A88A2:14D4| mov.w A, $03A0+X
|1A88A5:14D7| beq .to_next_channel

|1A88A7:14D9| jmp SFXControl

.to_next_channel
|1A88AA:14DC| lsr.w $03C1
|1A88AD:14DF| dec X
|1A88AE:14E0| dec X
|1A88AF:14E1| bpl .next_channel

.exit
|1A88B1:14E3| ret

;---------------------------------------------------------------------------------------------------

.delayed
|1A88B2:14E4| mov.w $03C0, X

|1A88B5:14E7| mov.w A, $03A1+X
|1A88B8:14EA| dec A
|1A88B9:14EB| mov.w $03A1+X, A
|1A88BC:14EE| beq .initialize

|1A88BE:14F0| jmp .to_next_channel

.initialize
|1A88C1:14F3| mov.w A, $03A0+X
|1A88C4:14F6| asl A
|1A88C5:14F7| mov Y, A

|1A88C6:14F8| mov.w A, SFX2_Pointers-1+Y
|1A88C9:14FB| mov.w $0391+X, A
|1A88CC:14FE| mov.b $2D, A

|1A88CE:1500| mov.w A, SFX2_Pointers-2+Y
|1A88D1:1503| mov.w $0390+X, A
|1A88D4:1506| mov.b $2C, A

|1A88D6:1508| jmp SFXControl.process_byte

;===================================================================================================

HandleSFX3:
|1A88D9:150B| mov.w A, $03CD
|1A88DC:150E| mov.w $03CE, A
|1A88DF:1511| beq .exit

|1A88E1:1513| mov.b X, #$0E
|1A88E3:1515| mov.b A, #$80
|1A88E5:1517| mov.w $03C1, A

.next_channel
|1A88E8:151A| asl.w $03CE
|1A88EB:151D| bcc .to_next_channel

|1A88ED:151F| mov.w $03C0, X
|1A88F0:1522| mov A, X
|1A88F1:1523| xcn A
|1A88F2:1524| lsr A
|1A88F3:1525| mov.w $03C2, A

|1A88F6:1528| mov.w A, $03D0+X
|1A88F9:152B| mov.b $20, A

|1A88FB:152D| mov.w A, $03A1+X
|1A88FE:1530| bne .delayed

|1A8900:1532| mov.w A, $03A0+X
|1A8903:1535| beq .to_next_channel

|1A8905:1537| jmp SFXControl

.to_next_channel
|1A8908:153A| lsr.w $03C1
|1A890B:153D| dec X
|1A890C:153E| dec X
|1A890D:153F| bpl .next_channel

.exit
|1A890F:1541| ret

;---------------------------------------------------------------------------------------------------

.delayed
|1A8910:1542| mov.w $03C0, X

|1A8913:1545| mov.w A, $03A1+X
|1A8916:1548| dec A
|1A8917:1549| mov.w $03A1+X, A

|1A891A:154C| beq .initialize

|1A891C:154E| jmp .to_next_channel

.initialize
|1A891F:1551| mov.w A, $03A0+X
|1A8922:1554| asl A
|1A8923:1555| mov Y, A

|1A8924:1556| mov.w A, SFX3_Pointers-1+Y
|1A8927:1559| mov.w $0391+X, A
|1A892A:155C| mov.b $2D, A

|1A892C:155E| mov.w A, SFX3_Pointers-2+Y
|1A892F:1561| mov.w $0390+X, A
|1A8932:1564| mov.b $2C, A

|1A8934:1566| jmp SFXControl.process_byte

;===================================================================================================

ResumeMusic:
|1A8937:1569| mov.b A, #$00
|1A8939:156B| mov.w X, $03C0
|1A893C:156E| mov.w $03A0+X, A

|1A893F:1571| mov.b A, $1A
|1A8941:1573| setc
|1A8942:1574| sbc.w A, $03C1
|1A8945:1577| mov.b $1A, A

|1A8947:1579| mov.w A, $03C1
|1A894A:157C| and.w A, $03CB
|1A894D:157F| beq .not_on_SFX_2

|1A894F:1581| mov.w A, $03CB
|1A8952:1584| setc
|1A8953:1585| sbc.w A, $03C1
|1A8956:1588| mov.w $03CB, A

|1A8959:158B| bra .resume

.not_on_SFX_2
|1A895B:158D| mov.w A, $03C1
|1A895E:1590| and.w A, $03CD
|1A8961:1593| beq .not_on_SFX_3

|1A8963:1595| mov.w A, $03CD
|1A8966:1598| setc
|1A8967:1599| sbc.w A, $03C1
|1A896A:159C| mov.w $03CD, A

|1A896D:159F| bra .resume

.not_on_SFX_3
|1A896F:15A1| mov.w A, $03CF
|1A8972:15A4| setc
|1A8973:15A5| sbc.w A, $03C1
|1A8976:15A8| mov.w $03CF, A

.resume
|1A8979:15AB| mov.b $44, X
|1A897B:15AD| mov.w A, $0211+X
|1A897E:15B0| call TrackCommand_E0_ChangeInstrument

|1A8981:15B3| mov.w A, $03C1
|1A8984:15B6| and.w A, $03C3
|1A8987:15B9| beq .exit

|1A8989:15BB| and.b A, $4A
|1A898B:15BD| bne .exit

|1A898D:15BF| mov.b A, $4A
|1A898F:15C1| clrc
|1A8990:15C2| adc.w A, $03C1
|1A8993:15C5| mov.b $4A, A

|1A8995:15C7| mov.b Y, #EON
|1A8997:15C9| call WriteToDSP

|1A899A:15CC| mov.w A, $03E3
|1A899D:15CF| setc
|1A899E:15D0| sbc.w A, $03C1
|1A89A1:15D3| mov.w $03E3, A

.exit
|1A89A4:15D6| mov.w X, $03C0

|1A89A7:15D9| ret

;===================================================================================================

DisableSFX:
|1A89A8:15DA| mov.w A, $03C1
|1A89AB:15DD| and.w A, $03CF
|1A89AE:15E0| bne .used_by_SFX_1

|1A89B0:15E2| mov.w A, $03C1
|1A89B3:15E5| and.w A, $03CB
|1A89B6:15E8| bne .used_by_SFX_2

|1A89B8:15EA| call ResumeMusic
|1A89BB:15ED| jmp HandleSFX3.to_next_channel

.used_by_SFX_1
|1A89BE:15F0| call ResumeMusic
|1A89C1:15F3| jmp HandleSFX1.to_next_channel

.used_by_SFX_2
|1A89C4:15F6| call ResumeMusic
|1A89C7:15F9| jmp HandleSFX2.to_next_channel

;===================================================================================================

SFXControl:
|1A89CA:15FC| call SFX3_HandleEcho.disabled

|1A89CD:15FF| mov.w $03C0, X
|1A89D0:1602| mov.w A, $0391+X
|1A89D3:1605| mov Y, A

|1A89D4:1606| mov.w A, $0390+X
|1A89D7:1609| movw.b $2C, YA

|1A89D9:160B| mov.w A, $03B0+X
|1A89DC:160E| dec A
|1A89DD:160F| mov.w $03B0+X, A

|1A89E0:1612| beq .next_byte
|1A89E2:1614| jmp .do_pitch_slide

.next_byte
|1A89E5:1617| incw.b $2C

.process_byte
|1A89E7:1619| mov.w A, $03C0
|1A89EA:161C| xcn A
|1A89EB:161D| lsr A
|1A89EC:161E| mov.w $03C2, A

|1A89EF:1621| mov.b X, #$00
|1A89F1:1623| mov.b A, ($2C+X)

|1A89F3:1625| beq DisableSFX
|1A89F5:1627| bmi .note_or_command

|1A89F7:1629| mov.w Y, $03C0
|1A89FA:162C| mov.w $03B1+Y, A

|1A89FD:162F| incw.b $2C
|1A89FF:1631| mov.b A, ($2C+X)
|1A8A01:1633| mov.b $10, A
|1A8A03:1635| bmi .note_or_command

|1A8A05:1637| mov X, A
|1A8A06:1638| mov.w A, $03C1
|1A8A09:163B| and.w A, $03CF
|1A8A0C:163E| beq .not_SFX_1

|1A8A0E:1640| mov A, X
|1A8A0F:1641| beq .zero_byte

|1A8A11:1643| mov.w X, $03E5
|1A8A14:1646| bne .next_byte_2

.zero_byte
|1A8A16:1648| mov.b $10, A
|1A8A18:164A| mov.w Y, $03C2
|1A8A1B:164D| call WriteToDSP

|1A8A1E:1650| mov.b X, #$00
|1A8A20:1652| incw.b $2C
|1A8A22:1654| mov.b A, ($2C+X)
|1A8A24:1656| bpl .volume_command

|1A8A26:1658| mov X, A
|1A8A27:1659| mov.b A, $10
|1A8A29:165B| mov.w Y, $03C2
|1A8A2C:165E| inc Y
|1A8A2D:165F| call WriteToDSP

|1A8A30:1662| mov A, X
|1A8A31:1663| bra .note_or_command

.volume_command
|1A8A33:1665| mov.w Y, $03C2
|1A8A36:1668| inc Y
|1A8A37:1669| call WriteToDSP

|1A8A3A:166C| bra .next_byte_2

.not_SFX_1
|1A8A3C:166E| mov A, X
|1A8A3D:166F| mov.w X, $03C0

|1A8A40:1672| asl A
|1A8A41:1673| mov.w $0321+X, A

|1A8A44:1676| mov.b A, #$0A
|1A8A46:1678| mov.w $0351+X, A

|1A8A49:167B| bbs7.b $20, .left_pan
|1A8A4C:167E| bbs6.b $20, .right_pan

|1A8A4F:1681| mov.b $11, #$0A
|1A8A52:1684| bne .set_pan

.left_pan
|1A8A54:1686| mov.b $11, #$10
|1A8A57:1689| bne .set_pan

.right_pan
|1A8A59:168B| mov.b $11, #$04

.set_pan
|1A8A5C:168E| mov.b $10, #$00
|1A8A5F:1691| call WritePitch_external

|1A8A62:1694| mov.b X, #$00

.next_byte_2
|1A8A64:1696| incw.b $2C
|1A8A66:1698| mov.b A, ($2C+X)

.note_or_command
|1A8A68:169A| cmp.b A, #$E0 ; instrument change
|1A8A6A:169C| bne .not_instrument_change

|1A8A6C:169E| jmp .change_instrument

.not_instrument_change
|1A8A6F:16A1| cmp.b A, #$F9 ; slide once
|1A8A71:16A3| beq .pitch_slide_command

|1A8A73:16A5| cmp.b A, #$F1 ; slide to
|1A8A75:16A7| beq .pitch_slide_to_command

|1A8A77:16A9| cmp.b A, #$FF ; SFX loop trigger
|1A8A79:16AB| bne .not_loop

|1A8A7B:16AD| mov.w X, $03C0
|1A8A7E:16B0| jmp HandleSFX1.initialize

.not_loop
|1A8A81:16B3| mov.w X, $03C0
|1A8A84:16B6| mov Y, A
|1A8A85:16B7| call HandleNote

|1A8A88:16BA| mov.w A, $03C1
|1A8A8B:16BD| call KeyOnSoundEffects

.setup_pitch_slide
|1A8A8E:16C0| mov.w X, $03C0

|1A8A91:16C3| mov.w A, $03B1+X
|1A8A94:16C6| mov.w $03B0+X, A

.do_pitch_slide
|1A8A97:16C9| clr7.b $13

|1A8A99:16CB| mov.w X, $03C0
|1A8A9C:16CE| mov.b A, $A0+X
|1A8A9E:16D0| beq .no_pitch_slide

|1A8AA0:16D2| call PitchSlideSFX
|1A8AA3:16D5| bra .dont_key_off

.no_pitch_slide
|1A8AA5:16D7| mov.b A, #$02
|1A8AA7:16D9| cmp.w A, $03B0+X
|1A8AAA:16DC| bne .dont_key_off

|1A8AAC:16DE| mov.w A, $03C1
|1A8AAF:16E1| mov.b Y, #KOFF
|1A8AB1:16E3| call WriteToDSP

.dont_key_off
|1A8AB4:16E6| mov.w X, $03C0

|1A8AB7:16E9| mov.b A, $2D
|1A8AB9:16EB| mov.w $0391+X, A

|1A8ABC:16EE| mov.b A, $2C
|1A8ABE:16F0| mov.w $0390+X, A

|1A8AC1:16F3| mov.w A, $03C1
|1A8AC4:16F6| and.w A, $03CF
|1A8AC7:16F9| bne .on_SFX_1

|1A8AC9:16FB| mov.w A, $03C1
|1A8ACC:16FE| and.w A, $03CB
|1A8ACF:1701| bne .on_SFX_2
|1A8AD1:1703| jmp HandleSFX3.to_next_channel

.on_SFX_1
|1A8AD4:1706| jmp HandleSFX1.to_next_channel

.on_SFX_2
|1A8AD7:1709| jmp HandleSFX2.to_next_channel

;---------------------------------------------------------------------------------------------------

.pitch_slide_command
|1A8ADA:170C| mov.b X, #$00
|1A8ADC:170E| incw.b $2C
|1A8ADE:1710| mov.b A, ($2C+X)

|1A8AE0:1712| mov.w X, $03C0

|1A8AE3:1715| mov.b $44, X
|1A8AE5:1717| mov Y, A
|1A8AE6:1718| call HandleNote

|1A8AE9:171B| mov.w A, $03C1
|1A8AEC:171E| call KeyOnSoundEffects

;---------------------------------------------------------------------------------------------------

.pitch_slide_to_command
|1A8AEF:1721| mov.b X, #$00
|1A8AF1:1723| incw.b $2C
|1A8AF3:1725| mov.b A, ($2C+X)

|1A8AF5:1727| mov.w X, $03C0

|1A8AF8:172A| mov.b $A1+X, A
|1A8AFA:172C| mov.b X, #$00

|1A8AFC:172E| incw.b $2C
|1A8AFE:1730| mov.b A, ($2C+X)
|1A8B00:1732| mov.w X, $03C0

|1A8B03:1735| mov.b $A0+X, A
|1A8B05:1737| push A

|1A8B06:1738| mov.b X, #$00
|1A8B08:173A| incw.b $2C
|1A8B0A:173C| mov.b A, ($2C+X)

|1A8B0C:173E| pop Y
|1A8B0D:173F| mov.w X, $03C0
|1A8B10:1742| mov.b $44, X

|1A8B12:1744| call PitchSlide.calc_frames

|1A8B15:1747| jmp .setup_pitch_slide

;---------------------------------------------------------------------------------------------------

.change_instrument
|1A8B18:174A| mov.b X, #$00
|1A8B1A:174C| incw.b $2C
|1A8B1C:174E| mov.b A, ($2C+X)

|1A8B1E:1750| mov.b Y, #$09
|1A8B20:1752| mul YA
|1A8B21:1753| mov X, A

|1A8B22:1754| mov.w Y, $03C2
|1A8B25:1757| mov.b $12, #$08

.write_loop
|1A8B28:175A| mov.w A, INSTRUMENT_DATA_SFX+X
|1A8B2B:175D| call WriteToDSP

|1A8B2E:1760| inc X
|1A8B2F:1761| inc Y
|1A8B30:1762| dbnz.b $12, .write_loop

|1A8B33:1765| mov.w A, INSTRUMENT_DATA_SFX+X

|1A8B36:1768| mov.w Y, $03C0
|1A8B39:176B| mov.w $0221+Y, A

|1A8B3C:176E| mov.b A, #$00
|1A8B3E:1770| mov.w $0220+Y, A

|1A8B41:1773| jmp .next_byte

;===================================================================================================

PitchSlideSFX:
|1A8B44:1776| set7.b $13

|1A8B46:1778| mov.b A, #<$0360
|1A8B48:177A| mov.b Y, #>$0360

|1A8B4A:177C| dec.b $A0+X
|1A8B4C:177E| call IncrementSlide.quiet

|1A8B4F:1781| mov.w A, $0361+X
|1A8B52:1784| mov Y, A
|1A8B53:1785| mov.w A, $0360+X
|1A8B56:1788| movw.b $10, YA

|1A8B58:178A| mov.b $47, #$00
|1A8B5B:178D| jmp HandleNote_external

;===================================================================================================

KeyOnSoundEffects:
|1A8B5E:1790| push A

|1A8B5F:1791| mov.b Y, #KOFF
|1A8B61:1793| mov.b A, #$00
|1A8B63:1795| call WriteToDSP

|1A8B66:1798| pop A
|1A8B67:1799| mov.b Y, #KON

|1A8B69:179B| jmp WriteToDSP

;===================================================================================================

site *

lang wdc65816

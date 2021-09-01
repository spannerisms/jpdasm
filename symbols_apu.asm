;===================================================================================================
; Symbols for the audio processing unit
;===================================================================================================

; Input values from APU ports
ISONG           = $0000
ISFX1           = $0001
ISFX2           = $0002
ISFX3           = $0003

; Currently playing song and sfx
; Sent back to SNES CPU over I/O
CSONG           = $0004
CSFX1           = $0005
CSFX2           = $0006
CSFX3           = $0007

; Redundancy check for sound handling
RSONG           = $0008
RSFX1           = $0009
RSFX2           = $000A
RSFX3           = $000B

; Provides a short delay when changing songs
DELAY           = $000C

; FREE RAM: 0x01
UNUSED_0D       = $000D

; Always expected to hold the value 0x0000
; Used to give YA a value of 0x0000
; Also used to un-key off every channel each loop
ZEROL           = $000E
ZEROH           = $000F

; Scrap space
SCRAP10         = $0010
SCRAP11         = $0011
SCRAP12         = $0012

; Flags pitch changes via commands
; p... ....
;   p - Run change
DOPCH           = $0013

; More scrap space
SCRAP14         = $0014
SCRAP15         = $0015
SCRAP16         = $0016
SCRAP17         = $0017

; Manipulated every loop, but to seemingly no effect
JUNK18          = $0018
JUNK19          = $0019

; Flags channels currently in use by sound effects
SFXUSE          = $001A

; Disables all music
MUTED           = $001B

; FREE RAM: 0x04
UNUSED_1C       = $001C
UNUSED_1D       = $001D
UNUSED_1E       = $001E
UNUSED_1F       = $001F

; Indicates pan of current SFX
; lr.. ....
;   l - pan left
;   r - pan right
; left takes priority
SFXPAN          = $0020

; FREE RAM: 0x0B
UNUSED_21       = $0021
UNUSED_22       = $0022
UNUSED_23       = $0023
UNUSED_24       = $0024
UNUSED_25       = $0025
UNUSED_26       = $0026
UNUSED_27       = $0027
UNUSED_28       = $0028
UNUSED_29       = $0029
UNUSED_2A       = $002A
UNUSED_2B       = $002B

; SFX data pointer
SFXPTR          = $002C
SFXPTRH         = $002D

; FREE RAM: 0x02
UNUSED_2E       = $002E
UNUSED_2F       = $002F

; Track pointers for each channel
T0PTR           = $0030
T0PTRH          = $0031
T1PTR           = $0032
T1PTRH          = $0033
T2PTR           = $0034
T2PTRH          = $0035
T3PTR           = $0036
T3PTRH          = $0037
T4PTR           = $0038
T4PTRH          = $0039
T5PTR           = $003A
T5PTRH          = $003B
T6PTR           = $003C
T6PTRH          = $003D
T7PTR           = $003E
T7PTRH          = $003F

; Pointer to current song's segments
SEGPTR          = $0040
SEGPTRH         = $0041

; Used to build up segment pointers during new songs
SEGLOOP         = $0042

; Accumulates timer 0 loops to keep steady timing
TACCUM          = $0043

; Saves channel offset index when the X register is required
CHOFF           = $0044

; Key on/off queues
KONQ            = $0045
KOFQ            = $0046

; Current channel bit for bitfield writes
CBIT            = $0047

; More DSP queues
FLGQ            = $0048
NONQ            = $0049
EONQ            = $004A
PMONQ           = $004B

; Echo register cache and queues
EDLC            = $004C
EDLQ            = $004D
EFBQ            = $004E

; FREE RAM: 0x01
UNUSED_4F       = $004F

; Global transposition
GTRANS          = $0050

; Accumulator for clock passes
MACCUM          = $0051

; Song tempo
TEMPOL          = $0052
TEMPO           = $0053

; Tempo sweep duration
TEMPOTM         = $0054

; Target tempo for sweep
TEMPOTG         = $0055

; Tempo slide sweep amount
TEMPOVL         = $0056
TEMPOVH         = $0057

; Global volume
GVOLL           = $0058
GVOL            = $0059

; Global volume slide timer
GVOLTM          = $005A

; Global volume slide target
GVOLTG          = $005B

; Global volume slide increment per loop
GVOLIL          = $005C
GVOLIH          = $005D

; Flags channels for pitch slide
SLIDE           = $005E

; Base SRCN for percussion commands
DRUM0           = $005F

; Echo volume queues
EVOLLQL         = $0060
EVOLLQH         = $0061
EVOLRQL         = $0062
EVOLRQH         = $0063

; Echo volume panning steps
EPANLL          = $0064
EPANLH          = $0065
EPANRL          = $0066
EPANRH          = $0067

; Echo pan timer
EPANTM          = $0068

; Echo pan target values
EPANLTG         = $0069
EPANRTG         = $006A

; FREE RAM: 0x05
UNSUED_6B       = $006B
UNSUED_6C       = $006C
UNSUED_6D       = $006D
UNSUED_6E       = $006E
UNSUED_6F       = $006F

; Countdown for next note playing and for continuing sustained commands
T0DUR           = $0070
T0CMDTM         = $0071
T1DUR           = $0072
T1CMDTM         = $0073
T2DUR           = $0074
T2CMDTM         = $0075
T3DUR           = $0076
T3CMDTM         = $0077
T4DUR           = $0078
T4CMDTM         = $0079
T5DUR           = $007A
T5CMDTM         = $007B
T6DUR           = $007C
T6CMDTM         = $007D
T7DUR           = $007E
T7CMDTM         = $007F

; Channel part loop counters
; High byte unused
T0PARTX         = $0080
T0U80           = $0081
T1PARTX         = $0082
T1U80           = $0083
T2PARTX         = $0084
T2U80           = $0085
T3PARTX         = $0086
T3U80           = $0087
T4PARTX         = $0088
T4U80           = $0089
T5PARTX         = $008A
T5U80           = $008B
T6PARTX         = $008C
T6U80           = $008D
T7PARTX         = $008E
T7U80           = $008F

; Channel volume slide and pan slide timers
T0VOLTM         = $0090
T0PANTM         = $0091
T1VOLTM         = $0092
T1PANTM         = $0093
T2VOLTM         = $0094
T2PANTM         = $0095
T3VOLTM         = $0096
T3PANTM         = $0097
T4VOLTM         = $0098
T4PANTM         = $0099
T5VOLTM         = $009A
T5PANTM         = $009B
T6VOLTM         = $009C
T6PANTM         = $009D
T7VOLTM         = $009E
T7PANTM         = $009F

; Channel pitch slide timer and delay for operation
T0GLSTM         = $00A0
T0GLSWT         = $00A1
T1GLSTM         = $00A2
T1GLSWT         = $00A3
T2GLSTM         = $00A4
T2GLSWT         = $00A5
T3GLSTM         = $00A6
T3GLSWT         = $00A7
T4GLSTM         = $00A8
T4GLSWT         = $00A9
T5GLSTM         = $00AA
T5GLSWT         = $00AB
T6GLSTM         = $00AC
T6GLSWT         = $00AD
T7GLSTM         = $00AE
T7GLSWT         = $00AF

; Channel vibrato strength and max intensity
T0VBRS          = $00B0
T0VBRI          = $00B1
T1VBRS          = $00B2
T1VBRI          = $00B3
T2VBRS          = $00B4
T2VBRI          = $00B5
T3VBRS          = $00B6
T3VBRI          = $00B7
T4VBRS          = $00B8
T4VBRI          = $00B9
T5VBRS          = $00BA
T5VBRI          = $00BB
T6VBRS          = $00BC
T6VBRI          = $00BD
T7VBRS          = $00BE
T7VBRI          = $00BF

; Channel tremolo timer and intensity
T0TRMTM         = $00C0
T0TREMI         = $00C1
T1TRMTM         = $00C2
T1TREMI         = $00C3
T2TRMTM         = $00C4
T2TREMI         = $00C5
T3TRMTM         = $00C6
T3TREMI         = $00C7
T4TRMTM         = $00C8
T4TREMI         = $00C9
T5TRMTM         = $00CA
T5TREMI         = $00CB
T6TRMTM         = $00CC
T6TREMI         = $00CD
T7TRMTM         = $00CE
T7TREMI         = $00CF

; FREE RAM: 0x20
UNSUED_D0       = $00D0

;===================================================================================================
; SPC hardware registers at $F0..$FF
; See «registers_spc.asm»
;===================================================================================================

; Vibrato counter and unused variable
T0VBRCT         = $0100
T0U101          = $0101
T1VBRCT         = $0102
T1U101          = $0103
T2VBRCT         = $0104
T2U101          = $0105
T3VBRCT         = $0106
T3U101          = $0107
T4VBRCT         = $0108
T4U101          = $0109
T5VBRCT         = $010A
T5U101          = $010B
T6VBRCT         = $010C
T6U101          = $010D
T7VBRCT         = $010E
T7U101          = $010F

;===================================================================================================
; SPC700 stack
; Starts here, for whatever reason
;===================================================================================================
APUSTACK        = $01CF
IPLSTACK        = $01FF

;===================================================================================================

; Note duration reset value and release duration
T0DUR0          = $0200
T0STACC         = $0201
T1DUR0          = $0202
T1STACC         = $0203
T2DUR0          = $0204
T2STACC         = $0205
T3DUR0          = $0206
T3STACC         = $0207
T4DUR0          = $0208
T4STACC         = $0209
T5DUR0          = $020A
T5STACC         = $020B
T6DUR0          = $020C
T6STACC         = $020D
T7DUR0          = $020E
T7STACC         = $020F

; Note attack and instrument ID
T0ATCK          = $0210
T0INSTR         = $0211
T1ATCK          = $0212
T1INSTR         = $0213
T2ATCK          = $0214
T2INSTR         = $0215
T3ATCK          = $0216
T3INSTR         = $0217
T4ATCK          = $0218
T4INSTR         = $0219
T5ATCK          = $021A
T5INSTR         = $021B
T6ATCK          = $021C
T6INSTR         = $021D
T7ATCK          = $021E
T7INSTR         = $021F

; Instrument high-level tuning multiplier
T0MULTL         = $0220
T0MULTH         = $0221
T1MULTL         = $0222
T1MULTH         = $0223
T2MULTL         = $0224
T2MULTH         = $0225
T3MULTL         = $0226
T3MULTH         = $0227
T4MULTL         = $0228
T4MULTH         = $0229
T5MULTL         = $022A
T5MULTH         = $022B
T6MULTL         = $022C
T6MULTH         = $022D
T7MULTL         = $022E
T7MULTH         = $022F

; Return address for part calling
T0PRETL         = $0230
T0PRETH         = $0231
T1PRETL         = $0232
T1PRETH         = $0233
T2PRETL         = $0234
T2PRETH         = $0235
T3PRETL         = $0236
T3PRETH         = $0237
T4PRETL         = $0238
T4PRETH         = $0239
T5PRETL         = $023A
T5PRETH         = $023B
T6PRETL         = $023C
T6PRETH         = $023D
T7PRETL         = $023E
T7PRETH         = $023F

; Subroutine address for part calls
T0PADDL         = $0240
T0PADDH         = $0241
T1PADDL         = $0242
T1PADDH         = $0243
T2PADDL         = $0244
T2PADDH         = $0245
T3PADDL         = $0246
T3PADDH         = $0247
T4PADDL         = $0248
T4PADDH         = $0249
T5PADDL         = $024A
T5PADDH         = $024B
T6PADDL         = $024C
T6PADDH         = $024D
T7PADDL         = $024E
T7PADDH         = $024F

; FREE RAM: 0x30
UNUSED_0250     = $0250

;---------------------------------------------------------------------------------------------------

; Channel pitch slide timer and delay, before written to GLSTM and GLSWT
T0SLDTM         = $0280
T0SLDWT         = $0281
T1SLDTM         = $0282
T1SLDWT         = $0283
T2SLDTM         = $0284
T2SLDWT         = $0285
T3SLDTM         = $0286
T3SLDWT         = $0287
T4SLDTM         = $0288
T4SLDWT         = $0289
T5SLDTM         = $028A
T5SLDWT         = $028B
T6SLDTM         = $028C
T6SLDWT         = $028D
T7SLDTM         = $028E
T7SLDWT         = $028F

; SLDTP - slide type (0: from | 1: to)
; SLDTG - slide target
T0SLDTP         = $0290
T0SLDTG         = $0291
T1SLDTP         = $0292
T1SLDTG         = $0293
T2SLDTP         = $0294
T2SLDTG         = $0295
T3SLDTP         = $0296
T3SLDTG         = $0297
T4SLDTP         = $0298
T4SLDTG         = $0299
T5SLDTP         = $029A
T5SLDTG         = $029B
T6SLDTP         = $029C
T6SLDTG         = $029D
T7SLDTP         = $029E
T7SLDTG         = $029F

; Vibrato accumulator and rate
T0VBRC          = $02A0
T0VBRV          = $02A1
T1VBRC          = $02A2
T1VBRV          = $02A3
T2VBRC          = $02A4
T2VBRV          = $02A5
T3VBRC          = $02A6
T3VBRV          = $02A7
T4VBRC          = $02A8
T4VBRV          = $02A9
T5VBRC          = $02AA
T5VBRV          = $02AB
T6VBRC          = $02AC
T6VBRV          = $02AD
T7VBRC          = $02AE
T7VBRV          = $02AF

; Vibrato delay and gradient wait
T0VBRWT         = $02B0
T0VBRGD         = $02B1
T1VBRWT         = $02B2
T1VBRGD         = $02B3
T2VBRWT         = $02B4
T2VBRGD         = $02B5
T3VBRWT         = $02B6
T3VBRGD         = $02B7
T4VBRWT         = $02B8
T4VBRGD         = $02B9
T5VBRWT         = $02BA
T5VBRGD         = $02BB
T6VBRWT         = $02BC
T6VBRGD         = $02BD
T7VBRWT         = $02BE
T7VBRGD         = $02BF

; Vibrato step and max intensity
T0VBRST         = $02C0
T0VBRMX         = $02C1
T1VBRST         = $02C2
T1VBRMX         = $02C3
T2VBRST         = $02C4
T2VBRMX         = $02C5
T3VBRST         = $02C6
T3VBRMX         = $02C7
T4VBRST         = $02C8
T4VBRMX         = $02C9
T5VBRST         = $02CA
T5VBRMX         = $02CB
T6VBRST         = $02CC
T6VBRMX         = $02CD
T7VBRST         = $02CE
T7VBRMX         = $02CF

; Tremolo accumulator and rate
T0TREMC         = $02D0
T0TREMV         = $02D1
T1TREMC         = $02D2
T1TREMV         = $02D3
T2TREMC         = $02D4
T2TREMV         = $02D5
T3TREMC         = $02D6
T3TREMV         = $02D7
T4TREMC         = $02D8
T4TREMV         = $02D9
T5TREMC         = $02DA
T5TREMV         = $02DB
T6TREMC         = $02DC
T6TREMV         = $02DD
T7TREMC         = $02DE
T7TREMV         = $02DF

; Tremolo delay and unused variable
T0TREMD         = $02E0
T0U2E1          = $02E1
T1TREMD         = $02E2
T1U2E1          = $02E3
T2TREMD         = $02E4
T2U2E1          = $02E5
T3TREMD         = $02E6
T3U2E1          = $02E7
T4TREMD         = $02E8
T4U2E1          = $02E9
T5TREMD         = $02EA
T5U2E1          = $02EB
T6TREMD         = $02EC
T6U2E1          = $02ED
T7TREMD         = $02EE
T7U2E1          = $02EF

; Channel transposition and unused address
T0TRAN          = $02F0
T0U2F1          = $02F1
T1TRAN          = $02F2
T1U2F1          = $02F3
T2TRAN          = $02F4
T2U2F1          = $02F5
T3TRAN          = $02F6
T3U2F1          = $02F7
T4TRAN          = $02F8
T4U2F1          = $02F9
T5TRAN          = $02FA
T5U2F1          = $02FB
T6TRAN          = $02FC
T6U2F1          = $02FD
T7TRAN          = $02FE
T7U2F1          = $02FF

;---------------------------------------------------------------------------------------------------

; Channel volume
T0VOLL          = $0300
T0VOLH          = $0301
T1VOLL          = $0302
T1VOLH          = $0303
T2VOLL          = $0304
T2VOLH          = $0305
T3VOLL          = $0306
T3VOLH          = $0307
T4VOLL          = $0308
T4VOLH          = $0309
T5VOLL          = $030A
T5VOLH          = $030B
T6VOLL          = $030C
T6VOLH          = $030D
T7VOLL          = $030E
T7VOLH          = $030F

; Volume sweep amount
T0VOLVL         = $0310
T0VOLVH         = $0311
T1VOLVL         = $0312
T1VOLVH         = $0313
T2VOLVL         = $0314
T2VOLVH         = $0315
T3VOLVL         = $0316
T3VOLVH         = $0317
T4VOLVL         = $0318
T4VOLVH         = $0319
T5VOLVL         = $031A
T5VOLVH         = $031B
T6VOLVL         = $031C
T6VOLVH         = $031D
T7VOLVL         = $031E
T7VOLVH         = $031F

; Target volume for sweeps and finalized volume of channel
T0VOLTG         = $0320
T0VOLF          = $0321
T1VOLTG         = $0322
T1VOLF          = $0323
T2VOLTG         = $0324
T2VOLF          = $0325
T3VOLTG         = $0326
T3VOLF          = $0327
T4VOLTG         = $0328
T4VOLF          = $0329
T5VOLTG         = $032A
T5VOLF          = $032B
T6VOLTG         = $032C
T6VOLF          = $032D
T7VOLTG         = $032E
T7VOLF          = $032F

; Panning
; high byte is TxPANS AND 0x1F
; low byte unused and always 0x00
T0PANL          = $0330
T0PAN           = $0331
T1PANL          = $0332
T1PAN           = $0333
T2PANL          = $0334
T2PAN           = $0335
T3PANL          = $0336
T3PAN           = $0337
T4PANL          = $0338
T4PAN           = $0339
T5PANL          = $033A
T5PAN           = $033B
T6PANL          = $033C
T6PAN           = $033D
T7PANL          = $033E
T7PAN           = $033F

; Pan sweep values
T0PANVL         = $0340
T0PANVH         = $0341
T1PANVL         = $0342
T1PANVH         = $0343
T2PANVL         = $0344
T2PANVH         = $0345
T3PANVL         = $0346
T3PANVH         = $0347
T4PANVL         = $0348
T4PANVH         = $0349
T5PANVL         = $034A
T5PANVH         = $034B
T6PANVL         = $034C
T6PANVH         = $034D
T7PANVL         = $034E
T7PANVH         = $034F

; Target pan sweep value and raw settings value
T0PANTG         = $0350
T0PANS          = $0351
T1PANTG         = $0352
T1PANS          = $0353
T2PANTG         = $0354
T2PANS          = $0355
T3PANTG         = $0356
T3PANS          = $0357
T4PANTG         = $0358
T4PANS          = $0359
T5PANTG         = $035A
T5PANS          = $035B
T6PANTG         = $035C
T6PANS          = $035D
T7PANTG         = $035E
T7PANS          = $035F

; Pitch calculation
T0PCLCL         = $0360
T0PCLCH         = $0361
T1PCLCL         = $0362
T1PCLCH         = $0363
T2PCLCL         = $0364
T2PCLCH         = $0365
T3PCLCL         = $0366
T3PCLCH         = $0367
T4PCLCL         = $0368
T4PCLCH         = $0369
T5PCLCL         = $036A
T5PCLCH         = $036B
T6PCLCL         = $036C
T6PCLCH         = $036D
T7PCLCL         = $036E
T7PCLCH         = $036F

; Multiframe pitch adjustment
T0MPADDL        = $0370
T0MPADDH        = $0371
T1MPADDL        = $0372
T1MPADDH        = $0373
T2MPADDL        = $0374
T2MPADDH        = $0375
T3MPADDL        = $0376
T3MPADDH        = $0377
T4MPADDL        = $0378
T4MPADDH        = $0379
T5MPADDL        = $037A
T5MPADDH        = $037B
T6MPADDL        = $037C
T6MPADDH        = $037D
T7MPADDL        = $037E
T7MPADDH        = $037F

; Channel note for calculations and tuning
T0NCALC         = $0380
T0TUNE          = $0381
T1NCALC         = $0382
T1TUNE          = $0383
T2NCALC         = $0384
T2TUNE          = $0385
T3NCALC         = $0386
T3TUNE          = $0387
T4NCALC         = $0388
T4TUNE          = $0389
T5NCALC         = $038A
T5TUNE          = $038B
T6NCALC         = $038C
T6TUNE          = $038D
T7NCALC         = $038E
T7TUNE          = $038F

; Channel pointers for SFX
T0SFXPTL        = $0390
T0SFXPTH        = $0391
T1SFXPTL        = $0392
T1SFXPTH        = $0393
T2SFXPTL        = $0394
T2SFXPTH        = $0395
T3SFXPTL        = $0396
T3SFXPTH        = $0397
T4SFXPTL        = $0398
T4SFXPTH        = $0399
T5SFXPTL        = $039A
T5SFXPTH        = $039B
T6SFXPTL        = $039C
T6SFXPTH        = $039D
T7SFXPTL        = $039E
T7SFXPTH        = $039F

; SFX ID playing on channel and delay
T0SFXID         = $03A0
T0SFXWT         = $03A1
T1SFXID         = $03A2
T1SFXWT         = $03A3
T2SFXID         = $03A4
T2SFXWT         = $03A5
T3SFXID         = $03A6
T3SFXWT         = $03A7
T4SFXID         = $03A8
T4SFXWT         = $03A9
T5SFXID         = $03AA
T5SFXWT         = $03AB
T6SFXID         = $03AC
T6SFXWT         = $03AD
T7SFXID         = $03AE
T7SFXWT         = $03AF

; SFX note countdown and duration
T0SFXTM         = $03B0
T0SFXDUR        = $03B1
T1SFXTM         = $03B2
T1SFXDUR        = $03B3
T2SFXTM         = $03B4
T2SFXDUR        = $03B5
T3SFXTM         = $03B6
T3SFXDUR        = $03B7
T4SFXTM         = $03B8
T4SFXDUR        = $03B9
T5SFXTM         = $03BA
T5SFXDUR        = $03BB
T6SFXTM         = $03BC
T6SFXDUR        = $03BD
T7SFXTM         = $03BE
T7SFXDUR        = $03BF

;---------------------------------------------------------------------------------------------------

; SFX channel pointer in use
SFXOFF          = $03C0

; SFX channel bit for bitfields
SFXBIT          = $03C1

; Contains channel<<3 for easier calculation
BITASL3         = $03C2

; Music channels flagged for echo enable
EONM            = $03C3

; Only referenced in an unused function, but it appears to relate to SFXOFF and SFXBIT
SFXOFFRT        = $03C4
SFXBITRT        = $03C5

; FREE RAM: 0x02
UNUSED_03C6     = $03C6
UNUSED_03C7     = $03C7

; copies SFXOFF and SFXBIT, but never used
SFXOFF2         = $03C8
SFXBIT2         = $03C9

; Music fade out timer
SONGFADE        = $03CA

; Channel bits for SFX2, playing and operating
SFX2BIT         = $03CB
SFX2FIND        = $03CC

; Channel bits for SFX3, playing and operating
SFX3BIT         = $03CD
SFX3FIND        = $03CE

; Channel bits for SFX1
SFX1BIT         = $03CF

; SFC channel pan values and unused variable
T0SFXPAN        = $03D0
T0U3D1          = $03D1
T1SFXPAN        = $03D2
T1U3D1          = $03D3
T2SFXPAN        = $03D4
T2U3D1          = $03D5
T3SFXPAN        = $03D6
T3U3D1          = $03D7
T4SFXPAN        = $03D8
T4U3D1          = $03D9
T5SFXPAN        = $03DA
T5U3D1          = $03DB
T6SFXPAN        = $03DC
T6U3D1          = $03DD
T7SFXPAN        = $03DE
T7U3D1          = $03DF

; Used to find SFX1 channel
SFX1FIND        = $03E0

; Caches song volume between half and max volume commsnds
SONGOVOL        = $03E1

; Holds value from echo table for SFX
SFXECHOV        = $03E2

; Bitfield for SFX echos
SFXECHOS        = $03E3

; SFX1 fade timer and volume
SFX1FADE        = $03E4
SFX1FDVOL       = $03E5

; FREE RAM: 0x19
UNUSED_03E6     = $03E6

; Appears to mute channels via an unreachable command
T0STOP          = $03FF
T0U400          = $0400
T1STOP          = $0401
T1U400          = $0402
T2STOP          = $0403
T2U400          = $0404
T3STOP          = $0405
T3U400          = $0406
T4STOP          = $0407
T4U400          = $0408
T5STOP          = $0409
T5U400          = $040A
T6STOP          = $040B
T6U400          = $040C
T7STOP          = $040D
T7U400          = $040E

;===================================================================================================

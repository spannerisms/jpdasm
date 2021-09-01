org $1C8000

;===================================================================================================

; NOTE:
; A bottom bracket (⎵) will be used in place of a space ( ) in some comments.
; Brackets ([]) are used for some commands that write dynamic text.

Message_Data:

;===================================================================================================
; NULL
;===================================================================================================
Message_0000:
#_1C8000: db $FB ; end of message

;===================================================================================================
; CHOOSE 2 LOW option 1
;===================================================================================================
; ⎵⎵▶
; ⎵⎵⎵
Message_0001:
#_1C8001: db $FC, $00 ; set text speed
#_1C8003: db $F9 ; cursor to row 3
#_1C8004: db $FF, $FF, $FF ; ⎵⎵⎵
#_1C8007: db $F8 ; cursor to row 2
#_1C8008: db $FF, $FF, $E4 ; ⎵⎵▶
#_1C800B: db $FE, $68 ; get player selection - choose 2 low
#_1C800D: db $FB ; end of message

;===================================================================================================
; CHOOSE 2 LOW option 2
;===================================================================================================
; ⎵⎵⎵
; ⎵⎵▶
Message_0002:
#_1C800E: db $FC, $00 ; set text speed
#_1C8010: db $F8 ; cursor to row 2
#_1C8011: db $FF, $FF, $FF ; ⎵⎵⎵
#_1C8014: db $F9 ; cursor to row 3
#_1C8015: db $FF, $FF, $E4 ; ⎵⎵▶
#_1C8018: db $FE, $68 ; get player selection - choose 2 low
#_1C801A: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; セ－ブして続ける
; セ－ブしておわる
; セ－ブしないで続ける
Message_0003:
#_1C801B: db $FC, $00 ; set text speed
#_1C801D: db $63, $C9, $8F, $11, $1B ; セ－ブして
#_1C8022: db $FD, $82 ; write kanji - 続
#_1C8024: db $0B, $3A ; ける
#_1C8026: db $F8 ; cursor to row 2
#_1C8027: db $63, $C9, $8F, $11, $1B, $04, $0D, $3A ; セ－ブしておわる
#_1C802F: db $F9 ; cursor to row 3
#_1C8030: db $63, $C9, $8F, $11, $20, $01, $36 ; セ－ブしないで
#_1C8037: db $FD, $82 ; write kanji - 続
#_1C8039: db $0B, $3A ; ける
#_1C803B: db $FB ; end of message

;===================================================================================================
; BCD debug
;===================================================================================================
; 0は [BCD], 1は [BCD]
; 2は [BCD], 3は [BCD]
Message_0004:
#_1C803C: db $FC, $00 ; set text speed
#_1C803E: db $A0, $28, $FF ; 0は⎵
#_1C8041: db $FE, $6C, $00 ; write decimal digit
#_1C8044: db $C8, $FF, $A1, $28, $FF ; ,⎵1は⎵
#_1C8049: db $FE, $6C, $01 ; write decimal digit
#_1C804C: db $F8 ; cursor to row 2
#_1C804D: db $A2, $28, $FF ; 2は⎵
#_1C8050: db $FE, $6C, $02 ; write decimal digit
#_1C8053: db $C8, $FF, $A3, $28, $FF ; ,⎵3は⎵
#_1C8058: db $FE, $6C, $03 ; write decimal digit
#_1C805B: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 私といっしょじゃ 入れないよ
Message_0005:
#_1C805C: db $FD, $26 ; write kanji - 私
#_1C805E: db $1C, $01, $4A, $11, $49, $25, $47, $FF ; といっしょじゃ⎵
#_1C8066: db $FD, $49 ; write kanji - 入
#_1C8068: db $3B, $20, $01, $07 ; れないよ
#_1C806C: db $FB ; end of message

;===================================================================================================
; CHOOSE 3 option 1
;===================================================================================================
; ▶
; ⎵
; ⎵
Message_0006:
#_1C806D: db $FC, $00 ; set text speed
#_1C806F: db $F7 ; cursor to row 1
#_1C8070: db $E4 ; ▶
#_1C8071: db $F8 ; cursor to row 2
#_1C8072: db $FF ; ⎵
#_1C8073: db $F9 ; cursor to row 3
#_1C8074: db $FF ; ⎵
#_1C8075: db $FE, $71 ; get player selection - choose 3
#_1C8077: db $FB ; end of message

;===================================================================================================
; CHOOSE 3 option 2
;===================================================================================================
; ⎵
; ▶
; ⎵
Message_0007:
#_1C8078: db $FC, $00 ; set text speed
#_1C807A: db $F7 ; cursor to row 1
#_1C807B: db $FF ; ⎵
#_1C807C: db $F8 ; cursor to row 2
#_1C807D: db $E4 ; ▶
#_1C807E: db $F9 ; cursor to row 3
#_1C807F: db $FF ; ⎵
#_1C8080: db $FE, $71 ; get player selection - choose 3
#_1C8082: db $FB ; end of message

;===================================================================================================
; CHOOSE 3 option 3
;===================================================================================================
; ⎵
; ⎵
; ▶
Message_0008:
#_1C8083: db $FC, $00 ; set text speed
#_1C8085: db $F7 ; cursor to row 1
#_1C8086: db $FF ; ⎵
#_1C8087: db $F8 ; cursor to row 2
#_1C8088: db $FF ; ⎵
#_1C8089: db $F9 ; cursor to row 3
#_1C808A: db $E4 ; ▶
#_1C808B: db $FE, $71 ; get player selection - choose 3
#_1C808D: db $FB ; end of message

;===================================================================================================
; CHOOSE 2 HIGH option 1
;===================================================================================================
; ▶
; ⎵
Message_0009:
#_1C808E: db $FC, $00 ; set text speed
#_1C8090: db $F7 ; cursor to row 1
#_1C8091: db $E4 ; ▶
#_1C8092: db $F8 ; cursor to row 2
#_1C8093: db $FF ; ⎵
#_1C8094: db $FE, $72 ; get player selection - choose 2 high
#_1C8096: db $FB ; end of message

;===================================================================================================
; CHOOSE 2 HIGH option 2
;===================================================================================================
; ⎵
; ▶
Message_000A:
#_1C8097: db $FC, $00 ; set text speed
#_1C8099: db $F7 ; cursor to row 1
#_1C809A: db $FF ; ⎵
#_1C809B: db $F8 ; cursor to row 2
#_1C809C: db $E4 ; ▶
#_1C809D: db $FE, $72 ; get player selection - choose 2 high
#_1C809F: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK],わしはちょっと
; 出かけてくる。
; 心配する事はない。
; 朝までには戻ってくる。
; 家を出るんじゃないぞ。
Message_000B:
#_1C80A0: db $FE, $6A ; write player name
#_1C80A2: db $C8, $0D, $11, $28, $19, $49, $4A, $1C ; ,わしはちょっと
#_1C80AA: db $F8 ; cursor to row 2
#_1C80AB: db $FD, $23 ; write kanji - 出
#_1C80AD: db $08, $0B, $1B, $0A, $3A, $CD ; かけてくる。
#_1C80B3: db $F9 ; cursor to row 3
#_1C80B4: db $FD, $E6 ; write kanji - 心
#_1C80B6: db $FD, $8E ; write kanji - 配
#_1C80B8: db $12, $3A ; する
#_1C80BA: db $FD, $22 ; write kanji - 事
#_1C80BC: db $28, $20, $01, $CD ; はない。
#_1C80C0: db $FA ; wait for key
#_1C80C1: db $F6 ; scroll text
#_1C80C2: db $FD, $C9 ; write kanji - 朝
#_1C80C4: db $30, $36, $21, $28 ; までには
#_1C80C8: db $FD, $0F ; write kanji - 戻
#_1C80CA: db $4A, $1B, $0A, $3A, $CD ; ってくる。
#_1C80CF: db $F6 ; scroll text
#_1C80D0: db $FD, $56 ; write kanji - 家
#_1C80D2: db $0E ; を
#_1C80D3: db $FD, $23 ; write kanji - 出
#_1C80D5: db $3A, $0F, $25, $47, $20, $01, $2D, $CD ; るんじゃないぞ。
#_1C80DD: db $F6 ; scroll text
#_1C80DE: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; うう⋯。[LINK],お前だけは
; まきこみたくなかった⋯
; 家を出るなと言ったのに⋯
; ⋯こ,この剣と盾を持って行け
; よくきけ⋯Bボタンを押し続け
; 剣に力をためるのだ。
; そうすれば,ある－族だけに
; 伝わる秘剣が使えるはずだ⋯。
; [LINK]よ,お前ならできる⋯
; ゼルダ姫を お救いするのだ。
; お,お前は,姫の ⋯ ⋯。
Message_000C:
#_1C80DF: db $02, $02, $CC, $CD ; うう⋯。
#_1C80E3: db $FE, $6A ; write player name
#_1C80E5: db $C8, $04 ; ,お
#_1C80E7: db $FD, $78 ; write kanji - 前
#_1C80E9: db $2E, $0B, $28 ; だけは
#_1C80EC: db $F8 ; cursor to row 2
#_1C80ED: db $30, $09, $0C, $31, $18, $0A, $20, $08 ; まきこみたくなか
#_1C80F5: db $4A, $18, $CC ; った⋯
#_1C80F8: db $F9 ; cursor to row 3
#_1C80F9: db $FD, $56 ; write kanji - 家
#_1C80FB: db $0E ; を
#_1C80FC: db $FD, $23 ; write kanji - 出
#_1C80FE: db $3A, $20, $1C ; るなと
#_1C8101: db $FD, $16 ; write kanji - 言
#_1C8103: db $4A, $18, $24, $21, $CC ; ったのに⋯
#_1C8108: db $FA ; wait for key
#_1C8109: db $F6 ; scroll text
#_1C810A: db $CC, $0C, $C8, $0C, $24 ; ⋯こ,この
#_1C810F: db $FD, $1A ; write kanji - 剣
#_1C8111: db $1C ; と
#_1C8112: db $FD, $1B ; write kanji - 盾
#_1C8114: db $0E ; を
#_1C8115: db $FD, $DB ; write kanji - 持
#_1C8117: db $4A, $1B ; って
#_1C8119: db $FD, $02 ; write kanji - 行
#_1C811B: db $0B ; け
#_1C811C: db $F6 ; scroll text
#_1C811D: db $07, $0A, $09, $0B, $CC, $AB, $91, $68 ; よくきけ⋯Bボタ
#_1C8125: db $5F, $0E ; ンを
#_1C8127: db $FD, $77 ; write kanji - 押
#_1C8129: db $11 ; し
#_1C812A: db $FD, $82 ; write kanji - 続
#_1C812C: db $0B ; け
#_1C812D: db $F6 ; scroll text
#_1C812E: db $FD, $1A ; write kanji - 剣
#_1C8130: db $21 ; に
#_1C8131: db $FD, $99 ; write kanji - 力
#_1C8133: db $0E, $18, $33, $3A, $24, $2E, $CD ; をためるのだ。
#_1C813A: db $FA ; wait for key
#_1C813B: db $F6 ; scroll text
#_1C813C: db $14, $02, $12, $3B, $3D, $C8, $00, $3A ; そうすれば,ある
#_1C8144: db $C9 ; －
#_1C8145: db $FD, $F2 ; write kanji - 族
#_1C8147: db $2E, $0B, $21 ; だけに
#_1C814A: db $F6 ; scroll text
#_1C814B: db $FD, $2E ; write kanji - 伝
#_1C814D: db $0D, $3A ; わる
#_1C814F: db $FD, $C1 ; write kanji - 秘
#_1C8151: db $FD, $1A ; write kanji - 剣
#_1C8153: db $15 ; が
#_1C8154: db $FD, $89 ; write kanji - 使
#_1C8156: db $03, $3A, $28, $26, $2E, $CC, $CD ; えるはずだ⋯。
#_1C815D: db $F6 ; scroll text
#_1C815E: db $FE, $6A ; write player name
#_1C8160: db $07, $C8, $04 ; よ,お
#_1C8163: db $FD, $78 ; write kanji - 前
#_1C8165: db $20, $38, $36, $09, $3A, $CC ; ならできる⋯
#_1C816B: db $FA ; wait for key
#_1C816C: db $F6 ; scroll text
#_1C816D: db $77, $8A, $7E ; ゼルダ
#_1C8170: db $FD, $FF ; write kanji - 姫
#_1C8172: db $0E, $FF, $04 ; を⎵お
#_1C8175: db $FD, $28 ; write kanji - 救
#_1C8177: db $01, $12, $3A, $24, $2E, $CD ; いするのだ。
#_1C817D: db $F6 ; scroll text
#_1C817E: db $04, $C8, $04 ; お,お
#_1C8181: db $FD, $78 ; write kanji - 前
#_1C8183: db $28, $C8 ; は,
#_1C8185: db $FD, $FF ; write kanji - 姫
#_1C8187: db $24, $FF, $CC, $FF, $CC, $CD ; の⎵⋯⎵⋯。
#_1C818D: db $F6 ; scroll text
#_1C818E: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 子どもが 夜ふけにウロウロ
; してるんじゃない!
; 大人になってからだよ。
Message_000D:
#_1C818F: db $FD, $11 ; write kanji - 子
#_1C8191: db $37, $34, $15, $FF ; どもが⎵
#_1C8195: db $FD, $79 ; write kanji - 夜
#_1C8197: db $2A, $0B, $21, $52, $8C, $52, $8C ; ふけにウロウロ
#_1C819E: db $F8 ; cursor to row 2
#_1C819F: db $11, $1B, $3A, $0F, $25, $47, $20, $01 ; してるんじゃない
#_1C81A7: db $C7 ; !
#_1C81A8: db $F9 ; cursor to row 3
#_1C81A9: db $FD, $5F ; write kanji - 大
#_1C81AB: db $FD, $38 ; write kanji - 人
#_1C81AD: db $21, $20, $4A, $1B, $08, $38, $2E, $07 ; になってからだよ
#_1C81B5: db $CD ; 。
#_1C81B6: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 道に迷ったらXボタンPUSH
; 地図が見れるぜ ⋯ ⋯
; お前 知ってるかい?
Message_000E:
#_1C81B7: db $FD, $5D ; write kanji - 道
#_1C81B9: db $21 ; に
#_1C81BA: db $FD, $70 ; write kanji - 迷
#_1C81BC: db $4A, $18, $38, $C1, $91, $68, $5F, $B9 ; ったらXボタンP
#_1C81C4: db $BE, $BC, $B1 ; USH
#_1C81C7: db $F8 ; cursor to row 2
#_1C81C8: db $FD, $33 ; write kanji - 地
#_1C81CA: db $FD, $34 ; write kanji - 図
#_1C81CC: db $15 ; が
#_1C81CD: db $FD, $4C ; write kanji - 見
#_1C81CF: db $3B, $3A, $27, $FF, $CC, $FF, $CC ; れるぜ⎵⋯⎵⋯
#_1C81D6: db $F9 ; cursor to row 3
#_1C81D7: db $04 ; お
#_1C81D8: db $FD, $78 ; write kanji - 前
#_1C81DA: db $FF ; ⎵
#_1C81DB: db $FD, $93 ; write kanji - 知
#_1C81DD: db $4A, $1B, $3A, $08, $01, $C6 ; ってるかい?
#_1C81E3: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 物にさわってAボタンを押す。
; 物が,かつげたりするぜ ⋯
; お前 知ってるかい?
Message_000F:
#_1C81E4: db $FD, $51 ; write kanji - 物
#_1C81E6: db $21, $10, $0D, $4A, $1B, $AA, $91, $68 ; にさわってAボタ
#_1C81EE: db $5F, $0E ; ンを
#_1C81F0: db $FD, $77 ; write kanji - 押
#_1C81F2: db $12, $CD ; す。
#_1C81F4: db $F8 ; cursor to row 2
#_1C81F5: db $FD, $51 ; write kanji - 物
#_1C81F7: db $15, $C8, $08, $1A, $1D, $18, $39, $12 ; が,かつげたりす
#_1C81FF: db $3A, $27, $FF, $CC ; るぜ⎵⋯
#_1C8203: db $F9 ; cursor to row 3
#_1C8204: db $04 ; お
#_1C8205: db $FD, $78 ; write kanji - 前
#_1C8207: db $FF ; ⎵
#_1C8208: db $FD, $93 ; write kanji - 知
#_1C820A: db $4A, $1B, $3A, $08, $01, $C6 ; ってるかい?
#_1C8210: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; お前が 剣を手にした時は
; Bボタンで 使うんだぞ ⋯
; お前 忘れるなよっ!
Message_0010:
#_1C8211: db $04 ; お
#_1C8212: db $FD, $78 ; write kanji - 前
#_1C8214: db $15, $FF ; が⎵
#_1C8216: db $FD, $1A ; write kanji - 剣
#_1C8218: db $0E ; を
#_1C8219: db $FD, $3E ; write kanji - 手
#_1C821B: db $21, $11, $18 ; にした
#_1C821E: db $FD, $88 ; write kanji - 時
#_1C8220: db $28 ; は
#_1C8221: db $F8 ; cursor to row 2
#_1C8222: db $AB, $91, $68, $5F, $36, $FF ; Bボタンで⎵
#_1C8228: db $FD, $89 ; write kanji - 使
#_1C822A: db $02, $0F, $2E, $2D, $FF, $CC ; うんだぞ⎵⋯
#_1C8230: db $F9 ; cursor to row 3
#_1C8231: db $04 ; お
#_1C8232: db $FD, $78 ; write kanji - 前
#_1C8234: db $FF ; ⎵
#_1C8235: db $FD, $D8 ; write kanji - 忘
#_1C8237: db $3B, $3A, $20, $07, $4A, $C7 ; れるなよっ!
#_1C823D: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 地図の上で光る点は
; たぶん 目的地だ ⋯ ⋯
; お前 知ってるかい?
Message_0011:
#_1C823E: db $FD, $33 ; write kanji - 地
#_1C8240: db $FD, $34 ; write kanji - 図
#_1C8242: db $24 ; の
#_1C8243: db $FD, $72 ; write kanji - 上
#_1C8245: db $36 ; で
#_1C8246: db $FD, $73 ; write kanji - 光
#_1C8248: db $3A ; る
#_1C8249: db $FD, $74 ; write kanji - 点
#_1C824B: db $28 ; は
#_1C824C: db $F8 ; cursor to row 2
#_1C824D: db $18, $3F, $0F, $FF ; たぶん⎵
#_1C8251: db $FD, $75 ; write kanji - 目
#_1C8253: db $FD, $76 ; write kanji - 的
#_1C8255: db $FD, $33 ; write kanji - 地
#_1C8257: db $2E, $FF, $CC, $FF, $CC ; だ⎵⋯⎵⋯
#_1C825C: db $F9 ; cursor to row 3
#_1C825D: db $04 ; お
#_1C825E: db $FD, $78 ; write kanji - 前
#_1C8260: db $FF ; ⎵
#_1C8261: db $FD, $93 ; write kanji - 知
#_1C8263: db $4A, $1B, $3A, $08, $01, $C6 ; ってるかい?
#_1C8269: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 宝箱の前でAボタンを押す。
; 宝箱が,開くはずだ。
; お前 知ってるかい?
Message_0012:
#_1C826A: db $FD, $9A ; write kanji - 宝
#_1C826C: db $FD, $EA ; write kanji - 箱
#_1C826E: db $24 ; の
#_1C826F: db $FD, $78 ; write kanji - 前
#_1C8271: db $36, $AA, $91, $68, $5F, $0E ; でAボタンを
#_1C8277: db $FD, $77 ; write kanji - 押
#_1C8279: db $12, $CD ; す。
#_1C827B: db $F8 ; cursor to row 2
#_1C827C: db $FD, $9A ; write kanji - 宝
#_1C827E: db $FD, $EA ; write kanji - 箱
#_1C8280: db $15, $C8 ; が,
#_1C8282: db $FD, $4B ; write kanji - 開
#_1C8284: db $0A, $28, $26, $2E, $CD ; くはずだ。
#_1C8289: db $F9 ; cursor to row 3
#_1C828A: db $04 ; お
#_1C828B: db $FD, $78 ; write kanji - 前
#_1C828D: db $FF ; ⎵
#_1C828E: db $FD, $93 ; write kanji - 知
#_1C8290: db $4A, $1B, $3A, $08, $01, $C6 ; ってるかい?
#_1C8296: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おれ達と話すと 色々わかって
; タメになるぞ ⋯
; お前 知ってるだろ!
Message_0013:
#_1C8297: db $04, $3B ; おれ
#_1C8299: db $FD, $13 ; write kanji - 達
#_1C829B: db $1C ; と
#_1C829C: db $FD, $A3 ; write kanji - 話
#_1C829E: db $12, $1C, $FF ; すと⎵
#_1C82A1: db $FD, $A4 ; write kanji - 色
#_1C82A3: db $FD, $A5 ; write kanji - 々
#_1C82A5: db $0D, $08, $4A, $1B ; わかって
#_1C82A9: db $F8 ; cursor to row 2
#_1C82AA: db $68, $83, $21, $20, $3A, $2D, $FF, $CC ; タメになるぞ⎵⋯
#_1C82B2: db $F9 ; cursor to row 3
#_1C82B3: db $04 ; お
#_1C82B4: db $FD, $78 ; write kanji - 前
#_1C82B6: db $FF ; ⎵
#_1C82B7: db $FD, $93 ; write kanji - 知
#_1C82B9: db $4A, $1B, $3A, $2E, $3C, $C7 ; ってるだろ!
#_1C82BF: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 村の長老に会いなさい。そして
; マスタ－ソ－ドを手に入れる
; ことです。
Message_0014:
#_1C82C0: db $FD, $8C ; write kanji - 村
#_1C82C2: db $24 ; の
#_1C82C3: db $FD, $8D ; write kanji - 長
#_1C82C5: db $FD, $E5 ; write kanji - 老
#_1C82C7: db $21 ; に
#_1C82C8: db $FD, $04 ; write kanji - 会
#_1C82CA: db $01, $20, $10, $01, $CD, $14, $11, $1B ; いなさい。そして
#_1C82D2: db $F8 ; cursor to row 2
#_1C82D3: db $80, $62, $68, $C9, $64, $C9, $87, $0E ; マスタ－ソ－ドを
#_1C82DB: db $FD, $3E ; write kanji - 手
#_1C82DD: db $21 ; に
#_1C82DE: db $FD, $49 ; write kanji - 入
#_1C82E0: db $3B, $3A ; れる
#_1C82E2: db $F9 ; cursor to row 3
#_1C82E3: db $0C, $1C, $36, $12, $CD ; ことです。
#_1C82E8: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おお ゼルダ姫無事でしたか!
; [LINK] お前が助け出して
; くれたのですね。
Message_0015:
#_1C82E9: db $04, $04, $FF, $77, $8A, $7E ; おお⎵ゼルダ
#_1C82EF: db $FD, $FF ; write kanji - 姫
#_1C82F1: db $FD, $21 ; write kanji - 無
#_1C82F3: db $FD, $22 ; write kanji - 事
#_1C82F5: db $36, $11, $18, $08, $C7 ; でしたか!
#_1C82FA: db $F8 ; cursor to row 2
#_1C82FB: db $FE, $6A ; write player name
#_1C82FD: db $FF, $04 ; ⎵お
#_1C82FF: db $FD, $78 ; write kanji - 前
#_1C8301: db $15 ; が
#_1C8302: db $FD, $CA ; write kanji - 助
#_1C8304: db $0B ; け
#_1C8305: db $FD, $23 ; write kanji - 出
#_1C8307: db $11, $1B ; して
#_1C8309: db $F9 ; cursor to row 3
#_1C830A: db $0A, $3B, $18, $24, $36, $12, $23, $CD ; くれたのですね。
#_1C8312: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; うむ,どうやら司祭には魔物が
; とりついている様ですね⋯。
; あやつを倒すには 伝説の
; 退魔の剣『マスタ－ソ－ド』が
; 必要でしょう。
; くわしい事は私には わかりま
; せんが,村の長老が7賢者の
; しそんの1人だと言う事です。
; まず 彼を訪ねると良い
; でしょう⋯ ⋯
; 地図に印をつけておきます。
; でも,気をつけて行くのですよ
; 今ごろは城の兵が あなた達を
; 探しまわっているはずです。
; ⋯ ⋯ ⋯ ゼルダ姫は,
; ここに,かくまっておきます。
; 心配せずに 行きなさい。
; ⋯ ⋯ ⋯
; ちゃんと きこえましたか?
; ▶ う ん
;   ぜんぜん
Message_0016:
#_1C8313: db $F8 ; cursor to row 2
#_1C8314: db $02, $32, $C8, $37, $02, $05, $38 ; うむ,どうやら
#_1C831B: db $FD, $0D ; write kanji - 司
#_1C831D: db $FD, $17 ; write kanji - 祭
#_1C831F: db $21, $28 ; には
#_1C8321: db $FD, $2D ; write kanji - 魔
#_1C8323: db $FD, $51 ; write kanji - 物
#_1C8325: db $15 ; が
#_1C8326: db $F9 ; cursor to row 3
#_1C8327: db $1C, $39, $1A, $01, $1B, $01, $3A ; とりついている
#_1C832E: db $FD, $10 ; write kanji - 様
#_1C8330: db $36, $12, $23, $CC, $CD ; ですね⋯。
#_1C8335: db $FA ; wait for key
#_1C8336: db $F6 ; scroll text
#_1C8337: db $00, $05, $1A, $0E ; あやつを
#_1C833B: db $FD, $29 ; write kanji - 倒
#_1C833D: db $12, $21, $28, $FF ; すには⎵
#_1C8341: db $FD, $2E ; write kanji - 伝
#_1C8343: db $FD, $2F ; write kanji - 説
#_1C8345: db $24 ; の
#_1C8346: db $F6 ; scroll text
#_1C8347: db $FD, $2C ; write kanji - 退
#_1C8349: db $FD, $2D ; write kanji - 魔
#_1C834B: db $24 ; の
#_1C834C: db $FD, $1A ; write kanji - 剣
#_1C834E: db $C4, $80, $62, $68, $C9, $64, $C9, $87 ; 『マスタ－ソ－ド
#_1C8356: db $C5, $15 ; 』が
#_1C8358: db $F6 ; scroll text
#_1C8359: db $FD, $30 ; write kanji - 必
#_1C835B: db $FD, $31 ; write kanji - 要
#_1C835D: db $36, $11, $49, $02, $CD ; でしょう。
#_1C8362: db $FA ; wait for key
#_1C8363: db $F6 ; scroll text
#_1C8364: db $0A, $0D, $11, $01 ; くわしい
#_1C8368: db $FD, $22 ; write kanji - 事
#_1C836A: db $28 ; は
#_1C836B: db $FD, $26 ; write kanji - 私
#_1C836D: db $21, $28, $FF, $0D, $08, $39, $30 ; には⎵わかりま
#_1C8374: db $F6 ; scroll text
#_1C8375: db $13, $0F, $15, $C8 ; せんが,
#_1C8379: db $FD, $8C ; write kanji - 村
#_1C837B: db $24 ; の
#_1C837C: db $FD, $8D ; write kanji - 長
#_1C837E: db $FD, $E5 ; write kanji - 老
#_1C8380: db $15, $A7 ; が7
#_1C8382: db $FD, $C4 ; write kanji - 賢
#_1C8384: db $FD, $1E ; write kanji - 者
#_1C8386: db $24 ; の
#_1C8387: db $F6 ; scroll text
#_1C8388: db $11, $14, $0F, $24, $A1 ; しそんの1
#_1C838D: db $FD, $38 ; write kanji - 人
#_1C838F: db $2E, $1C ; だと
#_1C8391: db $FD, $16 ; write kanji - 言
#_1C8393: db $02 ; う
#_1C8394: db $FD, $22 ; write kanji - 事
#_1C8396: db $36, $12, $CD ; です。
#_1C8399: db $FA ; wait for key
#_1C839A: db $F6 ; scroll text
#_1C839B: db $30, $26, $FF ; まず⎵
#_1C839E: db $FD, $14 ; write kanji - 彼
#_1C83A0: db $0E ; を
#_1C83A1: db $FD, $07 ; write kanji - 訪
#_1C83A3: db $23, $3A, $1C ; ねると
#_1C83A6: db $FD, $32 ; write kanji - 良
#_1C83A8: db $01 ; い
#_1C83A9: db $F6 ; scroll text
#_1C83AA: db $36, $11, $49, $02, $CC, $FF, $CC ; でしょう⋯⎵⋯
#_1C83B1: db $F6 ; scroll text
#_1C83B2: db $FD, $33 ; write kanji - 地
#_1C83B4: db $FD, $34 ; write kanji - 図
#_1C83B6: db $21 ; に
#_1C83B7: db $FD, $35 ; write kanji - 印
#_1C83B9: db $0E, $1A, $0B, $1B, $04, $09, $30, $12 ; をつけておきます
#_1C83C1: db $CD ; 。
#_1C83C2: db $FE, $79, $2D ; play sound effect
#_1C83C5: db $FA ; wait for key
#_1C83C6: db $F6 ; scroll text
#_1C83C7: db $36, $34, $C8 ; でも,
#_1C83CA: db $FD, $37 ; write kanji - 気
#_1C83CC: db $0E, $1A, $0B, $1B ; をつけて
#_1C83D0: db $FD, $02 ; write kanji - 行
#_1C83D2: db $0A, $24, $36, $12, $07 ; くのですよ
#_1C83D7: db $F6 ; scroll text
#_1C83D8: db $FD, $6A ; write kanji - 今
#_1C83DA: db $1E, $3C, $28 ; ごろは
#_1C83DD: db $FD, $01 ; write kanji - 城
#_1C83DF: db $24 ; の
#_1C83E0: db $FD, $3A ; write kanji - 兵
#_1C83E2: db $15, $FF, $00, $20, $18 ; が⎵あなた
#_1C83E7: db $FD, $13 ; write kanji - 達
#_1C83E9: db $0E ; を
#_1C83EA: db $F6 ; scroll text
#_1C83EB: db $FD, $69 ; write kanji - 探
#_1C83ED: db $11, $30, $0D, $4A, $1B, $01, $3A, $28 ; しまわっているは
#_1C83F5: db $26, $36, $12, $CD ; ずです。
#_1C83F9: db $FA ; wait for key
#_1C83FA: db $F6 ; scroll text
#_1C83FB: db $FF, $CC, $FF, $CC, $FF, $CC, $FF, $FF ; ⎵⋯⎵⋯⎵⋯⎵⎵
#_1C8403: db $77, $8A, $7E ; ゼルダ
#_1C8406: db $FD, $FF ; write kanji - 姫
#_1C8408: db $28, $C8 ; は,
#_1C840A: db $F6 ; scroll text
#_1C840B: db $0C, $0C, $21, $C8, $08, $0A, $30, $4A ; ここに,かくまっ
#_1C8413: db $1B, $04, $09, $30, $12, $CD ; ておきます。
#_1C8419: db $F6 ; scroll text
#_1C841A: db $FD, $E6 ; write kanji - 心
#_1C841C: db $FD, $8E ; write kanji - 配
#_1C841E: db $13, $26, $21, $FF ; せずに⎵
#_1C8422: db $FD, $02 ; write kanji - 行
#_1C8424: db $09, $20, $10, $01, $CD ; きなさい。
#_1C8429: db $FA ; wait for key
#_1C842A: db $F6 ; scroll text
#_1C842B: db $F6 ; scroll text
#_1C842C: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1C8432: db $F6 ; scroll text
#_1C8433: db $FA ; wait for key
#_1C8434: db $F6 ; scroll text
#_1C8435: db $19, $47, $0F, $1C, $FF, $09, $0C, $03 ; ちゃんと⎵きこえ
#_1C843D: db $30, $11, $18, $08, $C6 ; ましたか?
#_1C8442: db $F6 ; scroll text
#_1C8443: db $FF, $FF, $E4, $FF, $02, $FF, $FF, $0F ; ⎵⎵▶⎵う⎵⎵ん
#_1C844B: db $F6 ; scroll text
#_1C844C: db $FF, $FF, $FF, $FF, $27, $0F, $27, $0F ; ⎵⎵⎵⎵ぜんぜん
#_1C8454: db $FE, $68 ; get player selection - choose 2 low
#_1C8456: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 司祭を倒せば,城の者たちも,
; 正気に戻るかもしれません。
; 3つの紋章を集めるのです。
Message_0017:
#_1C8457: db $FD, $0D ; write kanji - 司
#_1C8459: db $FD, $17 ; write kanji - 祭
#_1C845B: db $0E ; を
#_1C845C: db $FD, $29 ; write kanji - 倒
#_1C845E: db $13, $3D, $C8 ; せば,
#_1C8461: db $FD, $01 ; write kanji - 城
#_1C8463: db $24 ; の
#_1C8464: db $FD, $1E ; write kanji - 者
#_1C8466: db $18, $19, $34, $C8 ; たちも,
#_1C846A: db $F8 ; cursor to row 2
#_1C846B: db $FD, $4D ; write kanji - 正
#_1C846D: db $FD, $37 ; write kanji - 気
#_1C846F: db $21 ; に
#_1C8470: db $FD, $0F ; write kanji - 戻
#_1C8472: db $3A, $08, $34, $11, $3B, $30, $13, $0F ; るかもしれません
#_1C847A: db $CD ; 。
#_1C847B: db $F9 ; cursor to row 3
#_1C847C: db $A3, $1A, $24 ; 3つの
#_1C847F: db $FD, $53 ; write kanji - 紋
#_1C8481: db $FD, $54 ; write kanji - 章
#_1C8483: db $0E ; を
#_1C8484: db $FD, $E0 ; write kanji - 集
#_1C8486: db $33, $3A, $24, $36, $12, $CD ; めるのです。
#_1C848C: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; さあ,3つの紋章をもって
; 森へ行きなさい。
; マスタ－ソ－ドがまっています
Message_0018:
#_1C848D: db $10, $00, $C8, $A3, $1A, $24 ; さあ,3つの
#_1C8493: db $FD, $53 ; write kanji - 紋
#_1C8495: db $FD, $54 ; write kanji - 章
#_1C8497: db $0E, $34, $4A, $1B ; をもって
#_1C849B: db $F8 ; cursor to row 2
#_1C849C: db $FD, $65 ; write kanji - 森
#_1C849E: db $2B ; へ
#_1C849F: db $FD, $02 ; write kanji - 行
#_1C84A1: db $09, $20, $10, $01, $CD ; きなさい。
#_1C84A6: db $F9 ; cursor to row 3
#_1C84A7: db $80, $62, $68, $C9, $64, $C9, $87, $15 ; マスタ－ソ－ドが
#_1C84AF: db $30, $4A, $1B, $01, $30, $12 ; まっています
#_1C84B5: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おお,[LINK] ひと足おそか
; った⋯。 私がふがいない
; ばっかりに,ゼルダ姫を城へ
; 連れて行かれてしまいました。
; お,おそらく城の塔の1ばん上
; にある部屋でしょう。
; ゼルダ姫が,イケニエにされる
; その前に,なんとか⋯
; ひ,姫を頼みま⋯す⋯。
Message_0019:
#_1C84B6: db $04, $04, $C8 ; おお,
#_1C84B9: db $FE, $6A ; write player name
#_1C84BB: db $FF, $29, $1C ; ⎵ひと
#_1C84BE: db $FD, $96 ; write kanji - 足
#_1C84C0: db $04, $14, $08 ; おそか
#_1C84C3: db $F8 ; cursor to row 2
#_1C84C4: db $4A, $18, $CC, $CD, $FF ; った⋯。⎵
#_1C84C9: db $FD, $26 ; write kanji - 私
#_1C84CB: db $15, $2A, $15, $01, $20, $01 ; がふがいない
#_1C84D1: db $F9 ; cursor to row 3
#_1C84D2: db $3D, $4A, $08, $39, $21, $C8, $77, $8A ; ばっかりに,ゼル
#_1C84DA: db $7E ; ダ
#_1C84DB: db $FD, $FF ; write kanji - 姫
#_1C84DD: db $0E ; を
#_1C84DE: db $FD, $01 ; write kanji - 城
#_1C84E0: db $2B ; へ
#_1C84E1: db $FA ; wait for key
#_1C84E2: db $F6 ; scroll text
#_1C84E3: db $FD, $40 ; write kanji - 連
#_1C84E5: db $3B, $1B ; れて
#_1C84E7: db $FD, $02 ; write kanji - 行
#_1C84E9: db $08, $3B, $1B, $11, $30, $01, $30, $11 ; かれてしまいまし
#_1C84F1: db $18, $CD ; た。
#_1C84F3: db $F6 ; scroll text
#_1C84F4: db $04, $C8, $04, $14, $38, $0A ; お,おそらく
#_1C84FA: db $FD, $01 ; write kanji - 城
#_1C84FC: db $24 ; の
#_1C84FD: db $FD, $D5 ; write kanji - 塔
#_1C84FF: db $24, $A1, $3D, $0F ; の1ばん
#_1C8503: db $FD, $72 ; write kanji - 上
#_1C8505: db $F6 ; scroll text
#_1C8506: db $21, $00, $3A ; にある
#_1C8509: db $FD, $B7 ; write kanji - 部
#_1C850B: db $FD, $3D ; write kanji - 屋
#_1C850D: db $36, $11, $49, $02, $CD ; でしょう。
#_1C8512: db $FA ; wait for key
#_1C8513: db $F6 ; scroll text
#_1C8514: db $77, $8A, $7E ; ゼルダ
#_1C8517: db $FD, $FF ; write kanji - 姫
#_1C8519: db $15, $C8, $51, $5B, $71, $53, $21, $10 ; が,イケニエにさ
#_1C8521: db $3B, $3A ; れる
#_1C8523: db $F6 ; scroll text
#_1C8524: db $14, $24 ; その
#_1C8526: db $FD, $78 ; write kanji - 前
#_1C8528: db $21, $C8, $20, $0F, $1C, $08, $CC ; に,なんとか⋯
#_1C852F: db $F6 ; scroll text
#_1C8530: db $29, $C8 ; ひ,
#_1C8532: db $FD, $FF ; write kanji - 姫
#_1C8534: db $0E ; を
#_1C8535: db $FD, $08 ; write kanji - 頼
#_1C8537: db $31, $30, $CC, $12, $CC, $CD ; みま⋯す⋯。
#_1C853D: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ありがとう [LINK]
; あなたが 近づいてくるのを
; 感じていたわ。
Message_001A:
#_1C853E: db $00, $39, $15, $1C, $02, $FF ; ありがとう⎵
#_1C8544: db $FE, $6A ; write player name
#_1C8546: db $F8 ; cursor to row 2
#_1C8547: db $00, $20, $18, $15, $FF ; あなたが⎵
#_1C854C: db $FD, $C8 ; write kanji - 近
#_1C854E: db $35, $01, $1B, $0A, $3A, $24, $0E ; づいてくるのを
#_1C8555: db $F9 ; cursor to row 3
#_1C8556: db $FD, $C3 ; write kanji - 感
#_1C8558: db $25, $1B, $01, $18, $0D, $CD ; じていたわ。
#_1C855E: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 神父さま,本当に [LINK]の
; おかげです。
; 司祭が 言ってました。
; 『さいごのイケニエのお前を
; ささげれば賢者の封印は開く』
; って⋯ ⋯ ⋯
; ねえ [LINK] お願い!
; このハイラルの国を
; 司祭なんかに わたさないで。
; 7賢者の封印が 解かれたら
; 魔の力が どっとおしよせて
; くるわ。
; その前に ⋯ ⋯ ⋯
; その前に司祭を倒して!
; この国を守って!
; あなたなら きっとできる
; ⋯ あなたなら ⋯
Message_001B:
#_1C855F: db $FD, $05 ; write kanji - 神
#_1C8561: db $FD, $06 ; write kanji - 父
#_1C8563: db $10, $30, $C8 ; さま,
#_1C8566: db $FD, $24 ; write kanji - 本
#_1C8568: db $FD, $25 ; write kanji - 当
#_1C856A: db $21, $FF ; に⎵
#_1C856C: db $FE, $6A ; write player name
#_1C856E: db $24 ; の
#_1C856F: db $F8 ; cursor to row 2
#_1C8570: db $04, $08, $1D, $36, $12, $CD ; おかげです。
#_1C8576: db $F9 ; cursor to row 3
#_1C8577: db $FD, $0D ; write kanji - 司
#_1C8579: db $FD, $17 ; write kanji - 祭
#_1C857B: db $15, $FF ; が⎵
#_1C857D: db $FD, $16 ; write kanji - 言
#_1C857F: db $4A, $1B, $30, $11, $18, $CD ; ってました。
#_1C8585: db $FA ; wait for key
#_1C8586: db $F6 ; scroll text
#_1C8587: db $C4, $10, $01, $1E, $24, $51, $5B, $71 ; 『さいごのイケニ
#_1C858F: db $53, $24, $04 ; エのお
#_1C8592: db $FD, $78 ; write kanji - 前
#_1C8594: db $0E ; を
#_1C8595: db $F6 ; scroll text
#_1C8596: db $10, $10, $1D, $3B, $3D ; ささげれば
#_1C859B: db $FD, $C4 ; write kanji - 賢
#_1C859D: db $FD, $1E ; write kanji - 者
#_1C859F: db $24 ; の
#_1C85A0: db $FD, $9E ; write kanji - 封
#_1C85A2: db $FD, $35 ; write kanji - 印
#_1C85A4: db $28 ; は
#_1C85A5: db $FD, $4B ; write kanji - 開
#_1C85A7: db $0A, $C5 ; く』
#_1C85A9: db $F6 ; scroll text
#_1C85AA: db $4A, $1B, $CC, $FF, $CC, $FF, $CC ; って⋯⎵⋯⎵⋯
#_1C85B1: db $FA ; wait for key
#_1C85B2: db $F6 ; scroll text
#_1C85B3: db $23, $03, $FF ; ねえ⎵
#_1C85B6: db $FE, $6A ; write player name
#_1C85B8: db $FF, $04 ; ⎵お
#_1C85BA: db $FD, $0A ; write kanji - 願
#_1C85BC: db $01, $C7 ; い!
#_1C85BE: db $F6 ; scroll text
#_1C85BF: db $0C, $24, $78, $51, $88, $8A, $24 ; このハイラルの
#_1C85C6: db $FD, $2B ; write kanji - 国
#_1C85C8: db $0E ; を
#_1C85C9: db $F6 ; scroll text
#_1C85CA: db $FD, $0D ; write kanji - 司
#_1C85CC: db $FD, $17 ; write kanji - 祭
#_1C85CE: db $20, $0F, $08, $21, $FF, $0D, $18, $10 ; なんかに⎵わたさ
#_1C85D6: db $20, $01, $36, $CD ; ないで。
#_1C85DA: db $FA ; wait for key
#_1C85DB: db $F6 ; scroll text
#_1C85DC: db $A7 ; 7
#_1C85DD: db $FD, $C4 ; write kanji - 賢
#_1C85DF: db $FD, $1E ; write kanji - 者
#_1C85E1: db $24 ; の
#_1C85E2: db $FD, $9E ; write kanji - 封
#_1C85E4: db $FD, $35 ; write kanji - 印
#_1C85E6: db $15, $FF ; が⎵
#_1C85E8: db $FD, $1C ; write kanji - 解
#_1C85EA: db $08, $3B, $18, $38 ; かれたら
#_1C85EE: db $F6 ; scroll text
#_1C85EF: db $FD, $2D ; write kanji - 魔
#_1C85F1: db $24 ; の
#_1C85F2: db $FD, $99 ; write kanji - 力
#_1C85F4: db $15, $FF, $37, $4A, $1C, $04, $11, $07 ; が⎵どっとおしよ
#_1C85FC: db $13, $1B ; せて
#_1C85FE: db $F6 ; scroll text
#_1C85FF: db $0A, $3A, $0D, $CD ; くるわ。
#_1C8603: db $FA ; wait for key
#_1C8604: db $F6 ; scroll text
#_1C8605: db $14, $24 ; その
#_1C8607: db $FD, $78 ; write kanji - 前
#_1C8609: db $21, $FF, $CC, $FF, $CC, $FF, $CC ; に⎵⋯⎵⋯⎵⋯
#_1C8610: db $F6 ; scroll text
#_1C8611: db $F6 ; scroll text
#_1C8612: db $14, $24 ; その
#_1C8614: db $FD, $78 ; write kanji - 前
#_1C8616: db $21 ; に
#_1C8617: db $FD, $0D ; write kanji - 司
#_1C8619: db $FD, $17 ; write kanji - 祭
#_1C861B: db $0E ; を
#_1C861C: db $FD, $29 ; write kanji - 倒
#_1C861E: db $11, $1B, $C7 ; して!
#_1C8621: db $FA ; wait for key
#_1C8622: db $F6 ; scroll text
#_1C8623: db $0C, $24 ; この
#_1C8625: db $FD, $2B ; write kanji - 国
#_1C8627: db $0E ; を
#_1C8628: db $FD, $91 ; write kanji - 守
#_1C862A: db $4A, $1B, $C7 ; って!
#_1C862D: db $F6 ; scroll text
#_1C862E: db $00, $20, $18, $20, $38, $FF, $09, $4A ; あなたなら⎵きっ
#_1C8636: db $1C, $36, $09, $3A ; とできる
#_1C863A: db $F6 ; scroll text
#_1C863B: db $FF, $FF, $FF, $CC, $FF, $00, $20, $18 ; ⎵⎵⎵⋯⎵あなた
#_1C8643: db $20, $38, $FF, $CC ; なら⎵⋯
#_1C8647: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK] 気を付けてね!
; ここで あなたの無事を
; お祈りしているわ!
Message_001C:
#_1C8648: db $FE, $6A ; write player name
#_1C864A: db $FF ; ⎵
#_1C864B: db $FD, $37 ; write kanji - 気
#_1C864D: db $0E ; を
#_1C864E: db $FD, $52 ; write kanji - 付
#_1C8650: db $0B, $1B, $23, $C7 ; けてね!
#_1C8654: db $F8 ; cursor to row 2
#_1C8655: db $0C, $0C, $36, $FF, $00, $20, $18, $24 ; ここで⎵あなたの
#_1C865D: db $FD, $21 ; write kanji - 無
#_1C865F: db $FD, $22 ; write kanji - 事
#_1C8661: db $0E ; を
#_1C8662: db $F9 ; cursor to row 3
#_1C8663: db $04 ; お
#_1C8664: db $FD, $AF ; write kanji - 祈
#_1C8666: db $39, $11, $1B, $01, $3A, $0D, $C7 ; りしているわ!
#_1C866D: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; たすけて⋯ ⋯
; たすけてください⋯
; 私は,お城の地下ろうに
; 捕えられています。
; 私の名前はゼルダ⋯⋯
; 6人のイケニエが ささげられ
; 私が さいごの1人⋯
; 城にやって来た司祭アグニムは
; イケニエを使い,7賢者の封印
; を再び開こうとしています。
; ⋯ ⋯
; 私は,お城の地下ろうの中⋯
; たすけて⋯ ⋯
Message_001D:
#_1C866E: db $FE, $6B, $02 ; set window type
#_1C8671: db $FC, $06 ; set text speed
#_1C8673: db $18, $12, $0B, $1B, $CC, $FF, $CC ; たすけて⋯⎵⋯
#_1C867A: db $FE, $78, $01 ; wait
#_1C867D: db $F8 ; cursor to row 2
#_1C867E: db $18, $12, $0B, $1B, $0A, $2E, $10, $01 ; たすけてください
#_1C8686: db $CC ; ⋯
#_1C8687: db $F9 ; cursor to row 3
#_1C8688: db $FD, $26 ; write kanji - 私
#_1C868A: db $28, $C8, $04 ; は,お
#_1C868D: db $FD, $01 ; write kanji - 城
#_1C868F: db $24 ; の
#_1C8690: db $FD, $33 ; write kanji - 地
#_1C8692: db $FD, $61 ; write kanji - 下
#_1C8694: db $3C, $02, $21 ; ろうに
#_1C8697: db $F6 ; scroll text
#_1C8698: db $FD, $9F ; write kanji - 捕
#_1C869A: db $03, $38, $3B, $1B, $01, $30, $12, $CD ; えられています。
#_1C86A2: db $FA ; wait for key
#_1C86A3: db $F6 ; scroll text
#_1C86A4: db $FD, $26 ; write kanji - 私
#_1C86A6: db $24 ; の
#_1C86A7: db $FD, $6F ; write kanji - 名
#_1C86A9: db $FD, $78 ; write kanji - 前
#_1C86AB: db $28, $77, $8A, $7E, $CC, $CC ; はゼルダ⋯⋯
#_1C86B1: db $F6 ; scroll text
#_1C86B2: db $A6 ; 6
#_1C86B3: db $FD, $38 ; write kanji - 人
#_1C86B5: db $24, $51, $5B, $71, $53, $15, $FF, $10 ; のイケニエが⎵さ
#_1C86BD: db $10, $1D, $38, $3B ; さげられ
#_1C86C1: db $F6 ; scroll text
#_1C86C2: db $FD, $26 ; write kanji - 私
#_1C86C4: db $15, $FF, $10, $01, $1E, $24, $A1 ; が⎵さいごの1
#_1C86CB: db $FD, $38 ; write kanji - 人
#_1C86CD: db $CC ; ⋯
#_1C86CE: db $FA ; wait for key
#_1C86CF: db $F6 ; scroll text
#_1C86D0: db $FD, $01 ; write kanji - 城
#_1C86D2: db $21, $05, $4A, $1B ; にやって
#_1C86D6: db $FD, $D6 ; write kanji - 来
#_1C86D8: db $18 ; た
#_1C86D9: db $FD, $0D ; write kanji - 司
#_1C86DB: db $FD, $17 ; write kanji - 祭
#_1C86DD: db $50, $67, $71, $82, $28 ; アグニムは
#_1C86E2: db $F6 ; scroll text
#_1C86E3: db $51, $5B, $71, $53, $0E ; イケニエを
#_1C86E8: db $FD, $89 ; write kanji - 使
#_1C86EA: db $01, $C8, $A7 ; い,7
#_1C86ED: db $FD, $C4 ; write kanji - 賢
#_1C86EF: db $FD, $1E ; write kanji - 者
#_1C86F1: db $24 ; の
#_1C86F2: db $FD, $9E ; write kanji - 封
#_1C86F4: db $FD, $35 ; write kanji - 印
#_1C86F6: db $F6 ; scroll text
#_1C86F7: db $0E ; を
#_1C86F8: db $FD, $B3 ; write kanji - 再
#_1C86FA: db $3E ; び
#_1C86FB: db $FD, $4B ; write kanji - 開
#_1C86FD: db $0C, $02, $1C, $11, $1B, $01, $30, $12 ; こうとしています
#_1C8705: db $CD ; 。
#_1C8706: db $FA ; wait for key
#_1C8707: db $F6 ; scroll text
#_1C8708: db $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯
#_1C870C: db $F6 ; scroll text
#_1C870D: db $FD, $26 ; write kanji - 私
#_1C870F: db $28, $C8, $04 ; は,お
#_1C8712: db $FD, $01 ; write kanji - 城
#_1C8714: db $24 ; の
#_1C8715: db $FD, $33 ; write kanji - 地
#_1C8717: db $FD, $61 ; write kanji - 下
#_1C8719: db $3C, $02, $24 ; ろうの
#_1C871C: db $FD, $AE ; write kanji - 中
#_1C871E: db $CC ; ⋯
#_1C871F: db $F6 ; scroll text
#_1C8720: db $18, $12, $0B, $1B, $CC, $FF, $CC ; たすけて⋯⎵⋯
#_1C8727: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; たすけてください⋯
; 私は お城の地下ろうに
; 捕えられています。
; お城のまわりから,
; 中庭へ通じる抜け穴が
; あるはずよ。
Message_001E:
#_1C8728: db $FE, $6B, $02 ; set window type
#_1C872B: db $FC, $06 ; set text speed
#_1C872D: db $18, $12, $0B, $1B, $0A, $2E, $10, $01 ; たすけてください
#_1C8735: db $CC ; ⋯
#_1C8736: db $F8 ; cursor to row 2
#_1C8737: db $FD, $26 ; write kanji - 私
#_1C8739: db $28, $FF, $04 ; は⎵お
#_1C873C: db $FD, $01 ; write kanji - 城
#_1C873E: db $24 ; の
#_1C873F: db $FD, $33 ; write kanji - 地
#_1C8741: db $FD, $61 ; write kanji - 下
#_1C8743: db $3C, $02, $21 ; ろうに
#_1C8746: db $F9 ; cursor to row 3
#_1C8747: db $FD, $9F ; write kanji - 捕
#_1C8749: db $03, $38, $3B, $1B, $01, $30, $12, $CD ; えられています。
#_1C8751: db $FA ; wait for key
#_1C8752: db $F6 ; scroll text
#_1C8753: db $04 ; お
#_1C8754: db $FD, $01 ; write kanji - 城
#_1C8756: db $24, $30, $0D, $39, $08, $38, $C8 ; のまわりから,
#_1C875D: db $F6 ; scroll text
#_1C875E: db $FD, $AE ; write kanji - 中
#_1C8760: db $FD, $B5 ; write kanji - 庭
#_1C8762: db $2B ; へ
#_1C8763: db $FD, $09 ; write kanji - 通
#_1C8765: db $25, $3A ; じる
#_1C8767: db $FD, $1D ; write kanji - 抜
#_1C8769: db $0B ; け
#_1C876A: db $FD, $5C ; write kanji - 穴
#_1C876C: db $15 ; が
#_1C876D: db $F6 ; scroll text
#_1C876E: db $00, $3A, $28, $26, $07, $CD ; あるはずよ。
#_1C8774: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; お父様の部屋から教会に抜ける
; 通路があるわ。神父様はきっと
; 私達の力になってくれるわ。
Message_001F:
#_1C8775: db $04 ; お
#_1C8776: db $FD, $06 ; write kanji - 父
#_1C8778: db $FD, $10 ; write kanji - 様
#_1C877A: db $24 ; の
#_1C877B: db $FD, $B7 ; write kanji - 部
#_1C877D: db $FD, $3D ; write kanji - 屋
#_1C877F: db $08, $38 ; から
#_1C8781: db $FD, $03 ; write kanji - 教
#_1C8783: db $FD, $04 ; write kanji - 会
#_1C8785: db $21 ; に
#_1C8786: db $FD, $1D ; write kanji - 抜
#_1C8788: db $0B, $3A ; ける
#_1C878A: db $F8 ; cursor to row 2
#_1C878B: db $FD, $09 ; write kanji - 通
#_1C878D: db $FD, $B6 ; write kanji - 路
#_1C878F: db $15, $00, $3A, $0D, $CD ; があるわ。
#_1C8794: db $FD, $05 ; write kanji - 神
#_1C8796: db $FD, $06 ; write kanji - 父
#_1C8798: db $FD, $10 ; write kanji - 様
#_1C879A: db $28, $09, $4A, $1C ; はきっと
#_1C879E: db $F9 ; cursor to row 3
#_1C879F: db $FD, $26 ; write kanji - 私
#_1C87A1: db $FD, $13 ; write kanji - 達
#_1C87A3: db $24 ; の
#_1C87A4: db $FD, $99 ; write kanji - 力
#_1C87A6: db $21, $20, $4A, $1B, $0A, $3B, $3A, $0D ; になってくれるわ
#_1C87AE: db $CD ; 。
#_1C87AF: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; このかざりだなが開くはずよ。
; 何かあかりはある? 中は
; まっくらで,何も見えないの。
; よういが良ければ行きましょう
; 左側から押すといいわ。
; 力をかして!
Message_0020:
#_1C87B0: db $0C, $24, $08, $1F, $39, $2E, $20, $15 ; このかざりだなが
#_1C87B8: db $FD, $4B ; write kanji - 開
#_1C87BA: db $0A, $28, $26, $07, $CD ; くはずよ。
#_1C87BF: db $F8 ; cursor to row 2
#_1C87C0: db $FD, $8B ; write kanji - 何
#_1C87C2: db $08, $00, $08, $39, $28, $00, $3A, $C6 ; かあかりはある?
#_1C87CA: db $FF ; ⎵
#_1C87CB: db $FD, $AE ; write kanji - 中
#_1C87CD: db $28 ; は
#_1C87CE: db $F9 ; cursor to row 3
#_1C87CF: db $30, $4A, $0A, $38, $36, $C8 ; まっくらで,
#_1C87D5: db $FD, $8B ; write kanji - 何
#_1C87D7: db $34 ; も
#_1C87D8: db $FD, $4C ; write kanji - 見
#_1C87DA: db $03, $20, $01, $24, $CD ; えないの。
#_1C87DF: db $FA ; wait for key
#_1C87E0: db $F6 ; scroll text
#_1C87E1: db $07, $02, $01, $15 ; よういが
#_1C87E5: db $FD, $32 ; write kanji - 良
#_1C87E7: db $0B, $3B, $3D ; ければ
#_1C87EA: db $FD, $02 ; write kanji - 行
#_1C87EC: db $09, $30, $11, $49, $02 ; きましょう
#_1C87F1: db $F6 ; scroll text
#_1C87F2: db $FD, $59 ; write kanji - 左
#_1C87F4: db $FD, $5A ; write kanji - 側
#_1C87F6: db $08, $38 ; から
#_1C87F8: db $FD, $77 ; write kanji - 押
#_1C87FA: db $12, $1C, $01, $01, $0D, $CD ; すといいわ。
#_1C8800: db $F6 ; scroll text
#_1C8801: db $FD, $99 ; write kanji - 力
#_1C8803: db $0E, $08, $11, $1B, $C7 ; をかして!
#_1C8808: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ここのレバ－を引くのよ。
; Aボタンを押したまま
; 十字ボタンを手前に入れてみて
Message_0021:
#_1C8809: db $0C, $0C, $24, $8B, $8D, $C9, $0E ; ここのレバ－を
#_1C8810: db $FD, $48 ; write kanji - 引
#_1C8812: db $0A, $24, $07, $CD ; くのよ。
#_1C8816: db $F8 ; cursor to row 2
#_1C8817: db $AA, $91, $68, $5F, $0E ; Aボタンを
#_1C881C: db $FD, $77 ; write kanji - 押
#_1C881E: db $11, $18, $30, $30 ; したまま
#_1C8822: db $F9 ; cursor to row 3
#_1C8823: db $FD, $7A ; write kanji - 十
#_1C8825: db $FD, $7B ; write kanji - 字
#_1C8827: db $91, $68, $5F, $0E ; ボタンを
#_1C882B: db $FD, $3E ; write kanji - 手
#_1C882D: db $FD, $78 ; write kanji - 前
#_1C882F: db $21 ; に
#_1C8830: db $FD, $49 ; write kanji - 入
#_1C8832: db $3B, $1B, $31, $1B ; れてみて
#_1C8836: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; じゃあ,司祭に気づかれる前に
; 急いで逃げましょう!
; 私 秘密の抜け道を知ってるの
; とにかく,1Fのホ－ルまで
; 私を連れて行って。
; さあ,急いで⋯。
Message_0022:
#_1C8837: db $25, $47, $00, $C8 ; じゃあ,
#_1C883B: db $FD, $0D ; write kanji - 司
#_1C883D: db $FD, $17 ; write kanji - 祭
#_1C883F: db $21 ; に
#_1C8840: db $FD, $37 ; write kanji - 気
#_1C8842: db $35, $08, $3B, $3A ; づかれる
#_1C8846: db $FD, $78 ; write kanji - 前
#_1C8848: db $21 ; に
#_1C8849: db $F8 ; cursor to row 2
#_1C884A: db $FD, $7D ; write kanji - 急
#_1C884C: db $01, $36 ; いで
#_1C884E: db $FD, $DD ; write kanji - 逃
#_1C8850: db $1D, $30, $11, $49, $02, $C7 ; げましょう!
#_1C8856: db $F9 ; cursor to row 3
#_1C8857: db $FD, $26 ; write kanji - 私
#_1C8859: db $FF ; ⎵
#_1C885A: db $FD, $C1 ; write kanji - 秘
#_1C885C: db $FD, $C2 ; write kanji - 密
#_1C885E: db $24 ; の
#_1C885F: db $FD, $1D ; write kanji - 抜
#_1C8861: db $0B ; け
#_1C8862: db $FD, $5D ; write kanji - 道
#_1C8864: db $0E ; を
#_1C8865: db $FD, $93 ; write kanji - 知
#_1C8867: db $4A, $1B, $3A, $24 ; ってるの
#_1C886B: db $FA ; wait for key
#_1C886C: db $F6 ; scroll text
#_1C886D: db $1C, $21, $08, $0A, $C8, $A1, $AF, $24 ; とにかく,1Fの
#_1C8875: db $7C, $C9, $8A, $30, $36 ; ホ－ルまで
#_1C887A: db $F6 ; scroll text
#_1C887B: db $FD, $26 ; write kanji - 私
#_1C887D: db $0E ; を
#_1C887E: db $FD, $40 ; write kanji - 連
#_1C8880: db $3B, $1B ; れて
#_1C8882: db $FD, $02 ; write kanji - 行
#_1C8884: db $4A, $1B, $CD ; って。
#_1C8887: db $F6 ; scroll text
#_1C8888: db $10, $00, $C8 ; さあ,
#_1C888B: db $FD, $7D ; write kanji - 急
#_1C888D: db $01, $36, $CC, $CD ; いで⋯。
#_1C8891: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ⋯ ⋯ ⋯
; [LINK] よくきいて
; この城の兵たちは,みんな
; 司祭アグニムの,魔術に
; あやつられているの。
; お父様は,たぶん もう ⋯
; 司祭は,人間ではないわ!
; 強い力を持った悪魔よ!
; ⋯ ⋯ ⋯
; ねえ ちゃんときこえた?
; ▶ う ん
;   ぜんぜん
Message_0023:
#_1C8892: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1C8898: db $F8 ; cursor to row 2
#_1C8899: db $FE, $6A ; write player name
#_1C889B: db $FF, $07, $0A, $09, $01, $1B ; ⎵よくきいて
#_1C88A1: db $F9 ; cursor to row 3
#_1C88A2: db $0C, $24 ; この
#_1C88A4: db $FD, $01 ; write kanji - 城
#_1C88A6: db $24 ; の
#_1C88A7: db $FD, $3A ; write kanji - 兵
#_1C88A9: db $18, $19, $28, $C8, $31, $0F, $20 ; たちは,みんな
#_1C88B0: db $FA ; wait for key
#_1C88B1: db $F6 ; scroll text
#_1C88B2: db $FD, $0D ; write kanji - 司
#_1C88B4: db $FD, $17 ; write kanji - 祭
#_1C88B6: db $50, $67, $71, $82, $24, $C8 ; アグニムの,
#_1C88BC: db $FD, $2D ; write kanji - 魔
#_1C88BE: db $FD, $CB ; write kanji - 術
#_1C88C0: db $21 ; に
#_1C88C1: db $F6 ; scroll text
#_1C88C2: db $00, $05, $1A, $38, $3B, $1B, $01, $3A ; あやつられている
#_1C88CA: db $24, $CD ; の。
#_1C88CC: db $F6 ; scroll text
#_1C88CD: db $04 ; お
#_1C88CE: db $FD, $06 ; write kanji - 父
#_1C88D0: db $FD, $10 ; write kanji - 様
#_1C88D2: db $28, $C8, $18, $3F, $0F, $FF, $34, $02 ; は,たぶん⎵もう
#_1C88DA: db $FF, $CC ; ⎵⋯
#_1C88DC: db $FA ; wait for key
#_1C88DD: db $F6 ; scroll text
#_1C88DE: db $FD, $0D ; write kanji - 司
#_1C88E0: db $FD, $17 ; write kanji - 祭
#_1C88E2: db $28, $C8 ; は,
#_1C88E4: db $FD, $38 ; write kanji - 人
#_1C88E6: db $FD, $39 ; write kanji - 間
#_1C88E8: db $36, $28, $20, $01, $0D, $C7 ; ではないわ!
#_1C88EE: db $F6 ; scroll text
#_1C88EF: db $FD, $FB ; write kanji - 強
#_1C88F1: db $01 ; い
#_1C88F2: db $FD, $99 ; write kanji - 力
#_1C88F4: db $0E ; を
#_1C88F5: db $FD, $DB ; write kanji - 持
#_1C88F7: db $4A, $18 ; った
#_1C88F9: db $FD, $85 ; write kanji - 悪
#_1C88FB: db $FD, $2D ; write kanji - 魔
#_1C88FD: db $07, $C7 ; よ!
#_1C88FF: db $F6 ; scroll text
#_1C8900: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1C8906: db $FA ; wait for key
#_1C8907: db $F6 ; scroll text
#_1C8908: db $23, $03, $FF, $19, $47, $0F, $1C, $09 ; ねえ⎵ちゃんとき
#_1C8910: db $0C, $03, $18, $C6 ; こえた?
#_1C8914: db $F6 ; scroll text
#_1C8915: db $FF, $FF, $E4, $FF, $02, $FF, $FF, $0F ; ⎵⎵▶⎵う⎵⎵ん
#_1C891D: db $F6 ; scroll text
#_1C891E: db $FF, $FF, $FF, $FF, $27, $0F, $27, $0F ; ⎵⎵⎵⎵ぜんぜん
#_1C8926: db $FE, $68 ; get player selection - choose 2 low
#_1C8928: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 長老が,印してくれた地図の点
; を頼りに行けば良いわ。
; 迷ったらうらない屋によってネ
Message_0024:
#_1C8929: db $FD, $8D ; write kanji - 長
#_1C892B: db $FD, $E5 ; write kanji - 老
#_1C892D: db $15, $C8 ; が,
#_1C892F: db $FD, $35 ; write kanji - 印
#_1C8931: db $11, $1B, $0A, $3B, $18 ; してくれた
#_1C8936: db $FD, $33 ; write kanji - 地
#_1C8938: db $FD, $34 ; write kanji - 図
#_1C893A: db $24 ; の
#_1C893B: db $FD, $74 ; write kanji - 点
#_1C893D: db $F8 ; cursor to row 2
#_1C893E: db $0E ; を
#_1C893F: db $FD, $08 ; write kanji - 頼
#_1C8941: db $39, $21 ; りに
#_1C8943: db $FD, $02 ; write kanji - 行
#_1C8945: db $0B, $3D ; けば
#_1C8947: db $FD, $32 ; write kanji - 良
#_1C8949: db $01, $0D, $CD ; いわ。
#_1C894C: db $F9 ; cursor to row 3
#_1C894D: db $FD, $70 ; write kanji - 迷
#_1C894F: db $4A, $18, $38, $02, $38, $20, $01 ; ったらうらない
#_1C8956: db $FD, $3D ; write kanji - 屋
#_1C8958: db $21, $07, $4A, $1B, $73 ; によってネ
#_1C895D: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; すごいわ! [LINK]⋯。
; やはり,あなたは『勇者』と
; なるべき力を秘めていたのよ!
; あとは,マスタ－ソ－ドを手に
; 入れるだけね! だいじょうぶ
; あなたなら司祭に勝てるわ!
Message_0025:
#_1C895E: db $12, $1E, $01, $0D, $C7, $FF ; すごいわ!⎵
#_1C8964: db $FE, $6A ; write player name
#_1C8966: db $CC, $CD ; ⋯。
#_1C8968: db $F8 ; cursor to row 2
#_1C8969: db $05, $28, $39, $C8, $00, $20, $18, $28 ; やはり,あなたは
#_1C8971: db $C4 ; 『
#_1C8972: db $FD, $A0 ; write kanji - 勇
#_1C8974: db $FD, $1E ; write kanji - 者
#_1C8976: db $C5, $1C ; 』と
#_1C8978: db $F9 ; cursor to row 3
#_1C8979: db $20, $3A, $40, $09 ; なるべき
#_1C897D: db $FD, $99 ; write kanji - 力
#_1C897F: db $0E ; を
#_1C8980: db $FD, $C1 ; write kanji - 秘
#_1C8982: db $33, $1B, $01, $18, $24, $07, $C7 ; めていたのよ!
#_1C8989: db $FA ; wait for key
#_1C898A: db $F6 ; scroll text
#_1C898B: db $00, $1C, $28, $C8, $80, $62, $68, $C9 ; あとは,マスタ－
#_1C8993: db $64, $C9, $87, $0E ; ソ－ドを
#_1C8997: db $FD, $3E ; write kanji - 手
#_1C8999: db $21 ; に
#_1C899A: db $F6 ; scroll text
#_1C899B: db $FD, $49 ; write kanji - 入
#_1C899D: db $3B, $3A, $2E, $0B, $23, $C7, $FF, $2E ; れるだけね!⎵だ
#_1C89A5: db $01, $25, $49, $02, $3F ; いじょうぶ
#_1C89AA: db $F6 ; scroll text
#_1C89AB: db $00, $20, $18, $20, $38 ; あなたなら
#_1C89B0: db $FD, $0D ; write kanji - 司
#_1C89B2: db $FD, $17 ; write kanji - 祭
#_1C89B4: db $21 ; に
#_1C89B5: db $FD, $DF ; write kanji - 勝
#_1C89B7: db $1B, $3A, $0D, $C7 ; てるわ!
#_1C89BB: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK]! たすけて!
; し,城の兵たちが,教会へ⋯
; キャアァァ〜 ⋯ ⋯ ⋯
Message_0026:
#_1C89BC: db $FE, $6B, $02 ; set window type
#_1C89BF: db $FC, $06 ; set text speed
#_1C89C1: db $FE, $6A ; write player name
#_1C89C3: db $C7, $FF, $18, $12, $0B, $1B, $C7 ; !⎵たすけて!
#_1C89CA: db $F8 ; cursor to row 2
#_1C89CB: db $11, $C8 ; し,
#_1C89CD: db $FD, $01 ; write kanji - 城
#_1C89CF: db $24 ; の
#_1C89D0: db $FD, $3A ; write kanji - 兵
#_1C89D2: db $18, $19, $15, $C8 ; たちが,
#_1C89D6: db $FD, $03 ; write kanji - 教
#_1C89D8: db $FD, $04 ; write kanji - 会
#_1C89DA: db $2B, $CC ; へ⋯
#_1C89DC: db $F9 ; cursor to row 3
#_1C89DD: db $59, $97, $50, $9B, $9B, $CE, $FF, $CC ; キャアァァ〜⎵⋯
#_1C89E5: db $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯
#_1C89E9: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; この水路をぬけてしまえば,
; 教会まであとすこし⋯。
; 気を付けて行きましょう。
Message_0027:
#_1C89EA: db $0C, $24 ; この
#_1C89EC: db $FD, $66 ; write kanji - 水
#_1C89EE: db $FD, $B6 ; write kanji - 路
#_1C89F0: db $0E, $22, $0B, $1B, $11, $30, $03, $3D ; をぬけてしまえば
#_1C89F8: db $C8 ; ,
#_1C89F9: db $F8 ; cursor to row 2
#_1C89FA: db $FD, $03 ; write kanji - 教
#_1C89FC: db $FD, $04 ; write kanji - 会
#_1C89FE: db $30, $36, $00, $1C, $12, $0C, $11, $CC ; まであとすこし⋯
#_1C8A06: db $CD ; 。
#_1C8A07: db $F9 ; cursor to row 3
#_1C8A08: db $FD, $37 ; write kanji - 気
#_1C8A0A: db $0E ; を
#_1C8A0B: db $FD, $52 ; write kanji - 付
#_1C8A0D: db $0B, $1B ; けて
#_1C8A0F: db $FD, $02 ; write kanji - 行
#_1C8A11: db $09, $30, $11, $49, $02, $CD ; きましょう。
#_1C8A17: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; この先が,教会の中なの。
; この部屋のスイッチを引っぱる
; のよ。
Message_0028:
#_1C8A18: db $0C, $24 ; この
#_1C8A1A: db $FD, $9C ; write kanji - 先
#_1C8A1C: db $15, $C8 ; が,
#_1C8A1E: db $FD, $03 ; write kanji - 教
#_1C8A20: db $FD, $04 ; write kanji - 会
#_1C8A22: db $24 ; の
#_1C8A23: db $FD, $AE ; write kanji - 中
#_1C8A25: db $20, $24, $CD ; なの。
#_1C8A28: db $F8 ; cursor to row 2
#_1C8A29: db $0C, $24 ; この
#_1C8A2B: db $FD, $B7 ; write kanji - 部
#_1C8A2D: db $FD, $3D ; write kanji - 屋
#_1C8A2F: db $24, $62, $51, $9A, $69, $0E ; のスイッチを
#_1C8A35: db $FD, $48 ; write kanji - 引
#_1C8A37: db $4A, $42, $3A ; っぱる
#_1C8A3A: db $F9 ; cursor to row 3
#_1C8A3B: db $24, $07, $CD ; のよ。
#_1C8A3E: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おや,[LINK]や
; ババに何かようかのう。
; 長老? ああ あの人は
; 司祭が イケニエを集め始めた
; ころから,家を出てますのじゃ
; ⋯ ⋯ ⋯
; なに マスタ－ソ－ドとな?
; くわしい事は忘れてしもうたが
Message_0029:
#_1C8A3F: db $04, $05, $C8 ; おや,
#_1C8A42: db $FE, $6A ; write player name
#_1C8A44: db $05 ; や
#_1C8A45: db $F8 ; cursor to row 2
#_1C8A46: db $8D, $8D, $21 ; ババに
#_1C8A49: db $FD, $8B ; write kanji - 何
#_1C8A4B: db $08, $07, $02, $08, $24, $02, $CD ; かようかのう。
#_1C8A52: db $F9 ; cursor to row 3
#_1C8A53: db $FA ; wait for key
#_1C8A54: db $F6 ; scroll text
#_1C8A55: db $FD, $8D ; write kanji - 長
#_1C8A57: db $FD, $E5 ; write kanji - 老
#_1C8A59: db $C6, $FF, $00, $00, $FF, $00, $24 ; ?⎵ああ⎵あの
#_1C8A60: db $FD, $38 ; write kanji - 人
#_1C8A62: db $28 ; は
#_1C8A63: db $F6 ; scroll text
#_1C8A64: db $FD, $0D ; write kanji - 司
#_1C8A66: db $FD, $17 ; write kanji - 祭
#_1C8A68: db $15, $FF, $51, $5B, $71, $53, $0E ; が⎵イケニエを
#_1C8A6F: db $FD, $E0 ; write kanji - 集
#_1C8A71: db $33 ; め
#_1C8A72: db $FD, $E1 ; write kanji - 始
#_1C8A74: db $33, $18 ; めた
#_1C8A76: db $F6 ; scroll text
#_1C8A77: db $0C, $3C, $08, $38, $C8 ; ころから,
#_1C8A7C: db $FD, $56 ; write kanji - 家
#_1C8A7E: db $0E ; を
#_1C8A7F: db $FD, $23 ; write kanji - 出
#_1C8A81: db $1B, $30, $12, $24, $25, $47 ; てますのじゃ
#_1C8A87: db $FA ; wait for key
#_1C8A88: db $F6 ; scroll text
#_1C8A89: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1C8A8F: db $F6 ; scroll text
#_1C8A90: db $20, $21, $FF, $80, $62, $68, $C9, $64 ; なに⎵マスタ－ソ
#_1C8A98: db $C9, $87, $1C, $20, $C6 ; －ドとな?
#_1C8A9D: db $F6 ; scroll text
#_1C8A9E: db $0A, $0D, $11, $01 ; くわしい
#_1C8AA2: db $FD, $22 ; write kanji - 事
#_1C8AA4: db $28 ; は
#_1C8AA5: db $FD, $D8 ; write kanji - 忘
#_1C8AA7: db $3B, $1B, $11, $34, $02, $18, $15 ; れてしもうたが
#_1C8AAE: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 今より はるか昔この地に
; ハイリア族と呼ばれる民が
; さかえておったそうじゃ⋯。
; この国には,その民の残した
; 宝がいくつか かくされておる
; と言うことでな⋯。
; マスタ－ソ－ドは その中でも
; 魔の力を持つ者に対して 特に
; きたえられた剣だときいておる
; そして今も 森の奥深く
; しずかにねむっているはずじゃ
; ⋯ ⋯ ⋯
; ちゃんときこえたかのう?
; ▶ う ん
;   ぜんぜん
Message_002A:
#_1C8AAF: db $FD, $6A ; write kanji - 今
#_1C8AB1: db $07, $39, $FF, $28, $3A, $08 ; より⎵はるか
#_1C8AB7: db $FD, $7E ; write kanji - 昔
#_1C8AB9: db $0C, $24 ; この
#_1C8ABB: db $FD, $33 ; write kanji - 地
#_1C8ABD: db $21 ; に
#_1C8ABE: db $F8 ; cursor to row 2
#_1C8ABF: db $78, $51, $89, $50 ; ハイリア
#_1C8AC3: db $FD, $F2 ; write kanji - 族
#_1C8AC5: db $1C ; と
#_1C8AC6: db $FD, $50 ; write kanji - 呼
#_1C8AC8: db $3D, $3B, $3A ; ばれる
#_1C8ACB: db $FD, $F8 ; write kanji - 民
#_1C8ACD: db $15 ; が
#_1C8ACE: db $F9 ; cursor to row 3
#_1C8ACF: db $10, $08, $03, $1B, $04, $4A, $18, $14 ; さかえておったそ
#_1C8AD7: db $02, $25, $47, $CC, $CD ; うじゃ⋯。
#_1C8ADC: db $FA ; wait for key
#_1C8ADD: db $F6 ; scroll text
#_1C8ADE: db $0C, $24 ; この
#_1C8AE0: db $FD, $2B ; write kanji - 国
#_1C8AE2: db $21, $28, $C8, $14, $24 ; には,その
#_1C8AE7: db $FD, $F8 ; write kanji - 民
#_1C8AE9: db $24 ; の
#_1C8AEA: db $FD, $C6 ; write kanji - 残
#_1C8AEC: db $11, $18 ; した
#_1C8AEE: db $F6 ; scroll text
#_1C8AEF: db $FD, $9A ; write kanji - 宝
#_1C8AF1: db $15, $01, $0A, $1A, $08, $FF, $08, $0A ; がいくつか⎵かく
#_1C8AF9: db $10, $3B, $1B, $04, $3A ; されておる
#_1C8AFE: db $F6 ; scroll text
#_1C8AFF: db $1C ; と
#_1C8B00: db $FD, $16 ; write kanji - 言
#_1C8B02: db $02, $0C, $1C, $36, $20, $CC, $CD ; うことでな⋯。
#_1C8B09: db $FA ; wait for key
#_1C8B0A: db $F6 ; scroll text
#_1C8B0B: db $80, $62, $68, $C9, $64, $C9, $87, $28 ; マスタ－ソ－ドは
#_1C8B13: db $FF, $14, $24 ; ⎵その
#_1C8B16: db $FD, $AE ; write kanji - 中
#_1C8B18: db $36, $34 ; でも
#_1C8B1A: db $F6 ; scroll text
#_1C8B1B: db $FD, $2D ; write kanji - 魔
#_1C8B1D: db $24 ; の
#_1C8B1E: db $FD, $99 ; write kanji - 力
#_1C8B20: db $0E ; を
#_1C8B21: db $FD, $DB ; write kanji - 持
#_1C8B23: db $1A ; つ
#_1C8B24: db $FD, $1E ; write kanji - 者
#_1C8B26: db $21 ; に
#_1C8B27: db $FD, $EC ; write kanji - 対
#_1C8B29: db $11, $1B, $FF ; して⎵
#_1C8B2C: db $FD, $ED ; write kanji - 特
#_1C8B2E: db $21 ; に
#_1C8B2F: db $F6 ; scroll text
#_1C8B30: db $09, $18, $03, $38, $3B, $18 ; きたえられた
#_1C8B36: db $FD, $1A ; write kanji - 剣
#_1C8B38: db $2E, $1C, $09, $01, $1B, $04, $3A ; だときいておる
#_1C8B3F: db $FA ; wait for key
#_1C8B40: db $F6 ; scroll text
#_1C8B41: db $14, $11, $1B ; そして
#_1C8B44: db $FD, $6A ; write kanji - 今
#_1C8B46: db $34, $FF ; も⎵
#_1C8B48: db $FD, $65 ; write kanji - 森
#_1C8B4A: db $24 ; の
#_1C8B4B: db $FD, $80 ; write kanji - 奥
#_1C8B4D: db $FD, $64 ; write kanji - 深
#_1C8B4F: db $0A ; く
#_1C8B50: db $F6 ; scroll text
#_1C8B51: db $11, $26, $08, $21, $23, $32, $4A, $1B ; しずかにねむって
#_1C8B59: db $01, $3A, $28, $26, $25, $47 ; いるはずじゃ
#_1C8B5F: db $F6 ; scroll text
#_1C8B60: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1C8B66: db $FA ; wait for key
#_1C8B67: db $F6 ; scroll text
#_1C8B68: db $19, $47, $0F, $1C, $09, $0C, $03, $18 ; ちゃんときこえた
#_1C8B70: db $08, $24, $02, $C6 ; かのう?
#_1C8B74: db $F6 ; scroll text
#_1C8B75: db $FF, $FF, $E4, $FF, $02, $FF, $FF, $0F ; ⎵⎵▶⎵う⎵⎵ん
#_1C8B7D: db $F6 ; scroll text
#_1C8B7E: db $FF, $FF, $FF, $FF, $27, $0F, $27, $0F ; ⎵⎵⎵⎵ぜんぜん
#_1C8B86: db $FE, $68 ; get player selection - choose 2 low
#_1C8B88: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ともかく,長老を探しなされ。
; 村の者の誰かが,あの人のい
; どころを知っておるはずじゃ。
; はようみつかると良いがのう。
; [LINK]や,気を付けて行かれ
; なさいよ⋯。
Message_002B:
#_1C8B89: db $1C, $34, $08, $0A, $C8 ; ともかく,
#_1C8B8E: db $FD, $8D ; write kanji - 長
#_1C8B90: db $FD, $E5 ; write kanji - 老
#_1C8B92: db $0E ; を
#_1C8B93: db $FD, $69 ; write kanji - 探
#_1C8B95: db $11, $20, $10, $3B, $CD ; しなされ。
#_1C8B9A: db $F8 ; cursor to row 2
#_1C8B9B: db $FD, $8C ; write kanji - 村
#_1C8B9D: db $24 ; の
#_1C8B9E: db $FD, $1E ; write kanji - 者
#_1C8BA0: db $24 ; の
#_1C8BA1: db $FD, $95 ; write kanji - 誰
#_1C8BA3: db $08, $15, $C8, $00, $24 ; かが,あの
#_1C8BA8: db $FD, $38 ; write kanji - 人
#_1C8BAA: db $24, $01 ; のい
#_1C8BAC: db $F9 ; cursor to row 3
#_1C8BAD: db $37, $0C, $3C, $0E ; どころを
#_1C8BB1: db $FD, $93 ; write kanji - 知
#_1C8BB3: db $4A, $1B, $04, $3A, $28, $26, $25, $47 ; っておるはずじゃ
#_1C8BBB: db $CD ; 。
#_1C8BBC: db $FA ; wait for key
#_1C8BBD: db $F6 ; scroll text
#_1C8BBE: db $28, $07, $02, $31, $1A, $08, $3A, $1C ; はようみつかると
#_1C8BC6: db $FD, $32 ; write kanji - 良
#_1C8BC8: db $01, $15, $24, $02, $CD ; いがのう。
#_1C8BCD: db $F6 ; scroll text
#_1C8BCE: db $FE, $6A ; write player name
#_1C8BD0: db $05, $C8 ; や,
#_1C8BD2: db $FD, $37 ; write kanji - 気
#_1C8BD4: db $0E ; を
#_1C8BD5: db $FD, $52 ; write kanji - 付
#_1C8BD7: db $0B, $1B ; けて
#_1C8BD9: db $FD, $02 ; write kanji - 行
#_1C8BDB: db $08, $3B ; かれ
#_1C8BDD: db $F6 ; scroll text
#_1C8BDE: db $20, $10, $01, $07, $CC, $CD ; なさいよ⋯。
#_1C8BE4: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おお,[LINK]や
; りっぱになったのう。どうか
; 村人達を救ってやって下され。
Message_002C:
#_1C8BE5: db $04, $04, $C8 ; おお,
#_1C8BE8: db $FE, $6A ; write player name
#_1C8BEA: db $05 ; や
#_1C8BEB: db $F8 ; cursor to row 2
#_1C8BEC: db $39, $4A, $42, $21, $20, $4A, $18, $24 ; りっぱになったの
#_1C8BF4: db $02, $CD, $37, $02, $08 ; う。どうか
#_1C8BF9: db $F9 ; cursor to row 3
#_1C8BFA: db $FD, $8C ; write kanji - 村
#_1C8BFC: db $FD, $38 ; write kanji - 人
#_1C8BFE: db $FD, $13 ; write kanji - 達
#_1C8C00: db $0E ; を
#_1C8C01: db $FD, $28 ; write kanji - 救
#_1C8C03: db $4A, $1B, $05, $4A, $1B ; ってやって
#_1C8C08: db $FD, $61 ; write kanji - 下
#_1C8C0A: db $10, $3B, $CD ; され。
#_1C8C0D: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; あっ! おたずね者の
; [LINK]だ!
; へいたいの みなさぁ〜ん
Message_002D:
#_1C8C0E: db $00, $4A, $C7, $FF, $04, $18, $26, $23 ; あっ!⎵おたずね
#_1C8C16: db $FD, $1E ; write kanji - 者
#_1C8C18: db $24 ; の
#_1C8C19: db $F8 ; cursor to row 2
#_1C8C1A: db $FE, $6A ; write player name
#_1C8C1C: db $2E, $C7 ; だ!
#_1C8C1E: db $F9 ; cursor to row 3
#_1C8C1F: db $2B, $01, $18, $01, $24, $FF, $31, $20 ; へいたいの⎵みな
#_1C8C27: db $10, $4B, $CE, $0F ; さぁ〜ん
#_1C8C2B: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ううむ,ついに3つの紋章を
; 手に入れたか⋯
; よし まよいの森へ行くが良い
; お前が まことの勇者ならば
; 剣の方で お前を選ぶであろう
; ⋯ ⋯ ⋯ 。
Message_002E:
#_1C8C2C: db $FE, $6D, $01 ; set window position
#_1C8C2F: db $02, $02, $32, $C8, $1A, $01, $21, $A3 ; ううむ,ついに3
#_1C8C37: db $1A, $24 ; つの
#_1C8C39: db $FD, $53 ; write kanji - 紋
#_1C8C3B: db $FD, $54 ; write kanji - 章
#_1C8C3D: db $0E ; を
#_1C8C3E: db $F8 ; cursor to row 2
#_1C8C3F: db $FD, $3E ; write kanji - 手
#_1C8C41: db $21 ; に
#_1C8C42: db $FD, $49 ; write kanji - 入
#_1C8C44: db $3B, $18, $08, $CC ; れたか⋯
#_1C8C48: db $F9 ; cursor to row 3
#_1C8C49: db $07, $11, $FF, $30, $07, $01, $24 ; よし⎵まよいの
#_1C8C50: db $FD, $65 ; write kanji - 森
#_1C8C52: db $2B ; へ
#_1C8C53: db $FD, $02 ; write kanji - 行
#_1C8C55: db $0A, $15 ; くが
#_1C8C57: db $FD, $32 ; write kanji - 良
#_1C8C59: db $01 ; い
#_1C8C5A: db $FA ; wait for key
#_1C8C5B: db $F6 ; scroll text
#_1C8C5C: db $04 ; お
#_1C8C5D: db $FD, $78 ; write kanji - 前
#_1C8C5F: db $15, $FF, $30, $0C, $1C, $24 ; が⎵まことの
#_1C8C65: db $FD, $A0 ; write kanji - 勇
#_1C8C67: db $FD, $1E ; write kanji - 者
#_1C8C69: db $20, $38, $3D ; ならば
#_1C8C6C: db $F6 ; scroll text
#_1C8C6D: db $FD, $1A ; write kanji - 剣
#_1C8C6F: db $24 ; の
#_1C8C70: db $FD, $20 ; write kanji - 方
#_1C8C72: db $36, $FF, $04 ; で⎵お
#_1C8C75: db $FD, $78 ; write kanji - 前
#_1C8C77: db $0E ; を
#_1C8C78: db $FD, $81 ; write kanji - 選
#_1C8C7A: db $3F, $36, $00, $3C, $02 ; ぶであろう
#_1C8C7F: db $F6 ; scroll text
#_1C8C80: db $FF, $FF, $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⎵⎵⋯⎵⋯⎵⋯
#_1C8C88: db $FF, $CD ; ⎵。
#_1C8C8A: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ワシらは,おいぼれて
; たたかえぬ。
; お前だけが,頼りなのじゃ⋯
Message_002F:
#_1C8C8B: db $FE, $6D, $01 ; set window position
#_1C8C8E: db $5D, $61, $38, $28, $C8, $04, $01, $41 ; ワシらは,おいぼ
#_1C8C96: db $3B, $1B ; れて
#_1C8C98: db $F8 ; cursor to row 2
#_1C8C99: db $18, $18, $08, $03, $22, $CD ; たたかえぬ。
#_1C8C9F: db $F9 ; cursor to row 3
#_1C8CA0: db $04 ; お
#_1C8CA1: db $FD, $78 ; write kanji - 前
#_1C8CA3: db $2E, $0B, $15, $C8 ; だけが,
#_1C8CA7: db $FD, $08 ; write kanji - 頼
#_1C8CA9: db $39, $20, $24, $25, $47, $CC ; りなのじゃ⋯
#_1C8CAF: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; いかにもワシが長老であり
; 7賢者のしそんの1人
; サハスラ－ラじゃ。
; ⋯ ⋯ ⋯ なんと
; [LINK]よ,おさないお前が
; 退魔の剣を 求めておるのか!
; じゃが あの剣は誰でも使える
; わけではのうてな。
; 3匹の魔物を倒し3つの紋章を
; 手にした『勇者』だけが使い手
; になれるとハイリアの民は
; 伝えとる ⋯ ⋯ ⋯
; いどんでみるか?
; ▶ う ん
;   もちろん
Message_0030:
#_1C8CB0: db $FE, $6D, $01 ; set window position
#_1C8CB3: db $01, $08, $21, $34, $5D, $61, $15 ; いかにもワシが
#_1C8CBA: db $FD, $8D ; write kanji - 長
#_1C8CBC: db $FD, $E5 ; write kanji - 老
#_1C8CBE: db $36, $00, $39 ; であり
#_1C8CC1: db $F8 ; cursor to row 2
#_1C8CC2: db $A7 ; 7
#_1C8CC3: db $FD, $C4 ; write kanji - 賢
#_1C8CC5: db $FD, $1E ; write kanji - 者
#_1C8CC7: db $24, $11, $14, $0F, $24, $A1 ; のしそんの1
#_1C8CCD: db $FD, $38 ; write kanji - 人
#_1C8CCF: db $F9 ; cursor to row 3
#_1C8CD0: db $60, $78, $62, $88, $C9, $88, $25, $47 ; サハスラ－ラじゃ
#_1C8CD8: db $CD ; 。
#_1C8CD9: db $FA ; wait for key
#_1C8CDA: db $F6 ; scroll text
#_1C8CDB: db $FF, $CC, $FF, $CC, $FF, $CC, $FF, $FF ; ⎵⋯⎵⋯⎵⋯⎵⎵
#_1C8CE3: db $20, $0F, $1C ; なんと
#_1C8CE6: db $F6 ; scroll text
#_1C8CE7: db $FE, $6A ; write player name
#_1C8CE9: db $07, $C8, $04, $10, $20, $01, $04 ; よ,おさないお
#_1C8CF0: db $FD, $78 ; write kanji - 前
#_1C8CF2: db $15 ; が
#_1C8CF3: db $F6 ; scroll text
#_1C8CF4: db $FD, $2C ; write kanji - 退
#_1C8CF6: db $FD, $2D ; write kanji - 魔
#_1C8CF8: db $24 ; の
#_1C8CF9: db $FD, $1A ; write kanji - 剣
#_1C8CFB: db $0E, $FF ; を⎵
#_1C8CFD: db $FD, $9B ; write kanji - 求
#_1C8CFF: db $33, $1B, $04, $3A, $24, $08, $C7 ; めておるのか!
#_1C8D06: db $FA ; wait for key
#_1C8D07: db $F6 ; scroll text
#_1C8D08: db $25, $47, $15, $FF, $00, $24 ; じゃが⎵あの
#_1C8D0E: db $FD, $1A ; write kanji - 剣
#_1C8D10: db $28 ; は
#_1C8D11: db $FD, $95 ; write kanji - 誰
#_1C8D13: db $36, $34 ; でも
#_1C8D15: db $FD, $89 ; write kanji - 使
#_1C8D17: db $03, $3A ; える
#_1C8D19: db $F6 ; scroll text
#_1C8D1A: db $0D, $0B, $36, $28, $24, $02, $1B, $20 ; わけではのうてな
#_1C8D22: db $CD ; 。
#_1C8D23: db $F6 ; scroll text
#_1C8D24: db $A3 ; 3
#_1C8D25: db $FD, $8F ; write kanji - 匹
#_1C8D27: db $24 ; の
#_1C8D28: db $FD, $2D ; write kanji - 魔
#_1C8D2A: db $FD, $51 ; write kanji - 物
#_1C8D2C: db $0E ; を
#_1C8D2D: db $FD, $29 ; write kanji - 倒
#_1C8D2F: db $11, $A3, $1A, $24 ; し3つの
#_1C8D33: db $FD, $53 ; write kanji - 紋
#_1C8D35: db $FD, $54 ; write kanji - 章
#_1C8D37: db $0E ; を
#_1C8D38: db $FA ; wait for key
#_1C8D39: db $F6 ; scroll text
#_1C8D3A: db $FD, $3E ; write kanji - 手
#_1C8D3C: db $21, $11, $18, $C4 ; にした『
#_1C8D40: db $FD, $A0 ; write kanji - 勇
#_1C8D42: db $FD, $1E ; write kanji - 者
#_1C8D44: db $C5, $2E, $0B, $15 ; 』だけが
#_1C8D48: db $FD, $89 ; write kanji - 使
#_1C8D4A: db $01 ; い
#_1C8D4B: db $FD, $3E ; write kanji - 手
#_1C8D4D: db $F6 ; scroll text
#_1C8D4E: db $21, $20, $3B, $3A, $1C, $78, $51, $89 ; になれるとハイリ
#_1C8D56: db $50, $24 ; アの
#_1C8D58: db $FD, $F8 ; write kanji - 民
#_1C8D5A: db $28 ; は
#_1C8D5B: db $F6 ; scroll text
#_1C8D5C: db $FD, $2E ; write kanji - 伝
#_1C8D5E: db $03, $1C, $3A, $FF, $CC, $FF, $CC, $FF ; えとる⎵⋯⎵⋯⎵
#_1C8D66: db $CC ; ⋯
#_1C8D67: db $FA ; wait for key
#_1C8D68: db $F6 ; scroll text
#_1C8D69: db $01, $37, $0F, $36, $31, $3A, $08, $C6 ; いどんでみるか?
#_1C8D71: db $F6 ; scroll text
#_1C8D72: db $FF, $FF, $E4, $FF, $02, $FF, $FF, $0F ; ⎵⎵▶⎵う⎵⎵ん
#_1C8D7A: db $F6 ; scroll text
#_1C8D7B: db $FF, $FF, $FF, $FF, $34, $19, $3C, $0F ; ⎵⎵⎵⎵もちろん
#_1C8D83: db $FE, $68 ; get player selection - choose 2 low
#_1C8D85: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; よし,ならば,この神殿にある
; 『勇気の紋章』を 手に入れる
; ことができるか?
; みごと持ち帰ったならば,ワシ
; の知っている話を教えてやろう
; さあ,神殿へ行くが良い。
Message_0031:
#_1C8D86: db $FE, $6D, $01 ; set window position
#_1C8D89: db $07, $11, $C8, $20, $38, $3D, $C8, $0C ; よし,ならば,こ
#_1C8D91: db $24 ; の
#_1C8D92: db $FD, $05 ; write kanji - 神
#_1C8D94: db $FD, $90 ; write kanji - 殿
#_1C8D96: db $21, $00, $3A ; にある
#_1C8D99: db $F8 ; cursor to row 2
#_1C8D9A: db $C4 ; 『
#_1C8D9B: db $FD, $A0 ; write kanji - 勇
#_1C8D9D: db $FD, $37 ; write kanji - 気
#_1C8D9F: db $24 ; の
#_1C8DA0: db $FD, $53 ; write kanji - 紋
#_1C8DA2: db $FD, $54 ; write kanji - 章
#_1C8DA4: db $C5, $0E, $FF ; 』を⎵
#_1C8DA7: db $FD, $3E ; write kanji - 手
#_1C8DA9: db $21 ; に
#_1C8DAA: db $FD, $49 ; write kanji - 入
#_1C8DAC: db $3B, $3A ; れる
#_1C8DAE: db $F9 ; cursor to row 3
#_1C8DAF: db $0C, $1C, $15, $36, $09, $3A, $08, $C6 ; ことができるか?
#_1C8DB7: db $FA ; wait for key
#_1C8DB8: db $F6 ; scroll text
#_1C8DB9: db $31, $1E, $1C ; みごと
#_1C8DBC: db $FD, $DB ; write kanji - 持
#_1C8DBE: db $19 ; ち
#_1C8DBF: db $FD, $D7 ; write kanji - 帰
#_1C8DC1: db $4A, $18, $20, $38, $3D, $C8, $5D, $61 ; ったならば,ワシ
#_1C8DC9: db $F6 ; scroll text
#_1C8DCA: db $24 ; の
#_1C8DCB: db $FD, $93 ; write kanji - 知
#_1C8DCD: db $4A, $1B, $01, $3A ; っている
#_1C8DD1: db $FD, $A3 ; write kanji - 話
#_1C8DD3: db $0E ; を
#_1C8DD4: db $FD, $03 ; write kanji - 教
#_1C8DD6: db $03, $1B, $05, $3C, $02 ; えてやろう
#_1C8DDB: db $FE, $79, $2D ; play sound effect
#_1C8DDE: db $F6 ; scroll text
#_1C8DDF: db $10, $00, $C8 ; さあ,
#_1C8DE2: db $FD, $05 ; write kanji - 神
#_1C8DE4: db $FD, $90 ; write kanji - 殿
#_1C8DE6: db $2B ; へ
#_1C8DE7: db $FD, $02 ; write kanji - 行
#_1C8DE9: db $0A, $15 ; くが
#_1C8DEB: db $FD, $32 ; write kanji - 良
#_1C8DED: db $01, $CD ; い。
#_1C8DEF: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ワシの他にも7賢者のしそんが
; 城の者の目をのがれて姿をかく
; しておるはず。探しなされ。
Message_0032:
#_1C8DF0: db $FE, $6D, $01 ; set window position
#_1C8DF3: db $5D, $61, $24 ; ワシの
#_1C8DF6: db $FD, $27 ; write kanji - 他
#_1C8DF8: db $21, $34, $A7 ; にも7
#_1C8DFB: db $FD, $C4 ; write kanji - 賢
#_1C8DFD: db $FD, $1E ; write kanji - 者
#_1C8DFF: db $24, $11, $14, $0F, $15 ; のしそんが
#_1C8E04: db $F8 ; cursor to row 2
#_1C8E05: db $FD, $01 ; write kanji - 城
#_1C8E07: db $24 ; の
#_1C8E08: db $FD, $1E ; write kanji - 者
#_1C8E0A: db $24 ; の
#_1C8E0B: db $FD, $75 ; write kanji - 目
#_1C8E0D: db $0E, $24, $15, $3B, $1B ; をのがれて
#_1C8E12: db $FD, $A2 ; write kanji - 姿
#_1C8E14: db $0E, $08, $0A ; をかく
#_1C8E17: db $F9 ; cursor to row 3
#_1C8E18: db $11, $1B, $04, $3A, $28, $26, $CD ; しておるはず。
#_1C8E1F: db $FD, $69 ; write kanji - 探
#_1C8E21: db $11, $20, $10, $3B, $CD ; しなされ。
#_1C8E26: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK]よ,このサハスラ－ラ
; の声がきこえるか? お前が
; 今,立っているのは,もとは
; 聖地とよばれていた世界⋯
; しかし,今では魔族のはびこる
; 言わば,闇の世界じゃ。
; 司祭は,封印をとき城の入口に
; 闇世界とこちら側を結ぶ通り道
; を開いてしまったようじゃ。
; 再び,こちらの世界を救うには
; 『黄金の力』をとり戻すしか
; 道は残されておらぬ!
; 7人の娘達を助けてやってくれ
; 7賢者の血をひく彼女らの力
; 必ず,やくにたつであろう!
; 娘達は,それぞれ魔物のかくれ
; 家に封じこめられておる。まず
; ヤミの神殿へ向かうのじゃ!
; 頼りは,お前だけ⋯
; このサハスラ－ラの願いをかな
; えてくれ! 頼むぞ[LINK]よ
Message_0033:
#_1C8E27: db $FE, $6B, $02 ; set window type
#_1C8E2A: db $FC, $06 ; set text speed
#_1C8E2C: db $FE, $6A ; write player name
#_1C8E2E: db $07, $C8, $0C, $24, $60, $78, $62, $88 ; よ,このサハスラ
#_1C8E36: db $C9, $88 ; －ラ
#_1C8E38: db $F8 ; cursor to row 2
#_1C8E39: db $24 ; の
#_1C8E3A: db $FD, $60 ; write kanji - 声
#_1C8E3C: db $15, $09, $0C, $03, $3A, $08, $C6, $FF ; がきこえるか?⎵
#_1C8E44: db $04 ; お
#_1C8E45: db $FD, $78 ; write kanji - 前
#_1C8E47: db $15 ; が
#_1C8E48: db $F9 ; cursor to row 3
#_1C8E49: db $FD, $6A ; write kanji - 今
#_1C8E4B: db $C8 ; ,
#_1C8E4C: db $FD, $71 ; write kanji - 立
#_1C8E4E: db $4A, $1B, $01, $3A, $24, $28, $C8, $34 ; っているのは,も
#_1C8E56: db $1C, $28 ; とは
#_1C8E58: db $FA ; wait for key
#_1C8E59: db $F6 ; scroll text
#_1C8E5A: db $FD, $F6 ; write kanji - 聖
#_1C8E5C: db $FD, $33 ; write kanji - 地
#_1C8E5E: db $1C, $07, $3D, $3B, $1B, $01, $18 ; とよばれていた
#_1C8E65: db $FD, $E8 ; write kanji - 世
#_1C8E67: db $FD, $E9 ; write kanji - 界
#_1C8E69: db $CC ; ⋯
#_1C8E6A: db $F6 ; scroll text
#_1C8E6B: db $11, $08, $11, $C8 ; しかし,
#_1C8E6F: db $FD, $6A ; write kanji - 今
#_1C8E71: db $36, $28 ; では
#_1C8E73: db $FD, $2D ; write kanji - 魔
#_1C8E75: db $FD, $F2 ; write kanji - 族
#_1C8E77: db $24, $28, $3E, $0C, $3A ; のはびこる
#_1C8E7C: db $F6 ; scroll text
#_1C8E7D: db $FD, $16 ; write kanji - 言
#_1C8E7F: db $0D, $3D, $C8 ; わば,
#_1C8E82: db $FD, $57 ; write kanji - 闇
#_1C8E84: db $24 ; の
#_1C8E85: db $FD, $E8 ; write kanji - 世
#_1C8E87: db $FD, $E9 ; write kanji - 界
#_1C8E89: db $25, $47, $CD ; じゃ。
#_1C8E8C: db $FA ; wait for key
#_1C8E8D: db $F6 ; scroll text
#_1C8E8E: db $FD, $0D ; write kanji - 司
#_1C8E90: db $FD, $17 ; write kanji - 祭
#_1C8E92: db $28, $C8 ; は,
#_1C8E94: db $FD, $9E ; write kanji - 封
#_1C8E96: db $FD, $35 ; write kanji - 印
#_1C8E98: db $0E, $1C, $09 ; をとき
#_1C8E9B: db $FD, $01 ; write kanji - 城
#_1C8E9D: db $24 ; の
#_1C8E9E: db $FD, $49 ; write kanji - 入
#_1C8EA0: db $FD, $4A ; write kanji - 口
#_1C8EA2: db $21 ; に
#_1C8EA3: db $F6 ; scroll text
#_1C8EA4: db $FD, $57 ; write kanji - 闇
#_1C8EA6: db $FD, $E8 ; write kanji - 世
#_1C8EA8: db $FD, $E9 ; write kanji - 界
#_1C8EAA: db $1C, $0C, $19, $38 ; とこちら
#_1C8EAE: db $FD, $5A ; write kanji - 側
#_1C8EB0: db $0E ; を
#_1C8EB1: db $FD, $83 ; write kanji - 結
#_1C8EB3: db $3F ; ぶ
#_1C8EB4: db $FD, $09 ; write kanji - 通
#_1C8EB6: db $39 ; り
#_1C8EB7: db $FD, $5D ; write kanji - 道
#_1C8EB9: db $F6 ; scroll text
#_1C8EBA: db $0E ; を
#_1C8EBB: db $FD, $4B ; write kanji - 開
#_1C8EBD: db $01, $1B, $11, $30, $4A, $18, $07, $02 ; いてしまったよう
#_1C8EC5: db $25, $47, $CD ; じゃ。
#_1C8EC8: db $FA ; wait for key
#_1C8EC9: db $F6 ; scroll text
#_1C8ECA: db $FD, $B3 ; write kanji - 再
#_1C8ECC: db $3E, $C8, $0C, $19, $38, $24 ; び,こちらの
#_1C8ED2: db $FD, $E8 ; write kanji - 世
#_1C8ED4: db $FD, $E9 ; write kanji - 界
#_1C8ED6: db $0E ; を
#_1C8ED7: db $FD, $28 ; write kanji - 救
#_1C8ED9: db $02, $21, $28 ; うには
#_1C8EDC: db $F6 ; scroll text
#_1C8EDD: db $C4 ; 『
#_1C8EDE: db $FD, $98 ; write kanji - 黄
#_1C8EE0: db $FD, $43 ; write kanji - 金
#_1C8EE2: db $24 ; の
#_1C8EE3: db $FD, $99 ; write kanji - 力
#_1C8EE5: db $C5, $0E, $1C, $39 ; 』をとり
#_1C8EE9: db $FD, $0F ; write kanji - 戻
#_1C8EEB: db $12, $11, $08 ; すしか
#_1C8EEE: db $F6 ; scroll text
#_1C8EEF: db $FD, $5D ; write kanji - 道
#_1C8EF1: db $28 ; は
#_1C8EF2: db $FD, $C6 ; write kanji - 残
#_1C8EF4: db $10, $3B, $1B, $04, $38, $22, $C7 ; されておらぬ!
#_1C8EFB: db $FA ; wait for key
#_1C8EFC: db $F6 ; scroll text
#_1C8EFD: db $A7 ; 7
#_1C8EFE: db $FD, $38 ; write kanji - 人
#_1C8F00: db $24 ; の
#_1C8F01: db $FD, $00 ; write kanji - 娘
#_1C8F03: db $FD, $13 ; write kanji - 達
#_1C8F05: db $0E ; を
#_1C8F06: db $FD, $CA ; write kanji - 助
#_1C8F08: db $0B, $1B, $05, $4A, $1B, $0A, $3B ; けてやってくれ
#_1C8F0F: db $F6 ; scroll text
#_1C8F10: db $A7 ; 7
#_1C8F11: db $FD, $C4 ; write kanji - 賢
#_1C8F13: db $FD, $1E ; write kanji - 者
#_1C8F15: db $24 ; の
#_1C8F16: db $FD, $B9 ; write kanji - 血
#_1C8F18: db $0E, $29, $0A ; をひく
#_1C8F1B: db $FD, $14 ; write kanji - 彼
#_1C8F1D: db $FD, $15 ; write kanji - 女
#_1C8F1F: db $38, $24 ; らの
#_1C8F21: db $FD, $99 ; write kanji - 力
#_1C8F23: db $F6 ; scroll text
#_1C8F24: db $FD, $30 ; write kanji - 必
#_1C8F26: db $26, $C8, $05, $0A, $21, $18, $1A, $36 ; ず,やくにたつで
#_1C8F2E: db $00, $3C, $02, $C7 ; あろう!
#_1C8F32: db $FA ; wait for key
#_1C8F33: db $F6 ; scroll text
#_1C8F34: db $FD, $00 ; write kanji - 娘
#_1C8F36: db $FD, $13 ; write kanji - 達
#_1C8F38: db $28, $C8, $14, $3B, $2D, $3B ; は,それぞれ
#_1C8F3E: db $FD, $2D ; write kanji - 魔
#_1C8F40: db $FD, $51 ; write kanji - 物
#_1C8F42: db $24, $08, $0A, $3B ; のかくれ
#_1C8F46: db $F6 ; scroll text
#_1C8F47: db $FD, $56 ; write kanji - 家
#_1C8F49: db $21 ; に
#_1C8F4A: db $FD, $9E ; write kanji - 封
#_1C8F4C: db $25, $0C, $33, $38, $3B, $1B, $04, $3A ; じこめられておる
#_1C8F54: db $CD, $30, $26 ; 。まず
#_1C8F57: db $F6 ; scroll text
#_1C8F58: db $55, $81, $24 ; ヤミの
#_1C8F5B: db $FD, $05 ; write kanji - 神
#_1C8F5D: db $FD, $90 ; write kanji - 殿
#_1C8F5F: db $2B ; へ
#_1C8F60: db $FD, $86 ; write kanji - 向
#_1C8F62: db $08, $02, $24, $25, $47, $C7 ; かうのじゃ!
#_1C8F68: db $FE, $79, $2D ; play sound effect
#_1C8F6B: db $FA ; wait for key
#_1C8F6C: db $F6 ; scroll text
#_1C8F6D: db $FD, $08 ; write kanji - 頼
#_1C8F6F: db $39, $28, $C8, $04 ; りは,お
#_1C8F73: db $FD, $78 ; write kanji - 前
#_1C8F75: db $2E, $0B, $CC ; だけ⋯
#_1C8F78: db $F6 ; scroll text
#_1C8F79: db $0C, $24, $60, $78, $62, $88, $C9, $88 ; このサハスラ－ラ
#_1C8F81: db $24 ; の
#_1C8F82: db $FD, $0A ; write kanji - 願
#_1C8F84: db $01, $0E, $08, $20 ; いをかな
#_1C8F88: db $F6 ; scroll text
#_1C8F89: db $03, $1B, $0A, $3B, $C7, $FF ; えてくれ!⎵
#_1C8F8F: db $FD, $08 ; write kanji - 頼
#_1C8F91: db $32, $2D ; むぞ
#_1C8F93: db $FE, $6A ; write player name
#_1C8F95: db $07 ; よ
#_1C8F96: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; しかし,その姿ではどうしよう
; もあるまい⋯。ヘブラ山の塔で
; ム－ンパ－ルを見つけるのじゃ
; ム－ンパ－ルは,闇世界の魔力
; から,お前を守り,勇者の姿を
; たもってくれるであろう。
Message_0034:
#_1C8F97: db $FE, $6B, $02 ; set window type
#_1C8F9A: db $FC, $06 ; set text speed
#_1C8F9C: db $11, $08, $11, $C8, $14, $24 ; しかし,その
#_1C8FA2: db $FD, $A2 ; write kanji - 姿
#_1C8FA4: db $36, $28, $37, $02, $11, $07, $02 ; ではどうしよう
#_1C8FAB: db $F8 ; cursor to row 2
#_1C8FAC: db $34, $00, $3A, $30, $01, $CC, $CD, $7B ; もあるまい⋯。ヘ
#_1C8FB4: db $8F, $88 ; ブラ
#_1C8FB6: db $FD, $94 ; write kanji - 山
#_1C8FB8: db $24 ; の
#_1C8FB9: db $FD, $D5 ; write kanji - 塔
#_1C8FBB: db $36 ; で
#_1C8FBC: db $F9 ; cursor to row 3
#_1C8FBD: db $82, $C9, $5F, $92, $C9, $8A, $0E ; ム－ンパ－ルを
#_1C8FC4: db $FD, $4C ; write kanji - 見
#_1C8FC6: db $1A, $0B, $3A, $24, $25, $47 ; つけるのじゃ
#_1C8FCC: db $FA ; wait for key
#_1C8FCD: db $F6 ; scroll text
#_1C8FCE: db $82, $C9, $5F, $92, $C9, $8A, $28, $C8 ; ム－ンパ－ルは,
#_1C8FD6: db $FD, $57 ; write kanji - 闇
#_1C8FD8: db $FD, $E8 ; write kanji - 世
#_1C8FDA: db $FD, $E9 ; write kanji - 界
#_1C8FDC: db $24 ; の
#_1C8FDD: db $FD, $2D ; write kanji - 魔
#_1C8FDF: db $FD, $99 ; write kanji - 力
#_1C8FE1: db $F6 ; scroll text
#_1C8FE2: db $08, $38, $C8, $04 ; から,お
#_1C8FE6: db $FD, $78 ; write kanji - 前
#_1C8FE8: db $0E ; を
#_1C8FE9: db $FD, $91 ; write kanji - 守
#_1C8FEB: db $39, $C8 ; り,
#_1C8FED: db $FD, $A0 ; write kanji - 勇
#_1C8FEF: db $FD, $1E ; write kanji - 者
#_1C8FF1: db $24 ; の
#_1C8FF2: db $FD, $A2 ; write kanji - 姿
#_1C8FF4: db $0E ; を
#_1C8FF5: db $F6 ; scroll text
#_1C8FF6: db $18, $34, $4A, $1B, $0A, $3B, $3A, $36 ; たもってくれるで
#_1C8FFE: db $00, $3C, $02, $CD ; あろう。
#_1C9002: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ハイリア湖の東の洞くつに,
; お前の助けとなる物がかくされ
; ておる。手に入れなされよ。
Message_0035:
#_1C9003: db $FE, $6D, $01 ; set window position
#_1C9006: db $78, $51, $89, $50 ; ハイリア
#_1C900A: db $FD, $12 ; write kanji - 湖
#_1C900C: db $24 ; の
#_1C900D: db $FD, $D9 ; write kanji - 東
#_1C900F: db $24 ; の
#_1C9010: db $FD, $EF ; write kanji - 洞
#_1C9012: db $0A, $1A, $21, $C8 ; くつに,
#_1C9016: db $F8 ; cursor to row 2
#_1C9017: db $04 ; お
#_1C9018: db $FD, $78 ; write kanji - 前
#_1C901A: db $24 ; の
#_1C901B: db $FD, $CA ; write kanji - 助
#_1C901D: db $0B, $1C, $20, $3A ; けとなる
#_1C9021: db $FD, $51 ; write kanji - 物
#_1C9023: db $15, $08, $0A, $10, $3B ; がかくされ
#_1C9028: db $F9 ; cursor to row 3
#_1C9029: db $1B, $04, $3A, $CD ; ておる。
#_1C902D: db $FD, $3E ; write kanji - 手
#_1C902F: db $21 ; に
#_1C9030: db $FD, $49 ; write kanji - 入
#_1C9032: db $3B, $20, $10, $3B, $07, $CD ; れなされよ。
#_1C9038: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おお,なんと『勇気の紋章』を
; 手に入れたか⋯。では,ワシの
; 知っている話をしよう。
; その昔,ハイリアの王家を守る
; 者たちの－族がおった。
; 彼らは勇気の紋章を司どる,
; ナイトの－族と呼ばれておった
; のじゃが,7賢者の封印が行な
; われた時,魔族とのたたかいで
; ほとんどの者がほろんでしまっ
; たのじゃ。そのナイトの－族か
; ら勇者が現れるはずなのじゃが
; ⋯ よし,[LINK]よ,お前
; を信じよう。残りの紋章を
; 手に入れるが良い。
; それから,これを持って行け。
; ワシら賢者の－族に伝わる宝,
; お前にやろう。
Message_0036:
#_1C9039: db $FE, $6D, $01 ; set window position
#_1C903C: db $04, $04, $C8, $20, $0F, $1C, $C4 ; おお,なんと『
#_1C9043: db $FD, $A0 ; write kanji - 勇
#_1C9045: db $FD, $37 ; write kanji - 気
#_1C9047: db $24 ; の
#_1C9048: db $FD, $53 ; write kanji - 紋
#_1C904A: db $FD, $54 ; write kanji - 章
#_1C904C: db $C5, $0E ; 』を
#_1C904E: db $F8 ; cursor to row 2
#_1C904F: db $FD, $3E ; write kanji - 手
#_1C9051: db $21 ; に
#_1C9052: db $FD, $49 ; write kanji - 入
#_1C9054: db $3B, $18, $08, $CC, $CD, $36, $28, $C8 ; れたか⋯。では,
#_1C905C: db $5D, $61, $24 ; ワシの
#_1C905F: db $F9 ; cursor to row 3
#_1C9060: db $FD, $93 ; write kanji - 知
#_1C9062: db $4A, $1B, $01, $3A ; っている
#_1C9066: db $FD, $A3 ; write kanji - 話
#_1C9068: db $0E, $11, $07, $02, $CD ; をしよう。
#_1C906D: db $FA ; wait for key
#_1C906E: db $F6 ; scroll text
#_1C906F: db $14, $24 ; その
#_1C9071: db $FD, $7E ; write kanji - 昔
#_1C9073: db $C8, $78, $51, $89, $50, $24 ; ,ハイリアの
#_1C9079: db $FD, $44 ; write kanji - 王
#_1C907B: db $FD, $56 ; write kanji - 家
#_1C907D: db $0E ; を
#_1C907E: db $FD, $91 ; write kanji - 守
#_1C9080: db $3A ; る
#_1C9081: db $F6 ; scroll text
#_1C9082: db $FD, $1E ; write kanji - 者
#_1C9084: db $18, $19, $24, $C9 ; たちの－
#_1C9088: db $FD, $F2 ; write kanji - 族
#_1C908A: db $15, $04, $4A, $18, $CD ; がおった。
#_1C908F: db $F6 ; scroll text
#_1C9090: db $FD, $14 ; write kanji - 彼
#_1C9092: db $38, $28 ; らは
#_1C9094: db $FD, $A0 ; write kanji - 勇
#_1C9096: db $FD, $37 ; write kanji - 気
#_1C9098: db $24 ; の
#_1C9099: db $FD, $53 ; write kanji - 紋
#_1C909B: db $FD, $54 ; write kanji - 章
#_1C909D: db $0E ; を
#_1C909E: db $FD, $0D ; write kanji - 司
#_1C90A0: db $37, $3A, $C8 ; どる,
#_1C90A3: db $FA ; wait for key
#_1C90A4: db $F6 ; scroll text
#_1C90A5: db $70, $51, $6C, $24, $C9 ; ナイトの－
#_1C90AA: db $FD, $F2 ; write kanji - 族
#_1C90AC: db $1C ; と
#_1C90AD: db $FD, $50 ; write kanji - 呼
#_1C90AF: db $3D, $3B, $1B, $04, $4A, $18 ; ばれておった
#_1C90B5: db $F6 ; scroll text
#_1C90B6: db $24, $25, $47, $15, $C8, $A7 ; のじゃが,7
#_1C90BC: db $FD, $C4 ; write kanji - 賢
#_1C90BE: db $FD, $1E ; write kanji - 者
#_1C90C0: db $24 ; の
#_1C90C1: db $FD, $9E ; write kanji - 封
#_1C90C3: db $FD, $35 ; write kanji - 印
#_1C90C5: db $15 ; が
#_1C90C6: db $FD, $02 ; write kanji - 行
#_1C90C8: db $20 ; な
#_1C90C9: db $F6 ; scroll text
#_1C90CA: db $0D, $3B, $18 ; われた
#_1C90CD: db $FD, $88 ; write kanji - 時
#_1C90CF: db $C8 ; ,
#_1C90D0: db $FD, $2D ; write kanji - 魔
#_1C90D2: db $FD, $F2 ; write kanji - 族
#_1C90D4: db $1C, $24, $18, $18, $08, $01, $36 ; とのたたかいで
#_1C90DB: db $FA ; wait for key
#_1C90DC: db $F6 ; scroll text
#_1C90DD: db $2C, $1C, $0F, $37, $24 ; ほとんどの
#_1C90E2: db $FD, $1E ; write kanji - 者
#_1C90E4: db $15, $2C, $3C, $0F, $36, $11, $30, $4A ; がほろんでしまっ
#_1C90EC: db $F6 ; scroll text
#_1C90ED: db $18, $24, $25, $47, $CD, $14, $24, $70 ; たのじゃ。そのナ
#_1C90F5: db $51, $6C, $24, $C9 ; イトの－
#_1C90F9: db $FD, $F2 ; write kanji - 族
#_1C90FB: db $08 ; か
#_1C90FC: db $F6 ; scroll text
#_1C90FD: db $38 ; ら
#_1C90FE: db $FD, $A0 ; write kanji - 勇
#_1C9100: db $FD, $1E ; write kanji - 者
#_1C9102: db $15 ; が
#_1C9103: db $FD, $BC ; write kanji - 現
#_1C9105: db $3B, $3A, $28, $26, $20, $24, $25, $47 ; れるはずなのじゃ
#_1C910D: db $15 ; が
#_1C910E: db $FA ; wait for key
#_1C910F: db $F6 ; scroll text
#_1C9110: db $FF, $CC, $FF, $07, $11, $C8 ; ⎵⋯⎵よし,
#_1C9116: db $FE, $6A ; write player name
#_1C9118: db $07, $C8, $04 ; よ,お
#_1C911B: db $FD, $78 ; write kanji - 前
#_1C911D: db $F6 ; scroll text
#_1C911E: db $0E ; を
#_1C911F: db $FD, $45 ; write kanji - 信
#_1C9121: db $25, $07, $02, $CD ; じよう。
#_1C9125: db $FD, $C6 ; write kanji - 残
#_1C9127: db $39, $24 ; りの
#_1C9129: db $FD, $53 ; write kanji - 紋
#_1C912B: db $FD, $54 ; write kanji - 章
#_1C912D: db $0E ; を
#_1C912E: db $F6 ; scroll text
#_1C912F: db $FD, $3E ; write kanji - 手
#_1C9131: db $21 ; に
#_1C9132: db $FD, $49 ; write kanji - 入
#_1C9134: db $3B, $3A, $15 ; れるが
#_1C9137: db $FD, $32 ; write kanji - 良
#_1C9139: db $01, $CD ; い。
#_1C913B: db $FA ; wait for key
#_1C913C: db $F6 ; scroll text
#_1C913D: db $14, $3B, $08, $38, $C8, $0C, $3B, $0E ; それから,これを
#_1C9145: db $FD, $DB ; write kanji - 持
#_1C9147: db $4A, $1B ; って
#_1C9149: db $FD, $02 ; write kanji - 行
#_1C914B: db $0B, $CD ; け。
#_1C914D: db $F6 ; scroll text
#_1C914E: db $5D, $61, $38 ; ワシら
#_1C9151: db $FD, $C4 ; write kanji - 賢
#_1C9153: db $FD, $1E ; write kanji - 者
#_1C9155: db $24, $C9 ; の－
#_1C9157: db $FD, $F2 ; write kanji - 族
#_1C9159: db $21 ; に
#_1C915A: db $FD, $2E ; write kanji - 伝
#_1C915C: db $0D, $3A ; わる
#_1C915E: db $FD, $9A ; write kanji - 宝
#_1C9160: db $C8 ; ,
#_1C9161: db $F6 ; scroll text
#_1C9162: db $04 ; お
#_1C9163: db $FD, $78 ; write kanji - 前
#_1C9165: db $21, $05, $3C, $02, $CD ; にやろう。
#_1C916A: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; いかにもワシが長老であり
; 7賢者のしそんの1人
; サハスラ－ラじゃ。
; ⋯ ⋯ ⋯ なんと
; [LINK]よ,おさないお前が
; 退魔の剣を 求めておるのか!
; じゃが あの剣は誰でも使える
; わけではのうてな。
; 3匹の魔物を倒し3つの紋章を
; 手にした『勇者』だけが使い手
; になれるとハイリアの民は
; 伝えとる ⋯ ⋯ ⋯
; お前は,すでに『勇気の紋章』
; を手に入れておる様じゃのう。
; では,もうすこし話をしよう⋯
; その昔,ハイリアの王家を守る
; 者たちの－族がおった。
; 彼らは勇気の紋章を司どる,
; ナイトの－族と呼ばれておった
; のじゃが,7賢者の封印が行な
; われた時,魔族とのたたかいで
; ほとんどの者がほろんでしまっ
; たのじゃ。そのナイトの－族か
; ら勇者が現れるはずなのじゃが
; ⋯ よし,[LINK]よ,お前
; を信じよう。残りの紋章を
; 手に入れるが良い。
; それから,これを持って行け。
; ワシら賢者の－族に伝わる宝,
; お前にやろう。
Message_0037:
#_1C916B: db $FE, $6D, $01 ; set window position
#_1C916E: db $01, $08, $21, $34, $5D, $61, $15 ; いかにもワシが
#_1C9175: db $FD, $8D ; write kanji - 長
#_1C9177: db $FD, $E5 ; write kanji - 老
#_1C9179: db $36, $00, $39 ; であり
#_1C917C: db $F8 ; cursor to row 2
#_1C917D: db $A7 ; 7
#_1C917E: db $FD, $C4 ; write kanji - 賢
#_1C9180: db $FD, $1E ; write kanji - 者
#_1C9182: db $24, $11, $14, $0F, $24, $A1 ; のしそんの1
#_1C9188: db $FD, $38 ; write kanji - 人
#_1C918A: db $F9 ; cursor to row 3
#_1C918B: db $60, $78, $62, $88, $C9, $88, $25, $47 ; サハスラ－ラじゃ
#_1C9193: db $CD ; 。
#_1C9194: db $FA ; wait for key
#_1C9195: db $F6 ; scroll text
#_1C9196: db $FF, $CC, $FF, $CC, $FF, $CC, $FF, $FF ; ⎵⋯⎵⋯⎵⋯⎵⎵
#_1C919E: db $20, $0F, $1C ; なんと
#_1C91A1: db $F6 ; scroll text
#_1C91A2: db $FE, $6A ; write player name
#_1C91A4: db $07, $C8, $04, $10, $20, $01, $04 ; よ,おさないお
#_1C91AB: db $FD, $78 ; write kanji - 前
#_1C91AD: db $15 ; が
#_1C91AE: db $F6 ; scroll text
#_1C91AF: db $FD, $2C ; write kanji - 退
#_1C91B1: db $FD, $2D ; write kanji - 魔
#_1C91B3: db $24 ; の
#_1C91B4: db $FD, $1A ; write kanji - 剣
#_1C91B6: db $0E, $FF ; を⎵
#_1C91B8: db $FD, $9B ; write kanji - 求
#_1C91BA: db $33, $1B, $04, $3A, $24, $08, $C7 ; めておるのか!
#_1C91C1: db $FA ; wait for key
#_1C91C2: db $F6 ; scroll text
#_1C91C3: db $25, $47, $15, $FF, $00, $24 ; じゃが⎵あの
#_1C91C9: db $FD, $1A ; write kanji - 剣
#_1C91CB: db $28 ; は
#_1C91CC: db $FD, $95 ; write kanji - 誰
#_1C91CE: db $36, $34 ; でも
#_1C91D0: db $FD, $89 ; write kanji - 使
#_1C91D2: db $03, $3A ; える
#_1C91D4: db $F6 ; scroll text
#_1C91D5: db $0D, $0B, $36, $28, $24, $02, $1B, $20 ; わけではのうてな
#_1C91DD: db $CD ; 。
#_1C91DE: db $F6 ; scroll text
#_1C91DF: db $A3 ; 3
#_1C91E0: db $FD, $8F ; write kanji - 匹
#_1C91E2: db $24 ; の
#_1C91E3: db $FD, $2D ; write kanji - 魔
#_1C91E5: db $FD, $51 ; write kanji - 物
#_1C91E7: db $0E ; を
#_1C91E8: db $FD, $29 ; write kanji - 倒
#_1C91EA: db $11, $A3, $1A, $24 ; し3つの
#_1C91EE: db $FD, $53 ; write kanji - 紋
#_1C91F0: db $FD, $54 ; write kanji - 章
#_1C91F2: db $0E ; を
#_1C91F3: db $FA ; wait for key
#_1C91F4: db $F6 ; scroll text
#_1C91F5: db $FD, $3E ; write kanji - 手
#_1C91F7: db $21, $11, $18, $C4 ; にした『
#_1C91FB: db $FD, $A0 ; write kanji - 勇
#_1C91FD: db $FD, $1E ; write kanji - 者
#_1C91FF: db $C5, $2E, $0B, $15 ; 』だけが
#_1C9203: db $FD, $89 ; write kanji - 使
#_1C9205: db $01 ; い
#_1C9206: db $FD, $3E ; write kanji - 手
#_1C9208: db $F6 ; scroll text
#_1C9209: db $21, $20, $3B, $3A, $1C, $78, $51, $89 ; になれるとハイリ
#_1C9211: db $50, $24 ; アの
#_1C9213: db $FD, $F8 ; write kanji - 民
#_1C9215: db $28 ; は
#_1C9216: db $F6 ; scroll text
#_1C9217: db $FD, $2E ; write kanji - 伝
#_1C9219: db $03, $1C, $3A, $FF, $CC, $FF, $CC, $FF ; えとる⎵⋯⎵⋯⎵
#_1C9221: db $CC ; ⋯
#_1C9222: db $FA ; wait for key
#_1C9223: db $F6 ; scroll text
#_1C9224: db $04 ; お
#_1C9225: db $FD, $78 ; write kanji - 前
#_1C9227: db $28, $C8, $12, $36, $21, $C4 ; は,すでに『
#_1C922D: db $FD, $A0 ; write kanji - 勇
#_1C922F: db $FD, $37 ; write kanji - 気
#_1C9231: db $24 ; の
#_1C9232: db $FD, $53 ; write kanji - 紋
#_1C9234: db $FD, $54 ; write kanji - 章
#_1C9236: db $C5 ; 』
#_1C9237: db $F6 ; scroll text
#_1C9238: db $0E ; を
#_1C9239: db $FD, $3E ; write kanji - 手
#_1C923B: db $21 ; に
#_1C923C: db $FD, $49 ; write kanji - 入
#_1C923E: db $3B, $1B, $04, $3A ; れておる
#_1C9242: db $FD, $10 ; write kanji - 様
#_1C9244: db $25, $47, $24, $02, $CD ; じゃのう。
#_1C9249: db $F6 ; scroll text
#_1C924A: db $36, $28, $C8, $34, $02, $12, $0C, $11 ; では,もうすこし
#_1C9252: db $FD, $A3 ; write kanji - 話
#_1C9254: db $0E, $11, $07, $02, $CC ; をしよう⋯
#_1C9259: db $FA ; wait for key
#_1C925A: db $F6 ; scroll text
#_1C925B: db $14, $24 ; その
#_1C925D: db $FD, $7E ; write kanji - 昔
#_1C925F: db $C8, $78, $51, $89, $50, $24 ; ,ハイリアの
#_1C9265: db $FD, $44 ; write kanji - 王
#_1C9267: db $FD, $56 ; write kanji - 家
#_1C9269: db $0E ; を
#_1C926A: db $FD, $91 ; write kanji - 守
#_1C926C: db $3A ; る
#_1C926D: db $F6 ; scroll text
#_1C926E: db $FD, $1E ; write kanji - 者
#_1C9270: db $18, $19, $24, $C9 ; たちの－
#_1C9274: db $FD, $F2 ; write kanji - 族
#_1C9276: db $15, $04, $4A, $18, $CD ; がおった。
#_1C927B: db $F6 ; scroll text
#_1C927C: db $FD, $14 ; write kanji - 彼
#_1C927E: db $38, $28 ; らは
#_1C9280: db $FD, $A0 ; write kanji - 勇
#_1C9282: db $FD, $37 ; write kanji - 気
#_1C9284: db $24 ; の
#_1C9285: db $FD, $53 ; write kanji - 紋
#_1C9287: db $FD, $54 ; write kanji - 章
#_1C9289: db $0E ; を
#_1C928A: db $FD, $0D ; write kanji - 司
#_1C928C: db $37, $3A, $C8 ; どる,
#_1C928F: db $FA ; wait for key
#_1C9290: db $F6 ; scroll text
#_1C9291: db $70, $51, $6C, $24, $C9 ; ナイトの－
#_1C9296: db $FD, $F2 ; write kanji - 族
#_1C9298: db $1C ; と
#_1C9299: db $FD, $50 ; write kanji - 呼
#_1C929B: db $3D, $3B, $1B, $04, $4A, $18 ; ばれておった
#_1C92A1: db $F6 ; scroll text
#_1C92A2: db $24, $25, $47, $15, $C8, $A7 ; のじゃが,7
#_1C92A8: db $FD, $C4 ; write kanji - 賢
#_1C92AA: db $FD, $1E ; write kanji - 者
#_1C92AC: db $24 ; の
#_1C92AD: db $FD, $9E ; write kanji - 封
#_1C92AF: db $FD, $35 ; write kanji - 印
#_1C92B1: db $15 ; が
#_1C92B2: db $FD, $02 ; write kanji - 行
#_1C92B4: db $20 ; な
#_1C92B5: db $F6 ; scroll text
#_1C92B6: db $0D, $3B, $18 ; われた
#_1C92B9: db $FD, $88 ; write kanji - 時
#_1C92BB: db $C8 ; ,
#_1C92BC: db $FD, $2D ; write kanji - 魔
#_1C92BE: db $FD, $F2 ; write kanji - 族
#_1C92C0: db $1C, $24, $18, $18, $08, $01, $36 ; とのたたかいで
#_1C92C7: db $FA ; wait for key
#_1C92C8: db $F6 ; scroll text
#_1C92C9: db $2C, $1C, $0F, $37, $24 ; ほとんどの
#_1C92CE: db $FD, $1E ; write kanji - 者
#_1C92D0: db $15, $2C, $3C, $0F, $36, $11, $30, $4A ; がほろんでしまっ
#_1C92D8: db $F6 ; scroll text
#_1C92D9: db $18, $24, $25, $47, $CD, $14, $24, $70 ; たのじゃ。そのナ
#_1C92E1: db $51, $6C, $24, $C9 ; イトの－
#_1C92E5: db $FD, $F2 ; write kanji - 族
#_1C92E7: db $08 ; か
#_1C92E8: db $F6 ; scroll text
#_1C92E9: db $38 ; ら
#_1C92EA: db $FD, $A0 ; write kanji - 勇
#_1C92EC: db $FD, $1E ; write kanji - 者
#_1C92EE: db $15 ; が
#_1C92EF: db $FD, $BC ; write kanji - 現
#_1C92F1: db $3B, $3A, $28, $26, $20, $24, $25, $47 ; れるはずなのじゃ
#_1C92F9: db $15 ; が
#_1C92FA: db $FA ; wait for key
#_1C92FB: db $F6 ; scroll text
#_1C92FC: db $FF, $CC, $FF, $07, $11, $C8 ; ⎵⋯⎵よし,
#_1C9302: db $FE, $6A ; write player name
#_1C9304: db $07, $C8, $04 ; よ,お
#_1C9307: db $FD, $78 ; write kanji - 前
#_1C9309: db $F6 ; scroll text
#_1C930A: db $0E ; を
#_1C930B: db $FD, $45 ; write kanji - 信
#_1C930D: db $25, $07, $02, $CD ; じよう。
#_1C9311: db $FD, $C6 ; write kanji - 残
#_1C9313: db $39, $24 ; りの
#_1C9315: db $FD, $53 ; write kanji - 紋
#_1C9317: db $FD, $54 ; write kanji - 章
#_1C9319: db $0E ; を
#_1C931A: db $FE, $79, $2D ; play sound effect
#_1C931D: db $F6 ; scroll text
#_1C931E: db $FD, $3E ; write kanji - 手
#_1C9320: db $21 ; に
#_1C9321: db $FD, $49 ; write kanji - 入
#_1C9323: db $3B, $3A, $15 ; れるが
#_1C9326: db $FD, $32 ; write kanji - 良
#_1C9328: db $01, $CD ; い。
#_1C932A: db $FA ; wait for key
#_1C932B: db $F6 ; scroll text
#_1C932C: db $14, $3B, $08, $38, $C8, $0C, $3B, $0E ; それから,これを
#_1C9334: db $FD, $DB ; write kanji - 持
#_1C9336: db $4A, $1B ; って
#_1C9338: db $FD, $02 ; write kanji - 行
#_1C933A: db $0B, $CD ; け。
#_1C933C: db $F6 ; scroll text
#_1C933D: db $5D, $61, $38 ; ワシら
#_1C9340: db $FD, $C4 ; write kanji - 賢
#_1C9342: db $FD, $1E ; write kanji - 者
#_1C9344: db $24, $C9 ; の－
#_1C9346: db $FD, $F2 ; write kanji - 族
#_1C9348: db $21 ; に
#_1C9349: db $FD, $2E ; write kanji - 伝
#_1C934B: db $0D, $3A ; わる
#_1C934D: db $FD, $9A ; write kanji - 宝
#_1C934F: db $C8 ; ,
#_1C9350: db $F6 ; scroll text
#_1C9351: db $04 ; お
#_1C9352: db $FD, $78 ; write kanji - 前
#_1C9354: db $21, $05, $3C, $02, $CD ; にやろう。
#_1C9359: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 7賢者の血をひく娘をみつけた
; 者には,ほうびとして
; 100ルピ－とらせる 国王
Message_0038:
#_1C935A: db $A7 ; 7
#_1C935B: db $FD, $C4 ; write kanji - 賢
#_1C935D: db $FD, $1E ; write kanji - 者
#_1C935F: db $24 ; の
#_1C9360: db $FD, $B9 ; write kanji - 血
#_1C9362: db $0E, $29, $0A ; をひく
#_1C9365: db $FD, $00 ; write kanji - 娘
#_1C9367: db $0E, $31, $1A, $0B, $18 ; をみつけた
#_1C936C: db $F8 ; cursor to row 2
#_1C936D: db $FD, $1E ; write kanji - 者
#_1C936F: db $21, $28, $C8, $2C, $02, $3E, $1C, $11 ; には,ほうびとし
#_1C9377: db $1B ; て
#_1C9378: db $F9 ; cursor to row 3
#_1C9379: db $A1, $A0, $A0, $8A, $93, $C9, $1C, $38 ; 100ルピ－とら
#_1C9381: db $13, $3A, $FF ; せる⎵
#_1C9384: db $FD, $2B ; write kanji - 国
#_1C9386: db $FD, $44 ; write kanji - 王
#_1C9388: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おたずね者 😬 [LINK]
; ゼルダ姫を城よりさらった犯人
; みつけたら大声でしらせよ!
Message_0039:
#_1C9389: db $04, $18, $26, $23 ; おたずね
#_1C938D: db $FD, $1E ; write kanji - 者
#_1C938F: db $FF, $D2, $D3, $FF ; ⎵😬⎵
#_1C9393: db $FE, $6A ; write player name
#_1C9395: db $F8 ; cursor to row 2
#_1C9396: db $77, $8A, $7E ; ゼルダ
#_1C9399: db $FD, $FF ; write kanji - 姫
#_1C939B: db $0E ; を
#_1C939C: db $FD, $01 ; write kanji - 城
#_1C939E: db $07, $39, $10, $38, $4A, $18 ; よりさらった
#_1C93A4: db $FD, $62 ; write kanji - 犯
#_1C93A6: db $FD, $38 ; write kanji - 人
#_1C93A8: db $F9 ; cursor to row 3
#_1C93A9: db $31, $1A, $0B, $18, $38 ; みつけたら
#_1C93AE: db $FD, $5F ; write kanji - 大
#_1C93B0: db $FD, $60 ; write kanji - 声
#_1C93B2: db $36, $11, $38, $13, $07, $C7 ; でしらせよ!
#_1C93B8: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; きけん!
; 勝手にヘブラ山に入る事を
; きんしします。
Message_003A:
#_1C93B9: db $09, $0B, $0F, $C7 ; きけん!
#_1C93BD: db $F8 ; cursor to row 2
#_1C93BE: db $FD, $DF ; write kanji - 勝
#_1C93C0: db $FD, $3E ; write kanji - 手
#_1C93C2: db $21, $7B, $8F, $88 ; にヘブラ
#_1C93C6: db $FD, $94 ; write kanji - 山
#_1C93C8: db $21 ; に
#_1C93C9: db $FD, $49 ; write kanji - 入
#_1C93CB: db $3A ; る
#_1C93CC: db $FD, $22 ; write kanji - 事
#_1C93CE: db $0E ; を
#_1C93CF: db $F9 ; cursor to row 3
#_1C93D0: db $09, $0F, $11, $11, $30, $12, $CD ; きんしします。
#_1C93D7: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; この先 🡅 まよいの森
Message_003B:
#_1C93D8: db $F8 ; cursor to row 2
#_1C93D9: db $0C, $24 ; この
#_1C93DB: db $FD, $9C ; write kanji - 先
#_1C93DD: db $FF, $E0, $FF, $30, $07, $01, $24 ; ⎵🡅⎵まよいの
#_1C93E4: db $FD, $65 ; write kanji - 森
#_1C93E6: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; あぶない!
; 深みとゾ－ラに注意
Message_003C:
#_1C93E7: db $00, $3F, $20, $01, $C7 ; あぶない!
#_1C93EC: db $F8 ; cursor to row 2
#_1C93ED: db $FD, $64 ; write kanji - 深
#_1C93EF: db $31, $1C, $7D, $C9, $88, $21 ; みとゾ－ラに
#_1C93F5: db $FD, $CE ; write kanji - 注
#_1C93F7: db $FD, $CF ; write kanji - 意
#_1C93F9: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ようこそ 魔法屋へ
; 願いのタキまであとすこし
Message_003D:
#_1C93FA: db $07, $02, $0C, $14, $FF ; ようこそ⎵
#_1C93FF: db $FD, $2D ; write kanji - 魔
#_1C9401: db $FD, $3C ; write kanji - 法
#_1C9403: db $FD, $3D ; write kanji - 屋
#_1C9405: db $2B ; へ
#_1C9406: db $F9 ; cursor to row 3
#_1C9407: db $FD, $0A ; write kanji - 願
#_1C9409: db $01, $24, $68, $59, $30, $36, $00, $1C ; いのタキまであと
#_1C9411: db $12, $0C, $11 ; すこし
#_1C9414: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; この洞くつの先
; 村への道へ通じる。
Message_003E:
#_1C9415: db $FF, $0C, $24 ; ⎵この
#_1C9418: db $FD, $EF ; write kanji - 洞
#_1C941A: db $0A, $1A, $24 ; くつの
#_1C941D: db $FD, $9C ; write kanji - 先
#_1C941F: db $F8 ; cursor to row 2
#_1C9420: db $FF ; ⎵
#_1C9421: db $FD, $8C ; write kanji - 村
#_1C9423: db $2B, $24 ; への
#_1C9425: db $FD, $5D ; write kanji - 道
#_1C9427: db $2B ; へ
#_1C9428: db $FD, $09 ; write kanji - 通
#_1C942A: db $25, $3A, $CD ; じる。
#_1C942D: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; この先 🡇 ハイリア湖
; お店もあります
Message_003F:
#_1C942E: db $0C, $24 ; この
#_1C9430: db $FD, $9C ; write kanji - 先
#_1C9432: db $FF, $E1, $FF, $78, $51, $89, $50 ; ⎵🡇⎵ハイリア
#_1C9439: db $FD, $12 ; write kanji - 湖
#_1C943B: db $F8 ; cursor to row 2
#_1C943C: db $FF, $FF, $FF, $FF, $FF, $FF, $04 ; ⎵⎵⎵⎵⎵⎵お
#_1C9443: db $FD, $6C ; write kanji - 店
#_1C9445: db $34, $00, $39, $30, $12 ; もあります
#_1C944A: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; この先 🡄
; カカリコ村
Message_0040:
#_1C944B: db $0C, $24 ; この
#_1C944D: db $FD, $9C ; write kanji - 先
#_1C944F: db $FF, $E3 ; ⎵🡄
#_1C9451: db $F8 ; cursor to row 2
#_1C9452: db $FF, $FF, $FF, $58, $58, $89, $5C ; ⎵⎵⎵カカリコ
#_1C9459: db $FD, $8C ; write kanji - 村
#_1C945B: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; この先 🡄 あやしのサバク
; ジライに注意
Message_0041:
#_1C945C: db $0C, $24 ; この
#_1C945E: db $FD, $9C ; write kanji - 先
#_1C9460: db $FF, $E3, $FF, $00, $05, $11, $24, $60 ; ⎵🡄⎵あやしのサ
#_1C9468: db $8D, $5A ; バク
#_1C946A: db $F9 ; cursor to row 3
#_1C946B: db $FF, $FF, $FF, $FF, $FF, $FF, $75, $88 ; ⎵⎵⎵⎵⎵⎵ジラ
#_1C9473: db $51, $21 ; イに
#_1C9475: db $FD, $CE ; write kanji - 注
#_1C9477: db $FD, $CF ; write kanji - 意
#_1C9479: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; この先 🡅🡆 魔法屋
; その奥 願いのタキ
Message_0042:
#_1C947A: db $0C, $24 ; この
#_1C947C: db $FD, $9C ; write kanji - 先
#_1C947E: db $FF, $E0, $E2, $FF ; ⎵🡅🡆⎵
#_1C9482: db $FD, $2D ; write kanji - 魔
#_1C9484: db $FD, $3C ; write kanji - 法
#_1C9486: db $FD, $3D ; write kanji - 屋
#_1C9488: db $F9 ; cursor to row 3
#_1C9489: db $14, $24 ; その
#_1C948B: db $FD, $80 ; write kanji - 奥
#_1C948D: db $FF ; ⎵
#_1C948E: db $FD, $0A ; write kanji - 願
#_1C9490: db $01, $24, $68, $59 ; いのタキ
#_1C9494: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; この先 🡆 東の神殿
; この先 🡄 ハイラルのお城
Message_0043:
#_1C9495: db $0C, $24 ; この
#_1C9497: db $FD, $9C ; write kanji - 先
#_1C9499: db $FF, $E2, $FF ; ⎵🡆⎵
#_1C949C: db $FD, $D9 ; write kanji - 東
#_1C949E: db $24 ; の
#_1C949F: db $FD, $05 ; write kanji - 神
#_1C94A1: db $FD, $90 ; write kanji - 殿
#_1C94A3: db $F9 ; cursor to row 3
#_1C94A4: db $0C, $24 ; この
#_1C94A6: db $FD, $9C ; write kanji - 先
#_1C94A8: db $FF, $E3, $FF, $78, $51, $88, $8A, $24 ; ⎵🡄⎵ハイラルの
#_1C94B0: db $04 ; お
#_1C94B1: db $FD, $01 ; write kanji - 城
#_1C94B3: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ハイリア湖
Message_0044:
#_1C94B4: db $F8 ; cursor to row 2
#_1C94B5: db $FF, $FF, $FF, $78, $51, $89, $50 ; ⎵⎵⎵ハイリア
#_1C94BC: db $FD, $12 ; write kanji - 湖
#_1C94BE: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 私に,話しかけないで。
; 私は,へんなおじさんです。
; 立札をぬいたりしないで下さい
Message_0045:
#_1C94BF: db $FD, $26 ; write kanji - 私
#_1C94C1: db $21, $C8 ; に,
#_1C94C3: db $FD, $A3 ; write kanji - 話
#_1C94C5: db $11, $08, $0B, $20, $01, $36, $CD ; しかけないで。
#_1C94CC: db $F8 ; cursor to row 2
#_1C94CD: db $FD, $26 ; write kanji - 私
#_1C94CF: db $28, $C8, $2B, $0F, $20, $04, $25, $10 ; は,へんなおじさ
#_1C94D7: db $0F, $36, $12, $CD ; んです。
#_1C94DB: db $F9 ; cursor to row 3
#_1C94DC: db $FD, $71 ; write kanji - 立
#_1C94DE: db $FD, $5B ; write kanji - 札
#_1C94E0: db $0E, $22, $01, $18, $39, $11, $20, $01 ; をぬいたりしない
#_1C94E8: db $36 ; で
#_1C94E9: db $FD, $61 ; write kanji - 下
#_1C94EB: db $10, $01 ; さい
#_1C94ED: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; キコリ Aさく Bさくの家
Message_0046:
#_1C94EE: db $F8 ; cursor to row 2
#_1C94EF: db $59, $5C, $89, $FF, $AA, $10, $0A, $FF ; キコリ⎵Aさく⎵
#_1C94F7: db $AB, $10, $0A, $24 ; Bさくの
#_1C94FB: db $FD, $56 ; write kanji - 家
#_1C94FD: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; この先 🡇
; カカリコ村
Message_0047:
#_1C94FE: db $0C, $24 ; この
#_1C9500: db $FD, $9C ; write kanji - 先
#_1C9502: db $FF, $E1 ; ⎵🡇
#_1C9504: db $F8 ; cursor to row 2
#_1C9505: db $FF, $FF, $FF, $58, $58, $89, $5C ; ⎵⎵⎵カカリコ
#_1C950C: db $FD, $8C ; write kanji - 村
#_1C950E: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; トロ〜リ トロリ
; キノコでつくる魔法のクスリ
; トロ〜リ トロリ
Message_0048:
#_1C950F: db $FF, $6C, $8C, $CE, $89, $FF, $6C, $8C ; ⎵トロ〜リ⎵トロ
#_1C9517: db $89 ; リ
#_1C9518: db $F8 ; cursor to row 2
#_1C9519: db $59, $74, $5C, $36, $1A, $0A, $3A ; キノコでつくる
#_1C9520: db $FD, $2D ; write kanji - 魔
#_1C9522: db $FD, $3C ; write kanji - 法
#_1C9524: db $24, $5A, $62, $89 ; のクスリ
#_1C9528: db $F9 ; cursor to row 3
#_1C9529: db $FF, $6C, $8C, $CE, $89, $FF, $6C, $8C ; ⎵トロ〜リ⎵トロ
#_1C9531: db $89 ; リ
#_1C9532: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ヒッヒッ,ありがとうよ。
; あとで上のお店へおいで。
; いいものをあげるよ⋯ヒッヒ。
Message_0049:
#_1C9533: db $79, $9A, $79, $9A, $C8, $00, $39, $15 ; ヒッヒッ,ありが
#_1C953B: db $1C, $02, $07, $CD ; とうよ。
#_1C953F: db $F8 ; cursor to row 2
#_1C9540: db $00, $1C, $36 ; あとで
#_1C9543: db $FD, $72 ; write kanji - 上
#_1C9545: db $24, $04 ; のお
#_1C9547: db $FD, $6C ; write kanji - 店
#_1C9549: db $2B, $04, $01, $36, $CD ; へおいで。
#_1C954E: db $F9 ; cursor to row 3
#_1C954F: db $01, $01, $34, $24, $0E, $00, $1D, $3A ; いいものをあげる
#_1C9557: db $07, $CC, $79, $9A, $79, $CD ; よ⋯ヒッヒ。
#_1C955D: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おお,あまい果物がくさった
; かおり⋯そのキノコをくれたら
; あれがつくれるぞえ ひっひっ
Message_004A:
#_1C955E: db $04, $04, $C8, $00, $30, $01 ; おお,あまい
#_1C9564: db $FD, $7F ; write kanji - 果
#_1C9566: db $FD, $51 ; write kanji - 物
#_1C9568: db $15, $0A, $10, $4A, $18 ; がくさった
#_1C956D: db $F8 ; cursor to row 2
#_1C956E: db $08, $04, $39, $CC, $14, $24, $59, $74 ; かおり⋯そのキノ
#_1C9576: db $5C, $0E, $0A, $3B, $18, $38 ; コをくれたら
#_1C957C: db $F9 ; cursor to row 3
#_1C957D: db $00, $3B, $15, $1A, $0A, $3B, $3A, $2D ; あれがつくれるぞ
#_1C9585: db $03, $FF, $29, $4A, $29, $4A ; え⎵ひっひっ
#_1C958B: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; クスリがほしいのなら まず
; 魔法のビンを 探してくる事
; じゃ⋯ イッヒッヒッ
Message_004B:
#_1C958C: db $5A, $62, $89, $15, $2C, $11, $01, $24 ; クスリがほしいの
#_1C9594: db $20, $38, $FF, $30, $26 ; なら⎵まず
#_1C9599: db $F8 ; cursor to row 2
#_1C959A: db $FD, $2D ; write kanji - 魔
#_1C959C: db $FD, $3C ; write kanji - 法
#_1C959E: db $24, $8E, $5F, $0E, $FF ; のビンを⎵
#_1C95A3: db $FD, $69 ; write kanji - 探
#_1C95A5: db $11, $1B, $0A, $3A ; してくる
#_1C95A9: db $FD, $22 ; write kanji - 事
#_1C95AB: db $F9 ; cursor to row 3
#_1C95AC: db $25, $47, $CC, $FF, $51, $9A, $79, $9A ; じゃ⋯⎵イッヒッ
#_1C95B4: db $79, $9A ; ヒッ
#_1C95B6: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; アカのクスリは いのちグスリ
; ミドリのクスリは 魔法グスリ
; アオのクスリは いのちと魔法
; アカのクスリは,この場でのむ
; なら,ルピ－はいらぬぞえ。
; さあ,これをおのみ⋯ヒッヒッ
Message_004C:
#_1C95B7: db $50, $58, $24, $5A, $62, $89, $28, $FF ; アカのクスリは⎵
#_1C95BF: db $01, $24, $19, $67, $62, $89 ; いのちグスリ
#_1C95C5: db $F8 ; cursor to row 2
#_1C95C6: db $81, $87, $89, $24, $5A, $62, $89, $28 ; ミドリのクスリは
#_1C95CE: db $FF ; ⎵
#_1C95CF: db $FD, $2D ; write kanji - 魔
#_1C95D1: db $FD, $3C ; write kanji - 法
#_1C95D3: db $67, $62, $89 ; グスリ
#_1C95D6: db $F9 ; cursor to row 3
#_1C95D7: db $50, $54, $24, $5A, $62, $89, $28, $FF ; アオのクスリは⎵
#_1C95DF: db $01, $24, $19, $1C ; いのちと
#_1C95E3: db $FD, $2D ; write kanji - 魔
#_1C95E5: db $FD, $3C ; write kanji - 法
#_1C95E7: db $FA ; wait for key
#_1C95E8: db $F6 ; scroll text
#_1C95E9: db $50, $58, $24, $5A, $62, $89, $28, $C8 ; アカのクスリは,
#_1C95F1: db $0C, $24 ; この
#_1C95F3: db $FD, $A8 ; write kanji - 場
#_1C95F5: db $36, $24, $32 ; でのむ
#_1C95F8: db $F6 ; scroll text
#_1C95F9: db $20, $38, $C8, $8A, $93, $C9, $28, $01 ; なら,ルピ－はい
#_1C9601: db $38, $22, $2D, $03, $CD ; らぬぞえ。
#_1C9606: db $F6 ; scroll text
#_1C9607: db $10, $00, $C8, $0C, $3B, $0E, $04, $24 ; さあ,これをおの
#_1C960F: db $31, $CC, $79, $9A, $79, $9A ; み⋯ヒッヒッ
#_1C9615: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ビンがなければ,クスリは
; かえないぞえ。ヒッヒッヒッ
Message_004D:
#_1C9616: db $8E, $5F, $15, $20, $0B, $3B, $3D, $C8 ; ビンがなければ,
#_1C961E: db $5A, $62, $89, $28 ; クスリは
#_1C9622: db $F8 ; cursor to row 2
#_1C9623: db $08, $03, $20, $01, $2D, $03, $CD, $79 ; かえないぞえ。ヒ
#_1C962B: db $9A, $79, $9A, $79, $9A ; ッヒッヒッ
#_1C9630: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ほれほれ,ビンがいっぱいでは
; 何もはいらんぞえ。 ヒッヒッ
Message_004E:
#_1C9631: db $2C, $3B, $2C, $3B, $C8, $8E, $5F, $15 ; ほれほれ,ビンが
#_1C9639: db $01, $4A, $42, $01, $36, $28 ; いっぱいでは
#_1C963F: db $F8 ; cursor to row 2
#_1C9640: db $FD, $8B ; write kanji - 何
#_1C9642: db $34, $28, $01, $38, $0F, $2D, $03, $CD ; もはいらんぞえ。
#_1C964A: db $FF, $79, $9A, $79, $9A ; ⎵ヒッヒッ
#_1C964F: db $FB ; end of message

;===================================================================================================
; Lamp get
;===================================================================================================
; カンテラを 手に入れた
; Yボタンでとうろうに火をつけ
; れるぞ!
Message_004F:
#_1C9650: db $58, $5F, $6B, $88, $0E, $FF ; カンテラを⎵
#_1C9656: db $FD, $3E ; write kanji - 手
#_1C9658: db $21 ; に
#_1C9659: db $FD, $49 ; write kanji - 入
#_1C965B: db $3B, $18 ; れた
#_1C965D: db $F8 ; cursor to row 2
#_1C965E: db $C2, $91, $68, $5F, $36, $1C, $02, $3C ; Yボタンでとうろ
#_1C9666: db $02, $21 ; うに
#_1C9668: db $FD, $CD ; write kanji - 火
#_1C966A: db $0E, $1A, $0B ; をつけ
#_1C966D: db $F9 ; cursor to row 3
#_1C966E: db $3B, $3A, $2D, $C7 ; れるぞ!
#_1C9672: db $FB ; end of message

;===================================================================================================
; Boomerang get
;===================================================================================================
; ブ－メランだ!
; STARTボタンで,選んで
; 使ってみよう!
Message_0050:
#_1C9673: db $8F, $C9, $83, $88, $5F, $2E, $C7 ; ブ－メランだ!
#_1C967A: db $F8 ; cursor to row 2
#_1C967B: db $BC, $BD, $AA, $BB, $BD, $91, $68, $5F ; STARTボタン
#_1C9683: db $36, $C8 ; で,
#_1C9685: db $FD, $81 ; write kanji - 選
#_1C9687: db $0F, $36 ; んで
#_1C9689: db $F9 ; cursor to row 3
#_1C968A: db $FD, $89 ; write kanji - 使
#_1C968C: db $4A, $1B, $31, $07, $02, $C7 ; ってみよう!
#_1C9692: db $FB ; end of message

;===================================================================================================
; Bow get
;===================================================================================================
; ユミを みつけた
; 矢 がうてるぞ!
; 矢 がなくなるまでだぞっ!
Message_0051:
#_1C9693: db $FF, $56, $81, $0E, $FF, $31, $1A, $0B ; ⎵ユミを⎵みつけ
#_1C969B: db $18 ; た
#_1C969C: db $F8 ; cursor to row 2
#_1C969D: db $FF ; ⎵
#_1C969E: db $FD, $BB ; write kanji - 矢
#_1C96A0: db $FF, $15, $02, $1B, $3A, $2D, $C7 ; ⎵がうてるぞ!
#_1C96A7: db $F9 ; cursor to row 3
#_1C96A8: db $FF ; ⎵
#_1C96A9: db $FD, $BB ; write kanji - 矢
#_1C96AB: db $FF, $15, $20, $0A, $20, $3A, $30, $36 ; ⎵がなくなるまで
#_1C96B3: db $2E, $2D, $4A, $C7 ; だぞっ!
#_1C96B7: db $FB ; end of message

;===================================================================================================
; Shovel get
;===================================================================================================
; シャベルを,おかりした。
; ほれる所なら,穴がほれるぞ。
; ほってみよう。
Message_0052:
#_1C96B8: db $61, $97, $90, $8A, $0E, $C8, $04, $08 ; シャベルを,おか
#_1C96C0: db $39, $11, $18, $CD ; りした。
#_1C96C4: db $F8 ; cursor to row 2
#_1C96C5: db $2C, $3B, $3A ; ほれる
#_1C96C8: db $FD, $55 ; write kanji - 所
#_1C96CA: db $20, $38, $C8 ; なら,
#_1C96CD: db $FD, $5C ; write kanji - 穴
#_1C96CF: db $15, $2C, $3B, $3A, $2D, $CD ; がほれるぞ。
#_1C96D5: db $F9 ; cursor to row 3
#_1C96D6: db $2C, $4A, $1B, $31, $07, $02, $CD ; ほってみよう。
#_1C96DD: db $FB ; end of message

;===================================================================================================
; Cape get
;===================================================================================================
; マジックマントだ!
; 姿を消す事ができるが,
; 魔法メ－タ－に気を付けろ!
Message_0053:
#_1C96DE: db $FF, $80, $75, $9A, $5A, $80, $5F, $6C ; ⎵マジックマント
#_1C96E6: db $2E, $C7 ; だ!
#_1C96E8: db $F8 ; cursor to row 2
#_1C96E9: db $FF ; ⎵
#_1C96EA: db $FD, $A2 ; write kanji - 姿
#_1C96EC: db $0E ; を
#_1C96ED: db $FD, $9D ; write kanji - 消
#_1C96EF: db $12 ; す
#_1C96F0: db $FD, $22 ; write kanji - 事
#_1C96F2: db $15, $36, $09, $3A, $15, $C8 ; ができるが,
#_1C96F8: db $F9 ; cursor to row 3
#_1C96F9: db $FF ; ⎵
#_1C96FA: db $FD, $2D ; write kanji - 魔
#_1C96FC: db $FD, $3C ; write kanji - 法
#_1C96FE: db $83, $C9, $68, $C9, $21 ; メ－タ－に
#_1C9703: db $FD, $37 ; write kanji - 気
#_1C9705: db $0E ; を
#_1C9706: db $FD, $52 ; write kanji - 付
#_1C9708: db $0B, $3C, $C7 ; けろ!
#_1C970B: db $FB ; end of message

;===================================================================================================
; Powder get
;===================================================================================================
; これが 魔法の粉だ!
; 敵や 色々な物に
; ふりかけてみよう!
Message_0054:
#_1C970C: db $0C, $3B, $15, $FF ; これが⎵
#_1C9710: db $FD, $2D ; write kanji - 魔
#_1C9712: db $FD, $3C ; write kanji - 法
#_1C9714: db $24 ; の
#_1C9715: db $FD, $CC ; write kanji - 粉
#_1C9717: db $2E, $C7 ; だ!
#_1C9719: db $F8 ; cursor to row 2
#_1C971A: db $FD, $D1 ; write kanji - 敵
#_1C971C: db $05, $FF ; や⎵
#_1C971E: db $FD, $A4 ; write kanji - 色
#_1C9720: db $FD, $A5 ; write kanji - 々
#_1C9722: db $20 ; な
#_1C9723: db $FD, $51 ; write kanji - 物
#_1C9725: db $21 ; に
#_1C9726: db $F9 ; cursor to row 3
#_1C9727: db $2A, $39, $08, $0B, $1B, $31, $07, $02 ; ふりかけてみよう
#_1C972F: db $C7 ; !
#_1C9730: db $FB ; end of message

;===================================================================================================
; Flippers get
;===================================================================================================
; ゾ－ラの水かきを かった!
; これで水の深い所も,
; スイスイおよげるはずだ!
Message_0055:
#_1C9731: db $7D, $C9, $88, $24 ; ゾ－ラの
#_1C9735: db $FD, $66 ; write kanji - 水
#_1C9737: db $08, $09, $0E, $FF, $08, $4A, $18, $C7 ; かきを⎵かった!
#_1C973F: db $F8 ; cursor to row 2
#_1C9740: db $0C, $3B, $36 ; これで
#_1C9743: db $FD, $66 ; write kanji - 水
#_1C9745: db $24 ; の
#_1C9746: db $FD, $64 ; write kanji - 深
#_1C9748: db $01 ; い
#_1C9749: db $FD, $55 ; write kanji - 所
#_1C974B: db $34, $C8 ; も,
#_1C974D: db $F9 ; cursor to row 3
#_1C974E: db $62, $51, $62, $51, $04, $07, $1D, $3A ; スイスイおよげる
#_1C9756: db $28, $26, $2E, $C7 ; はずだ!
#_1C975A: db $FB ; end of message

;===================================================================================================
; Power glove get
;===================================================================================================
; パワ－グラブを 手に入れた!
; 両うでに力がみなぎるぞ。
; イシだってかつげるぞ!
Message_0056:
#_1C975B: db $92, $5D, $C9, $67, $88, $8F, $0E, $FF ; パワ－グラブを⎵
#_1C9763: db $FD, $3E ; write kanji - 手
#_1C9765: db $21 ; に
#_1C9766: db $FD, $49 ; write kanji - 入
#_1C9768: db $3B, $18, $C7 ; れた!
#_1C976B: db $F8 ; cursor to row 2
#_1C976C: db $FD, $F7 ; write kanji - 両
#_1C976E: db $02, $36, $21 ; うでに
#_1C9771: db $FD, $99 ; write kanji - 力
#_1C9773: db $15, $31, $20, $16, $3A, $2D, $CD ; がみなぎるぞ。
#_1C977A: db $F9 ; cursor to row 3
#_1C977B: db $51, $61, $2E, $4A, $1B, $08, $1A, $1D ; イシだってかつげ
#_1C9783: db $3A, $2D, $C7 ; るぞ!
#_1C9786: db $FB ; end of message

;===================================================================================================
; Green pendant get
;===================================================================================================
; 『勇気の紋章』を手に入れた!
; 長老サハスラ－ラに見せるのだ
; 残りの紋章は,あと2つだ!
Message_0057:
#_1C9787: db $C4 ; 『
#_1C9788: db $FD, $A0 ; write kanji - 勇
#_1C978A: db $FD, $37 ; write kanji - 気
#_1C978C: db $24 ; の
#_1C978D: db $FD, $53 ; write kanji - 紋
#_1C978F: db $FD, $54 ; write kanji - 章
#_1C9791: db $C5, $0E ; 』を
#_1C9793: db $FD, $3E ; write kanji - 手
#_1C9795: db $21 ; に
#_1C9796: db $FD, $49 ; write kanji - 入
#_1C9798: db $3B, $18, $C7 ; れた!
#_1C979B: db $F8 ; cursor to row 2
#_1C979C: db $FD, $8D ; write kanji - 長
#_1C979E: db $FD, $E5 ; write kanji - 老
#_1C97A0: db $60, $78, $62, $88, $C9, $88, $21 ; サハスラ－ラに
#_1C97A7: db $FD, $4C ; write kanji - 見
#_1C97A9: db $13, $3A, $24, $2E ; せるのだ
#_1C97AD: db $F9 ; cursor to row 3
#_1C97AE: db $FD, $C6 ; write kanji - 残
#_1C97B0: db $39, $24 ; りの
#_1C97B2: db $FD, $53 ; write kanji - 紋
#_1C97B4: db $FD, $54 ; write kanji - 章
#_1C97B6: db $28, $C8, $00, $1C, $A2, $1A, $2E, $C7 ; は,あと2つだ!
#_1C97BE: db $FB ; end of message

;===================================================================================================
; Red pendant get
;===================================================================================================
; 『力の紋章』を手に入れた!
; またひとつ,強くなったぞ!
; さあ,さいごの紋章へ向おう!
Message_0058:
#_1C97BF: db $C4 ; 『
#_1C97C0: db $FD, $99 ; write kanji - 力
#_1C97C2: db $24 ; の
#_1C97C3: db $FD, $53 ; write kanji - 紋
#_1C97C5: db $FD, $54 ; write kanji - 章
#_1C97C7: db $C5, $0E ; 』を
#_1C97C9: db $FD, $3E ; write kanji - 手
#_1C97CB: db $21 ; に
#_1C97CC: db $FD, $49 ; write kanji - 入
#_1C97CE: db $3B, $18, $C7 ; れた!
#_1C97D1: db $F8 ; cursor to row 2
#_1C97D2: db $30, $18, $29, $1C, $1A, $C8 ; またひとつ,
#_1C97D8: db $FD, $FB ; write kanji - 強
#_1C97DA: db $0A, $20, $4A, $18, $2D, $C7 ; くなったぞ!
#_1C97E0: db $F9 ; cursor to row 3
#_1C97E1: db $10, $00, $C8, $10, $01, $1E, $24 ; さあ,さいごの
#_1C97E8: db $FD, $53 ; write kanji - 紋
#_1C97EA: db $FD, $54 ; write kanji - 章
#_1C97EC: db $2B ; へ
#_1C97ED: db $FD, $86 ; write kanji - 向
#_1C97EF: db $04, $02, $C7 ; おう!
#_1C97F2: db $FB ; end of message

;===================================================================================================
; Pendants remaining message
;===================================================================================================
; 『知恵の紋章』を手に入れた!
; やった!3つの紋章がそろった
; マスタ－ソ－ドの森へ向おう!
Message_0059:
#_1C97F3: db $C4 ; 『
#_1C97F4: db $FD, $93 ; write kanji - 知
#_1C97F6: db $FD, $41 ; write kanji - 恵
#_1C97F8: db $24 ; の
#_1C97F9: db $FD, $53 ; write kanji - 紋
#_1C97FB: db $FD, $54 ; write kanji - 章
#_1C97FD: db $C5, $0E ; 』を
#_1C97FF: db $FD, $3E ; write kanji - 手
#_1C9801: db $21 ; に
#_1C9802: db $FD, $49 ; write kanji - 入
#_1C9804: db $3B, $18, $C7 ; れた!
#_1C9807: db $F8 ; cursor to row 2
#_1C9808: db $05, $4A, $18, $C7, $A3, $1A, $24 ; やった!3つの
#_1C980F: db $FD, $53 ; write kanji - 紋
#_1C9811: db $FD, $54 ; write kanji - 章
#_1C9813: db $15, $14, $3C, $4A, $18 ; がそろった
#_1C9818: db $F9 ; cursor to row 3
#_1C9819: db $80, $62, $68, $C9, $64, $C9, $87, $24 ; マスタ－ソ－ドの
#_1C9821: db $FD, $65 ; write kanji - 森
#_1C9823: db $2B ; へ
#_1C9824: db $FD, $86 ; write kanji - 向
#_1C9826: db $04, $02, $C7 ; おう!
#_1C9829: db $FB ; end of message

;===================================================================================================
; Mushroom get
;===================================================================================================
; あまい 果物のくさったような
; かおりがするキノコだ⋯
; Yボタンで人にわたせたりする
Message_005A:
#_1C982A: db $00, $30, $01, $FF ; あまい⎵
#_1C982E: db $FD, $7F ; write kanji - 果
#_1C9830: db $FD, $51 ; write kanji - 物
#_1C9832: db $24, $0A, $10, $4A, $18, $07, $02, $20 ; のくさったような
#_1C983A: db $F8 ; cursor to row 2
#_1C983B: db $08, $04, $39, $15, $12, $3A, $59, $74 ; かおりがするキノ
#_1C9843: db $5C, $2E, $CC ; コだ⋯
#_1C9846: db $F9 ; cursor to row 3
#_1C9847: db $C2, $91, $68, $5F, $36 ; Yボタンで
#_1C984C: db $FD, $38 ; write kanji - 人
#_1C984E: db $21, $0D, $18, $13, $18, $39, $12, $3A ; にわたせたりする
#_1C9856: db $FB ; end of message

;===================================================================================================
; Book get
;===================================================================================================
; ムドラの書を みつけた!
; ハイリアの民が使った古代文字
; が,これで読めるぞ!
Message_005B:
#_1C9857: db $82, $87, $88, $24 ; ムドラの
#_1C985B: db $FD, $0E ; write kanji - 書
#_1C985D: db $0E, $FF, $31, $1A, $0B, $18, $C7 ; を⎵みつけた!
#_1C9864: db $F8 ; cursor to row 2
#_1C9865: db $78, $51, $89, $50, $24 ; ハイリアの
#_1C986A: db $FD, $F8 ; write kanji - 民
#_1C986C: db $15 ; が
#_1C986D: db $FD, $89 ; write kanji - 使
#_1C986F: db $4A, $18 ; った
#_1C9871: db $FD, $8A ; write kanji - 古
#_1C9873: db $FD, $6E ; write kanji - 代
#_1C9875: db $FD, $C0 ; write kanji - 文
#_1C9877: db $FD, $7B ; write kanji - 字
#_1C9879: db $F9 ; cursor to row 3
#_1C987A: db $15, $C8, $0C, $3B, $36 ; が,これで
#_1C987F: db $FD, $58 ; write kanji - 読
#_1C9881: db $33, $3A, $2D, $C7 ; めるぞ!
#_1C9885: db $FB ; end of message

;===================================================================================================
; Pearl
;===================================================================================================
; ム－ンパ－ルを みつけた!
; 悪しき者が使う黄金の力から
; 勇者を守り姿をかえさせない。
Message_005C:
#_1C9886: db $82, $C9, $5F, $92, $C9, $8A, $0E, $FF ; ム－ンパ－ルを⎵
#_1C988E: db $31, $1A, $0B, $18, $C7 ; みつけた!
#_1C9893: db $F8 ; cursor to row 2
#_1C9894: db $FD, $85 ; write kanji - 悪
#_1C9896: db $11, $09 ; しき
#_1C9898: db $FD, $1E ; write kanji - 者
#_1C989A: db $15 ; が
#_1C989B: db $FD, $89 ; write kanji - 使
#_1C989D: db $02 ; う
#_1C989E: db $FD, $98 ; write kanji - 黄
#_1C98A0: db $FD, $43 ; write kanji - 金
#_1C98A2: db $24 ; の
#_1C98A3: db $FD, $99 ; write kanji - 力
#_1C98A5: db $08, $38 ; から
#_1C98A7: db $F9 ; cursor to row 3
#_1C98A8: db $FD, $A0 ; write kanji - 勇
#_1C98AA: db $FD, $1E ; write kanji - 者
#_1C98AC: db $0E ; を
#_1C98AD: db $FD, $91 ; write kanji - 守
#_1C98AF: db $39 ; り
#_1C98B0: db $FD, $A2 ; write kanji - 姿
#_1C98B2: db $0E, $08, $03, $10, $13, $20, $01, $CD ; をかえさせない。
#_1C98BA: db $FB ; end of message

;===================================================================================================
; Compass get
;===================================================================================================
; コンパスを みつけた
; ボスの場所は
; これでばっちりだぜ!
Message_005D:
#_1C98BB: db $FF, $5C, $5F, $92, $62, $0E, $FF, $31 ; ⎵コンパスを⎵み
#_1C98C3: db $1A, $0B, $18 ; つけた
#_1C98C6: db $F8 ; cursor to row 2
#_1C98C7: db $FF, $91, $62, $24 ; ⎵ボスの
#_1C98CB: db $FD, $A8 ; write kanji - 場
#_1C98CD: db $FD, $55 ; write kanji - 所
#_1C98CF: db $28 ; は
#_1C98D0: db $F9 ; cursor to row 3
#_1C98D1: db $FF, $0C, $3B, $36, $3D, $4A, $19, $39 ; ⎵これでばっちり
#_1C98D9: db $2E, $27, $C7 ; だぜ!
#_1C98DC: db $FB ; end of message

;===================================================================================================
; Map get
;===================================================================================================
; MAPを 手に入れた!
; XボタンをPUSHすると
; 現在地と全体がわかるはずだ!
Message_005E:
#_1C98DD: db $B6, $AA, $B9, $0E, $FF ; MAPを⎵
#_1C98E2: db $FD, $3E ; write kanji - 手
#_1C98E4: db $21 ; に
#_1C98E5: db $FD, $49 ; write kanji - 入
#_1C98E7: db $3B, $18, $C7 ; れた!
#_1C98EA: db $F8 ; cursor to row 2
#_1C98EB: db $C1, $91, $68, $5F, $0E, $B9, $BE, $BC ; XボタンをPUS
#_1C98F3: db $B1, $12, $3A, $1C ; Hすると
#_1C98F7: db $F9 ; cursor to row 3
#_1C98F8: db $FD, $BC ; write kanji - 現
#_1C98FA: db $FD, $BD ; write kanji - 在
#_1C98FC: db $FD, $33 ; write kanji - 地
#_1C98FE: db $1C ; と
#_1C98FF: db $FD, $BE ; write kanji - 全
#_1C9901: db $FD, $BF ; write kanji - 体
#_1C9903: db $15, $0D, $08, $3A, $28, $26, $2E, $C7 ; がわかるはずだ!
#_1C990B: db $FB ; end of message

;===================================================================================================
; Ice rod get
;===================================================================================================
; アイスロッドを みつけた!
; するどい冷気が,空気をさく。
; 魔法メ－タ－には気を付けろ!
Message_005F:
#_1C990C: db $50, $51, $62, $8C, $9A, $87, $0E, $FF ; アイスロッドを⎵
#_1C9914: db $31, $1A, $0B, $18, $C7 ; みつけた!
#_1C9919: db $F8 ; cursor to row 2
#_1C991A: db $12, $3A, $37, $01 ; するどい
#_1C991E: db $FD, $97 ; write kanji - 冷
#_1C9920: db $FD, $37 ; write kanji - 気
#_1C9922: db $15, $C8 ; が,
#_1C9924: db $FD, $AA ; write kanji - 空
#_1C9926: db $FD, $37 ; write kanji - 気
#_1C9928: db $0E, $10, $0A, $CD ; をさく。
#_1C992C: db $F9 ; cursor to row 3
#_1C992D: db $FD, $2D ; write kanji - 魔
#_1C992F: db $FD, $3C ; write kanji - 法
#_1C9931: db $83, $C9, $68, $C9, $21, $28 ; メ－タ－には
#_1C9937: db $FD, $37 ; write kanji - 気
#_1C9939: db $0E ; を
#_1C993A: db $FD, $52 ; write kanji - 付
#_1C993C: db $0B, $3C, $C7 ; けろ!
#_1C993F: db $FB ; end of message

;===================================================================================================
; Fire rod get
;===================================================================================================
; ファイアロッドを みつけた!
; 真紅の炎が ほとばしる。
; 魔法メ－タ－には気を付けろ!
Message_0060:
#_1C9940: db $7A, $9B, $51, $50, $8C, $9A, $87, $0E ; ファイアロッドを
#_1C9948: db $FF, $31, $1A, $0B, $18, $C7 ; ⎵みつけた!
#_1C994E: db $F8 ; cursor to row 2
#_1C994F: db $FD, $A6 ; write kanji - 真
#_1C9951: db $FD, $A7 ; write kanji - 紅
#_1C9953: db $24 ; の
#_1C9954: db $FD, $A9 ; write kanji - 炎
#_1C9956: db $15, $FF, $2C, $1C, $3D, $11, $3A, $CD ; が⎵ほとばしる。
#_1C995E: db $F9 ; cursor to row 3
#_1C995F: db $FD, $2D ; write kanji - 魔
#_1C9961: db $FD, $3C ; write kanji - 法
#_1C9963: db $83, $C9, $68, $C9, $21, $28 ; メ－タ－には
#_1C9969: db $FD, $37 ; write kanji - 気
#_1C996B: db $0E ; を
#_1C996C: db $FD, $52 ; write kanji - 付
#_1C996E: db $0B, $3C, $C7 ; けろ!
#_1C9971: db $FB ; end of message

;===================================================================================================
; Ether get
;===================================================================================================
; 魔法のメダル『エ－テル』だ!
; 大気や冷気をあやつる,魔法だ
; 魔法メ－タ－に 注意しよう!
Message_0061:
#_1C9972: db $FD, $2D ; write kanji - 魔
#_1C9974: db $FD, $3C ; write kanji - 法
#_1C9976: db $24, $83, $7E, $8A, $C4, $53, $C9, $6B ; のメダル『エ－テ
#_1C997E: db $8A, $C5, $2E, $C7 ; ル』だ!
#_1C9982: db $F8 ; cursor to row 2
#_1C9983: db $FD, $5F ; write kanji - 大
#_1C9985: db $FD, $37 ; write kanji - 気
#_1C9987: db $05 ; や
#_1C9988: db $FD, $97 ; write kanji - 冷
#_1C998A: db $FD, $37 ; write kanji - 気
#_1C998C: db $0E, $00, $05, $1A, $3A, $C8 ; をあやつる,
#_1C9992: db $FD, $2D ; write kanji - 魔
#_1C9994: db $FD, $3C ; write kanji - 法
#_1C9996: db $2E ; だ
#_1C9997: db $F9 ; cursor to row 3
#_1C9998: db $FD, $2D ; write kanji - 魔
#_1C999A: db $FD, $3C ; write kanji - 法
#_1C999C: db $83, $C9, $68, $C9, $21, $FF ; メ－タ－に⎵
#_1C99A2: db $FD, $CE ; write kanji - 注
#_1C99A4: db $FD, $CF ; write kanji - 意
#_1C99A6: db $11, $07, $02, $C7 ; しよう!
#_1C99AA: db $FB ; end of message

;===================================================================================================
; Bombos get
;===================================================================================================
; 魔法のメダル『ボンバ－』だ!
; バクレツが地面を走る魔法だぞ
; でも,魔法メ－タ－に注意!
Message_0062:
#_1C99AB: db $FD, $2D ; write kanji - 魔
#_1C99AD: db $FD, $3C ; write kanji - 法
#_1C99AF: db $24, $83, $7E, $8A, $C4, $91, $5F, $8D ; のメダル『ボンバ
#_1C99B7: db $C9, $C5, $2E, $C7 ; －』だ!
#_1C99BB: db $F8 ; cursor to row 2
#_1C99BC: db $8D, $5A, $8B, $6A, $15 ; バクレツが
#_1C99C1: db $FD, $33 ; write kanji - 地
#_1C99C3: db $FD, $AB ; write kanji - 面
#_1C99C5: db $0E ; を
#_1C99C6: db $FD, $D0 ; write kanji - 走
#_1C99C8: db $3A ; る
#_1C99C9: db $FD, $2D ; write kanji - 魔
#_1C99CB: db $FD, $3C ; write kanji - 法
#_1C99CD: db $2E, $2D ; だぞ
#_1C99CF: db $F9 ; cursor to row 3
#_1C99D0: db $36, $34, $C8 ; でも,
#_1C99D3: db $FD, $2D ; write kanji - 魔
#_1C99D5: db $FD, $3C ; write kanji - 法
#_1C99D7: db $83, $C9, $68, $C9, $21 ; メ－タ－に
#_1C99DC: db $FD, $CE ; write kanji - 注
#_1C99DE: db $FD, $CF ; write kanji - 意
#_1C99E0: db $C7 ; !
#_1C99E1: db $FB ; end of message

;===================================================================================================
; Quake get
;===================================================================================================
; 魔法のメダル『シェイク』だ!
; 地面をゆるがし 敵を封じる。
; でも,魔法メ－タ－に注意!
Message_0063:
#_1C99E2: db $FD, $2D ; write kanji - 魔
#_1C99E4: db $FD, $3C ; write kanji - 法
#_1C99E6: db $24, $83, $7E, $8A, $C4, $61, $9E, $51 ; のメダル『シェイ
#_1C99EE: db $5A, $C5, $2E, $C7 ; ク』だ!
#_1C99F2: db $F8 ; cursor to row 2
#_1C99F3: db $FD, $33 ; write kanji - 地
#_1C99F5: db $FD, $AB ; write kanji - 面
#_1C99F7: db $0E, $06, $3A, $15, $11, $FF ; をゆるがし⎵
#_1C99FD: db $FD, $D1 ; write kanji - 敵
#_1C99FF: db $0E ; を
#_1C9A00: db $FD, $9E ; write kanji - 封
#_1C9A02: db $25, $3A, $CD ; じる。
#_1C9A05: db $F9 ; cursor to row 3
#_1C9A06: db $36, $34, $C8 ; でも,
#_1C9A09: db $FD, $2D ; write kanji - 魔
#_1C9A0B: db $FD, $3C ; write kanji - 法
#_1C9A0D: db $83, $C9, $68, $C9, $21 ; メ－タ－に
#_1C9A12: db $FD, $CE ; write kanji - 注
#_1C9A14: db $FD, $CF ; write kanji - 意
#_1C9A16: db $C7 ; !
#_1C9A17: db $FB ; end of message

;===================================================================================================
; Hammer get
;===================================================================================================
; M,Cハンマ－を手に入れた!
; くい なんかバンバンたたけ!
; 他にもバンバンたたけたたけ!
Message_0064:
#_1C9A18: db $B6, $C8, $AC, $78, $5F, $80, $C9, $0E ; M,Cハンマ－を
#_1C9A20: db $FD, $3E ; write kanji - 手
#_1C9A22: db $21 ; に
#_1C9A23: db $FD, $49 ; write kanji - 入
#_1C9A25: db $3B, $18, $C7 ; れた!
#_1C9A28: db $F8 ; cursor to row 2
#_1C9A29: db $0A, $01, $FF, $20, $0F, $08, $8D, $5F ; くい⎵なんかバン
#_1C9A31: db $8D, $5F, $18, $18, $0B, $C7 ; バンたたけ!
#_1C9A37: db $F9 ; cursor to row 3
#_1C9A38: db $FD, $27 ; write kanji - 他
#_1C9A3A: db $21, $34, $8D, $5F, $8D, $5F, $18, $18 ; にもバンバンたた
#_1C9A42: db $0B, $18, $18, $0B, $C7 ; けたたけ!
#_1C9A47: db $FB ; end of message

;===================================================================================================
; Bottle refill (good bee) get
;===================================================================================================
; おお,オカリナが あったぞ!
; その音色は,ふしぎな力を
; 持っているはずだ!
Message_0065:
#_1C9A48: db $04, $04, $C8, $54, $58, $89, $70, $15 ; おお,オカリナが
#_1C9A50: db $FF, $00, $4A, $18, $2D, $C7 ; ⎵あったぞ!
#_1C9A56: db $F8 ; cursor to row 2
#_1C9A57: db $14, $24 ; その
#_1C9A59: db $FD, $AC ; write kanji - 音
#_1C9A5B: db $FD, $A4 ; write kanji - 色
#_1C9A5D: db $28, $C8, $2A, $11, $16, $20 ; は,ふしぎな
#_1C9A63: db $FD, $99 ; write kanji - 力
#_1C9A65: db $0E ; を
#_1C9A66: db $F9 ; cursor to row 3
#_1C9A67: db $FD, $DB ; write kanji - 持
#_1C9A69: db $4A, $1B, $01, $3A, $28, $26, $2E, $C7 ; っているはずだ!
#_1C9A71: db $FB ; end of message

;===================================================================================================
; Somaria get
;===================================================================================================
; ソマリアのつえを手に入れた!
; うまく使えば,とてもやくに
; たつ,ふしぎなつえだ!
Message_0066:
#_1C9A72: db $64, $80, $89, $50, $24, $1A, $03, $0E ; ソマリアのつえを
#_1C9A7A: db $FD, $3E ; write kanji - 手
#_1C9A7C: db $21 ; に
#_1C9A7D: db $FD, $49 ; write kanji - 入
#_1C9A7F: db $3B, $18, $C7 ; れた!
#_1C9A82: db $F8 ; cursor to row 2
#_1C9A83: db $02, $30, $0A ; うまく
#_1C9A86: db $FD, $89 ; write kanji - 使
#_1C9A88: db $03, $3D, $C8, $1C, $1B, $34, $05, $0A ; えば,とてもやく
#_1C9A90: db $21 ; に
#_1C9A91: db $F9 ; cursor to row 3
#_1C9A92: db $18, $1A, $C8, $2A, $11, $16, $20, $1A ; たつ,ふしぎなつ
#_1C9A9A: db $03, $2E, $C7 ; えだ!
#_1C9A9D: db $FB ; end of message

;===================================================================================================
; Hookshot get
;===================================================================================================
; ボヨヨ〜ン フックショットだ
; のびて ちぢんでボヨヨ〜ン!
; 色々な物に さしてみよう!
Message_0067:
#_1C9A9E: db $91, $57, $57, $CE, $5F, $FF, $7A, $9A ; ボヨヨ〜ン⎵フッ
#_1C9AA6: db $5A, $61, $99, $9A, $6C, $2E ; クショットだ
#_1C9AAC: db $F8 ; cursor to row 2
#_1C9AAD: db $24, $3E, $1B, $FF, $19, $2F, $0F, $36 ; のびて⎵ちぢんで
#_1C9AB5: db $91, $57, $57, $CE, $5F, $C7 ; ボヨヨ〜ン!
#_1C9ABB: db $F9 ; cursor to row 3
#_1C9ABC: db $FD, $A4 ; write kanji - 色
#_1C9ABE: db $FD, $A5 ; write kanji - 々
#_1C9AC0: db $20 ; な
#_1C9AC1: db $FD, $51 ; write kanji - 物
#_1C9AC3: db $21, $FF, $10, $11, $1B, $31, $07, $02 ; に⎵さしてみよう
#_1C9ACB: db $C7 ; !
#_1C9ACC: db $FB ; end of message

;===================================================================================================
; 10 bombs get
;===================================================================================================
; バクダンを 手に入れた。
; おいたバクダンを Aボタンで
; かついで,投げられるぞっ!
Message_0068:
#_1C9ACD: db $8D, $5A, $7E, $5F, $0E, $FF ; バクダンを⎵
#_1C9AD3: db $FD, $3E ; write kanji - 手
#_1C9AD5: db $21 ; に
#_1C9AD6: db $FD, $49 ; write kanji - 入
#_1C9AD8: db $3B, $18, $CD ; れた。
#_1C9ADB: db $F8 ; cursor to row 2
#_1C9ADC: db $04, $01, $18, $8D, $5A, $7E, $5F, $0E ; おいたバクダンを
#_1C9AE4: db $FF, $AA, $91, $68, $5F, $36 ; ⎵Aボタンで
#_1C9AEA: db $F9 ; cursor to row 3
#_1C9AEB: db $08, $1A, $01, $36, $C8 ; かついで,
#_1C9AF0: db $FD, $FC ; write kanji - 投
#_1C9AF2: db $1D, $38, $3B, $3A, $2D, $4A, $C7 ; げられるぞっ!
#_1C9AF9: db $FB ; end of message

;===================================================================================================
; 3 bombs get
;===================================================================================================
; これは ビンだ。中に色々
; 入れることができる。
; 入れた物はあとで使えるぞ!
Message_0069:
#_1C9AFA: db $0C, $3B, $28, $FF, $8E, $5F, $2E, $CD ; これは⎵ビンだ。
#_1C9B02: db $FD, $AE ; write kanji - 中
#_1C9B04: db $21 ; に
#_1C9B05: db $FD, $A4 ; write kanji - 色
#_1C9B07: db $FD, $A5 ; write kanji - 々
#_1C9B09: db $F8 ; cursor to row 2
#_1C9B0A: db $FD, $49 ; write kanji - 入
#_1C9B0C: db $3B, $3A, $0C, $1C, $15, $36, $09, $3A ; れることができる
#_1C9B14: db $CD ; 。
#_1C9B15: db $F9 ; cursor to row 3
#_1C9B16: db $FD, $49 ; write kanji - 入
#_1C9B18: db $3B, $18 ; れた
#_1C9B1A: db $FD, $51 ; write kanji - 物
#_1C9B1C: db $28, $00, $1C, $36 ; はあとで
#_1C9B20: db $FD, $89 ; write kanji - 使
#_1C9B22: db $03, $3A, $2D, $C7 ; えるぞ!
#_1C9B26: db $FB ; end of message

;===================================================================================================
; Big key get
;===================================================================================================
; 大きなカギを 手に入れた。
; 小さなカギでは 開かない
; ジョウ前を開く事ができるぞ!
Message_006A:
#_1C9B27: db $FD, $5F ; write kanji - 大
#_1C9B29: db $09, $20, $58, $66, $0E, $FF ; きなカギを⎵
#_1C9B2F: db $FD, $3E ; write kanji - 手
#_1C9B31: db $21 ; に
#_1C9B32: db $FD, $49 ; write kanji - 入
#_1C9B34: db $3B, $18, $CD ; れた。
#_1C9B37: db $F8 ; cursor to row 2
#_1C9B38: db $FD, $FA ; write kanji - 小
#_1C9B3A: db $10, $20, $58, $66, $36, $28, $FF ; さなカギでは⎵
#_1C9B41: db $FD, $4B ; write kanji - 開
#_1C9B43: db $08, $20, $01 ; かない
#_1C9B46: db $F9 ; cursor to row 3
#_1C9B47: db $75, $99, $52 ; ジョウ
#_1C9B4A: db $FD, $78 ; write kanji - 前
#_1C9B4C: db $0E ; を
#_1C9B4D: db $FD, $4B ; write kanji - 開
#_1C9B4F: db $0A ; く
#_1C9B50: db $FD, $22 ; write kanji - 事
#_1C9B52: db $15, $36, $09, $3A, $2D, $C7 ; ができるぞ!
#_1C9B58: db $FB ; end of message

;===================================================================================================
; TItan's mitts get
;===================================================================================================
; パワフルグラブを手に入れた。
; おもくて,かつげなかった
; くろいイシも かつげるぞ!
Message_006B:
#_1C9B59: db $92, $5D, $7A, $8A, $67, $88, $8F, $0E ; パワフルグラブを
#_1C9B61: db $FD, $3E ; write kanji - 手
#_1C9B63: db $21 ; に
#_1C9B64: db $FD, $49 ; write kanji - 入
#_1C9B66: db $3B, $18, $CD ; れた。
#_1C9B69: db $F8 ; cursor to row 2
#_1C9B6A: db $04, $34, $0A, $1B, $C8, $08, $1A, $1D ; おもくて,かつげ
#_1C9B72: db $20, $08, $4A, $18 ; なかった
#_1C9B76: db $F9 ; cursor to row 3
#_1C9B77: db $0A, $3C, $01, $51, $61, $34, $FF, $08 ; くろいイシも⎵か
#_1C9B7F: db $1A, $1D, $3A, $2D, $C7 ; つげるぞ!
#_1C9B84: db $FB ; end of message

;===================================================================================================
; Mirror get
;===================================================================================================
; マジカルミラ－を もらった!
; 青く すんだ 美しいカガミ⋯
; すい込まれそうな気がしてくる
Message_006C:
#_1C9B85: db $80, $75, $58, $8A, $81, $88, $C9, $0E ; マジカルミラ－を
#_1C9B8D: db $FF, $34, $38, $4A, $18, $C7 ; ⎵もらった!
#_1C9B93: db $F8 ; cursor to row 2
#_1C9B94: db $FD, $DA ; write kanji - 青
#_1C9B96: db $0A, $FF, $12, $0F, $2E, $FF ; く⎵すんだ⎵
#_1C9B9C: db $FD, $68 ; write kanji - 美
#_1C9B9E: db $11, $01, $58, $65, $81, $CC ; しいカガミ⋯
#_1C9BA4: db $F9 ; cursor to row 3
#_1C9BA5: db $12, $01 ; すい
#_1C9BA7: db $FD, $DC ; write kanji - 込
#_1C9BA9: db $30, $3B, $14, $02, $20 ; まれそうな
#_1C9BAE: db $FD, $37 ; write kanji - 気
#_1C9BB0: db $15, $11, $1B, $0A, $3A ; がしてくる
#_1C9BB5: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; やった! マスタ－ソ－ド⋯
; ⋯ ⋯ ⋯
; では,ない様だ。 ザンネン
Message_006D:
#_1C9BB6: db $05, $4A, $18, $C7, $FF, $80, $62, $68 ; やった!⎵マスタ
#_1C9BBE: db $C9, $64, $C9, $87, $CC ; －ソ－ド⋯
#_1C9BC3: db $F8 ; cursor to row 2
#_1C9BC4: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1C9BCA: db $F9 ; cursor to row 3
#_1C9BCB: db $36, $28, $C8, $20, $01 ; では,ない
#_1C9BD0: db $FD, $10 ; write kanji - 様
#_1C9BD2: db $2E, $CD, $FF, $6F, $5F, $73, $5F ; だ。⎵ザンネン
#_1C9BD9: db $FB ; end of message

;===================================================================================================
; Master sword get
;===================================================================================================
; 長老サハスラ－ラ の声が
; どこからとなく ひびいてくる
; ⋯ ⋯ ⋯
; [LINK]よ よくぞ退魔の剣
; マスタ－ソ－ドを手に入れた⋯
; そのかがやき全てがお前の力だ
; その剣ならば,司祭の魔力をも
; うちやぶるはずじゃっ!
; この国の運命は,お前に
; かかっておる。
; 頼んだぞ [LINK]よ ⋯
Message_006E:
#_1C9BDA: db $FE, $6B, $02 ; set window type
#_1C9BDD: db $FC, $06 ; set text speed
#_1C9BDF: db $FD, $8D ; write kanji - 長
#_1C9BE1: db $FD, $E5 ; write kanji - 老
#_1C9BE3: db $60, $78, $62, $88, $C9, $88, $FF, $24 ; サハスラ－ラ⎵の
#_1C9BEB: db $FD, $60 ; write kanji - 声
#_1C9BED: db $15 ; が
#_1C9BEE: db $F8 ; cursor to row 2
#_1C9BEF: db $37, $0C, $08, $38, $1C, $20, $0A, $FF ; どこからとなく⎵
#_1C9BF7: db $29, $3E, $01, $1B, $0A, $3A ; ひびいてくる
#_1C9BFD: db $F9 ; cursor to row 3
#_1C9BFE: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1C9C04: db $FA ; wait for key
#_1C9C05: db $F6 ; scroll text
#_1C9C06: db $FE, $6A ; write player name
#_1C9C08: db $07, $FF, $07, $0A, $2D ; よ⎵よくぞ
#_1C9C0D: db $FD, $2C ; write kanji - 退
#_1C9C0F: db $FD, $2D ; write kanji - 魔
#_1C9C11: db $24 ; の
#_1C9C12: db $FD, $1A ; write kanji - 剣
#_1C9C14: db $F6 ; scroll text
#_1C9C15: db $80, $62, $68, $C9, $64, $C9, $87, $0E ; マスタ－ソ－ドを
#_1C9C1D: db $FD, $3E ; write kanji - 手
#_1C9C1F: db $21 ; に
#_1C9C20: db $FD, $49 ; write kanji - 入
#_1C9C22: db $3B, $18, $CC ; れた⋯
#_1C9C25: db $F6 ; scroll text
#_1C9C26: db $14, $24, $08, $15, $05, $09 ; そのかがやき
#_1C9C2C: db $FD, $BE ; write kanji - 全
#_1C9C2E: db $1B, $15, $04 ; てがお
#_1C9C31: db $FD, $78 ; write kanji - 前
#_1C9C33: db $24 ; の
#_1C9C34: db $FD, $99 ; write kanji - 力
#_1C9C36: db $2E ; だ
#_1C9C37: db $FA ; wait for key
#_1C9C38: db $F6 ; scroll text
#_1C9C39: db $14, $24 ; その
#_1C9C3B: db $FD, $1A ; write kanji - 剣
#_1C9C3D: db $20, $38, $3D, $C8 ; ならば,
#_1C9C41: db $FD, $0D ; write kanji - 司
#_1C9C43: db $FD, $17 ; write kanji - 祭
#_1C9C45: db $24 ; の
#_1C9C46: db $FD, $2D ; write kanji - 魔
#_1C9C48: db $FD, $99 ; write kanji - 力
#_1C9C4A: db $0E, $34 ; をも
#_1C9C4C: db $F6 ; scroll text
#_1C9C4D: db $02, $19, $05, $3F, $3A, $28, $26, $25 ; うちやぶるはずじ
#_1C9C55: db $47, $4A, $C7 ; ゃっ!
#_1C9C58: db $F6 ; scroll text
#_1C9C59: db $FA ; wait for key
#_1C9C5A: db $F6 ; scroll text
#_1C9C5B: db $0C, $24 ; この
#_1C9C5D: db $FD, $2B ; write kanji - 国
#_1C9C5F: db $24 ; の
#_1C9C60: db $FD, $4F ; write kanji - 運
#_1C9C62: db $FD, $E4 ; write kanji - 命
#_1C9C64: db $28, $C8, $04 ; は,お
#_1C9C67: db $FD, $78 ; write kanji - 前
#_1C9C69: db $21 ; に
#_1C9C6A: db $F6 ; scroll text
#_1C9C6B: db $08, $08, $4A, $1B, $04, $3A, $CD ; かかっておる。
#_1C9C72: db $F6 ; scroll text
#_1C9C73: db $FD, $08 ; write kanji - 頼
#_1C9C75: db $0F, $2E, $2D, $FF ; んだぞ⎵
#_1C9C79: db $FE, $67 ; next image
#_1C9C7B: db $FE, $6A ; write player name
#_1C9C7D: db $07, $FF, $CC ; よ⎵⋯
#_1C9C80: db $FB ; end of message

;===================================================================================================
; Red potion get
;===================================================================================================
; ヒッヒ まいど おおきに!
; いのちのクスリじゃよ。
; 体力が,かいふくするよ。
Message_006F:
#_1C9C81: db $79, $9A, $79, $FF, $30, $01, $37, $FF ; ヒッヒ⎵まいど⎵
#_1C9C89: db $04, $04, $09, $21, $C7 ; おおきに!
#_1C9C8E: db $F8 ; cursor to row 2
#_1C9C8F: db $01, $24, $19, $24, $5A, $62, $89, $25 ; いのちのクスリじ
#_1C9C97: db $47, $07, $CD ; ゃよ。
#_1C9C9A: db $F9 ; cursor to row 3
#_1C9C9B: db $FD, $BF ; write kanji - 体
#_1C9C9D: db $FD, $99 ; write kanji - 力
#_1C9C9F: db $15, $C8, $08, $01, $2A, $0A, $12, $3A ; が,かいふくする
#_1C9CA7: db $07, $CD ; よ。
#_1C9CA9: db $FB ; end of message

;===================================================================================================
; Green potion get
;===================================================================================================
; ヒッヒ まいど おおきに!
; 魔法のクスリじゃよ。
; 魔法の力が,かいふくするよ。
Message_0070:
#_1C9CAA: db $79, $9A, $79, $FF, $30, $01, $37, $FF ; ヒッヒ⎵まいど⎵
#_1C9CB2: db $04, $04, $09, $21, $C7 ; おおきに!
#_1C9CB7: db $F8 ; cursor to row 2
#_1C9CB8: db $FD, $2D ; write kanji - 魔
#_1C9CBA: db $FD, $3C ; write kanji - 法
#_1C9CBC: db $24, $5A, $62, $89, $25, $47, $07, $CD ; のクスリじゃよ。
#_1C9CC4: db $F9 ; cursor to row 3
#_1C9CC5: db $FD, $2D ; write kanji - 魔
#_1C9CC7: db $FD, $3C ; write kanji - 法
#_1C9CC9: db $24 ; の
#_1C9CCA: db $FD, $99 ; write kanji - 力
#_1C9CCC: db $15, $C8, $08, $01, $2A, $0A, $12, $3A ; が,かいふくする
#_1C9CD4: db $07, $CD ; よ。
#_1C9CD6: db $FB ; end of message

;===================================================================================================
; Blue potion get
;===================================================================================================
; ヒッヒ まいど おおきに!
; いのちと魔法のクスリじゃよ。
; 両方が,かいふくするよ。
Message_0071:
#_1C9CD7: db $79, $9A, $79, $FF, $30, $01, $37, $FF ; ヒッヒ⎵まいど⎵
#_1C9CDF: db $04, $04, $09, $21, $C7 ; おおきに!
#_1C9CE4: db $F8 ; cursor to row 2
#_1C9CE5: db $01, $24, $19, $1C ; いのちと
#_1C9CE9: db $FD, $2D ; write kanji - 魔
#_1C9CEB: db $FD, $3C ; write kanji - 法
#_1C9CED: db $24, $5A, $62, $89, $25, $47, $07, $CD ; のクスリじゃよ。
#_1C9CF5: db $F9 ; cursor to row 3
#_1C9CF6: db $FD, $F7 ; write kanji - 両
#_1C9CF8: db $FD, $20 ; write kanji - 方
#_1C9CFA: db $15, $C8, $08, $01, $2A, $0A, $12, $3A ; が,かいふくする
#_1C9D02: db $07, $CD ; よ。
#_1C9D04: db $FB ; end of message

;===================================================================================================
; Net get
;===================================================================================================
; ムシ取りあみを おかりした!
; ムシの他にも 取れる物が
; あるかもしれない。秘密だ⋯。
Message_0072:
#_1C9D05: db $FE, $6D, $01 ; set window position
#_1C9D08: db $82, $61 ; ムシ
#_1C9D0A: db $FD, $47 ; write kanji - 取
#_1C9D0C: db $39, $00, $31, $0E, $FF, $04, $08, $39 ; りあみを⎵おかり
#_1C9D14: db $11, $18, $C7 ; した!
#_1C9D17: db $F8 ; cursor to row 2
#_1C9D18: db $82, $61, $24 ; ムシの
#_1C9D1B: db $FD, $27 ; write kanji - 他
#_1C9D1D: db $21, $34, $FF ; にも⎵
#_1C9D20: db $FD, $47 ; write kanji - 取
#_1C9D22: db $3B, $3A ; れる
#_1C9D24: db $FD, $51 ; write kanji - 物
#_1C9D26: db $15 ; が
#_1C9D27: db $F9 ; cursor to row 3
#_1C9D28: db $00, $3A, $08, $34, $11, $3B, $20, $01 ; あるかもしれない
#_1C9D30: db $CD ; 。
#_1C9D31: db $FD, $C1 ; write kanji - 秘
#_1C9D33: db $FD, $C2 ; write kanji - 密
#_1C9D35: db $2E, $CC, $CD ; だ⋯。
#_1C9D38: db $FB ; end of message

;===================================================================================================
; Blue mail get
;===================================================================================================
; 青い服を みつけた!
; 敵からうけるダメ－ジを
; へらしてくれる。うれしい!
Message_0073:
#_1C9D39: db $FD, $DA ; write kanji - 青
#_1C9D3B: db $01 ; い
#_1C9D3C: db $FD, $FD ; write kanji - 服
#_1C9D3E: db $0E, $FF, $31, $1A, $0B, $18, $C7 ; を⎵みつけた!
#_1C9D45: db $F8 ; cursor to row 2
#_1C9D46: db $FD, $D1 ; write kanji - 敵
#_1C9D48: db $08, $38, $02, $0B, $3A, $7E, $83, $C9 ; からうけるダメ－
#_1C9D50: db $75, $0E ; ジを
#_1C9D52: db $F9 ; cursor to row 3
#_1C9D53: db $2B, $38, $11, $1B, $0A, $3B, $3A, $CD ; へらしてくれる。
#_1C9D5B: db $02, $3B, $11, $01, $C7 ; うれしい!
#_1C9D60: db $FB ; end of message

;===================================================================================================
; Red mail get
;===================================================================================================
; あかい服を みつけた!
; 敵からうける ダメ－ジを
; 青い服より へらしてくれる!
Message_0074:
#_1C9D61: db $00, $08, $01 ; あかい
#_1C9D64: db $FD, $FD ; write kanji - 服
#_1C9D66: db $0E, $FF, $31, $1A, $0B, $18, $C7 ; を⎵みつけた!
#_1C9D6D: db $F8 ; cursor to row 2
#_1C9D6E: db $FD, $D1 ; write kanji - 敵
#_1C9D70: db $08, $38, $02, $0B, $3A, $FF, $7E, $83 ; からうける⎵ダメ
#_1C9D78: db $C9, $75, $0E ; －ジを
#_1C9D7B: db $F9 ; cursor to row 3
#_1C9D7C: db $FD, $DA ; write kanji - 青
#_1C9D7E: db $01 ; い
#_1C9D7F: db $FD, $FD ; write kanji - 服
#_1C9D81: db $07, $39, $FF, $2B, $38, $11, $1B, $0A ; より⎵へらしてく
#_1C9D89: db $3B, $3A, $C7 ; れる!
#_1C9D8C: db $FB ; end of message

;===================================================================================================
; Tempered sword get
;===================================================================================================
; やった! 剣がより強くなった
; 体の中から 力が
; わいてくる様だっ!
Message_0075:
#_1C9D8D: db $05, $4A, $18, $C7, $FF ; やった!⎵
#_1C9D92: db $FD, $1A ; write kanji - 剣
#_1C9D94: db $15, $07, $39 ; がより
#_1C9D97: db $FD, $FB ; write kanji - 強
#_1C9D99: db $0A, $20, $4A, $18 ; くなった
#_1C9D9D: db $F8 ; cursor to row 2
#_1C9D9E: db $FD, $BF ; write kanji - 体
#_1C9DA0: db $24 ; の
#_1C9DA1: db $FD, $AE ; write kanji - 中
#_1C9DA3: db $08, $38, $FF ; から⎵
#_1C9DA6: db $FD, $99 ; write kanji - 力
#_1C9DA8: db $15 ; が
#_1C9DA9: db $F9 ; cursor to row 3
#_1C9DAA: db $0D, $01, $1B, $0A, $3A ; わいてくる
#_1C9DAF: db $FD, $10 ; write kanji - 様
#_1C9DB1: db $2E, $4A, $C7 ; だっ!
#_1C9DB4: db $FB ; end of message

;===================================================================================================
; Shield get
;===================================================================================================
; カガミの盾を みつけたぞっ!
; 今までの盾では,はねかえせな
; かったビ－ムもはねかえすぞ!
Message_0076:
#_1C9DB5: db $58, $65, $81, $24 ; カガミの
#_1C9DB9: db $FD, $1B ; write kanji - 盾
#_1C9DBB: db $0E, $FF, $31, $1A, $0B, $18, $2D, $4A ; を⎵みつけたぞっ
#_1C9DC3: db $C7 ; !
#_1C9DC4: db $F8 ; cursor to row 2
#_1C9DC5: db $FD, $6A ; write kanji - 今
#_1C9DC7: db $30, $36, $24 ; までの
#_1C9DCA: db $FD, $1B ; write kanji - 盾
#_1C9DCC: db $36, $28, $C8, $28, $23, $08, $03, $13 ; では,はねかえせ
#_1C9DD4: db $20 ; な
#_1C9DD5: db $F9 ; cursor to row 3
#_1C9DD6: db $08, $4A, $18, $8E, $C9, $82, $34, $28 ; かったビ－ムもは
#_1C9DDE: db $23, $08, $03, $12, $2D, $C7 ; ねかえすぞ!
#_1C9DE4: db $FB ; end of message

;===================================================================================================
; Byrna get
;===================================================================================================
; バイラのつえを 手に入れた!
; ひとふりすれば,ヒカリのオビ
; が,みを守ってくれるぞ。
Message_0077:
#_1C9DE5: db $8D, $51, $88, $24, $1A, $03, $0E, $FF ; バイラのつえを⎵
#_1C9DED: db $FD, $3E ; write kanji - 手
#_1C9DEF: db $21 ; に
#_1C9DF0: db $FD, $49 ; write kanji - 入
#_1C9DF2: db $3B, $18, $C7 ; れた!
#_1C9DF5: db $F8 ; cursor to row 2
#_1C9DF6: db $29, $1C, $2A, $39, $12, $3B, $3D, $C8 ; ひとふりすれば,
#_1C9DFE: db $79, $58, $89, $24, $54, $8E ; ヒカリのオビ
#_1C9E04: db $F9 ; cursor to row 3
#_1C9E05: db $15, $C8, $31, $0E ; が,みを
#_1C9E09: db $FD, $91 ; write kanji - 守
#_1C9E0B: db $4A, $1B, $0A, $3B, $3A, $2D, $CD ; ってくれるぞ。
#_1C9E12: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ムムッ,カギがかかっている。
; 大きなカギがあれば,開けられ
; そうだ!
Message_0078:
#_1C9E13: db $82, $82, $9A, $C8, $58, $66, $15, $08 ; ムムッ,カギがか
#_1C9E1B: db $08, $4A, $1B, $01, $3A, $CD ; かっている。
#_1C9E21: db $F8 ; cursor to row 2
#_1C9E22: db $FD, $5F ; write kanji - 大
#_1C9E24: db $09, $20, $58, $66, $15, $00, $3B, $3D ; きなカギがあれば
#_1C9E2C: db $C8 ; ,
#_1C9E2D: db $FD, $4B ; write kanji - 開
#_1C9E2F: db $0B, $38, $3B ; けられ
#_1C9E32: db $F9 ; cursor to row 3
#_1C9E33: db $14, $02, $2E, $C7 ; そうだ!
#_1C9E37: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; あっ魔法の力が足りない!
; このままでは,このアイテムは
; 使えないぞ!
Message_0079:
#_1C9E38: db $00, $4A ; あっ
#_1C9E3A: db $FD, $2D ; write kanji - 魔
#_1C9E3C: db $FD, $3C ; write kanji - 法
#_1C9E3E: db $24 ; の
#_1C9E3F: db $FD, $99 ; write kanji - 力
#_1C9E41: db $15 ; が
#_1C9E42: db $FD, $96 ; write kanji - 足
#_1C9E44: db $39, $20, $01, $C7 ; りない!
#_1C9E48: db $F8 ; cursor to row 2
#_1C9E49: db $0C, $24, $30, $30, $36, $28, $C8, $0C ; このままでは,こ
#_1C9E51: db $24, $50, $51, $6B, $82, $28 ; のアイテムは
#_1C9E57: db $F9 ; cursor to row 3
#_1C9E58: db $FD, $89 ; write kanji - 使
#_1C9E5A: db $03, $20, $01, $2D, $C7 ; えないぞ!
#_1C9E5F: db $FB ; end of message

;===================================================================================================
; Boots get
;===================================================================================================
; ペガサスのくつを もらった。
; Aボタンを－定時間押し続ける
; と,ダッシュで体当たりできる
Message_007A:
#_1C9E60: db $FE, $6D, $01 ; set window position
#_1C9E63: db $95, $65, $60, $62, $24, $0A, $1A, $0E ; ペガサスのくつを
#_1C9E6B: db $FF, $34, $38, $4A, $18, $CD ; ⎵もらった。
#_1C9E71: db $F8 ; cursor to row 2
#_1C9E72: db $AA, $91, $68, $5F, $0E, $C9 ; Aボタンを－
#_1C9E78: db $FD, $84 ; write kanji - 定
#_1C9E7A: db $FD, $88 ; write kanji - 時
#_1C9E7C: db $FD, $39 ; write kanji - 間
#_1C9E7E: db $FD, $77 ; write kanji - 押
#_1C9E80: db $11 ; し
#_1C9E81: db $FD, $82 ; write kanji - 続
#_1C9E83: db $0B, $3A ; ける
#_1C9E85: db $F9 ; cursor to row 3
#_1C9E86: db $1C, $C8, $7E, $9A, $61, $98, $36 ; と,ダッシュで
#_1C9E8D: db $FD, $BF ; write kanji - 体
#_1C9E8F: db $FD, $25 ; write kanji - 当
#_1C9E91: db $18, $39, $36, $09, $3A ; たりできる
#_1C9E96: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; いやぁ,びっくりしたなもう〜
; へえ－,まともな人に会うのは
; 何百年ぶりかねえ。
; まあまあ,ちょっとおしゃべり
; させてくれよ。 あんた,こん
; な話を知ってるかい⋯。
Message_007B:
#_1C9E97: db $01, $05, $4B, $C8, $3E, $4A, $0A, $39 ; いやぁ,びっくり
#_1C9E9F: db $11, $18, $20, $34, $02, $CE ; したなもう〜
#_1C9EA5: db $F8 ; cursor to row 2
#_1C9EA6: db $2B, $03, $C9, $C8, $30, $1C, $34, $20 ; へえ－,まともな
#_1C9EAE: db $FD, $38 ; write kanji - 人
#_1C9EB0: db $21 ; に
#_1C9EB1: db $FD, $04 ; write kanji - 会
#_1C9EB3: db $02, $24, $28 ; うのは
#_1C9EB6: db $F9 ; cursor to row 3
#_1C9EB7: db $FD, $8B ; write kanji - 何
#_1C9EB9: db $FD, $C7 ; write kanji - 百
#_1C9EBB: db $FD, $A1 ; write kanji - 年
#_1C9EBD: db $3F, $39, $08, $23, $03, $CD ; ぶりかねえ。
#_1C9EC3: db $FA ; wait for key
#_1C9EC4: db $F6 ; scroll text
#_1C9EC5: db $30, $00, $30, $00, $C8, $19, $49, $4A ; まあまあ,ちょっ
#_1C9ECD: db $1C, $04, $11, $47, $40, $39 ; とおしゃべり
#_1C9ED3: db $F6 ; scroll text
#_1C9ED4: db $10, $13, $1B, $0A, $3B, $07, $CD, $FF ; させてくれよ。⎵
#_1C9EDC: db $00, $0F, $18, $C8, $0C, $0F ; あんた,こん
#_1C9EE2: db $F6 ; scroll text
#_1C9EE3: db $20 ; な
#_1C9EE4: db $FD, $A3 ; write kanji - 話
#_1C9EE6: db $0E ; を
#_1C9EE7: db $FD, $93 ; write kanji - 知
#_1C9EE9: db $4A, $1B, $3A, $08, $01, $CC, $CD ; ってるかい⋯。
#_1C9EF0: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; この村にあるガ－ゴイルの
; せきぞう。あの下から,女の子
; の助けを求める声が,
; きこえてくるってうわさだよ。
; なんだか,あやしげな話だと
; 思わないか⋯。
Message_007C:
#_1C9EF1: db $0C, $24 ; この
#_1C9EF3: db $FD, $8C ; write kanji - 村
#_1C9EF5: db $21, $00, $3A, $65, $C9, $6E, $51, $8A ; にあるガ－ゴイル
#_1C9EFD: db $24 ; の
#_1C9EFE: db $F8 ; cursor to row 2
#_1C9EFF: db $13, $09, $2D, $02, $CD, $00, $24 ; せきぞう。あの
#_1C9F06: db $FD, $61 ; write kanji - 下
#_1C9F08: db $08, $38, $C8 ; から,
#_1C9F0B: db $FD, $15 ; write kanji - 女
#_1C9F0D: db $24 ; の
#_1C9F0E: db $FD, $11 ; write kanji - 子
#_1C9F10: db $F9 ; cursor to row 3
#_1C9F11: db $24 ; の
#_1C9F12: db $FD, $CA ; write kanji - 助
#_1C9F14: db $0B, $0E ; けを
#_1C9F16: db $FD, $9B ; write kanji - 求
#_1C9F18: db $33, $3A ; める
#_1C9F1A: db $FD, $60 ; write kanji - 声
#_1C9F1C: db $15, $C8 ; が,
#_1C9F1E: db $FA ; wait for key
#_1C9F1F: db $F6 ; scroll text
#_1C9F20: db $09, $0C, $03, $1B, $0A, $3A, $4A, $1B ; きこえてくるって
#_1C9F28: db $02, $0D, $10, $2E, $07, $CD ; うわさだよ。
#_1C9F2E: db $F6 ; scroll text
#_1C9F2F: db $20, $0F, $2E, $08, $C8, $00, $05, $11 ; なんだか,あやし
#_1C9F37: db $1D, $20 ; げな
#_1C9F39: db $FD, $A3 ; write kanji - 話
#_1C9F3B: db $2E, $1C ; だと
#_1C9F3D: db $F6 ; scroll text
#_1C9F3E: db $FD, $36 ; write kanji - 思
#_1C9F40: db $0D, $20, $01, $08, $CC, $CD ; わないか⋯。
#_1C9F46: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; なんでも,ガノンの願いをかな
; えるために,トライフォ－スが
; あたえたのがこの世界らしいぞ
; ガノンの願い?それは全世界の
; 王になることさ。闇世界の魔力
; があればできるんじゃないか?
Message_007D:
#_1C9F47: db $20, $0F, $36, $34, $C8, $65, $74, $5F ; なんでも,ガノン
#_1C9F4F: db $24 ; の
#_1C9F50: db $FD, $0A ; write kanji - 願
#_1C9F52: db $01, $0E, $08, $20 ; いをかな
#_1C9F56: db $F8 ; cursor to row 2
#_1C9F57: db $03, $3A, $18, $33, $21, $C8, $6C, $88 ; えるために,トラ
#_1C9F5F: db $51, $7A, $9F, $C9, $62, $15 ; イフォ－スが
#_1C9F65: db $F9 ; cursor to row 3
#_1C9F66: db $00, $18, $03, $18, $24, $15, $0C, $24 ; あたえたのがこの
#_1C9F6E: db $FD, $E8 ; write kanji - 世
#_1C9F70: db $FD, $E9 ; write kanji - 界
#_1C9F72: db $38, $11, $01, $2D ; らしいぞ
#_1C9F76: db $FA ; wait for key
#_1C9F77: db $F6 ; scroll text
#_1C9F78: db $65, $74, $5F, $24 ; ガノンの
#_1C9F7C: db $FD, $0A ; write kanji - 願
#_1C9F7E: db $01, $C6, $14, $3B, $28 ; い?それは
#_1C9F83: db $FD, $BE ; write kanji - 全
#_1C9F85: db $FD, $E8 ; write kanji - 世
#_1C9F87: db $FD, $E9 ; write kanji - 界
#_1C9F89: db $24 ; の
#_1C9F8A: db $F6 ; scroll text
#_1C9F8B: db $FD, $44 ; write kanji - 王
#_1C9F8D: db $21, $20, $3A, $0C, $1C, $10, $CD ; になることさ。
#_1C9F94: db $FD, $57 ; write kanji - 闇
#_1C9F96: db $FD, $E8 ; write kanji - 世
#_1C9F98: db $FD, $E9 ; write kanji - 界
#_1C9F9A: db $24 ; の
#_1C9F9B: db $FD, $2D ; write kanji - 魔
#_1C9F9D: db $FD, $99 ; write kanji - 力
#_1C9F9F: db $F6 ; scroll text
#_1C9FA0: db $15, $00, $3B, $3D, $36, $09, $3A, $0F ; があればできるん
#_1C9FA8: db $25, $47, $20, $01, $08, $C6 ; じゃないか?
#_1C9FAE: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; オレは,もともと光世界のまよ
; いの森にいたんだがな。それが
; 魔法陣に迷いこんでしまって⋯
; 気がついたら闇世界のドクロの
; 森に来ていたんだ。2つの森は
; つながっているんだろうな。
Message_007E:
#_1C9FAF: db $54, $8B, $28, $C8, $34, $1C, $34, $1C ; オレは,もともと
#_1C9FB7: db $FD, $73 ; write kanji - 光
#_1C9FB9: db $FD, $E8 ; write kanji - 世
#_1C9FBB: db $FD, $E9 ; write kanji - 界
#_1C9FBD: db $24, $30, $07 ; のまよ
#_1C9FC0: db $F8 ; cursor to row 2
#_1C9FC1: db $01, $24 ; いの
#_1C9FC3: db $FD, $65 ; write kanji - 森
#_1C9FC5: db $21, $01, $18, $0F, $2E, $15, $20, $CD ; にいたんだがな。
#_1C9FCD: db $14, $3B, $15 ; それが
#_1C9FD0: db $F9 ; cursor to row 3
#_1C9FD1: db $FD, $2D ; write kanji - 魔
#_1C9FD3: db $FD, $3C ; write kanji - 法
#_1C9FD5: db $FD, $C5 ; write kanji - 陣
#_1C9FD7: db $21 ; に
#_1C9FD8: db $FD, $70 ; write kanji - 迷
#_1C9FDA: db $01, $0C, $0F, $36, $11, $30, $4A, $1B ; いこんでしまって
#_1C9FE2: db $CC ; ⋯
#_1C9FE3: db $FA ; wait for key
#_1C9FE4: db $F6 ; scroll text
#_1C9FE5: db $FD, $37 ; write kanji - 気
#_1C9FE7: db $15, $1A, $01, $18, $38 ; がついたら
#_1C9FEC: db $FD, $57 ; write kanji - 闇
#_1C9FEE: db $FD, $E8 ; write kanji - 世
#_1C9FF0: db $FD, $E9 ; write kanji - 界
#_1C9FF2: db $24, $87, $5A, $8C, $24 ; のドクロの
#_1C9FF7: db $F6 ; scroll text
#_1C9FF8: db $FD, $65 ; write kanji - 森
#_1C9FFA: db $21 ; に
#_1C9FFB: db $FD, $D6 ; write kanji - 来
#_1C9FFD: db $1B, $01, $18, $0F, $2E, $CD, $A2, $1A ; ていたんだ。2つ
#_1CA005: db $24 ; の
#_1CA006: db $FD, $65 ; write kanji - 森
#_1CA008: db $28 ; は
#_1CA009: db $F6 ; scroll text
#_1CA00A: db $1A, $20, $15, $4A, $1B, $01, $3A, $0F ; つながっているん
#_1CA012: db $2E, $3C, $02, $20, $CD ; だろうな。
#_1CA017: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; なんでも,1つ目のきょじん
; ヒノックスは,バクダンで,
; やっつけると良いらしいよ。
; まあ,それだけの話だ。
Message_007F:
#_1CA018: db $20, $0F, $36, $34, $C8, $A1, $1A ; なんでも,1つ
#_1CA01F: db $FD, $75 ; write kanji - 目
#_1CA021: db $24, $09, $49, $25, $0F ; のきょじん
#_1CA026: db $F8 ; cursor to row 2
#_1CA027: db $79, $74, $9A, $5A, $62, $28, $C8, $8D ; ヒノックスは,バ
#_1CA02F: db $5A, $7E, $5F, $36, $C8 ; クダンで,
#_1CA034: db $F9 ; cursor to row 3
#_1CA035: db $05, $4A, $1A, $0B, $3A, $1C ; やっつけると
#_1CA03B: db $FD, $32 ; write kanji - 良
#_1CA03D: db $01, $38, $11, $01, $07, $CD ; いらしいよ。
#_1CA043: db $FA ; wait for key
#_1CA044: db $F6 ; scroll text
#_1CA045: db $30, $00, $C8, $14, $3B, $2E, $0B, $24 ; まあ,それだけの
#_1CA04D: db $FD, $A3 ; write kanji - 話
#_1CA04F: db $2E, $CD ; だ。
#_1CA051: db $F6 ; scroll text
#_1CA052: db $F6 ; scroll text
#_1CA053: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; きにさわる事を
; するんじゃねえ!
Message_0080:
#_1CA054: db $09, $21, $10, $0D, $3A ; きにさわる
#_1CA059: db $FD, $22 ; write kanji - 事
#_1CA05B: db $0E ; を
#_1CA05C: db $F8 ; cursor to row 2
#_1CA05D: db $12, $3A, $0F, $25, $47, $23, $03, $C7 ; するんじゃねえ!
#_1CA065: db $FB ; end of message

;===================================================================================================
; Pendants remaining message
;===================================================================================================
; 『力の紋章』を手に入れた!
; やった!3つの紋章がそろった
; マスタ－ソ－ドの森へ向おう!
Message_0081:
#_1CA066: db $C4 ; 『
#_1CA067: db $FD, $99 ; write kanji - 力
#_1CA069: db $24 ; の
#_1CA06A: db $FD, $53 ; write kanji - 紋
#_1CA06C: db $FD, $54 ; write kanji - 章
#_1CA06E: db $C5, $0E ; 』を
#_1CA070: db $FD, $3E ; write kanji - 手
#_1CA072: db $21 ; に
#_1CA073: db $FD, $49 ; write kanji - 入
#_1CA075: db $3B, $18, $C7 ; れた!
#_1CA078: db $F8 ; cursor to row 2
#_1CA079: db $05, $4A, $18, $C7, $A3, $1A, $24 ; やった!3つの
#_1CA080: db $FD, $53 ; write kanji - 紋
#_1CA082: db $FD, $54 ; write kanji - 章
#_1CA084: db $15, $14, $3C, $4A, $18 ; がそろった
#_1CA089: db $F9 ; cursor to row 3
#_1CA08A: db $80, $62, $68, $C9, $64, $C9, $87, $24 ; マスタ－ソ－ドの
#_1CA092: db $FD, $65 ; write kanji - 森
#_1CA094: db $2B ; へ
#_1CA095: db $FD, $86 ; write kanji - 向
#_1CA097: db $04, $02, $C7 ; おう!
#_1CA09A: db $FB ; end of message

;===================================================================================================
; Blue pendant get
;===================================================================================================
; 『知恵の紋章』を手に入れた!
; またひとつ,強くなったぞ!
; さあ,さいごの紋章へ向おう!
Message_0082:
#_1CA09B: db $C4 ; 『
#_1CA09C: db $FD, $93 ; write kanji - 知
#_1CA09E: db $FD, $41 ; write kanji - 恵
#_1CA0A0: db $24 ; の
#_1CA0A1: db $FD, $53 ; write kanji - 紋
#_1CA0A3: db $FD, $54 ; write kanji - 章
#_1CA0A5: db $C5, $0E ; 』を
#_1CA0A7: db $FD, $3E ; write kanji - 手
#_1CA0A9: db $21 ; に
#_1CA0AA: db $FD, $49 ; write kanji - 入
#_1CA0AC: db $3B, $18, $C7 ; れた!
#_1CA0AF: db $F8 ; cursor to row 2
#_1CA0B0: db $30, $18, $29, $1C, $1A, $C8 ; またひとつ,
#_1CA0B6: db $FD, $FB ; write kanji - 強
#_1CA0B8: db $0A, $20, $4A, $18, $2D, $C7 ; くなったぞ!
#_1CA0BE: db $F9 ; cursor to row 3
#_1CA0BF: db $10, $00, $C8, $10, $01, $1E, $24 ; さあ,さいごの
#_1CA0C6: db $FD, $53 ; write kanji - 紋
#_1CA0C8: db $FD, $54 ; write kanji - 章
#_1CA0CA: db $2B ; へ
#_1CA0CB: db $FD, $86 ; write kanji - 向
#_1CA0CD: db $04, $02, $C7 ; おう!
#_1CA0D0: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; は－い,マトアテ屋でござ〜い
; 20ルピ－で,矢が5本⋯
; 続けて当てれば大もうけ!
; ちょっとニイさんどないです?
; ▶ あそぶ
;   帰 る
Message_0083:
#_1CA0D1: db $28, $C9, $01, $C8, $80, $6C, $50, $6B ; は－い,マトアテ
#_1CA0D9: db $FD, $3D ; write kanji - 屋
#_1CA0DB: db $36, $1E, $1F, $CE, $01 ; でござ〜い
#_1CA0E0: db $F8 ; cursor to row 2
#_1CA0E1: db $A2, $A0, $8A, $93, $C9, $36, $C8 ; 20ルピ－で,
#_1CA0E8: db $FD, $BB ; write kanji - 矢
#_1CA0EA: db $15, $A5 ; が5
#_1CA0EC: db $FD, $24 ; write kanji - 本
#_1CA0EE: db $CC ; ⋯
#_1CA0EF: db $F9 ; cursor to row 3
#_1CA0F0: db $FD, $82 ; write kanji - 続
#_1CA0F2: db $0B, $1B ; けて
#_1CA0F4: db $FD, $25 ; write kanji - 当
#_1CA0F6: db $1B, $3B, $3D ; てれば
#_1CA0F9: db $FD, $5F ; write kanji - 大
#_1CA0FB: db $34, $02, $0B, $C7 ; もうけ!
#_1CA0FF: db $FA ; wait for key
#_1CA100: db $F6 ; scroll text
#_1CA101: db $19, $49, $4A, $1C, $71, $51, $10, $0F ; ちょっとニイさん
#_1CA109: db $37, $20, $01, $36, $12, $C6 ; どないです?
#_1CA10F: db $F6 ; scroll text
#_1CA110: db $FF, $FF, $E4, $FF, $00, $14, $3F ; ⎵⎵▶⎵あそぶ
#_1CA117: db $F6 ; scroll text
#_1CA118: db $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵
#_1CA11C: db $FD, $D7 ; write kanji - 帰
#_1CA11E: db $FF, $3A ; ⎵る
#_1CA120: db $FE, $68 ; get player selection - choose 2 low
#_1CA122: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; では,よ〜くねらって
; はい! どうぞ〜!
Message_0084:
#_1CA123: db $36, $28, $C8, $07, $CE, $0A, $23, $38 ; では,よ〜くねら
#_1CA12B: db $4A, $1B ; って
#_1CA12D: db $F8 ; cursor to row 2
#_1CA12E: db $28, $01, $C7, $FF, $37, $02, $2D, $CE ; はい!⎵どうぞ〜
#_1CA136: db $C7 ; !
#_1CA137: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; では,お帰りは,もと来た方へ
; まっすぐに〜!
; ごきげんよう さようなら〜!
Message_0085:
#_1CA138: db $36, $28, $C8, $04 ; では,お
#_1CA13C: db $FD, $D7 ; write kanji - 帰
#_1CA13E: db $39, $28, $C8, $34, $1C ; りは,もと
#_1CA143: db $FD, $D6 ; write kanji - 来
#_1CA145: db $18 ; た
#_1CA146: db $FD, $20 ; write kanji - 方
#_1CA148: db $2B ; へ
#_1CA149: db $F8 ; cursor to row 2
#_1CA14A: db $30, $4A, $12, $17, $21, $CE, $C7 ; まっすぐに〜!
#_1CA151: db $F9 ; cursor to row 3
#_1CA152: db $1E, $09, $1D, $0F, $07, $02, $FF, $10 ; ごきげんよう⎵さ
#_1CA15A: db $07, $02, $20, $38, $CE, $C7 ; ようなら〜!
#_1CA160: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; さて,ニイさん続けまっか?
; ▶ 続ける
;   もうやめる
Message_0086:
#_1CA161: db $10, $1B, $C8, $71, $51, $10, $0F ; さて,ニイさん
#_1CA168: db $FD, $82 ; write kanji - 続
#_1CA16A: db $0B, $30, $4A, $08, $C6 ; けまっか?
#_1CA16F: db $F8 ; cursor to row 2
#_1CA170: db $FF, $FF, $E4, $FF ; ⎵⎵▶⎵
#_1CA174: db $FD, $82 ; write kanji - 続
#_1CA176: db $0B, $3A ; ける
#_1CA178: db $F9 ; cursor to row 3
#_1CA179: db $FF, $FF, $FF, $FF, $34, $02, $05, $33 ; ⎵⎵⎵⎵もうやめ
#_1CA181: db $3A ; る
#_1CA182: db $FE, $68 ; get player selection - choose 2 low
#_1CA184: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; －しあわせのいずみ－
; ルピ－を投げると,のぞみが
; かないます。
; ルピ－を投げますか?
; ▶ 投げる
;   やめておく
Message_0087:
#_1CA185: db $FF, $FF, $C9, $11, $00, $0D, $13, $24 ; ⎵⎵－しあわせの
#_1CA18D: db $01, $26, $31, $C9 ; いずみ－
#_1CA191: db $F8 ; cursor to row 2
#_1CA192: db $8A, $93, $C9, $0E ; ルピ－を
#_1CA196: db $FD, $FC ; write kanji - 投
#_1CA198: db $1D, $3A, $1C, $C8, $24, $2D, $31, $15 ; げると,のぞみが
#_1CA1A0: db $F9 ; cursor to row 3
#_1CA1A1: db $08, $20, $01, $30, $12, $CD ; かないます。
#_1CA1A7: db $FA ; wait for key
#_1CA1A8: db $F6 ; scroll text
#_1CA1A9: db $8A, $93, $C9, $0E ; ルピ－を
#_1CA1AD: db $FD, $FC ; write kanji - 投
#_1CA1AF: db $1D, $30, $12, $08, $C6 ; げますか?
#_1CA1B4: db $F6 ; scroll text
#_1CA1B5: db $FF, $FF, $E4, $FF ; ⎵⎵▶⎵
#_1CA1B9: db $FD, $FC ; write kanji - 投
#_1CA1BB: db $1D, $3A ; げる
#_1CA1BD: db $F6 ; scroll text
#_1CA1BE: db $FF, $FF, $FF, $FF, $05, $33, $1B, $04 ; ⎵⎵⎵⎵やめてお
#_1CA1C6: db $0A ; く
#_1CA1C7: db $FE, $68 ; get player selection - choose 2 low
#_1CA1C9: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 十字キ－で,選んで
; Yボタンで投げます。
Message_0088:
#_1CA1CA: db $FD, $7A ; write kanji - 十
#_1CA1CC: db $FD, $7B ; write kanji - 字
#_1CA1CE: db $59, $C9, $36, $C8 ; キ－で,
#_1CA1D2: db $FD, $81 ; write kanji - 選
#_1CA1D4: db $0F, $36 ; んで
#_1CA1D6: db $F8 ; cursor to row 2
#_1CA1D7: db $C2, $91, $68, $5F, $36 ; Yボタンで
#_1CA1DC: db $FD, $FC ; write kanji - 投
#_1CA1DE: db $1D, $30, $12, $CD ; げます。
#_1CA1E2: db $FE, $69 ; get player selection - item
#_1CA1E4: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ねえ,今これをおとしたでしょ
; ▶ う ん
;   ちがう
Message_0089:
#_1CA1E5: db $23, $03, $C8 ; ねえ,
#_1CA1E8: db $FD, $6A ; write kanji - 今
#_1CA1EA: db $0C, $3B, $0E, $04, $1C, $11, $18, $36 ; これをおとしたで
#_1CA1F2: db $11, $49 ; しょ
#_1CA1F4: db $F8 ; cursor to row 2
#_1CA1F5: db $FF, $FF, $E4, $FF, $02, $FF, $0F ; ⎵⎵▶⎵う⎵ん
#_1CA1FC: db $F9 ; cursor to row 3
#_1CA1FD: db $FF, $FF, $FF, $FF, $19, $15, $02 ; ⎵⎵⎵⎵ちがう
#_1CA204: db $FE, $68 ; get player selection - choose 2 low
#_1CA206: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 私は,しょうじきな人が好きよ
; だから,あなたには,もっと
; 良い物をプレゼントするね!
Message_008A:
#_1CA207: db $FD, $26 ; write kanji - 私
#_1CA209: db $28, $C8, $11, $49, $02, $25, $09, $20 ; は,しょうじきな
#_1CA211: db $FD, $38 ; write kanji - 人
#_1CA213: db $15 ; が
#_1CA214: db $FD, $6D ; write kanji - 好
#_1CA216: db $09, $07 ; きよ
#_1CA218: db $F8 ; cursor to row 2
#_1CA219: db $2E, $08, $38, $C8, $00, $20, $18, $21 ; だから,あなたに
#_1CA221: db $28, $C8, $34, $4A, $1C ; は,もっと
#_1CA226: db $F9 ; cursor to row 3
#_1CA227: db $FD, $32 ; write kanji - 良
#_1CA229: db $01 ; い
#_1CA22A: db $FD, $51 ; write kanji - 物
#_1CA22C: db $0E, $94, $8B, $77, $5F, $6C, $12, $3A ; をプレゼントする
#_1CA234: db $23, $C7 ; ね!
#_1CA236: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 本当に,これじゃないの?
; ▶ 本当にちがう
;   本当はそれ
Message_008B:
#_1CA237: db $FD, $24 ; write kanji - 本
#_1CA239: db $FD, $25 ; write kanji - 当
#_1CA23B: db $21, $C8, $0C, $3B, $25, $47, $20, $01 ; に,これじゃない
#_1CA243: db $24, $C6 ; の?
#_1CA245: db $F8 ; cursor to row 2
#_1CA246: db $FF, $FF, $E4, $FF ; ⎵⎵▶⎵
#_1CA24A: db $FD, $24 ; write kanji - 本
#_1CA24C: db $FD, $25 ; write kanji - 当
#_1CA24E: db $21, $19, $15, $02 ; にちがう
#_1CA252: db $F9 ; cursor to row 3
#_1CA253: db $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵
#_1CA257: db $FD, $24 ; write kanji - 本
#_1CA259: db $FD, $25 ; write kanji - 当
#_1CA25B: db $28, $14, $3B ; はそれ
#_1CA25E: db $FE, $68 ; get player selection - choose 2 low
#_1CA260: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; うそついちゃ ダメ ダメ!
; 持って帰りなさい!
Message_008C:
#_1CA261: db $02, $14, $1A, $01, $19, $47, $FF, $7E ; うそついちゃ⎵ダ
#_1CA269: db $83, $FF, $7E, $83, $C7 ; メ⎵ダメ!
#_1CA26E: db $F8 ; cursor to row 2
#_1CA26F: db $FD, $DB ; write kanji - 持
#_1CA271: db $4A, $1B ; って
#_1CA273: db $FD, $D7 ; write kanji - 帰
#_1CA275: db $39, $20, $10, $01, $C7 ; りなさい!
#_1CA27A: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 魔法のブ－メランを手に入れた
; すばやく とおくまでとばせる
; ようになった。
Message_008D:
#_1CA27B: db $FD, $2D ; write kanji - 魔
#_1CA27D: db $FD, $3C ; write kanji - 法
#_1CA27F: db $24, $8F, $C9, $83, $88, $5F, $0E ; のブ－メランを
#_1CA286: db $FD, $3E ; write kanji - 手
#_1CA288: db $21 ; に
#_1CA289: db $FD, $49 ; write kanji - 入
#_1CA28B: db $3B, $18 ; れた
#_1CA28D: db $F8 ; cursor to row 2
#_1CA28E: db $12, $3D, $05, $0A, $FF, $1C, $04, $0A ; すばやく⎵とおく
#_1CA296: db $30, $36, $1C, $3D, $13, $3A ; までとばせる
#_1CA29C: db $F9 ; cursor to row 3
#_1CA29D: db $07, $02, $21, $20, $4A, $18, $CD ; ようになった。
#_1CA2A4: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 盾が大きくなった。
; 火の玉くらいなら,へっちゃら
; だぞ!
Message_008E:
#_1CA2A5: db $FD, $1B ; write kanji - 盾
#_1CA2A7: db $15 ; が
#_1CA2A8: db $FD, $5F ; write kanji - 大
#_1CA2AA: db $09, $0A, $20, $4A, $18, $CD ; きくなった。
#_1CA2B0: db $F8 ; cursor to row 2
#_1CA2B1: db $FD, $CD ; write kanji - 火
#_1CA2B3: db $24 ; の
#_1CA2B4: db $FD, $D2 ; write kanji - 玉
#_1CA2B6: db $0A, $38, $01, $20, $38, $C8, $2B, $4A ; くらいなら,へっ
#_1CA2BE: db $19, $47, $38 ; ちゃら
#_1CA2C1: db $F9 ; cursor to row 3
#_1CA2C2: db $2E, $2D, $C7 ; だぞ!
#_1CA2C5: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おお,これがガノンにとどめを
; さす『銀の矢』だ!
Message_008F:
#_1CA2C6: db $04, $04, $C8, $0C, $3B, $15, $65, $74 ; おお,これがガノ
#_1CA2CE: db $5F, $21, $1C, $37, $33, $0E ; ンにとどめを
#_1CA2D4: db $F8 ; cursor to row 2
#_1CA2D5: db $10, $12, $C4 ; さす『
#_1CA2D8: db $FD, $DE ; write kanji - 銀
#_1CA2DA: db $24 ; の
#_1CA2DB: db $FD, $BB ; write kanji - 矢
#_1CA2DD: db $C5, $2E, $C7 ; 』だ!
#_1CA2E0: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ビンの中に,魔法のクスリが
; 入った。ちょっと とくをした
Message_0090:
#_1CA2E1: db $8E, $5F, $24 ; ビンの
#_1CA2E4: db $FD, $AE ; write kanji - 中
#_1CA2E6: db $21, $C8 ; に,
#_1CA2E8: db $FD, $2D ; write kanji - 魔
#_1CA2EA: db $FD, $3C ; write kanji - 法
#_1CA2EC: db $24, $5A, $62, $89, $15 ; のクスリが
#_1CA2F1: db $F8 ; cursor to row 2
#_1CA2F2: db $FD, $49 ; write kanji - 入
#_1CA2F4: db $4A, $18, $CD, $19, $49, $4A, $1C, $FF ; った。ちょっと⎵
#_1CA2FC: db $1C, $0A, $0E, $11, $18 ; とくをした
#_1CA301: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 剣がより強くなった。
; なにかあたたかい手ざわりが
; する。
Message_0091:
#_1CA302: db $FD, $1A ; write kanji - 剣
#_1CA304: db $15, $07, $39 ; がより
#_1CA307: db $FD, $FB ; write kanji - 強
#_1CA309: db $0A, $20, $4A, $18, $CD ; くなった。
#_1CA30E: db $F8 ; cursor to row 2
#_1CA30F: db $20, $21, $08, $00, $18, $18, $08, $01 ; なにかあたたかい
#_1CA317: db $FD, $3E ; write kanji - 手
#_1CA319: db $1F, $0D, $39, $15 ; ざわりが
#_1CA31D: db $F9 ; cursor to row 3
#_1CA31E: db $12, $3A, $CD ; する。
#_1CA321: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 幸せが[BCD][BCD]ルピ－ふえた。
; ぜんぶで[BCD][BCD]になった。
; またひとつ幸せになった。
Message_0092:
#_1CA322: db $FD, $4E ; write kanji - 幸
#_1CA324: db $13, $15 ; せが
#_1CA326: db $FE, $6C, $03 ; write decimal digit
#_1CA329: db $FE, $6C, $02 ; write decimal digit
#_1CA32C: db $8A, $93, $C9, $2A, $03, $18, $CD ; ルピ－ふえた。
#_1CA333: db $F8 ; cursor to row 2
#_1CA334: db $27, $0F, $3F, $36 ; ぜんぶで
#_1CA338: db $FE, $6C, $01 ; write decimal digit
#_1CA33B: db $FE, $6C, $00 ; write decimal digit
#_1CA33E: db $21, $20, $4A, $18, $CD ; になった。
#_1CA343: db $F9 ; cursor to row 3
#_1CA344: db $30, $18, $29, $1C, $1A ; またひとつ
#_1CA349: db $FD, $4E ; write kanji - 幸
#_1CA34B: db $13, $21, $20, $4A, $18, $CD ; せになった。
#_1CA351: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; あなたののぞみをかなえましょ
; ▶バクダンもっと持ちたい
;   矢をもっと持ちたい
Message_0093:
#_1CA352: db $00, $20, $18, $24, $24, $2D, $31, $0E ; あなたののぞみを
#_1CA35A: db $08, $20, $03, $30, $11, $49 ; かなえましょ
#_1CA360: db $F8 ; cursor to row 2
#_1CA361: db $FF, $FF, $E4, $8D, $5A, $7E, $5F, $34 ; ⎵⎵▶バクダンも
#_1CA369: db $4A, $1C ; っと
#_1CA36B: db $FD, $DB ; write kanji - 持
#_1CA36D: db $19, $18, $01 ; ちたい
#_1CA370: db $F9 ; cursor to row 3
#_1CA371: db $FF, $FF, $FF ; ⎵⎵⎵
#_1CA374: db $FD, $BB ; write kanji - 矢
#_1CA376: db $0E, $34, $4A, $1C ; をもっと
#_1CA37A: db $FD, $DB ; write kanji - 持
#_1CA37C: db $19, $18, $01 ; ちたい
#_1CA37F: db $FE, $68 ; get player selection - choose 2 low
#_1CA381: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; では,バクダンを[BCD][BCD]コ持てる
; ようにしましょう。
; 私があげられる小さな幸せです
Message_0094:
#_1CA382: db $36, $28, $C8, $8D, $5A, $7E, $5F, $0E ; では,バクダンを
#_1CA38A: db $FE, $6C, $01 ; write decimal digit
#_1CA38D: db $FE, $6C, $00 ; write decimal digit
#_1CA390: db $5C ; コ
#_1CA391: db $FD, $DB ; write kanji - 持
#_1CA393: db $1B, $3A ; てる
#_1CA395: db $F8 ; cursor to row 2
#_1CA396: db $07, $02, $21, $11, $30, $11, $49, $02 ; ようにしましょう
#_1CA39E: db $CD ; 。
#_1CA39F: db $F9 ; cursor to row 3
#_1CA3A0: db $FD, $26 ; write kanji - 私
#_1CA3A2: db $15, $00, $1D, $38, $3B, $3A ; があげられる
#_1CA3A8: db $FD, $FA ; write kanji - 小
#_1CA3AA: db $10, $20 ; さな
#_1CA3AC: db $FD, $4E ; write kanji - 幸
#_1CA3AE: db $13, $36, $12 ; せです
#_1CA3B1: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; では,矢を[BCD][BCD]本持てるように
; しましょう。
; 私があげられる小さな幸せです
Message_0095:
#_1CA3B2: db $36, $28, $C8 ; では,
#_1CA3B5: db $FD, $BB ; write kanji - 矢
#_1CA3B7: db $0E ; を
#_1CA3B8: db $FE, $6C, $01 ; write decimal digit
#_1CA3BB: db $FE, $6C, $00 ; write decimal digit
#_1CA3BE: db $FD, $24 ; write kanji - 本
#_1CA3C0: db $FD, $DB ; write kanji - 持
#_1CA3C2: db $1B, $3A, $07, $02, $21 ; てるように
#_1CA3C7: db $F8 ; cursor to row 2
#_1CA3C8: db $11, $30, $11, $49, $02, $CD ; しましょう。
#_1CA3CE: db $F9 ; cursor to row 3
#_1CA3CF: db $FD, $26 ; write kanji - 私
#_1CA3D1: db $15, $00, $1D, $38, $3B, $3A ; があげられる
#_1CA3D7: db $FD, $FA ; write kanji - 小
#_1CA3D9: db $10, $20 ; さな
#_1CA3DB: db $FD, $4E ; write kanji - 幸
#_1CA3DD: db $13, $36, $12 ; せです
#_1CA3E0: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 悪いけど,これいじょうあなた
; の力になれないわ⋯。
; ごめんなさい。
; かわりに,私のともだちをしょ
; うかいするわ。 願いのタキに
; いるカワイイ子よ!
; ルピ－は,おかえしします。
; あなたが,幸せでありますよう
; に⋯。
Message_0096:
#_1CA3E1: db $FD, $85 ; write kanji - 悪
#_1CA3E3: db $01, $0B, $37, $C8, $0C, $3B, $01, $25 ; いけど,これいじ
#_1CA3EB: db $49, $02, $00, $20, $18 ; ょうあなた
#_1CA3F0: db $F8 ; cursor to row 2
#_1CA3F1: db $24 ; の
#_1CA3F2: db $FD, $99 ; write kanji - 力
#_1CA3F4: db $21, $20, $3B, $20, $01, $0D, $CC, $CD ; になれないわ⋯。
#_1CA3FC: db $F9 ; cursor to row 3
#_1CA3FD: db $1E, $33, $0F, $20, $10, $01, $CD ; ごめんなさい。
#_1CA404: db $FA ; wait for key
#_1CA405: db $F6 ; scroll text
#_1CA406: db $08, $0D, $39, $21, $C8 ; かわりに,
#_1CA40B: db $FD, $26 ; write kanji - 私
#_1CA40D: db $24, $1C, $34, $2E, $19, $0E, $11, $49 ; のともだちをしょ
#_1CA415: db $F6 ; scroll text
#_1CA416: db $02, $08, $01, $12, $3A, $0D, $CD, $FF ; うかいするわ。⎵
#_1CA41E: db $FD, $0A ; write kanji - 願
#_1CA420: db $01, $24, $68, $59, $21 ; いのタキに
#_1CA425: db $F6 ; scroll text
#_1CA426: db $01, $3A, $58, $5D, $51, $51 ; いるカワイイ
#_1CA42C: db $FD, $11 ; write kanji - 子
#_1CA42E: db $07, $C7 ; よ!
#_1CA430: db $FA ; wait for key
#_1CA431: db $F6 ; scroll text
#_1CA432: db $8A, $93, $C9, $28, $C8, $04, $08, $03 ; ルピ－は,おかえ
#_1CA43A: db $11, $11, $30, $12, $CD ; しします。
#_1CA43F: db $F6 ; scroll text
#_1CA440: db $00, $20, $18, $15, $C8 ; あなたが,
#_1CA445: db $FD, $4E ; write kanji - 幸
#_1CA447: db $13, $36, $00, $39, $30, $12, $07, $02 ; せでありますよう
#_1CA44F: db $F6 ; scroll text
#_1CA450: db $21, $CC, $CD ; に⋯。
#_1CA453: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; あぁ 足もとに気を付けなされ
; 穴が開いておるでな。
; そこを右へ行ってくださらんか
; お若いの,あんたもやっぱり
; 『黄金の力』を求めて 山へ
; 行かれるのか?
; この先は魔物の山じゃ。
; たくさんの男達が『黄金の力』
; を求め この山で消えていった
; 悪いことは言わん。あんたも
; 深入りせんことじゃて⋯。
Message_0097:
#_1CA454: db $00, $4B, $FF ; あぁ⎵
#_1CA457: db $FD, $96 ; write kanji - 足
#_1CA459: db $34, $1C, $21 ; もとに
#_1CA45C: db $FD, $37 ; write kanji - 気
#_1CA45E: db $0E ; を
#_1CA45F: db $FD, $52 ; write kanji - 付
#_1CA461: db $0B, $20, $10, $3B ; けなされ
#_1CA465: db $F8 ; cursor to row 2
#_1CA466: db $FD, $5C ; write kanji - 穴
#_1CA468: db $15 ; が
#_1CA469: db $FD, $4B ; write kanji - 開
#_1CA46B: db $01, $1B, $04, $3A, $36, $20, $CD ; いておるでな。
#_1CA472: db $F9 ; cursor to row 3
#_1CA473: db $14, $0C, $0E ; そこを
#_1CA476: db $FD, $B1 ; write kanji - 右
#_1CA478: db $2B ; へ
#_1CA479: db $FD, $02 ; write kanji - 行
#_1CA47B: db $4A, $1B, $0A, $2E, $10, $38, $0F, $08 ; ってくださらんか
#_1CA483: db $FA ; wait for key
#_1CA484: db $F6 ; scroll text
#_1CA485: db $04 ; お
#_1CA486: db $FD, $67 ; write kanji - 若
#_1CA488: db $01, $24, $C8, $00, $0F, $18, $34, $05 ; いの,あんたもや
#_1CA490: db $4A, $42, $39 ; っぱり
#_1CA493: db $F6 ; scroll text
#_1CA494: db $C4 ; 『
#_1CA495: db $FD, $98 ; write kanji - 黄
#_1CA497: db $FD, $43 ; write kanji - 金
#_1CA499: db $24 ; の
#_1CA49A: db $FD, $99 ; write kanji - 力
#_1CA49C: db $C5, $0E ; 』を
#_1CA49E: db $FD, $9B ; write kanji - 求
#_1CA4A0: db $33, $1B, $FF ; めて⎵
#_1CA4A3: db $FD, $94 ; write kanji - 山
#_1CA4A5: db $2B ; へ
#_1CA4A6: db $F6 ; scroll text
#_1CA4A7: db $FD, $02 ; write kanji - 行
#_1CA4A9: db $08, $3B, $3A, $24, $08, $C6 ; かれるのか?
#_1CA4AF: db $FA ; wait for key
#_1CA4B0: db $F6 ; scroll text
#_1CA4B1: db $0C, $24 ; この
#_1CA4B3: db $FD, $9C ; write kanji - 先
#_1CA4B5: db $28 ; は
#_1CA4B6: db $FD, $2D ; write kanji - 魔
#_1CA4B8: db $FD, $51 ; write kanji - 物
#_1CA4BA: db $24 ; の
#_1CA4BB: db $FD, $94 ; write kanji - 山
#_1CA4BD: db $25, $47, $CD ; じゃ。
#_1CA4C0: db $F6 ; scroll text
#_1CA4C1: db $18, $0A, $10, $0F, $24 ; たくさんの
#_1CA4C6: db $FD, $5E ; write kanji - 男
#_1CA4C8: db $FD, $13 ; write kanji - 達
#_1CA4CA: db $15, $C4 ; が『
#_1CA4CC: db $FD, $98 ; write kanji - 黄
#_1CA4CE: db $FD, $43 ; write kanji - 金
#_1CA4D0: db $24 ; の
#_1CA4D1: db $FD, $99 ; write kanji - 力
#_1CA4D3: db $C5 ; 』
#_1CA4D4: db $F6 ; scroll text
#_1CA4D5: db $0E ; を
#_1CA4D6: db $FD, $9B ; write kanji - 求
#_1CA4D8: db $33, $FF, $0C, $24 ; め⎵この
#_1CA4DC: db $FD, $94 ; write kanji - 山
#_1CA4DE: db $36 ; で
#_1CA4DF: db $FD, $9D ; write kanji - 消
#_1CA4E1: db $03, $1B, $01, $4A, $18 ; えていった
#_1CA4E6: db $FA ; wait for key
#_1CA4E7: db $F6 ; scroll text
#_1CA4E8: db $F6 ; scroll text
#_1CA4E9: db $FD, $85 ; write kanji - 悪
#_1CA4EB: db $01, $0C, $1C, $28 ; いことは
#_1CA4EF: db $FD, $16 ; write kanji - 言
#_1CA4F1: db $0D, $0F, $CD, $00, $0F, $18, $34 ; わん。あんたも
#_1CA4F8: db $F6 ; scroll text
#_1CA4F9: db $FD, $64 ; write kanji - 深
#_1CA4FB: db $FD, $49 ; write kanji - 入
#_1CA4FD: db $39, $13, $0F, $0C, $1C, $25, $47, $1B ; りせんことじゃて
#_1CA505: db $CC, $CD ; ⋯。
#_1CA507: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おぉ,そのツボの中には
; ハ－トが入っとるはずじゃ。
Message_0098:
#_1CA508: db $04, $4F, $C8, $14, $24, $6A, $91, $24 ; おぉ,そのツボの
#_1CA510: db $FD, $AE ; write kanji - 中
#_1CA512: db $21, $28 ; には
#_1CA514: db $F8 ; cursor to row 2
#_1CA515: db $78, $C9, $6C, $15 ; ハ－トが
#_1CA519: db $FD, $49 ; write kanji - 入
#_1CA51B: db $4A, $1C, $3A, $28, $26, $25, $47, $CD ; っとるはずじゃ。
#_1CA523: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おぉ ここを右じゃ ⋯ ⋯
; ワシにもなあ,あんたくらいの
; まご娘がいてのう⋯。
; 国王に お城に連れて行かれて
; 戻ってこぬ⋯ イケニエなど
; きっと司祭のたくらみじゃ!
; 魔法陣を封じた7賢者の力を
; うけつぐ娘たちを捕えて,その
; 力をりようするつもりじゃ。
Message_0099:
#_1CA524: db $04, $4F, $FF, $0C, $0C, $0E ; おぉ⎵ここを
#_1CA52A: db $FD, $B1 ; write kanji - 右
#_1CA52C: db $25, $47, $FF, $CC, $FF, $CC ; じゃ⎵⋯⎵⋯
#_1CA532: db $F8 ; cursor to row 2
#_1CA533: db $5D, $61, $21, $34, $20, $00, $C8, $00 ; ワシにもなあ,あ
#_1CA53B: db $0F, $18, $0A, $38, $01, $24 ; んたくらいの
#_1CA541: db $F9 ; cursor to row 3
#_1CA542: db $30, $1E ; まご
#_1CA544: db $FD, $00 ; write kanji - 娘
#_1CA546: db $15, $01, $1B, $24, $02, $CC, $CD ; がいてのう⋯。
#_1CA54D: db $FA ; wait for key
#_1CA54E: db $F6 ; scroll text
#_1CA54F: db $FD, $2B ; write kanji - 国
#_1CA551: db $FD, $44 ; write kanji - 王
#_1CA553: db $21, $FF, $04 ; に⎵お
#_1CA556: db $FD, $01 ; write kanji - 城
#_1CA558: db $21 ; に
#_1CA559: db $FD, $40 ; write kanji - 連
#_1CA55B: db $3B, $1B ; れて
#_1CA55D: db $FD, $02 ; write kanji - 行
#_1CA55F: db $08, $3B, $1B ; かれて
#_1CA562: db $F6 ; scroll text
#_1CA563: db $FD, $0F ; write kanji - 戻
#_1CA565: db $4A, $1B, $0C, $22, $CC, $FF, $51, $5B ; ってこぬ⋯⎵イケ
#_1CA56D: db $71, $53, $20, $37 ; ニエなど
#_1CA571: db $F6 ; scroll text
#_1CA572: db $09, $4A, $1C ; きっと
#_1CA575: db $FD, $0D ; write kanji - 司
#_1CA577: db $FD, $17 ; write kanji - 祭
#_1CA579: db $24, $18, $0A, $38, $31, $25, $47, $C7 ; のたくらみじゃ!
#_1CA581: db $FA ; wait for key
#_1CA582: db $F6 ; scroll text
#_1CA583: db $FD, $2D ; write kanji - 魔
#_1CA585: db $FD, $3C ; write kanji - 法
#_1CA587: db $FD, $C5 ; write kanji - 陣
#_1CA589: db $0E ; を
#_1CA58A: db $FD, $9E ; write kanji - 封
#_1CA58C: db $25, $18, $A7 ; じた7
#_1CA58F: db $FD, $C4 ; write kanji - 賢
#_1CA591: db $FD, $1E ; write kanji - 者
#_1CA593: db $24 ; の
#_1CA594: db $FD, $99 ; write kanji - 力
#_1CA596: db $0E ; を
#_1CA597: db $F6 ; scroll text
#_1CA598: db $02, $0B, $1A, $17 ; うけつぐ
#_1CA59C: db $FD, $00 ; write kanji - 娘
#_1CA59E: db $18, $19, $0E ; たちを
#_1CA5A1: db $FD, $9F ; write kanji - 捕
#_1CA5A3: db $03, $1B, $C8, $14, $24 ; えて,その
#_1CA5A8: db $F6 ; scroll text
#_1CA5A9: db $FD, $99 ; write kanji - 力
#_1CA5AB: db $0E, $39, $07, $02, $12, $3A, $1A, $34 ; をりようするつも
#_1CA5B3: db $39, $25, $47, $CD ; りじゃ。
#_1CA5B7: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; どなたか知らぬが,山へ行くな
; ら,連れて行ってくれぬか。
; ランプをなくしてしもうての。
Message_009A:
#_1CA5B8: db $37, $20, $18, $08 ; どなたか
#_1CA5BC: db $FD, $93 ; write kanji - 知
#_1CA5BE: db $38, $22, $15, $C8 ; らぬが,
#_1CA5C2: db $FD, $94 ; write kanji - 山
#_1CA5C4: db $2B ; へ
#_1CA5C5: db $FD, $02 ; write kanji - 行
#_1CA5C7: db $0A, $20 ; くな
#_1CA5C9: db $F8 ; cursor to row 2
#_1CA5CA: db $38, $C8 ; ら,
#_1CA5CC: db $FD, $40 ; write kanji - 連
#_1CA5CE: db $3B, $1B ; れて
#_1CA5D0: db $FD, $02 ; write kanji - 行
#_1CA5D2: db $4A, $1B, $0A, $3B, $22, $08, $CD ; ってくれぬか。
#_1CA5D9: db $F9 ; cursor to row 3
#_1CA5DA: db $88, $5F, $94, $0E, $20, $0A, $11, $1B ; ランプをなくして
#_1CA5E2: db $11, $34, $02, $1B, $24, $CD ; しもうての。
#_1CA5E8: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; イケニエにされた娘は,今も
; どこかで生きておる。それを
; 救う『勇者』が現れる時を
; ワシは信じてまっておる⋯。
; おっ,つい話こんでしもうたの
; 年よりに色々と ありがとう。
; おお,そうじゃ。もし魔法陣に
; 迷いこんだ時は,このカガミに
; あんたの 姿をうつしなさい。
Message_009B:
#_1CA5E9: db $51, $5B, $71, $53, $21, $10, $3B, $18 ; イケニエにされた
#_1CA5F1: db $FD, $00 ; write kanji - 娘
#_1CA5F3: db $28, $C8 ; は,
#_1CA5F5: db $FD, $6A ; write kanji - 今
#_1CA5F7: db $34 ; も
#_1CA5F8: db $F8 ; cursor to row 2
#_1CA5F9: db $37, $0C, $08, $36 ; どこかで
#_1CA5FD: db $FD, $B4 ; write kanji - 生
#_1CA5FF: db $09, $1B, $04, $3A, $CD, $14, $3B, $0E ; きておる。それを
#_1CA607: db $F9 ; cursor to row 3
#_1CA608: db $FD, $28 ; write kanji - 救
#_1CA60A: db $02, $C4 ; う『
#_1CA60C: db $FD, $A0 ; write kanji - 勇
#_1CA60E: db $FD, $1E ; write kanji - 者
#_1CA610: db $C5, $15 ; 』が
#_1CA612: db $FD, $BC ; write kanji - 現
#_1CA614: db $3B, $3A ; れる
#_1CA616: db $FD, $88 ; write kanji - 時
#_1CA618: db $0E ; を
#_1CA619: db $FA ; wait for key
#_1CA61A: db $F6 ; scroll text
#_1CA61B: db $5D, $61, $28 ; ワシは
#_1CA61E: db $FD, $45 ; write kanji - 信
#_1CA620: db $25, $1B, $30, $4A, $1B, $04, $3A, $CC ; じてまっておる⋯
#_1CA628: db $CD ; 。
#_1CA629: db $F6 ; scroll text
#_1CA62A: db $04, $4A, $C8, $1A, $01 ; おっ,つい
#_1CA62F: db $FD, $A3 ; write kanji - 話
#_1CA631: db $0C, $0F, $36, $11, $34, $02, $18, $24 ; こんでしもうたの
#_1CA639: db $F6 ; scroll text
#_1CA63A: db $FD, $A1 ; write kanji - 年
#_1CA63C: db $07, $39, $21 ; よりに
#_1CA63F: db $FD, $A4 ; write kanji - 色
#_1CA641: db $FD, $A5 ; write kanji - 々
#_1CA643: db $1C, $FF, $00, $39, $15, $1C, $02, $CD ; と⎵ありがとう。
#_1CA64B: db $FA ; wait for key
#_1CA64C: db $F6 ; scroll text
#_1CA64D: db $04, $04, $C8, $14, $02, $25, $47, $CD ; おお,そうじゃ。
#_1CA655: db $34, $11 ; もし
#_1CA657: db $FD, $2D ; write kanji - 魔
#_1CA659: db $FD, $3C ; write kanji - 法
#_1CA65B: db $FD, $C5 ; write kanji - 陣
#_1CA65D: db $21 ; に
#_1CA65E: db $F6 ; scroll text
#_1CA65F: db $FD, $70 ; write kanji - 迷
#_1CA661: db $01, $0C, $0F, $2E ; いこんだ
#_1CA665: db $FD, $88 ; write kanji - 時
#_1CA667: db $28, $C8, $0C, $24, $58, $65, $81, $21 ; は,このカガミに
#_1CA66F: db $F6 ; scroll text
#_1CA670: db $00, $0F, $18, $24, $FF ; あんたの⎵
#_1CA675: db $FD, $A2 ; write kanji - 姿
#_1CA677: db $0E, $02, $1A, $11, $20, $10, $01, $CD ; をうつしなさい。
#_1CA67F: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 王様は きっと司祭にだまされ
; ておる。 司祭は魔の力の通路
; を開こうとしておるのじゃ。
; 山の上の塔には,ム－ンパ－ル
; と呼ばれる玉がある。必ず見つ
; けなされ。
; わしが,あんたにしてやれるの
; は,つかれをいやす事くらい⋯
; いつでも来なされ。
Message_009C:
#_1CA680: db $FD, $44 ; write kanji - 王
#_1CA682: db $FD, $10 ; write kanji - 様
#_1CA684: db $28, $FF, $09, $4A, $1C ; は⎵きっと
#_1CA689: db $FD, $0D ; write kanji - 司
#_1CA68B: db $FD, $17 ; write kanji - 祭
#_1CA68D: db $21, $2E, $30, $10, $3B ; にだまされ
#_1CA692: db $F8 ; cursor to row 2
#_1CA693: db $1B, $04, $3A, $CD, $FF ; ておる。⎵
#_1CA698: db $FD, $0D ; write kanji - 司
#_1CA69A: db $FD, $17 ; write kanji - 祭
#_1CA69C: db $28 ; は
#_1CA69D: db $FD, $2D ; write kanji - 魔
#_1CA69F: db $24 ; の
#_1CA6A0: db $FD, $99 ; write kanji - 力
#_1CA6A2: db $24 ; の
#_1CA6A3: db $FD, $09 ; write kanji - 通
#_1CA6A5: db $FD, $B6 ; write kanji - 路
#_1CA6A7: db $F9 ; cursor to row 3
#_1CA6A8: db $0E ; を
#_1CA6A9: db $FD, $4B ; write kanji - 開
#_1CA6AB: db $0C, $02, $1C, $11, $1B, $04, $3A, $24 ; こうとしておるの
#_1CA6B3: db $25, $47, $CD ; じゃ。
#_1CA6B6: db $FA ; wait for key
#_1CA6B7: db $F6 ; scroll text
#_1CA6B8: db $FD, $94 ; write kanji - 山
#_1CA6BA: db $24 ; の
#_1CA6BB: db $FD, $72 ; write kanji - 上
#_1CA6BD: db $24 ; の
#_1CA6BE: db $FD, $D5 ; write kanji - 塔
#_1CA6C0: db $21, $28, $C8, $82, $C9, $5F, $92, $C9 ; には,ム－ンパ－
#_1CA6C8: db $8A ; ル
#_1CA6C9: db $F6 ; scroll text
#_1CA6CA: db $1C ; と
#_1CA6CB: db $FD, $50 ; write kanji - 呼
#_1CA6CD: db $3D, $3B, $3A ; ばれる
#_1CA6D0: db $FD, $D2 ; write kanji - 玉
#_1CA6D2: db $15, $00, $3A, $CD ; がある。
#_1CA6D6: db $FD, $30 ; write kanji - 必
#_1CA6D8: db $26 ; ず
#_1CA6D9: db $FD, $4C ; write kanji - 見
#_1CA6DB: db $1A ; つ
#_1CA6DC: db $F6 ; scroll text
#_1CA6DD: db $0B, $20, $10, $3B, $CD ; けなされ。
#_1CA6E2: db $FA ; wait for key
#_1CA6E3: db $F6 ; scroll text
#_1CA6E4: db $0D, $11, $15, $C8, $00, $0F, $18, $21 ; わしが,あんたに
#_1CA6EC: db $11, $1B, $05, $3B, $3A, $24 ; してやれるの
#_1CA6F2: db $F6 ; scroll text
#_1CA6F3: db $28, $C8, $1A, $08, $3B, $0E, $01, $05 ; は,つかれをいや
#_1CA6FB: db $12 ; す
#_1CA6FC: db $FD, $22 ; write kanji - 事
#_1CA6FE: db $0A, $38, $01, $CC ; くらい⋯
#_1CA702: db $F6 ; scroll text
#_1CA703: db $01, $1A, $36, $34 ; いつでも
#_1CA707: db $FD, $D6 ; write kanji - 来
#_1CA709: db $20, $10, $3B, $CD ; なされ。
#_1CA70D: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ム－ンパ－ルは聖地へおもむく
; 勇者のオマモリじゃ。人の姿を
; かえる魔力から守ってくれる。
; それを手に入れたあんたこそ
; ワシのまっておった勇者じゃな
; どうか娘を助けてやってくれ!
; わしが,あんたにしてやれるの
; は,つかれをいやす事くらい⋯
; いつでも来なされ。
Message_009D:
#_1CA70E: db $F7 ; cursor to row 1
#_1CA70F: db $82, $C9, $5F, $92, $C9, $8A, $28 ; ム－ンパ－ルは
#_1CA716: db $FD, $F6 ; write kanji - 聖
#_1CA718: db $FD, $33 ; write kanji - 地
#_1CA71A: db $2B, $04, $34, $32, $0A ; へおもむく
#_1CA71F: db $F8 ; cursor to row 2
#_1CA720: db $FD, $A0 ; write kanji - 勇
#_1CA722: db $FD, $1E ; write kanji - 者
#_1CA724: db $24, $54, $80, $84, $89, $25, $47, $CD ; のオマモリじゃ。
#_1CA72C: db $FD, $38 ; write kanji - 人
#_1CA72E: db $24 ; の
#_1CA72F: db $FD, $A2 ; write kanji - 姿
#_1CA731: db $0E ; を
#_1CA732: db $F9 ; cursor to row 3
#_1CA733: db $08, $03, $3A ; かえる
#_1CA736: db $FD, $2D ; write kanji - 魔
#_1CA738: db $FD, $99 ; write kanji - 力
#_1CA73A: db $08, $38 ; から
#_1CA73C: db $FD, $91 ; write kanji - 守
#_1CA73E: db $4A, $1B, $0A, $3B, $3A, $CD ; ってくれる。
#_1CA744: db $FA ; wait for key
#_1CA745: db $F6 ; scroll text
#_1CA746: db $14, $3B, $0E ; それを
#_1CA749: db $FD, $3E ; write kanji - 手
#_1CA74B: db $21 ; に
#_1CA74C: db $FD, $49 ; write kanji - 入
#_1CA74E: db $3B, $18, $00, $0F, $18, $0C, $14 ; れたあんたこそ
#_1CA755: db $F6 ; scroll text
#_1CA756: db $5D, $61, $24, $30, $4A, $1B, $04, $4A ; ワシのまっておっ
#_1CA75E: db $18 ; た
#_1CA75F: db $FD, $A0 ; write kanji - 勇
#_1CA761: db $FD, $1E ; write kanji - 者
#_1CA763: db $25, $47, $20 ; じゃな
#_1CA766: db $F6 ; scroll text
#_1CA767: db $37, $02, $08 ; どうか
#_1CA76A: db $FD, $00 ; write kanji - 娘
#_1CA76C: db $0E ; を
#_1CA76D: db $FD, $CA ; write kanji - 助
#_1CA76F: db $0B, $1B, $05, $4A, $1B, $0A, $3B, $C7 ; けてやってくれ!
#_1CA777: db $FA ; wait for key
#_1CA778: db $F6 ; scroll text
#_1CA779: db $0D, $11, $15, $C8, $00, $0F, $18, $21 ; わしが,あんたに
#_1CA781: db $11, $1B, $05, $3B, $3A, $24 ; してやれるの
#_1CA787: db $F6 ; scroll text
#_1CA788: db $28, $C8, $1A, $08, $3B, $0E, $01, $05 ; は,つかれをいや
#_1CA790: db $12 ; す
#_1CA791: db $FD, $22 ; write kanji - 事
#_1CA793: db $0A, $38, $01, $CC ; くらい⋯
#_1CA797: db $F6 ; scroll text
#_1CA798: db $01, $1A, $36, $34 ; いつでも
#_1CA79C: db $FD, $D6 ; write kanji - 来
#_1CA79E: db $20, $10, $3B, $CD ; なされ。
#_1CA7A2: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おお,[LINK]か。どうやら
; 司祭によって城のあたりで,
; 2つの世界がつながった様じゃ
; 闇世界へ向かうのならば,城へ
; 行きなされ。
; わしが,あんたにしてやれるの
; は,つかれをいやす事くらい⋯
; いつでも来なされ。
Message_009E:
#_1CA7A3: db $04, $04, $C8 ; おお,
#_1CA7A6: db $FE, $6A ; write player name
#_1CA7A8: db $08, $CD, $37, $02, $05, $38 ; か。どうやら
#_1CA7AE: db $F8 ; cursor to row 2
#_1CA7AF: db $FD, $0D ; write kanji - 司
#_1CA7B1: db $FD, $17 ; write kanji - 祭
#_1CA7B3: db $21, $07, $4A, $1B ; によって
#_1CA7B7: db $FD, $01 ; write kanji - 城
#_1CA7B9: db $24, $00, $18, $39, $36, $C8 ; のあたりで,
#_1CA7BF: db $F9 ; cursor to row 3
#_1CA7C0: db $A2, $1A, $24 ; 2つの
#_1CA7C3: db $FD, $E8 ; write kanji - 世
#_1CA7C5: db $FD, $E9 ; write kanji - 界
#_1CA7C7: db $15, $1A, $20, $15, $4A, $18 ; がつながった
#_1CA7CD: db $FD, $10 ; write kanji - 様
#_1CA7CF: db $25, $47 ; じゃ
#_1CA7D1: db $FA ; wait for key
#_1CA7D2: db $F6 ; scroll text
#_1CA7D3: db $FD, $57 ; write kanji - 闇
#_1CA7D5: db $FD, $E8 ; write kanji - 世
#_1CA7D7: db $FD, $E9 ; write kanji - 界
#_1CA7D9: db $2B ; へ
#_1CA7DA: db $FD, $86 ; write kanji - 向
#_1CA7DC: db $08, $02, $24, $20, $38, $3D, $C8 ; かうのならば,
#_1CA7E3: db $FD, $01 ; write kanji - 城
#_1CA7E5: db $2B ; へ
#_1CA7E6: db $F6 ; scroll text
#_1CA7E7: db $FD, $02 ; write kanji - 行
#_1CA7E9: db $09, $20, $10, $3B, $CD ; きなされ。
#_1CA7EE: db $F6 ; scroll text
#_1CA7EF: db $FA ; wait for key
#_1CA7F0: db $F6 ; scroll text
#_1CA7F1: db $0D, $11, $15, $C8, $00, $0F, $18, $21 ; わしが,あんたに
#_1CA7F9: db $11, $1B, $05, $3B, $3A, $24 ; してやれるの
#_1CA7FF: db $F6 ; scroll text
#_1CA800: db $28, $C8, $1A, $08, $3B, $0E, $01, $05 ; は,つかれをいや
#_1CA808: db $12 ; す
#_1CA809: db $FD, $22 ; write kanji - 事
#_1CA80B: db $0A, $38, $01, $CC ; くらい⋯
#_1CA80F: db $F6 ; scroll text
#_1CA810: db $01, $1A, $36, $34 ; いつでも
#_1CA814: db $FD, $D6 ; write kanji - 来
#_1CA816: db $20, $10, $3B, $CD ; なされ。
#_1CA81A: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ⋯ むにゃ わしのむすこは
; フエの好きな子じゃったが
; 『黄金の力』を探しに行った
; きり帰ってこん ⋯ ⋯
; どこで,どうしているのやら⋯
; ⋯ ぐう ぐう〜 ぐう〜
Message_009F:
#_1CA81B: db $FF, $CC, $FF, $32, $21, $47, $FF, $0D ; ⎵⋯⎵むにゃ⎵わ
#_1CA823: db $11, $24, $32, $12, $0C, $28 ; しのむすこは
#_1CA829: db $F8 ; cursor to row 2
#_1CA82A: db $7A, $53, $24 ; フエの
#_1CA82D: db $FD, $6D ; write kanji - 好
#_1CA82F: db $09, $20 ; きな
#_1CA831: db $FD, $11 ; write kanji - 子
#_1CA833: db $25, $47, $4A, $18, $15 ; じゃったが
#_1CA838: db $F9 ; cursor to row 3
#_1CA839: db $C4 ; 『
#_1CA83A: db $FD, $98 ; write kanji - 黄
#_1CA83C: db $FD, $43 ; write kanji - 金
#_1CA83E: db $24 ; の
#_1CA83F: db $FD, $99 ; write kanji - 力
#_1CA841: db $C5, $0E ; 』を
#_1CA843: db $FD, $69 ; write kanji - 探
#_1CA845: db $11, $21 ; しに
#_1CA847: db $FD, $02 ; write kanji - 行
#_1CA849: db $4A, $18 ; った
#_1CA84B: db $FA ; wait for key
#_1CA84C: db $F6 ; scroll text
#_1CA84D: db $09, $39 ; きり
#_1CA84F: db $FD, $D7 ; write kanji - 帰
#_1CA851: db $4A, $1B, $0C, $0F, $FF, $CC, $FF, $CC ; ってこん⎵⋯⎵⋯
#_1CA859: db $F6 ; scroll text
#_1CA85A: db $37, $0C, $36, $C8, $37, $02, $11, $1B ; どこで,どうして
#_1CA862: db $01, $3A, $24, $05, $38, $CC ; いるのやら⋯
#_1CA868: db $F6 ; scroll text
#_1CA869: db $CC, $FF, $17, $02, $FF, $17, $02, $CE ; ⋯⎵ぐう⎵ぐう〜
#_1CA871: db $FF, $17, $02, $CE ; ⎵ぐう〜
#_1CA875: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ⋯ むにゃ ⋯ こ,これは
; むすこのオカリナ⋯!
; むすこに会いなさったのか!
; どこにおりますか,ゲンキでし
; たか⋯ ⋯ ⋯ ⋯
; そうですか⋯ いや,何も言い
; なさらんでも,そのカオ見れば
; わかりますですじゃ。
; そのオカリナは,あんたが持っ
; ていて下さらんか⋯。
; それで,むすこのかわりに,
; 村のトリにオカリナの音色を
; きかせてやって下され⋯。
; どうか,お願いですじゃ。
; むすこも,よろこぶでしょう⋯
; ⋯ ただ,もう－度だけ,
; むすこに会いたかった⋯。
Message_00A0:
#_1CA876: db $FF, $CC, $FF, $32, $21, $47, $FF, $CC ; ⎵⋯⎵むにゃ⎵⋯
#_1CA87E: db $FF, $0C, $C8, $0C, $3B, $28 ; ⎵こ,これは
#_1CA884: db $F8 ; cursor to row 2
#_1CA885: db $32, $12, $0C, $24, $54, $58, $89, $70 ; むすこのオカリナ
#_1CA88D: db $CC, $C7 ; ⋯!
#_1CA88F: db $F9 ; cursor to row 3
#_1CA890: db $32, $12, $0C, $21 ; むすこに
#_1CA894: db $FD, $04 ; write kanji - 会
#_1CA896: db $01, $20, $10, $4A, $18, $24, $08, $C7 ; いなさったのか!
#_1CA89E: db $FA ; wait for key
#_1CA89F: db $F6 ; scroll text
#_1CA8A0: db $37, $0C, $21, $04, $39, $30, $12, $08 ; どこにおりますか
#_1CA8A8: db $C8, $6D, $5F, $59, $36, $11 ; ,ゲンキでし
#_1CA8AE: db $F6 ; scroll text
#_1CA8AF: db $18, $08, $CC, $FF, $CC, $FF, $CC, $FF ; たか⋯⎵⋯⎵⋯⎵
#_1CA8B7: db $CC ; ⋯
#_1CA8B8: db $F6 ; scroll text
#_1CA8B9: db $FA ; wait for key
#_1CA8BA: db $F6 ; scroll text
#_1CA8BB: db $14, $02, $36, $12, $08, $CC, $FF, $01 ; そうですか⋯⎵い
#_1CA8C3: db $05, $C8 ; や,
#_1CA8C5: db $FD, $8B ; write kanji - 何
#_1CA8C7: db $34 ; も
#_1CA8C8: db $FD, $16 ; write kanji - 言
#_1CA8CA: db $01 ; い
#_1CA8CB: db $F6 ; scroll text
#_1CA8CC: db $20, $10, $38, $0F, $36, $34, $C8, $14 ; なさらんでも,そ
#_1CA8D4: db $24, $58, $54 ; のカオ
#_1CA8D7: db $FD, $4C ; write kanji - 見
#_1CA8D9: db $3B, $3D ; れば
#_1CA8DB: db $F6 ; scroll text
#_1CA8DC: db $0D, $08, $39, $30, $12, $36, $12, $25 ; わかりますですじ
#_1CA8E4: db $47, $CD ; ゃ。
#_1CA8E6: db $FA ; wait for key
#_1CA8E7: db $F6 ; scroll text
#_1CA8E8: db $14, $24, $54, $58, $89, $70, $28, $C8 ; そのオカリナは,
#_1CA8F0: db $00, $0F, $18, $15 ; あんたが
#_1CA8F4: db $FD, $DB ; write kanji - 持
#_1CA8F6: db $4A ; っ
#_1CA8F7: db $F6 ; scroll text
#_1CA8F8: db $1B, $01, $1B ; ていて
#_1CA8FB: db $FD, $61 ; write kanji - 下
#_1CA8FD: db $10, $38, $0F, $08, $CC, $CD ; さらんか⋯。
#_1CA903: db $F6 ; scroll text
#_1CA904: db $14, $3B, $36, $C8, $32, $12, $0C, $24 ; それで,むすこの
#_1CA90C: db $08, $0D, $39, $21, $C8 ; かわりに,
#_1CA911: db $FA ; wait for key
#_1CA912: db $F6 ; scroll text
#_1CA913: db $FD, $8C ; write kanji - 村
#_1CA915: db $24, $6C, $89, $21, $54, $58, $89, $70 ; のトリにオカリナ
#_1CA91D: db $24 ; の
#_1CA91E: db $FD, $AC ; write kanji - 音
#_1CA920: db $FD, $A4 ; write kanji - 色
#_1CA922: db $0E ; を
#_1CA923: db $F6 ; scroll text
#_1CA924: db $09, $08, $13, $1B, $05, $4A, $1B ; きかせてやって
#_1CA92B: db $FD, $61 ; write kanji - 下
#_1CA92D: db $10, $3B, $CC, $CD ; され⋯。
#_1CA931: db $F6 ; scroll text
#_1CA932: db $37, $02, $08, $C8, $04 ; どうか,お
#_1CA937: db $FD, $0A ; write kanji - 願
#_1CA939: db $01, $36, $12, $25, $47, $CD ; いですじゃ。
#_1CA93F: db $FA ; wait for key
#_1CA940: db $F6 ; scroll text
#_1CA941: db $32, $12, $0C, $34, $C8, $07, $3C, $0C ; むすこも,よろこ
#_1CA949: db $3F, $36, $11, $49, $02, $CC ; ぶでしょう⋯
#_1CA94F: db $F6 ; scroll text
#_1CA950: db $FF, $CC, $FF, $18, $2E, $C8, $34, $02 ; ⎵⋯⎵ただ,もう
#_1CA958: db $C9 ; －
#_1CA959: db $FD, $2A ; write kanji - 度
#_1CA95B: db $2E, $0B, $C8 ; だけ,
#_1CA95E: db $F6 ; scroll text
#_1CA95F: db $32, $12, $0C, $21 ; むすこに
#_1CA963: db $FD, $04 ; write kanji - 会
#_1CA965: db $01, $18, $08, $4A, $18, $CC, $CD ; いたかった⋯。
#_1CA96C: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; そのオカリナは,あんたが持っ
; ていて下さらんか⋯。
; それで,むすこのかわりに,
; 村のトリにオカリナの音色を
; きかせてやって下され⋯。
; どうか,お願いですじゃ。
; むすこも,よろこぶでしょう⋯
; ⋯ ただ,もう－度だけ,
; むすこに会いたかった⋯。
Message_00A1:
#_1CA96D: db $14, $24, $54, $58, $89, $70, $28, $C8 ; そのオカリナは,
#_1CA975: db $00, $0F, $18, $15 ; あんたが
#_1CA979: db $FD, $DB ; write kanji - 持
#_1CA97B: db $4A ; っ
#_1CA97C: db $F8 ; cursor to row 2
#_1CA97D: db $1B, $01, $1B ; ていて
#_1CA980: db $FD, $61 ; write kanji - 下
#_1CA982: db $10, $38, $0F, $08, $CC, $CD ; さらんか⋯。
#_1CA988: db $F9 ; cursor to row 3
#_1CA989: db $14, $3B, $36, $C8, $32, $12, $0C, $24 ; それで,むすこの
#_1CA991: db $08, $0D, $39, $21, $C8 ; かわりに,
#_1CA996: db $FA ; wait for key
#_1CA997: db $F6 ; scroll text
#_1CA998: db $FD, $8C ; write kanji - 村
#_1CA99A: db $24, $6C, $89, $21, $54, $58, $89, $70 ; のトリにオカリナ
#_1CA9A2: db $24 ; の
#_1CA9A3: db $FD, $AC ; write kanji - 音
#_1CA9A5: db $FD, $A4 ; write kanji - 色
#_1CA9A7: db $0E ; を
#_1CA9A8: db $F6 ; scroll text
#_1CA9A9: db $09, $08, $13, $1B, $05, $4A, $1B ; きかせてやって
#_1CA9B0: db $FD, $61 ; write kanji - 下
#_1CA9B2: db $10, $3B, $CC, $CD ; され⋯。
#_1CA9B6: db $F6 ; scroll text
#_1CA9B7: db $37, $02, $08, $C8, $04 ; どうか,お
#_1CA9BC: db $FD, $0A ; write kanji - 願
#_1CA9BE: db $01, $36, $12, $25, $47, $CD ; いですじゃ。
#_1CA9C4: db $FA ; wait for key
#_1CA9C5: db $F6 ; scroll text
#_1CA9C6: db $32, $12, $0C, $34, $C8, $07, $3C, $0C ; むすこも,よろこ
#_1CA9CE: db $3F, $36, $11, $49, $02, $CC ; ぶでしょう⋯
#_1CA9D4: db $F6 ; scroll text
#_1CA9D5: db $FF, $CC, $FF, $18, $2E, $C8, $34, $02 ; ⎵⋯⎵ただ,もう
#_1CA9DD: db $C9 ; －
#_1CA9DE: db $FD, $2A ; write kanji - 度
#_1CA9E0: db $2E, $0B, $C8 ; だけ,
#_1CA9E3: db $F6 ; scroll text
#_1CA9E4: db $32, $12, $0C, $21 ; むすこに
#_1CA9E8: db $FD, $04 ; write kanji - 会
#_1CA9EA: db $01, $18, $08, $4A, $18, $CC, $CD ; いたかった⋯。
#_1CA9F1: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ぐう〜 ぐう〜
; ⋯ ⋯ ⋯
; ぐっ ぐう〜 ぐう〜
Message_00A2:
#_1CA9F2: db $FF, $17, $02, $CE, $FF, $17, $02, $CE ; ⎵ぐう〜⎵ぐう〜
#_1CA9FA: db $F8 ; cursor to row 2
#_1CA9FB: db $FF, $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⎵⋯⎵⋯⎵⋯
#_1CAA02: db $F9 ; cursor to row 3
#_1CAA03: db $FF, $17, $4A, $FF, $17, $02, $CE, $FF ; ⎵ぐっ⎵ぐう〜⎵
#_1CAA0B: db $17, $02, $CE ; ぐう〜
#_1CAA0E: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おお,[LINK]や。 姫を連れ
; さらったと言うウワサじゃが,
; ワシは,お前を信じとるよ。
Message_00A3:
#_1CAA0F: db $04, $04, $C8 ; おお,
#_1CAA12: db $FE, $6A ; write player name
#_1CAA14: db $05, $CD, $FF ; や。⎵
#_1CAA17: db $FD, $FF ; write kanji - 姫
#_1CAA19: db $0E ; を
#_1CAA1A: db $FD, $40 ; write kanji - 連
#_1CAA1C: db $3B ; れ
#_1CAA1D: db $F8 ; cursor to row 2
#_1CAA1E: db $10, $38, $4A, $18, $1C ; さらったと
#_1CAA23: db $FD, $16 ; write kanji - 言
#_1CAA25: db $02, $52, $5D, $60, $25, $47, $15, $C8 ; うウワサじゃが,
#_1CAA2D: db $F9 ; cursor to row 3
#_1CAA2E: db $5D, $61, $28, $C8, $04 ; ワシは,お
#_1CAA33: db $FD, $78 ; write kanji - 前
#_1CAA35: db $0E ; を
#_1CAA36: db $FD, $45 ; write kanji - 信
#_1CAA38: db $25, $1C, $3A, $07, $CD ; じとるよ。
#_1CAA3D: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ま,まいった!その足でゼルダ
; 姫をさらったわけかい⋯そんな
; 悪いやつには見えないけどなぁ
; とにかく,それだけ足がはやい
; んだったら,色々な所に,体当
; りしてみるといいかもな⋯。
; この村の木には,おとくな物が
; ひっかかってるみたいだしよ。
; まあ,ためしてごらん。なっ!
Message_00A4:
#_1CAA3E: db $30, $C8, $30, $01, $4A, $18, $C7, $14 ; ま,まいった!そ
#_1CAA46: db $24 ; の
#_1CAA47: db $FD, $96 ; write kanji - 足
#_1CAA49: db $36, $77, $8A, $7E ; でゼルダ
#_1CAA4D: db $F8 ; cursor to row 2
#_1CAA4E: db $FD, $FF ; write kanji - 姫
#_1CAA50: db $0E, $10, $38, $4A, $18, $0D, $0B, $08 ; をさらったわけか
#_1CAA58: db $01, $CC, $14, $0F, $20 ; い⋯そんな
#_1CAA5D: db $F9 ; cursor to row 3
#_1CAA5E: db $FD, $85 ; write kanji - 悪
#_1CAA60: db $01, $05, $1A, $21, $28 ; いやつには
#_1CAA65: db $FD, $4C ; write kanji - 見
#_1CAA67: db $03, $20, $01, $0B, $37, $20, $4B ; えないけどなぁ
#_1CAA6E: db $FA ; wait for key
#_1CAA6F: db $F6 ; scroll text
#_1CAA70: db $1C, $21, $08, $0A, $C8, $14, $3B, $2E ; とにかく,それだ
#_1CAA78: db $0B ; け
#_1CAA79: db $FD, $96 ; write kanji - 足
#_1CAA7B: db $15, $28, $05, $01 ; がはやい
#_1CAA7F: db $F6 ; scroll text
#_1CAA80: db $0F, $2E, $4A, $18, $38, $C8 ; んだったら,
#_1CAA86: db $FD, $A4 ; write kanji - 色
#_1CAA88: db $FD, $A5 ; write kanji - 々
#_1CAA8A: db $20 ; な
#_1CAA8B: db $FD, $55 ; write kanji - 所
#_1CAA8D: db $21, $C8 ; に,
#_1CAA8F: db $FD, $BF ; write kanji - 体
#_1CAA91: db $FD, $25 ; write kanji - 当
#_1CAA93: db $F6 ; scroll text
#_1CAA94: db $39, $11, $1B, $31, $3A, $1C, $01, $01 ; りしてみるといい
#_1CAA9C: db $08, $34, $20, $CC, $CD ; かもな⋯。
#_1CAAA1: db $FA ; wait for key
#_1CAAA2: db $F6 ; scroll text
#_1CAAA3: db $0C, $24 ; この
#_1CAAA5: db $FD, $8C ; write kanji - 村
#_1CAAA7: db $24 ; の
#_1CAAA8: db $FD, $EB ; write kanji - 木
#_1CAAAA: db $21, $28, $C8, $04, $1C, $0A, $20 ; には,おとくな
#_1CAAB1: db $FD, $51 ; write kanji - 物
#_1CAAB3: db $15 ; が
#_1CAAB4: db $F6 ; scroll text
#_1CAAB5: db $29, $4A, $08, $08, $4A, $1B, $3A, $31 ; ひっかかってるみ
#_1CAABD: db $18, $01, $2E, $11, $07, $CD ; たいだしよ。
#_1CAAC3: db $F6 ; scroll text
#_1CAAC4: db $30, $00, $C8, $18, $33, $11, $1B, $1E ; まあ,ためしてご
#_1CAACC: db $38, $0F, $CD, $20, $4A, $C7 ; らん。なっ!
#_1CAAD2: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おいおい,こんなもん見てる
; ヒマがあるんやったら,
; さっさとゴ－ルに行かんかい!
Message_00A5:
#_1CAAD3: db $04, $01, $04, $01, $C8, $0C, $0F, $20 ; おいおい,こんな
#_1CAADB: db $34, $0F ; もん
#_1CAADD: db $FD, $4C ; write kanji - 見
#_1CAADF: db $1B, $3A ; てる
#_1CAAE1: db $F8 ; cursor to row 2
#_1CAAE2: db $79, $80, $15, $00, $3A, $0F, $05, $4A ; ヒマがあるんやっ
#_1CAAEA: db $18, $38, $C8 ; たら,
#_1CAAED: db $F9 ; cursor to row 3
#_1CAAEE: db $10, $4A, $10, $1C, $6E, $C9, $8A, $21 ; さっさとゴ－ルに
#_1CAAF6: db $FD, $02 ; write kanji - 行
#_1CAAF8: db $08, $0F, $08, $01, $C7 ; かんかい!
#_1CAAFD: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; マントをまといし者に
; ハ－トのかけらをゆずろう
Message_00A6:
#_1CAAFE: db $FF, $80, $5F, $6C, $0E, $30, $1C, $01 ; ⎵マントをまとい
#_1CAB06: db $11 ; し
#_1CAB07: db $FD, $1E ; write kanji - 者
#_1CAB09: db $21 ; に
#_1CAB0A: db $F8 ; cursor to row 2
#_1CAB0B: db $FF, $78, $C9, $6C, $24, $08, $0B, $38 ; ⎵ハ－トのかけら
#_1CAB13: db $0E, $06, $26, $3C, $02 ; をゆずろう
#_1CAB18: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; このいけに,物を投げこむ者
; ワザワイあれ!
Message_00A7:
#_1CAB19: db $FF, $0C, $24, $01, $0B, $21, $C8 ; ⎵このいけに,
#_1CAB20: db $FD, $51 ; write kanji - 物
#_1CAB22: db $0E ; を
#_1CAB23: db $FD, $FC ; write kanji - 投
#_1CAB25: db $1D, $0C, $32 ; げこむ
#_1CAB28: db $FD, $1E ; write kanji - 者
#_1CAB2A: db $F8 ; cursor to row 2
#_1CAB2B: db $FF, $5D, $6F, $5D, $51, $00, $3B, $C7 ; ⎵ワザワイあれ!
#_1CAB33: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; この先 🡅 ドクロの森
; この先 🡇 はぐれ者の村
Message_00A8:
#_1CAB34: db $0C, $24 ; この
#_1CAB36: db $FD, $9C ; write kanji - 先
#_1CAB38: db $FF, $E0, $FF, $87, $5A, $8C, $24 ; ⎵🡅⎵ドクロの
#_1CAB3F: db $FD, $65 ; write kanji - 森
#_1CAB41: db $F9 ; cursor to row 3
#_1CAB42: db $0C, $24 ; この
#_1CAB44: db $FD, $9C ; write kanji - 先
#_1CAB46: db $FF, $E1, $FF, $28, $17, $3B ; ⎵🡇⎵はぐれ
#_1CAB4C: db $FD, $1E ; write kanji - 者
#_1CAB4E: db $24 ; の
#_1CAB4F: db $FD, $8C ; write kanji - 村
#_1CAB51: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; この先 🡆 洞くつあり
Message_00A9:
#_1CAB52: db $F8 ; cursor to row 2
#_1CAB53: db $0C, $24 ; この
#_1CAB55: db $FD, $9C ; write kanji - 先
#_1CAB57: db $FF, $E2, $FF ; ⎵🡆⎵
#_1CAB5A: db $FD, $EF ; write kanji - 洞
#_1CAB5C: db $0A, $1A, $00, $39 ; くつあり
#_1CAB60: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; この先 🡆 ヤミの神殿
Message_00AA:
#_1CAB61: db $F8 ; cursor to row 2
#_1CAB62: db $0C, $24 ; この
#_1CAB64: db $FD, $9C ; write kanji - 先
#_1CAB66: db $FF, $E2, $FF, $55, $81, $24 ; ⎵🡆⎵ヤミの
#_1CAB6C: db $FD, $05 ; write kanji - 神
#_1CAB6E: db $FD, $90 ; write kanji - 殿
#_1CAB70: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; この先 🡄 バクダン屋
Message_00AB:
#_1CAB71: db $F8 ; cursor to row 2
#_1CAB72: db $0C, $24 ; この
#_1CAB74: db $FD, $9C ; write kanji - 先
#_1CAB76: db $FF, $E3, $FF, $8D, $5A, $7E, $5F ; ⎵🡄⎵バクダン
#_1CAB7D: db $FD, $3D ; write kanji - 屋
#_1CAB7F: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 🡄 悪魔のぬま
; この先 はいる道はなし
; 出て行く道もなし
Message_00AC:
#_1CAB80: db $FF, $E3, $FF, $FF, $FF, $FF ; ⎵🡄⎵⎵⎵⎵
#_1CAB86: db $FD, $85 ; write kanji - 悪
#_1CAB88: db $FD, $2D ; write kanji - 魔
#_1CAB8A: db $24, $22, $30 ; のぬま
#_1CAB8D: db $F8 ; cursor to row 2
#_1CAB8E: db $0C, $24 ; この
#_1CAB90: db $FD, $9C ; write kanji - 先
#_1CAB92: db $FF, $FF, $FF, $28, $01, $3A ; ⎵⎵⎵はいる
#_1CAB98: db $FD, $5D ; write kanji - 道
#_1CAB9A: db $28, $20, $11 ; はなし
#_1CAB9D: db $F9 ; cursor to row 3
#_1CAB9E: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CABA4: db $FD, $23 ; write kanji - 出
#_1CABA6: db $1B ; て
#_1CABA7: db $FD, $02 ; write kanji - 行
#_1CABA9: db $0A ; く
#_1CABAA: db $FD, $5D ; write kanji - 道
#_1CABAC: db $34, $20, $11 ; もなし
#_1CABAF: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ここは,はぐれ者の村
; ルピ－のないやつおことわり
Message_00AD:
#_1CABB0: db $0C, $0C, $28, $C8, $28, $17, $3B ; ここは,はぐれ
#_1CABB7: db $FD, $1E ; write kanji - 者
#_1CABB9: db $24 ; の
#_1CABBA: db $FD, $8C ; write kanji - 村
#_1CABBC: db $F8 ; cursor to row 2
#_1CABBD: db $8A, $93, $C9, $24, $20, $01, $05, $1A ; ルピ－のないやつ
#_1CABC5: db $04, $0C, $1C, $0D, $39 ; おことわり
#_1CABCA: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; もうちょっとで,願いのタキ
Message_00AE:
#_1CABCB: db $F8 ; cursor to row 2
#_1CABCC: db $34, $02, $19, $49, $4A, $1C, $36, $C8 ; もうちょっとで,
#_1CABD4: db $FD, $0A ; write kanji - 願
#_1CABD6: db $01, $24, $68, $59 ; いのタキ
#_1CABDA: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; この先 🡆🡅
; わざわいのイケ
Message_00AF:
#_1CABDB: db $0C, $24 ; この
#_1CABDD: db $FD, $9C ; write kanji - 先
#_1CABDF: db $FF, $E2, $E0 ; ⎵🡆🡅
#_1CABE2: db $F8 ; cursor to row 2
#_1CABE3: db $FF, $FF, $0D, $1F, $0D, $01, $24, $51 ; ⎵⎵わざわいのイ
#_1CABEB: db $5B ; ケ
#_1CABEC: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ふう,司祭のアグニムが来てか
; ら,みんなどうかしちまったみ
; たいだ。おれもああなるのかな
Message_00B0:
#_1CABED: db $2A, $02, $C8 ; ふう,
#_1CABF0: db $FD, $0D ; write kanji - 司
#_1CABF2: db $FD, $17 ; write kanji - 祭
#_1CABF4: db $24, $50, $67, $71, $82, $15 ; のアグニムが
#_1CABFA: db $FD, $D6 ; write kanji - 来
#_1CABFC: db $1B, $08 ; てか
#_1CABFE: db $F8 ; cursor to row 2
#_1CABFF: db $38, $C8, $31, $0F, $20, $37, $02, $08 ; ら,みんなどうか
#_1CAC07: db $11, $19, $30, $4A, $18, $31 ; しちまったみ
#_1CAC0D: db $F9 ; cursor to row 3
#_1CAC0E: db $18, $01, $2E, $CD, $04, $3B, $34, $00 ; たいだ。おれもあ
#_1CAC16: db $00, $20, $3A, $24, $08, $20 ; あなるのかな
#_1CAC1C: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; こら こら 城へは入れんぞ
; 子どもは 早く帰って
; ねなさい!
Message_00B1:
#_1CAC1D: db $0C, $38, $FF, $0C, $38, $FF ; こら⎵こら⎵
#_1CAC23: db $FD, $01 ; write kanji - 城
#_1CAC25: db $2B, $28 ; へは
#_1CAC27: db $FD, $49 ; write kanji - 入
#_1CAC29: db $3B, $0F, $2D ; れんぞ
#_1CAC2C: db $F8 ; cursor to row 2
#_1CAC2D: db $FD, $11 ; write kanji - 子
#_1CAC2F: db $37, $34, $28, $FF ; どもは⎵
#_1CAC33: db $FD, $18 ; write kanji - 早
#_1CAC35: db $0A ; く
#_1CAC36: db $FD, $D7 ; write kanji - 帰
#_1CAC38: db $4A, $1B ; って
#_1CAC3A: db $F9 ; cursor to row 3
#_1CAC3B: db $23, $20, $10, $01, $C7 ; ねなさい!
#_1CAC40: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK]よ,ワシじゃ
; 長老サハスラ－ラじゃ。
; お前に,助言をあたえよう。
; この神殿にある宝は,かたいヨ
; ロイをまとった魔物をも倒せる
; はずじゃ。必ずみつけなされ。
Message_00B2:
#_1CAC41: db $FE, $6B, $02 ; set window type
#_1CAC44: db $FE, $6A ; write player name
#_1CAC46: db $07, $C8, $5D, $61, $25, $47 ; よ,ワシじゃ
#_1CAC4C: db $F8 ; cursor to row 2
#_1CAC4D: db $FD, $8D ; write kanji - 長
#_1CAC4F: db $FD, $E5 ; write kanji - 老
#_1CAC51: db $60, $78, $62, $88, $C9, $88, $25, $47 ; サハスラ－ラじゃ
#_1CAC59: db $CD ; 。
#_1CAC5A: db $F9 ; cursor to row 3
#_1CAC5B: db $04 ; お
#_1CAC5C: db $FD, $78 ; write kanji - 前
#_1CAC5E: db $21, $C8 ; に,
#_1CAC60: db $FD, $CA ; write kanji - 助
#_1CAC62: db $FD, $16 ; write kanji - 言
#_1CAC64: db $0E, $00, $18, $03, $07, $02, $CD ; をあたえよう。
#_1CAC6B: db $FA ; wait for key
#_1CAC6C: db $F6 ; scroll text
#_1CAC6D: db $0C, $24 ; この
#_1CAC6F: db $FD, $05 ; write kanji - 神
#_1CAC71: db $FD, $90 ; write kanji - 殿
#_1CAC73: db $21, $00, $3A ; にある
#_1CAC76: db $FD, $9A ; write kanji - 宝
#_1CAC78: db $28, $C8, $08, $18, $01, $57 ; は,かたいヨ
#_1CAC7E: db $F6 ; scroll text
#_1CAC7F: db $8C, $51, $0E, $30, $1C, $4A, $18 ; ロイをまとった
#_1CAC86: db $FD, $2D ; write kanji - 魔
#_1CAC88: db $FD, $51 ; write kanji - 物
#_1CAC8A: db $0E, $34 ; をも
#_1CAC8C: db $FD, $29 ; write kanji - 倒
#_1CAC8E: db $13, $3A ; せる
#_1CAC90: db $F6 ; scroll text
#_1CAC91: db $28, $26, $25, $47, $CD ; はずじゃ。
#_1CAC96: db $FD, $30 ; write kanji - 必
#_1CAC98: db $26, $31, $1A, $0B, $20, $10, $3B, $CD ; ずみつけなされ。
#_1CACA0: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK]よ,サハスラ－ラじゃ
; この塔には,ム－ンパ－ルと
; よばれる玉がおかれておる。
; その玉を持つ者は,魔物の世界
; にあっても,姿がかわらぬよう
; 守ってくれるのじゃ。
; 必ず手に入れて塔を出るがよい
; 忘れるでないぞ⋯。
Message_00B3:
#_1CACA1: db $FE, $6B, $02 ; set window type
#_1CACA4: db $FE, $6A ; write player name
#_1CACA6: db $07, $C8, $60, $78, $62, $88, $C9, $88 ; よ,サハスラ－ラ
#_1CACAE: db $25, $47 ; じゃ
#_1CACB0: db $F8 ; cursor to row 2
#_1CACB1: db $0C, $24 ; この
#_1CACB3: db $FD, $D5 ; write kanji - 塔
#_1CACB5: db $21, $28, $C8, $82, $C9, $5F, $92, $C9 ; には,ム－ンパ－
#_1CACBD: db $8A, $1C ; ルと
#_1CACBF: db $F9 ; cursor to row 3
#_1CACC0: db $07, $3D, $3B, $3A ; よばれる
#_1CACC4: db $FD, $D2 ; write kanji - 玉
#_1CACC6: db $15, $04, $08, $3B, $1B, $04, $3A, $CD ; がおかれておる。
#_1CACCE: db $FA ; wait for key
#_1CACCF: db $F6 ; scroll text
#_1CACD0: db $14, $24 ; その
#_1CACD2: db $FD, $D2 ; write kanji - 玉
#_1CACD4: db $0E ; を
#_1CACD5: db $FD, $DB ; write kanji - 持
#_1CACD7: db $1A ; つ
#_1CACD8: db $FD, $1E ; write kanji - 者
#_1CACDA: db $28, $C8 ; は,
#_1CACDC: db $FD, $2D ; write kanji - 魔
#_1CACDE: db $FD, $51 ; write kanji - 物
#_1CACE0: db $24 ; の
#_1CACE1: db $FD, $E8 ; write kanji - 世
#_1CACE3: db $FD, $E9 ; write kanji - 界
#_1CACE5: db $F6 ; scroll text
#_1CACE6: db $21, $00, $4A, $1B, $34, $C8 ; にあっても,
#_1CACEC: db $FD, $A2 ; write kanji - 姿
#_1CACEE: db $15, $08, $0D, $38, $22, $07, $02 ; がかわらぬよう
#_1CACF5: db $F6 ; scroll text
#_1CACF6: db $FD, $91 ; write kanji - 守
#_1CACF8: db $4A, $1B, $0A, $3B, $3A, $24, $25, $47 ; ってくれるのじゃ
#_1CAD00: db $CD ; 。
#_1CAD01: db $FA ; wait for key
#_1CAD02: db $F6 ; scroll text
#_1CAD03: db $FD, $30 ; write kanji - 必
#_1CAD05: db $26 ; ず
#_1CAD06: db $FD, $3E ; write kanji - 手
#_1CAD08: db $21 ; に
#_1CAD09: db $FD, $49 ; write kanji - 入
#_1CAD0B: db $3B, $1B ; れて
#_1CAD0D: db $FD, $D5 ; write kanji - 塔
#_1CAD0F: db $0E ; を
#_1CAD10: db $FD, $23 ; write kanji - 出
#_1CAD12: db $3A, $15, $07, $01 ; るがよい
#_1CAD16: db $F6 ; scroll text
#_1CAD17: db $FD, $D8 ; write kanji - 忘
#_1CAD19: db $3B, $3A, $36, $20, $01, $2D, $CC, $CD ; れるでないぞ⋯。
#_1CAD21: db $F6 ; scroll text
#_1CAD22: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 𓄿≈≈ 𓄿≈≈ ☥≈≈
; ☥ 𓄿≈≈𓄿 ☥
; 𓄿≈≈ ☥𓄿𓄿☥ ≈≈☥
Message_00B4:
#_1CAD23: db $DD, $DF, $DF, $FF, $DD, $DF, $DF, $FF ; 𓄿≈≈⎵𓄿≈≈⎵
#_1CAD2B: db $DE, $DF, $DF ; ☥≈≈
#_1CAD2E: db $F8 ; cursor to row 2
#_1CAD2F: db $FF, $FF, $DE, $FF, $DD, $DF, $DF, $DD ; ⎵⎵☥⎵𓄿≈≈𓄿
#_1CAD37: db $FF, $DE ; ⎵☥
#_1CAD39: db $F9 ; cursor to row 3
#_1CAD3A: db $DD, $DF, $DF, $FF, $DE, $DD, $DD, $DE ; 𓄿≈≈⎵☥𓄿𓄿☥
#_1CAD42: db $FF, $DF, $DF, $DE ; ⎵≈≈☥
#_1CAD46: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 『オオイナル ワザワイ』の
; ふりかかる時,3つの紋章を
; かかげし『勇者』来たりて,
; その手で,この剣を引きぬくで
; あろう。その者ナイトの－族の
; 血をひく者なり。
Message_00B5:
#_1CAD47: db $C4, $54, $54, $51, $70, $8A, $FF, $5D ; 『オオイナル⎵ワ
#_1CAD4F: db $6F, $5D, $51, $C5, $24 ; ザワイ』の
#_1CAD54: db $F8 ; cursor to row 2
#_1CAD55: db $2A, $39, $08, $08, $3A ; ふりかかる
#_1CAD5A: db $FD, $88 ; write kanji - 時
#_1CAD5C: db $C8, $A3, $1A, $24 ; ,3つの
#_1CAD60: db $FD, $53 ; write kanji - 紋
#_1CAD62: db $FD, $54 ; write kanji - 章
#_1CAD64: db $0E ; を
#_1CAD65: db $F9 ; cursor to row 3
#_1CAD66: db $08, $08, $1D, $11, $C4 ; かかげし『
#_1CAD6B: db $FD, $A0 ; write kanji - 勇
#_1CAD6D: db $FD, $1E ; write kanji - 者
#_1CAD6F: db $C5 ; 』
#_1CAD70: db $FD, $D6 ; write kanji - 来
#_1CAD72: db $18, $39, $1B, $C8 ; たりて,
#_1CAD76: db $FA ; wait for key
#_1CAD77: db $F6 ; scroll text
#_1CAD78: db $14, $24 ; その
#_1CAD7A: db $FD, $3E ; write kanji - 手
#_1CAD7C: db $36, $C8, $0C, $24 ; で,この
#_1CAD80: db $FD, $1A ; write kanji - 剣
#_1CAD82: db $0E ; を
#_1CAD83: db $FD, $48 ; write kanji - 引
#_1CAD85: db $09, $22, $0A, $36 ; きぬくで
#_1CAD89: db $F6 ; scroll text
#_1CAD8A: db $00, $3C, $02, $CD, $14, $24 ; あろう。その
#_1CAD90: db $FD, $1E ; write kanji - 者
#_1CAD92: db $70, $51, $6C, $24, $C9 ; ナイトの－
#_1CAD97: db $FD, $F2 ; write kanji - 族
#_1CAD99: db $24 ; の
#_1CAD9A: db $F6 ; scroll text
#_1CAD9B: db $FD, $B9 ; write kanji - 血
#_1CAD9D: db $0E, $29, $0A ; をひく
#_1CADA0: db $FD, $1E ; write kanji - 者
#_1CADA2: db $20, $39, $CD ; なり。
#_1CADA5: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK]よ,このサハスラ－ラ
; のことば,よくきくのじゃ。
; メガネイワにのぼるのじゃ。
; そうすれば,このヘブラ山の
; ヘラの塔へたどりつけるじゃろ
; う。よくかんがえることじゃ。
Message_00B6:
#_1CADA6: db $FE, $6B, $02 ; set window type
#_1CADA9: db $FE, $6A ; write player name
#_1CADAB: db $07, $C8, $0C, $24, $60, $78, $62, $88 ; よ,このサハスラ
#_1CADB3: db $C9, $88 ; －ラ
#_1CADB5: db $F8 ; cursor to row 2
#_1CADB6: db $24, $0C, $1C, $3D, $C8, $07, $0A, $09 ; のことば,よくき
#_1CADBE: db $0A, $24, $25, $47, $CD ; くのじゃ。
#_1CADC3: db $F9 ; cursor to row 3
#_1CADC4: db $83, $65, $73, $51, $5D, $21, $24, $41 ; メガネイワにのぼ
#_1CADCC: db $3A, $24, $25, $47, $CD ; るのじゃ。
#_1CADD1: db $FA ; wait for key
#_1CADD2: db $F6 ; scroll text
#_1CADD3: db $14, $02, $12, $3B, $3D, $C8, $0C, $24 ; そうすれば,この
#_1CADDB: db $7B, $8F, $88 ; ヘブラ
#_1CADDE: db $FD, $94 ; write kanji - 山
#_1CADE0: db $24 ; の
#_1CADE1: db $F6 ; scroll text
#_1CADE2: db $7B, $88, $24 ; ヘラの
#_1CADE5: db $FD, $D5 ; write kanji - 塔
#_1CADE7: db $2B, $18, $37, $39, $1A, $0B, $3A, $25 ; へたどりつけるじ
#_1CADEF: db $47, $3C ; ゃろ
#_1CADF1: db $F6 ; scroll text
#_1CADF2: db $02, $CD, $07, $0A, $08, $0F, $15, $03 ; う。よくかんがえ
#_1CADFA: db $3A, $0C, $1C, $25, $47, $CD ; ることじゃ。
#_1CAE00: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK]よ,よくきけ。光と闇
; それぞれの世界にある物は
; たがいにその姿をまねておる。
; 1つの物の姿がかわれば,
; もう,1つもかわっておるはず
; じゃ。よくかんがえるのじゃ。
Message_00B7:
#_1CAE01: db $FE, $6B, $02 ; set window type
#_1CAE04: db $FE, $6A ; write player name
#_1CAE06: db $07, $C8, $07, $0A, $09, $0B, $CD ; よ,よくきけ。
#_1CAE0D: db $FD, $73 ; write kanji - 光
#_1CAE0F: db $1C ; と
#_1CAE10: db $FD, $57 ; write kanji - 闇
#_1CAE12: db $F8 ; cursor to row 2
#_1CAE13: db $14, $3B, $2D, $3B, $24 ; それぞれの
#_1CAE18: db $FD, $E8 ; write kanji - 世
#_1CAE1A: db $FD, $E9 ; write kanji - 界
#_1CAE1C: db $21, $00, $3A ; にある
#_1CAE1F: db $FD, $51 ; write kanji - 物
#_1CAE21: db $28 ; は
#_1CAE22: db $F9 ; cursor to row 3
#_1CAE23: db $18, $15, $01, $21, $14, $24 ; たがいにその
#_1CAE29: db $FD, $A2 ; write kanji - 姿
#_1CAE2B: db $0E, $30, $23, $1B, $04, $3A, $CD ; をまねておる。
#_1CAE32: db $FA ; wait for key
#_1CAE33: db $F6 ; scroll text
#_1CAE34: db $A1, $1A, $24 ; 1つの
#_1CAE37: db $FD, $51 ; write kanji - 物
#_1CAE39: db $24 ; の
#_1CAE3A: db $FD, $A2 ; write kanji - 姿
#_1CAE3C: db $15, $08, $0D, $3B, $3D, $C8 ; がかわれば,
#_1CAE42: db $F6 ; scroll text
#_1CAE43: db $34, $02, $C8, $A1, $1A, $34, $08, $0D ; もう,1つもかわ
#_1CAE4B: db $4A, $1B, $04, $3A, $28, $26 ; っておるはず
#_1CAE51: db $F6 ; scroll text
#_1CAE52: db $25, $47, $CD, $07, $0A, $08, $0F, $15 ; じゃ。よくかんが
#_1CAE5A: db $03, $3A, $24, $25, $47, $CD ; えるのじゃ。
#_1CAE60: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK]⋯私よ,ゼルダよ⋯。
; 盗賊ブラインドの魔術にまどわ
; されないで!気を付けてね。
Message_00B8:
#_1CAE61: db $FE, $6B, $02 ; set window type
#_1CAE64: db $FE, $6A ; write player name
#_1CAE66: db $CC ; ⋯
#_1CAE67: db $FD, $26 ; write kanji - 私
#_1CAE69: db $07, $C8, $77, $8A, $7E, $07, $CC, $CD ; よ,ゼルダよ⋯。
#_1CAE71: db $F8 ; cursor to row 2
#_1CAE72: db $FD, $F1 ; write kanji - 盗
#_1CAE74: db $FD, $EE ; write kanji - 賊
#_1CAE76: db $8F, $88, $51, $5F, $87, $24 ; ブラインドの
#_1CAE7C: db $FD, $2D ; write kanji - 魔
#_1CAE7E: db $FD, $CB ; write kanji - 術
#_1CAE80: db $21, $30, $37, $0D ; にまどわ
#_1CAE84: db $F9 ; cursor to row 3
#_1CAE85: db $10, $3B, $20, $01, $36, $C7 ; されないで!
#_1CAE8B: db $FD, $37 ; write kanji - 気
#_1CAE8D: db $0E ; を
#_1CAE8E: db $FD, $52 ; write kanji - 付
#_1CAE90: db $0B, $1B, $23, $CD ; けてね。
#_1CAE94: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK]よ,サハスラ－ラじゃ
; 4つのあかりをともせば,
; すすむ道が開けるじゃろう。
Message_00B9:
#_1CAE95: db $FE, $6B, $02 ; set window type
#_1CAE98: db $FE, $6A ; write player name
#_1CAE9A: db $07, $C8, $60, $78, $62, $88, $C9, $88 ; よ,サハスラ－ラ
#_1CAEA2: db $25, $47 ; じゃ
#_1CAEA4: db $F8 ; cursor to row 2
#_1CAEA5: db $A4, $1A, $24, $00, $08, $39, $0E, $1C ; 4つのあかりをと
#_1CAEAD: db $34, $13, $3D, $C8 ; もせば,
#_1CAEB1: db $F9 ; cursor to row 3
#_1CAEB2: db $12, $12, $32 ; すすむ
#_1CAEB5: db $FD, $5D ; write kanji - 道
#_1CAEB7: db $15 ; が
#_1CAEB8: db $FD, $4B ; write kanji - 開
#_1CAEBA: db $0B, $3A, $25, $47, $3C, $02, $CD ; けるじゃろう。
#_1CAEC1: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 𓄿𓄿☥≈ 𓄿≈≈𓄿
; ☥ ≈𓄿☥≈
; ≈≈𓄿≈ ☥☥𓄿☥
Message_00BA:
#_1CAEC2: db $FF, $FF, $DD, $DD, $DE, $DF, $FF, $DD ; ⎵⎵𓄿𓄿☥≈⎵𓄿
#_1CAECA: db $DF, $DF, $DD ; ≈≈𓄿
#_1CAECD: db $F8 ; cursor to row 2
#_1CAECE: db $FF, $FF, $FF, $DE, $FF, $DF, $DD, $DE ; ⎵⎵⎵☥⎵≈𓄿☥
#_1CAED6: db $DF ; ≈
#_1CAED7: db $F9 ; cursor to row 3
#_1CAED8: db $FF, $FF, $DF, $DF, $DD, $DF, $FF, $DE ; ⎵⎵≈≈𓄿≈⎵☥
#_1CAEE0: db $DE, $DD, $DE ; ☥𓄿☥
#_1CAEE3: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; このセキバンの前で念ずるが
; よい。そなたの願い伝われば,
; 道は開けるであろう⋯。
Message_00BB:
#_1CAEE4: db $0C, $24, $63, $59, $8D, $5F, $24 ; このセキバンの
#_1CAEEB: db $FD, $78 ; write kanji - 前
#_1CAEED: db $36 ; で
#_1CAEEE: db $FD, $B2 ; write kanji - 念
#_1CAEF0: db $26, $3A, $15 ; ずるが
#_1CAEF3: db $F8 ; cursor to row 2
#_1CAEF4: db $07, $01, $CD, $14, $20, $18, $24 ; よい。そなたの
#_1CAEFB: db $FD, $0A ; write kanji - 願
#_1CAEFD: db $01 ; い
#_1CAEFE: db $FD, $2E ; write kanji - 伝
#_1CAF00: db $0D, $3B, $3D, $C8 ; われば,
#_1CAF04: db $F9 ; cursor to row 3
#_1CAF05: db $FD, $5D ; write kanji - 道
#_1CAF07: db $28 ; は
#_1CAF08: db $FD, $4B ; write kanji - 開
#_1CAF0A: db $0B, $3A, $36, $00, $3C, $02, $CC, $CD ; けるであろう⋯。
#_1CAF12: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ガノンのうごきを封じたら
; 『銀の矢』でとどめをさすの
; じゃっ!よいな[LINK]よ⋯。
Message_00BC:
#_1CAF13: db $FE, $6B, $02 ; set window type
#_1CAF16: db $65, $74, $5F, $24, $02, $1E, $09, $0E ; ガノンのうごきを
#_1CAF1E: db $FD, $9E ; write kanji - 封
#_1CAF20: db $25, $18, $38 ; じたら
#_1CAF23: db $F8 ; cursor to row 2
#_1CAF24: db $C4 ; 『
#_1CAF25: db $FD, $DE ; write kanji - 銀
#_1CAF27: db $24 ; の
#_1CAF28: db $FD, $BB ; write kanji - 矢
#_1CAF2A: db $C5, $36, $1C, $37, $33, $0E, $10, $12 ; 』でとどめをさす
#_1CAF32: db $24 ; の
#_1CAF33: db $F9 ; cursor to row 3
#_1CAF34: db $25, $47, $4A, $C7, $07, $01, $20 ; じゃっ!よいな
#_1CAF3B: db $FE, $6A ; write player name
#_1CAF3D: db $07, $CC, $CD ; よ⋯。
#_1CAF40: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK]⋯私の声がきこえる?
; 私よ,ゼルダよ。
; 私は今,デスマウンテンにある
; カメイワのなかに封じ込められ
; ているの。あなたが,来てくれ
; るのを信じてまっています⋯
Message_00BD:
#_1CAF41: db $FE, $6B, $02 ; set window type
#_1CAF44: db $FE, $6A ; write player name
#_1CAF46: db $CC ; ⋯
#_1CAF47: db $FD, $26 ; write kanji - 私
#_1CAF49: db $24 ; の
#_1CAF4A: db $FD, $60 ; write kanji - 声
#_1CAF4C: db $15, $09, $0C, $03, $3A, $C6 ; がきこえる?
#_1CAF52: db $F8 ; cursor to row 2
#_1CAF53: db $FD, $26 ; write kanji - 私
#_1CAF55: db $07, $C8, $77, $8A, $7E, $07, $CD ; よ,ゼルダよ。
#_1CAF5C: db $F9 ; cursor to row 3
#_1CAF5D: db $FD, $26 ; write kanji - 私
#_1CAF5F: db $28 ; は
#_1CAF60: db $FD, $6A ; write kanji - 今
#_1CAF62: db $C8, $86, $62, $80, $52, $5F, $6B, $5F ; ,デスマウンテン
#_1CAF6A: db $21, $00, $3A ; にある
#_1CAF6D: db $FA ; wait for key
#_1CAF6E: db $F6 ; scroll text
#_1CAF6F: db $58, $83, $51, $5D, $24, $20, $08, $21 ; カメイワのなかに
#_1CAF77: db $FD, $9E ; write kanji - 封
#_1CAF79: db $25 ; じ
#_1CAF7A: db $FD, $DC ; write kanji - 込
#_1CAF7C: db $33, $38, $3B ; められ
#_1CAF7F: db $F6 ; scroll text
#_1CAF80: db $1B, $01, $3A, $24, $CD, $00, $20, $18 ; ているの。あなた
#_1CAF88: db $15, $C8 ; が,
#_1CAF8A: db $FD, $D6 ; write kanji - 来
#_1CAF8C: db $1B, $0A, $3B ; てくれ
#_1CAF8F: db $F6 ; scroll text
#_1CAF90: db $3A, $24, $0E ; るのを
#_1CAF93: db $FD, $45 ; write kanji - 信
#_1CAF95: db $25, $1B, $30, $4A, $1B, $01, $30, $12 ; じてまっています
#_1CAF9D: db $CC ; ⋯
#_1CAF9E: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK]よ,サハスラ－ラじゃ
; すべての魔物のヤカタにおかれ
; た宝は,必ず手に入れるのじゃ
Message_00BE:
#_1CAF9F: db $FE, $6B, $02 ; set window type
#_1CAFA2: db $FE, $6A ; write player name
#_1CAFA4: db $07, $C8, $60, $78, $62, $88, $C9, $88 ; よ,サハスラ－ラ
#_1CAFAC: db $25, $47 ; じゃ
#_1CAFAE: db $F8 ; cursor to row 2
#_1CAFAF: db $12, $40, $1B, $24 ; すべての
#_1CAFB3: db $FD, $2D ; write kanji - 魔
#_1CAFB5: db $FD, $51 ; write kanji - 物
#_1CAFB7: db $24, $55, $58, $68, $21, $04, $08, $3B ; のヤカタにおかれ
#_1CAFBF: db $F9 ; cursor to row 3
#_1CAFC0: db $18 ; た
#_1CAFC1: db $FD, $9A ; write kanji - 宝
#_1CAFC3: db $28, $C8 ; は,
#_1CAFC5: db $FD, $30 ; write kanji - 必
#_1CAFC7: db $26 ; ず
#_1CAFC8: db $FD, $3E ; write kanji - 手
#_1CAFCA: db $21 ; に
#_1CAFCB: db $FD, $49 ; write kanji - 入
#_1CAFCD: db $3B, $3A, $24, $25, $47 ; れるのじゃ
#_1CAFD2: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; よいか,[LINK]よ。
; マスタ－ソ－ドといえども,
; 司祭の体をきる事はできぬ。
; やつの魔力をぎゃくに,りよう
; するのじゃ。
Message_00BF:
#_1CAFD3: db $FE, $6B, $02 ; set window type
#_1CAFD6: db $07, $01, $08, $C8 ; よいか,
#_1CAFDA: db $FE, $6A ; write player name
#_1CAFDC: db $07, $CD ; よ。
#_1CAFDE: db $F8 ; cursor to row 2
#_1CAFDF: db $80, $62, $68, $C9, $64, $C9, $87, $1C ; マスタ－ソ－ドと
#_1CAFE7: db $01, $03, $37, $34, $C8 ; いえども,
#_1CAFEC: db $F9 ; cursor to row 3
#_1CAFED: db $FD, $0D ; write kanji - 司
#_1CAFEF: db $FD, $17 ; write kanji - 祭
#_1CAFF1: db $24 ; の
#_1CAFF2: db $FD, $BF ; write kanji - 体
#_1CAFF4: db $0E, $09, $3A ; をきる
#_1CAFF7: db $FD, $22 ; write kanji - 事
#_1CAFF9: db $28, $36, $09, $22, $CD ; はできぬ。
#_1CAFFE: db $FA ; wait for key
#_1CAFFF: db $F6 ; scroll text
#_1CB000: db $05, $1A, $24 ; やつの
#_1CB003: db $FD, $2D ; write kanji - 魔
#_1CB005: db $FD, $99 ; write kanji - 力
#_1CB007: db $0E, $16, $47, $0A, $21, $C8, $39, $07 ; をぎゃくに,りよ
#_1CB00F: db $02 ; う
#_1CB010: db $F6 ; scroll text
#_1CB011: db $12, $3A, $24, $25, $47, $CD ; するのじゃ。
#_1CB017: db $F6 ; scroll text
#_1CB018: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK]よ,魔法の力を使いき
; るでないぞ。魔法のクスリを
; 持っておらぬのならば,
; 心して,奥へすすむがよい。
; むりをするでないぞ⋯。
Message_00C0:
#_1CB019: db $FE, $6B, $02 ; set window type
#_1CB01C: db $FE, $6A ; write player name
#_1CB01E: db $07, $C8 ; よ,
#_1CB020: db $FD, $2D ; write kanji - 魔
#_1CB022: db $FD, $3C ; write kanji - 法
#_1CB024: db $24 ; の
#_1CB025: db $FD, $99 ; write kanji - 力
#_1CB027: db $0E ; を
#_1CB028: db $FD, $89 ; write kanji - 使
#_1CB02A: db $01, $09 ; いき
#_1CB02C: db $F8 ; cursor to row 2
#_1CB02D: db $3A, $36, $20, $01, $2D, $CD ; るでないぞ。
#_1CB033: db $FD, $2D ; write kanji - 魔
#_1CB035: db $FD, $3C ; write kanji - 法
#_1CB037: db $24, $5A, $62, $89, $0E ; のクスリを
#_1CB03C: db $F9 ; cursor to row 3
#_1CB03D: db $FD, $DB ; write kanji - 持
#_1CB03F: db $4A, $1B, $04, $38, $22, $24, $20, $38 ; っておらぬのなら
#_1CB047: db $3D, $C8 ; ば,
#_1CB049: db $FA ; wait for key
#_1CB04A: db $F6 ; scroll text
#_1CB04B: db $FD, $E6 ; write kanji - 心
#_1CB04D: db $11, $1B, $C8 ; して,
#_1CB050: db $FD, $80 ; write kanji - 奥
#_1CB052: db $2B, $12, $12, $32, $15, $07, $01, $CD ; へすすむがよい。
#_1CB05A: db $F6 ; scroll text
#_1CB05B: db $32, $39, $0E, $12, $3A, $36, $20, $01 ; むりをするでない
#_1CB063: db $2D, $CC, $CD ; ぞ⋯。
#_1CB066: db $F6 ; scroll text
#_1CB067: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK]よ,魔法のクスリは
; もっておるか。クスリがないの
; なら,先へはすすまぬ事じゃ。
Message_00C1:
#_1CB068: db $FE, $6B, $02 ; set window type
#_1CB06B: db $FE, $6A ; write player name
#_1CB06D: db $07, $C8 ; よ,
#_1CB06F: db $FD, $2D ; write kanji - 魔
#_1CB071: db $FD, $3C ; write kanji - 法
#_1CB073: db $24, $5A, $62, $89, $28 ; のクスリは
#_1CB078: db $F8 ; cursor to row 2
#_1CB079: db $34, $4A, $1B, $04, $3A, $08, $CD, $5A ; もっておるか。ク
#_1CB081: db $62, $89, $15, $20, $01, $24 ; スリがないの
#_1CB087: db $F9 ; cursor to row 3
#_1CB088: db $20, $38, $C8 ; なら,
#_1CB08B: db $FD, $9C ; write kanji - 先
#_1CB08D: db $2B, $28, $12, $12, $30, $22 ; へはすすまぬ
#_1CB093: db $FD, $22 ; write kanji - 事
#_1CB095: db $25, $47, $CD ; じゃ。
#_1CB098: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK]よ,ここでは大小2つ
; の炎が,お前を守ってくれる
; だろう⋯。
Message_00C2:
#_1CB099: db $FE, $6B, $02 ; set window type
#_1CB09C: db $FE, $6A ; write player name
#_1CB09E: db $07, $C8, $0C, $0C, $36, $28 ; よ,ここでは
#_1CB0A4: db $FD, $5F ; write kanji - 大
#_1CB0A6: db $FD, $FA ; write kanji - 小
#_1CB0A8: db $A2, $1A ; 2つ
#_1CB0AA: db $F8 ; cursor to row 2
#_1CB0AB: db $24 ; の
#_1CB0AC: db $FD, $A9 ; write kanji - 炎
#_1CB0AE: db $15, $C8, $04 ; が,お
#_1CB0B1: db $FD, $78 ; write kanji - 前
#_1CB0B3: db $0E ; を
#_1CB0B4: db $FD, $91 ; write kanji - 守
#_1CB0B6: db $4A, $1B, $0A, $3B, $3A ; ってくれる
#_1CB0BB: db $F9 ; cursor to row 3
#_1CB0BC: db $2E, $3C, $02, $CC, $CD ; だろう⋯。
#_1CB0C1: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK]⋯,ガイコツの剣士は
; 剣だけでは倒せないわ。くずれ
; た時に,とどめをさすのよ。
Message_00C3:
#_1CB0C2: db $FE, $6B, $02 ; set window type
#_1CB0C5: db $FE, $6A ; write player name
#_1CB0C7: db $CC, $C8, $65, $51, $5C, $6A, $24 ; ⋯,ガイコツの
#_1CB0CE: db $FD, $1A ; write kanji - 剣
#_1CB0D0: db $FD, $6B ; write kanji - 士
#_1CB0D2: db $28 ; は
#_1CB0D3: db $F8 ; cursor to row 2
#_1CB0D4: db $FD, $1A ; write kanji - 剣
#_1CB0D6: db $2E, $0B, $36, $28 ; だけでは
#_1CB0DA: db $FD, $29 ; write kanji - 倒
#_1CB0DC: db $13, $20, $01, $0D, $CD, $0A, $26, $3B ; せないわ。くずれ
#_1CB0E4: db $F9 ; cursor to row 3
#_1CB0E5: db $18 ; た
#_1CB0E6: db $FD, $88 ; write kanji - 時
#_1CB0E8: db $21, $C8, $1C, $37, $33, $0E, $10, $12 ; に,とどめをさす
#_1CB0F0: db $24, $07, $CD ; のよ。
#_1CB0F3: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK]よ,ワシじゃ
; 長老サハスラ－ラじゃ。
; お前に,助言をあたえよう。
; 魔物のヤカタでマジカルミラ－
; を使えば,いつでも入口に帰る
; ことができる。忘れるでないぞ
Message_00C4:
#_1CB0F4: db $FE, $6B, $02 ; set window type
#_1CB0F7: db $FE, $6A ; write player name
#_1CB0F9: db $07, $C8, $5D, $61, $25, $47 ; よ,ワシじゃ
#_1CB0FF: db $F8 ; cursor to row 2
#_1CB100: db $FD, $8D ; write kanji - 長
#_1CB102: db $FD, $E5 ; write kanji - 老
#_1CB104: db $60, $78, $62, $88, $C9, $88, $25, $47 ; サハスラ－ラじゃ
#_1CB10C: db $CD ; 。
#_1CB10D: db $F9 ; cursor to row 3
#_1CB10E: db $04 ; お
#_1CB10F: db $FD, $78 ; write kanji - 前
#_1CB111: db $21, $C8 ; に,
#_1CB113: db $FD, $CA ; write kanji - 助
#_1CB115: db $FD, $16 ; write kanji - 言
#_1CB117: db $0E, $00, $18, $03, $07, $02, $CD ; をあたえよう。
#_1CB11E: db $FA ; wait for key
#_1CB11F: db $F6 ; scroll text
#_1CB120: db $FD, $2D ; write kanji - 魔
#_1CB122: db $FD, $51 ; write kanji - 物
#_1CB124: db $24, $55, $58, $68, $36, $80, $75, $58 ; のヤカタでマジカ
#_1CB12C: db $8A, $81, $88, $C9 ; ルミラ－
#_1CB130: db $F6 ; scroll text
#_1CB131: db $0E ; を
#_1CB132: db $FD, $89 ; write kanji - 使
#_1CB134: db $03, $3D, $C8, $01, $1A, $36, $34 ; えば,いつでも
#_1CB13B: db $FD, $49 ; write kanji - 入
#_1CB13D: db $FD, $4A ; write kanji - 口
#_1CB13F: db $21 ; に
#_1CB140: db $FD, $D7 ; write kanji - 帰
#_1CB142: db $3A ; る
#_1CB143: db $F6 ; scroll text
#_1CB144: db $0C, $1C, $15, $36, $09, $3A, $CD ; ことができる。
#_1CB14B: db $FD, $D8 ; write kanji - 忘
#_1CB14D: db $3B, $3A, $36, $20, $01, $2D ; れるでないぞ
#_1CB153: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ここは,秘密の部屋だよ〜ん。
; みんなにはないしょだよ〜ん。
Message_00C5:
#_1CB154: db $0C, $0C, $28, $C8 ; ここは,
#_1CB158: db $FD, $C1 ; write kanji - 秘
#_1CB15A: db $FD, $C2 ; write kanji - 密
#_1CB15C: db $24 ; の
#_1CB15D: db $FD, $B7 ; write kanji - 部
#_1CB15F: db $FD, $3D ; write kanji - 屋
#_1CB161: db $2E, $07, $CE, $0F, $CD ; だよ〜ん。
#_1CB166: db $F8 ; cursor to row 2
#_1CB167: db $31, $0F, $20, $21, $28, $20, $01, $11 ; みんなにはないし
#_1CB16F: db $49, $2E, $07, $CE, $0F, $CD ; ょだよ〜ん。
#_1CB175: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ハチをつかまえた。どうする?
; ▶ ビンに入れておく
;   逃がしてやる
Message_00C6:
#_1CB176: db $78, $69, $0E, $1A, $08, $30, $03, $18 ; ハチをつかまえた
#_1CB17E: db $CD, $37, $02, $12, $3A, $C6 ; 。どうする?
#_1CB184: db $F8 ; cursor to row 2
#_1CB185: db $FF, $FF, $E4, $FF, $FF, $8E, $5F, $21 ; ⎵⎵▶⎵⎵ビンに
#_1CB18D: db $FD, $49 ; write kanji - 入
#_1CB18F: db $3B, $1B, $04, $0A ; れておく
#_1CB193: db $F9 ; cursor to row 3
#_1CB194: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CB199: db $FD, $DD ; write kanji - 逃
#_1CB19B: db $15, $11, $1B, $05, $3A ; がしてやる
#_1CB1A0: db $FE, $68 ; get player selection - choose 2 low
#_1CB1A2: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ヨウセイをつかまえた。
; ▶ ビンに入れておく
;   逃がしてやる
Message_00C7:
#_1CB1A3: db $57, $52, $63, $51, $0E, $1A, $08, $30 ; ヨウセイをつかま
#_1CB1AB: db $03, $18, $CD ; えた。
#_1CB1AE: db $F8 ; cursor to row 2
#_1CB1AF: db $FF, $FF, $E4, $FF, $FF, $8E, $5F, $21 ; ⎵⎵▶⎵⎵ビンに
#_1CB1B7: db $FD, $49 ; write kanji - 入
#_1CB1B9: db $3B, $1B, $04, $0A ; れておく
#_1CB1BD: db $F9 ; cursor to row 3
#_1CB1BE: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CB1C3: db $FD, $DD ; write kanji - 逃
#_1CB1C5: db $15, $11, $1B, $05, $3A ; がしてやる
#_1CB1CA: db $FE, $68 ; get player selection - choose 2 low
#_1CB1CC: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; あきビンがありません。
; しかたがない⋯,逃がして
; あげよう。
Message_00C8:
#_1CB1CD: db $00, $09, $8E, $5F, $15, $00, $39, $30 ; あきビンがありま
#_1CB1D5: db $13, $0F, $CD ; せん。
#_1CB1D8: db $F8 ; cursor to row 2
#_1CB1D9: db $11, $08, $18, $15, $20, $01, $CC, $C8 ; しかたがない⋯,
#_1CB1E1: db $FD, $DD ; write kanji - 逃
#_1CB1E3: db $15, $11, $1B ; がして
#_1CB1E6: db $F9 ; cursor to row 3
#_1CB1E7: db $00, $1D, $07, $02, $CD ; あげよう。
#_1CB1EC: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ただいまの タイムは
; [BCD][BCD]ふん [BCD][BCD]びょう
; でした。
Message_00C9:
#_1CB1ED: db $18, $2E, $01, $30, $24, $FF, $68, $51 ; ただいまの⎵タイ
#_1CB1F5: db $82, $28 ; ムは
#_1CB1F7: db $F8 ; cursor to row 2
#_1CB1F8: db $FF, $FF ; ⎵⎵
#_1CB1FA: db $FE, $6C, $03 ; write decimal digit
#_1CB1FD: db $FE, $6C, $02 ; write decimal digit
#_1CB200: db $2A, $0F, $FF ; ふん⎵
#_1CB203: db $FE, $6C, $01 ; write decimal digit
#_1CB206: db $FE, $6C, $00 ; write decimal digit
#_1CB209: db $3E, $49, $02 ; びょう
#_1CB20C: db $F9 ; cursor to row 3
#_1CB20D: db $36, $11, $18, $CD ; でした。
#_1CB211: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 15びょういないにゴ－ルへ
; ついたら,いい物あげるよ。
; よ〜〜〜い⋯ ⋯ ⋯ ドン!
Message_00CA:
#_1CB212: db $A1, $A5, $3E, $49, $02, $01, $20, $01 ; 15びょういない
#_1CB21A: db $21, $6E, $C9, $8A, $2B ; にゴ－ルへ
#_1CB21F: db $F8 ; cursor to row 2
#_1CB220: db $1A, $01, $18, $38, $C8, $01, $01 ; ついたら,いい
#_1CB227: db $FD, $51 ; write kanji - 物
#_1CB229: db $00, $1D, $3A, $07, $CD ; あげるよ。
#_1CB22E: db $F9 ; cursor to row 3
#_1CB22F: db $07, $CE, $CE, $CE, $01, $CC, $FF, $CC ; よ〜〜〜い⋯⎵⋯
#_1CB237: db $FF, $CC, $FF, $87, $5F, $C7 ; ⎵⋯⎵ドン!
#_1CB23D: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ごうか〜く!
; おめでとうございま〜す!
; ハ－トのかけらをプレゼント!
Message_00CB:
#_1CB23E: db $1E, $02, $08, $CE, $0A, $C7 ; ごうか〜く!
#_1CB244: db $F8 ; cursor to row 2
#_1CB245: db $04, $33, $36, $1C, $02, $1E, $1F, $01 ; おめでとうござい
#_1CB24D: db $30, $CE, $12, $C7 ; ま〜す!
#_1CB251: db $F9 ; cursor to row 3
#_1CB252: db $78, $C9, $6C, $24, $08, $0B, $38, $0E ; ハ－トのかけらを
#_1CB25A: db $94, $8B, $77, $5F, $6C, $C7 ; プレゼント!
#_1CB260: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ふごうか〜く!
; 残念でした。
; また,トライして下さい!
Message_00CC:
#_1CB261: db $2A, $1E, $02, $08, $CE, $0A, $C7 ; ふごうか〜く!
#_1CB268: db $F8 ; cursor to row 2
#_1CB269: db $FD, $C6 ; write kanji - 残
#_1CB26B: db $FD, $B2 ; write kanji - 念
#_1CB26D: db $36, $11, $18, $CD ; でした。
#_1CB271: db $F9 ; cursor to row 3
#_1CB272: db $30, $18, $C8, $6C, $88, $51, $11, $1B ; また,トライして
#_1CB27A: db $FD, $61 ; write kanji - 下
#_1CB27C: db $10, $01, $C7 ; さい!
#_1CB27F: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; もう,あげる物がありませ〜ん
; ごめんなさ〜い!
Message_00CD:
#_1CB280: db $34, $02, $C8, $00, $1D, $3A ; もう,あげる
#_1CB286: db $FD, $51 ; write kanji - 物
#_1CB288: db $15, $00, $39, $30, $13, $CE, $0F ; がありませ〜ん
#_1CB28F: db $F8 ; cursor to row 2
#_1CB290: db $F9 ; cursor to row 3
#_1CB291: db $1E, $33, $0F, $20, $10, $CE, $01, $C7 ; ごめんなさ〜い!
#_1CB299: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ちゃんと,入口からはいって
; こないとダメだよ。 だって
; タイムがはかれないから⋯。
Message_00CE:
#_1CB29A: db $19, $47, $0F, $1C, $C8 ; ちゃんと,
#_1CB29F: db $FD, $49 ; write kanji - 入
#_1CB2A1: db $FD, $4A ; write kanji - 口
#_1CB2A3: db $08, $38, $28, $01, $4A, $1B ; からはいって
#_1CB2A9: db $F8 ; cursor to row 2
#_1CB2AA: db $0C, $20, $01, $1C, $7E, $83, $2E, $07 ; こないとダメだよ
#_1CB2B2: db $CD, $FF, $2E, $4A, $1B ; 。⎵だって
#_1CB2B7: db $F9 ; cursor to row 3
#_1CB2B8: db $68, $51, $82, $15, $28, $08, $3B, $20 ; タイムがはかれな
#_1CB2C0: db $01, $08, $38, $CC, $CD ; いから⋯。
#_1CB2C5: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; なんでも入る 魔法のビンは
; いらないあるか?
; 100ルピ－でOKあるね。
; どうするあるよ?
; ▶ か う
;   いらない
Message_00CF:
#_1CB2C6: db $20, $0F, $36, $34 ; なんでも
#_1CB2CA: db $FD, $49 ; write kanji - 入
#_1CB2CC: db $3A, $FF ; る⎵
#_1CB2CE: db $FD, $2D ; write kanji - 魔
#_1CB2D0: db $FD, $3C ; write kanji - 法
#_1CB2D2: db $24, $8E, $5F, $28 ; のビンは
#_1CB2D6: db $F8 ; cursor to row 2
#_1CB2D7: db $01, $38, $20, $01, $00, $3A, $08, $C6 ; いらないあるか?
#_1CB2DF: db $F9 ; cursor to row 3
#_1CB2E0: db $A1, $A0, $A0, $8A, $93, $C9, $36, $B8 ; 100ルピ－でO
#_1CB2E8: db $B4, $00, $3A, $23, $CD ; Kあるね。
#_1CB2ED: db $FA ; wait for key
#_1CB2EE: db $F6 ; scroll text
#_1CB2EF: db $37, $02, $12, $3A, $00, $3A, $07, $C6 ; どうするあるよ?
#_1CB2F7: db $F6 ; scroll text
#_1CB2F8: db $FF, $FF, $E4, $FF, $08, $FF, $FF, $02 ; ⎵⎵▶⎵か⎵⎵う
#_1CB300: db $F6 ; scroll text
#_1CB301: db $FF, $FF, $FF, $FF, $01, $38, $20, $01 ; ⎵⎵⎵⎵いらない
#_1CB309: db $FE, $68 ; get player selection - choose 2 low
#_1CB30B: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おお ありがとさんね。
; おもいっきり アタマの上に
; かかげるよろし!
Message_00D0:
#_1CB30C: db $04, $04, $FF, $00, $39, $15, $1C, $10 ; おお⎵ありがとさ
#_1CB314: db $0F, $23, $CD ; んね。
#_1CB317: db $F8 ; cursor to row 2
#_1CB318: db $04, $34, $01, $4A, $09, $39, $FF, $50 ; おもいっきり⎵ア
#_1CB320: db $68, $80, $24 ; タマの
#_1CB323: db $FD, $72 ; write kanji - 上
#_1CB325: db $21 ; に
#_1CB326: db $F9 ; cursor to row 3
#_1CB327: db $08, $08, $1D, $3A, $07, $3C, $11, $C7 ; かかげるよろし!
#_1CB32F: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; あいや〜 ザンネンあるね。
; ルピ－集めて
; また 来るよろしね。
Message_00D1:
#_1CB330: db $00, $01, $05, $CE, $FF, $6F, $5F, $73 ; あいや〜⎵ザンネ
#_1CB338: db $5F, $00, $3A, $23, $CD ; ンあるね。
#_1CB33D: db $F8 ; cursor to row 2
#_1CB33E: db $8A, $93, $C9 ; ルピ－
#_1CB341: db $FD, $E0 ; write kanji - 集
#_1CB343: db $33, $1B ; めて
#_1CB345: db $F9 ; cursor to row 3
#_1CB346: db $30, $18, $FF ; また⎵
#_1CB349: db $FD, $D6 ; write kanji - 来
#_1CB34B: db $3A, $07, $3C, $11, $23, $CD ; るよろしね。
#_1CB351: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; もう ビンはうりきれたね。
; また 来るよろしね。
; ⋯ ⋯ ⋯
Message_00D2:
#_1CB352: db $34, $02, $FF, $8E, $5F, $28, $02, $39 ; もう⎵ビンはうり
#_1CB35A: db $09, $3B, $18, $23, $CD ; きれたね。
#_1CB35F: db $F8 ; cursor to row 2
#_1CB360: db $30, $18, $FF ; また⎵
#_1CB363: db $FD, $D6 ; write kanji - 来
#_1CB365: db $3A, $07, $3C, $11, $23, $CD ; るよろしね。
#_1CB36B: db $F9 ; cursor to row 3
#_1CB36C: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1CB372: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; あいや〜 これはめずらしい
; ハチあるね。
; 100ルピ－でかうあるよ。
Message_00D3:
#_1CB373: db $00, $01, $05, $CE, $FF, $FF, $0C, $3B ; あいや〜⎵⎵これ
#_1CB37B: db $28, $33, $26, $38, $11, $01 ; はめずらしい
#_1CB381: db $F8 ; cursor to row 2
#_1CB382: db $78, $69, $00, $3A, $23, $CD ; ハチあるね。
#_1CB388: db $F9 ; cursor to row 3
#_1CB389: db $A1, $A0, $A0, $8A, $93, $C9, $36, $08 ; 100ルピ－でか
#_1CB391: db $02, $00, $3A, $07, $CD ; うあるよ。
#_1CB396: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; あいや〜 さかなをたべるは
; 体にヨロシイあるよ。
; これと,かえっこするね。
Message_00D4:
#_1CB397: db $00, $01, $05, $CE, $FF, $10, $08, $20 ; あいや〜⎵さかな
#_1CB39F: db $0E, $18, $40, $3A, $28 ; をたべるは
#_1CB3A4: db $F8 ; cursor to row 2
#_1CB3A5: db $FD, $BF ; write kanji - 体
#_1CB3A7: db $21, $57, $8C, $61, $51, $00, $3A, $07 ; にヨロシイあるよ
#_1CB3AF: db $CD ; 。
#_1CB3B0: db $F9 ; cursor to row 3
#_1CB3B1: db $0C, $3B, $1C, $C8, $08, $03, $4A, $0C ; これと,かえっこ
#_1CB3B9: db $12, $3A, $23, $CD ; するね。
#_1CB3BD: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; よう [LINK]!何だか
; たいへんそうだが オレの
; やれる物は こんなもんだけだ
Message_00D5:
#_1CB3BE: db $07, $02, $FF ; よう⎵
#_1CB3C1: db $FE, $6A ; write player name
#_1CB3C3: db $C7 ; !
#_1CB3C4: db $FD, $8B ; write kanji - 何
#_1CB3C6: db $2E, $08 ; だか
#_1CB3C8: db $F8 ; cursor to row 2
#_1CB3C9: db $18, $01, $2B, $0F, $14, $02, $2E, $15 ; たいへんそうだが
#_1CB3D1: db $FF, $54, $8B, $24 ; ⎵オレの
#_1CB3D5: db $F9 ; cursor to row 3
#_1CB3D6: db $05, $3B, $3A ; やれる
#_1CB3D9: db $FD, $51 ; write kanji - 物
#_1CB3DB: db $28, $FF, $0C, $0F, $20, $34, $0F, $2E ; は⎵こんなもんだ
#_1CB3E3: db $0B, $2E ; けだ
#_1CB3E5: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おう,あんたかい!
; よく,来たね。
; なんなりと言っとくれっ!
; ▶ 剣をきたえる
;   ちょっとよっただけ
Message_00D6:
#_1CB3E6: db $04, $02, $C8, $00, $0F, $18, $08, $01 ; おう,あんたかい
#_1CB3EE: db $C7 ; !
#_1CB3EF: db $F8 ; cursor to row 2
#_1CB3F0: db $07, $0A, $C8 ; よく,
#_1CB3F3: db $FD, $D6 ; write kanji - 来
#_1CB3F5: db $18, $23, $CD ; たね。
#_1CB3F8: db $F9 ; cursor to row 3
#_1CB3F9: db $FA ; wait for key
#_1CB3FA: db $F6 ; scroll text
#_1CB3FB: db $20, $0F, $20, $39, $1C ; なんなりと
#_1CB400: db $FD, $16 ; write kanji - 言
#_1CB402: db $4A, $1C, $0A, $3B, $4A, $C7 ; っとくれっ!
#_1CB408: db $F6 ; scroll text
#_1CB409: db $FF, $FF, $E4, $FF ; ⎵⎵▶⎵
#_1CB40D: db $FD, $1A ; write kanji - 剣
#_1CB40F: db $0E, $09, $18, $03, $3A ; をきたえる
#_1CB414: db $F6 ; scroll text
#_1CB415: db $FF, $FF, $FF, $FF, $19, $49, $4A, $1C ; ⎵⎵⎵⎵ちょっと
#_1CB41D: db $07, $4A, $18, $2E, $0B ; よっただけ
#_1CB422: db $FE, $68 ; get player selection - choose 2 low
#_1CB424: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 大まけにまけとくぜっ!
; ▶ 剣 ⋯ 10ルピ－
;   ちょっとまって
Message_00D7:
#_1CB425: db $FD, $5F ; write kanji - 大
#_1CB427: db $30, $0B, $21, $30, $0B, $1C, $0A, $27 ; まけにまけとくぜ
#_1CB42F: db $4A, $C7 ; っ!
#_1CB431: db $F8 ; cursor to row 2
#_1CB432: db $FF, $FF, $E4, $FF ; ⎵⎵▶⎵
#_1CB436: db $FD, $1A ; write kanji - 剣
#_1CB438: db $FF, $CC, $FF, $A1, $A0, $8A, $93, $C9 ; ⎵⋯⎵10ルピ－
#_1CB440: db $F9 ; cursor to row 3
#_1CB441: db $FF, $FF, $FF, $FF, $19, $49, $4A, $1C ; ⎵⎵⎵⎵ちょっと
#_1CB449: db $30, $4A, $1B ; まって
#_1CB44C: db $FE, $68 ; get player selection - choose 2 low
#_1CB44E: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 剣をきたえりゃいいんだな?
; ▶ うん
;   ちょっとまって
Message_00D8:
#_1CB44F: db $FD, $1A ; write kanji - 剣
#_1CB451: db $0E, $09, $18, $03, $39, $47, $01, $01 ; をきたえりゃいい
#_1CB459: db $0F, $2E, $20, $C6 ; んだな?
#_1CB45D: db $F8 ; cursor to row 2
#_1CB45E: db $FF, $FF, $E4, $FF, $02, $0F ; ⎵⎵▶⎵うん
#_1CB464: db $F9 ; cursor to row 3
#_1CB465: db $FF, $FF, $FF, $FF, $19, $49, $4A, $1C ; ⎵⎵⎵⎵ちょっと
#_1CB46D: db $30, $4A, $1B ; まって
#_1CB470: db $FE, $68 ; get player selection - choose 2 low
#_1CB472: db $FB ; end of message

;===================================================================================================
; Tossed fighter sword get?
;===================================================================================================
; う〜ん,それより強くは,でき
; ねえなぁ⋯。 すまねえ⋯。
Message_00D9:
#_1CB473: db $02, $CE, $0F, $C8, $14, $3B, $07, $39 ; う〜ん,それより
#_1CB47B: db $FD, $FB ; write kanji - 強
#_1CB47D: db $0A, $28, $C8, $36, $09 ; くは,でき
#_1CB482: db $F8 ; cursor to row 2
#_1CB483: db $23, $03, $20, $4B, $CC, $CD, $FF, $12 ; ねえなぁ⋯。⎵す
#_1CB48B: db $30, $23, $03, $CC, $CD ; まねえ⋯。
#_1CB490: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; また,いつでもよっとくんな!
; ほいこらっ!
; よいこらっ!
Message_00DA:
#_1CB491: db $30, $18, $C8, $01, $1A, $36, $34, $07 ; また,いつでもよ
#_1CB499: db $4A, $1C, $0A, $0F, $20, $C7 ; っとくんな!
#_1CB49F: db $F8 ; cursor to row 2
#_1CB4A0: db $FF, $FF, $FF, $2C, $01, $0C, $38, $4A ; ⎵⎵⎵ほいこらっ
#_1CB4A8: db $C7 ; !
#_1CB4A9: db $F9 ; cursor to row 3
#_1CB4AA: db $FF, $FF, $FF, $07, $01, $0C, $38, $4A ; ⎵⎵⎵よいこらっ
#_1CB4B2: db $C7 ; !
#_1CB4B3: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ほいきた,剣をちょっとばかし
; あずからしてもらうよっ!
Message_00DB:
#_1CB4B4: db $2C, $01, $09, $18, $C8 ; ほいきた,
#_1CB4B9: db $FD, $1A ; write kanji - 剣
#_1CB4BB: db $0E, $19, $49, $4A, $1C, $3D, $08, $11 ; をちょっとばかし
#_1CB4C3: db $F8 ; cursor to row 2
#_1CB4C4: db $00, $26, $08, $38, $11, $1B, $34, $38 ; あずからしてもら
#_1CB4CC: db $02, $07, $4A, $C7 ; うよっ!
#_1CB4D0: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おう,剣がきたえあがったぜ!
; そら,かかげてみなっ!
Message_00DC:
#_1CB4D1: db $04, $02, $C8 ; おう,
#_1CB4D4: db $FD, $1A ; write kanji - 剣
#_1CB4D6: db $15, $09, $18, $03, $00, $15, $4A, $18 ; がきたえあがった
#_1CB4DE: db $27, $C7 ; ぜ!
#_1CB4E0: db $F8 ; cursor to row 2
#_1CB4E1: db $14, $38, $C8, $08, $08, $1D, $1B, $31 ; そら,かかげてみ
#_1CB4E9: db $20, $4A, $C7 ; なっ!
#_1CB4EC: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ゆくえ知れずのあいぼうが
; 帰ってくりゃあ,あんたの剣も
; きたえてやれんだがねえ⋯。
Message_00DD:
#_1CB4ED: db $06, $0A, $03 ; ゆくえ
#_1CB4F0: db $FD, $93 ; write kanji - 知
#_1CB4F2: db $3B, $26, $24, $00, $01, $41, $02, $15 ; れずのあいぼうが
#_1CB4FA: db $F8 ; cursor to row 2
#_1CB4FB: db $FD, $D7 ; write kanji - 帰
#_1CB4FD: db $4A, $1B, $0A, $39, $47, $00, $C8, $00 ; ってくりゃあ,あ
#_1CB505: db $0F, $18, $24 ; んたの
#_1CB508: db $FD, $1A ; write kanji - 剣
#_1CB50A: db $34 ; も
#_1CB50B: db $F9 ; cursor to row 3
#_1CB50C: db $09, $18, $03, $1B, $05, $3B, $0F, $2E ; きたえてやれんだ
#_1CB514: db $15, $23, $03, $CC, $CD ; がねえ⋯。
#_1CB519: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おお!なんてこったい,
; あいぼうをみつけてきたのかい
; ⋯ うれしいじゃないかい⋯
; また,ウチへよっとくれい!
; そん時は,あんたの剣
; ばっちりきたえさせてもらうぜ
Message_00DE:
#_1CB51A: db $04, $04, $C7, $20, $0F, $1B, $0C, $4A ; おお!なんてこっ
#_1CB522: db $18, $01, $C8 ; たい,
#_1CB525: db $F8 ; cursor to row 2
#_1CB526: db $00, $01, $41, $02, $0E, $31, $1A, $0B ; あいぼうをみつけ
#_1CB52E: db $1B, $09, $18, $24, $08, $01 ; てきたのかい
#_1CB534: db $F9 ; cursor to row 3
#_1CB535: db $FF, $CC, $FF, $02, $3B, $11, $01, $25 ; ⎵⋯⎵うれしいじ
#_1CB53D: db $47, $20, $01, $08, $01, $CC ; ゃないかい⋯
#_1CB543: db $FA ; wait for key
#_1CB544: db $F6 ; scroll text
#_1CB545: db $30, $18, $C8, $52, $69, $2B, $07, $4A ; また,ウチへよっ
#_1CB54D: db $1C, $0A, $3B, $01, $C7 ; とくれい!
#_1CB552: db $F6 ; scroll text
#_1CB553: db $14, $0F ; そん
#_1CB555: db $FD, $88 ; write kanji - 時
#_1CB557: db $28, $C8, $00, $0F, $18, $24 ; は,あんたの
#_1CB55D: db $FD, $1A ; write kanji - 剣
#_1CB55F: db $F6 ; scroll text
#_1CB560: db $3D, $4A, $19, $39, $09, $18, $03, $10 ; ばっちりきたえさ
#_1CB568: db $13, $1B, $34, $38, $02, $27 ; せてもらうぜ
#_1CB56E: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ゲロゲロ あんた姿がかわらね
; えとこ見ると,ただもんじゃあ
; ねえな。 そうだろ?
; おれは,もともとカカリコ村に
; 住んでいたんだ。そう言えば
; あいぼうはどうしてんだろなあ
; あんた,頼むよ。
; どうか,あいぼうにあわせて
; やってケロッ。頼む!
Message_00DF:
#_1CB56F: db $6D, $8C, $6D, $8C, $FF, $00, $0F, $18 ; ゲロゲロ⎵あんた
#_1CB577: db $FD, $A2 ; write kanji - 姿
#_1CB579: db $15, $08, $0D, $38, $23 ; がかわらね
#_1CB57E: db $F8 ; cursor to row 2
#_1CB57F: db $03, $1C, $0C ; えとこ
#_1CB582: db $FD, $4C ; write kanji - 見
#_1CB584: db $3A, $1C, $C8, $18, $2E, $34, $0F, $25 ; ると,ただもんじ
#_1CB58C: db $47, $00 ; ゃあ
#_1CB58E: db $F9 ; cursor to row 3
#_1CB58F: db $23, $03, $20, $CD, $FF, $14, $02, $2E ; ねえな。⎵そうだ
#_1CB597: db $3C, $C6 ; ろ?
#_1CB599: db $FA ; wait for key
#_1CB59A: db $F6 ; scroll text
#_1CB59B: db $04, $3B, $28, $C8, $34, $1C, $34, $1C ; おれは,もともと
#_1CB5A3: db $58, $58, $89, $5C ; カカリコ
#_1CB5A7: db $FD, $8C ; write kanji - 村
#_1CB5A9: db $21 ; に
#_1CB5AA: db $F6 ; scroll text
#_1CB5AB: db $FD, $3F ; write kanji - 住
#_1CB5AD: db $0F, $36, $01, $18, $0F, $2E, $CD, $14 ; んでいたんだ。そ
#_1CB5B5: db $02 ; う
#_1CB5B6: db $FD, $16 ; write kanji - 言
#_1CB5B8: db $03, $3D ; えば
#_1CB5BA: db $F6 ; scroll text
#_1CB5BB: db $00, $01, $41, $02, $28, $37, $02, $11 ; あいぼうはどうし
#_1CB5C3: db $1B, $0F, $2E, $3C, $20, $00 ; てんだろなあ
#_1CB5C9: db $FA ; wait for key
#_1CB5CA: db $F6 ; scroll text
#_1CB5CB: db $00, $0F, $18, $C8 ; あんた,
#_1CB5CF: db $FD, $08 ; write kanji - 頼
#_1CB5D1: db $32, $07, $CD ; むよ。
#_1CB5D4: db $F6 ; scroll text
#_1CB5D5: db $37, $02, $08, $C8, $00, $01, $41, $02 ; どうか,あいぼう
#_1CB5DD: db $21, $00, $0D, $13, $1B ; にあわせて
#_1CB5E2: db $F6 ; scroll text
#_1CB5E3: db $05, $4A, $1B, $5B, $8C, $9A, $CD ; やってケロッ。
#_1CB5EA: db $FD, $08 ; write kanji - 頼
#_1CB5EC: db $32, $C7 ; む!
#_1CB5EE: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; もうしわけネェ。
; もうしばらくしてから
; 来ておくんなっ!
Message_00E0:
#_1CB5EF: db $34, $02, $11, $0D, $0B, $73, $9E, $CD ; もうしわけネェ。
#_1CB5F7: db $F8 ; cursor to row 2
#_1CB5F8: db $34, $02, $11, $3D, $38, $0A, $11, $1B ; もうしばらくして
#_1CB600: db $08, $38 ; から
#_1CB602: db $F9 ; cursor to row 3
#_1CB603: db $FD, $D6 ; write kanji - 来
#_1CB605: db $1B, $04, $0A, $0F, $20, $4A, $C7 ; ておくんなっ!
#_1CB60C: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ありがとよっ!
; ありがとよっ!
Message_00E1:
#_1CB60D: db $FF, $FF, $00, $39, $15, $1C, $07, $4A ; ⎵⎵ありがとよっ
#_1CB615: db $C7 ; !
#_1CB616: db $F8 ; cursor to row 2
#_1CB617: db $F9 ; cursor to row 3
#_1CB618: db $FF, $FF, $00, $39, $15, $1C, $07, $4A ; ⎵⎵ありがとよっ
#_1CB620: db $C7 ; !
#_1CB621: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ほらほら,シロウトが手を出す
; んじゃねえよ。 じゃまになっ
; ていけねえやい。
Message_00E2:
#_1CB622: db $2C, $38, $2C, $38, $C8, $61, $8C, $52 ; ほらほら,シロウ
#_1CB62A: db $6C, $15 ; トが
#_1CB62C: db $FD, $3E ; write kanji - 手
#_1CB62E: db $0E ; を
#_1CB62F: db $FD, $23 ; write kanji - 出
#_1CB631: db $12 ; す
#_1CB632: db $F8 ; cursor to row 2
#_1CB633: db $0F, $25, $47, $23, $03, $07, $CD, $FF ; んじゃねえよ。⎵
#_1CB63B: db $25, $47, $30, $21, $20, $4A ; じゃまになっ
#_1CB641: db $F9 ; cursor to row 3
#_1CB642: db $1B, $01, $0B, $23, $03, $05, $01, $CD ; ていけねえやい。
#_1CB64A: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; こっち側に 迷いこんだら
; こんな姿に なっちまって。
; ⋯ ⋯ ⋯
; モトの世界に いたころは
; よく フエをふいて
; あそんだものさ⋯。
; ⋯ ⋯ ⋯
; どうぶつ達の集まる小さな
; ひろ場,なつかしいなあ⋯。
; そこに,花のタネといっしょに
; オカリナをうめたんだ。
; 探してみてくれないか?
; ▶ う ん
;   いやん
Message_00E3:
#_1CB64B: db $0C, $4A, $19 ; こっち
#_1CB64E: db $FD, $5A ; write kanji - 側
#_1CB650: db $21, $FF ; に⎵
#_1CB652: db $FD, $70 ; write kanji - 迷
#_1CB654: db $01, $0C, $0F, $2E, $38 ; いこんだら
#_1CB659: db $F8 ; cursor to row 2
#_1CB65A: db $0C, $0F, $20 ; こんな
#_1CB65D: db $FD, $A2 ; write kanji - 姿
#_1CB65F: db $21, $FF, $20, $4A, $19, $30, $4A, $1B ; に⎵なっちまって
#_1CB667: db $CD ; 。
#_1CB668: db $F9 ; cursor to row 3
#_1CB669: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1CB66F: db $FA ; wait for key
#_1CB670: db $F6 ; scroll text
#_1CB671: db $84, $6C, $24 ; モトの
#_1CB674: db $FD, $E8 ; write kanji - 世
#_1CB676: db $FD, $E9 ; write kanji - 界
#_1CB678: db $21, $FF, $01, $18, $0C, $3C, $28 ; に⎵いたころは
#_1CB67F: db $F6 ; scroll text
#_1CB680: db $07, $0A, $FF, $7A, $53, $0E, $2A, $01 ; よく⎵フエをふい
#_1CB688: db $1B ; て
#_1CB689: db $F6 ; scroll text
#_1CB68A: db $00, $14, $0F, $2E, $34, $24, $10, $CC ; あそんだものさ⋯
#_1CB692: db $CD ; 。
#_1CB693: db $FA ; wait for key
#_1CB694: db $F6 ; scroll text
#_1CB695: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1CB69B: db $F6 ; scroll text
#_1CB69C: db $37, $02, $3F, $1A ; どうぶつ
#_1CB6A0: db $FD, $13 ; write kanji - 達
#_1CB6A2: db $24 ; の
#_1CB6A3: db $FD, $E0 ; write kanji - 集
#_1CB6A5: db $30, $3A ; まる
#_1CB6A7: db $FD, $FA ; write kanji - 小
#_1CB6A9: db $10, $20 ; さな
#_1CB6AB: db $F6 ; scroll text
#_1CB6AC: db $29, $3C ; ひろ
#_1CB6AE: db $FD, $A8 ; write kanji - 場
#_1CB6B0: db $C8, $20, $1A, $08, $11, $01, $20, $00 ; ,なつかしいなあ
#_1CB6B8: db $CC, $CD ; ⋯。
#_1CB6BA: db $FA ; wait for key
#_1CB6BB: db $F6 ; scroll text
#_1CB6BC: db $14, $0C, $21, $C8 ; そこに,
#_1CB6C0: db $FD, $63 ; write kanji - 花
#_1CB6C2: db $24, $68, $73, $1C, $01, $4A, $11, $49 ; のタネといっしょ
#_1CB6CA: db $21 ; に
#_1CB6CB: db $F6 ; scroll text
#_1CB6CC: db $54, $58, $89, $70, $0E, $02, $33, $18 ; オカリナをうめた
#_1CB6D4: db $0F, $2E, $CD ; んだ。
#_1CB6D7: db $F6 ; scroll text
#_1CB6D8: db $FA ; wait for key
#_1CB6D9: db $F6 ; scroll text
#_1CB6DA: db $FD, $69 ; write kanji - 探
#_1CB6DC: db $11, $1B, $31, $1B, $0A, $3B, $20, $01 ; してみてくれない
#_1CB6E4: db $08, $C6 ; か?
#_1CB6E6: db $F6 ; scroll text
#_1CB6E7: db $FF, $FF, $E4, $FF, $02, $FF, $0F ; ⎵⎵▶⎵う⎵ん
#_1CB6EE: db $F6 ; scroll text
#_1CB6EF: db $FF, $FF, $FF, $FF, $01, $05, $0F ; ⎵⎵⎵⎵いやん
#_1CB6F6: db $FE, $68 ; get player selection - choose 2 low
#_1CB6F8: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; じゃあ,このシャベルを
; きみにわたそう ⋯ ⋯ ⋯
; 頼んだよっ!
Message_00E4:
#_1CB6F9: db $25, $47, $00, $C8, $0C, $24, $61, $97 ; じゃあ,このシャ
#_1CB701: db $90, $8A, $0E ; ベルを
#_1CB704: db $F8 ; cursor to row 2
#_1CB705: db $09, $31, $21, $0D, $18, $14, $02, $FF ; きみにわたそう⎵
#_1CB70D: db $CC, $FF, $CC, $FF, $CC ; ⋯⎵⋯⎵⋯
#_1CB712: db $F9 ; cursor to row 3
#_1CB713: db $FD, $08 ; write kanji - 頼
#_1CB715: db $0F, $2E, $07, $4A, $C7 ; んだよっ!
#_1CB71A: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ⋯ ⋯ ⋯
; そうかい,じゃあ もういいよ
; さよならっ!
Message_00E5:
#_1CB71B: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1CB721: db $F8 ; cursor to row 2
#_1CB722: db $14, $02, $08, $01, $C8, $25, $47, $00 ; そうかい,じゃあ
#_1CB72A: db $FF, $34, $02, $01, $01, $07 ; ⎵もういいよ
#_1CB730: db $F9 ; cursor to row 3
#_1CB731: db $10, $07, $20, $38, $4A, $C7 ; さよならっ!
#_1CB737: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; オカリナは みつかった?
; ⋯ ⋯ ⋯
; はやく 探しておくれよ。
Message_00E6:
#_1CB738: db $54, $58, $89, $70, $28, $FF, $31, $1A ; オカリナは⎵みつ
#_1CB740: db $08, $4A, $18, $C6 ; かった?
#_1CB744: db $F8 ; cursor to row 2
#_1CB745: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1CB74B: db $F9 ; cursor to row 3
#_1CB74C: db $28, $05, $0A, $FF ; はやく⎵
#_1CB750: db $FD, $69 ; write kanji - 探
#_1CB752: db $11, $1B, $04, $0A, $3B, $07, $CD ; しておくれよ。
#_1CB759: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ありがとう [LINK] ⋯
; でも,ぼくはもう そいつを
; 吹く事は できないみたいだ。
; キミに あずかってほしい。
; そして,ぼくの住んでいた村へ
; 行くことがあったら,
; いねむりばかりしてる
; ジイさんに,わたしてやってよ
; ⋯ ⋯ ⋯
; ああ,いしきがうすれてきた⋯
; お願いだ,さいごにそいつの
; 音色を きかせておくれよ⋯
Message_00E7:
#_1CB75A: db $00, $39, $15, $1C, $02, $FF ; ありがとう⎵
#_1CB760: db $FE, $6A ; write player name
#_1CB762: db $FF, $CC ; ⎵⋯
#_1CB764: db $F8 ; cursor to row 2
#_1CB765: db $36, $34, $C8, $41, $0A, $28, $34, $02 ; でも,ぼくはもう
#_1CB76D: db $FF, $14, $01, $1A, $0E ; ⎵そいつを
#_1CB772: db $F9 ; cursor to row 3
#_1CB773: db $FD, $AD ; write kanji - 吹
#_1CB775: db $0A ; く
#_1CB776: db $FD, $22 ; write kanji - 事
#_1CB778: db $28, $FF, $36, $09, $20, $01, $31, $18 ; は⎵できないみた
#_1CB780: db $01, $2E, $CD ; いだ。
#_1CB783: db $FA ; wait for key
#_1CB784: db $F6 ; scroll text
#_1CB785: db $59, $81, $21, $FF, $00, $26, $08, $4A ; キミに⎵あずかっ
#_1CB78D: db $1B, $2C, $11, $01, $CD ; てほしい。
#_1CB792: db $F6 ; scroll text
#_1CB793: db $14, $11, $1B, $C8, $41, $0A, $24 ; そして,ぼくの
#_1CB79A: db $FD, $3F ; write kanji - 住
#_1CB79C: db $0F, $36, $01, $18 ; んでいた
#_1CB7A0: db $FD, $8C ; write kanji - 村
#_1CB7A2: db $2B ; へ
#_1CB7A3: db $F6 ; scroll text
#_1CB7A4: db $FD, $02 ; write kanji - 行
#_1CB7A6: db $0A, $0C, $1C, $15, $00, $4A, $18, $38 ; くことがあったら
#_1CB7AE: db $C8 ; ,
#_1CB7AF: db $FA ; wait for key
#_1CB7B0: db $F6 ; scroll text
#_1CB7B1: db $01, $23, $32, $39, $3D, $08, $39, $11 ; いねむりばかりし
#_1CB7B9: db $1B, $3A ; てる
#_1CB7BB: db $F6 ; scroll text
#_1CB7BC: db $75, $51, $10, $0F, $21, $C8, $0D, $18 ; ジイさんに,わた
#_1CB7C4: db $11, $1B, $05, $4A, $1B, $07 ; してやってよ
#_1CB7CA: db $F6 ; scroll text
#_1CB7CB: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1CB7D1: db $FA ; wait for key
#_1CB7D2: db $F6 ; scroll text
#_1CB7D3: db $00, $00, $C8, $01, $11, $09, $15, $02 ; ああ,いしきがう
#_1CB7DB: db $12, $3B, $1B, $09, $18, $CC ; すれてきた⋯
#_1CB7E1: db $F6 ; scroll text
#_1CB7E2: db $04 ; お
#_1CB7E3: db $FD, $0A ; write kanji - 願
#_1CB7E5: db $01, $2E, $C8, $10, $01, $1E, $21, $14 ; いだ,さいごにそ
#_1CB7ED: db $01, $1A, $24 ; いつの
#_1CB7F0: db $F6 ; scroll text
#_1CB7F1: db $FD, $AC ; write kanji - 音
#_1CB7F3: db $FD, $A4 ; write kanji - 色
#_1CB7F5: db $0E, $FF, $09, $08, $13, $1B, $04, $0A ; を⎵きかせておく
#_1CB7FD: db $3B, $07, $CC ; れよ⋯
#_1CB800: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ねあ〜ん で〜るた〜る
; まずは,長老サハスラ－ラを
; 探しなされ〜⋯。
Message_00E8:
#_1CB801: db $FE, $6D, $01 ; set window position
#_1CB804: db $23, $00, $CE, $0F, $FF, $36, $CE, $3A ; ねあ〜ん⎵で〜る
#_1CB80C: db $18, $CE, $3A ; た〜る
#_1CB80F: db $F8 ; cursor to row 2
#_1CB810: db $30, $26, $28, $C8 ; まずは,
#_1CB814: db $FD, $8D ; write kanji - 長
#_1CB816: db $FD, $E5 ; write kanji - 老
#_1CB818: db $60, $78, $62, $88, $C9, $88, $0E ; サハスラ－ラを
#_1CB81F: db $F9 ; cursor to row 3
#_1CB820: db $FD, $69 ; write kanji - 探
#_1CB822: db $11, $20, $10, $3B, $CE, $CC, $CD ; しなされ〜⋯。
#_1CB829: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; くろまによ〜んくろまによ〜ん
; サバクの入口は村に伝わるムド
; ラの書をもって開かれ〜る。
Message_00E9:
#_1CB82A: db $FE, $6D, $01 ; set window position
#_1CB82D: db $0A, $3C, $30, $21, $07, $CE, $0F, $0A ; くろまによ〜んく
#_1CB835: db $3C, $30, $21, $07, $CE, $0F ; ろまによ〜ん
#_1CB83B: db $F8 ; cursor to row 2
#_1CB83C: db $60, $8D, $5A, $24 ; サバクの
#_1CB840: db $FD, $49 ; write kanji - 入
#_1CB842: db $FD, $4A ; write kanji - 口
#_1CB844: db $28 ; は
#_1CB845: db $FD, $8C ; write kanji - 村
#_1CB847: db $21 ; に
#_1CB848: db $FD, $2E ; write kanji - 伝
#_1CB84A: db $0D, $3A, $82, $87 ; わるムド
#_1CB84E: db $F9 ; cursor to row 3
#_1CB84F: db $88, $24 ; ラの
#_1CB851: db $FD, $0E ; write kanji - 書
#_1CB853: db $0E, $34, $4A, $1B ; をもって
#_1CB857: db $FD, $4B ; write kanji - 開
#_1CB859: db $08, $3B, $CE, $3A, $CD ; かれ〜る。
#_1CB85E: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; くろまによ〜んくろまによ〜ん
; サバクにも賢者のしそんが住ん
; でお〜る。
Message_00EA:
#_1CB85F: db $FE, $6D, $01 ; set window position
#_1CB862: db $0A, $3C, $30, $21, $07, $CE, $0F, $0A ; くろまによ〜んく
#_1CB86A: db $3C, $30, $21, $07, $CE, $0F ; ろまによ〜ん
#_1CB870: db $F8 ; cursor to row 2
#_1CB871: db $60, $8D, $5A, $21, $34 ; サバクにも
#_1CB876: db $FD, $C4 ; write kanji - 賢
#_1CB878: db $FD, $1E ; write kanji - 者
#_1CB87A: db $24, $11, $14, $0F, $15 ; のしそんが
#_1CB87F: db $FD, $3F ; write kanji - 住
#_1CB881: db $0F ; ん
#_1CB882: db $F9 ; cursor to row 3
#_1CB883: db $36, $04, $CE, $3A, $CD ; でお〜る。
#_1CB888: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ねあ〜ん で〜るた〜る
; 森のキノコは,神殿の北の
; 魔法屋にもっていきなされ〜。
Message_00EB:
#_1CB889: db $FE, $6D, $01 ; set window position
#_1CB88C: db $23, $00, $CE, $0F, $FF, $36, $CE, $3A ; ねあ〜ん⎵で〜る
#_1CB894: db $18, $CE, $3A ; た〜る
#_1CB897: db $F8 ; cursor to row 2
#_1CB898: db $FD, $65 ; write kanji - 森
#_1CB89A: db $24, $59, $74, $5C, $28, $C8 ; のキノコは,
#_1CB8A0: db $FD, $05 ; write kanji - 神
#_1CB8A2: db $FD, $90 ; write kanji - 殿
#_1CB8A4: db $24 ; の
#_1CB8A5: db $FD, $7C ; write kanji - 北
#_1CB8A7: db $24 ; の
#_1CB8A8: db $F9 ; cursor to row 3
#_1CB8A9: db $FD, $2D ; write kanji - 魔
#_1CB8AB: db $FD, $3C ; write kanji - 法
#_1CB8AD: db $FD, $3D ; write kanji - 屋
#_1CB8AF: db $21, $34, $4A, $1B, $01, $09, $20, $10 ; にもっていきなさ
#_1CB8B7: db $3B, $CE, $CD ; れ〜。
#_1CB8BA: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; くろまによ〜んくろまによ〜ん
; 川をず〜とさかのぼった所に
; ゾ－ラの住む湖があ〜る。
Message_00EC:
#_1CB8BB: db $FE, $6D, $01 ; set window position
#_1CB8BE: db $0A, $3C, $30, $21, $07, $CE, $0F, $0A ; くろまによ〜んく
#_1CB8C6: db $3C, $30, $21, $07, $CE, $0F ; ろまによ〜ん
#_1CB8CC: db $F8 ; cursor to row 2
#_1CB8CD: db $FD, $B8 ; write kanji - 川
#_1CB8CF: db $0E, $26, $CE, $1C, $10, $08, $24, $41 ; をず〜とさかのぼ
#_1CB8D7: db $4A, $18 ; った
#_1CB8D9: db $FD, $55 ; write kanji - 所
#_1CB8DB: db $21 ; に
#_1CB8DC: db $F9 ; cursor to row 3
#_1CB8DD: db $7D, $C9, $88, $24 ; ゾ－ラの
#_1CB8E1: db $FD, $3F ; write kanji - 住
#_1CB8E3: db $32 ; む
#_1CB8E4: db $FD, $12 ; write kanji - 湖
#_1CB8E6: db $15, $00, $CE, $3A, $CD ; があ〜る。
#_1CB8EB: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ねあ〜ん で〜るた〜る
; 山の塔には,ム－ンパ－ルなる
; 宝があ〜る。手に入れなされ〜
Message_00ED:
#_1CB8EC: db $FE, $6D, $01 ; set window position
#_1CB8EF: db $23, $00, $CE, $0F, $FF, $36, $CE, $3A ; ねあ〜ん⎵で〜る
#_1CB8F7: db $18, $CE, $3A ; た〜る
#_1CB8FA: db $F8 ; cursor to row 2
#_1CB8FB: db $FD, $94 ; write kanji - 山
#_1CB8FD: db $24 ; の
#_1CB8FE: db $FD, $D5 ; write kanji - 塔
#_1CB900: db $21, $28, $C8, $82, $C9, $5F, $92, $C9 ; には,ム－ンパ－
#_1CB908: db $8A, $20, $3A ; ルなる
#_1CB90B: db $F9 ; cursor to row 3
#_1CB90C: db $FD, $9A ; write kanji - 宝
#_1CB90E: db $15, $00, $CE, $3A, $CD ; があ〜る。
#_1CB913: db $FD, $3E ; write kanji - 手
#_1CB915: db $21 ; に
#_1CB916: db $FD, $49 ; write kanji - 入
#_1CB918: db $3B, $20, $10, $3B, $CE ; れなされ〜
#_1CB91D: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ねあ〜ん で〜るた〜る
; マスタ－ソ－ドは,司祭の体を
; 攻撃するための物ではな〜い。
Message_00EE:
#_1CB91E: db $FE, $6D, $01 ; set window position
#_1CB921: db $23, $00, $CE, $0F, $FF, $36, $CE, $3A ; ねあ〜ん⎵で〜る
#_1CB929: db $18, $CE, $3A ; た〜る
#_1CB92C: db $F8 ; cursor to row 2
#_1CB92D: db $80, $62, $68, $C9, $64, $C9, $87, $28 ; マスタ－ソ－ドは
#_1CB935: db $C8 ; ,
#_1CB936: db $FD, $0D ; write kanji - 司
#_1CB938: db $FD, $17 ; write kanji - 祭
#_1CB93A: db $24 ; の
#_1CB93B: db $FD, $BF ; write kanji - 体
#_1CB93D: db $0E ; を
#_1CB93E: db $F9 ; cursor to row 3
#_1CB93F: db $FD, $E2 ; write kanji - 攻
#_1CB941: db $FD, $E3 ; write kanji - 撃
#_1CB943: db $12, $3A, $18, $33, $24 ; するための
#_1CB948: db $FD, $51 ; write kanji - 物
#_1CB94A: db $36, $28, $20, $CE, $01, $CD ; ではな〜い。
#_1CB950: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; くろまによ〜んくろまによ〜ん
; かじ屋の家の前のいどに,とび
; こんでみなさ〜い。
Message_00EF:
#_1CB951: db $FE, $6D, $01 ; set window position
#_1CB954: db $0A, $3C, $30, $21, $07, $CE, $0F, $0A ; くろまによ〜んく
#_1CB95C: db $3C, $30, $21, $07, $CE, $0F ; ろまによ〜ん
#_1CB962: db $F8 ; cursor to row 2
#_1CB963: db $08, $25 ; かじ
#_1CB965: db $FD, $3D ; write kanji - 屋
#_1CB967: db $24 ; の
#_1CB968: db $FD, $56 ; write kanji - 家
#_1CB96A: db $24 ; の
#_1CB96B: db $FD, $78 ; write kanji - 前
#_1CB96D: db $24, $01, $37, $21, $C8, $1C, $3E ; のいどに,とび
#_1CB974: db $F9 ; cursor to row 3
#_1CB975: db $0C, $0F, $36, $31, $20, $10, $CE, $01 ; こんでみなさ〜い
#_1CB97D: db $CD ; 。
#_1CB97E: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ううむ,きょうは,ちょうしが
; 悪うございます。 またの
; おこしをまっておりますぞ。
Message_00F0:
#_1CB97F: db $FE, $6D, $01 ; set window position
#_1CB982: db $02, $02, $32, $C8, $09, $49, $02, $28 ; ううむ,きょうは
#_1CB98A: db $C8, $19, $49, $02, $11, $15 ; ,ちょうしが
#_1CB990: db $F8 ; cursor to row 2
#_1CB991: db $FD, $85 ; write kanji - 悪
#_1CB993: db $02, $1E, $1F, $01, $30, $12, $CD, $FF ; うございます。⎵
#_1CB99B: db $30, $18, $24 ; またの
#_1CB99E: db $F9 ; cursor to row 3
#_1CB99F: db $04, $0C, $11, $0E, $30, $4A, $1B, $04 ; おこしをまってお
#_1CB9A7: db $39, $30, $12, $2D, $CD ; りますぞ。
#_1CB9AC: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おっ,あなたのカオに良くない
; ソウが出ておりますぞ⋯。
; さ,さ,うらなってしんぜよう
; おやすくしときますよ⋯。
; ▶ うらなってもらう
;   やめておく
Message_00F1:
#_1CB9AD: db $FE, $6D, $01 ; set window position
#_1CB9B0: db $04, $4A, $C8, $00, $20, $18, $24, $58 ; おっ,あなたのカ
#_1CB9B8: db $54, $21 ; オに
#_1CB9BA: db $FD, $32 ; write kanji - 良
#_1CB9BC: db $0A, $20, $01 ; くない
#_1CB9BF: db $F8 ; cursor to row 2
#_1CB9C0: db $64, $52, $15 ; ソウが
#_1CB9C3: db $FD, $23 ; write kanji - 出
#_1CB9C5: db $1B, $04, $39, $30, $12, $2D, $CC, $CD ; ておりますぞ⋯。
#_1CB9CD: db $F9 ; cursor to row 3
#_1CB9CE: db $10, $C8, $10, $C8, $02, $38, $20, $4A ; さ,さ,うらなっ
#_1CB9D6: db $1B, $11, $0F, $27, $07, $02 ; てしんぜよう
#_1CB9DC: db $FA ; wait for key
#_1CB9DD: db $F6 ; scroll text
#_1CB9DE: db $04, $05, $12, $0A, $11, $1C, $09, $30 ; おやすくしときま
#_1CB9E6: db $12, $07, $CC, $CD ; すよ⋯。
#_1CB9EA: db $F6 ; scroll text
#_1CB9EB: db $FF, $FF, $E4, $FF, $02, $38, $20, $4A ; ⎵⎵▶⎵うらなっ
#_1CB9F3: db $1B, $34, $38, $02 ; てもらう
#_1CB9F7: db $F6 ; scroll text
#_1CB9F8: db $FF, $FF, $FF, $FF, $05, $33, $1B, $04 ; ⎵⎵⎵⎵やめてお
#_1CBA00: db $0A ; く
#_1CBA01: db $FE, $68 ; get player selection - choose 2 low
#_1CBA03: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; それでは [BCD][BCD]ルピ－いただき
; ますぞ。では,あなたがゲンキ
; になりますよ〜に,ええいっ!
Message_00F2:
#_1CBA04: db $FE, $6D, $01 ; set window position
#_1CBA07: db $14, $3B, $36, $28, $FF ; それでは⎵
#_1CBA0C: db $FE, $6C, $00 ; write decimal digit
#_1CBA0F: db $FE, $6C, $01 ; write decimal digit
#_1CBA12: db $8A, $93, $C9, $01, $18, $2E, $09 ; ルピ－いただき
#_1CBA19: db $F8 ; cursor to row 2
#_1CBA1A: db $30, $12, $2D, $CD, $36, $28, $C8, $00 ; ますぞ。では,あ
#_1CBA22: db $20, $18, $15, $6D, $5F, $59 ; なたがゲンキ
#_1CBA28: db $F9 ; cursor to row 3
#_1CBA29: db $21, $20, $39, $30, $12, $07, $CE, $21 ; になりますよ〜に
#_1CBA31: db $C8, $03, $03, $01, $4A, $C7 ; ,ええいっ!
#_1CBA37: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ううむ,それはザンネン⋯。
; また,おまちしておりますぞ。
Message_00F3:
#_1CBA38: db $FE, $6D, $01 ; set window position
#_1CBA3B: db $02, $02, $32, $C8, $14, $3B, $28, $6F ; ううむ,それはザ
#_1CBA43: db $5F, $73, $5F, $CC, $CD ; ンネン⋯。
#_1CBA48: db $F8 ; cursor to row 2
#_1CBA49: db $30, $18, $C8, $04, $30, $19, $11, $1B ; また,おまちして
#_1CBA51: db $04, $39, $30, $12, $2D, $CD ; おりますぞ。
#_1CBA57: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ねあ〜ん で〜るた〜る
; あやしのサバクのあたりに,
; 何か立ってお〜る。
Message_00F4:
#_1CBA58: db $FE, $6D, $01 ; set window position
#_1CBA5B: db $23, $00, $CE, $0F, $FF, $36, $CE, $3A ; ねあ〜ん⎵で〜る
#_1CBA63: db $18, $CE, $3A ; た〜る
#_1CBA66: db $F8 ; cursor to row 2
#_1CBA67: db $00, $05, $11, $24, $60, $8D, $5A, $24 ; あやしのサバクの
#_1CBA6F: db $00, $18, $39, $21, $C8 ; あたりに,
#_1CBA74: db $F9 ; cursor to row 3
#_1CBA75: db $FD, $8B ; write kanji - 何
#_1CBA77: db $08 ; か
#_1CBA78: db $FD, $71 ; write kanji - 立
#_1CBA7A: db $4A, $1B, $04, $CE, $3A, $CD ; ってお〜る。
#_1CBA80: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; くろまによ〜んくろまによ〜ん
; 宝箱のことは闇世界の洞くつ
; に住む,じょうほう屋にきけ〜
Message_00F5:
#_1CBA81: db $FE, $6D, $01 ; set window position
#_1CBA84: db $0A, $3C, $30, $21, $07, $CE, $0F, $0A ; くろまによ〜んく
#_1CBA8C: db $3C, $30, $21, $07, $CE, $0F ; ろまによ〜ん
#_1CBA92: db $F8 ; cursor to row 2
#_1CBA93: db $FD, $9A ; write kanji - 宝
#_1CBA95: db $FD, $EA ; write kanji - 箱
#_1CBA97: db $24, $0C, $1C, $28 ; のことは
#_1CBA9B: db $FD, $57 ; write kanji - 闇
#_1CBA9D: db $FD, $E8 ; write kanji - 世
#_1CBA9F: db $FD, $E9 ; write kanji - 界
#_1CBAA1: db $24 ; の
#_1CBAA2: db $FD, $EF ; write kanji - 洞
#_1CBAA4: db $0A, $1A ; くつ
#_1CBAA6: db $F9 ; cursor to row 3
#_1CBAA7: db $21 ; に
#_1CBAA8: db $FD, $3F ; write kanji - 住
#_1CBAAA: db $32, $C8, $25, $49, $02, $2C, $02 ; む,じょうほう
#_1CBAB1: db $FD, $3D ; write kanji - 屋
#_1CBAB3: db $21, $09, $0B, $CE ; にきけ〜
#_1CBAB7: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ねあ〜ん で〜るた〜る
; かじ屋のあいぼうは,はぐれ者
; の村のはずれにお〜る。
Message_00F6:
#_1CBAB8: db $FE, $6D, $01 ; set window position
#_1CBABB: db $23, $00, $CE, $0F, $FF, $36, $CE, $3A ; ねあ〜ん⎵で〜る
#_1CBAC3: db $18, $CE, $3A ; た〜る
#_1CBAC6: db $F8 ; cursor to row 2
#_1CBAC7: db $08, $25 ; かじ
#_1CBAC9: db $FD, $3D ; write kanji - 屋
#_1CBACB: db $24, $00, $01, $41, $02, $28, $C8, $28 ; のあいぼうは,は
#_1CBAD3: db $17, $3B ; ぐれ
#_1CBAD5: db $FD, $1E ; write kanji - 者
#_1CBAD7: db $F9 ; cursor to row 3
#_1CBAD8: db $24 ; の
#_1CBAD9: db $FD, $8C ; write kanji - 村
#_1CBADB: db $24, $28, $26, $3B, $21, $04, $CE, $3A ; のはずれにお〜る
#_1CBAE3: db $CD ; 。
#_1CBAE4: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; くろまによ〜んくろまによ〜ん
; 光世界のハカ場には,宝が1つ
; ねむってお〜る。
Message_00F7:
#_1CBAE5: db $FE, $6D, $01 ; set window position
#_1CBAE8: db $0A, $3C, $30, $21, $07, $CE, $0F, $0A ; くろまによ〜んく
#_1CBAF0: db $3C, $30, $21, $07, $CE, $0F ; ろまによ〜ん
#_1CBAF6: db $F8 ; cursor to row 2
#_1CBAF7: db $FD, $73 ; write kanji - 光
#_1CBAF9: db $FD, $E8 ; write kanji - 世
#_1CBAFB: db $FD, $E9 ; write kanji - 界
#_1CBAFD: db $24, $78, $58 ; のハカ
#_1CBB00: db $FD, $A8 ; write kanji - 場
#_1CBB02: db $21, $28, $C8 ; には,
#_1CBB05: db $FD, $9A ; write kanji - 宝
#_1CBB07: db $15, $A1, $1A ; が1つ
#_1CBB0A: db $F9 ; cursor to row 3
#_1CBB0B: db $23, $32, $4A, $1B, $04, $CE, $3A, $CD ; ねむってお〜る。
#_1CBB13: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ねあ〜ん で〜るた〜る
; バクダン屋では,新しい
; バクダンもうってる事があ〜る
Message_00F8:
#_1CBB14: db $FE, $6D, $01 ; set window position
#_1CBB17: db $23, $00, $CE, $0F, $FF, $36, $CE, $3A ; ねあ〜ん⎵で〜る
#_1CBB1F: db $18, $CE, $3A ; た〜る
#_1CBB22: db $F8 ; cursor to row 2
#_1CBB23: db $8D, $5A, $7E, $5F ; バクダン
#_1CBB27: db $FD, $3D ; write kanji - 屋
#_1CBB29: db $36, $28, $C8 ; では,
#_1CBB2C: db $FD, $E7 ; write kanji - 新
#_1CBB2E: db $11, $01 ; しい
#_1CBB30: db $F9 ; cursor to row 3
#_1CBB31: db $8D, $5A, $7E, $5F, $34, $02, $4A, $1B ; バクダンもうって
#_1CBB39: db $3A ; る
#_1CBB3A: db $FD, $22 ; write kanji - 事
#_1CBB3C: db $15, $00, $CE, $3A ; があ〜る
#_1CBB40: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; くろまによ〜んくろまによ〜ん
; 闇世界のピラミッドの中には
; 何かあ〜る。
Message_00F9:
#_1CBB41: db $FE, $6D, $01 ; set window position
#_1CBB44: db $0A, $3C, $30, $21, $07, $CE, $0F, $0A ; くろまによ〜んく
#_1CBB4C: db $3C, $30, $21, $07, $CE, $0F ; ろまによ〜ん
#_1CBB52: db $F8 ; cursor to row 2
#_1CBB53: db $FD, $57 ; write kanji - 闇
#_1CBB55: db $FD, $E8 ; write kanji - 世
#_1CBB57: db $FD, $E9 ; write kanji - 界
#_1CBB59: db $24, $93, $88, $81, $9A, $87, $24 ; のピラミッドの
#_1CBB60: db $FD, $AE ; write kanji - 中
#_1CBB62: db $21, $28 ; には
#_1CBB64: db $F9 ; cursor to row 3
#_1CBB65: db $FD, $8B ; write kanji - 何
#_1CBB67: db $08, $00, $CE, $3A, $CD ; かあ〜る。
#_1CBB6C: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ねあ〜ん で〜るた〜る
; ガノンの塔はデスマウンテンに
; 結界に守られ立ってお〜る。
Message_00FA:
#_1CBB6D: db $FE, $6D, $01 ; set window position
#_1CBB70: db $23, $00, $CE, $0F, $FF, $36, $CE, $3A ; ねあ〜ん⎵で〜る
#_1CBB78: db $18, $CE, $3A ; た〜る
#_1CBB7B: db $F8 ; cursor to row 2
#_1CBB7C: db $65, $74, $5F, $24 ; ガノンの
#_1CBB80: db $FD, $D5 ; write kanji - 塔
#_1CBB82: db $28, $86, $62, $80, $52, $5F, $6B, $5F ; はデスマウンテン
#_1CBB8A: db $21 ; に
#_1CBB8B: db $F9 ; cursor to row 3
#_1CBB8C: db $FD, $83 ; write kanji - 結
#_1CBB8E: db $FD, $E9 ; write kanji - 界
#_1CBB90: db $21 ; に
#_1CBB91: db $FD, $91 ; write kanji - 守
#_1CBB93: db $38, $3B ; られ
#_1CBB95: db $FD, $71 ; write kanji - 立
#_1CBB97: db $4A, $1B, $04, $CE, $3A, $CD ; ってお〜る。
#_1CBB9D: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; くろまによ〜んくろまによ〜ん
; ガノンのとどめをさすには,
; 『銀の矢』が必要じゃあ〜。
Message_00FB:
#_1CBB9E: db $FE, $6D, $01 ; set window position
#_1CBBA1: db $0A, $3C, $30, $21, $07, $CE, $0F, $0A ; くろまによ〜んく
#_1CBBA9: db $3C, $30, $21, $07, $CE, $0F ; ろまによ〜ん
#_1CBBAF: db $F8 ; cursor to row 2
#_1CBBB0: db $65, $74, $5F, $24, $1C, $37, $33, $0E ; ガノンのとどめを
#_1CBBB8: db $10, $12, $21, $28, $C8 ; さすには,
#_1CBBBD: db $F9 ; cursor to row 3
#_1CBBBE: db $C4 ; 『
#_1CBBBF: db $FD, $DE ; write kanji - 銀
#_1CBBC1: db $24 ; の
#_1CBBC2: db $FD, $BB ; write kanji - 矢
#_1CBBC4: db $C5, $15 ; 』が
#_1CBBC6: db $FD, $30 ; write kanji - 必
#_1CBBC8: db $FD, $31 ; write kanji - 要
#_1CBBCA: db $25, $47, $00, $CE, $CD ; じゃあ〜。
#_1CBBCF: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; なあ,あんた20ルピ－ほど
; めぐんでくれたら,いい話を
; きかせてやるぜ⋯。
; どうだい?
; ▶ ルピ－をはらう
;   ききたくない
Message_00FC:
#_1CBBD0: db $20, $00, $C8, $00, $0F, $18, $A2, $A0 ; なあ,あんた20
#_1CBBD8: db $8A, $93, $C9, $2C, $37 ; ルピ－ほど
#_1CBBDD: db $F8 ; cursor to row 2
#_1CBBDE: db $33, $17, $0F, $36, $0A, $3B, $18, $38 ; めぐんでくれたら
#_1CBBE6: db $C8, $01, $01 ; ,いい
#_1CBBE9: db $FD, $A3 ; write kanji - 話
#_1CBBEB: db $0E ; を
#_1CBBEC: db $F9 ; cursor to row 3
#_1CBBED: db $09, $08, $13, $1B, $05, $3A, $27, $CC ; きかせてやるぜ⋯
#_1CBBF5: db $CD ; 。
#_1CBBF6: db $FA ; wait for key
#_1CBBF7: db $F6 ; scroll text
#_1CBBF8: db $37, $02, $2E, $01, $C6 ; どうだい?
#_1CBBFD: db $F6 ; scroll text
#_1CBBFE: db $FF, $FF, $E4, $FF, $8A, $93, $C9, $0E ; ⎵⎵▶⎵ルピ－を
#_1CBC06: db $28, $38, $02 ; はらう
#_1CBC09: db $F6 ; scroll text
#_1CBC0A: db $FF, $FF, $FF, $FF, $09, $09, $18, $0A ; ⎵⎵⎵⎵ききたく
#_1CBC12: db $20, $01 ; ない
#_1CBC14: db $FE, $68 ; get player selection - choose 2 low
#_1CBC16: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; へへっ ありがとうよっ。
; じつはな,この世界の川を
; ずっとさかのぼったところに
; ちょっとした いけがあるって
; 事だ。そこに,何か投げこんで
; みるといいぜっ。
; 何がおこるかは,知らねなあ。
; へへっ,それじゃあな⋯。
Message_00FD:
#_1CBC17: db $2B, $2B, $4A, $FF, $00, $39, $15, $1C ; へへっ⎵ありがと
#_1CBC1F: db $02, $07, $4A, $CD ; うよっ。
#_1CBC23: db $F8 ; cursor to row 2
#_1CBC24: db $25, $1A, $28, $20, $C8, $0C, $24 ; じつはな,この
#_1CBC2B: db $FD, $E8 ; write kanji - 世
#_1CBC2D: db $FD, $E9 ; write kanji - 界
#_1CBC2F: db $24 ; の
#_1CBC30: db $FD, $B8 ; write kanji - 川
#_1CBC32: db $0E ; を
#_1CBC33: db $F9 ; cursor to row 3
#_1CBC34: db $26, $4A, $1C, $10, $08, $24, $41, $4A ; ずっとさかのぼっ
#_1CBC3C: db $18, $1C, $0C, $3C, $21 ; たところに
#_1CBC41: db $FA ; wait for key
#_1CBC42: db $F6 ; scroll text
#_1CBC43: db $19, $49, $4A, $1C, $11, $18, $FF, $01 ; ちょっとした⎵い
#_1CBC4B: db $0B, $15, $00, $3A, $4A, $1B ; けがあるって
#_1CBC51: db $F6 ; scroll text
#_1CBC52: db $FD, $22 ; write kanji - 事
#_1CBC54: db $2E, $CD, $14, $0C, $21, $C8 ; だ。そこに,
#_1CBC5A: db $FD, $8B ; write kanji - 何
#_1CBC5C: db $08 ; か
#_1CBC5D: db $FD, $FC ; write kanji - 投
#_1CBC5F: db $1D, $0C, $0F, $36 ; げこんで
#_1CBC63: db $F6 ; scroll text
#_1CBC64: db $31, $3A, $1C, $01, $01, $27, $4A, $CD ; みるといいぜっ。
#_1CBC6C: db $FA ; wait for key
#_1CBC6D: db $F6 ; scroll text
#_1CBC6E: db $FD, $8B ; write kanji - 何
#_1CBC70: db $15, $04, $0C, $3A, $08, $28, $C8 ; がおこるかは,
#_1CBC77: db $FD, $93 ; write kanji - 知
#_1CBC79: db $38, $23, $20, $00, $CD ; らねなあ。
#_1CBC7E: db $F6 ; scroll text
#_1CBC7F: db $2B, $2B, $4A, $C8, $14, $3B, $25, $47 ; へへっ,それじゃ
#_1CBC87: db $00, $20, $CC, $CD ; あな⋯。
#_1CBC8B: db $F6 ; scroll text
#_1CBC8C: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; へへっ,そうかい。
; ルピ－のないやつには,きょ－
; みがないね。あっちへ行きな!
Message_00FE:
#_1CBC8D: db $2B, $2B, $4A, $C8, $14, $02, $08, $01 ; へへっ,そうかい
#_1CBC95: db $CD ; 。
#_1CBC96: db $F8 ; cursor to row 2
#_1CBC97: db $8A, $93, $C9, $24, $20, $01, $05, $1A ; ルピ－のないやつ
#_1CBC9F: db $21, $28, $C8, $09, $49, $C9 ; には,きょ－
#_1CBCA5: db $F9 ; cursor to row 3
#_1CBCA6: db $31, $15, $20, $01, $23, $CD, $00, $4A ; みがないね。あっ
#_1CBCAE: db $19, $2B ; ちへ
#_1CBCB0: db $FD, $02 ; write kanji - 行
#_1CBCB2: db $09, $20, $C7 ; きな!
#_1CBCB5: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; へへっ ありがとよっ。
; じつはな,表の世界じゃおれも
; 盗賊だったんだよ⋯。
; その時のなかまで,つかまるの
; をこわがって,逃げたやつがい
; るんだ。
; やつは,カギあけの名人だった
; んだが,今は盗賊だった事を
; かくそうとしてるらしいぜ⋯。
; へんなおじさんのふりをしてな
; へッへッへ⋯。
Message_00FF:
#_1CBCB6: db $2B, $2B, $4A, $FF, $00, $39, $15, $1C ; へへっ⎵ありがと
#_1CBCBE: db $07, $4A, $CD ; よっ。
#_1CBCC1: db $F8 ; cursor to row 2
#_1CBCC2: db $25, $1A, $28, $20, $C8 ; じつはな,
#_1CBCC7: db $FD, $42 ; write kanji - 表
#_1CBCC9: db $24 ; の
#_1CBCCA: db $FD, $E8 ; write kanji - 世
#_1CBCCC: db $FD, $E9 ; write kanji - 界
#_1CBCCE: db $25, $47, $04, $3B, $34 ; じゃおれも
#_1CBCD3: db $F9 ; cursor to row 3
#_1CBCD4: db $FD, $F1 ; write kanji - 盗
#_1CBCD6: db $FD, $EE ; write kanji - 賊
#_1CBCD8: db $2E, $4A, $18, $0F, $2E, $07, $CC, $CD ; だったんだよ⋯。
#_1CBCE0: db $FA ; wait for key
#_1CBCE1: db $F6 ; scroll text
#_1CBCE2: db $14, $24 ; その
#_1CBCE4: db $FD, $88 ; write kanji - 時
#_1CBCE6: db $24, $20, $08, $30, $36, $C8, $1A, $08 ; のなかまで,つか
#_1CBCEE: db $30, $3A, $24 ; まるの
#_1CBCF1: db $F6 ; scroll text
#_1CBCF2: db $0E, $0C, $0D, $15, $4A, $1B, $C8 ; をこわがって,
#_1CBCF9: db $FD, $DD ; write kanji - 逃
#_1CBCFB: db $1D, $18, $05, $1A, $15, $01 ; げたやつがい
#_1CBD01: db $F6 ; scroll text
#_1CBD02: db $3A, $0F, $2E, $CD ; るんだ。
#_1CBD06: db $FA ; wait for key
#_1CBD07: db $F6 ; scroll text
#_1CBD08: db $05, $1A, $28, $C8, $58, $66, $00, $0B ; やつは,カギあけ
#_1CBD10: db $24 ; の
#_1CBD11: db $FD, $6F ; write kanji - 名
#_1CBD13: db $FD, $38 ; write kanji - 人
#_1CBD15: db $2E, $4A, $18 ; だった
#_1CBD18: db $F6 ; scroll text
#_1CBD19: db $0F, $2E, $15, $C8 ; んだが,
#_1CBD1D: db $FD, $6A ; write kanji - 今
#_1CBD1F: db $28 ; は
#_1CBD20: db $FD, $F1 ; write kanji - 盗
#_1CBD22: db $FD, $EE ; write kanji - 賊
#_1CBD24: db $2E, $4A, $18 ; だった
#_1CBD27: db $FD, $22 ; write kanji - 事
#_1CBD29: db $0E ; を
#_1CBD2A: db $F6 ; scroll text
#_1CBD2B: db $08, $0A, $14, $02, $1C, $11, $1B, $3A ; かくそうとしてる
#_1CBD33: db $38, $11, $01, $27, $CC, $CD ; らしいぜ⋯。
#_1CBD39: db $FA ; wait for key
#_1CBD3A: db $F6 ; scroll text
#_1CBD3B: db $2B, $0F, $20, $04, $25, $10, $0F, $24 ; へんなおじさんの
#_1CBD43: db $2A, $39, $0E, $11, $1B, $20 ; ふりをしてな
#_1CBD49: db $F6 ; scroll text
#_1CBD4A: db $2B, $9A, $2B, $9A, $2B, $CC, $CD ; へッへッへ⋯。
#_1CBD51: db $F6 ; scroll text
#_1CBD52: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; へへっ ありがとうよっ。
; じつはな,この世界のピラミッ
; ドのなかで,ものすげ〜美人を
; みつけたんだよ。 けどよ,誰
; かが,入口をふさいじまったん
; だ。
; ふつうのバクダンじゃ,どうし
; ようもねえって話だぜ⋯。
Message_0100:
#_1CBD53: db $2B, $2B, $4A, $FF, $00, $39, $15, $1C ; へへっ⎵ありがと
#_1CBD5B: db $02, $07, $4A, $CD ; うよっ。
#_1CBD5F: db $F8 ; cursor to row 2
#_1CBD60: db $25, $1A, $28, $20, $C8, $0C, $24 ; じつはな,この
#_1CBD67: db $FD, $E8 ; write kanji - 世
#_1CBD69: db $FD, $E9 ; write kanji - 界
#_1CBD6B: db $24, $93, $88, $81, $9A ; のピラミッ
#_1CBD70: db $F9 ; cursor to row 3
#_1CBD71: db $87, $24, $20, $08, $36, $C8, $34, $24 ; ドのなかで,もの
#_1CBD79: db $12, $1D, $CE ; すげ〜
#_1CBD7C: db $FD, $68 ; write kanji - 美
#_1CBD7E: db $FD, $38 ; write kanji - 人
#_1CBD80: db $0E ; を
#_1CBD81: db $FA ; wait for key
#_1CBD82: db $F6 ; scroll text
#_1CBD83: db $31, $1A, $0B, $18, $0F, $2E, $07, $CD ; みつけたんだよ。
#_1CBD8B: db $FF, $0B, $37, $07, $C8 ; ⎵けどよ,
#_1CBD90: db $FD, $95 ; write kanji - 誰
#_1CBD92: db $F6 ; scroll text
#_1CBD93: db $08, $15, $C8 ; かが,
#_1CBD96: db $FD, $49 ; write kanji - 入
#_1CBD98: db $FD, $4A ; write kanji - 口
#_1CBD9A: db $0E, $2A, $10, $01, $25, $30, $4A, $18 ; をふさいじまった
#_1CBDA2: db $0F ; ん
#_1CBDA3: db $F6 ; scroll text
#_1CBDA4: db $2E, $CD ; だ。
#_1CBDA6: db $FA ; wait for key
#_1CBDA7: db $F6 ; scroll text
#_1CBDA8: db $2A, $1A, $02, $24, $8D, $5A, $7E, $5F ; ふつうのバクダン
#_1CBDB0: db $25, $47, $C8, $37, $02, $11 ; じゃ,どうし
#_1CBDB6: db $F6 ; scroll text
#_1CBDB7: db $07, $02, $34, $23, $03, $4A, $1B ; ようもねえって
#_1CBDBE: db $FD, $A3 ; write kanji - 話
#_1CBDC0: db $2E, $27, $CC, $CD ; だぜ⋯。
#_1CBDC4: db $F6 ; scroll text
#_1CBDC5: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; へへっ ありがとうよっ。
; じつはこの剣は,ヌマに住む
; 魔物がふらせてるらしいぜ。
; 魔物の力をうわまわる力で,
; 空気をうごかせば,剣もやむだ
; ろうよ。
Message_0101:
#_1CBDC6: db $2B, $2B, $4A, $FF, $00, $39, $15, $1C ; へへっ⎵ありがと
#_1CBDCE: db $02, $07, $4A, $CD ; うよっ。
#_1CBDD2: db $F8 ; cursor to row 2
#_1CBDD3: db $25, $1A, $28, $0C, $24 ; じつはこの
#_1CBDD8: db $FD, $19 ; write kanji - 剣
#_1CBDDA: db $28, $C8, $72, $80, $21 ; は,ヌマに
#_1CBDDF: db $FD, $3F ; write kanji - 住
#_1CBDE1: db $32 ; む
#_1CBDE2: db $F9 ; cursor to row 3
#_1CBDE3: db $FD, $2D ; write kanji - 魔
#_1CBDE5: db $FD, $51 ; write kanji - 物
#_1CBDE7: db $15, $2A, $38, $13, $1B, $3A, $38, $11 ; がふらせてるらし
#_1CBDEF: db $01, $27, $CD ; いぜ。
#_1CBDF2: db $FA ; wait for key
#_1CBDF3: db $F6 ; scroll text
#_1CBDF4: db $FD, $2D ; write kanji - 魔
#_1CBDF6: db $FD, $51 ; write kanji - 物
#_1CBDF8: db $24 ; の
#_1CBDF9: db $FD, $99 ; write kanji - 力
#_1CBDFB: db $0E, $02, $0D, $30, $0D, $3A ; をうわまわる
#_1CBE01: db $FD, $99 ; write kanji - 力
#_1CBE03: db $36, $C8 ; で,
#_1CBE05: db $F6 ; scroll text
#_1CBE06: db $FD, $AA ; write kanji - 空
#_1CBE08: db $FD, $37 ; write kanji - 気
#_1CBE0A: db $0E, $02, $1E, $08, $13, $3D, $C8 ; をうごかせば,
#_1CBE11: db $FD, $19 ; write kanji - 剣
#_1CBE13: db $34, $05, $32, $2E ; もやむだ
#_1CBE17: db $F6 ; scroll text
#_1CBE18: db $3C, $02, $07, $CD ; ろうよ。
#_1CBE1C: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ゴホゴホ [LINK]にいちゃん
; ムシを入れるビンをもってる?
; ⋯そう,もってないの ゴホッ
Message_0102:
#_1CBE1D: db $FE, $6D, $01 ; set window position
#_1CBE20: db $6E, $7C, $6E, $7C, $FF ; ゴホゴホ⎵
#_1CBE25: db $FE, $6A ; write player name
#_1CBE27: db $21, $01, $19, $47, $0F ; にいちゃん
#_1CBE2C: db $F8 ; cursor to row 2
#_1CBE2D: db $82, $61, $0E ; ムシを
#_1CBE30: db $FD, $49 ; write kanji - 入
#_1CBE32: db $3B, $3A, $8E, $5F, $0E, $34, $4A, $1B ; れるビンをもって
#_1CBE3A: db $3A, $C6 ; る?
#_1CBE3C: db $F9 ; cursor to row 3
#_1CBE3D: db $CC, $14, $02, $C8, $34, $4A, $1B, $20 ; ⋯そう,もってな
#_1CBE45: db $01, $24, $FF, $6E, $7C, $9A ; いの⎵ゴホッ
#_1CBE4B: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ぼくは,体がよわくって
; そとに出られないんだ⋯。
; ゴホ ゴホ ⋯
; 森や,山からながれてくる,
; 魔物の気にやられたんだろうっ
; てみんな言ってるけど⋯ゴホ
; これは,ゲンキになったら使う
; つもりのムシ取りあみだけど,
; おにいちゃんにかしてあげるよ
Message_0103:
#_1CBE4C: db $FE, $6D, $01 ; set window position
#_1CBE4F: db $41, $0A, $28, $C8 ; ぼくは,
#_1CBE53: db $FD, $BF ; write kanji - 体
#_1CBE55: db $15, $07, $0D, $0A, $4A, $1B ; がよわくって
#_1CBE5B: db $F8 ; cursor to row 2
#_1CBE5C: db $14, $1C, $21 ; そとに
#_1CBE5F: db $FD, $23 ; write kanji - 出
#_1CBE61: db $38, $3B, $20, $01, $0F, $2E, $CC, $CD ; られないんだ⋯。
#_1CBE69: db $F9 ; cursor to row 3
#_1CBE6A: db $6E, $7C, $FF, $6E, $7C, $FF, $CC ; ゴホ⎵ゴホ⎵⋯
#_1CBE71: db $FA ; wait for key
#_1CBE72: db $F6 ; scroll text
#_1CBE73: db $FD, $65 ; write kanji - 森
#_1CBE75: db $05, $C8 ; や,
#_1CBE77: db $FD, $94 ; write kanji - 山
#_1CBE79: db $08, $38, $20, $15, $3B, $1B, $0A, $3A ; からながれてくる
#_1CBE81: db $C8 ; ,
#_1CBE82: db $F6 ; scroll text
#_1CBE83: db $FD, $2D ; write kanji - 魔
#_1CBE85: db $FD, $51 ; write kanji - 物
#_1CBE87: db $24 ; の
#_1CBE88: db $FD, $37 ; write kanji - 気
#_1CBE8A: db $21, $05, $38, $3B, $18, $0F, $2E, $3C ; にやられたんだろ
#_1CBE92: db $02, $4A ; うっ
#_1CBE94: db $F6 ; scroll text
#_1CBE95: db $1B, $31, $0F, $20 ; てみんな
#_1CBE99: db $FD, $16 ; write kanji - 言
#_1CBE9B: db $4A, $1B, $3A, $0B, $37, $CC, $6E, $7C ; ってるけど⋯ゴホ
#_1CBEA3: db $FA ; wait for key
#_1CBEA4: db $F6 ; scroll text
#_1CBEA5: db $0C, $3B, $28, $C8, $6D, $5F, $59, $21 ; これは,ゲンキに
#_1CBEAD: db $20, $4A, $18, $38 ; なったら
#_1CBEB1: db $FD, $89 ; write kanji - 使
#_1CBEB3: db $02 ; う
#_1CBEB4: db $F6 ; scroll text
#_1CBEB5: db $1A, $34, $39, $24, $82, $61 ; つもりのムシ
#_1CBEBB: db $FD, $47 ; write kanji - 取
#_1CBEBD: db $39, $00, $31, $2E, $0B, $37, $C8 ; りあみだけど,
#_1CBEC4: db $F6 ; scroll text
#_1CBEC5: db $04, $21, $01, $19, $47, $0F, $21, $08 ; おにいちゃんにか
#_1CBECD: db $11, $1B, $00, $1D, $3A, $07 ; してあげるよ
#_1CBED3: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; あ－あ はやくゲンキに
; なりたいなあ⋯。
; ゴホ ゴホ ⋯
Message_0104:
#_1CBED4: db $FE, $6D, $01 ; set window position
#_1CBED7: db $00, $C9, $00, $FF, $28, $05, $0A, $6D ; あ－あ⎵はやくゲ
#_1CBEDF: db $5F, $59, $21 ; ンキに
#_1CBEE2: db $F8 ; cursor to row 2
#_1CBEE3: db $20, $39, $18, $01, $20, $00, $CC, $CD ; なりたいなあ⋯。
#_1CBEEB: db $F9 ; cursor to row 3
#_1CBEEC: db $6E, $7C, $FF, $6E, $7C, $FF, $CC ; ゴホ⎵ゴホ⎵⋯
#_1CBEF3: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ⋯⋯⋯⋯⋯⋯⋯⋯⋯
Message_0105:
#_1CBEF4: db $FF, $CC, $CC, $CC, $CC, $CC, $CC, $CC ; ⎵⋯⋯⋯⋯⋯⋯⋯
#_1CBEFC: db $CC, $CC ; ⋯⋯
#_1CBEFE: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; どうして⋯⋯⋯⋯⋯
Message_0106:
#_1CBEFF: db $FF, $37, $02, $11, $1B, $CC, $CC, $CC ; ⎵どうして⋯⋯⋯
#_1CBF07: db $CC, $CC ; ⋯⋯
#_1CBF09: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おれが,昔盗賊だった事を
; 知っているって?
; なあ,宝箱を開けてやるから
; みんなには,ナイショにして
; くれないかい?
; やくそくしてくれるかい?
; ▶ やくそくする
;   いいふらす
Message_0107:
#_1CBF0A: db $04, $3B, $15, $C8 ; おれが,
#_1CBF0E: db $FD, $7E ; write kanji - 昔
#_1CBF10: db $FD, $F1 ; write kanji - 盗
#_1CBF12: db $FD, $EE ; write kanji - 賊
#_1CBF14: db $2E, $4A, $18 ; だった
#_1CBF17: db $FD, $22 ; write kanji - 事
#_1CBF19: db $0E ; を
#_1CBF1A: db $F8 ; cursor to row 2
#_1CBF1B: db $FD, $93 ; write kanji - 知
#_1CBF1D: db $4A, $1B, $01, $3A, $4A, $1B, $C6 ; っているって?
#_1CBF24: db $F9 ; cursor to row 3
#_1CBF25: db $FA ; wait for key
#_1CBF26: db $F6 ; scroll text
#_1CBF27: db $20, $00, $C8 ; なあ,
#_1CBF2A: db $FD, $9A ; write kanji - 宝
#_1CBF2C: db $FD, $EA ; write kanji - 箱
#_1CBF2E: db $0E ; を
#_1CBF2F: db $FD, $4B ; write kanji - 開
#_1CBF31: db $0B, $1B, $05, $3A, $08, $38 ; けてやるから
#_1CBF37: db $F6 ; scroll text
#_1CBF38: db $31, $0F, $20, $21, $28, $C8, $70, $51 ; みんなには,ナイ
#_1CBF40: db $61, $99, $21, $11, $1B ; ショにして
#_1CBF45: db $F6 ; scroll text
#_1CBF46: db $0A, $3B, $20, $01, $08, $01, $C6 ; くれないかい?
#_1CBF4D: db $FA ; wait for key
#_1CBF4E: db $F6 ; scroll text
#_1CBF4F: db $05, $0A, $14, $0A, $11, $1B, $0A, $3B ; やくそくしてくれ
#_1CBF57: db $3A, $08, $01, $C6 ; るかい?
#_1CBF5B: db $F6 ; scroll text
#_1CBF5C: db $FF, $FF, $E4, $FF, $05, $0A, $14, $0A ; ⎵⎵▶⎵やくそく
#_1CBF64: db $12, $3A ; する
#_1CBF66: db $F6 ; scroll text
#_1CBF67: db $FF, $FF, $FF, $FF, $01, $01, $2A, $38 ; ⎵⎵⎵⎵いいふら
#_1CBF6F: db $12 ; す
#_1CBF70: db $FE, $68 ; get player selection - choose 2 low
#_1CBF72: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; それなら,いつまでも宝箱を
; ひきずってるがいいさ!
Message_0108:
#_1CBF73: db $14, $3B, $20, $38, $C8, $01, $1A, $30 ; それなら,いつま
#_1CBF7B: db $36, $34 ; でも
#_1CBF7D: db $FD, $9A ; write kanji - 宝
#_1CBF7F: db $FD, $EA ; write kanji - 箱
#_1CBF81: db $0E ; を
#_1CBF82: db $F8 ; cursor to row 2
#_1CBF83: db $29, $09, $26, $4A, $1B, $3A, $15, $01 ; ひきずってるがい
#_1CBF8B: db $01, $10, $C7 ; いさ!
#_1CBF8E: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; だれにも,言わないで
; おくれよ⋯。
Message_0109:
#_1CBF8F: db $2E, $3B, $21, $34, $C8 ; だれにも,
#_1CBF94: db $FD, $16 ; write kanji - 言
#_1CBF96: db $0D, $20, $01, $36 ; わないで
#_1CBF9A: db $F8 ; cursor to row 2
#_1CBF9B: db $04, $0A, $3B, $07, $CC, $CD ; おくれよ⋯。
#_1CBFA1: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; よし,それならここへ宝箱を
; 持っておいでよ⋯ 本当に
; みんなにはナイショだよ。
Message_010A:
#_1CBFA2: db $07, $11, $C8, $14, $3B, $20, $38, $0C ; よし,それならこ
#_1CBFAA: db $0C, $2B ; こへ
#_1CBFAC: db $FD, $9A ; write kanji - 宝
#_1CBFAE: db $FD, $EA ; write kanji - 箱
#_1CBFB0: db $0E ; を
#_1CBFB1: db $F8 ; cursor to row 2
#_1CBFB2: db $FD, $DB ; write kanji - 持
#_1CBFB4: db $4A, $1B, $04, $01, $36, $07, $CC, $FF ; っておいでよ⋯⎵
#_1CBFBC: db $FD, $24 ; write kanji - 本
#_1CBFBE: db $FD, $25 ; write kanji - 当
#_1CBFC0: db $21 ; に
#_1CBFC1: db $F9 ; cursor to row 3
#_1CBFC2: db $31, $0F, $20, $21, $28, $70, $51, $61 ; みんなにはナイシ
#_1CBFCA: db $99, $2E, $07, $CD ; ョだよ。
#_1CBFCE: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ☥☥ ☥𓄿≈☥≈ ≈𓄿≈
; ≈𓄿𓄿 ≈𓄿𓄿≈☥
; ≈≈𓄿☥≈ 𓄿≈☥☥𓄿
Message_010B:
#_1CBFCF: db $DE, $DE, $FF, $DE, $DD, $DF, $DE, $DF ; ☥☥⎵☥𓄿≈☥≈
#_1CBFD7: db $FF, $DF, $DD, $DF ; ⎵≈𓄿≈
#_1CBFDB: db $F8 ; cursor to row 2
#_1CBFDC: db $DF, $DD, $DD, $FF, $DF, $DD, $DD, $DF ; ≈𓄿𓄿⎵≈𓄿𓄿≈
#_1CBFE4: db $DE ; ☥
#_1CBFE5: db $F9 ; cursor to row 3
#_1CBFE6: db $DF, $DF, $DD, $DE, $DF, $FF, $DD, $DF ; ≈≈𓄿☥≈⎵𓄿≈
#_1CBFEE: db $DE, $DE, $DD ; ☥☥𓄿
#_1CBFF1: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; マスタ－ソ－ドを かかげよ
; されば エ－テルの魔法を
; えられん。
Message_010C:
#_1CBFF2: db $80, $62, $68, $C9, $64, $C9, $87, $0E ; マスタ－ソ－ドを
#_1CBFFA: db $FF, $08, $08, $1D, $07 ; ⎵かかげよ
#_1CBFFF: db $F8 ; cursor to row 2
#_1CC000: db $10, $3B, $3D, $FF, $53, $C9, $6B, $8A ; されば⎵エ－テル
#_1CC008: db $24 ; の
#_1CC009: db $FD, $2D ; write kanji - 魔
#_1CC00B: db $FD, $3C ; write kanji - 法
#_1CC00D: db $0E ; を
#_1CC00E: db $F9 ; cursor to row 3
#_1CC00F: db $03, $38, $3B, $0F, $CD ; えられん。
#_1CC014: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; マスタ－ソ－ドを かかげよ
; されば ボンバ－の魔法を
; えられん。
Message_010D:
#_1CC015: db $80, $62, $68, $C9, $64, $C9, $87, $0E ; マスタ－ソ－ドを
#_1CC01D: db $FF, $08, $08, $1D, $07 ; ⎵かかげよ
#_1CC022: db $F8 ; cursor to row 2
#_1CC023: db $10, $3B, $3D, $FF, $91, $5F, $8D, $C9 ; されば⎵ボンバ－
#_1CC02B: db $24 ; の
#_1CC02C: db $FD, $2D ; write kanji - 魔
#_1CC02E: db $FD, $3C ; write kanji - 法
#_1CC030: db $0E ; を
#_1CC031: db $F9 ; cursor to row 3
#_1CC032: db $03, $38, $3B, $0F, $CD ; えられん。
#_1CC037: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; やい,よくも長いネムリから
; めざめさせて くれたなっ!
; ⋯ どうも ありがとう。
; やい,こうなったら おれいを
; してやるから カクゴしろ。
; ⋯ よろしいですか?
Message_010E:
#_1CC038: db $05, $01, $C8, $07, $0A, $34 ; やい,よくも
#_1CC03E: db $FD, $8D ; write kanji - 長
#_1CC040: db $01, $73, $82, $89, $08, $38 ; いネムリから
#_1CC046: db $F8 ; cursor to row 2
#_1CC047: db $33, $1F, $33, $10, $13, $1B, $FF, $0A ; めざめさせて⎵く
#_1CC04F: db $3B, $18, $20, $4A, $C7 ; れたなっ!
#_1CC054: db $F9 ; cursor to row 3
#_1CC055: db $FF, $CC, $FF, $37, $02, $34, $FF, $00 ; ⎵⋯⎵どうも⎵あ
#_1CC05D: db $39, $15, $1C, $02, $CD ; りがとう。
#_1CC062: db $FA ; wait for key
#_1CC063: db $F6 ; scroll text
#_1CC064: db $05, $01, $C8, $0C, $02, $20, $4A, $18 ; やい,こうなった
#_1CC06C: db $38, $FF, $04, $3B, $01, $0E ; ら⎵おれいを
#_1CC072: db $F6 ; scroll text
#_1CC073: db $11, $1B, $05, $3A, $08, $38, $FF, $58 ; してやるから⎵カ
#_1CC07B: db $5A, $6E, $11, $3C, $CD ; クゴしろ。
#_1CC080: db $F6 ; scroll text
#_1CC081: db $FF, $CC, $FF, $07, $3C, $11, $01, $36 ; ⎵⋯⎵よろしいで
#_1CC089: db $12, $08, $C6 ; すか?
#_1CC08C: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ケケケ,ざまあみろ! これで
; 今までの2ぶんの1しか魔法は
; へらんぞ⋯,よかったですね。
; では,せいぜいがんばりやがれ
; ごきげんよう さようなら〜
Message_010F:
#_1CC08D: db $5B, $5B, $5B, $C8, $1F, $30, $00, $31 ; ケケケ,ざまあみ
#_1CC095: db $3C, $C7, $FF, $0C, $3B, $36 ; ろ!⎵これで
#_1CC09B: db $F8 ; cursor to row 2
#_1CC09C: db $FD, $6A ; write kanji - 今
#_1CC09E: db $30, $36, $24, $A2, $3F, $0F, $24, $A1 ; までの2ぶんの1
#_1CC0A6: db $11, $08 ; しか
#_1CC0A8: db $FD, $2D ; write kanji - 魔
#_1CC0AA: db $FD, $3C ; write kanji - 法
#_1CC0AC: db $28 ; は
#_1CC0AD: db $F9 ; cursor to row 3
#_1CC0AE: db $2B, $38, $0F, $2D, $CC, $C8, $07, $08 ; へらんぞ⋯,よか
#_1CC0B6: db $4A, $18, $36, $12, $23, $CD ; ったですね。
#_1CC0BC: db $FA ; wait for key
#_1CC0BD: db $F6 ; scroll text
#_1CC0BE: db $36, $28, $C8, $13, $01, $27, $01, $15 ; では,せいぜいが
#_1CC0C6: db $0F, $3D, $39, $05, $15, $3B ; んばりやがれ
#_1CC0CC: db $F6 ; scroll text
#_1CC0CD: db $FF, $1E, $09, $1D, $0F, $07, $02, $FF ; ⎵ごきげんよう⎵
#_1CC0D5: db $10, $07, $02, $20, $38, $CE ; さようなら〜
#_1CC0DB: db $F6 ; scroll text
#_1CC0DC: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; はるか昔 山と森にかこまれた
; 美しき ハイラルの大地⋯
; 全知全能の力を持つ黄金が
; この地方のどこかにあると
; 伝えられていました
; そのハイラルの王国で
; 黄金がかくされた聖地への
; 入口がみつかり
; 多くの人々があらそって
; 聖地へと消えていきました
; しかし 戻ってきた者はなく
; また,悪しき力がそこから
; わきでてきたと言うことです
; そこで 国の王は
; 7人の賢者に命じ聖地への
; 入口を封印させたそうです
; 封印は 2度と解かれる事は
; ないはずでした
; ⋯⋯しかし,それらのでき事が
; 伝説となったころ⋯
Message_0110:
#_1CC0DD: db $FE, $6E, $00 ; set scroll speed
#_1CC0E0: db $FE, $77, $07 ; set color
#_1CC0E3: db $FC, $03 ; set text speed
#_1CC0E5: db $FE, $6B, $02 ; set window type
#_1CC0E8: db $FE, $67 ; next image
#_1CC0EA: db $28, $3A, $08 ; はるか
#_1CC0ED: db $FD, $7E ; write kanji - 昔
#_1CC0EF: db $FF ; ⎵
#_1CC0F0: db $FD, $94 ; write kanji - 山
#_1CC0F2: db $1C ; と
#_1CC0F3: db $FD, $65 ; write kanji - 森
#_1CC0F5: db $21, $08, $0C, $30, $3B, $18 ; にかこまれた
#_1CC0FB: db $F8 ; cursor to row 2
#_1CC0FC: db $FD, $68 ; write kanji - 美
#_1CC0FE: db $11, $09, $FF, $78, $51, $88, $8A, $24 ; しき⎵ハイラルの
#_1CC106: db $FD, $5F ; write kanji - 大
#_1CC108: db $FD, $33 ; write kanji - 地
#_1CC10A: db $CC, $FF, $FF ; ⋯⎵⎵
#_1CC10D: db $F9 ; cursor to row 3
#_1CC10E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CC116: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CC11C: db $FE, $78, $09 ; wait
#_1CC11F: db $F6 ; scroll text
#_1CC120: db $FD, $BE ; write kanji - 全
#_1CC122: db $FD, $93 ; write kanji - 知
#_1CC124: db $FD, $BE ; write kanji - 全
#_1CC126: db $FD, $F3 ; write kanji - 能
#_1CC128: db $24 ; の
#_1CC129: db $FD, $99 ; write kanji - 力
#_1CC12B: db $0E ; を
#_1CC12C: db $FD, $DB ; write kanji - 持
#_1CC12E: db $1A ; つ
#_1CC12F: db $FD, $98 ; write kanji - 黄
#_1CC131: db $FD, $43 ; write kanji - 金
#_1CC133: db $15, $FF, $FF ; が⎵⎵
#_1CC136: db $F6 ; scroll text
#_1CC137: db $0C, $24 ; この
#_1CC139: db $FD, $33 ; write kanji - 地
#_1CC13B: db $FD, $20 ; write kanji - 方
#_1CC13D: db $24, $37, $0C, $08, $21, $00, $3A, $1C ; のどこかにあると
#_1CC145: db $FF, $FF ; ⎵⎵
#_1CC147: db $F6 ; scroll text
#_1CC148: db $FD, $2E ; write kanji - 伝
#_1CC14A: db $03, $38, $3B, $1B, $01, $30, $11, $18 ; えられていました
#_1CC152: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CC157: db $FE, $78, $09 ; wait
#_1CC15A: db $FE, $67 ; next image
#_1CC15C: db $FE, $67 ; next image
#_1CC15E: db $F6 ; scroll text
#_1CC15F: db $14, $24, $78, $51, $88, $8A, $24 ; そのハイラルの
#_1CC166: db $FD, $44 ; write kanji - 王
#_1CC168: db $FD, $2B ; write kanji - 国
#_1CC16A: db $36, $FF, $FF, $FF, $FF ; で⎵⎵⎵⎵
#_1CC16F: db $F6 ; scroll text
#_1CC170: db $FD, $98 ; write kanji - 黄
#_1CC172: db $FD, $43 ; write kanji - 金
#_1CC174: db $15, $08, $0A, $10, $3B, $18 ; がかくされた
#_1CC17A: db $FD, $F6 ; write kanji - 聖
#_1CC17C: db $FD, $33 ; write kanji - 地
#_1CC17E: db $2B, $24, $FF, $FF ; への⎵⎵
#_1CC182: db $F6 ; scroll text
#_1CC183: db $FD, $49 ; write kanji - 入
#_1CC185: db $FD, $4A ; write kanji - 口
#_1CC187: db $15, $31, $1A, $08, $39, $FF, $FF, $FF ; がみつかり⎵⎵⎵
#_1CC18F: db $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵
#_1CC193: db $FE, $78, $07 ; wait
#_1CC196: db $F6 ; scroll text
#_1CC197: db $FD, $F5 ; write kanji - 多
#_1CC199: db $0A, $24 ; くの
#_1CC19B: db $FD, $38 ; write kanji - 人
#_1CC19D: db $FD, $A5 ; write kanji - 々
#_1CC19F: db $15, $00, $38, $14, $4A, $1B, $FF, $FF ; があらそって⎵⎵
#_1CC1A7: db $FF ; ⎵
#_1CC1A8: db $F6 ; scroll text
#_1CC1A9: db $FD, $F6 ; write kanji - 聖
#_1CC1AB: db $FD, $33 ; write kanji - 地
#_1CC1AD: db $2B, $1C ; へと
#_1CC1AF: db $FD, $9D ; write kanji - 消
#_1CC1B1: db $03, $1B, $01, $09, $30, $11, $18, $FF ; えていきました⎵
#_1CC1B9: db $FF ; ⎵
#_1CC1BA: db $F6 ; scroll text
#_1CC1BB: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CC1C3: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CC1C9: db $FE, $78, $07 ; wait
#_1CC1CC: db $F6 ; scroll text
#_1CC1CD: db $11, $08, $11, $FF ; しかし⎵
#_1CC1D1: db $FD, $0F ; write kanji - 戻
#_1CC1D3: db $4A, $1B, $09, $18 ; ってきた
#_1CC1D7: db $FD, $1E ; write kanji - 者
#_1CC1D9: db $28, $20, $0A, $FF ; はなく⎵
#_1CC1DD: db $F6 ; scroll text
#_1CC1DE: db $30, $18, $C8 ; また,
#_1CC1E1: db $FD, $85 ; write kanji - 悪
#_1CC1E3: db $11, $09 ; しき
#_1CC1E5: db $FD, $99 ; write kanji - 力
#_1CC1E7: db $15, $14, $0C, $08, $38, $FF, $FF ; がそこから⎵⎵
#_1CC1EE: db $F6 ; scroll text
#_1CC1EF: db $0D, $09, $36, $1B, $09, $18, $1C ; わきでてきたと
#_1CC1F6: db $FD, $16 ; write kanji - 言
#_1CC1F8: db $02, $0C, $1C, $36, $12, $FF ; うことです⎵
#_1CC1FE: db $FE, $78, $09 ; wait
#_1CC201: db $FE, $67 ; next image
#_1CC203: db $FE, $67 ; next image
#_1CC205: db $F6 ; scroll text
#_1CC206: db $14, $0C, $36, $FF ; そこで⎵
#_1CC20A: db $FD, $2B ; write kanji - 国
#_1CC20C: db $24 ; の
#_1CC20D: db $FD, $44 ; write kanji - 王
#_1CC20F: db $28, $FF, $FF, $FF, $FF, $FF, $FF ; は⎵⎵⎵⎵⎵⎵
#_1CC216: db $F6 ; scroll text
#_1CC217: db $A7 ; 7
#_1CC218: db $FD, $38 ; write kanji - 人
#_1CC21A: db $24 ; の
#_1CC21B: db $FD, $C4 ; write kanji - 賢
#_1CC21D: db $FD, $1E ; write kanji - 者
#_1CC21F: db $21 ; に
#_1CC220: db $FD, $E4 ; write kanji - 命
#_1CC222: db $25 ; じ
#_1CC223: db $FD, $F6 ; write kanji - 聖
#_1CC225: db $FD, $33 ; write kanji - 地
#_1CC227: db $2B, $24, $FF, $FF ; への⎵⎵
#_1CC22B: db $F6 ; scroll text
#_1CC22C: db $FD, $49 ; write kanji - 入
#_1CC22E: db $FD, $4A ; write kanji - 口
#_1CC230: db $0E ; を
#_1CC231: db $FD, $9E ; write kanji - 封
#_1CC233: db $FD, $35 ; write kanji - 印
#_1CC235: db $10, $13, $18, $14, $02, $36, $12, $FF ; させたそうです⎵
#_1CC23D: db $FF ; ⎵
#_1CC23E: db $FE, $78, $09 ; wait
#_1CC241: db $FE, $67 ; next image
#_1CC243: db $FE, $67 ; next image
#_1CC245: db $F6 ; scroll text
#_1CC246: db $FD, $9E ; write kanji - 封
#_1CC248: db $FD, $35 ; write kanji - 印
#_1CC24A: db $28, $FF, $A2 ; は⎵2
#_1CC24D: db $FD, $2A ; write kanji - 度
#_1CC24F: db $1C ; と
#_1CC250: db $FD, $1C ; write kanji - 解
#_1CC252: db $08, $3B, $3A ; かれる
#_1CC255: db $FD, $22 ; write kanji - 事
#_1CC257: db $28, $FF ; は⎵
#_1CC259: db $F6 ; scroll text
#_1CC25A: db $20, $01, $28, $26, $36, $11, $18, $FF ; ないはずでした⎵
#_1CC262: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CC268: db $F6 ; scroll text
#_1CC269: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CC271: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CC277: db $FE, $78, $09 ; wait
#_1CC27A: db $F6 ; scroll text
#_1CC27B: db $CC, $CC, $11, $08, $11, $C8, $14, $3B ; ⋯⋯しかし,それ
#_1CC283: db $38, $24, $36, $09 ; らのでき
#_1CC287: db $FD, $22 ; write kanji - 事
#_1CC289: db $15 ; が
#_1CC28A: db $F6 ; scroll text
#_1CC28B: db $FD, $2E ; write kanji - 伝
#_1CC28D: db $FD, $2F ; write kanji - 説
#_1CC28F: db $1C, $20, $4A, $18, $0C, $3C, $CC, $FF ; となったころ⋯⎵
#_1CC297: db $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵
#_1CC29B: db $F6 ; scroll text
#_1CC29C: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CC2A4: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CC2AA: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ここに,封印をとこうとたくら
; む,ナゾの司祭アグニムがいま
; した。彼は国王をほうむり⋯。
Message_0111:
#_1CC2AB: db $FE, $6B, $02 ; set window type
#_1CC2AE: db $FE, $77, $07 ; set color
#_1CC2B1: db $FC, $03 ; set text speed
#_1CC2B3: db $F7 ; cursor to row 1
#_1CC2B4: db $0C, $0C, $21, $C8 ; ここに,
#_1CC2B8: db $FD, $9E ; write kanji - 封
#_1CC2BA: db $FD, $35 ; write kanji - 印
#_1CC2BC: db $0E, $1C, $0C, $02, $1C, $18, $0A, $38 ; をとこうとたくら
#_1CC2C4: db $F8 ; cursor to row 2
#_1CC2C5: db $32, $C8, $70, $7D, $24 ; む,ナゾの
#_1CC2CA: db $FD, $0D ; write kanji - 司
#_1CC2CC: db $FD, $17 ; write kanji - 祭
#_1CC2CE: db $50, $67, $71, $82, $15, $01, $30 ; アグニムがいま
#_1CC2D5: db $F9 ; cursor to row 3
#_1CC2D6: db $11, $18, $CD ; した。
#_1CC2D9: db $FD, $14 ; write kanji - 彼
#_1CC2DB: db $28 ; は
#_1CC2DC: db $FD, $2B ; write kanji - 国
#_1CC2DE: db $FD, $44 ; write kanji - 王
#_1CC2E0: db $0E, $2C, $02, $32, $39, $CC, $CD ; をほうむり⋯。
#_1CC2E7: db $FE, $78, $05 ; wait
#_1CC2EA: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 城の兵達をあやつって7賢者の
; 血をひく娘達を,つぎつぎイケ
; ニエにささげていったのです。
Message_0112:
#_1CC2EB: db $FE, $6B, $02 ; set window type
#_1CC2EE: db $FE, $77, $07 ; set color
#_1CC2F1: db $FC, $03 ; set text speed
#_1CC2F3: db $F7 ; cursor to row 1
#_1CC2F4: db $FD, $01 ; write kanji - 城
#_1CC2F6: db $24 ; の
#_1CC2F7: db $FD, $3A ; write kanji - 兵
#_1CC2F9: db $FD, $13 ; write kanji - 達
#_1CC2FB: db $0E, $00, $05, $1A, $4A, $1B, $A7 ; をあやつって7
#_1CC302: db $FD, $C4 ; write kanji - 賢
#_1CC304: db $FD, $1E ; write kanji - 者
#_1CC306: db $24 ; の
#_1CC307: db $F8 ; cursor to row 2
#_1CC308: db $FD, $B9 ; write kanji - 血
#_1CC30A: db $0E, $29, $0A ; をひく
#_1CC30D: db $FD, $00 ; write kanji - 娘
#_1CC30F: db $FD, $13 ; write kanji - 達
#_1CC311: db $0E, $C8, $1A, $16, $1A, $16, $51, $5B ; を,つぎつぎイケ
#_1CC319: db $F9 ; cursor to row 3
#_1CC31A: db $71, $53, $21, $10, $10, $1D, $1B, $01 ; ニエにささげてい
#_1CC322: db $4A, $18, $24, $36, $12, $CD ; ったのです。
#_1CC328: db $FE, $78, $05 ; wait
#_1CC32B: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; そして,王女ゼルダがイケニエ
; にささげられる運命の時も,
; もうそこまでせまっていました
Message_0113:
#_1CC32C: db $FE, $6B, $02 ; set window type
#_1CC32F: db $FE, $77, $07 ; set color
#_1CC332: db $FC, $03 ; set text speed
#_1CC334: db $F7 ; cursor to row 1
#_1CC335: db $14, $11, $1B, $C8 ; そして,
#_1CC339: db $FD, $44 ; write kanji - 王
#_1CC33B: db $FD, $15 ; write kanji - 女
#_1CC33D: db $77, $8A, $7E, $15, $51, $5B, $71, $53 ; ゼルダがイケニエ
#_1CC345: db $F8 ; cursor to row 2
#_1CC346: db $21, $10, $10, $1D, $38, $3B, $3A ; にささげられる
#_1CC34D: db $FD, $4F ; write kanji - 運
#_1CC34F: db $FD, $E4 ; write kanji - 命
#_1CC351: db $24 ; の
#_1CC352: db $FD, $88 ; write kanji - 時
#_1CC354: db $34, $C8, $FF ; も,⎵
#_1CC357: db $F9 ; cursor to row 3
#_1CC358: db $34, $02, $14, $0C, $30, $36, $13, $30 ; もうそこまでせま
#_1CC360: db $4A, $1B, $01, $30, $11, $18 ; っていました
#_1CC366: db $FE, $78, $05 ; wait
#_1CC369: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; カギがかかっていて
; どうしても開かない。
; とりあえず 持っていこう。
Message_0114:
#_1CC36A: db $58, $66, $15, $08, $08, $4A, $1B, $01 ; カギがかかってい
#_1CC372: db $1B ; て
#_1CC373: db $F8 ; cursor to row 2
#_1CC374: db $37, $02, $11, $1B, $34 ; どうしても
#_1CC379: db $FD, $4B ; write kanji - 開
#_1CC37B: db $08, $20, $01, $CD ; かない。
#_1CC37F: db $F9 ; cursor to row 3
#_1CC380: db $1C, $39, $00, $03, $26, $FF ; とりあえず⎵
#_1CC386: db $FD, $DB ; write kanji - 持
#_1CC388: db $4A, $1B, $01, $0C, $02, $CD ; っていこう。
#_1CC38E: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; バクダン30コで100ルピ－
; 30コで100ルピ－でござい
; ます。 かってやって下さい。
Message_0115:
#_1CC38F: db $8D, $5A, $7E, $5F, $A3, $A0, $5C, $36 ; バクダン30コで
#_1CC397: db $A1, $A0, $A0, $8A, $93, $C9 ; 100ルピ－
#_1CC39D: db $F8 ; cursor to row 2
#_1CC39E: db $A3, $A0, $5C, $36, $A1, $A0, $A0, $8A ; 30コで100ル
#_1CC3A6: db $93, $C9, $36, $1E, $1F, $01 ; ピ－でござい
#_1CC3AC: db $F9 ; cursor to row 3
#_1CC3AD: db $30, $12, $CD, $FF, $08, $4A, $1B, $05 ; ます。⎵かってや
#_1CC3B5: db $4A, $1B ; って
#_1CC3B7: db $FD, $61 ; write kanji - 下
#_1CC3B9: db $10, $01, $CD ; さい。
#_1CC3BC: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; バクダン30コで100ルピ－
; いまなら,新セイヒンも1コ
; 100ルピ－でおわけしてます
Message_0116:
#_1CC3BD: db $8D, $5A, $7E, $5F, $A3, $A0, $5C, $36 ; バクダン30コで
#_1CC3C5: db $A1, $A0, $A0, $8A, $93, $C9 ; 100ルピ－
#_1CC3CB: db $F8 ; cursor to row 2
#_1CC3CC: db $01, $30, $20, $38, $C8 ; いまなら,
#_1CC3D1: db $FD, $E7 ; write kanji - 新
#_1CC3D3: db $63, $51, $79, $5F, $34, $A1, $5C ; セイヒンも1コ
#_1CC3DA: db $F9 ; cursor to row 3
#_1CC3DB: db $A1, $A0, $A0, $8A, $93, $C9, $36, $04 ; 100ルピ－でお
#_1CC3E3: db $0D, $0B, $11, $1B, $30, $12 ; わけしてます
#_1CC3E9: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ありがとうございました。
; ありがとうございました。
Message_0117:
#_1CC3EA: db $00, $39, $15, $1C, $02, $1E, $1F, $01 ; ありがとうござい
#_1CC3F2: db $30, $11, $18, $CD ; ました。
#_1CC3F6: db $F8 ; cursor to row 2
#_1CC3F7: db $00, $39, $15, $1C, $02, $1E, $1F, $01 ; ありがとうござい
#_1CC3FF: db $30, $11, $18, $CD ; ました。
#_1CC403: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ありがとうございました。
; そのバクダンは,Aボタンで
; きりはなせます。お忘れなく⋯
Message_0118:
#_1CC404: db $00, $39, $15, $1C, $02, $1E, $1F, $01 ; ありがとうござい
#_1CC40C: db $30, $11, $18, $CD ; ました。
#_1CC410: db $F8 ; cursor to row 2
#_1CC411: db $14, $24, $8D, $5A, $7E, $5F, $28, $C8 ; そのバクダンは,
#_1CC419: db $AA, $91, $68, $5F, $36 ; Aボタンで
#_1CC41E: db $F9 ; cursor to row 3
#_1CC41F: db $09, $39, $28, $20, $13, $30, $12, $CD ; きりはなせます。
#_1CC427: db $04 ; お
#_1CC428: db $FD, $D8 ; write kanji - 忘
#_1CC42A: db $3B, $20, $0A, $CC ; れなく⋯
#_1CC42E: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; キキッ,100ルピ－くれたら
; ここの入口を開けてやっても
; いいぜっ。キキッキキッ!
; どうする?
; ▶ 開けてもらう
;   じぶんでやってみる
Message_0119:
#_1CC42F: db $59, $59, $9A, $C8, $A1, $A0, $A0, $8A ; キキッ,100ル
#_1CC437: db $93, $C9, $0A, $3B, $18, $38 ; ピ－くれたら
#_1CC43D: db $F8 ; cursor to row 2
#_1CC43E: db $0C, $0C, $24 ; ここの
#_1CC441: db $FD, $49 ; write kanji - 入
#_1CC443: db $FD, $4A ; write kanji - 口
#_1CC445: db $0E ; を
#_1CC446: db $FD, $4B ; write kanji - 開
#_1CC448: db $0B, $1B, $05, $4A, $1B, $34 ; けてやっても
#_1CC44E: db $F9 ; cursor to row 3
#_1CC44F: db $01, $01, $27, $4A, $CD, $59, $59, $9A ; いいぜっ。キキッ
#_1CC457: db $59, $59, $9A, $C7 ; キキッ!
#_1CC45B: db $FA ; wait for key
#_1CC45C: db $F6 ; scroll text
#_1CC45D: db $37, $02, $12, $3A, $C6 ; どうする?
#_1CC462: db $F6 ; scroll text
#_1CC463: db $FF, $FF, $E4, $FF ; ⎵⎵▶⎵
#_1CC467: db $FD, $4B ; write kanji - 開
#_1CC469: db $0B, $1B, $34, $38, $02 ; けてもらう
#_1CC46E: db $F6 ; scroll text
#_1CC46F: db $FF, $FF, $FF, $FF, $25, $3F, $0F, $36 ; ⎵⎵⎵⎵じぶんで
#_1CC477: db $05, $4A, $1B, $31, $3A ; やってみる
#_1CC47C: db $FE, $68 ; get player selection - choose 2 low
#_1CC47E: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; キキッ! ふ〜ん。
; じゃあ,じぶんでやってみなっ
; キッキキ－!
Message_011A:
#_1CC47F: db $59, $59, $9A, $C7, $FF, $2A, $CE, $0F ; キキッ!⎵ふ〜ん
#_1CC487: db $CD ; 。
#_1CC488: db $F8 ; cursor to row 2
#_1CC489: db $25, $47, $00, $C8, $25, $3F, $0F, $36 ; じゃあ,じぶんで
#_1CC491: db $05, $4A, $1B, $31, $20, $4A ; やってみなっ
#_1CC497: db $F9 ; cursor to row 3
#_1CC498: db $59, $9A, $59, $59, $C9, $C7 ; キッキキ－!
#_1CC49E: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; キキッ! そうこなくっちゃ。
; じゃあ100ルピ－はいただい
; とくからなっ! キッキキ－!
Message_011B:
#_1CC49F: db $59, $59, $9A, $C7, $FF, $14, $02, $0C ; キキッ!⎵そうこ
#_1CC4A7: db $20, $0A, $4A, $19, $47, $CD ; なくっちゃ。
#_1CC4AD: db $F8 ; cursor to row 2
#_1CC4AE: db $25, $47, $00, $A1, $A0, $A0, $8A, $93 ; じゃあ100ルピ
#_1CC4B6: db $C9, $28, $01, $18, $2E, $01 ; －はいただい
#_1CC4BC: db $F9 ; cursor to row 3
#_1CC4BD: db $1C, $0A, $08, $38, $20, $4A, $C7, $FF ; とくからなっ!⎵
#_1CC4C5: db $59, $9A, $59, $59, $C9, $C7 ; キッキキ－!
#_1CC4CB: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おいら,サルキッキ!
; 何よりも,ルピ－が大好き。
; あんた10ルピ－くれるかい?
; どうする?
; ▶ 10ルピ－あげる
;   ぜったいあげない
Message_011C:
#_1CC4CC: db $04, $01, $38, $C8, $60, $8A, $59, $9A ; おいら,サルキッ
#_1CC4D4: db $59, $C7 ; キ!
#_1CC4D6: db $F8 ; cursor to row 2
#_1CC4D7: db $FD, $8B ; write kanji - 何
#_1CC4D9: db $07, $39, $34, $C8, $8A, $93, $C9, $15 ; よりも,ルピ－が
#_1CC4E1: db $FD, $5F ; write kanji - 大
#_1CC4E3: db $FD, $6D ; write kanji - 好
#_1CC4E5: db $09, $CD ; き。
#_1CC4E7: db $F9 ; cursor to row 3
#_1CC4E8: db $00, $0F, $18, $A1, $A0, $8A, $93, $C9 ; あんた10ルピ－
#_1CC4F0: db $0A, $3B, $3A, $08, $01, $C6 ; くれるかい?
#_1CC4F6: db $FA ; wait for key
#_1CC4F7: db $F6 ; scroll text
#_1CC4F8: db $37, $02, $12, $3A, $C6 ; どうする?
#_1CC4FD: db $F6 ; scroll text
#_1CC4FE: db $FF, $FF, $E4, $FF, $A1, $A0, $8A, $93 ; ⎵⎵▶⎵10ルピ
#_1CC506: db $C9, $00, $1D, $3A ; －あげる
#_1CC50A: db $F6 ; scroll text
#_1CC50B: db $FF, $FF, $FF, $FF, $27, $4A, $18, $01 ; ⎵⎵⎵⎵ぜったい
#_1CC513: db $00, $1D, $20, $01 ; あげない
#_1CC517: db $FE, $68 ; get player selection - choose 2 low
#_1CC519: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; キキッ! そうこなくっちゃっ
; しばらく,あんたのおともを
; してやるぜっ キッキキ〜!
Message_011D:
#_1CC51A: db $59, $59, $9A, $C7, $FF, $14, $02, $0C ; キキッ!⎵そうこ
#_1CC522: db $20, $0A, $4A, $19, $47, $4A ; なくっちゃっ
#_1CC528: db $F8 ; cursor to row 2
#_1CC529: db $11, $3D, $38, $0A, $C8, $00, $0F, $18 ; しばらく,あんた
#_1CC531: db $24, $04, $1C, $34, $0E ; のおともを
#_1CC536: db $F9 ; cursor to row 3
#_1CC537: db $11, $1B, $05, $3A, $27, $4A, $FF, $59 ; してやるぜっ⎵キ
#_1CC53F: db $9A, $59, $59, $CE, $C7 ; ッキキ〜!
#_1CC544: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; キキッ,ふ〜ん⋯。
; じゃあ,あんたにようはないぜ
; バイバイッ キッキキ〜!
Message_011E:
#_1CC545: db $59, $59, $9A, $C8, $2A, $CE, $0F, $CC ; キキッ,ふ〜ん⋯
#_1CC54D: db $CD ; 。
#_1CC54E: db $F8 ; cursor to row 2
#_1CC54F: db $25, $47, $00, $C8, $00, $0F, $18, $21 ; じゃあ,あんたに
#_1CC557: db $07, $02, $28, $20, $01, $27 ; ようはないぜ
#_1CC55D: db $F9 ; cursor to row 3
#_1CC55E: db $8D, $51, $8D, $51, $9A, $FF, $59, $9A ; バイバイッ⎵キッ
#_1CC566: db $59, $59, $CE, $C7 ; キキ〜!
#_1CC56A: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; キキッ,何してやがるっ!
; おいらは,つきあわね－ぜっ!
Message_011F:
#_1CC56B: db $59, $59, $9A, $C8 ; キキッ,
#_1CC56F: db $FD, $8B ; write kanji - 何
#_1CC571: db $11, $1B, $05, $15, $3A, $4A, $C7 ; してやがるっ!
#_1CC578: db $F8 ; cursor to row 2
#_1CC579: db $04, $01, $38, $28, $C8, $1A, $09, $00 ; おいらは,つきあ
#_1CC581: db $0D, $23, $C9, $27, $4A, $C7 ; わね－ぜっ!
#_1CC587: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ふう ありがとうございます。
; 助かりました。どうか
; そとまで連れていって下さい。
Message_0120:
#_1CC588: db $2A, $02, $FF, $00, $39, $15, $1C, $02 ; ふう⎵ありがとう
#_1CC590: db $1E, $1F, $01, $30, $12, $CD ; ございます。
#_1CC596: db $F8 ; cursor to row 2
#_1CC597: db $FD, $CA ; write kanji - 助
#_1CC599: db $08, $39, $30, $11, $18, $CD, $37, $02 ; かりました。どう
#_1CC5A1: db $08 ; か
#_1CC5A2: db $F9 ; cursor to row 3
#_1CC5A3: db $14, $1C, $30, $36 ; そとまで
#_1CC5A7: db $FD, $40 ; write kanji - 連
#_1CC5A9: db $3B, $1B, $01, $4A, $1B ; れていって
#_1CC5AE: db $FD, $61 ; write kanji - 下
#_1CC5B0: db $10, $01, $CD ; さい。
#_1CC5B3: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ぎぃやぁぁぁ〜!
; ま,まぶしい〜っ!
Message_0121:
#_1CC5B4: db $16, $4C, $05, $4B, $4B, $4B, $CE, $C7 ; ぎぃやぁぁぁ〜!
#_1CC5BC: db $F8 ; cursor to row 2
#_1CC5BD: db $30, $C8, $30, $3F, $11, $01, $CE, $4A ; ま,まぶしい〜っ
#_1CC5C5: db $C7 ; !
#_1CC5C6: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; あっ,⋯ まって下さい。
; そっちへ行かないで⋯。
Message_0122:
#_1CC5C7: db $00, $4A, $C8, $CC, $FF, $30, $4A, $1B ; あっ,⋯⎵まって
#_1CC5CF: db $FD, $61 ; write kanji - 下
#_1CC5D1: db $10, $01, $CD ; さい。
#_1CC5D4: db $F8 ; cursor to row 2
#_1CC5D5: db $14, $4A, $19, $2B ; そっちへ
#_1CC5D9: db $FD, $02 ; write kanji - 行
#_1CC5DB: db $08, $20, $01, $36, $CC, $CD ; かないで⋯。
#_1CC5E1: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ワシの名はアジナ－ですじゃ。
; どうやら7賢者の封じた
; 聖地のなかで,何かが
; おこっているようす⋯。
; 7賢者をはじめハイリアの民の
; 血をひく者の間に伝わる予言
; 『オオイナル ワザワイ』の
; 前ぶれですじゃ。
; ⋯ ⋯ ⋯
; その予言で『勇者はムドラの書
; を持ってサバクにたつ』⋯
; と言われとりますじゃ。
; ムドラの書があれば,ハイリア
; の民のコトバが,わかると言う
; ことですじゃ。
; 村の書の家に,あるはず⋯。
; 必ず,手に入れなさるがよい。
; 『勇者』となる者ならばのう⋯
Message_0123:
#_1CC5E2: db $5D, $61, $24 ; ワシの
#_1CC5E5: db $FD, $6F ; write kanji - 名
#_1CC5E7: db $28, $50, $75, $70, $C9, $36, $12, $25 ; はアジナ－ですじ
#_1CC5EF: db $47, $CD ; ゃ。
#_1CC5F1: db $F8 ; cursor to row 2
#_1CC5F2: db $37, $02, $05, $38, $A7 ; どうやら7
#_1CC5F7: db $FD, $C4 ; write kanji - 賢
#_1CC5F9: db $FD, $1E ; write kanji - 者
#_1CC5FB: db $24 ; の
#_1CC5FC: db $FD, $9E ; write kanji - 封
#_1CC5FE: db $25, $18 ; じた
#_1CC600: db $F9 ; cursor to row 3
#_1CC601: db $FD, $F6 ; write kanji - 聖
#_1CC603: db $FD, $33 ; write kanji - 地
#_1CC605: db $24, $20, $08, $36, $C8 ; のなかで,
#_1CC60A: db $FD, $8B ; write kanji - 何
#_1CC60C: db $08, $15 ; かが
#_1CC60E: db $FA ; wait for key
#_1CC60F: db $F6 ; scroll text
#_1CC610: db $04, $0C, $4A, $1B, $01, $3A, $07, $02 ; おこっているよう
#_1CC618: db $12, $CC, $CD ; す⋯。
#_1CC61B: db $F6 ; scroll text
#_1CC61C: db $A7 ; 7
#_1CC61D: db $FD, $C4 ; write kanji - 賢
#_1CC61F: db $FD, $1E ; write kanji - 者
#_1CC621: db $0E, $28, $25, $33, $78, $51, $89, $50 ; をはじめハイリア
#_1CC629: db $24 ; の
#_1CC62A: db $FD, $F8 ; write kanji - 民
#_1CC62C: db $24 ; の
#_1CC62D: db $F6 ; scroll text
#_1CC62E: db $FD, $B9 ; write kanji - 血
#_1CC630: db $0E, $29, $0A ; をひく
#_1CC633: db $FD, $1E ; write kanji - 者
#_1CC635: db $24 ; の
#_1CC636: db $FD, $39 ; write kanji - 間
#_1CC638: db $21 ; に
#_1CC639: db $FD, $2E ; write kanji - 伝
#_1CC63B: db $0D, $3A ; わる
#_1CC63D: db $FD, $F9 ; write kanji - 予
#_1CC63F: db $FD, $16 ; write kanji - 言
#_1CC641: db $FA ; wait for key
#_1CC642: db $F6 ; scroll text
#_1CC643: db $C4, $54, $54, $51, $70, $8A, $FF, $5D ; 『オオイナル⎵ワ
#_1CC64B: db $6F, $5D, $51, $C5, $24 ; ザワイ』の
#_1CC650: db $F6 ; scroll text
#_1CC651: db $FD, $78 ; write kanji - 前
#_1CC653: db $3F, $3B, $36, $12, $25, $47, $CD ; ぶれですじゃ。
#_1CC65A: db $F6 ; scroll text
#_1CC65B: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1CC661: db $FA ; wait for key
#_1CC662: db $F6 ; scroll text
#_1CC663: db $14, $24 ; その
#_1CC665: db $FD, $F9 ; write kanji - 予
#_1CC667: db $FD, $16 ; write kanji - 言
#_1CC669: db $36, $C4 ; で『
#_1CC66B: db $FD, $A0 ; write kanji - 勇
#_1CC66D: db $FD, $1E ; write kanji - 者
#_1CC66F: db $28, $82, $87, $88, $24 ; はムドラの
#_1CC674: db $FD, $0E ; write kanji - 書
#_1CC676: db $F6 ; scroll text
#_1CC677: db $0E ; を
#_1CC678: db $FD, $DB ; write kanji - 持
#_1CC67A: db $4A, $1B, $60, $8D, $5A, $21, $18, $1A ; ってサバクにたつ
#_1CC682: db $C5, $CC ; 』⋯
#_1CC684: db $F6 ; scroll text
#_1CC685: db $1C ; と
#_1CC686: db $FD, $16 ; write kanji - 言
#_1CC688: db $0D, $3B, $1C, $39, $30, $12, $25, $47 ; われとりますじゃ
#_1CC690: db $CD ; 。
#_1CC691: db $FA ; wait for key
#_1CC692: db $F6 ; scroll text
#_1CC693: db $82, $87, $88, $24 ; ムドラの
#_1CC697: db $FD, $0E ; write kanji - 書
#_1CC699: db $15, $00, $3B, $3D, $C8, $78, $51, $89 ; があれば,ハイリ
#_1CC6A1: db $50 ; ア
#_1CC6A2: db $F6 ; scroll text
#_1CC6A3: db $24 ; の
#_1CC6A4: db $FD, $F8 ; write kanji - 民
#_1CC6A6: db $24, $5C, $6C, $8D, $15, $C8, $0D, $08 ; のコトバが,わか
#_1CC6AE: db $3A, $1C ; ると
#_1CC6B0: db $FD, $16 ; write kanji - 言
#_1CC6B2: db $02 ; う
#_1CC6B3: db $F6 ; scroll text
#_1CC6B4: db $0C, $1C, $36, $12, $25, $47, $CD ; ことですじゃ。
#_1CC6BB: db $FA ; wait for key
#_1CC6BC: db $F6 ; scroll text
#_1CC6BD: db $FD, $8C ; write kanji - 村
#_1CC6BF: db $24 ; の
#_1CC6C0: db $FD, $0E ; write kanji - 書
#_1CC6C2: db $24 ; の
#_1CC6C3: db $FD, $56 ; write kanji - 家
#_1CC6C5: db $21, $C8, $00, $3A, $28, $26, $CC, $CD ; に,あるはず⋯。
#_1CC6CD: db $F6 ; scroll text
#_1CC6CE: db $FD, $30 ; write kanji - 必
#_1CC6D0: db $26, $C8 ; ず,
#_1CC6D2: db $FD, $3E ; write kanji - 手
#_1CC6D4: db $21 ; に
#_1CC6D5: db $FD, $49 ; write kanji - 入
#_1CC6D7: db $3B, $20, $10, $3A, $15, $07, $01, $CD ; れなさるがよい。
#_1CC6DF: db $F6 ; scroll text
#_1CC6E0: db $C4 ; 『
#_1CC6E1: db $FD, $A0 ; write kanji - 勇
#_1CC6E3: db $FD, $1E ; write kanji - 者
#_1CC6E5: db $C5, $1C, $20, $3A ; 』となる
#_1CC6E9: db $FD, $1E ; write kanji - 者
#_1CC6EB: db $20, $38, $3D, $24, $02, $CC ; ならばのう⋯
#_1CC6F1: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 3つの紋章が,そろいましたな
; そなたが,『知恵』『勇気』
; 『力』をかねそなえる,
; まことの『勇者』ならば,
; 森にねむるマスタ－ソ－ドも
; そなたの物となるですじゃ。
Message_0124:
#_1CC6F2: db $A3, $1A, $24 ; 3つの
#_1CC6F5: db $FD, $53 ; write kanji - 紋
#_1CC6F7: db $FD, $54 ; write kanji - 章
#_1CC6F9: db $15, $C8, $14, $3C, $01, $30, $11, $18 ; が,そろいました
#_1CC701: db $20 ; な
#_1CC702: db $F8 ; cursor to row 2
#_1CC703: db $14, $20, $18, $15, $C8, $C4 ; そなたが,『
#_1CC709: db $FD, $93 ; write kanji - 知
#_1CC70B: db $FD, $41 ; write kanji - 恵
#_1CC70D: db $C5, $C4 ; 』『
#_1CC70F: db $FD, $A0 ; write kanji - 勇
#_1CC711: db $FD, $37 ; write kanji - 気
#_1CC713: db $C5 ; 』
#_1CC714: db $F9 ; cursor to row 3
#_1CC715: db $C4 ; 『
#_1CC716: db $FD, $99 ; write kanji - 力
#_1CC718: db $C5, $0E, $08, $23, $14, $20, $03, $3A ; 』をかねそなえる
#_1CC720: db $C8 ; ,
#_1CC721: db $FA ; wait for key
#_1CC722: db $F6 ; scroll text
#_1CC723: db $30, $0C, $1C, $24, $C4 ; まことの『
#_1CC728: db $FD, $A0 ; write kanji - 勇
#_1CC72A: db $FD, $1E ; write kanji - 者
#_1CC72C: db $C5, $20, $38, $3D, $C8 ; 』ならば,
#_1CC731: db $F6 ; scroll text
#_1CC732: db $FD, $65 ; write kanji - 森
#_1CC734: db $21, $23, $32, $3A, $80, $62, $68, $C9 ; にねむるマスタ－
#_1CC73C: db $64, $C9, $87, $34 ; ソ－ドも
#_1CC740: db $F6 ; scroll text
#_1CC741: db $14, $20, $18, $24 ; そなたの
#_1CC745: db $FD, $51 ; write kanji - 物
#_1CC747: db $1C, $20, $3A, $36, $12, $25, $47, $CD ; となるですじゃ。
#_1CC74F: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おお,それはムドラの書!
; それがあれば,ハイリアの民の
; コトバがわかるはずですじゃ。
Message_0125:
#_1CC750: db $04, $04, $C8, $14, $3B, $28, $82, $87 ; おお,それはムド
#_1CC758: db $88, $24 ; ラの
#_1CC75A: db $FD, $0E ; write kanji - 書
#_1CC75C: db $C7 ; !
#_1CC75D: db $F8 ; cursor to row 2
#_1CC75E: db $14, $3B, $15, $00, $3B, $3D, $C8, $78 ; それがあれば,ハ
#_1CC766: db $51, $89, $50, $24 ; イリアの
#_1CC76A: db $FD, $F8 ; write kanji - 民
#_1CC76C: db $24 ; の
#_1CC76D: db $F9 ; cursor to row 3
#_1CC76E: db $5C, $6C, $8D, $15, $0D, $08, $3A, $28 ; コトバがわかるは
#_1CC776: db $26, $36, $12, $25, $47, $CD ; ずですじゃ。
#_1CC77C: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; まことの『勇者』よ⋯。
; 今－度,この国の平和をとり
; 戻す事,信じとりますじゃ⋯。
Message_0126:
#_1CC77D: db $30, $0C, $1C, $24, $C4 ; まことの『
#_1CC782: db $FD, $A0 ; write kanji - 勇
#_1CC784: db $FD, $1E ; write kanji - 者
#_1CC786: db $C5, $07, $CC, $CD ; 』よ⋯。
#_1CC78A: db $F8 ; cursor to row 2
#_1CC78B: db $FD, $6A ; write kanji - 今
#_1CC78D: db $C9 ; －
#_1CC78E: db $FD, $2A ; write kanji - 度
#_1CC790: db $C8, $0C, $24 ; ,この
#_1CC793: db $FD, $2B ; write kanji - 国
#_1CC795: db $24 ; の
#_1CC796: db $FD, $0B ; write kanji - 平
#_1CC798: db $FD, $0C ; write kanji - 和
#_1CC79A: db $0E, $1C, $39 ; をとり
#_1CC79D: db $F9 ; cursor to row 3
#_1CC79E: db $FD, $0F ; write kanji - 戻
#_1CC7A0: db $12 ; す
#_1CC7A1: db $FD, $22 ; write kanji - 事
#_1CC7A3: db $C8 ; ,
#_1CC7A4: db $FD, $45 ; write kanji - 信
#_1CC7A6: db $25, $1C, $39, $30, $12, $25, $47, $CC ; じとりますじゃ⋯
#_1CC7AE: db $CD ; 。
#_1CC7AF: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 1つ,しれんをのりこえて
; 大きくなられた様ですな。
; 頼もしいかぎりですじゃ。
Message_0127:
#_1CC7B0: db $A1, $1A, $C8, $11, $3B, $0F, $0E, $24 ; 1つ,しれんをの
#_1CC7B8: db $39, $0C, $03, $1B ; りこえて
#_1CC7BC: db $F8 ; cursor to row 2
#_1CC7BD: db $FD, $5F ; write kanji - 大
#_1CC7BF: db $09, $0A, $20, $38, $3B, $18 ; きくなられた
#_1CC7C5: db $FD, $10 ; write kanji - 様
#_1CC7C7: db $36, $12, $20, $CD ; ですな。
#_1CC7CB: db $F9 ; cursor to row 3
#_1CC7CC: db $FD, $08 ; write kanji - 頼
#_1CC7CE: db $34, $11, $01, $08, $16, $39, $36, $12 ; もしいかぎりです
#_1CC7D6: db $25, $47, $CD ; じゃ。
#_1CC7D9: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ワシのおひるねのジャマをする
; のは,お前か? これをやるか
; ら,あっちへ行ってくれ!
Message_0128:
#_1CC7DA: db $5D, $61, $24, $04, $29, $3A, $23, $24 ; ワシのおひるねの
#_1CC7E2: db $75, $97, $80, $0E, $12, $3A ; ジャマをする
#_1CC7E8: db $F8 ; cursor to row 2
#_1CC7E9: db $24, $28, $C8, $04 ; のは,お
#_1CC7ED: db $FD, $78 ; write kanji - 前
#_1CC7EF: db $08, $C6, $FF, $0C, $3B, $0E, $05, $3A ; か?⎵これをやる
#_1CC7F7: db $08 ; か
#_1CC7F8: db $F9 ; cursor to row 3
#_1CC7F9: db $38, $C8, $00, $4A, $19, $2B ; ら,あっちへ
#_1CC7FF: db $FD, $02 ; write kanji - 行
#_1CC801: db $4A, $1B, $0A, $3B, $C7 ; ってくれ!
#_1CC806: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; もう,やる物はねえぞ!
; これでも,持ってけ!
Message_0129:
#_1CC807: db $34, $02, $C8, $05, $3A ; もう,やる
#_1CC80C: db $FD, $51 ; write kanji - 物
#_1CC80E: db $28, $23, $03, $2D, $C7 ; はねえぞ!
#_1CC813: db $F8 ; cursor to row 2
#_1CC814: db $0C, $3B, $36, $34, $C8 ; これでも,
#_1CC819: db $FD, $DB ; write kanji - 持
#_1CC81B: db $4A, $1B, $0B, $C7 ; ってけ!
#_1CC81F: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; よう,[LINK]! このごろ
; 森にもあやしいキリがかかって
; うかつに入れもしねェ－や。
Message_012A:
#_1CC820: db $07, $02, $C8 ; よう,
#_1CC823: db $FE, $6A ; write player name
#_1CC825: db $C7, $FF, $0C, $24, $1E, $3C ; !⎵このごろ
#_1CC82B: db $F8 ; cursor to row 2
#_1CC82C: db $FD, $65 ; write kanji - 森
#_1CC82E: db $21, $34, $00, $05, $11, $01, $59, $89 ; にもあやしいキリ
#_1CC836: db $15, $08, $08, $4A, $1B ; がかかって
#_1CC83B: db $F9 ; cursor to row 3
#_1CC83C: db $02, $08, $1A, $21 ; うかつに
#_1CC840: db $FD, $49 ; write kanji - 入
#_1CC842: db $3B, $34, $11, $23, $9E, $C9, $05, $CD ; れもしねェ－や。
#_1CC84A: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; どうでもいいけど,この木は,
; きりごたえがおかしいなあ。
; それっ ギ〜コ ギ〜コ
Message_012B:
#_1CC84B: db $37, $02, $36, $34, $01, $01, $0B, $37 ; どうでもいいけど
#_1CC853: db $C8, $0C, $24 ; ,この
#_1CC856: db $FD, $EB ; write kanji - 木
#_1CC858: db $28, $C8 ; は,
#_1CC85A: db $F8 ; cursor to row 2
#_1CC85B: db $09, $39, $1E, $18, $03, $15, $04, $08 ; きりごたえがおか
#_1CC863: db $11, $01, $20, $00, $CD ; しいなあ。
#_1CC868: db $F9 ; cursor to row 3
#_1CC869: db $14, $3B, $4A, $FF, $66, $CE, $5C, $FF ; それっ⎵ギ〜コ⎵
#_1CC871: db $66, $CE, $5C ; ギ〜コ
#_1CC874: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; よう,森のキリがはれた様だな
; ありがてえことだ。また,でか
; けてみるよ。なあ,キョウダイ
Message_012C:
#_1CC875: db $07, $02, $C8 ; よう,
#_1CC878: db $FD, $65 ; write kanji - 森
#_1CC87A: db $24, $59, $89, $15, $28, $3B, $18 ; のキリがはれた
#_1CC881: db $FD, $10 ; write kanji - 様
#_1CC883: db $2E, $20 ; だな
#_1CC885: db $F8 ; cursor to row 2
#_1CC886: db $00, $39, $15, $1B, $03, $0C, $1C, $2E ; ありがてえことだ
#_1CC88E: db $CD, $30, $18, $C8, $36, $08 ; 。また,でか
#_1CC894: db $F9 ; cursor to row 3
#_1CC895: db $0B, $1B, $31, $3A, $07, $CD, $20, $00 ; けてみるよ。なあ
#_1CC89D: db $C8, $59, $99, $52, $7E, $51 ; ,キョウダイ
#_1CC8A3: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; やあ,[LINK],今おとうとと
; ケンカしてんだ。 カベの
; 通路も,ふさいでやったい!
Message_012D:
#_1CC8A4: db $05, $00, $C8 ; やあ,
#_1CC8A7: db $FE, $6A ; write player name
#_1CC8A9: db $C8 ; ,
#_1CC8AA: db $FD, $6A ; write kanji - 今
#_1CC8AC: db $04, $1C, $02, $1C, $1C ; おとうとと
#_1CC8B1: db $F8 ; cursor to row 2
#_1CC8B2: db $5B, $5F, $58, $11, $1B, $0F, $2E, $CD ; ケンカしてんだ。
#_1CC8BA: db $FF, $58, $90, $24 ; ⎵カベの
#_1CC8BE: db $F9 ; cursor to row 3
#_1CC8BF: db $FD, $09 ; write kanji - 通
#_1CC8C1: db $FD, $B6 ; write kanji - 路
#_1CC8C3: db $34, $C8, $2A, $10, $01, $36, $05, $4A ; も,ふさいでやっ
#_1CC8CB: db $18, $01, $C7 ; たい!
#_1CC8CE: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; カベをこわしちまったな⋯。
; しかたない,なかなおり
; しようかな⋯。
Message_012E:
#_1CC8CF: db $58, $90, $0E, $0C, $0D, $11, $19, $30 ; カベをこわしちま
#_1CC8D7: db $4A, $18, $20, $CC, $CD ; ったな⋯。
#_1CC8DC: db $F8 ; cursor to row 2
#_1CC8DD: db $11, $08, $18, $20, $01, $C8, $20, $08 ; しかたない,なか
#_1CC8E5: db $20, $04, $39 ; なおり
#_1CC8E8: db $F9 ; cursor to row 3
#_1CC8E9: db $11, $07, $02, $08, $20, $CC, $CD ; しようかな⋯。
#_1CC8F0: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ねえ,[LINK],にいちゃんの
; 部屋から来たの? にいちゃん
; まだ,おこってたかい?
Message_012F:
#_1CC8F1: db $23, $03, $C8 ; ねえ,
#_1CC8F4: db $FE, $6A ; write player name
#_1CC8F6: db $C8, $21, $01, $19, $47, $0F, $24 ; ,にいちゃんの
#_1CC8FD: db $F8 ; cursor to row 2
#_1CC8FE: db $FD, $B7 ; write kanji - 部
#_1CC900: db $FD, $3D ; write kanji - 屋
#_1CC902: db $08, $38 ; から
#_1CC904: db $FD, $D6 ; write kanji - 来
#_1CC906: db $18, $24, $C6, $FF, $21, $01, $19, $47 ; たの?⎵にいちゃ
#_1CC90E: db $0F ; ん
#_1CC90F: db $F9 ; cursor to row 3
#_1CC910: db $30, $2E, $C8, $04, $0C, $4A, $1B, $18 ; まだ,おこってた
#_1CC918: db $08, $01, $C6 ; かい?
#_1CC91B: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK] あなたのおかげで
; 魔族の手から,のがれる事が
; できました。ありがとう⋯。
; ⋯この世界も,もともとは,
; 『トライフォ－ス』のおかれた
; 聖地だったの。
; でも,それを手に入れた男⋯
; 盗賊のボス『ガノン』の悪しき
; 願いにより,こんな世界に⋯。
; 彼は,力をたくわえると私達の
; 光の世界をも支配しようと
; たくらんでいたようだわ。
; そして,私達賢者の力をうけつ
; ぐ7人の娘をカギに使い,封印
; を解き,さらにお城のあたりに
; もっと大きな力の通り道を開く
; つもりなの。でも,その道は
; まだ開ききっていないわ。
; まだ,まにあうわ。私達が,
; 7人そろえば,ガノンのひそむ
; 結界もやぶれるはずよ。
; 他の娘達の場所は,私の力で
; 知らせましょう。あなたが,ガ
; ノンを倒す事を信じています。
; その時私達も,もとの姿に
; 戻れるでしょう。
; ⋯ ⋯ ⋯ ⋯ ⋯
Message_0130:
#_1CC91C: db $FC, $02 ; set text speed
#_1CC91E: db $FE, $6D, $01 ; set window position
#_1CC921: db $FE, $6B, $02 ; set window type
#_1CC924: db $FE, $6A ; write player name
#_1CC926: db $FF, $00, $20, $18, $24, $04, $08, $1D ; ⎵あなたのおかげ
#_1CC92E: db $36 ; で
#_1CC92F: db $F8 ; cursor to row 2
#_1CC930: db $FD, $2D ; write kanji - 魔
#_1CC932: db $FD, $F2 ; write kanji - 族
#_1CC934: db $24 ; の
#_1CC935: db $FD, $3E ; write kanji - 手
#_1CC937: db $08, $38, $C8, $24, $15, $3B, $3A ; から,のがれる
#_1CC93E: db $FD, $22 ; write kanji - 事
#_1CC940: db $15 ; が
#_1CC941: db $F9 ; cursor to row 3
#_1CC942: db $36, $09, $30, $11, $18, $CD, $00, $39 ; できました。あり
#_1CC94A: db $15, $1C, $02, $CC, $CD ; がとう⋯。
#_1CC94F: db $FC, $01 ; set text speed
#_1CC951: db $FA ; wait for key
#_1CC952: db $F7 ; cursor to row 1
#_1CC953: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CC95B: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CC960: db $F8 ; cursor to row 2
#_1CC961: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CC969: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CC96E: db $F9 ; cursor to row 3
#_1CC96F: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CC977: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CC97C: db $FC, $02 ; set text speed
#_1CC97E: db $F7 ; cursor to row 1
#_1CC97F: db $CC, $0C, $24 ; ⋯この
#_1CC982: db $FD, $E8 ; write kanji - 世
#_1CC984: db $FD, $E9 ; write kanji - 界
#_1CC986: db $34, $C8, $34, $1C, $34, $1C, $28, $C8 ; も,もともとは,
#_1CC98E: db $F8 ; cursor to row 2
#_1CC98F: db $C4, $6C, $88, $51, $7A, $9F, $C9, $62 ; 『トライフォ－ス
#_1CC997: db $C5, $24, $04, $08, $3B, $18 ; 』のおかれた
#_1CC99D: db $F9 ; cursor to row 3
#_1CC99E: db $FD, $F6 ; write kanji - 聖
#_1CC9A0: db $FD, $33 ; write kanji - 地
#_1CC9A2: db $2E, $4A, $18, $24, $CD ; だったの。
#_1CC9A7: db $FC, $01 ; set text speed
#_1CC9A9: db $FA ; wait for key
#_1CC9AA: db $F7 ; cursor to row 1
#_1CC9AB: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CC9B3: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CC9B8: db $F8 ; cursor to row 2
#_1CC9B9: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CC9C1: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CC9C7: db $F9 ; cursor to row 3
#_1CC9C8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵
#_1CC9CF: db $FC, $02 ; set text speed
#_1CC9D1: db $F7 ; cursor to row 1
#_1CC9D2: db $36, $34, $C8, $14, $3B, $0E ; でも,それを
#_1CC9D8: db $FD, $3E ; write kanji - 手
#_1CC9DA: db $21 ; に
#_1CC9DB: db $FD, $49 ; write kanji - 入
#_1CC9DD: db $3B, $18 ; れた
#_1CC9DF: db $FD, $5E ; write kanji - 男
#_1CC9E1: db $CC ; ⋯
#_1CC9E2: db $F8 ; cursor to row 2
#_1CC9E3: db $FD, $F1 ; write kanji - 盗
#_1CC9E5: db $FD, $EE ; write kanji - 賊
#_1CC9E7: db $24, $91, $62, $C4, $65, $74, $5F, $C5 ; のボス『ガノン』
#_1CC9EF: db $24 ; の
#_1CC9F0: db $FD, $85 ; write kanji - 悪
#_1CC9F2: db $11, $09 ; しき
#_1CC9F4: db $F9 ; cursor to row 3
#_1CC9F5: db $FD, $0A ; write kanji - 願
#_1CC9F7: db $01, $21, $07, $39, $C8, $0C, $0F, $20 ; いにより,こんな
#_1CC9FF: db $FD, $E8 ; write kanji - 世
#_1CCA01: db $FD, $E9 ; write kanji - 界
#_1CCA03: db $21, $CC, $CD ; に⋯。
#_1CCA06: db $FC, $01 ; set text speed
#_1CCA08: db $FA ; wait for key
#_1CCA09: db $F7 ; cursor to row 1
#_1CCA0A: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCA12: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CCA17: db $F8 ; cursor to row 2
#_1CCA18: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCA20: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCA26: db $F9 ; cursor to row 3
#_1CCA27: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCA2F: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCA35: db $FC, $02 ; set text speed
#_1CCA37: db $F7 ; cursor to row 1
#_1CCA38: db $FD, $14 ; write kanji - 彼
#_1CCA3A: db $28, $C8 ; は,
#_1CCA3C: db $FD, $99 ; write kanji - 力
#_1CCA3E: db $0E, $18, $0A, $0D, $03, $3A, $1C ; をたくわえると
#_1CCA45: db $FD, $26 ; write kanji - 私
#_1CCA47: db $FD, $13 ; write kanji - 達
#_1CCA49: db $24 ; の
#_1CCA4A: db $F8 ; cursor to row 2
#_1CCA4B: db $FD, $73 ; write kanji - 光
#_1CCA4D: db $24 ; の
#_1CCA4E: db $FD, $E8 ; write kanji - 世
#_1CCA50: db $FD, $E9 ; write kanji - 界
#_1CCA52: db $0E, $34 ; をも
#_1CCA54: db $FD, $F0 ; write kanji - 支
#_1CCA56: db $FD, $8E ; write kanji - 配
#_1CCA58: db $11, $07, $02, $1C ; しようと
#_1CCA5C: db $F9 ; cursor to row 3
#_1CCA5D: db $18, $0A, $38, $0F, $36, $01, $18, $07 ; たくらんでいたよ
#_1CCA65: db $02, $2E, $0D, $CD ; うだわ。
#_1CCA69: db $FC, $01 ; set text speed
#_1CCA6B: db $FA ; wait for key
#_1CCA6C: db $F7 ; cursor to row 1
#_1CCA6D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCA75: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCA7B: db $F8 ; cursor to row 2
#_1CCA7C: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCA84: db $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵
#_1CCA88: db $F9 ; cursor to row 3
#_1CCA89: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCA91: db $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵
#_1CCA95: db $FC, $02 ; set text speed
#_1CCA97: db $F7 ; cursor to row 1
#_1CCA98: db $14, $11, $1B, $C8 ; そして,
#_1CCA9C: db $FD, $26 ; write kanji - 私
#_1CCA9E: db $FD, $13 ; write kanji - 達
#_1CCAA0: db $FD, $C4 ; write kanji - 賢
#_1CCAA2: db $FD, $1E ; write kanji - 者
#_1CCAA4: db $24 ; の
#_1CCAA5: db $FD, $99 ; write kanji - 力
#_1CCAA7: db $0E, $02, $0B, $1A ; をうけつ
#_1CCAAB: db $F8 ; cursor to row 2
#_1CCAAC: db $17, $A7 ; ぐ7
#_1CCAAE: db $FD, $38 ; write kanji - 人
#_1CCAB0: db $24 ; の
#_1CCAB1: db $FD, $00 ; write kanji - 娘
#_1CCAB3: db $0E, $58, $66, $21 ; をカギに
#_1CCAB7: db $FD, $89 ; write kanji - 使
#_1CCAB9: db $01, $C8 ; い,
#_1CCABB: db $FD, $9E ; write kanji - 封
#_1CCABD: db $FD, $35 ; write kanji - 印
#_1CCABF: db $F9 ; cursor to row 3
#_1CCAC0: db $0E ; を
#_1CCAC1: db $FD, $1C ; write kanji - 解
#_1CCAC3: db $09, $C8, $10, $38, $21, $04 ; き,さらにお
#_1CCAC9: db $FD, $01 ; write kanji - 城
#_1CCACB: db $24, $00, $18, $39, $21 ; のあたりに
#_1CCAD0: db $FC, $01 ; set text speed
#_1CCAD2: db $FA ; wait for key
#_1CCAD3: db $F7 ; cursor to row 1
#_1CCAD4: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCADC: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCAE2: db $F8 ; cursor to row 2
#_1CCAE3: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCAEB: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCAF1: db $F9 ; cursor to row 3
#_1CCAF2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCAFA: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCB00: db $FC, $02 ; set text speed
#_1CCB02: db $F7 ; cursor to row 1
#_1CCB03: db $34, $4A, $1C ; もっと
#_1CCB06: db $FD, $5F ; write kanji - 大
#_1CCB08: db $09, $20 ; きな
#_1CCB0A: db $FD, $99 ; write kanji - 力
#_1CCB0C: db $24 ; の
#_1CCB0D: db $FD, $09 ; write kanji - 通
#_1CCB0F: db $39 ; り
#_1CCB10: db $FD, $5D ; write kanji - 道
#_1CCB12: db $0E ; を
#_1CCB13: db $FD, $4B ; write kanji - 開
#_1CCB15: db $0A ; く
#_1CCB16: db $F8 ; cursor to row 2
#_1CCB17: db $1A, $34, $39, $20, $24, $CD, $36, $34 ; つもりなの。でも
#_1CCB1F: db $C8, $14, $24 ; ,その
#_1CCB22: db $FD, $5D ; write kanji - 道
#_1CCB24: db $28 ; は
#_1CCB25: db $F9 ; cursor to row 3
#_1CCB26: db $30, $2E ; まだ
#_1CCB28: db $FD, $4B ; write kanji - 開
#_1CCB2A: db $09, $09, $4A, $1B, $01, $20, $01, $0D ; ききっていないわ
#_1CCB32: db $CD ; 。
#_1CCB33: db $FC, $01 ; set text speed
#_1CCB35: db $FA ; wait for key
#_1CCB36: db $F7 ; cursor to row 1
#_1CCB37: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCB3F: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCB45: db $F8 ; cursor to row 2
#_1CCB46: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCB4E: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CCB53: db $F9 ; cursor to row 3
#_1CCB54: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCB5C: db $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵
#_1CCB60: db $FC, $02 ; set text speed
#_1CCB62: db $F7 ; cursor to row 1
#_1CCB63: db $30, $2E, $C8, $30, $21, $00, $02, $0D ; まだ,まにあうわ
#_1CCB6B: db $CD ; 。
#_1CCB6C: db $FD, $26 ; write kanji - 私
#_1CCB6E: db $FD, $13 ; write kanji - 達
#_1CCB70: db $15, $C8 ; が,
#_1CCB72: db $F8 ; cursor to row 2
#_1CCB73: db $A7 ; 7
#_1CCB74: db $FD, $38 ; write kanji - 人
#_1CCB76: db $14, $3C, $03, $3D, $C8, $65, $74, $5F ; そろえば,ガノン
#_1CCB7E: db $24, $29, $14, $32 ; のひそむ
#_1CCB82: db $F9 ; cursor to row 3
#_1CCB83: db $FD, $83 ; write kanji - 結
#_1CCB85: db $FD, $E9 ; write kanji - 界
#_1CCB87: db $34, $05, $3F, $3B, $3A, $28, $26, $07 ; もやぶれるはずよ
#_1CCB8F: db $CD ; 。
#_1CCB90: db $FC, $01 ; set text speed
#_1CCB92: db $FA ; wait for key
#_1CCB93: db $F7 ; cursor to row 1
#_1CCB94: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCB9C: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCBA2: db $F8 ; cursor to row 2
#_1CCBA3: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCBAB: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCBB1: db $F9 ; cursor to row 3
#_1CCBB2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCBBA: db $FF, $FF, $FF ; ⎵⎵⎵
#_1CCBBD: db $FC, $02 ; set text speed
#_1CCBBF: db $F7 ; cursor to row 1
#_1CCBC0: db $FD, $27 ; write kanji - 他
#_1CCBC2: db $24 ; の
#_1CCBC3: db $FD, $00 ; write kanji - 娘
#_1CCBC5: db $FD, $13 ; write kanji - 達
#_1CCBC7: db $24 ; の
#_1CCBC8: db $FD, $A8 ; write kanji - 場
#_1CCBCA: db $FD, $55 ; write kanji - 所
#_1CCBCC: db $28, $C8 ; は,
#_1CCBCE: db $FD, $26 ; write kanji - 私
#_1CCBD0: db $24 ; の
#_1CCBD1: db $FD, $99 ; write kanji - 力
#_1CCBD3: db $36 ; で
#_1CCBD4: db $FE, $79, $2D ; play sound effect
#_1CCBD7: db $F8 ; cursor to row 2
#_1CCBD8: db $FD, $93 ; write kanji - 知
#_1CCBDA: db $38, $13, $30, $11, $49, $02, $CD, $00 ; らせましょう。あ
#_1CCBE2: db $20, $18, $15, $C8, $65 ; なたが,ガ
#_1CCBE7: db $F9 ; cursor to row 3
#_1CCBE8: db $74, $5F, $0E ; ノンを
#_1CCBEB: db $FD, $29 ; write kanji - 倒
#_1CCBED: db $12 ; す
#_1CCBEE: db $FD, $22 ; write kanji - 事
#_1CCBF0: db $0E ; を
#_1CCBF1: db $FD, $45 ; write kanji - 信
#_1CCBF3: db $25, $1B, $01, $30, $12, $CD ; じています。
#_1CCBF9: db $FC, $01 ; set text speed
#_1CCBFB: db $FA ; wait for key
#_1CCBFC: db $F7 ; cursor to row 1
#_1CCBFD: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCC05: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CCC0A: db $F8 ; cursor to row 2
#_1CCC0B: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCC13: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCC19: db $F9 ; cursor to row 3
#_1CCC1A: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCC22: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCC28: db $FC, $02 ; set text speed
#_1CCC2A: db $F7 ; cursor to row 1
#_1CCC2B: db $14, $24 ; その
#_1CCC2D: db $FD, $88 ; write kanji - 時
#_1CCC2F: db $FD, $26 ; write kanji - 私
#_1CCC31: db $FD, $13 ; write kanji - 達
#_1CCC33: db $34, $C8, $34, $1C, $24 ; も,もとの
#_1CCC38: db $FD, $A2 ; write kanji - 姿
#_1CCC3A: db $21 ; に
#_1CCC3B: db $F8 ; cursor to row 2
#_1CCC3C: db $FD, $0F ; write kanji - 戻
#_1CCC3E: db $3B, $3A, $36, $11, $49, $02, $CD ; れるでしょう。
#_1CCC45: db $F9 ; cursor to row 3
#_1CCC46: db $FF, $CC, $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯⎵⋯
#_1CCC4E: db $FF, $CC ; ⎵⋯
#_1CCC50: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK] あなたのおかげで
; 魔族の手から,のがれる事が
; できました。ありがとう⋯。
; ⋯トライフォ－スは,それに
; ふれた者の願いをかなえます。
; その者が生きているかぎり⋯。
; だからこそ,聖地におかれ
; 選ばれた者だけにその場所が
; 伝えられてきたの。
; ところが,それがどこかで
; とぎれてしまったみたい⋯。
; そして,再び聖地をみつけた
; のが,ガノンドロフと言う
; 盗賊だったのよ。
; でも,幸いな事に彼は光の世界
; へ帰る方法がわからなかったの
; ⋯そう,思い出して。
; あなたは,勇者だけが使いこな
; せるマジカルミラ－をもってい
; るじゃない!
; ヘブラ山にあった魔法陣が,
; 他にもいくつかあるの。
; それを使って2つの世界を行き
; 来すれば,闇の世界にひそむ
; 魔物達も探しだせるわ!
; 盗賊ガノンドロフ⋯いいえ,
; 闇の魔王ガノンを倒せるのは
; あなただけ⋯祈っています。
Message_0131:
#_1CCC51: db $FC, $02 ; set text speed
#_1CCC53: db $FE, $6D, $01 ; set window position
#_1CCC56: db $FE, $6B, $02 ; set window type
#_1CCC59: db $FE, $6A ; write player name
#_1CCC5B: db $FF, $00, $20, $18, $24, $04, $08, $1D ; ⎵あなたのおかげ
#_1CCC63: db $36 ; で
#_1CCC64: db $F8 ; cursor to row 2
#_1CCC65: db $FD, $2D ; write kanji - 魔
#_1CCC67: db $FD, $F2 ; write kanji - 族
#_1CCC69: db $24 ; の
#_1CCC6A: db $FD, $3E ; write kanji - 手
#_1CCC6C: db $08, $38, $C8, $24, $15, $3B, $3A ; から,のがれる
#_1CCC73: db $FD, $22 ; write kanji - 事
#_1CCC75: db $15 ; が
#_1CCC76: db $F9 ; cursor to row 3
#_1CCC77: db $36, $09, $30, $11, $18, $CD, $00, $39 ; できました。あり
#_1CCC7F: db $15, $1C, $02, $CC, $CD ; がとう⋯。
#_1CCC84: db $FC, $01 ; set text speed
#_1CCC86: db $FA ; wait for key
#_1CCC87: db $F7 ; cursor to row 1
#_1CCC88: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCC90: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CCC95: db $F8 ; cursor to row 2
#_1CCC96: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCC9E: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CCCA3: db $F9 ; cursor to row 3
#_1CCCA4: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCCAC: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CCCB1: db $FC, $02 ; set text speed
#_1CCCB3: db $F7 ; cursor to row 1
#_1CCCB4: db $CC, $6C, $88, $51, $7A, $9F, $C9, $62 ; ⋯トライフォ－ス
#_1CCCBC: db $28, $C8, $14, $3B, $21 ; は,それに
#_1CCCC1: db $F8 ; cursor to row 2
#_1CCCC2: db $2A, $3B, $18 ; ふれた
#_1CCCC5: db $FD, $1E ; write kanji - 者
#_1CCCC7: db $24 ; の
#_1CCCC8: db $FD, $0A ; write kanji - 願
#_1CCCCA: db $01, $0E, $08, $20, $03, $30, $12, $CD ; いをかなえます。
#_1CCCD2: db $F9 ; cursor to row 3
#_1CCCD3: db $14, $24 ; その
#_1CCCD5: db $FD, $1E ; write kanji - 者
#_1CCCD7: db $15 ; が
#_1CCCD8: db $FD, $B4 ; write kanji - 生
#_1CCCDA: db $09, $1B, $01, $3A, $08, $16, $39, $CC ; きているかぎり⋯
#_1CCCE2: db $CD ; 。
#_1CCCE3: db $FC, $01 ; set text speed
#_1CCCE5: db $FA ; wait for key
#_1CCCE6: db $F7 ; cursor to row 1
#_1CCCE7: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCCEF: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CCCF4: db $F8 ; cursor to row 2
#_1CCCF5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCCFD: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCD03: db $F9 ; cursor to row 3
#_1CCD04: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCD0C: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCD12: db $FC, $02 ; set text speed
#_1CCD14: db $F7 ; cursor to row 1
#_1CCD15: db $2E, $08, $38, $0C, $14, $C8 ; だからこそ,
#_1CCD1B: db $FD, $F6 ; write kanji - 聖
#_1CCD1D: db $FD, $33 ; write kanji - 地
#_1CCD1F: db $21, $04, $08, $3B ; におかれ
#_1CCD23: db $F8 ; cursor to row 2
#_1CCD24: db $FD, $81 ; write kanji - 選
#_1CCD26: db $3D, $3B, $18 ; ばれた
#_1CCD29: db $FD, $1E ; write kanji - 者
#_1CCD2B: db $2E, $0B, $21, $14, $24 ; だけにその
#_1CCD30: db $FD, $A8 ; write kanji - 場
#_1CCD32: db $FD, $55 ; write kanji - 所
#_1CCD34: db $15 ; が
#_1CCD35: db $F9 ; cursor to row 3
#_1CCD36: db $FD, $2E ; write kanji - 伝
#_1CCD38: db $03, $38, $3B, $1B, $09, $18, $24, $CD ; えられてきたの。
#_1CCD40: db $FC, $01 ; set text speed
#_1CCD42: db $FA ; wait for key
#_1CCD43: db $F7 ; cursor to row 1
#_1CCD44: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCD4C: db $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵
#_1CCD50: db $F8 ; cursor to row 2
#_1CCD51: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCD59: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCD5F: db $F9 ; cursor to row 3
#_1CCD60: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCD68: db $FF ; ⎵
#_1CCD69: db $FC, $02 ; set text speed
#_1CCD6B: db $F7 ; cursor to row 1
#_1CCD6C: db $1C, $0C, $3C, $15, $C8, $14, $3B, $15 ; ところが,それが
#_1CCD74: db $37, $0C, $08, $36 ; どこかで
#_1CCD78: db $F8 ; cursor to row 2
#_1CCD79: db $1C, $16, $3B, $1B, $11, $30, $4A, $18 ; とぎれてしまった
#_1CCD81: db $31, $18, $01, $CC, $CD ; みたい⋯。
#_1CCD86: db $FC, $01 ; set text speed
#_1CCD88: db $FA ; wait for key
#_1CCD89: db $F7 ; cursor to row 1
#_1CCD8A: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCD92: db $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵
#_1CCD96: db $F8 ; cursor to row 2
#_1CCD97: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCD9F: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CCDA4: db $FC, $02 ; set text speed
#_1CCDA6: db $F7 ; cursor to row 1
#_1CCDA7: db $14, $11, $1B, $C8 ; そして,
#_1CCDAB: db $FD, $B3 ; write kanji - 再
#_1CCDAD: db $3E ; び
#_1CCDAE: db $FD, $F6 ; write kanji - 聖
#_1CCDB0: db $FD, $33 ; write kanji - 地
#_1CCDB2: db $0E, $31, $1A, $0B, $18 ; をみつけた
#_1CCDB7: db $F8 ; cursor to row 2
#_1CCDB8: db $24, $15, $C8, $65, $74, $5F, $87, $8C ; のが,ガノンドロ
#_1CCDC0: db $7A, $1C ; フと
#_1CCDC2: db $FD, $16 ; write kanji - 言
#_1CCDC4: db $02 ; う
#_1CCDC5: db $F9 ; cursor to row 3
#_1CCDC6: db $FD, $F1 ; write kanji - 盗
#_1CCDC8: db $FD, $EE ; write kanji - 賊
#_1CCDCA: db $2E, $4A, $18, $24, $07, $CD ; だったのよ。
#_1CCDD0: db $FC, $01 ; set text speed
#_1CCDD2: db $FA ; wait for key
#_1CCDD3: db $F7 ; cursor to row 1
#_1CCDD4: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCDDC: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CCDE1: db $F8 ; cursor to row 2
#_1CCDE2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCDEA: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CCDEF: db $F9 ; cursor to row 3
#_1CCDF0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCDF8: db $FF, $FF ; ⎵⎵
#_1CCDFA: db $FC, $02 ; set text speed
#_1CCDFC: db $F7 ; cursor to row 1
#_1CCDFD: db $36, $34, $C8 ; でも,
#_1CCE00: db $FD, $4E ; write kanji - 幸
#_1CCE02: db $01, $20 ; いな
#_1CCE04: db $FD, $22 ; write kanji - 事
#_1CCE06: db $21 ; に
#_1CCE07: db $FD, $14 ; write kanji - 彼
#_1CCE09: db $28 ; は
#_1CCE0A: db $FD, $73 ; write kanji - 光
#_1CCE0C: db $24 ; の
#_1CCE0D: db $FD, $E8 ; write kanji - 世
#_1CCE0F: db $FD, $E9 ; write kanji - 界
#_1CCE11: db $F8 ; cursor to row 2
#_1CCE12: db $2B ; へ
#_1CCE13: db $FD, $D7 ; write kanji - 帰
#_1CCE15: db $3A ; る
#_1CCE16: db $FD, $20 ; write kanji - 方
#_1CCE18: db $FD, $3C ; write kanji - 法
#_1CCE1A: db $15, $0D, $08, $38, $20, $08, $4A, $18 ; がわからなかった
#_1CCE22: db $24 ; の
#_1CCE23: db $F9 ; cursor to row 3
#_1CCE24: db $CC, $14, $02, $C8 ; ⋯そう,
#_1CCE28: db $FD, $36 ; write kanji - 思
#_1CCE2A: db $01 ; い
#_1CCE2B: db $FD, $23 ; write kanji - 出
#_1CCE2D: db $11, $1B, $CD ; して。
#_1CCE30: db $FC, $01 ; set text speed
#_1CCE32: db $FA ; wait for key
#_1CCE33: db $F7 ; cursor to row 1
#_1CCE34: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCE3C: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCE42: db $F8 ; cursor to row 2
#_1CCE43: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCE4B: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCE51: db $F9 ; cursor to row 3
#_1CCE52: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCE5A: db $FF, $FF ; ⎵⎵
#_1CCE5C: db $FC, $02 ; set text speed
#_1CCE5E: db $F7 ; cursor to row 1
#_1CCE5F: db $00, $20, $18, $28, $C8 ; あなたは,
#_1CCE64: db $FD, $A0 ; write kanji - 勇
#_1CCE66: db $FD, $1E ; write kanji - 者
#_1CCE68: db $2E, $0B, $15 ; だけが
#_1CCE6B: db $FD, $89 ; write kanji - 使
#_1CCE6D: db $01, $0C, $20 ; いこな
#_1CCE70: db $F8 ; cursor to row 2
#_1CCE71: db $13, $3A, $80, $75, $58, $8A, $81, $88 ; せるマジカルミラ
#_1CCE79: db $C9, $0E, $34, $4A, $1B, $01 ; －をもってい
#_1CCE7F: db $F9 ; cursor to row 3
#_1CCE80: db $3A, $25, $47, $20, $01, $C7 ; るじゃない!
#_1CCE86: db $FC, $01 ; set text speed
#_1CCE88: db $FA ; wait for key
#_1CCE89: db $F7 ; cursor to row 1
#_1CCE8A: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCE92: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCE98: db $F8 ; cursor to row 2
#_1CCE99: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCEA1: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCEA7: db $F9 ; cursor to row 3
#_1CCEA8: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCEAE: db $FC, $02 ; set text speed
#_1CCEB0: db $F7 ; cursor to row 1
#_1CCEB1: db $7B, $8F, $88 ; ヘブラ
#_1CCEB4: db $FD, $94 ; write kanji - 山
#_1CCEB6: db $21, $00, $4A, $18 ; にあった
#_1CCEBA: db $FD, $2D ; write kanji - 魔
#_1CCEBC: db $FD, $3C ; write kanji - 法
#_1CCEBE: db $FD, $C5 ; write kanji - 陣
#_1CCEC0: db $15, $C8 ; が,
#_1CCEC2: db $F8 ; cursor to row 2
#_1CCEC3: db $FD, $27 ; write kanji - 他
#_1CCEC5: db $21, $34, $01, $0A, $1A, $08, $00, $3A ; にもいくつかある
#_1CCECD: db $24, $CD ; の。
#_1CCECF: db $FC, $01 ; set text speed
#_1CCED1: db $FA ; wait for key
#_1CCED2: db $F7 ; cursor to row 1
#_1CCED3: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCEDB: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CCEE0: db $F8 ; cursor to row 2
#_1CCEE1: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCEE9: db $FF, $FF, $FF ; ⎵⎵⎵
#_1CCEEC: db $FC, $02 ; set text speed
#_1CCEEE: db $F7 ; cursor to row 1
#_1CCEEF: db $14, $3B, $0E ; それを
#_1CCEF2: db $FD, $89 ; write kanji - 使
#_1CCEF4: db $4A, $1B, $A2, $1A, $24 ; って2つの
#_1CCEF9: db $FD, $E8 ; write kanji - 世
#_1CCEFB: db $FD, $E9 ; write kanji - 界
#_1CCEFD: db $0E ; を
#_1CCEFE: db $FD, $02 ; write kanji - 行
#_1CCF00: db $09 ; き
#_1CCF01: db $F8 ; cursor to row 2
#_1CCF02: db $FD, $D6 ; write kanji - 来
#_1CCF04: db $12, $3B, $3D, $C8 ; すれば,
#_1CCF08: db $FD, $57 ; write kanji - 闇
#_1CCF0A: db $24 ; の
#_1CCF0B: db $FD, $E8 ; write kanji - 世
#_1CCF0D: db $FD, $E9 ; write kanji - 界
#_1CCF0F: db $21, $29, $14, $32 ; にひそむ
#_1CCF13: db $F9 ; cursor to row 3
#_1CCF14: db $FD, $2D ; write kanji - 魔
#_1CCF16: db $FD, $51 ; write kanji - 物
#_1CCF18: db $FD, $13 ; write kanji - 達
#_1CCF1A: db $34 ; も
#_1CCF1B: db $FD, $69 ; write kanji - 探
#_1CCF1D: db $11, $2E, $13, $3A, $0D, $C7 ; しだせるわ!
#_1CCF23: db $FC, $01 ; set text speed
#_1CCF25: db $FA ; wait for key
#_1CCF26: db $F7 ; cursor to row 1
#_1CCF27: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCF2F: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CCF35: db $F8 ; cursor to row 2
#_1CCF36: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCF3E: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CCF43: db $F9 ; cursor to row 3
#_1CCF44: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCF4C: db $FF, $FF, $FF ; ⎵⎵⎵
#_1CCF4F: db $FC, $02 ; set text speed
#_1CCF51: db $F7 ; cursor to row 1
#_1CCF52: db $FD, $F1 ; write kanji - 盗
#_1CCF54: db $FD, $EE ; write kanji - 賊
#_1CCF56: db $65, $74, $5F, $87, $8C, $7A, $CC, $01 ; ガノンドロフ⋯い
#_1CCF5E: db $01, $03, $C8 ; いえ,
#_1CCF61: db $F8 ; cursor to row 2
#_1CCF62: db $FD, $57 ; write kanji - 闇
#_1CCF64: db $24 ; の
#_1CCF65: db $FD, $2D ; write kanji - 魔
#_1CCF67: db $FD, $44 ; write kanji - 王
#_1CCF69: db $65, $74, $5F, $0E ; ガノンを
#_1CCF6D: db $FD, $29 ; write kanji - 倒
#_1CCF6F: db $13, $3A, $24, $28 ; せるのは
#_1CCF73: db $F9 ; cursor to row 3
#_1CCF74: db $00, $20, $18, $2E, $0B, $CC ; あなただけ⋯
#_1CCF7A: db $FD, $AF ; write kanji - 祈
#_1CCF7C: db $4A, $1B, $01, $30, $12, $CD ; っています。
#_1CCF82: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK] あなたのおかげで
; 魔族の手から,のがれる事が
; できました。ありがとう⋯。
; ⋯『オオイナル ワザワイ』の
; 予言は知っていますか?
; 私は,こうきいています⋯。
; もしも,悪しき心をもつ者が,
; トライフォ－スを手にするなら
; ば,『勇者』が必ず現れ,
; この『オオイナル ワザワイ』
; のもととなる者をうつであろう
; しかし,『勇者』が倒れた時は
; 悪しき心の者に世界は,おおわ
; れてしまうであろう,と⋯。
; そう,『勇者』になれるのは,
; ハイリアの王家を守っていた
; ナイトの－族の者だけのはず⋯
; あなたは,その血をひいていた
; のね。 ゼルダ姫を必ず救って
; あげてね。
Message_0132:
#_1CCF83: db $FC, $02 ; set text speed
#_1CCF85: db $FE, $6D, $01 ; set window position
#_1CCF88: db $FE, $6B, $02 ; set window type
#_1CCF8B: db $FE, $6A ; write player name
#_1CCF8D: db $FF, $00, $20, $18, $24, $04, $08, $1D ; ⎵あなたのおかげ
#_1CCF95: db $36 ; で
#_1CCF96: db $F8 ; cursor to row 2
#_1CCF97: db $FD, $2D ; write kanji - 魔
#_1CCF99: db $FD, $F2 ; write kanji - 族
#_1CCF9B: db $24 ; の
#_1CCF9C: db $FD, $3E ; write kanji - 手
#_1CCF9E: db $08, $38, $C8, $24, $15, $3B, $3A ; から,のがれる
#_1CCFA5: db $FD, $22 ; write kanji - 事
#_1CCFA7: db $15 ; が
#_1CCFA8: db $F9 ; cursor to row 3
#_1CCFA9: db $36, $09, $30, $11, $18, $CD, $00, $39 ; できました。あり
#_1CCFB1: db $15, $1C, $02, $CC, $CD ; がとう⋯。
#_1CCFB6: db $FC, $01 ; set text speed
#_1CCFB8: db $FA ; wait for key
#_1CCFB9: db $F7 ; cursor to row 1
#_1CCFBA: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCFC2: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CCFC7: db $F8 ; cursor to row 2
#_1CCFC8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCFD0: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CCFD5: db $F9 ; cursor to row 3
#_1CCFD6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CCFDE: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CCFE3: db $FC, $02 ; set text speed
#_1CCFE5: db $F7 ; cursor to row 1
#_1CCFE6: db $CC, $C4, $54, $54, $51, $70, $8A, $FF ; ⋯『オオイナル⎵
#_1CCFEE: db $5D, $6F, $5D, $51, $C5, $24 ; ワザワイ』の
#_1CCFF4: db $F8 ; cursor to row 2
#_1CCFF5: db $FD, $F9 ; write kanji - 予
#_1CCFF7: db $FD, $16 ; write kanji - 言
#_1CCFF9: db $28 ; は
#_1CCFFA: db $FD, $93 ; write kanji - 知
#_1CCFFC: db $4A, $1B, $01, $30, $12, $08, $C6 ; っていますか?
#_1CD003: db $F9 ; cursor to row 3
#_1CD004: db $FD, $26 ; write kanji - 私
#_1CD006: db $28, $C8, $0C, $02, $09, $01, $1B, $01 ; は,こうきいてい
#_1CD00E: db $30, $12, $CC, $CD ; ます⋯。
#_1CD012: db $FC, $01 ; set text speed
#_1CD014: db $FA ; wait for key
#_1CD015: db $F7 ; cursor to row 1
#_1CD016: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD01E: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD024: db $F8 ; cursor to row 2
#_1CD025: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD02D: db $FF, $FF, $FF ; ⎵⎵⎵
#_1CD030: db $F9 ; cursor to row 3
#_1CD031: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD039: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD03E: db $FC, $02 ; set text speed
#_1CD040: db $F7 ; cursor to row 1
#_1CD041: db $34, $11, $34, $C8 ; もしも,
#_1CD045: db $FD, $85 ; write kanji - 悪
#_1CD047: db $11, $09 ; しき
#_1CD049: db $FD, $E6 ; write kanji - 心
#_1CD04B: db $0E, $34, $1A ; をもつ
#_1CD04E: db $FD, $1E ; write kanji - 者
#_1CD050: db $15, $C8 ; が,
#_1CD052: db $F8 ; cursor to row 2
#_1CD053: db $6C, $88, $51, $7A, $9F, $C9, $62, $0E ; トライフォ－スを
#_1CD05B: db $FD, $3E ; write kanji - 手
#_1CD05D: db $21, $12, $3A, $20, $38 ; にするなら
#_1CD062: db $F9 ; cursor to row 3
#_1CD063: db $3D, $C8, $C4 ; ば,『
#_1CD066: db $FD, $A0 ; write kanji - 勇
#_1CD068: db $FD, $1E ; write kanji - 者
#_1CD06A: db $C5, $15 ; 』が
#_1CD06C: db $FD, $30 ; write kanji - 必
#_1CD06E: db $26 ; ず
#_1CD06F: db $FD, $BC ; write kanji - 現
#_1CD071: db $3B, $C8 ; れ,
#_1CD073: db $FC, $01 ; set text speed
#_1CD075: db $FA ; wait for key
#_1CD076: db $F7 ; cursor to row 1
#_1CD077: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD07F: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD085: db $F8 ; cursor to row 2
#_1CD086: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD08E: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD094: db $F9 ; cursor to row 3
#_1CD095: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD09D: db $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵
#_1CD0A1: db $FC, $02 ; set text speed
#_1CD0A3: db $F7 ; cursor to row 1
#_1CD0A4: db $0C, $24, $C4, $54, $54, $51, $70, $8A ; この『オオイナル
#_1CD0AC: db $FF, $5D, $6F, $5D, $51, $C5 ; ⎵ワザワイ』
#_1CD0B2: db $F8 ; cursor to row 2
#_1CD0B3: db $24, $34, $1C, $1C, $20, $3A ; のもととなる
#_1CD0B9: db $FD, $1E ; write kanji - 者
#_1CD0BB: db $0E, $02, $1A, $36, $00, $3C, $02 ; をうつであろう
#_1CD0C2: db $FC, $01 ; set text speed
#_1CD0C4: db $FA ; wait for key
#_1CD0C5: db $F7 ; cursor to row 1
#_1CD0C6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD0CE: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD0D4: db $F8 ; cursor to row 2
#_1CD0D5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD0DD: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD0E3: db $FC, $02 ; set text speed
#_1CD0E5: db $F7 ; cursor to row 1
#_1CD0E6: db $11, $08, $11, $C8, $C4 ; しかし,『
#_1CD0EB: db $FD, $A0 ; write kanji - 勇
#_1CD0ED: db $FD, $1E ; write kanji - 者
#_1CD0EF: db $C5, $15 ; 』が
#_1CD0F1: db $FD, $29 ; write kanji - 倒
#_1CD0F3: db $3B, $18 ; れた
#_1CD0F5: db $FD, $88 ; write kanji - 時
#_1CD0F7: db $28 ; は
#_1CD0F8: db $F8 ; cursor to row 2
#_1CD0F9: db $FD, $85 ; write kanji - 悪
#_1CD0FB: db $11, $09 ; しき
#_1CD0FD: db $FD, $E6 ; write kanji - 心
#_1CD0FF: db $24 ; の
#_1CD100: db $FD, $1E ; write kanji - 者
#_1CD102: db $21 ; に
#_1CD103: db $FD, $E8 ; write kanji - 世
#_1CD105: db $FD, $E9 ; write kanji - 界
#_1CD107: db $28, $C8, $04, $04, $0D ; は,おおわ
#_1CD10C: db $F9 ; cursor to row 3
#_1CD10D: db $3B, $1B, $11, $30, $02, $36, $00, $3C ; れてしまうであろ
#_1CD115: db $02, $C8, $1C, $CC, $CD ; う,と⋯。
#_1CD11A: db $FC, $01 ; set text speed
#_1CD11C: db $FA ; wait for key
#_1CD11D: db $F7 ; cursor to row 1
#_1CD11E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD126: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD12C: db $F8 ; cursor to row 2
#_1CD12D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD135: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD13B: db $F9 ; cursor to row 3
#_1CD13C: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD144: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD14A: db $FC, $02 ; set text speed
#_1CD14C: db $F7 ; cursor to row 1
#_1CD14D: db $14, $02, $C8, $C4 ; そう,『
#_1CD151: db $FD, $A0 ; write kanji - 勇
#_1CD153: db $FD, $1E ; write kanji - 者
#_1CD155: db $C5, $21, $20, $3B, $3A, $24, $28, $C8 ; 』になれるのは,
#_1CD15D: db $F8 ; cursor to row 2
#_1CD15E: db $78, $51, $89, $50, $24 ; ハイリアの
#_1CD163: db $FD, $44 ; write kanji - 王
#_1CD165: db $FD, $56 ; write kanji - 家
#_1CD167: db $0E ; を
#_1CD168: db $FD, $91 ; write kanji - 守
#_1CD16A: db $4A, $1B, $01, $18 ; っていた
#_1CD16E: db $F9 ; cursor to row 3
#_1CD16F: db $70, $51, $6C, $24, $C9 ; ナイトの－
#_1CD174: db $FD, $F2 ; write kanji - 族
#_1CD176: db $24 ; の
#_1CD177: db $FD, $1E ; write kanji - 者
#_1CD179: db $2E, $0B, $24, $28, $26, $CC ; だけのはず⋯
#_1CD17F: db $FC, $01 ; set text speed
#_1CD181: db $FA ; wait for key
#_1CD182: db $F7 ; cursor to row 1
#_1CD183: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD18B: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD191: db $F8 ; cursor to row 2
#_1CD192: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD19A: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD19F: db $F9 ; cursor to row 3
#_1CD1A0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD1A8: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD1AE: db $FC, $02 ; set text speed
#_1CD1B0: db $F7 ; cursor to row 1
#_1CD1B1: db $00, $20, $18, $28, $C8, $14, $24 ; あなたは,その
#_1CD1B8: db $FD, $B9 ; write kanji - 血
#_1CD1BA: db $0E, $29, $01, $1B, $01, $18 ; をひいていた
#_1CD1C0: db $F8 ; cursor to row 2
#_1CD1C1: db $24, $23, $CD, $FF, $77, $8A, $7E ; のね。⎵ゼルダ
#_1CD1C8: db $FD, $FF ; write kanji - 姫
#_1CD1CA: db $0E ; を
#_1CD1CB: db $FD, $30 ; write kanji - 必
#_1CD1CD: db $26 ; ず
#_1CD1CE: db $FD, $28 ; write kanji - 救
#_1CD1D0: db $4A, $1B ; って
#_1CD1D2: db $F9 ; cursor to row 3
#_1CD1D3: db $00, $1D, $1B, $23, $CD ; あげてね。
#_1CD1D8: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK] あなたのおかげで
; 魔族の手から,のがれる事が
; できました。ありがとう⋯。
; 7賢者が,闇世界との通路を
; 封印する時,魔族の攻撃から
; 賢者達を守ってくれたのが,
; ナイトの－族でした。その時の
; たたかいで,ナイトの血すじは
; ほとんどたえてしまったと,
; きいていたんだけど⋯。
; たぶん,あなたはナイトの血を
; ひくさいごの1人⋯。
; そのさいごの1人が『勇者』と
; なる力を秘めていたなんて,
; ふしぎな事ね。
; あなたなら,きっとガノンを
; 倒せるわ!
Message_0133:
#_1CD1D9: db $FC, $02 ; set text speed
#_1CD1DB: db $FE, $6D, $01 ; set window position
#_1CD1DE: db $FE, $6B, $02 ; set window type
#_1CD1E1: db $FE, $6A ; write player name
#_1CD1E3: db $FF, $00, $20, $18, $24, $04, $08, $1D ; ⎵あなたのおかげ
#_1CD1EB: db $36 ; で
#_1CD1EC: db $F8 ; cursor to row 2
#_1CD1ED: db $FD, $2D ; write kanji - 魔
#_1CD1EF: db $FD, $F2 ; write kanji - 族
#_1CD1F1: db $24 ; の
#_1CD1F2: db $FD, $3E ; write kanji - 手
#_1CD1F4: db $08, $38, $C8, $24, $15, $3B, $3A ; から,のがれる
#_1CD1FB: db $FD, $22 ; write kanji - 事
#_1CD1FD: db $15 ; が
#_1CD1FE: db $F9 ; cursor to row 3
#_1CD1FF: db $36, $09, $30, $11, $18, $CD, $00, $39 ; できました。あり
#_1CD207: db $15, $1C, $02, $CC, $CD ; がとう⋯。
#_1CD20C: db $FC, $01 ; set text speed
#_1CD20E: db $FA ; wait for key
#_1CD20F: db $F7 ; cursor to row 1
#_1CD210: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD218: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD21D: db $F8 ; cursor to row 2
#_1CD21E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD226: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD22B: db $F9 ; cursor to row 3
#_1CD22C: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD234: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD239: db $FC, $02 ; set text speed
#_1CD23B: db $F7 ; cursor to row 1
#_1CD23C: db $A7 ; 7
#_1CD23D: db $FD, $C4 ; write kanji - 賢
#_1CD23F: db $FD, $1E ; write kanji - 者
#_1CD241: db $15, $C8 ; が,
#_1CD243: db $FD, $57 ; write kanji - 闇
#_1CD245: db $FD, $E8 ; write kanji - 世
#_1CD247: db $FD, $E9 ; write kanji - 界
#_1CD249: db $1C, $24 ; との
#_1CD24B: db $FD, $09 ; write kanji - 通
#_1CD24D: db $FD, $B6 ; write kanji - 路
#_1CD24F: db $0E ; を
#_1CD250: db $F8 ; cursor to row 2
#_1CD251: db $FD, $9E ; write kanji - 封
#_1CD253: db $FD, $35 ; write kanji - 印
#_1CD255: db $12, $3A ; する
#_1CD257: db $FD, $88 ; write kanji - 時
#_1CD259: db $C8 ; ,
#_1CD25A: db $FD, $2D ; write kanji - 魔
#_1CD25C: db $FD, $F2 ; write kanji - 族
#_1CD25E: db $24 ; の
#_1CD25F: db $FD, $E2 ; write kanji - 攻
#_1CD261: db $FD, $E3 ; write kanji - 撃
#_1CD263: db $08, $38 ; から
#_1CD265: db $F9 ; cursor to row 3
#_1CD266: db $FD, $C4 ; write kanji - 賢
#_1CD268: db $FD, $1E ; write kanji - 者
#_1CD26A: db $FD, $13 ; write kanji - 達
#_1CD26C: db $0E ; を
#_1CD26D: db $FD, $91 ; write kanji - 守
#_1CD26F: db $4A, $1B, $0A, $3B, $18, $24, $15, $C8 ; ってくれたのが,
#_1CD277: db $FC, $01 ; set text speed
#_1CD279: db $FA ; wait for key
#_1CD27A: db $F7 ; cursor to row 1
#_1CD27B: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD283: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD288: db $F8 ; cursor to row 2
#_1CD289: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD291: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD296: db $F9 ; cursor to row 3
#_1CD297: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD29F: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD2A4: db $FC, $02 ; set text speed
#_1CD2A6: db $F7 ; cursor to row 1
#_1CD2A7: db $70, $51, $6C, $24, $C9 ; ナイトの－
#_1CD2AC: db $FD, $F2 ; write kanji - 族
#_1CD2AE: db $36, $11, $18, $CD, $14, $24 ; でした。その
#_1CD2B4: db $FD, $88 ; write kanji - 時
#_1CD2B6: db $24 ; の
#_1CD2B7: db $F8 ; cursor to row 2
#_1CD2B8: db $18, $18, $08, $01, $36, $C8, $70, $51 ; たたかいで,ナイ
#_1CD2C0: db $6C, $24 ; トの
#_1CD2C2: db $FD, $B9 ; write kanji - 血
#_1CD2C4: db $12, $25, $28 ; すじは
#_1CD2C7: db $F9 ; cursor to row 3
#_1CD2C8: db $2C, $1C, $0F, $37, $18, $03, $1B, $11 ; ほとんどたえてし
#_1CD2D0: db $30, $4A, $18, $1C, $C8 ; まったと,
#_1CD2D5: db $FC, $01 ; set text speed
#_1CD2D7: db $FA ; wait for key
#_1CD2D8: db $F7 ; cursor to row 1
#_1CD2D9: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD2E1: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD2E7: db $F8 ; cursor to row 2
#_1CD2E8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD2F0: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD2F6: db $F9 ; cursor to row 3
#_1CD2F7: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD2FF: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD304: db $FC, $02 ; set text speed
#_1CD306: db $F7 ; cursor to row 1
#_1CD307: db $09, $01, $1B, $01, $18, $0F, $2E, $0B ; きいていたんだけ
#_1CD30F: db $37, $CC, $CD ; ど⋯。
#_1CD312: db $F8 ; cursor to row 2
#_1CD313: db $18, $3F, $0F, $C8, $00, $20, $18, $28 ; たぶん,あなたは
#_1CD31B: db $70, $51, $6C, $24 ; ナイトの
#_1CD31F: db $FD, $B9 ; write kanji - 血
#_1CD321: db $0E ; を
#_1CD322: db $F9 ; cursor to row 3
#_1CD323: db $29, $0A, $10, $01, $1E, $24, $A1 ; ひくさいごの1
#_1CD32A: db $FD, $38 ; write kanji - 人
#_1CD32C: db $CC, $CD ; ⋯。
#_1CD32E: db $FC, $01 ; set text speed
#_1CD330: db $FA ; wait for key
#_1CD331: db $F7 ; cursor to row 1
#_1CD332: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD33A: db $FF, $FF, $FF ; ⎵⎵⎵
#_1CD33D: db $F8 ; cursor to row 2
#_1CD33E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD346: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD34C: db $F9 ; cursor to row 3
#_1CD34D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD355: db $FF, $FF ; ⎵⎵
#_1CD357: db $FC, $02 ; set text speed
#_1CD359: db $F7 ; cursor to row 1
#_1CD35A: db $14, $24, $10, $01, $1E, $24, $A1 ; そのさいごの1
#_1CD361: db $FD, $38 ; write kanji - 人
#_1CD363: db $15, $C4 ; が『
#_1CD365: db $FD, $A0 ; write kanji - 勇
#_1CD367: db $FD, $1E ; write kanji - 者
#_1CD369: db $C5, $1C ; 』と
#_1CD36B: db $F8 ; cursor to row 2
#_1CD36C: db $20, $3A ; なる
#_1CD36E: db $FD, $99 ; write kanji - 力
#_1CD370: db $0E ; を
#_1CD371: db $FD, $C1 ; write kanji - 秘
#_1CD373: db $33, $1B, $01, $18, $20, $0F, $1B, $C8 ; めていたなんて,
#_1CD37B: db $F9 ; cursor to row 3
#_1CD37C: db $2A, $11, $16, $20 ; ふしぎな
#_1CD380: db $FD, $22 ; write kanji - 事
#_1CD382: db $23, $CD ; ね。
#_1CD384: db $FC, $01 ; set text speed
#_1CD386: db $FA ; wait for key
#_1CD387: db $F7 ; cursor to row 1
#_1CD388: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD390: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD396: db $F8 ; cursor to row 2
#_1CD397: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD39F: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD3A4: db $F9 ; cursor to row 3
#_1CD3A5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵
#_1CD3AC: db $FC, $02 ; set text speed
#_1CD3AE: db $F7 ; cursor to row 1
#_1CD3AF: db $00, $20, $18, $20, $38, $C8, $09, $4A ; あなたなら,きっ
#_1CD3B7: db $1C, $65, $74, $5F, $0E ; とガノンを
#_1CD3BC: db $F8 ; cursor to row 2
#_1CD3BD: db $FD, $29 ; write kanji - 倒
#_1CD3BF: db $13, $3A, $0D, $C7 ; せるわ!
#_1CD3C3: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK] あなたのおかげで
; 魔族の手から,のがれる事が
; できました。ありがとう⋯。
; ハイリアの民は,ふしぎな力を
; あやつることが,できたと言い
; ます。7賢者もそうだったの。
; でも,長い年月の間にハイリア
; の血はうすれ,7賢者の血を
; ひく私達も強い力はありません
; ただ,勇気を司どるナイトの力
; があれば,知恵を司どる賢者の
; 力もより大きくなるはずよ!
; お城にできた,光と闇をつなぐ
; 道が,完全に開くまで
; もう,あまり時間がないわ。
; ガノンを倒せば,この闇の世界
; もなくなり,トライフォ－スは
; また,つぎの持ちぬしが,
; 現れるのをまっているはずです
; あなたを信じています。
; ⋯ がんばって⋯。
Message_0134:
#_1CD3C4: db $FC, $02 ; set text speed
#_1CD3C6: db $FE, $6D, $01 ; set window position
#_1CD3C9: db $FE, $6B, $02 ; set window type
#_1CD3CC: db $FE, $6A ; write player name
#_1CD3CE: db $FF, $00, $20, $18, $24, $04, $08, $1D ; ⎵あなたのおかげ
#_1CD3D6: db $36 ; で
#_1CD3D7: db $F8 ; cursor to row 2
#_1CD3D8: db $FD, $2D ; write kanji - 魔
#_1CD3DA: db $FD, $F2 ; write kanji - 族
#_1CD3DC: db $24 ; の
#_1CD3DD: db $FD, $3E ; write kanji - 手
#_1CD3DF: db $08, $38, $C8, $24, $15, $3B, $3A ; から,のがれる
#_1CD3E6: db $FD, $22 ; write kanji - 事
#_1CD3E8: db $15 ; が
#_1CD3E9: db $F9 ; cursor to row 3
#_1CD3EA: db $36, $09, $30, $11, $18, $CD, $00, $39 ; できました。あり
#_1CD3F2: db $15, $1C, $02, $CC, $CD ; がとう⋯。
#_1CD3F7: db $FC, $01 ; set text speed
#_1CD3F9: db $FA ; wait for key
#_1CD3FA: db $F7 ; cursor to row 1
#_1CD3FB: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD403: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD408: db $F8 ; cursor to row 2
#_1CD409: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD411: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD416: db $F9 ; cursor to row 3
#_1CD417: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD41F: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD424: db $FC, $02 ; set text speed
#_1CD426: db $F7 ; cursor to row 1
#_1CD427: db $78, $51, $89, $50, $24 ; ハイリアの
#_1CD42C: db $FD, $F8 ; write kanji - 民
#_1CD42E: db $28, $C8, $2A, $11, $16, $20 ; は,ふしぎな
#_1CD434: db $FD, $99 ; write kanji - 力
#_1CD436: db $0E ; を
#_1CD437: db $F8 ; cursor to row 2
#_1CD438: db $00, $05, $1A, $3A, $0C, $1C, $15, $C8 ; あやつることが,
#_1CD440: db $36, $09, $18, $1C ; できたと
#_1CD444: db $FD, $16 ; write kanji - 言
#_1CD446: db $01 ; い
#_1CD447: db $F9 ; cursor to row 3
#_1CD448: db $30, $12, $CD, $A7 ; ます。7
#_1CD44C: db $FD, $C4 ; write kanji - 賢
#_1CD44E: db $FD, $1E ; write kanji - 者
#_1CD450: db $34, $14, $02, $2E, $4A, $18, $24, $CD ; もそうだったの。
#_1CD458: db $FC, $01 ; set text speed
#_1CD45A: db $FA ; wait for key
#_1CD45B: db $F7 ; cursor to row 1
#_1CD45C: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD464: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD46A: db $F8 ; cursor to row 2
#_1CD46B: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD473: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD479: db $F9 ; cursor to row 3
#_1CD47A: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD482: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD488: db $FC, $02 ; set text speed
#_1CD48A: db $F7 ; cursor to row 1
#_1CD48B: db $36, $34, $C8 ; でも,
#_1CD48E: db $FD, $8D ; write kanji - 長
#_1CD490: db $01 ; い
#_1CD491: db $FD, $A1 ; write kanji - 年
#_1CD493: db $FD, $FE ; write kanji - 月
#_1CD495: db $24 ; の
#_1CD496: db $FD, $39 ; write kanji - 間
#_1CD498: db $21, $78, $51, $89, $50 ; にハイリア
#_1CD49D: db $F8 ; cursor to row 2
#_1CD49E: db $24 ; の
#_1CD49F: db $FD, $B9 ; write kanji - 血
#_1CD4A1: db $28, $02, $12, $3B, $C8, $A7 ; はうすれ,7
#_1CD4A7: db $FD, $C4 ; write kanji - 賢
#_1CD4A9: db $FD, $1E ; write kanji - 者
#_1CD4AB: db $24 ; の
#_1CD4AC: db $FD, $B9 ; write kanji - 血
#_1CD4AE: db $0E ; を
#_1CD4AF: db $F9 ; cursor to row 3
#_1CD4B0: db $29, $0A ; ひく
#_1CD4B2: db $FD, $26 ; write kanji - 私
#_1CD4B4: db $FD, $13 ; write kanji - 達
#_1CD4B6: db $34 ; も
#_1CD4B7: db $FD, $FB ; write kanji - 強
#_1CD4B9: db $01 ; い
#_1CD4BA: db $FD, $99 ; write kanji - 力
#_1CD4BC: db $28, $00, $39, $30, $13, $0F ; はありません
#_1CD4C2: db $FC, $01 ; set text speed
#_1CD4C4: db $FA ; wait for key
#_1CD4C5: db $F7 ; cursor to row 1
#_1CD4C6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD4CE: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD4D4: db $F8 ; cursor to row 2
#_1CD4D5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD4DD: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD4E2: db $F9 ; cursor to row 3
#_1CD4E3: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD4EB: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD4F1: db $FC, $02 ; set text speed
#_1CD4F3: db $F7 ; cursor to row 1
#_1CD4F4: db $18, $2E, $C8 ; ただ,
#_1CD4F7: db $FD, $A0 ; write kanji - 勇
#_1CD4F9: db $FD, $37 ; write kanji - 気
#_1CD4FB: db $0E ; を
#_1CD4FC: db $FD, $0D ; write kanji - 司
#_1CD4FE: db $37, $3A, $70, $51, $6C, $24 ; どるナイトの
#_1CD504: db $FD, $99 ; write kanji - 力
#_1CD506: db $F8 ; cursor to row 2
#_1CD507: db $15, $00, $3B, $3D, $C8 ; があれば,
#_1CD50C: db $FD, $93 ; write kanji - 知
#_1CD50E: db $FD, $41 ; write kanji - 恵
#_1CD510: db $0E ; を
#_1CD511: db $FD, $0D ; write kanji - 司
#_1CD513: db $37, $3A ; どる
#_1CD515: db $FD, $C4 ; write kanji - 賢
#_1CD517: db $FD, $1E ; write kanji - 者
#_1CD519: db $24 ; の
#_1CD51A: db $F9 ; cursor to row 3
#_1CD51B: db $FD, $99 ; write kanji - 力
#_1CD51D: db $34, $07, $39 ; もより
#_1CD520: db $FD, $5F ; write kanji - 大
#_1CD522: db $09, $0A, $20, $3A, $28, $26, $07, $C7 ; きくなるはずよ!
#_1CD52A: db $FC, $01 ; set text speed
#_1CD52C: db $FA ; wait for key
#_1CD52D: db $F7 ; cursor to row 1
#_1CD52E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD536: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD53C: db $F8 ; cursor to row 2
#_1CD53D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD545: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD54B: db $F9 ; cursor to row 3
#_1CD54C: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD554: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD55A: db $FC, $02 ; set text speed
#_1CD55C: db $F7 ; cursor to row 1
#_1CD55D: db $04 ; お
#_1CD55E: db $FD, $01 ; write kanji - 城
#_1CD560: db $21, $36, $09, $18, $C8 ; にできた,
#_1CD565: db $FD, $73 ; write kanji - 光
#_1CD567: db $1C ; と
#_1CD568: db $FD, $57 ; write kanji - 闇
#_1CD56A: db $0E, $1A, $20, $17 ; をつなぐ
#_1CD56E: db $F8 ; cursor to row 2
#_1CD56F: db $FD, $5D ; write kanji - 道
#_1CD571: db $15, $C8 ; が,
#_1CD573: db $FD, $BA ; write kanji - 完
#_1CD575: db $FD, $BE ; write kanji - 全
#_1CD577: db $21 ; に
#_1CD578: db $FD, $4B ; write kanji - 開
#_1CD57A: db $0A, $30, $36 ; くまで
#_1CD57D: db $F9 ; cursor to row 3
#_1CD57E: db $34, $02, $C8, $00, $30, $39 ; もう,あまり
#_1CD584: db $FD, $88 ; write kanji - 時
#_1CD586: db $FD, $39 ; write kanji - 間
#_1CD588: db $15, $20, $01, $0D, $CD ; がないわ。
#_1CD58D: db $FC, $01 ; set text speed
#_1CD58F: db $FA ; wait for key
#_1CD590: db $F7 ; cursor to row 1
#_1CD591: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD599: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD59F: db $F8 ; cursor to row 2
#_1CD5A0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD5A8: db $FF, $FF ; ⎵⎵
#_1CD5AA: db $F9 ; cursor to row 3
#_1CD5AB: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD5B3: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD5B8: db $FC, $02 ; set text speed
#_1CD5BA: db $F7 ; cursor to row 1
#_1CD5BB: db $65, $74, $5F, $0E ; ガノンを
#_1CD5BF: db $FD, $29 ; write kanji - 倒
#_1CD5C1: db $13, $3D, $C8, $0C, $24 ; せば,この
#_1CD5C6: db $FD, $57 ; write kanji - 闇
#_1CD5C8: db $24 ; の
#_1CD5C9: db $FD, $E8 ; write kanji - 世
#_1CD5CB: db $FD, $E9 ; write kanji - 界
#_1CD5CD: db $F8 ; cursor to row 2
#_1CD5CE: db $34, $20, $0A, $20, $39, $C8, $6C, $88 ; もなくなり,トラ
#_1CD5D6: db $51, $7A, $9F, $C9, $62, $28 ; イフォ－スは
#_1CD5DC: db $F9 ; cursor to row 3
#_1CD5DD: db $30, $18, $C8, $1A, $16, $24 ; また,つぎの
#_1CD5E3: db $FD, $DB ; write kanji - 持
#_1CD5E5: db $19, $22, $11, $15, $C8 ; ちぬしが,
#_1CD5EA: db $FC, $01 ; set text speed
#_1CD5EC: db $FA ; wait for key
#_1CD5ED: db $F7 ; cursor to row 1
#_1CD5EE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD5F6: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD5FC: db $F8 ; cursor to row 2
#_1CD5FD: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD605: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD60B: db $F9 ; cursor to row 3
#_1CD60C: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD614: db $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵
#_1CD618: db $FC, $02 ; set text speed
#_1CD61A: db $F7 ; cursor to row 1
#_1CD61B: db $FD, $BC ; write kanji - 現
#_1CD61D: db $3B, $3A, $24, $0E, $30, $4A, $1B, $01 ; れるのをまってい
#_1CD625: db $3A, $28, $26, $36, $12 ; るはずです
#_1CD62A: db $F8 ; cursor to row 2
#_1CD62B: db $00, $20, $18, $0E ; あなたを
#_1CD62F: db $FD, $45 ; write kanji - 信
#_1CD631: db $25, $1B, $01, $30, $12, $CD ; じています。
#_1CD637: db $F9 ; cursor to row 3
#_1CD638: db $FF, $CC, $FF, $15, $0F, $3D, $4A, $1B ; ⎵⋯⎵がんばって
#_1CD640: db $CC, $CD ; ⋯。
#_1CD642: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK] あなたのおかげで
; 魔族の手から,のがれる事が
; できました。ありがとう⋯。
; ガノンが私達を集めたのは,
; ガノンの力では7賢者の封印を
; やぶれなかったからなの。
; そこで,司祭アグニムを使って
; 賢者の力をうけつぐ娘7人を
; 闇世界におくりこませたの。
; 7人の力をりようして,封印を
; やぶったあと,ようがすんだ
; 私達はクリスタルに封じられ,
; 魔物達にあたえられたわ。ただ
; あなたの事を知らなかったのは
; ガノンのミスだったわね。
; さあ,ゼルダ姫がカメイワで
; あなたをまっています。
; 急いで行ってあげて下さい。
Message_0135:
#_1CD643: db $FC, $02 ; set text speed
#_1CD645: db $FE, $6D, $01 ; set window position
#_1CD648: db $FE, $6B, $02 ; set window type
#_1CD64B: db $FE, $6A ; write player name
#_1CD64D: db $FF, $00, $20, $18, $24, $04, $08, $1D ; ⎵あなたのおかげ
#_1CD655: db $36 ; で
#_1CD656: db $F8 ; cursor to row 2
#_1CD657: db $FD, $2D ; write kanji - 魔
#_1CD659: db $FD, $F2 ; write kanji - 族
#_1CD65B: db $24 ; の
#_1CD65C: db $FD, $3E ; write kanji - 手
#_1CD65E: db $08, $38, $C8, $24, $15, $3B, $3A ; から,のがれる
#_1CD665: db $FD, $22 ; write kanji - 事
#_1CD667: db $15 ; が
#_1CD668: db $F9 ; cursor to row 3
#_1CD669: db $36, $09, $30, $11, $18, $CD, $00, $39 ; できました。あり
#_1CD671: db $15, $1C, $02, $CC, $CD ; がとう⋯。
#_1CD676: db $FC, $01 ; set text speed
#_1CD678: db $FA ; wait for key
#_1CD679: db $F7 ; cursor to row 1
#_1CD67A: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD682: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD687: db $F8 ; cursor to row 2
#_1CD688: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD690: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD695: db $F9 ; cursor to row 3
#_1CD696: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD69E: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD6A3: db $FC, $02 ; set text speed
#_1CD6A5: db $F7 ; cursor to row 1
#_1CD6A6: db $65, $74, $5F, $15 ; ガノンが
#_1CD6AA: db $FD, $26 ; write kanji - 私
#_1CD6AC: db $FD, $13 ; write kanji - 達
#_1CD6AE: db $0E ; を
#_1CD6AF: db $FD, $E0 ; write kanji - 集
#_1CD6B1: db $33, $18, $24, $28, $C8 ; めたのは,
#_1CD6B6: db $F8 ; cursor to row 2
#_1CD6B7: db $65, $74, $5F, $24 ; ガノンの
#_1CD6BB: db $FD, $99 ; write kanji - 力
#_1CD6BD: db $36, $28, $A7 ; では7
#_1CD6C0: db $FD, $C4 ; write kanji - 賢
#_1CD6C2: db $FD, $1E ; write kanji - 者
#_1CD6C4: db $24 ; の
#_1CD6C5: db $FD, $9E ; write kanji - 封
#_1CD6C7: db $FD, $35 ; write kanji - 印
#_1CD6C9: db $0E ; を
#_1CD6CA: db $F9 ; cursor to row 3
#_1CD6CB: db $05, $3F, $3B, $20, $08, $4A, $18, $08 ; やぶれなかったか
#_1CD6D3: db $38, $20, $24, $CD ; らなの。
#_1CD6D7: db $FC, $01 ; set text speed
#_1CD6D9: db $FA ; wait for key
#_1CD6DA: db $F7 ; cursor to row 1
#_1CD6DB: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD6E3: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD6E8: db $F8 ; cursor to row 2
#_1CD6E9: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD6F1: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD6F7: db $F9 ; cursor to row 3
#_1CD6F8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD700: db $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵
#_1CD704: db $FC, $02 ; set text speed
#_1CD706: db $F7 ; cursor to row 1
#_1CD707: db $14, $0C, $36, $C8 ; そこで,
#_1CD70B: db $FD, $0D ; write kanji - 司
#_1CD70D: db $FD, $17 ; write kanji - 祭
#_1CD70F: db $50, $67, $71, $82, $0E ; アグニムを
#_1CD714: db $FD, $89 ; write kanji - 使
#_1CD716: db $4A, $1B ; って
#_1CD718: db $F8 ; cursor to row 2
#_1CD719: db $FD, $C4 ; write kanji - 賢
#_1CD71B: db $FD, $1E ; write kanji - 者
#_1CD71D: db $24 ; の
#_1CD71E: db $FD, $99 ; write kanji - 力
#_1CD720: db $0E, $02, $0B, $1A, $17 ; をうけつぐ
#_1CD725: db $FD, $00 ; write kanji - 娘
#_1CD727: db $A7 ; 7
#_1CD728: db $FD, $38 ; write kanji - 人
#_1CD72A: db $0E ; を
#_1CD72B: db $F9 ; cursor to row 3
#_1CD72C: db $FD, $57 ; write kanji - 闇
#_1CD72E: db $FD, $E8 ; write kanji - 世
#_1CD730: db $FD, $E9 ; write kanji - 界
#_1CD732: db $21, $04, $0A, $39, $0C, $30, $13, $18 ; におくりこませた
#_1CD73A: db $24, $CD ; の。
#_1CD73C: db $FC, $01 ; set text speed
#_1CD73E: db $FA ; wait for key
#_1CD73F: db $F7 ; cursor to row 1
#_1CD740: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD748: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD74E: db $F8 ; cursor to row 2
#_1CD74F: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD757: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD75C: db $F9 ; cursor to row 3
#_1CD75D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD765: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD76A: db $FC, $02 ; set text speed
#_1CD76C: db $F7 ; cursor to row 1
#_1CD76D: db $A7 ; 7
#_1CD76E: db $FD, $38 ; write kanji - 人
#_1CD770: db $24 ; の
#_1CD771: db $FD, $99 ; write kanji - 力
#_1CD773: db $0E, $39, $07, $02, $11, $1B, $C8 ; をりようして,
#_1CD77A: db $FD, $9E ; write kanji - 封
#_1CD77C: db $FD, $35 ; write kanji - 印
#_1CD77E: db $0E ; を
#_1CD77F: db $F8 ; cursor to row 2
#_1CD780: db $05, $3F, $4A, $18, $00, $1C, $C8, $07 ; やぶったあと,よ
#_1CD788: db $02, $15, $12, $0F, $2E ; うがすんだ
#_1CD78D: db $F9 ; cursor to row 3
#_1CD78E: db $FD, $26 ; write kanji - 私
#_1CD790: db $FD, $13 ; write kanji - 達
#_1CD792: db $28, $5A, $89, $62, $68, $8A, $21 ; はクリスタルに
#_1CD799: db $FD, $9E ; write kanji - 封
#_1CD79B: db $25, $38, $3B, $C8 ; じられ,
#_1CD79F: db $FC, $01 ; set text speed
#_1CD7A1: db $FA ; wait for key
#_1CD7A2: db $F7 ; cursor to row 1
#_1CD7A3: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD7AB: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD7B1: db $F8 ; cursor to row 2
#_1CD7B2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD7BA: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD7BF: db $F9 ; cursor to row 3
#_1CD7C0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD7C8: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD7CE: db $FC, $02 ; set text speed
#_1CD7D0: db $F7 ; cursor to row 1
#_1CD7D1: db $FD, $2D ; write kanji - 魔
#_1CD7D3: db $FD, $51 ; write kanji - 物
#_1CD7D5: db $FD, $13 ; write kanji - 達
#_1CD7D7: db $21, $00, $18, $03, $38, $3B, $18, $0D ; にあたえられたわ
#_1CD7DF: db $CD, $18, $2E ; 。ただ
#_1CD7E2: db $F8 ; cursor to row 2
#_1CD7E3: db $00, $20, $18, $24 ; あなたの
#_1CD7E7: db $FD, $22 ; write kanji - 事
#_1CD7E9: db $0E ; を
#_1CD7EA: db $FD, $93 ; write kanji - 知
#_1CD7EC: db $38, $20, $08, $4A, $18, $24, $28 ; らなかったのは
#_1CD7F3: db $F9 ; cursor to row 3
#_1CD7F4: db $65, $74, $5F, $24, $81, $62, $2E, $4A ; ガノンのミスだっ
#_1CD7FC: db $18, $0D, $23, $CD ; たわね。
#_1CD800: db $FC, $01 ; set text speed
#_1CD802: db $FA ; wait for key
#_1CD803: db $F7 ; cursor to row 1
#_1CD804: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD80C: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD812: db $F8 ; cursor to row 2
#_1CD813: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD81B: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD821: db $F9 ; cursor to row 3
#_1CD822: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD82A: db $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵
#_1CD82E: db $FC, $02 ; set text speed
#_1CD830: db $F7 ; cursor to row 1
#_1CD831: db $10, $00, $C8, $77, $8A, $7E ; さあ,ゼルダ
#_1CD837: db $FD, $FF ; write kanji - 姫
#_1CD839: db $15, $58, $83, $51, $5D, $36 ; がカメイワで
#_1CD83F: db $F8 ; cursor to row 2
#_1CD840: db $00, $20, $18, $0E, $30, $4A, $1B, $01 ; あなたをまってい
#_1CD848: db $30, $12, $CD ; ます。
#_1CD84B: db $F9 ; cursor to row 3
#_1CD84C: db $FD, $7D ; write kanji - 急
#_1CD84E: db $01, $36 ; いで
#_1CD850: db $FD, $02 ; write kanji - 行
#_1CD852: db $4A, $1B, $00, $1D, $1B ; ってあげて
#_1CD857: db $FD, $61 ; write kanji - 下
#_1CD859: db $10, $01, $CD ; さい。
#_1CD85C: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK],よくここまで来てく
; れました。 やっぱりあなたが
; 伝説の『勇者』だったのね。
; はじめて会った時から,そんな
; 気がしていました。
; ⋯ ⋯ ⋯
; ガノンは,デスマウンテンの塔
; に結界をはり,2つの世界の通
; り道をぬける時をまっています
; ガノンが光の世界へ出てしまっ
; たら,もう捕える事はできない
; かも知れないわ。
; でも,このとじた空間のなかな
; ら,どこへ逃げても必ず見付け
; る事ができます。
; さあ,7つのクリスタルをもっ
; て,ガノンの塔へ急ぎましょう
; 結界は,私達の力でやぶります
; [LINK] ⋯
; 必ず平和な国を
; とり戻しましょうね ⋯ ⋯
Message_0136:
#_1CD85D: db $FC, $02 ; set text speed
#_1CD85F: db $FE, $6D, $01 ; set window position
#_1CD862: db $FE, $6B, $02 ; set window type
#_1CD865: db $FE, $6A ; write player name
#_1CD867: db $C8, $07, $0A, $0C, $0C, $30, $36 ; ,よくここまで
#_1CD86E: db $FD, $D6 ; write kanji - 来
#_1CD870: db $1B, $0A ; てく
#_1CD872: db $F8 ; cursor to row 2
#_1CD873: db $3B, $30, $11, $18, $CD, $FF, $05, $4A ; れました。⎵やっ
#_1CD87B: db $42, $39, $00, $20, $18, $15 ; ぱりあなたが
#_1CD881: db $F9 ; cursor to row 3
#_1CD882: db $FD, $2E ; write kanji - 伝
#_1CD884: db $FD, $2F ; write kanji - 説
#_1CD886: db $24, $C4 ; の『
#_1CD888: db $FD, $A0 ; write kanji - 勇
#_1CD88A: db $FD, $1E ; write kanji - 者
#_1CD88C: db $C5, $2E, $4A, $18, $24, $23, $CD ; 』だったのね。
#_1CD893: db $FC, $01 ; set text speed
#_1CD895: db $FA ; wait for key
#_1CD896: db $F7 ; cursor to row 1
#_1CD897: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD89F: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD8A5: db $F8 ; cursor to row 2
#_1CD8A6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD8AE: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD8B4: db $F9 ; cursor to row 3
#_1CD8B5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD8BD: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CD8C2: db $FC, $02 ; set text speed
#_1CD8C4: db $F7 ; cursor to row 1
#_1CD8C5: db $28, $25, $33, $1B ; はじめて
#_1CD8C9: db $FD, $04 ; write kanji - 会
#_1CD8CB: db $4A, $18 ; った
#_1CD8CD: db $FD, $88 ; write kanji - 時
#_1CD8CF: db $08, $38, $C8, $14, $0F, $20 ; から,そんな
#_1CD8D5: db $F8 ; cursor to row 2
#_1CD8D6: db $FD, $37 ; write kanji - 気
#_1CD8D8: db $15, $11, $1B, $01, $30, $11, $18, $CD ; がしていました。
#_1CD8E0: db $F9 ; cursor to row 3
#_1CD8E1: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1CD8E7: db $FC, $01 ; set text speed
#_1CD8E9: db $FA ; wait for key
#_1CD8EA: db $F7 ; cursor to row 1
#_1CD8EB: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD8F3: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD8F9: db $F8 ; cursor to row 2
#_1CD8FA: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD902: db $FF ; ⎵
#_1CD903: db $F9 ; cursor to row 3
#_1CD904: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD90A: db $FC, $02 ; set text speed
#_1CD90C: db $F7 ; cursor to row 1
#_1CD90D: db $65, $74, $5F, $28, $C8, $86, $62, $80 ; ガノンは,デスマ
#_1CD915: db $52, $5F, $6B, $5F, $24 ; ウンテンの
#_1CD91A: db $FD, $D5 ; write kanji - 塔
#_1CD91C: db $F8 ; cursor to row 2
#_1CD91D: db $21 ; に
#_1CD91E: db $FD, $83 ; write kanji - 結
#_1CD920: db $FD, $E9 ; write kanji - 界
#_1CD922: db $0E, $28, $39, $C8, $A2, $1A, $24 ; をはり,2つの
#_1CD929: db $FD, $E8 ; write kanji - 世
#_1CD92B: db $FD, $E9 ; write kanji - 界
#_1CD92D: db $24 ; の
#_1CD92E: db $FD, $09 ; write kanji - 通
#_1CD930: db $F9 ; cursor to row 3
#_1CD931: db $39 ; り
#_1CD932: db $FD, $5D ; write kanji - 道
#_1CD934: db $0E, $22, $0B, $3A ; をぬける
#_1CD938: db $FD, $88 ; write kanji - 時
#_1CD93A: db $0E, $30, $4A, $1B, $01, $30, $12 ; をまっています
#_1CD941: db $FC, $01 ; set text speed
#_1CD943: db $FA ; wait for key
#_1CD944: db $F7 ; cursor to row 1
#_1CD945: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD94D: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD953: db $F8 ; cursor to row 2
#_1CD954: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD95C: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD962: db $F9 ; cursor to row 3
#_1CD963: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD96B: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD971: db $FC, $02 ; set text speed
#_1CD973: db $F7 ; cursor to row 1
#_1CD974: db $65, $74, $5F, $15 ; ガノンが
#_1CD978: db $FD, $73 ; write kanji - 光
#_1CD97A: db $24 ; の
#_1CD97B: db $FD, $E8 ; write kanji - 世
#_1CD97D: db $FD, $E9 ; write kanji - 界
#_1CD97F: db $2B ; へ
#_1CD980: db $FD, $23 ; write kanji - 出
#_1CD982: db $1B, $11, $30, $4A ; てしまっ
#_1CD986: db $F8 ; cursor to row 2
#_1CD987: db $18, $38, $C8, $34, $02 ; たら,もう
#_1CD98C: db $FD, $9F ; write kanji - 捕
#_1CD98E: db $03, $3A ; える
#_1CD990: db $FD, $22 ; write kanji - 事
#_1CD992: db $28, $36, $09, $20, $01 ; はできない
#_1CD997: db $F9 ; cursor to row 3
#_1CD998: db $08, $34 ; かも
#_1CD99A: db $FD, $93 ; write kanji - 知
#_1CD99C: db $3B, $20, $01, $0D, $CD ; れないわ。
#_1CD9A1: db $FC, $01 ; set text speed
#_1CD9A3: db $FA ; wait for key
#_1CD9A4: db $F7 ; cursor to row 1
#_1CD9A5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD9AD: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD9B3: db $F8 ; cursor to row 2
#_1CD9B4: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD9BC: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CD9C2: db $F9 ; cursor to row 3
#_1CD9C3: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CD9CB: db $FC, $02 ; set text speed
#_1CD9CD: db $F7 ; cursor to row 1
#_1CD9CE: db $36, $34, $C8, $0C, $24, $1C, $25, $18 ; でも,このとじた
#_1CD9D6: db $FD, $AA ; write kanji - 空
#_1CD9D8: db $FD, $39 ; write kanji - 間
#_1CD9DA: db $24, $20, $08, $20 ; のなかな
#_1CD9DE: db $F8 ; cursor to row 2
#_1CD9DF: db $38, $C8, $37, $0C, $2B ; ら,どこへ
#_1CD9E4: db $FD, $DD ; write kanji - 逃
#_1CD9E6: db $1D, $1B, $34 ; げても
#_1CD9E9: db $FD, $30 ; write kanji - 必
#_1CD9EB: db $26 ; ず
#_1CD9EC: db $FD, $4C ; write kanji - 見
#_1CD9EE: db $FD, $52 ; write kanji - 付
#_1CD9F0: db $0B ; け
#_1CD9F1: db $F9 ; cursor to row 3
#_1CD9F2: db $3A ; る
#_1CD9F3: db $FD, $22 ; write kanji - 事
#_1CD9F5: db $15, $36, $09, $30, $12, $CD ; ができます。
#_1CD9FB: db $FC, $01 ; set text speed
#_1CD9FD: db $FA ; wait for key
#_1CD9FE: db $F7 ; cursor to row 1
#_1CD9FF: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDA07: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDA0D: db $F8 ; cursor to row 2
#_1CDA0E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDA16: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDA1C: db $F9 ; cursor to row 3
#_1CDA1D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDA25: db $FC, $02 ; set text speed
#_1CDA27: db $F7 ; cursor to row 1
#_1CDA28: db $10, $00, $C8, $A7, $1A, $24, $5A, $89 ; さあ,7つのクリ
#_1CDA30: db $62, $68, $8A, $0E, $34, $4A ; スタルをもっ
#_1CDA36: db $F8 ; cursor to row 2
#_1CDA37: db $1B, $C8, $65, $74, $5F, $24 ; て,ガノンの
#_1CDA3D: db $FD, $D5 ; write kanji - 塔
#_1CDA3F: db $2B ; へ
#_1CDA40: db $FD, $7D ; write kanji - 急
#_1CDA42: db $16, $30, $11, $49, $02 ; ぎましょう
#_1CDA47: db $F9 ; cursor to row 3
#_1CDA48: db $FD, $83 ; write kanji - 結
#_1CDA4A: db $FD, $E9 ; write kanji - 界
#_1CDA4C: db $28, $C8 ; は,
#_1CDA4E: db $FD, $26 ; write kanji - 私
#_1CDA50: db $FD, $13 ; write kanji - 達
#_1CDA52: db $24 ; の
#_1CDA53: db $FD, $99 ; write kanji - 力
#_1CDA55: db $36, $05, $3F, $39, $30, $12 ; でやぶります
#_1CDA5B: db $FC, $01 ; set text speed
#_1CDA5D: db $FA ; wait for key
#_1CDA5E: db $F7 ; cursor to row 1
#_1CDA5F: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDA67: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDA6D: db $F8 ; cursor to row 2
#_1CDA6E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDA76: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDA7C: db $F9 ; cursor to row 3
#_1CDA7D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDA85: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDA8B: db $FC, $02 ; set text speed
#_1CDA8D: db $F7 ; cursor to row 1
#_1CDA8E: db $FF ; ⎵
#_1CDA8F: db $FE, $6A ; write player name
#_1CDA91: db $FF, $CC ; ⎵⋯
#_1CDA93: db $F8 ; cursor to row 2
#_1CDA94: db $FD, $30 ; write kanji - 必
#_1CDA96: db $26 ; ず
#_1CDA97: db $FD, $0B ; write kanji - 平
#_1CDA99: db $FD, $0C ; write kanji - 和
#_1CDA9B: db $20 ; な
#_1CDA9C: db $FD, $2B ; write kanji - 国
#_1CDA9E: db $0E ; を
#_1CDA9F: db $F9 ; cursor to row 3
#_1CDAA0: db $1C, $39 ; とり
#_1CDAA2: db $FD, $0F ; write kanji - 戻
#_1CDAA4: db $11, $30, $11, $49, $02, $23, $FF, $CC ; しましょうね⎵⋯
#_1CDAAC: db $FF, $CC ; ⎵⋯
#_1CDAAE: db $FE, $79, $2D ; play sound effect
#_1CDAB1: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 勇者の行く道がトライフォ－ス
; へと,みちびかれますように。
Message_0137:
#_1CDAB2: db $FC, $02 ; set text speed
#_1CDAB4: db $FE, $6D, $01 ; set window position
#_1CDAB7: db $FE, $6B, $02 ; set window type
#_1CDABA: db $FD, $A0 ; write kanji - 勇
#_1CDABC: db $FD, $1E ; write kanji - 者
#_1CDABE: db $24 ; の
#_1CDABF: db $FD, $02 ; write kanji - 行
#_1CDAC1: db $0A ; く
#_1CDAC2: db $FD, $5D ; write kanji - 道
#_1CDAC4: db $15, $6C, $88, $51, $7A, $9F, $C9, $62 ; がトライフォ－ス
#_1CDACC: db $F8 ; cursor to row 2
#_1CDACD: db $2B, $1C, $C8, $31, $19, $3E, $08, $3B ; へと,みちびかれ
#_1CDAD5: db $30, $12, $07, $02, $21, $CD ; ますように。
#_1CDADB: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ちゃんときこえたかしら?
; ▶ う ん
;   ぜんぜん
Message_0138:
#_1CDADC: db $FC, $02 ; set text speed
#_1CDADE: db $FE, $6D, $01 ; set window position
#_1CDAE1: db $FE, $6B, $02 ; set window type
#_1CDAE4: db $19, $47, $0F, $1C, $09, $0C, $03, $18 ; ちゃんときこえた
#_1CDAEC: db $08, $11, $38, $C6 ; かしら?
#_1CDAF0: db $F8 ; cursor to row 2
#_1CDAF1: db $FF, $FF, $E4, $FF, $02, $FF, $FF, $0F ; ⎵⎵▶⎵う⎵⎵ん
#_1CDAF9: db $F9 ; cursor to row 3
#_1CDAFA: db $FF, $FF, $FF, $FF, $27, $0F, $27, $0F ; ⎵⎵⎵⎵ぜんぜん
#_1CDB02: db $FE, $68 ; get player selection - choose 2 low
#_1CDB04: db $FB ; end of message

;===================================================================================================
; Opening GT
;===================================================================================================
; [LINK]! 私達7人の力で
; ガノンの塔の結界をやぶります
Message_0139:
#_1CDB05: db $FE, $6A ; write player name
#_1CDB07: db $C7, $FF ; !⎵
#_1CDB09: db $FD, $26 ; write kanji - 私
#_1CDB0B: db $FD, $13 ; write kanji - 達
#_1CDB0D: db $A7 ; 7
#_1CDB0E: db $FD, $38 ; write kanji - 人
#_1CDB10: db $24 ; の
#_1CDB11: db $FD, $99 ; write kanji - 力
#_1CDB13: db $36 ; で
#_1CDB14: db $F8 ; cursor to row 2
#_1CDB15: db $65, $74, $5F, $24 ; ガノンの
#_1CDB19: db $FD, $D5 ; write kanji - 塔
#_1CDB1B: db $24 ; の
#_1CDB1C: db $FD, $83 ; write kanji - 結
#_1CDB1E: db $FD, $E9 ; write kanji - 界
#_1CDB20: db $0E, $05, $3F, $39, $30, $12 ; をやぶります
#_1CDB26: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; [LINK],よくここまで来てく
; れました。 やっぱりあなたが
; 伝説の『勇者』だったのね。
; はじめて会った時から,そんな
; 気がしていました。
; ⋯ ⋯ ⋯
; ガノンは,デスマウンテンの塔
; に結界をはり,2つの世界の通
; り道をぬける時をまっています
; ガノンが光の世界へ出てしまっ
; たら,もう捕える事はできない
; かも知れないわ。
; でも,このとじた空間のなかな
; ら,どこへ逃げても必ず見付け
; る事ができます。
; あなたの助けをまつ娘達が,ま
; だ残っているわ。
; 彼女達をすべて救い出したら
; ガノンの塔へ向かうのよ。
; 結界は,7賢者の血を引く私達
; の力で必ずやぶります。
; [LINK] ⋯
; 必ず平和な国を
; とり戻しましょうね ⋯ ⋯
Message_013A:
#_1CDB27: db $FC, $02 ; set text speed
#_1CDB29: db $FE, $6D, $01 ; set window position
#_1CDB2C: db $FE, $6B, $02 ; set window type
#_1CDB2F: db $FE, $6A ; write player name
#_1CDB31: db $C8, $07, $0A, $0C, $0C, $30, $36 ; ,よくここまで
#_1CDB38: db $FD, $D6 ; write kanji - 来
#_1CDB3A: db $1B, $0A ; てく
#_1CDB3C: db $F8 ; cursor to row 2
#_1CDB3D: db $3B, $30, $11, $18, $CD, $FF, $05, $4A ; れました。⎵やっ
#_1CDB45: db $42, $39, $00, $20, $18, $15 ; ぱりあなたが
#_1CDB4B: db $F9 ; cursor to row 3
#_1CDB4C: db $FD, $2E ; write kanji - 伝
#_1CDB4E: db $FD, $2F ; write kanji - 説
#_1CDB50: db $24, $C4 ; の『
#_1CDB52: db $FD, $A0 ; write kanji - 勇
#_1CDB54: db $FD, $1E ; write kanji - 者
#_1CDB56: db $C5, $2E, $4A, $18, $24, $23, $CD ; 』だったのね。
#_1CDB5D: db $FC, $01 ; set text speed
#_1CDB5F: db $FA ; wait for key
#_1CDB60: db $F7 ; cursor to row 1
#_1CDB61: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDB69: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDB6F: db $F8 ; cursor to row 2
#_1CDB70: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDB78: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDB7E: db $F9 ; cursor to row 3
#_1CDB7F: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDB87: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CDB8C: db $FC, $02 ; set text speed
#_1CDB8E: db $F7 ; cursor to row 1
#_1CDB8F: db $28, $25, $33, $1B ; はじめて
#_1CDB93: db $FD, $04 ; write kanji - 会
#_1CDB95: db $4A, $18 ; った
#_1CDB97: db $FD, $88 ; write kanji - 時
#_1CDB99: db $08, $38, $C8, $14, $0F, $20 ; から,そんな
#_1CDB9F: db $F8 ; cursor to row 2
#_1CDBA0: db $FD, $37 ; write kanji - 気
#_1CDBA2: db $15, $11, $1B, $01, $30, $11, $18, $CD ; がしていました。
#_1CDBAA: db $F9 ; cursor to row 3
#_1CDBAB: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1CDBB1: db $FC, $01 ; set text speed
#_1CDBB3: db $FA ; wait for key
#_1CDBB4: db $F7 ; cursor to row 1
#_1CDBB5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDBBD: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDBC3: db $F8 ; cursor to row 2
#_1CDBC4: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDBCC: db $FF ; ⎵
#_1CDBCD: db $F9 ; cursor to row 3
#_1CDBCE: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDBD4: db $FC, $02 ; set text speed
#_1CDBD6: db $F7 ; cursor to row 1
#_1CDBD7: db $65, $74, $5F, $28, $C8, $86, $62, $80 ; ガノンは,デスマ
#_1CDBDF: db $52, $5F, $6B, $5F, $24 ; ウンテンの
#_1CDBE4: db $FD, $D5 ; write kanji - 塔
#_1CDBE6: db $F8 ; cursor to row 2
#_1CDBE7: db $21 ; に
#_1CDBE8: db $FD, $83 ; write kanji - 結
#_1CDBEA: db $FD, $E9 ; write kanji - 界
#_1CDBEC: db $0E, $28, $39, $C8, $A2, $1A, $24 ; をはり,2つの
#_1CDBF3: db $FD, $E8 ; write kanji - 世
#_1CDBF5: db $FD, $E9 ; write kanji - 界
#_1CDBF7: db $24 ; の
#_1CDBF8: db $FD, $09 ; write kanji - 通
#_1CDBFA: db $F9 ; cursor to row 3
#_1CDBFB: db $39 ; り
#_1CDBFC: db $FD, $5D ; write kanji - 道
#_1CDBFE: db $0E, $22, $0B, $3A ; をぬける
#_1CDC02: db $FD, $88 ; write kanji - 時
#_1CDC04: db $0E, $30, $4A, $1B, $01, $30, $12 ; をまっています
#_1CDC0B: db $FC, $01 ; set text speed
#_1CDC0D: db $FA ; wait for key
#_1CDC0E: db $F7 ; cursor to row 1
#_1CDC0F: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDC17: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDC1D: db $F8 ; cursor to row 2
#_1CDC1E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDC26: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDC2C: db $F9 ; cursor to row 3
#_1CDC2D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDC35: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDC3B: db $FC, $02 ; set text speed
#_1CDC3D: db $F7 ; cursor to row 1
#_1CDC3E: db $65, $74, $5F, $15 ; ガノンが
#_1CDC42: db $FD, $73 ; write kanji - 光
#_1CDC44: db $24 ; の
#_1CDC45: db $FD, $E8 ; write kanji - 世
#_1CDC47: db $FD, $E9 ; write kanji - 界
#_1CDC49: db $2B ; へ
#_1CDC4A: db $FD, $23 ; write kanji - 出
#_1CDC4C: db $1B, $11, $30, $4A ; てしまっ
#_1CDC50: db $F8 ; cursor to row 2
#_1CDC51: db $18, $38, $C8, $34, $02 ; たら,もう
#_1CDC56: db $FD, $9F ; write kanji - 捕
#_1CDC58: db $03, $3A ; える
#_1CDC5A: db $FD, $22 ; write kanji - 事
#_1CDC5C: db $28, $36, $09, $20, $01 ; はできない
#_1CDC61: db $F9 ; cursor to row 3
#_1CDC62: db $08, $34 ; かも
#_1CDC64: db $FD, $93 ; write kanji - 知
#_1CDC66: db $3B, $20, $01, $0D, $CD ; れないわ。
#_1CDC6B: db $FC, $01 ; set text speed
#_1CDC6D: db $FA ; wait for key
#_1CDC6E: db $F7 ; cursor to row 1
#_1CDC6F: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDC77: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDC7D: db $F8 ; cursor to row 2
#_1CDC7E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDC86: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDC8C: db $F9 ; cursor to row 3
#_1CDC8D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDC95: db $FC, $02 ; set text speed
#_1CDC97: db $F7 ; cursor to row 1
#_1CDC98: db $36, $34, $C8, $0C, $24, $1C, $25, $18 ; でも,このとじた
#_1CDCA0: db $FD, $AA ; write kanji - 空
#_1CDCA2: db $FD, $39 ; write kanji - 間
#_1CDCA4: db $24, $20, $08, $20 ; のなかな
#_1CDCA8: db $F8 ; cursor to row 2
#_1CDCA9: db $38, $C8, $37, $0C, $2B ; ら,どこへ
#_1CDCAE: db $FD, $DD ; write kanji - 逃
#_1CDCB0: db $1D, $1B, $34 ; げても
#_1CDCB3: db $FD, $30 ; write kanji - 必
#_1CDCB5: db $26 ; ず
#_1CDCB6: db $FD, $4C ; write kanji - 見
#_1CDCB8: db $FD, $52 ; write kanji - 付
#_1CDCBA: db $0B ; け
#_1CDCBB: db $F9 ; cursor to row 3
#_1CDCBC: db $3A ; る
#_1CDCBD: db $FD, $22 ; write kanji - 事
#_1CDCBF: db $15, $36, $09, $30, $12, $CD ; ができます。
#_1CDCC5: db $FC, $01 ; set text speed
#_1CDCC7: db $FA ; wait for key
#_1CDCC8: db $F7 ; cursor to row 1
#_1CDCC9: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDCD1: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDCD7: db $F8 ; cursor to row 2
#_1CDCD8: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDCE0: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDCE6: db $F9 ; cursor to row 3
#_1CDCE7: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDCEF: db $FC, $02 ; set text speed
#_1CDCF1: db $F7 ; cursor to row 1
#_1CDCF2: db $00, $20, $18, $24 ; あなたの
#_1CDCF6: db $FD, $CA ; write kanji - 助
#_1CDCF8: db $0B, $0E, $30, $1A ; けをまつ
#_1CDCFC: db $FD, $00 ; write kanji - 娘
#_1CDCFE: db $FD, $13 ; write kanji - 達
#_1CDD00: db $15, $C8, $30 ; が,ま
#_1CDD03: db $F8 ; cursor to row 2
#_1CDD04: db $2E ; だ
#_1CDD05: db $FD, $C6 ; write kanji - 残
#_1CDD07: db $4A, $1B, $01, $3A, $0D, $CD ; っているわ。
#_1CDD0D: db $F9 ; cursor to row 3
#_1CDD0E: db $FD, $14 ; write kanji - 彼
#_1CDD10: db $FD, $15 ; write kanji - 女
#_1CDD12: db $FD, $13 ; write kanji - 達
#_1CDD14: db $0E, $12, $40, $1B ; をすべて
#_1CDD18: db $FD, $28 ; write kanji - 救
#_1CDD1A: db $01 ; い
#_1CDD1B: db $FD, $23 ; write kanji - 出
#_1CDD1D: db $11, $18, $38 ; したら
#_1CDD20: db $FC, $01 ; set text speed
#_1CDD22: db $FA ; wait for key
#_1CDD23: db $F7 ; cursor to row 1
#_1CDD24: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDD2C: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDD32: db $F8 ; cursor to row 2
#_1CDD33: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDD3B: db $F9 ; cursor to row 3
#_1CDD3C: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDD44: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CDD49: db $FC, $02 ; set text speed
#_1CDD4B: db $F7 ; cursor to row 1
#_1CDD4C: db $65, $74, $5F, $24 ; ガノンの
#_1CDD50: db $FD, $D5 ; write kanji - 塔
#_1CDD52: db $2B ; へ
#_1CDD53: db $FD, $86 ; write kanji - 向
#_1CDD55: db $08, $02, $24, $07, $CD ; かうのよ。
#_1CDD5A: db $F8 ; cursor to row 2
#_1CDD5B: db $FD, $83 ; write kanji - 結
#_1CDD5D: db $FD, $E9 ; write kanji - 界
#_1CDD5F: db $28, $C8, $A7 ; は,7
#_1CDD62: db $FD, $C4 ; write kanji - 賢
#_1CDD64: db $FD, $1E ; write kanji - 者
#_1CDD66: db $24 ; の
#_1CDD67: db $FD, $B9 ; write kanji - 血
#_1CDD69: db $0E ; を
#_1CDD6A: db $FD, $48 ; write kanji - 引
#_1CDD6C: db $0A ; く
#_1CDD6D: db $FD, $26 ; write kanji - 私
#_1CDD6F: db $FD, $13 ; write kanji - 達
#_1CDD71: db $F9 ; cursor to row 3
#_1CDD72: db $24 ; の
#_1CDD73: db $FD, $99 ; write kanji - 力
#_1CDD75: db $36 ; で
#_1CDD76: db $FD, $30 ; write kanji - 必
#_1CDD78: db $26, $05, $3F, $39, $30, $12, $CD ; ずやぶります。
#_1CDD7F: db $FC, $01 ; set text speed
#_1CDD81: db $FA ; wait for key
#_1CDD82: db $F7 ; cursor to row 1
#_1CDD83: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDD8B: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDD91: db $F8 ; cursor to row 2
#_1CDD92: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDD9A: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CDDA0: db $F9 ; cursor to row 3
#_1CDDA1: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CDDA9: db $FF, $FF, $FF ; ⎵⎵⎵
#_1CDDAC: db $FC, $02 ; set text speed
#_1CDDAE: db $F7 ; cursor to row 1
#_1CDDAF: db $FF ; ⎵
#_1CDDB0: db $FE, $6A ; write player name
#_1CDDB2: db $FF, $CC ; ⎵⋯
#_1CDDB4: db $F8 ; cursor to row 2
#_1CDDB5: db $FD, $30 ; write kanji - 必
#_1CDDB7: db $26 ; ず
#_1CDDB8: db $FD, $0B ; write kanji - 平
#_1CDDBA: db $FD, $0C ; write kanji - 和
#_1CDDBC: db $20 ; な
#_1CDDBD: db $FD, $2B ; write kanji - 国
#_1CDDBF: db $0E ; を
#_1CDDC0: db $F9 ; cursor to row 3
#_1CDDC1: db $1C, $39 ; とり
#_1CDDC3: db $FD, $0F ; write kanji - 戻
#_1CDDC5: db $11, $30, $11, $49, $02, $23, $FF, $CC ; しましょうね⎵⋯
#_1CDDCD: db $FF, $CC ; ⎵⋯
#_1CDDCF: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; いやあ,[LINK]殿。
; おまちしておりましたぞ!
; クックック⋯。
; あなたの目の前で ゼルダを
; 消してやろうと思いましてね。
; 見よ!ゼルダのさいごじゃあ!
Message_013B:
#_1CDDD0: db $01, $05, $00, $C8 ; いやあ,
#_1CDDD4: db $FE, $6A ; write player name
#_1CDDD6: db $FD, $90 ; write kanji - 殿
#_1CDDD8: db $CD ; 。
#_1CDDD9: db $F8 ; cursor to row 2
#_1CDDDA: db $04, $30, $19, $11, $1B, $04, $39, $30 ; おまちしておりま
#_1CDDE2: db $11, $18, $2D, $C7 ; したぞ!
#_1CDDE6: db $F9 ; cursor to row 3
#_1CDDE7: db $5A, $9A, $5A, $9A, $5A, $CC, $CD ; クックック⋯。
#_1CDDEE: db $FA ; wait for key
#_1CDDEF: db $F6 ; scroll text
#_1CDDF0: db $00, $20, $18, $24 ; あなたの
#_1CDDF4: db $FD, $75 ; write kanji - 目
#_1CDDF6: db $24 ; の
#_1CDDF7: db $FD, $78 ; write kanji - 前
#_1CDDF9: db $36, $FF, $77, $8A, $7E, $0E ; で⎵ゼルダを
#_1CDDFF: db $F6 ; scroll text
#_1CDE00: db $FD, $9D ; write kanji - 消
#_1CDE02: db $11, $1B, $05, $3C, $02, $1C ; してやろうと
#_1CDE08: db $FD, $36 ; write kanji - 思
#_1CDE0A: db $01, $30, $11, $1B, $23, $CD ; いましてね。
#_1CDE10: db $F6 ; scroll text
#_1CDE11: db $FD, $4C ; write kanji - 見
#_1CDE13: db $07, $C7, $77, $8A, $7E, $24, $10, $01 ; よ!ゼルダのさい
#_1CDE1B: db $1E, $25, $47, $00, $C7 ; ごじゃあ!
#_1CDE20: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ホォッホッホッ⋯。 これで,
; 7賢者の封印も めでたく
; とかれたワケですなあ。
; 魔の力が,この国をおおいつく
; すのも時間のもんだいですぞ⋯
; しょせん伝説の『勇者』も
; 『黄金の力』を持つ,われらが
; 魔族には,かないませんか。
; ホォッホッホッ さらばじゃ!
Message_013C:
#_1CDE21: db $7C, $9F, $9A, $7C, $9A, $7C, $9A, $CC ; ホォッホッホッ⋯
#_1CDE29: db $CD, $FF, $0C, $3B, $36, $C8 ; 。⎵これで,
#_1CDE2F: db $F8 ; cursor to row 2
#_1CDE30: db $A7 ; 7
#_1CDE31: db $FD, $C4 ; write kanji - 賢
#_1CDE33: db $FD, $1E ; write kanji - 者
#_1CDE35: db $24 ; の
#_1CDE36: db $FD, $9E ; write kanji - 封
#_1CDE38: db $FD, $35 ; write kanji - 印
#_1CDE3A: db $34, $FF, $33, $36, $18, $0A ; も⎵めでたく
#_1CDE40: db $F9 ; cursor to row 3
#_1CDE41: db $1C, $08, $3B, $18, $5D, $5B, $36, $12 ; とかれたワケです
#_1CDE49: db $20, $00, $CD ; なあ。
#_1CDE4C: db $FA ; wait for key
#_1CDE4D: db $F6 ; scroll text
#_1CDE4E: db $FD, $2D ; write kanji - 魔
#_1CDE50: db $24 ; の
#_1CDE51: db $FD, $99 ; write kanji - 力
#_1CDE53: db $15, $C8, $0C, $24 ; が,この
#_1CDE57: db $FD, $2B ; write kanji - 国
#_1CDE59: db $0E, $04, $04, $01, $1A, $0A ; をおおいつく
#_1CDE5F: db $F6 ; scroll text
#_1CDE60: db $12, $24, $34 ; すのも
#_1CDE63: db $FD, $88 ; write kanji - 時
#_1CDE65: db $FD, $39 ; write kanji - 間
#_1CDE67: db $24, $34, $0F, $2E, $01, $36, $12, $2D ; のもんだいですぞ
#_1CDE6F: db $CC ; ⋯
#_1CDE70: db $F6 ; scroll text
#_1CDE71: db $11, $49, $13, $0F ; しょせん
#_1CDE75: db $FD, $2E ; write kanji - 伝
#_1CDE77: db $FD, $2F ; write kanji - 説
#_1CDE79: db $24, $C4 ; の『
#_1CDE7B: db $FD, $A0 ; write kanji - 勇
#_1CDE7D: db $FD, $1E ; write kanji - 者
#_1CDE7F: db $C5, $34 ; 』も
#_1CDE81: db $FA ; wait for key
#_1CDE82: db $F6 ; scroll text
#_1CDE83: db $C4 ; 『
#_1CDE84: db $FD, $98 ; write kanji - 黄
#_1CDE86: db $FD, $43 ; write kanji - 金
#_1CDE88: db $24 ; の
#_1CDE89: db $FD, $99 ; write kanji - 力
#_1CDE8B: db $C5, $0E ; 』を
#_1CDE8D: db $FD, $DB ; write kanji - 持
#_1CDE8F: db $1A, $C8, $0D, $3B, $38, $15 ; つ,われらが
#_1CDE95: db $F6 ; scroll text
#_1CDE96: db $FD, $2D ; write kanji - 魔
#_1CDE98: db $FD, $F2 ; write kanji - 族
#_1CDE9A: db $21, $28, $C8, $08, $20, $01, $30, $13 ; には,かないませ
#_1CDEA2: db $0F, $08, $CD ; んか。
#_1CDEA5: db $F6 ; scroll text
#_1CDEA6: db $7C, $9F, $9A, $7C, $9A, $7C, $9A, $FF ; ホォッホッホッ⎵
#_1CDEAE: db $10, $38, $3D, $25, $47, $C7 ; さらばじゃ!
#_1CDEB4: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ほほう,どうしてもやられたい
; と言うのですな⋯。 では,
; そのノゾミ かなえてやろう!
Message_013D:
#_1CDEB5: db $2C, $2C, $02, $C8, $37, $02, $11, $1B ; ほほう,どうして
#_1CDEBD: db $34, $05, $38, $3B, $18, $01 ; もやられたい
#_1CDEC3: db $F8 ; cursor to row 2
#_1CDEC4: db $1C ; と
#_1CDEC5: db $FD, $16 ; write kanji - 言
#_1CDEC7: db $02, $24, $36, $12, $20, $CC, $CD, $FF ; うのですな⋯。⎵
#_1CDECF: db $36, $28, $C8 ; では,
#_1CDED2: db $F9 ; cursor to row 3
#_1CDED3: db $14, $24, $74, $7D, $81, $FF, $08, $20 ; そのノゾミ⎵かな
#_1CDEDB: db $03, $1B, $05, $3C, $02, $C7 ; えてやろう!
#_1CDEE1: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; グウゥ,さすがは,『勇者』
; しかし,このままにはせぬぞ!
; 闇世界へ引きずりこんでやる!
Message_013E:
#_1CDEE2: db $67, $52, $9D, $C8, $10, $12, $15, $28 ; グウゥ,さすがは
#_1CDEEA: db $C8, $C4 ; ,『
#_1CDEEC: db $FD, $A0 ; write kanji - 勇
#_1CDEEE: db $FD, $1E ; write kanji - 者
#_1CDEF0: db $C5 ; 』
#_1CDEF1: db $F8 ; cursor to row 2
#_1CDEF2: db $11, $08, $11, $C8, $0C, $24, $30, $30 ; しかし,このまま
#_1CDEFA: db $21, $28, $13, $22, $2D, $C7 ; にはせぬぞ!
#_1CDF00: db $F9 ; cursor to row 3
#_1CDF01: db $FD, $57 ; write kanji - 闇
#_1CDF03: db $FD, $E8 ; write kanji - 世
#_1CDF05: db $FD, $E9 ; write kanji - 界
#_1CDF07: db $2B ; へ
#_1CDF08: db $FD, $48 ; write kanji - 引
#_1CDF0A: db $09, $26, $39, $0C, $0F, $36, $05, $3A ; きずりこんでやる
#_1CDF12: db $C7 ; !
#_1CDF13: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ホッホッホ,よくぞここまで
; まいられました,[LINK]殿。
; もう1度お会いできてわたくし
; とてもうれしゅうございます。
; しかし,3度目はないと,思い
; しりなさいっ!くたばれ〜っ!
Message_013F:
#_1CDF14: db $7C, $9A, $7C, $9A, $7C, $C8, $07, $0A ; ホッホッホ,よく
#_1CDF1C: db $2D, $0C, $0C, $30, $36 ; ぞここまで
#_1CDF21: db $F8 ; cursor to row 2
#_1CDF22: db $30, $01, $38, $3B, $30, $11, $18, $C8 ; まいられました,
#_1CDF2A: db $FE, $6A ; write player name
#_1CDF2C: db $FD, $90 ; write kanji - 殿
#_1CDF2E: db $CD ; 。
#_1CDF2F: db $F9 ; cursor to row 3
#_1CDF30: db $34, $02, $A1 ; もう1
#_1CDF33: db $FD, $2A ; write kanji - 度
#_1CDF35: db $04 ; お
#_1CDF36: db $FD, $04 ; write kanji - 会
#_1CDF38: db $01, $36, $09, $1B, $0D, $18, $0A, $11 ; いできてわたくし
#_1CDF40: db $FA ; wait for key
#_1CDF41: db $F6 ; scroll text
#_1CDF42: db $1C, $1B, $34, $02, $3B, $11, $48, $02 ; とてもうれしゅう
#_1CDF4A: db $1E, $1F, $01, $30, $12, $CD ; ございます。
#_1CDF50: db $F6 ; scroll text
#_1CDF51: db $11, $08, $11, $C8, $A3 ; しかし,3
#_1CDF56: db $FD, $2A ; write kanji - 度
#_1CDF58: db $FD, $75 ; write kanji - 目
#_1CDF5A: db $28, $20, $01, $1C, $C8 ; はないと,
#_1CDF5F: db $FD, $36 ; write kanji - 思
#_1CDF61: db $01 ; い
#_1CDF62: db $F6 ; scroll text
#_1CDF63: db $11, $39, $20, $10, $01, $4A, $C7, $0A ; しりなさいっ!く
#_1CDF6B: db $18, $3D, $3B, $CE, $4A, $C7 ; たばれ〜っ!
#_1CDF71: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; やあ,このワシにヨウかな?
; ▶ 水かきがほしい
;   ちょっとよっただけ
Message_0140:
#_1CDF72: db $05, $00, $C8, $0C, $24, $5D, $61, $21 ; やあ,このワシに
#_1CDF7A: db $57, $52, $08, $20, $C6 ; ヨウかな?
#_1CDF7F: db $F8 ; cursor to row 2
#_1CDF80: db $FF, $FF, $E4, $FF ; ⎵⎵▶⎵
#_1CDF84: db $FD, $66 ; write kanji - 水
#_1CDF86: db $08, $09, $15, $2C, $11, $01 ; かきがほしい
#_1CDF8C: db $F9 ; cursor to row 3
#_1CDF8D: db $FF, $FF, $FF, $FF, $19, $49, $4A, $1C ; ⎵⎵⎵⎵ちょっと
#_1CDF95: db $07, $4A, $18, $2E, $0B ; よっただけ
#_1CDF9A: db $FE, $68 ; get player selection - choose 2 low
#_1CDF9C: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; そうか,でもただではいやじゃ
; 500ルピ－くれたら,うって
; やっても良いぞ!
; どうする?
; ▶ 500ルピ－はらう
;   やっぱりやめる
Message_0141:
#_1CDF9D: db $14, $02, $08, $C8, $36, $34, $18, $2E ; そうか,でもただ
#_1CDFA5: db $36, $28, $01, $05, $25, $47 ; ではいやじゃ
#_1CDFAB: db $F8 ; cursor to row 2
#_1CDFAC: db $A5, $A0, $A0, $8A, $93, $C9, $0A, $3B ; 500ルピ－くれ
#_1CDFB4: db $18, $38, $C8, $02, $4A, $1B ; たら,うって
#_1CDFBA: db $F9 ; cursor to row 3
#_1CDFBB: db $05, $4A, $1B, $34 ; やっても
#_1CDFBF: db $FD, $32 ; write kanji - 良
#_1CDFC1: db $01, $2D, $C7 ; いぞ!
#_1CDFC4: db $FA ; wait for key
#_1CDFC5: db $F6 ; scroll text
#_1CDFC6: db $37, $02, $12, $3A, $C6 ; どうする?
#_1CDFCB: db $F6 ; scroll text
#_1CDFCC: db $FF, $FF, $E4, $FF, $A5, $A0, $A0, $8A ; ⎵⎵▶⎵500ル
#_1CDFD4: db $93, $C9, $28, $38, $02 ; ピ－はらう
#_1CDFD9: db $F6 ; scroll text
#_1CDFDA: db $FF, $FF, $FF, $FF, $05, $4A, $42, $39 ; ⎵⎵⎵⎵やっぱり
#_1CDFE2: db $05, $33, $3A ; やめる
#_1CDFE5: db $FE, $68 ; get player selection - choose 2 low
#_1CDFE7: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ワッハッハ,では水かきをあげ
; よう。 それにもうひとつサ－
; ビスしてやるぞ。
; 川や湖を結ぶワシらだけの
; 秘密の水路を使わせてやろう。
; うずまきを見たら入ってみろ。
; それじゃあ,たいせつにしてく
; れよ。 ワッハッハッ
; さらばじゃあ〜⋯。
Message_0142:
#_1CDFE8: db $5D, $9A, $78, $9A, $78, $C8, $36, $28 ; ワッハッハ,では
#_1CDFF0: db $FD, $66 ; write kanji - 水
#_1CDFF2: db $08, $09, $0E, $00, $1D ; かきをあげ
#_1CDFF7: db $F8 ; cursor to row 2
#_1CDFF8: db $07, $02, $CD, $FF, $14, $3B, $21, $34 ; よう。⎵それにも
#_1CE000: db $02, $29, $1C, $1A, $60, $C9 ; うひとつサ－
#_1CE006: db $F9 ; cursor to row 3
#_1CE007: db $8E, $62, $11, $1B, $05, $3A, $2D, $CD ; ビスしてやるぞ。
#_1CE00F: db $FA ; wait for key
#_1CE010: db $F6 ; scroll text
#_1CE011: db $FD, $B8 ; write kanji - 川
#_1CE013: db $05 ; や
#_1CE014: db $FD, $12 ; write kanji - 湖
#_1CE016: db $0E ; を
#_1CE017: db $FD, $83 ; write kanji - 結
#_1CE019: db $3F, $5D, $61, $38, $2E, $0B, $24 ; ぶワシらだけの
#_1CE020: db $F6 ; scroll text
#_1CE021: db $FD, $C1 ; write kanji - 秘
#_1CE023: db $FD, $C2 ; write kanji - 密
#_1CE025: db $24 ; の
#_1CE026: db $FD, $66 ; write kanji - 水
#_1CE028: db $FD, $B6 ; write kanji - 路
#_1CE02A: db $0E ; を
#_1CE02B: db $FD, $89 ; write kanji - 使
#_1CE02D: db $0D, $13, $1B, $05, $3C, $02, $CD ; わせてやろう。
#_1CE034: db $F6 ; scroll text
#_1CE035: db $02, $26, $30, $09, $0E ; うずまきを
#_1CE03A: db $FD, $4C ; write kanji - 見
#_1CE03C: db $18, $38 ; たら
#_1CE03E: db $FD, $49 ; write kanji - 入
#_1CE040: db $4A, $1B, $31, $3C, $CD ; ってみろ。
#_1CE045: db $FA ; wait for key
#_1CE046: db $F6 ; scroll text
#_1CE047: db $14, $3B, $25, $47, $00, $C8, $18, $01 ; それじゃあ,たい
#_1CE04F: db $13, $1A, $21, $11, $1B, $0A ; せつにしてく
#_1CE055: db $F6 ; scroll text
#_1CE056: db $3B, $07, $CD, $FF, $5D, $9A, $78, $9A ; れよ。⎵ワッハッ
#_1CE05E: db $78, $9A ; ハッ
#_1CE060: db $F6 ; scroll text
#_1CE061: db $FF, $FF, $10, $38, $3D, $25, $47, $00 ; ⎵⎵さらばじゃあ
#_1CE069: db $CE, $CC, $CD ; 〜⋯。
#_1CE06C: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; じゃあ,ルピ－を集めて,また
; ここへおいで⋯。
; ワッハッハ,また,会おうね!
Message_0143:
#_1CE06D: db $25, $47, $00, $C8, $8A, $93, $C9, $0E ; じゃあ,ルピ－を
#_1CE075: db $FD, $E0 ; write kanji - 集
#_1CE077: db $33, $1B, $C8, $30, $18 ; めて,また
#_1CE07C: db $F8 ; cursor to row 2
#_1CE07D: db $0C, $0C, $2B, $04, $01, $36, $CC, $CD ; ここへおいで⋯。
#_1CE085: db $F9 ; cursor to row 3
#_1CE086: db $5D, $9A, $78, $9A, $78, $C8, $30, $18 ; ワッハッハ,また
#_1CE08E: db $C8 ; ,
#_1CE08F: db $FD, $04 ; write kanji - 会
#_1CE091: db $04, $02, $23, $C7 ; おうね!
#_1CE095: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; そうか,ワシのかおが,みたく
; なったら,いつでもおいで⋯。
; ワッハッハ,さらばじゃあ⋯!
Message_0144:
#_1CE096: db $14, $02, $08, $C8, $5D, $61, $24, $08 ; そうか,ワシのか
#_1CE09E: db $04, $15, $C8, $31, $18, $0A ; おが,みたく
#_1CE0A4: db $F8 ; cursor to row 2
#_1CE0A5: db $20, $4A, $18, $38, $C8, $01, $1A, $36 ; なったら,いつで
#_1CE0AD: db $34, $04, $01, $36, $CC, $CD ; もおいで⋯。
#_1CE0B3: db $F9 ; cursor to row 3
#_1CE0B4: db $5D, $9A, $78, $9A, $78, $C8, $10, $38 ; ワッハッハ,さら
#_1CE0BC: db $3D, $25, $47, $00, $CC, $C7 ; ばじゃあ⋯!
#_1CE0C2: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; やあ,[LINK]おにいちゃん。
; 長老のおじいちゃんの事かい?
; 悪いやつらには,ないしょだよ
; おじいちゃんは,お城の東に
; ある,神殿にいるのさ。
; 地図に印してあげるよ,ホラ。
Message_0145:
#_1CE0C3: db $05, $00, $C8 ; やあ,
#_1CE0C6: db $FE, $6A ; write player name
#_1CE0C8: db $04, $21, $01, $19, $47, $0F, $CD ; おにいちゃん。
#_1CE0CF: db $F8 ; cursor to row 2
#_1CE0D0: db $FD, $8D ; write kanji - 長
#_1CE0D2: db $FD, $E5 ; write kanji - 老
#_1CE0D4: db $24, $04, $25, $01, $19, $47, $0F, $24 ; のおじいちゃんの
#_1CE0DC: db $FD, $22 ; write kanji - 事
#_1CE0DE: db $08, $01, $C6 ; かい?
#_1CE0E1: db $F9 ; cursor to row 3
#_1CE0E2: db $FD, $85 ; write kanji - 悪
#_1CE0E4: db $01, $05, $1A, $38, $21, $28, $C8, $20 ; いやつらには,な
#_1CE0EC: db $01, $11, $49, $2E, $07 ; いしょだよ
#_1CE0F1: db $FA ; wait for key
#_1CE0F2: db $F6 ; scroll text
#_1CE0F3: db $04, $25, $01, $19, $47, $0F, $28, $C8 ; おじいちゃんは,
#_1CE0FB: db $04 ; お
#_1CE0FC: db $FD, $01 ; write kanji - 城
#_1CE0FE: db $24 ; の
#_1CE0FF: db $FD, $D9 ; write kanji - 東
#_1CE101: db $21 ; に
#_1CE102: db $F6 ; scroll text
#_1CE103: db $00, $3A, $C8 ; ある,
#_1CE106: db $FD, $05 ; write kanji - 神
#_1CE108: db $FD, $90 ; write kanji - 殿
#_1CE10A: db $21, $01, $3A, $24, $10, $CD ; にいるのさ。
#_1CE110: db $F6 ; scroll text
#_1CE111: db $FD, $33 ; write kanji - 地
#_1CE113: db $FD, $34 ; write kanji - 図
#_1CE115: db $21 ; に
#_1CE116: db $FD, $35 ; write kanji - 印
#_1CE118: db $11, $1B, $00, $1D, $3A, $07, $C8, $7C ; してあげるよ,ホ
#_1CE120: db $88, $CD ; ラ。
#_1CE122: db $FE, $79, $2D ; play sound effect
#_1CE125: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 長老のおじいちゃんに会えた?
; 悪いやつらがいなくなれば,
; おじいちゃんも村へ帰れるのに
Message_0146:
#_1CE126: db $FD, $8D ; write kanji - 長
#_1CE128: db $FD, $E5 ; write kanji - 老
#_1CE12A: db $24, $04, $25, $01, $19, $47, $0F, $21 ; のおじいちゃんに
#_1CE132: db $FD, $04 ; write kanji - 会
#_1CE134: db $03, $18, $C6 ; えた?
#_1CE137: db $F8 ; cursor to row 2
#_1CE138: db $FD, $85 ; write kanji - 悪
#_1CE13A: db $01, $05, $1A, $38, $15, $01, $20, $0A ; いやつらがいなく
#_1CE142: db $20, $3B, $3D, $C8 ; なれば,
#_1CE146: db $F9 ; cursor to row 3
#_1CE147: db $04, $25, $01, $19, $47, $0F, $34 ; おじいちゃんも
#_1CE14E: db $FD, $8C ; write kanji - 村
#_1CE150: db $2B ; へ
#_1CE151: db $FD, $D7 ; write kanji - 帰
#_1CE153: db $3B, $3A, $24, $21 ; れるのに
#_1CE157: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おや,新ガオさんだねェ。
; お前さんも,『黄金の力』を
; 求めてこの世界へ来たのかね?
; でもな,『黄金の力』は,さい
; しょにそれに,ふれた者だけが
; 使える力だったんだ。
; その男が,この世界をつくる事
; を願った⋯,この世界はその男
; の心をうつした世界なんだ。
; オレも,よくに目がくらんで,
; ここへ来たんだが,そういう者
; は,みなモンスタ－になった。
; この世界をもとの聖地に戻す
; には,その男を倒し,『黄金の
; 力』を持つにふさわしい者が,
; それを手にするしか方法は,
; ないだろう⋯。それまでおれは
; この姿でまっているつもりだ。
; しかし,先住の民もいたずらな
; 物をのこしたもんだ。『黄金の
; 力』⋯『トライフォ－ス』か⋯
Message_0147:
#_1CE158: db $04, $05, $C8 ; おや,
#_1CE15B: db $FD, $E7 ; write kanji - 新
#_1CE15D: db $65, $54, $10, $0F, $2E, $23, $9E, $CD ; ガオさんだねェ。
#_1CE165: db $F8 ; cursor to row 2
#_1CE166: db $04 ; お
#_1CE167: db $FD, $78 ; write kanji - 前
#_1CE169: db $10, $0F, $34, $C8, $C4 ; さんも,『
#_1CE16E: db $FD, $98 ; write kanji - 黄
#_1CE170: db $FD, $43 ; write kanji - 金
#_1CE172: db $24 ; の
#_1CE173: db $FD, $99 ; write kanji - 力
#_1CE175: db $C5, $0E ; 』を
#_1CE177: db $F9 ; cursor to row 3
#_1CE178: db $FD, $9B ; write kanji - 求
#_1CE17A: db $33, $1B, $0C, $24 ; めてこの
#_1CE17E: db $FD, $E8 ; write kanji - 世
#_1CE180: db $FD, $E9 ; write kanji - 界
#_1CE182: db $2B ; へ
#_1CE183: db $FD, $D6 ; write kanji - 来
#_1CE185: db $18, $24, $08, $23, $C6 ; たのかね?
#_1CE18A: db $FA ; wait for key
#_1CE18B: db $F6 ; scroll text
#_1CE18C: db $36, $34, $20, $C8, $C4 ; でもな,『
#_1CE191: db $FD, $98 ; write kanji - 黄
#_1CE193: db $FD, $43 ; write kanji - 金
#_1CE195: db $24 ; の
#_1CE196: db $FD, $99 ; write kanji - 力
#_1CE198: db $C5, $28, $C8, $10, $01 ; 』は,さい
#_1CE19D: db $F6 ; scroll text
#_1CE19E: db $11, $49, $21, $14, $3B, $21, $C8, $2A ; しょにそれに,ふ
#_1CE1A6: db $3B, $18 ; れた
#_1CE1A8: db $FD, $1E ; write kanji - 者
#_1CE1AA: db $2E, $0B, $15 ; だけが
#_1CE1AD: db $F6 ; scroll text
#_1CE1AE: db $FD, $89 ; write kanji - 使
#_1CE1B0: db $03, $3A ; える
#_1CE1B2: db $FD, $99 ; write kanji - 力
#_1CE1B4: db $2E, $4A, $18, $0F, $2E, $CD ; だったんだ。
#_1CE1BA: db $FA ; wait for key
#_1CE1BB: db $F6 ; scroll text
#_1CE1BC: db $14, $24 ; その
#_1CE1BE: db $FD, $5E ; write kanji - 男
#_1CE1C0: db $15, $C8, $0C, $24 ; が,この
#_1CE1C4: db $FD, $E8 ; write kanji - 世
#_1CE1C6: db $FD, $E9 ; write kanji - 界
#_1CE1C8: db $0E, $1A, $0A, $3A ; をつくる
#_1CE1CC: db $FD, $22 ; write kanji - 事
#_1CE1CE: db $F6 ; scroll text
#_1CE1CF: db $0E ; を
#_1CE1D0: db $FD, $0A ; write kanji - 願
#_1CE1D2: db $4A, $18, $CC, $C8, $0C, $24 ; った⋯,この
#_1CE1D8: db $FD, $E8 ; write kanji - 世
#_1CE1DA: db $FD, $E9 ; write kanji - 界
#_1CE1DC: db $28, $14, $24 ; はその
#_1CE1DF: db $FD, $5E ; write kanji - 男
#_1CE1E1: db $F6 ; scroll text
#_1CE1E2: db $24 ; の
#_1CE1E3: db $FD, $E6 ; write kanji - 心
#_1CE1E5: db $0E, $02, $1A, $11, $18 ; をうつした
#_1CE1EA: db $FD, $E8 ; write kanji - 世
#_1CE1EC: db $FD, $E9 ; write kanji - 界
#_1CE1EE: db $20, $0F, $2E, $CD ; なんだ。
#_1CE1F2: db $FA ; wait for key
#_1CE1F3: db $F6 ; scroll text
#_1CE1F4: db $54, $8B, $34, $C8, $07, $0A, $21 ; オレも,よくに
#_1CE1FB: db $FD, $75 ; write kanji - 目
#_1CE1FD: db $15, $0A, $38, $0F, $36, $C8 ; がくらんで,
#_1CE203: db $F6 ; scroll text
#_1CE204: db $0C, $0C, $2B ; ここへ
#_1CE207: db $FD, $D6 ; write kanji - 来
#_1CE209: db $18, $0F, $2E, $15, $C8, $14, $02, $01 ; たんだが,そうい
#_1CE211: db $02 ; う
#_1CE212: db $FD, $1E ; write kanji - 者
#_1CE214: db $F6 ; scroll text
#_1CE215: db $28, $C8, $31, $20, $84, $5F, $62, $68 ; は,みなモンスタ
#_1CE21D: db $C9, $21, $20, $4A, $18, $CD ; －になった。
#_1CE223: db $FA ; wait for key
#_1CE224: db $F6 ; scroll text
#_1CE225: db $0C, $24 ; この
#_1CE227: db $FD, $E8 ; write kanji - 世
#_1CE229: db $FD, $E9 ; write kanji - 界
#_1CE22B: db $0E, $34, $1C, $24 ; をもとの
#_1CE22F: db $FD, $F6 ; write kanji - 聖
#_1CE231: db $FD, $33 ; write kanji - 地
#_1CE233: db $21 ; に
#_1CE234: db $FD, $0F ; write kanji - 戻
#_1CE236: db $12 ; す
#_1CE237: db $F6 ; scroll text
#_1CE238: db $21, $28, $C8, $14, $24 ; には,その
#_1CE23D: db $FD, $5E ; write kanji - 男
#_1CE23F: db $0E ; を
#_1CE240: db $FD, $29 ; write kanji - 倒
#_1CE242: db $11, $C8, $C4 ; し,『
#_1CE245: db $FD, $98 ; write kanji - 黄
#_1CE247: db $FD, $43 ; write kanji - 金
#_1CE249: db $24 ; の
#_1CE24A: db $F6 ; scroll text
#_1CE24B: db $FD, $99 ; write kanji - 力
#_1CE24D: db $C5, $0E ; 』を
#_1CE24F: db $FD, $DB ; write kanji - 持
#_1CE251: db $1A, $21, $2A, $10, $0D, $11, $01 ; つにふさわしい
#_1CE258: db $FD, $1E ; write kanji - 者
#_1CE25A: db $15, $C8 ; が,
#_1CE25C: db $FA ; wait for key
#_1CE25D: db $F6 ; scroll text
#_1CE25E: db $14, $3B, $0E ; それを
#_1CE261: db $FD, $3E ; write kanji - 手
#_1CE263: db $21, $12, $3A, $11, $08 ; にするしか
#_1CE268: db $FD, $20 ; write kanji - 方
#_1CE26A: db $FD, $3C ; write kanji - 法
#_1CE26C: db $28, $C8 ; は,
#_1CE26E: db $F6 ; scroll text
#_1CE26F: db $20, $01, $2E, $3C, $02, $CC, $CD, $14 ; ないだろう⋯。そ
#_1CE277: db $3B, $30, $36, $04, $3B, $28 ; れまでおれは
#_1CE27D: db $F6 ; scroll text
#_1CE27E: db $0C, $24 ; この
#_1CE280: db $FD, $A2 ; write kanji - 姿
#_1CE282: db $36, $30, $4A, $1B, $01, $3A, $1A, $34 ; でまっているつも
#_1CE28A: db $39, $2E, $CD ; りだ。
#_1CE28D: db $FA ; wait for key
#_1CE28E: db $F6 ; scroll text
#_1CE28F: db $11, $08, $11, $C8 ; しかし,
#_1CE293: db $FD, $9C ; write kanji - 先
#_1CE295: db $FD, $3F ; write kanji - 住
#_1CE297: db $24 ; の
#_1CE298: db $FD, $F8 ; write kanji - 民
#_1CE29A: db $34, $01, $18, $26, $38, $20 ; もいたずらな
#_1CE2A0: db $F6 ; scroll text
#_1CE2A1: db $FD, $51 ; write kanji - 物
#_1CE2A3: db $0E, $24, $0C, $11, $18, $34, $0F, $2E ; をのこしたもんだ
#_1CE2AB: db $CD, $C4 ; 。『
#_1CE2AD: db $FD, $98 ; write kanji - 黄
#_1CE2AF: db $FD, $43 ; write kanji - 金
#_1CE2B1: db $24 ; の
#_1CE2B2: db $F6 ; scroll text
#_1CE2B3: db $FD, $99 ; write kanji - 力
#_1CE2B5: db $C5, $CC, $C4, $6C, $88, $51, $7A, $9F ; 』⋯『トライフォ
#_1CE2BD: db $C9, $62, $C5, $08, $CC ; －ス』か⋯
#_1CE2C2: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; －ふしぎのいずみ－
; 何かアイテムを投げこんでみま
; すか?
; さあ,どうする?
; ▶ 投げてみる
;   やめておく
Message_0148:
#_1CE2C3: db $FF, $FF, $C9, $2A, $11, $16, $24, $01 ; ⎵⎵－ふしぎのい
#_1CE2CB: db $26, $31, $C9 ; ずみ－
#_1CE2CE: db $F8 ; cursor to row 2
#_1CE2CF: db $FD, $8B ; write kanji - 何
#_1CE2D1: db $08, $50, $51, $6B, $82, $0E ; かアイテムを
#_1CE2D7: db $FD, $FC ; write kanji - 投
#_1CE2D9: db $1D, $0C, $0F, $36, $31, $30 ; げこんでみま
#_1CE2DF: db $F9 ; cursor to row 3
#_1CE2E0: db $12, $08, $C6 ; すか?
#_1CE2E3: db $FA ; wait for key
#_1CE2E4: db $F6 ; scroll text
#_1CE2E5: db $10, $00, $C8, $37, $02, $12, $3A, $C6 ; さあ,どうする?
#_1CE2ED: db $F6 ; scroll text
#_1CE2EE: db $FF, $FF, $E4, $FF ; ⎵⎵▶⎵
#_1CE2F2: db $FD, $FC ; write kanji - 投
#_1CE2F4: db $1D, $1B, $31, $3A ; げてみる
#_1CE2F8: db $F6 ; scroll text
#_1CE2F9: db $FF, $FF, $FF, $FF, $05, $33, $1B, $04 ; ⎵⎵⎵⎵やめてお
#_1CE301: db $0A ; く
#_1CE302: db $FE, $68 ; get player selection - choose 2 low
#_1CE304: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; やめておけ!
Message_0149:
#_1CE305: db $05, $33, $1B, $04, $0B, $C7 ; やめておけ!
#_1CE30B: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; やめておけ!
Message_014A:
#_1CE30C: db $05, $33, $1B, $04, $0B, $C7 ; やめておけ!
#_1CE312: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; じゃあ,きみにかえすわ。
; もう,おとしたりしちゃ
; ダ メ ヨ!
Message_014B:
#_1CE313: db $25, $47, $00, $C8, $09, $31, $21, $08 ; じゃあ,きみにか
#_1CE31B: db $03, $12, $0D, $CD ; えすわ。
#_1CE31F: db $F8 ; cursor to row 2
#_1CE320: db $34, $02, $C8, $04, $1C, $11, $18, $39 ; もう,おとしたり
#_1CE328: db $11, $19, $47 ; しちゃ
#_1CE32B: db $F9 ; cursor to row 3
#_1CE32C: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $7E ; ⎵⎵⎵⎵⎵⎵⎵ダ
#_1CE334: db $FF, $83, $FF, $57, $C7 ; ⎵メ⎵ヨ!
#_1CE339: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ルピ－をいくら投げますか?
; ▶ [BCD][BCD]ルピ－
;   [BCD][BCD]ルピ－
Message_014C:
#_1CE33A: db $8A, $93, $C9, $0E, $01, $0A, $38 ; ルピ－をいくら
#_1CE341: db $FD, $FC ; write kanji - 投
#_1CE343: db $1D, $30, $12, $08, $C6 ; げますか?
#_1CE348: db $F8 ; cursor to row 2
#_1CE349: db $FF, $FF, $E4, $FF ; ⎵⎵▶⎵
#_1CE34D: db $FE, $6C, $01 ; write decimal digit
#_1CE350: db $FE, $6C, $00 ; write decimal digit
#_1CE353: db $8A, $93, $C9 ; ルピ－
#_1CE356: db $F9 ; cursor to row 3
#_1CE357: db $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵
#_1CE35B: db $FE, $6C, $03 ; write decimal digit
#_1CE35E: db $FE, $6C, $02 ; write decimal digit
#_1CE361: db $8A, $93, $C9 ; ルピ－
#_1CE364: db $FE, $68 ; get player selection - choose 2 low
#_1CE366: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; あなたは,しょうじきな人ね。
; 私,あなたが気にいっちゃった
; 大事な物をあげるわ⋯。
; これは,『銀の矢』です。
; ガノンに,とどめをさすには
; これがぜったい必要なのよ!
; 私がちょっぴりふとめなのは
; ガノンの魔力のせいなんだから
; きっと,ガノンをやっつけてね
Message_014D:
#_1CE367: db $00, $20, $18, $28, $C8, $11, $49, $02 ; あなたは,しょう
#_1CE36F: db $25, $09, $20 ; じきな
#_1CE372: db $FD, $38 ; write kanji - 人
#_1CE374: db $23, $CD ; ね。
#_1CE376: db $F8 ; cursor to row 2
#_1CE377: db $FD, $26 ; write kanji - 私
#_1CE379: db $C8, $00, $20, $18, $15 ; ,あなたが
#_1CE37E: db $FD, $37 ; write kanji - 気
#_1CE380: db $21, $01, $4A, $19, $47, $4A, $18 ; にいっちゃった
#_1CE387: db $F9 ; cursor to row 3
#_1CE388: db $FD, $5F ; write kanji - 大
#_1CE38A: db $FD, $22 ; write kanji - 事
#_1CE38C: db $20 ; な
#_1CE38D: db $FD, $51 ; write kanji - 物
#_1CE38F: db $0E, $00, $1D, $3A, $0D, $CC, $CD ; をあげるわ⋯。
#_1CE396: db $FA ; wait for key
#_1CE397: db $F6 ; scroll text
#_1CE398: db $0C, $3B, $28, $C8, $C4 ; これは,『
#_1CE39D: db $FD, $DE ; write kanji - 銀
#_1CE39F: db $24 ; の
#_1CE3A0: db $FD, $BB ; write kanji - 矢
#_1CE3A2: db $C5, $36, $12, $CD ; 』です。
#_1CE3A6: db $F6 ; scroll text
#_1CE3A7: db $65, $74, $5F, $21, $C8, $1C, $37, $33 ; ガノンに,とどめ
#_1CE3AF: db $0E, $10, $12, $21, $28 ; をさすには
#_1CE3B4: db $F6 ; scroll text
#_1CE3B5: db $0C, $3B, $15, $27, $4A, $18, $01 ; これがぜったい
#_1CE3BC: db $FD, $30 ; write kanji - 必
#_1CE3BE: db $FD, $31 ; write kanji - 要
#_1CE3C0: db $20, $24, $07, $C7 ; なのよ!
#_1CE3C4: db $FA ; wait for key
#_1CE3C5: db $F6 ; scroll text
#_1CE3C6: db $FD, $26 ; write kanji - 私
#_1CE3C8: db $15, $19, $49, $4A, $43, $39, $2A, $1C ; がちょっぴりふと
#_1CE3D0: db $33, $20, $24, $28 ; めなのは
#_1CE3D4: db $F6 ; scroll text
#_1CE3D5: db $65, $74, $5F, $24 ; ガノンの
#_1CE3D9: db $FD, $2D ; write kanji - 魔
#_1CE3DB: db $FD, $99 ; write kanji - 力
#_1CE3DD: db $24, $13, $01, $20, $0F, $2E, $08, $38 ; のせいなんだから
#_1CE3E5: db $F6 ; scroll text
#_1CE3E6: db $09, $4A, $1C, $C8, $65, $74, $5F, $0E ; きっと,ガノンを
#_1CE3EE: db $05, $4A, $1A, $0B, $1B, $23 ; やっつけてね
#_1CE3F4: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 大キチ! です。
Message_014E:
#_1CE3F5: db $F8 ; cursor to row 2
#_1CE3F6: db $FF, $FF, $FF ; ⎵⎵⎵
#_1CE3F9: db $FD, $5F ; write kanji - 大
#_1CE3FB: db $59, $69, $C7, $FF, $FF, $36, $12, $CD ; キチ!⎵⎵です。
#_1CE403: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 中キチ! です。
Message_014F:
#_1CE404: db $F8 ; cursor to row 2
#_1CE405: db $FF, $FF, $FF ; ⎵⎵⎵
#_1CE408: db $FD, $AE ; write kanji - 中
#_1CE40A: db $59, $69, $C7, $FF, $FF, $36, $12, $CD ; キチ!⎵⎵です。
#_1CE412: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 小キチ! です。
Message_0150:
#_1CE413: db $F8 ; cursor to row 2
#_1CE414: db $FF, $FF, $FF ; ⎵⎵⎵
#_1CE417: db $FD, $FA ; write kanji - 小
#_1CE419: db $59, $69, $C7, $FF, $FF, $36, $12, $CD ; キチ!⎵⎵です。
#_1CE421: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; 大キョウ! です。
Message_0151:
#_1CE422: db $F8 ; cursor to row 2
#_1CE423: db $FF, $FF, $FF ; ⎵⎵⎵
#_1CE426: db $FD, $5F ; write kanji - 大
#_1CE428: db $59, $99, $52, $C7, $FF, $FF, $36, $12 ; キョウ!⎵⎵です
#_1CE430: db $CD ; 。
#_1CE431: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ちなみにきょうのあなたの
; 運せいは,
Message_0152:
#_1CE432: db $19, $20, $31, $21, $09, $49, $02, $24 ; ちなみにきょうの
#_1CE43A: db $00, $20, $18, $24 ; あなたの
#_1CE43E: db $F8 ; cursor to row 2
#_1CE43F: db $FD, $4F ; write kanji - 運
#_1CE441: db $13, $01, $28, $C8 ; せいは,
#_1CE445: db $FB ; end of message

;===================================================================================================
; 1/4 Heart pieces
;===================================================================================================
; ハ－トのかけらをみつけた !
; ♥
Message_0153:
#_1CE446: db $78, $C9, $6C, $24, $08, $0B, $38, $0E ; ハ－トのかけらを
#_1CE44E: db $31, $1A, $0B, $18, $FF, $C7 ; みつけた⎵!
#_1CE454: db $F8 ; cursor to row 2
#_1CE455: db $FF, $FF, $FF, $FF, $FF, $FF, $E5, $E7 ; ⎵⎵⎵⎵⎵⎵♥♥
#_1CE45D: db $FB ; end of message

;===================================================================================================
; 2/4 Heart pieces
;===================================================================================================
; ハ－トのかけらをみつけた !
; ♥
Message_0154:
#_1CE45E: db $78, $C9, $6C, $24, $08, $0B, $38, $0E ; ハ－トのかけらを
#_1CE466: db $31, $1A, $0B, $18, $FF, $C7 ; みつけた⎵!
#_1CE46C: db $F8 ; cursor to row 2
#_1CE46D: db $FF, $FF, $FF, $FF, $FF, $FF, $E6, $E7 ; ⎵⎵⎵⎵⎵⎵♥♥
#_1CE475: db $FB ; end of message

;===================================================================================================
; 3/4 Heart pieces
;===================================================================================================
; ハ－トのかけらをみつけた !
; ♥
Message_0155:
#_1CE476: db $78, $C9, $6C, $24, $08, $0B, $38, $0E ; ハ－トのかけらを
#_1CE47E: db $31, $1A, $0B, $18, $FF, $C7 ; みつけた⎵!
#_1CE484: db $F8 ; cursor to row 2
#_1CE485: db $FF, $FF, $FF, $FF, $FF, $FF, $E8, $E9 ; ⎵⎵⎵⎵⎵⎵♥♥
#_1CE48D: db $FB ; end of message

;===================================================================================================
; 4/4 Heart get
;===================================================================================================
; ハ－トのかけらをみつけた !
; ♥
; ハ－トのレベルが1つあがった
Message_0156:
#_1CE48E: db $78, $C9, $6C, $24, $08, $0B, $38, $0E ; ハ－トのかけらを
#_1CE496: db $31, $1A, $0B, $18, $FF, $C7 ; みつけた⎵!
#_1CE49C: db $F8 ; cursor to row 2
#_1CE49D: db $FF, $FF, $FF, $FF, $FF, $FF, $EA, $EB ; ⎵⎵⎵⎵⎵⎵♥♥
#_1CE4A5: db $F9 ; cursor to row 3
#_1CE4A6: db $78, $C9, $6C, $24, $8B, $90, $8A, $15 ; ハ－トのレベルが
#_1CE4AE: db $A1, $1A, $00, $15, $4A, $18 ; 1つあがった
#_1CE4B4: db $FB ; end of message

;===================================================================================================
; Sanctuary heart get
;===================================================================================================
; ハ－トのうつわをみつけた !
; ♥
; ハ－トのレベルが1つあがった
Message_0157:
#_1CE4B5: db $78, $C9, $6C, $24, $02, $1A, $0D, $0E ; ハ－トのうつわを
#_1CE4BD: db $31, $1A, $0B, $18, $FF, $C7 ; みつけた⎵!
#_1CE4C3: db $F8 ; cursor to row 2
#_1CE4C4: db $FF, $FF, $FF, $FF, $FF, $FF, $EA, $EB ; ⎵⎵⎵⎵⎵⎵♥♥
#_1CE4CC: db $F9 ; cursor to row 3
#_1CE4CD: db $78, $C9, $6C, $24, $8B, $90, $8A, $15 ; ハ－トのレベルが
#_1CE4D5: db $A1, $1A, $00, $15, $4A, $18 ; 1つあがった
#_1CE4DB: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; たびのつかれをいやしましょう
; すこしの間 目をとじて⋯
Message_0158:
#_1CE4DC: db $18, $3E, $24, $1A, $08, $3B, $0E, $01 ; たびのつかれをい
#_1CE4E4: db $05, $11, $30, $11, $49, $02 ; やしましょう
#_1CE4EA: db $F8 ; cursor to row 2
#_1CE4EB: db $12, $0C, $11, $24 ; すこしの
#_1CE4EF: db $FD, $39 ; write kanji - 間
#_1CE4F1: db $FF ; ⎵
#_1CE4F2: db $FD, $75 ; write kanji - 目
#_1CE4F4: db $0E, $1C, $25, $1B, $CC ; をとじて⋯
#_1CE4F9: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; うっひ〜! ゴロンゴロン⋯,
; あれっ,あんたは,ウサギさん
; になったんだね⋯。
; そうだよ,この世界は,ぼく達
; の住む世界と,よくにた地けい
; だけど,ちょ〜っとちがうのさ
; そのうえ,迷いこんだ人間は,
; その人の心をうつした姿に,
; かわってしまうんだよ。
; おいら,コロコロ気がかわるも
; んで,ボ－ルみたいになっちゃ
; ったぜ⋯
; でも,ム－ンパ－ルって玉が
; あればもとの姿に戻れるらしい
; んだ⋯。 ゴロンゴロンゴロン
Message_0159:
#_1CE4FA: db $02, $4A, $29, $CE, $C7, $FF, $6E, $8C ; うっひ〜!⎵ゴロ
#_1CE502: db $5F, $6E, $8C, $5F, $CC, $C8 ; ンゴロン⋯,
#_1CE508: db $F8 ; cursor to row 2
#_1CE509: db $00, $3B, $4A, $C8, $00, $0F, $18, $28 ; あれっ,あんたは
#_1CE511: db $C8, $52, $60, $66, $10, $0F ; ,ウサギさん
#_1CE517: db $F9 ; cursor to row 3
#_1CE518: db $21, $20, $4A, $18, $0F, $2E, $23, $CC ; になったんだね⋯
#_1CE520: db $CD ; 。
#_1CE521: db $FA ; wait for key
#_1CE522: db $F6 ; scroll text
#_1CE523: db $14, $02, $2E, $07, $C8, $0C, $24 ; そうだよ,この
#_1CE52A: db $FD, $E8 ; write kanji - 世
#_1CE52C: db $FD, $E9 ; write kanji - 界
#_1CE52E: db $28, $C8, $41, $0A ; は,ぼく
#_1CE532: db $FD, $13 ; write kanji - 達
#_1CE534: db $F6 ; scroll text
#_1CE535: db $24 ; の
#_1CE536: db $FD, $3F ; write kanji - 住
#_1CE538: db $32 ; む
#_1CE539: db $FD, $E8 ; write kanji - 世
#_1CE53B: db $FD, $E9 ; write kanji - 界
#_1CE53D: db $1C, $C8, $07, $0A, $21, $18 ; と,よくにた
#_1CE543: db $FD, $33 ; write kanji - 地
#_1CE545: db $0B, $01 ; けい
#_1CE547: db $F6 ; scroll text
#_1CE548: db $2E, $0B, $37, $C8, $19, $49, $CE, $4A ; だけど,ちょ〜っ
#_1CE550: db $1C, $19, $15, $02, $24, $10 ; とちがうのさ
#_1CE556: db $FA ; wait for key
#_1CE557: db $F6 ; scroll text
#_1CE558: db $14, $24, $02, $03, $C8 ; そのうえ,
#_1CE55D: db $FD, $70 ; write kanji - 迷
#_1CE55F: db $01, $0C, $0F, $2E ; いこんだ
#_1CE563: db $FD, $38 ; write kanji - 人
#_1CE565: db $FD, $39 ; write kanji - 間
#_1CE567: db $28, $C8 ; は,
#_1CE569: db $F6 ; scroll text
#_1CE56A: db $14, $24 ; その
#_1CE56C: db $FD, $38 ; write kanji - 人
#_1CE56E: db $24 ; の
#_1CE56F: db $FD, $E6 ; write kanji - 心
#_1CE571: db $0E, $02, $1A, $11, $18 ; をうつした
#_1CE576: db $FD, $A2 ; write kanji - 姿
#_1CE578: db $21, $C8 ; に,
#_1CE57A: db $F6 ; scroll text
#_1CE57B: db $08, $0D, $4A, $1B, $11, $30, $02, $0F ; かわってしまうん
#_1CE583: db $2E, $07, $CD ; だよ。
#_1CE586: db $FA ; wait for key
#_1CE587: db $F6 ; scroll text
#_1CE588: db $04, $01, $38, $C8, $5C, $8C, $5C, $8C ; おいら,コロコロ
#_1CE590: db $FD, $37 ; write kanji - 気
#_1CE592: db $15, $08, $0D, $3A, $34 ; がかわるも
#_1CE597: db $F6 ; scroll text
#_1CE598: db $0F, $36, $C8, $91, $C9, $8A, $31, $18 ; んで,ボ－ルみた
#_1CE5A0: db $01, $21, $20, $4A, $19, $47 ; いになっちゃ
#_1CE5A6: db $F6 ; scroll text
#_1CE5A7: db $4A, $18, $27, $CC ; ったぜ⋯
#_1CE5AB: db $FA ; wait for key
#_1CE5AC: db $F6 ; scroll text
#_1CE5AD: db $36, $34, $C8, $82, $C9, $5F, $92, $C9 ; でも,ム－ンパ－
#_1CE5B5: db $8A, $4A, $1B ; ルって
#_1CE5B8: db $FD, $D2 ; write kanji - 玉
#_1CE5BA: db $15 ; が
#_1CE5BB: db $F6 ; scroll text
#_1CE5BC: db $00, $3B, $3D, $34, $1C, $24 ; あればもとの
#_1CE5C2: db $FD, $A2 ; write kanji - 姿
#_1CE5C4: db $21 ; に
#_1CE5C5: db $FD, $0F ; write kanji - 戻
#_1CE5C7: db $3B, $3A, $38, $11, $01 ; れるらしい
#_1CE5CC: db $F6 ; scroll text
#_1CE5CD: db $0F, $2E, $CC, $CD, $FF, $6E, $8C, $5F ; んだ⋯。⎵ゴロン
#_1CE5D5: db $6E, $8C, $5F, $6E, $8C, $5F ; ゴロンゴロン
#_1CE5DB: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; うっひ〜! ありゃりゃ!
; あんたは,姿がかわらないの?
; ただもんじゃないね,あんた。
Message_015A:
#_1CE5DC: db $02, $4A, $29, $CE, $C7, $FF, $00, $39 ; うっひ〜!⎵あり
#_1CE5E4: db $47, $39, $47, $C7 ; ゃりゃ!
#_1CE5E8: db $F8 ; cursor to row 2
#_1CE5E9: db $00, $0F, $18, $28, $C8 ; あんたは,
#_1CE5EE: db $FD, $A2 ; write kanji - 姿
#_1CE5F0: db $15, $08, $0D, $38, $20, $01, $24, $C6 ; がかわらないの?
#_1CE5F8: db $F9 ; cursor to row 3
#_1CE5F9: db $18, $2E, $34, $0F, $25, $47, $20, $01 ; ただもんじゃない
#_1CE601: db $23, $C8, $00, $0F, $18, $CD ; ね,あんた。
#_1CE607: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おう,なんかもんくあるのか,
; このウサギヤロ－!
; せっかく『黄金の力』を
; いただこうと思ってこの世界に
; きたのに,こんな姿になるし
; もとの世界に帰れねェ⋯。
; ヘラの塔にある,ム－ンパ－ル
; てェ玉さえ手に入ればもとの姿
; に戻れるってことだが⋯。
; オレは,ムシャクシャしてるん
; だぞ,コノヤロウ－!
; あっちヘ行けっ。シッシッ
Message_015B:
#_1CE608: db $04, $02, $C8, $20, $0F, $08, $34, $0F ; おう,なんかもん
#_1CE610: db $0A, $00, $3A, $24, $08, $C8 ; くあるのか,
#_1CE616: db $F8 ; cursor to row 2
#_1CE617: db $0C, $24, $52, $60, $66, $55, $8C, $C9 ; このウサギヤロ－
#_1CE61F: db $C7 ; !
#_1CE620: db $F9 ; cursor to row 3
#_1CE621: db $13, $4A, $08, $0A, $C4 ; せっかく『
#_1CE626: db $FD, $98 ; write kanji - 黄
#_1CE628: db $FD, $43 ; write kanji - 金
#_1CE62A: db $24 ; の
#_1CE62B: db $FD, $99 ; write kanji - 力
#_1CE62D: db $C5, $0E ; 』を
#_1CE62F: db $FA ; wait for key
#_1CE630: db $F6 ; scroll text
#_1CE631: db $01, $18, $2E, $0C, $02, $1C ; いただこうと
#_1CE637: db $FD, $36 ; write kanji - 思
#_1CE639: db $4A, $1B, $0C, $24 ; ってこの
#_1CE63D: db $FD, $E8 ; write kanji - 世
#_1CE63F: db $FD, $E9 ; write kanji - 界
#_1CE641: db $21 ; に
#_1CE642: db $F6 ; scroll text
#_1CE643: db $09, $18, $24, $21, $C8, $0C, $0F, $20 ; きたのに,こんな
#_1CE64B: db $FD, $A2 ; write kanji - 姿
#_1CE64D: db $21, $20, $3A, $11 ; になるし
#_1CE651: db $F6 ; scroll text
#_1CE652: db $34, $1C, $24 ; もとの
#_1CE655: db $FD, $E8 ; write kanji - 世
#_1CE657: db $FD, $E9 ; write kanji - 界
#_1CE659: db $21 ; に
#_1CE65A: db $FD, $D7 ; write kanji - 帰
#_1CE65C: db $3B, $23, $9E, $CC, $CD ; れねェ⋯。
#_1CE661: db $FA ; wait for key
#_1CE662: db $F6 ; scroll text
#_1CE663: db $7B, $88, $24 ; ヘラの
#_1CE666: db $FD, $D5 ; write kanji - 塔
#_1CE668: db $21, $00, $3A, $C8, $82, $C9, $5F, $92 ; にある,ム－ンパ
#_1CE670: db $C9, $8A ; －ル
#_1CE672: db $F6 ; scroll text
#_1CE673: db $1B, $9E ; てェ
#_1CE675: db $FD, $D2 ; write kanji - 玉
#_1CE677: db $10, $03 ; さえ
#_1CE679: db $FD, $3E ; write kanji - 手
#_1CE67B: db $21 ; に
#_1CE67C: db $FD, $49 ; write kanji - 入
#_1CE67E: db $3B, $3D, $34, $1C, $24 ; ればもとの
#_1CE683: db $FD, $A2 ; write kanji - 姿
#_1CE685: db $F6 ; scroll text
#_1CE686: db $21 ; に
#_1CE687: db $FD, $0F ; write kanji - 戻
#_1CE689: db $3B, $3A, $4A, $1B, $0C, $1C, $2E, $15 ; れるってことだが
#_1CE691: db $CC, $CD ; ⋯。
#_1CE693: db $FA ; wait for key
#_1CE694: db $F6 ; scroll text
#_1CE695: db $54, $8B, $28, $C8, $82, $61, $97, $5A ; オレは,ムシャク
#_1CE69D: db $61, $97, $11, $1B, $3A, $0F ; シャしてるん
#_1CE6A3: db $F6 ; scroll text
#_1CE6A4: db $2E, $2D, $C8, $5C, $74, $55, $8C, $52 ; だぞ,コノヤロウ
#_1CE6AC: db $C9, $C7 ; －!
#_1CE6AE: db $F6 ; scroll text
#_1CE6AF: db $00, $4A, $19, $7B ; あっちヘ
#_1CE6B3: db $FD, $02 ; write kanji - 行
#_1CE6B5: db $0B, $4A, $CD, $61, $9A, $61, $9A ; けっ。シッシッ
#_1CE6BC: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; うひゃあ!お前,姿がかわらな
; いじゃないか! あっ,お前
; ム－ンパ－ルを見つけたなっ!
Message_015C:
#_1CE6BD: db $02, $29, $47, $00, $C7, $04 ; うひゃあ!お
#_1CE6C3: db $FD, $78 ; write kanji - 前
#_1CE6C5: db $C8 ; ,
#_1CE6C6: db $FD, $A2 ; write kanji - 姿
#_1CE6C8: db $15, $08, $0D, $38, $20 ; がかわらな
#_1CE6CD: db $F8 ; cursor to row 2
#_1CE6CE: db $01, $25, $47, $20, $01, $08, $C7, $FF ; いじゃないか!⎵
#_1CE6D6: db $00, $4A, $C8, $04 ; あっ,お
#_1CE6DA: db $FD, $78 ; write kanji - 前
#_1CE6DC: db $F9 ; cursor to row 3
#_1CE6DD: db $82, $C9, $5F, $92, $C9, $8A, $0E ; ム－ンパ－ルを
#_1CE6E4: db $FD, $4C ; write kanji - 見
#_1CE6E6: db $1A, $0B, $18, $20, $4A, $C7 ; つけたなっ!
#_1CE6EC: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; こんな,ぶっそうな世界じゃあ
; 何かと物いりだろ? 好きな物
; を選んでいってくれよ⋯。
Message_015D:
#_1CE6ED: db $0C, $0F, $20, $C8, $3F, $4A, $14, $02 ; こんな,ぶっそう
#_1CE6F5: db $20 ; な
#_1CE6F6: db $FD, $E8 ; write kanji - 世
#_1CE6F8: db $FD, $E9 ; write kanji - 界
#_1CE6FA: db $25, $47, $00 ; じゃあ
#_1CE6FD: db $F8 ; cursor to row 2
#_1CE6FE: db $FD, $8B ; write kanji - 何
#_1CE700: db $08, $1C ; かと
#_1CE702: db $FD, $51 ; write kanji - 物
#_1CE704: db $01, $39, $2E, $3C, $C6, $FF ; いりだろ?⎵
#_1CE70A: db $FD, $6D ; write kanji - 好
#_1CE70C: db $09, $20 ; きな
#_1CE70E: db $FD, $51 ; write kanji - 物
#_1CE710: db $F9 ; cursor to row 3
#_1CE711: db $0E ; を
#_1CE712: db $FD, $81 ; write kanji - 選
#_1CE714: db $0F, $36, $01, $4A, $1B, $0A, $3B, $07 ; んでいってくれよ
#_1CE71C: db $CC, $CD ; ⋯。
#_1CE71E: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; はい,いらっしゃい!
; 30ルピ－で宝箱2つ開けられ
; るよ。 あそんで行ってくれ!
; どうする?
; ▶ あそんでいく
;   また今度あそぶ
Message_015E:
#_1CE71F: db $28, $01, $C8, $01, $38, $4A, $11, $47 ; はい,いらっしゃ
#_1CE727: db $01, $C7 ; い!
#_1CE729: db $F8 ; cursor to row 2
#_1CE72A: db $A3, $A0, $8A, $93, $C9, $36 ; 30ルピ－で
#_1CE730: db $FD, $9A ; write kanji - 宝
#_1CE732: db $FD, $EA ; write kanji - 箱
#_1CE734: db $A2, $1A ; 2つ
#_1CE736: db $FD, $4B ; write kanji - 開
#_1CE738: db $0B, $38, $3B ; けられ
#_1CE73B: db $F9 ; cursor to row 3
#_1CE73C: db $3A, $07, $CD, $FF, $00, $14, $0F, $36 ; るよ。⎵あそんで
#_1CE744: db $FD, $02 ; write kanji - 行
#_1CE746: db $4A, $1B, $0A, $3B, $C7 ; ってくれ!
#_1CE74B: db $FA ; wait for key
#_1CE74C: db $F6 ; scroll text
#_1CE74D: db $37, $02, $12, $3A, $C6 ; どうする?
#_1CE752: db $F6 ; scroll text
#_1CE753: db $FF, $FF, $E4, $FF, $00, $14, $0F, $36 ; ⎵⎵▶⎵あそんで
#_1CE75B: db $01, $0A ; いく
#_1CE75D: db $F6 ; scroll text
#_1CE75E: db $FF, $FF, $FF, $FF, $30, $18 ; ⎵⎵⎵⎵また
#_1CE764: db $FD, $6A ; write kanji - 今
#_1CE766: db $FD, $2A ; write kanji - 度
#_1CE768: db $00, $14, $3F ; あそぶ
#_1CE76B: db $FE, $68 ; get player selection - choose 2 low
#_1CE76D: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; また,来てあそんでくれよなぁ
; まってるからなあ。
; ほな,さいなら〜。
Message_015F:
#_1CE76E: db $30, $18, $C8 ; また,
#_1CE771: db $FD, $D6 ; write kanji - 来
#_1CE773: db $1B, $00, $14, $0F, $36, $0A, $3B, $07 ; てあそんでくれよ
#_1CE77B: db $20, $4B ; なぁ
#_1CE77D: db $F8 ; cursor to row 2
#_1CE77E: db $30, $4A, $1B, $3A, $08, $38, $20, $00 ; まってるからなあ
#_1CE786: db $CD ; 。
#_1CE787: db $F9 ; cursor to row 3
#_1CE788: db $2C, $20, $C8, $10, $01, $20, $38, $CE ; ほな,さいなら〜
#_1CE790: db $CD ; 。
#_1CE791: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; にいちゃん,にいちゃん!
; ちゃんとルピ－はらってから
; 宝箱あけとくれよ!
Message_0160:
#_1CE792: db $21, $01, $19, $47, $0F, $C8, $21, $01 ; にいちゃん,にい
#_1CE79A: db $19, $47, $0F, $C7 ; ちゃん!
#_1CE79E: db $F8 ; cursor to row 2
#_1CE79F: db $19, $47, $0F, $1C, $8A, $93, $C9, $28 ; ちゃんとルピ－は
#_1CE7A7: db $38, $4A, $1B, $08, $38 ; らってから
#_1CE7AC: db $F9 ; cursor to row 3
#_1CE7AD: db $FD, $9A ; write kanji - 宝
#_1CE7AF: db $FD, $EA ; write kanji - 箱
#_1CE7B1: db $00, $0B, $1C, $0A, $3B, $07, $C7 ; あけとくれよ!
#_1CE7B8: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; にいちゃん,宝箱はもう開けら
; れないよ。それでおしまい
; だからな。
Message_0161:
#_1CE7B9: db $21, $01, $19, $47, $0F, $C8 ; にいちゃん,
#_1CE7BF: db $FD, $9A ; write kanji - 宝
#_1CE7C1: db $FD, $EA ; write kanji - 箱
#_1CE7C3: db $28, $34, $02 ; はもう
#_1CE7C6: db $FD, $4B ; write kanji - 開
#_1CE7C8: db $0B, $38 ; けら
#_1CE7CA: db $F8 ; cursor to row 2
#_1CE7CB: db $3B, $20, $01, $07, $CD, $14, $3B, $36 ; れないよ。それで
#_1CE7D3: db $04, $11, $30, $01 ; おしまい
#_1CE7D7: db $F9 ; cursor to row 3
#_1CE7D8: db $2E, $08, $38, $20, $CD ; だからな。
#_1CE7DD: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; よっしゃっ,にいちゃん
; あそんでいってやっ!
Message_0162:
#_1CE7DE: db $07, $4A, $11, $47, $4A, $C8, $21, $01 ; よっしゃっ,にい
#_1CE7E6: db $19, $47, $0F ; ちゃん
#_1CE7E9: db $F8 ; cursor to row 2
#_1CE7EA: db $00, $14, $0F, $36, $01, $4A, $1B, $05 ; あそんでいってや
#_1CE7F2: db $4A, $C7 ; っ!
#_1CE7F4: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; いらっしゃいませ。
; お好きな物をAボタンで,
; お選び下さい。さあ,どうぞ!
Message_0163:
#_1CE7F5: db $01, $38, $4A, $11, $47, $01, $30, $13 ; いらっしゃいませ
#_1CE7FD: db $CD ; 。
#_1CE7FE: db $F8 ; cursor to row 2
#_1CE7FF: db $04 ; お
#_1CE800: db $FD, $6D ; write kanji - 好
#_1CE802: db $09, $20 ; きな
#_1CE804: db $FD, $51 ; write kanji - 物
#_1CE806: db $0E, $AA, $91, $68, $5F, $36, $C8 ; をAボタンで,
#_1CE80D: db $F9 ; cursor to row 3
#_1CE80E: db $04 ; お
#_1CE80F: db $FD, $81 ; write kanji - 選
#_1CE811: db $3E ; び
#_1CE812: db $FD, $61 ; write kanji - 下
#_1CE814: db $10, $01, $CD, $10, $00, $C8, $37, $02 ; さい。さあ,どう
#_1CE81C: db $2D, $C7 ; ぞ!
#_1CE81E: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; そいつをかっても,なんのとく
; にもなりませんよ。
; もっとちがう物を選んだら?
Message_0164:
#_1CE81F: db $14, $01, $1A, $0E, $08, $4A, $1B, $34 ; そいつをかっても
#_1CE827: db $C8, $20, $0F, $24, $1C, $0A ; ,なんのとく
#_1CE82D: db $F8 ; cursor to row 2
#_1CE82E: db $21, $34, $20, $39, $30, $13, $0F, $07 ; にもなりませんよ
#_1CE836: db $CD ; 。
#_1CE837: db $F9 ; cursor to row 3
#_1CE838: db $34, $4A, $1C, $19, $15, $02 ; もっとちがう
#_1CE83E: db $FD, $51 ; write kanji - 物
#_1CE840: db $0E ; を
#_1CE841: db $FD, $81 ; write kanji - 選
#_1CE843: db $0F, $2E, $38, $C6 ; んだら?
#_1CE847: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; どうも,ありがとう!
; 盾をなくした時は,
; いつでもどうぞ。
Message_0165:
#_1CE848: db $37, $02, $34, $C8, $00, $39, $15, $1C ; どうも,ありがと
#_1CE850: db $02, $C7 ; う!
#_1CE852: db $F8 ; cursor to row 2
#_1CE853: db $FD, $1B ; write kanji - 盾
#_1CE855: db $0E, $20, $0A, $11, $18 ; をなくした
#_1CE85A: db $FD, $88 ; write kanji - 時
#_1CE85C: db $28, $C8 ; は,
#_1CE85E: db $F9 ; cursor to row 3
#_1CE85F: db $01, $1A, $36, $34, $37, $02, $2D, $CD ; いつでもどうぞ。
#_1CE867: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; どうも,ありがとう!
; それは,いのちのクスリだよ。
; 体力が,かいふくするよ。
Message_0166:
#_1CE868: db $37, $02, $34, $C8, $00, $39, $15, $1C ; どうも,ありがと
#_1CE870: db $02, $C7 ; う!
#_1CE872: db $F8 ; cursor to row 2
#_1CE873: db $14, $3B, $28, $C8, $01, $24, $19, $24 ; それは,いのちの
#_1CE87B: db $5A, $62, $89, $2E, $07, $CD ; クスリだよ。
#_1CE881: db $F9 ; cursor to row 3
#_1CE882: db $FD, $BF ; write kanji - 体
#_1CE884: db $FD, $99 ; write kanji - 力
#_1CE886: db $15, $C8, $08, $01, $2A, $0A, $12, $3A ; が,かいふくする
#_1CE88E: db $07, $CD ; よ。
#_1CE890: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; どうも,ありがとう!
; それは,矢です。
; ユミがなければ使えないよ。
Message_0167:
#_1CE891: db $37, $02, $34, $C8, $00, $39, $15, $1C ; どうも,ありがと
#_1CE899: db $02, $C7 ; う!
#_1CE89B: db $F8 ; cursor to row 2
#_1CE89C: db $14, $3B, $28, $C8 ; それは,
#_1CE8A0: db $FD, $BB ; write kanji - 矢
#_1CE8A2: db $36, $12, $CD ; です。
#_1CE8A5: db $F9 ; cursor to row 3
#_1CE8A6: db $56, $81, $15, $20, $0B, $3B, $3D ; ユミがなければ
#_1CE8AD: db $FD, $89 ; write kanji - 使
#_1CE8AF: db $03, $20, $01, $07, $CD ; えないよ。
#_1CE8B4: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; どうも,ありがとう!
; おいたバクダンはAボタンで
; かつげるんだよ。
Message_0168:
#_1CE8B5: db $37, $02, $34, $C8, $00, $39, $15, $1C ; どうも,ありがと
#_1CE8BD: db $02, $C7 ; う!
#_1CE8BF: db $F8 ; cursor to row 2
#_1CE8C0: db $04, $01, $18, $8D, $5A, $7E, $5F, $28 ; おいたバクダンは
#_1CE8C8: db $AA, $91, $68, $5F, $36 ; Aボタンで
#_1CE8CD: db $F9 ; cursor to row 3
#_1CE8CE: db $08, $1A, $1D, $3A, $0F, $2E, $07, $CD ; かつげるんだよ。
#_1CE8D6: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; どうも,ありがとう!
; それは,ハチだよ,何に使うの
; かは,私も知らないな。
Message_0169:
#_1CE8D7: db $37, $02, $34, $C8, $00, $39, $15, $1C ; どうも,ありがと
#_1CE8DF: db $02, $C7 ; う!
#_1CE8E1: db $F8 ; cursor to row 2
#_1CE8E2: db $14, $3B, $28, $C8, $78, $69, $2E, $07 ; それは,ハチだよ
#_1CE8EA: db $C8 ; ,
#_1CE8EB: db $FD, $8B ; write kanji - 何
#_1CE8ED: db $21 ; に
#_1CE8EE: db $FD, $89 ; write kanji - 使
#_1CE8F0: db $02, $24 ; うの
#_1CE8F2: db $F9 ; cursor to row 3
#_1CE8F3: db $08, $28, $C8 ; かは,
#_1CE8F6: db $FD, $26 ; write kanji - 私
#_1CE8F8: db $34 ; も
#_1CE8F9: db $FD, $93 ; write kanji - 知
#_1CE8FB: db $38, $20, $01, $20, $CD ; らないな。
#_1CE900: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; どうも,ありがとう!
; ハ－トが1つ,かいふくするよ
Message_016A:
#_1CE901: db $37, $02, $34, $C8, $00, $39, $15, $1C ; どうも,ありがと
#_1CE909: db $02, $C7 ; う!
#_1CE90B: db $F8 ; cursor to row 2
#_1CE90C: db $78, $C9, $6C, $15, $A1, $1A, $C8, $08 ; ハ－トが1つ,か
#_1CE914: db $01, $2A, $0A, $12, $3A, $07 ; いふくするよ
#_1CE91A: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おっとっと⋯。そのしな物は,
; アキビンを持っていないと,
; さし上げられませんねえ。
Message_016B:
#_1CE91B: db $04, $4A, $1C, $4A, $1C, $CC, $CD, $14 ; おっとっと⋯。そ
#_1CE923: db $24, $11, $20 ; のしな
#_1CE926: db $FD, $51 ; write kanji - 物
#_1CE928: db $28, $C8 ; は,
#_1CE92A: db $F8 ; cursor to row 2
#_1CE92B: db $50, $59, $8E, $5F, $0E ; アキビンを
#_1CE930: db $FD, $DB ; write kanji - 持
#_1CE932: db $4A, $1B, $01, $20, $01, $1C, $C8 ; っていないと,
#_1CE939: db $F9 ; cursor to row 3
#_1CE93A: db $10, $11 ; さし
#_1CE93C: db $FD, $72 ; write kanji - 上
#_1CE93E: db $1D, $38, $3B, $30, $13, $0F, $23, $03 ; げられませんねえ
#_1CE946: db $CD ; 。
#_1CE947: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; そのしな物は,それいじょう
; 持てませんよ。 他に何か
; ございませんか?
Message_016C:
#_1CE948: db $14, $24, $11, $20 ; そのしな
#_1CE94C: db $FD, $51 ; write kanji - 物
#_1CE94E: db $28, $C8, $14, $3B, $01, $25, $49, $02 ; は,それいじょう
#_1CE956: db $F8 ; cursor to row 2
#_1CE957: db $FD, $DB ; write kanji - 持
#_1CE959: db $1B, $30, $13, $0F, $07, $CD, $FF ; てませんよ。⎵
#_1CE960: db $FD, $27 ; write kanji - 他
#_1CE962: db $21 ; に
#_1CE963: db $FD, $8B ; write kanji - 何
#_1CE965: db $08 ; か
#_1CE966: db $F9 ; cursor to row 3
#_1CE967: db $1E, $1F, $01, $30, $13, $0F, $08, $C6 ; ございませんか?
#_1CE96F: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; きさまの様なコゾウに,
; ここまでおいつめられるとは
; 思わなかったぞ!
; わがぶんしん闇の司祭アグニム
; を2度までもしりぞけるとは⋯
; だが,トライフォ－スはやらぬ
; きさまを倒し,光と闇2つの
; 世界を 支配するわがのぞみ
; 必ずかなえてみせるわ!
Message_016D:
#_1CE970: db $09, $10, $30, $24 ; きさまの
#_1CE974: db $FD, $10 ; write kanji - 様
#_1CE976: db $20, $5C, $7D, $52, $21, $C8 ; なコゾウに,
#_1CE97C: db $F8 ; cursor to row 2
#_1CE97D: db $0C, $0C, $30, $36, $04, $01, $1A, $33 ; ここまでおいつめ
#_1CE985: db $38, $3B, $3A, $1C, $28 ; られるとは
#_1CE98A: db $F9 ; cursor to row 3
#_1CE98B: db $FD, $36 ; write kanji - 思
#_1CE98D: db $0D, $20, $08, $4A, $18, $2D, $C7 ; わなかったぞ!
#_1CE994: db $FA ; wait for key
#_1CE995: db $F6 ; scroll text
#_1CE996: db $0D, $15, $3F, $0F, $11, $0F ; わがぶんしん
#_1CE99C: db $FD, $57 ; write kanji - 闇
#_1CE99E: db $24 ; の
#_1CE99F: db $FD, $0D ; write kanji - 司
#_1CE9A1: db $FD, $17 ; write kanji - 祭
#_1CE9A3: db $50, $67, $71, $82 ; アグニム
#_1CE9A7: db $F6 ; scroll text
#_1CE9A8: db $0E, $A2 ; を2
#_1CE9AA: db $FD, $2A ; write kanji - 度
#_1CE9AC: db $30, $36, $34, $11, $39, $2D, $0B, $3A ; までもしりぞける
#_1CE9B4: db $1C, $28, $CC ; とは⋯
#_1CE9B7: db $F6 ; scroll text
#_1CE9B8: db $2E, $15, $C8, $6C, $88, $51, $7A, $9F ; だが,トライフォ
#_1CE9C0: db $C9, $62, $28, $05, $38, $22 ; －スはやらぬ
#_1CE9C6: db $FA ; wait for key
#_1CE9C7: db $F6 ; scroll text
#_1CE9C8: db $09, $10, $30, $0E ; きさまを
#_1CE9CC: db $FD, $29 ; write kanji - 倒
#_1CE9CE: db $11, $C8 ; し,
#_1CE9D0: db $FD, $73 ; write kanji - 光
#_1CE9D2: db $1C ; と
#_1CE9D3: db $FD, $57 ; write kanji - 闇
#_1CE9D5: db $A2, $1A, $24 ; 2つの
#_1CE9D8: db $F6 ; scroll text
#_1CE9D9: db $FD, $E8 ; write kanji - 世
#_1CE9DB: db $FD, $E9 ; write kanji - 界
#_1CE9DD: db $0E, $FF ; を⎵
#_1CE9DF: db $FD, $F0 ; write kanji - 支
#_1CE9E1: db $FD, $8E ; write kanji - 配
#_1CE9E3: db $12, $3A, $0D, $15, $24, $2D, $31 ; するわがのぞみ
#_1CE9EA: db $F6 ; scroll text
#_1CE9EB: db $FD, $30 ; write kanji - 必
#_1CE9ED: db $26, $08, $20, $03, $1B, $31, $13, $3A ; ずかなえてみせる
#_1CE9F5: db $0D, $C7 ; わ!
#_1CE9F7: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; コゾウ,なかなかやるなっ!
; だが,この闇の秘術,お前に
; やぶれるかな⋯。ゆくぞ!
Message_016E:
#_1CE9F8: db $5C, $7D, $52, $C8, $20, $08, $20, $08 ; コゾウ,なかなか
#_1CEA00: db $05, $3A, $20, $4A, $C7 ; やるなっ!
#_1CEA05: db $F8 ; cursor to row 2
#_1CEA06: db $2E, $15, $C8, $0C, $24 ; だが,この
#_1CEA0B: db $FD, $57 ; write kanji - 闇
#_1CEA0D: db $24 ; の
#_1CEA0E: db $FD, $C1 ; write kanji - 秘
#_1CEA10: db $FD, $CB ; write kanji - 術
#_1CEA12: db $C8, $04 ; ,お
#_1CEA14: db $FD, $78 ; write kanji - 前
#_1CEA16: db $21 ; に
#_1CEA17: db $F9 ; cursor to row 3
#_1CEA18: db $05, $3F, $3B, $3A, $08, $20, $CC, $CD ; やぶれるかな⋯。
#_1CEA20: db $06, $0A, $2D, $C7 ; ゆくぞ!
#_1CEA24: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; やい,こぞう。ここは,オレ達
; 盗賊－味のかくれ家なんだぞ!
; かってに入らないでくれよ⋯。
; 話は,かわるけど,昔オレ達の
; なかまだった男が,あやしのサ
; バクの入口にいるんだってなあ
Message_016F:
#_1CEA25: db $05, $01, $C8, $0C, $2D, $02, $CD, $0C ; やい,こぞう。こ
#_1CEA2D: db $0C, $28, $C8, $54, $8B ; こは,オレ
#_1CEA32: db $FD, $13 ; write kanji - 達
#_1CEA34: db $F8 ; cursor to row 2
#_1CEA35: db $FD, $F1 ; write kanji - 盗
#_1CEA37: db $FD, $EE ; write kanji - 賊
#_1CEA39: db $C9 ; －
#_1CEA3A: db $FD, $1F ; write kanji - 味
#_1CEA3C: db $24, $08, $0A, $3B ; のかくれ
#_1CEA40: db $FD, $56 ; write kanji - 家
#_1CEA42: db $20, $0F, $2E, $2D, $C7 ; なんだぞ!
#_1CEA47: db $F9 ; cursor to row 3
#_1CEA48: db $08, $4A, $1B, $21 ; かってに
#_1CEA4C: db $FD, $49 ; write kanji - 入
#_1CEA4E: db $38, $20, $01, $36, $0A, $3B, $07, $CC ; らないでくれよ⋯
#_1CEA56: db $CD ; 。
#_1CEA57: db $FA ; wait for key
#_1CEA58: db $F6 ; scroll text
#_1CEA59: db $FD, $A3 ; write kanji - 話
#_1CEA5B: db $28, $C8, $08, $0D, $3A, $0B, $37, $C8 ; は,かわるけど,
#_1CEA63: db $FD, $7E ; write kanji - 昔
#_1CEA65: db $54, $8B ; オレ
#_1CEA67: db $FD, $13 ; write kanji - 達
#_1CEA69: db $24 ; の
#_1CEA6A: db $F6 ; scroll text
#_1CEA6B: db $20, $08, $30, $2E, $4A, $18 ; なかまだった
#_1CEA71: db $FD, $5E ; write kanji - 男
#_1CEA73: db $15, $C8, $00, $05, $11, $24, $60 ; が,あやしのサ
#_1CEA7A: db $F6 ; scroll text
#_1CEA7B: db $8D, $5A, $24 ; バクの
#_1CEA7E: db $FD, $49 ; write kanji - 入
#_1CEA80: db $FD, $4A ; write kanji - 口
#_1CEA82: db $21, $01, $3A, $0F, $2E, $4A, $1B, $20 ; にいるんだってな
#_1CEA8A: db $00 ; あ
#_1CEA8B: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; よう,[LINK]。この家は,昔
; 盗賊のかくれ家だったんだぞ。
; なんて言ったかなあ⋯。
; そうそう,ブラインドとか言う
; 名の盗賊で,あかるい所が大キ
; ライだったらしいぜ。
Message_0170:
#_1CEA8C: db $07, $02, $C8 ; よう,
#_1CEA8F: db $FE, $6A ; write player name
#_1CEA91: db $CD, $0C, $24 ; 。この
#_1CEA94: db $FD, $56 ; write kanji - 家
#_1CEA96: db $28, $C8 ; は,
#_1CEA98: db $FD, $7E ; write kanji - 昔
#_1CEA9A: db $F8 ; cursor to row 2
#_1CEA9B: db $FD, $F1 ; write kanji - 盗
#_1CEA9D: db $FD, $EE ; write kanji - 賊
#_1CEA9F: db $24, $08, $0A, $3B ; のかくれ
#_1CEAA3: db $FD, $56 ; write kanji - 家
#_1CEAA5: db $2E, $4A, $18, $0F, $2E, $2D, $CD ; だったんだぞ。
#_1CEAAC: db $F9 ; cursor to row 3
#_1CEAAD: db $20, $0F, $1B ; なんて
#_1CEAB0: db $FD, $16 ; write kanji - 言
#_1CEAB2: db $4A, $18, $08, $20, $00, $CC, $CD ; ったかなあ⋯。
#_1CEAB9: db $FA ; wait for key
#_1CEABA: db $F6 ; scroll text
#_1CEABB: db $14, $02, $14, $02, $C8, $8F, $88, $51 ; そうそう,ブライ
#_1CEAC3: db $5F, $87, $1C, $08 ; ンドとか
#_1CEAC7: db $FD, $16 ; write kanji - 言
#_1CEAC9: db $02 ; う
#_1CEACA: db $F6 ; scroll text
#_1CEACB: db $FD, $6F ; write kanji - 名
#_1CEACD: db $24 ; の
#_1CEACE: db $FD, $F1 ; write kanji - 盗
#_1CEAD0: db $FD, $EE ; write kanji - 賊
#_1CEAD2: db $36, $C8, $00, $08, $3A, $01 ; で,あかるい
#_1CEAD8: db $FD, $55 ; write kanji - 所
#_1CEADA: db $15 ; が
#_1CEADB: db $FD, $5F ; write kanji - 大
#_1CEADD: db $59 ; キ
#_1CEADE: db $F6 ; scroll text
#_1CEADF: db $88, $51, $2E, $4A, $18, $38, $11, $01 ; ライだったらしい
#_1CEAE7: db $27, $CD ; ぜ。
#_1CEAE9: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ようこそ,[LINK]よ⋯。
; 私は,トライフォ－スの精
; ⋯ ⋯ ⋯
; トライフォ－スは神があたえし
; 『黄金の力』 ふれた者の心の
; 中にある願いをかなえます。
; こころ正しき者がふれれば,
; 正しき願いを⋯悪しき者が
; ふれれば,悪しき願いを⋯。
; その者の願いが,強ければ
; 強いほど,トライフォ－スは
; その力をはっきするのです。
; ガノンの願いは世界を手にする
; ことでした。その悪しき願いは
; 聖地を闇の世界にかえてしまい
; そこで力をたくわえたガノンは
; じぶんの願いをかなえるために
; 光の世界へ現れるつもりでした
; しかし,トライフォ－スにふれ
; たガノンが倒れた今,闇の世界
; も消えゆくことでしょう。
; トライフォ－スは新たな持ちぬ
; しをまっています『黄金の力』
; は,あなたの手にあるのです。
; さあ,ふれてごらんなさい。
; あなたの心にある願いのままに
; ⋯ ⋯ ⋯ ⋯
Message_0171:
#_1CEAEA: db $FC, $02 ; set text speed
#_1CEAEC: db $FE, $6D, $00 ; set window position
#_1CEAEF: db $FE, $6B, $02 ; set window type
#_1CEAF2: db $07, $02, $0C, $14, $C8 ; ようこそ,
#_1CEAF7: db $FE, $6A ; write player name
#_1CEAF9: db $07, $CC, $CD ; よ⋯。
#_1CEAFC: db $F8 ; cursor to row 2
#_1CEAFD: db $FD, $26 ; write kanji - 私
#_1CEAFF: db $28, $C8, $6C, $88, $51, $7A, $9F, $C9 ; は,トライフォ－
#_1CEB07: db $62, $24 ; スの
#_1CEB09: db $FD, $92 ; write kanji - 精
#_1CEB0B: db $F9 ; cursor to row 3
#_1CEB0C: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1CEB12: db $FC, $01 ; set text speed
#_1CEB14: db $FA ; wait for key
#_1CEB15: db $F7 ; cursor to row 1
#_1CEB16: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CEB1E: db $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵
#_1CEB22: db $F8 ; cursor to row 2
#_1CEB23: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CEB2B: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CEB31: db $F9 ; cursor to row 3
#_1CEB32: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CEB38: db $FC, $02 ; set text speed
#_1CEB3A: db $F7 ; cursor to row 1
#_1CEB3B: db $6C, $88, $51, $7A, $9F, $C9, $62, $28 ; トライフォ－スは
#_1CEB43: db $FD, $05 ; write kanji - 神
#_1CEB45: db $15, $00, $18, $03, $11 ; があたえし
#_1CEB4A: db $F8 ; cursor to row 2
#_1CEB4B: db $C4 ; 『
#_1CEB4C: db $FD, $98 ; write kanji - 黄
#_1CEB4E: db $FD, $43 ; write kanji - 金
#_1CEB50: db $24 ; の
#_1CEB51: db $FD, $99 ; write kanji - 力
#_1CEB53: db $C5, $FF, $2A, $3B, $18 ; 』⎵ふれた
#_1CEB58: db $FD, $1E ; write kanji - 者
#_1CEB5A: db $24 ; の
#_1CEB5B: db $FD, $E6 ; write kanji - 心
#_1CEB5D: db $24 ; の
#_1CEB5E: db $F9 ; cursor to row 3
#_1CEB5F: db $FD, $AE ; write kanji - 中
#_1CEB61: db $21, $00, $3A ; にある
#_1CEB64: db $FD, $0A ; write kanji - 願
#_1CEB66: db $01, $0E, $08, $20, $03, $30, $12, $CD ; いをかなえます。
#_1CEB6E: db $FC, $01 ; set text speed
#_1CEB70: db $FA ; wait for key
#_1CEB71: db $F7 ; cursor to row 1
#_1CEB72: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CEB7A: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CEB80: db $F8 ; cursor to row 2
#_1CEB81: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CEB89: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CEB8F: db $F9 ; cursor to row 3
#_1CEB90: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CEB98: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CEB9D: db $FC, $02 ; set text speed
#_1CEB9F: db $F7 ; cursor to row 1
#_1CEBA0: db $0C, $0C, $3C ; こころ
#_1CEBA3: db $FD, $4D ; write kanji - 正
#_1CEBA5: db $11, $09 ; しき
#_1CEBA7: db $FD, $1E ; write kanji - 者
#_1CEBA9: db $15, $2A, $3B, $3B, $3D, $C8 ; がふれれば,
#_1CEBAF: db $F8 ; cursor to row 2
#_1CEBB0: db $FD, $4D ; write kanji - 正
#_1CEBB2: db $11, $09 ; しき
#_1CEBB4: db $FD, $0A ; write kanji - 願
#_1CEBB6: db $01, $0E, $CC ; いを⋯
#_1CEBB9: db $FD, $85 ; write kanji - 悪
#_1CEBBB: db $11, $09 ; しき
#_1CEBBD: db $FD, $1E ; write kanji - 者
#_1CEBBF: db $15 ; が
#_1CEBC0: db $F9 ; cursor to row 3
#_1CEBC1: db $2A, $3B, $3B, $3D, $C8 ; ふれれば,
#_1CEBC6: db $FD, $85 ; write kanji - 悪
#_1CEBC8: db $11, $09 ; しき
#_1CEBCA: db $FD, $0A ; write kanji - 願
#_1CEBCC: db $01, $0E, $CC, $CD ; いを⋯。
#_1CEBD0: db $FC, $01 ; set text speed
#_1CEBD2: db $FA ; wait for key
#_1CEBD3: db $F7 ; cursor to row 1
#_1CEBD4: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CEBDC: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CEBE1: db $F8 ; cursor to row 2
#_1CEBE2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CEBEA: db $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵
#_1CEBEE: db $F9 ; cursor to row 3
#_1CEBEF: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CEBF7: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CEBFC: db $FC, $02 ; set text speed
#_1CEBFE: db $F7 ; cursor to row 1
#_1CEBFF: db $14, $24 ; その
#_1CEC01: db $FD, $1E ; write kanji - 者
#_1CEC03: db $24 ; の
#_1CEC04: db $FD, $0A ; write kanji - 願
#_1CEC06: db $01, $15, $C8 ; いが,
#_1CEC09: db $FD, $FB ; write kanji - 強
#_1CEC0B: db $0B, $3B, $3D ; ければ
#_1CEC0E: db $F8 ; cursor to row 2
#_1CEC0F: db $FD, $FB ; write kanji - 強
#_1CEC11: db $01, $2C, $37, $C8, $6C, $88, $51, $7A ; いほど,トライフ
#_1CEC19: db $9F, $C9, $62, $28 ; ォ－スは
#_1CEC1D: db $F9 ; cursor to row 3
#_1CEC1E: db $14, $24 ; その
#_1CEC20: db $FD, $99 ; write kanji - 力
#_1CEC22: db $0E, $28, $4A, $09, $12, $3A, $24, $36 ; をはっきするので
#_1CEC2A: db $12, $CD ; す。
#_1CEC2C: db $FC, $01 ; set text speed
#_1CEC2E: db $FA ; wait for key
#_1CEC2F: db $F7 ; cursor to row 1
#_1CEC30: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CEC38: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CEC3D: db $F8 ; cursor to row 2
#_1CEC3E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CEC46: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CEC4B: db $F9 ; cursor to row 3
#_1CEC4C: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CEC54: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CEC59: db $FC, $02 ; set text speed
#_1CEC5B: db $F7 ; cursor to row 1
#_1CEC5C: db $65, $74, $5F, $24 ; ガノンの
#_1CEC60: db $FD, $0A ; write kanji - 願
#_1CEC62: db $01, $28 ; いは
#_1CEC64: db $FD, $E8 ; write kanji - 世
#_1CEC66: db $FD, $E9 ; write kanji - 界
#_1CEC68: db $0E ; を
#_1CEC69: db $FD, $3E ; write kanji - 手
#_1CEC6B: db $21, $12, $3A ; にする
#_1CEC6E: db $F8 ; cursor to row 2
#_1CEC6F: db $0C, $1C, $36, $11, $18, $CD, $14, $24 ; ことでした。その
#_1CEC77: db $FD, $85 ; write kanji - 悪
#_1CEC79: db $11, $09 ; しき
#_1CEC7B: db $FD, $0A ; write kanji - 願
#_1CEC7D: db $01, $28 ; いは
#_1CEC7F: db $F9 ; cursor to row 3
#_1CEC80: db $FD, $F6 ; write kanji - 聖
#_1CEC82: db $FD, $33 ; write kanji - 地
#_1CEC84: db $0E ; を
#_1CEC85: db $FD, $57 ; write kanji - 闇
#_1CEC87: db $24 ; の
#_1CEC88: db $FD, $E8 ; write kanji - 世
#_1CEC8A: db $FD, $E9 ; write kanji - 界
#_1CEC8C: db $21, $08, $03, $1B, $11, $30, $01 ; にかえてしまい
#_1CEC93: db $FC, $01 ; set text speed
#_1CEC95: db $FA ; wait for key
#_1CEC96: db $F7 ; cursor to row 1
#_1CEC97: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CEC9F: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CECA5: db $F8 ; cursor to row 2
#_1CECA6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CECAE: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CECB4: db $F9 ; cursor to row 3
#_1CECB5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CECBD: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CECC3: db $FC, $02 ; set text speed
#_1CECC5: db $F7 ; cursor to row 1
#_1CECC6: db $14, $0C, $36 ; そこで
#_1CECC9: db $FD, $99 ; write kanji - 力
#_1CECCB: db $0E, $18, $0A, $0D, $03, $18, $65, $74 ; をたくわえたガノ
#_1CECD3: db $5F, $28 ; ンは
#_1CECD5: db $F8 ; cursor to row 2
#_1CECD6: db $25, $3F, $0F, $24 ; じぶんの
#_1CECDA: db $FD, $0A ; write kanji - 願
#_1CECDC: db $01, $0E, $08, $20, $03, $3A, $18, $33 ; いをかなえるため
#_1CECE4: db $21 ; に
#_1CECE5: db $F9 ; cursor to row 3
#_1CECE6: db $FD, $73 ; write kanji - 光
#_1CECE8: db $24 ; の
#_1CECE9: db $FD, $E8 ; write kanji - 世
#_1CECEB: db $FD, $E9 ; write kanji - 界
#_1CECED: db $2B ; へ
#_1CECEE: db $FD, $BC ; write kanji - 現
#_1CECF0: db $3B, $3A, $1A, $34, $39, $36, $11, $18 ; れるつもりでした
#_1CECF8: db $FC, $01 ; set text speed
#_1CECFA: db $FA ; wait for key
#_1CECFB: db $F7 ; cursor to row 1
#_1CECFC: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CED04: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CED0A: db $F8 ; cursor to row 2
#_1CED0B: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CED13: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CED19: db $F9 ; cursor to row 3
#_1CED1A: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CED22: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CED28: db $FC, $02 ; set text speed
#_1CED2A: db $F7 ; cursor to row 1
#_1CED2B: db $11, $08, $11, $C8, $6C, $88, $51, $7A ; しかし,トライフ
#_1CED33: db $9F, $C9, $62, $21, $2A, $3B ; ォ－スにふれ
#_1CED39: db $F8 ; cursor to row 2
#_1CED3A: db $18, $65, $74, $5F, $15 ; たガノンが
#_1CED3F: db $FD, $29 ; write kanji - 倒
#_1CED41: db $3B, $18 ; れた
#_1CED43: db $FD, $6A ; write kanji - 今
#_1CED45: db $C8 ; ,
#_1CED46: db $FD, $57 ; write kanji - 闇
#_1CED48: db $24 ; の
#_1CED49: db $FD, $E8 ; write kanji - 世
#_1CED4B: db $FD, $E9 ; write kanji - 界
#_1CED4D: db $F9 ; cursor to row 3
#_1CED4E: db $34 ; も
#_1CED4F: db $FD, $9D ; write kanji - 消
#_1CED51: db $03, $06, $0A, $0C, $1C, $36, $11, $49 ; えゆくことでしょ
#_1CED59: db $02, $CD ; う。
#_1CED5B: db $FC, $01 ; set text speed
#_1CED5D: db $FA ; wait for key
#_1CED5E: db $F7 ; cursor to row 1
#_1CED5F: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CED67: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CED6D: db $F8 ; cursor to row 2
#_1CED6E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CED76: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CED7C: db $F9 ; cursor to row 3
#_1CED7D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CED85: db $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵
#_1CED89: db $FC, $02 ; set text speed
#_1CED8B: db $F7 ; cursor to row 1
#_1CED8C: db $6C, $88, $51, $7A, $9F, $C9, $62, $28 ; トライフォ－スは
#_1CED94: db $FD, $E7 ; write kanji - 新
#_1CED96: db $18, $20 ; たな
#_1CED98: db $FD, $DB ; write kanji - 持
#_1CED9A: db $19, $22 ; ちぬ
#_1CED9C: db $F8 ; cursor to row 2
#_1CED9D: db $11, $0E, $30, $4A, $1B, $01, $30, $12 ; しをまっています
#_1CEDA5: db $C4 ; 『
#_1CEDA6: db $FD, $98 ; write kanji - 黄
#_1CEDA8: db $FD, $43 ; write kanji - 金
#_1CEDAA: db $24 ; の
#_1CEDAB: db $FD, $99 ; write kanji - 力
#_1CEDAD: db $C5 ; 』
#_1CEDAE: db $F9 ; cursor to row 3
#_1CEDAF: db $28, $C8, $00, $20, $18, $24 ; は,あなたの
#_1CEDB5: db $FD, $3E ; write kanji - 手
#_1CEDB7: db $21, $00, $3A, $24, $36, $12, $CD ; にあるのです。
#_1CEDBE: db $FC, $01 ; set text speed
#_1CEDC0: db $FA ; wait for key
#_1CEDC1: db $F7 ; cursor to row 1
#_1CEDC2: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CEDCA: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CEDD0: db $F8 ; cursor to row 2
#_1CEDD1: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CEDD9: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CEDDF: db $F9 ; cursor to row 3
#_1CEDE0: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵⎵⎵
#_1CEDE8: db $FF, $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵⎵
#_1CEDEE: db $FC, $02 ; set text speed
#_1CEDF0: db $F7 ; cursor to row 1
#_1CEDF1: db $10, $00, $C8, $2A, $3B, $1B, $1E, $38 ; さあ,ふれてごら
#_1CEDF9: db $0F, $20, $10, $01, $CD ; んなさい。
#_1CEDFE: db $F8 ; cursor to row 2
#_1CEDFF: db $00, $20, $18, $24 ; あなたの
#_1CEE03: db $FD, $E6 ; write kanji - 心
#_1CEE05: db $21, $00, $3A ; にある
#_1CEE08: db $FD, $0A ; write kanji - 願
#_1CEE0A: db $01, $24, $30, $30, $21 ; いのままに
#_1CEE0F: db $F9 ; cursor to row 3
#_1CEE10: db $FF, $FF, $CC, $FF, $CC, $FF, $CC, $FF ; ⎵⎵⋯⎵⋯⎵⋯⎵
#_1CEE18: db $CC ; ⋯
#_1CEE19: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; チクショ－ もってけどろぼう
Message_0172:
#_1CEE1A: db $69, $5A, $61, $99, $C9, $FF, $34, $4A ; チクショ－⎵もっ
#_1CEE22: db $1B, $0B, $37, $3C, $41, $02 ; てけどろぼう
#_1CEE28: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ういっ,おれは見たんだ。
; 川上の願いのタキでものすげ〜
; べっぴんのネエちゃんをよ⋯。
; [LINK]も1度会ってみな。
; ぜったい気に入ると思うけどな
Message_0173:
#_1CEE29: db $02, $01, $4A, $C8, $04, $3B, $28 ; ういっ,おれは
#_1CEE30: db $FD, $4C ; write kanji - 見
#_1CEE32: db $18, $0F, $2E, $CD ; たんだ。
#_1CEE36: db $F8 ; cursor to row 2
#_1CEE37: db $FD, $B8 ; write kanji - 川
#_1CEE39: db $FD, $72 ; write kanji - 上
#_1CEE3B: db $24 ; の
#_1CEE3C: db $FD, $0A ; write kanji - 願
#_1CEE3E: db $01, $24, $68, $59, $36, $34, $24, $12 ; いのタキでものす
#_1CEE46: db $1D, $CE ; げ〜
#_1CEE48: db $F9 ; cursor to row 3
#_1CEE49: db $40, $4A, $43, $0F, $24, $73, $53, $19 ; べっぴんのネエち
#_1CEE51: db $47, $0F, $0E, $07, $CC, $CD ; ゃんをよ⋯。
#_1CEE57: db $FA ; wait for key
#_1CEE58: db $F6 ; scroll text
#_1CEE59: db $FE, $6A ; write player name
#_1CEE5B: db $34, $A1 ; も1
#_1CEE5D: db $FD, $2A ; write kanji - 度
#_1CEE5F: db $FD, $04 ; write kanji - 会
#_1CEE61: db $4A, $1B, $31, $20, $CD ; ってみな。
#_1CEE66: db $F6 ; scroll text
#_1CEE67: db $27, $4A, $18, $01 ; ぜったい
#_1CEE6B: db $FD, $37 ; write kanji - 気
#_1CEE6D: db $21 ; に
#_1CEE6E: db $FD, $49 ; write kanji - 入
#_1CEE70: db $3A, $1C ; ると
#_1CEE72: db $FD, $36 ; write kanji - 思
#_1CEE74: db $02, $0B, $37, $20 ; うけどな
#_1CEE78: db $F6 ; scroll text
#_1CEE79: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; みんなには,ナイショだよ。
Message_0174:
#_1CEE7A: db $31, $0F, $20, $21, $28, $C8, $70, $51 ; みんなには,ナイ
#_1CEE82: db $61, $99, $2E, $07, $CD ; ショだよ。
#_1CEE87: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ハイリア湖の東の洞くつには
; 何かが住んでるよ。
; みんなには,ナイショだよ。
Message_0175:
#_1CEE88: db $78, $51, $89, $50 ; ハイリア
#_1CEE8C: db $FD, $12 ; write kanji - 湖
#_1CEE8E: db $24 ; の
#_1CEE8F: db $FD, $D9 ; write kanji - 東
#_1CEE91: db $24 ; の
#_1CEE92: db $FD, $EF ; write kanji - 洞
#_1CEE94: db $0A, $1A, $21, $28 ; くつには
#_1CEE98: db $F8 ; cursor to row 2
#_1CEE99: db $FD, $8B ; write kanji - 何
#_1CEE9B: db $08, $15 ; かが
#_1CEE9D: db $FD, $3F ; write kanji - 住
#_1CEE9F: db $0F, $36, $3A, $07, $CD ; んでるよ。
#_1CEEA4: db $F9 ; cursor to row 3
#_1CEEA5: db $31, $0F, $20, $21, $28, $C8, $70, $51 ; みんなには,ナイ
#_1CEEAD: db $61, $99, $2E, $07, $CD ; ショだよ。
#_1CEEB2: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; とまった敵をやっつけると
; ルピ－がよくでるよ。
; みんなには,ナイショだよ。
Message_0176:
#_1CEEB3: db $1C, $30, $4A, $18 ; とまった
#_1CEEB7: db $FD, $D1 ; write kanji - 敵
#_1CEEB9: db $0E, $05, $4A, $1A, $0B, $3A, $1C ; をやっつけると
#_1CEEC0: db $F8 ; cursor to row 2
#_1CEEC1: db $8A, $93, $C9, $15, $07, $0A, $36, $3A ; ルピ－がよくでる
#_1CEEC9: db $07, $CD ; よ。
#_1CEECB: db $F9 ; cursor to row 3
#_1CEECC: db $31, $0F, $20, $21, $28, $C8, $70, $51 ; みんなには,ナイ
#_1CEED4: db $61, $99, $2E, $07, $CD ; ショだよ。
#_1CEED9: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; こおった敵をハンマ－でこわす
; と,魔法のツボがもらえるのを
; 知っておるか? [LINK]よ⋯
Message_0177:
#_1CEEDA: db $0C, $04, $4A, $18 ; こおった
#_1CEEDE: db $FD, $D1 ; write kanji - 敵
#_1CEEE0: db $0E, $78, $5F, $80, $C9, $36, $0C, $0D ; をハンマ－でこわ
#_1CEEE8: db $12 ; す
#_1CEEE9: db $F8 ; cursor to row 2
#_1CEEEA: db $1C, $C8 ; と,
#_1CEEEC: db $FD, $2D ; write kanji - 魔
#_1CEEEE: db $FD, $3C ; write kanji - 法
#_1CEEF0: db $24, $6A, $91, $15, $34, $38, $03, $3A ; のツボがもらえる
#_1CEEF8: db $24, $0E ; のを
#_1CEEFA: db $F9 ; cursor to row 3
#_1CEEFB: db $FD, $93 ; write kanji - 知
#_1CEEFD: db $4A, $1B, $04, $3A, $08, $C6, $FF ; っておるか?⎵
#_1CEF04: db $FE, $6A ; write player name
#_1CEF06: db $07, $CC ; よ⋯
#_1CEF08: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; まずは
; サハスラ－ラを さがすラ－ラ
; ⋯ ⋯ ⋯ 。
Message_0178:
#_1CEF09: db $30, $26, $28 ; まずは
#_1CEF0C: db $F8 ; cursor to row 2
#_1CEF0D: db $60, $78, $62, $88, $C9, $88, $0E, $FF ; サハスラ－ラを⎵
#_1CEF15: db $10, $15, $12, $88, $C9, $88 ; さがすラ－ラ
#_1CEF1B: db $F9 ; cursor to row 3
#_1CEF1C: db $FF, $CC, $FF, $CC, $FF, $CC, $FF, $CD ; ⎵⋯⎵⋯⎵⋯⎵。
#_1CEF24: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; サハスラ－ラを みつけたの!
; ⋯ ⋯ ⋯
; さすがラ－ラ ⋯
Message_0179:
#_1CEF25: db $60, $78, $62, $88, $C9, $88, $0E, $FF ; サハスラ－ラを⎵
#_1CEF2D: db $31, $1A, $0B, $18, $24, $C7 ; みつけたの!
#_1CEF33: db $F8 ; cursor to row 2
#_1CEF34: db $FF, $CC, $FF, $CC, $FF, $CC ; ⎵⋯⎵⋯⎵⋯
#_1CEF3A: db $F9 ; cursor to row 3
#_1CEF3B: db $10, $12, $15, $88, $C9, $88, $FF, $FF ; さすがラ－ラ⎵⎵
#_1CEF43: db $CC ; ⋯
#_1CEF44: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ごめんなさい。
; ちょっと ルピ－が
; 足りないみたい⋯。
Message_017A:
#_1CEF45: db $1E, $33, $0F, $20, $10, $01, $CD ; ごめんなさい。
#_1CEF4C: db $F8 ; cursor to row 2
#_1CEF4D: db $19, $49, $4A, $1C, $FF, $8A, $93, $C9 ; ちょっと⎵ルピ－
#_1CEF55: db $15 ; が
#_1CEF56: db $F9 ; cursor to row 3
#_1CEF57: db $FD, $96 ; write kanji - 足
#_1CEF59: db $39, $20, $01, $31, $18, $01, $CC, $CD ; りないみたい⋯。
#_1CEF61: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ケココあら!な,なんなの⋯。
; 人の姿になっちゃって,ことば
; まで,話せちゃうじゃないの!
; あなたでしょ よく私のなかま
; いじめてるの。 カザミドリが
; ちゃんと見てるわよ。 けれど
; 人間の姿も ケッコウふべんね
; あ〜あ トリにもどりたいわ!
; ケコッコ⋯
Message_017B:
#_1CEF62: db $5B, $5C, $5C, $00, $38, $C7, $20, $C8 ; ケココあら!な,
#_1CEF6A: db $20, $0F, $20, $24, $CC, $CD ; なんなの⋯。
#_1CEF70: db $F8 ; cursor to row 2
#_1CEF71: db $FD, $38 ; write kanji - 人
#_1CEF73: db $24 ; の
#_1CEF74: db $FD, $A2 ; write kanji - 姿
#_1CEF76: db $21, $20, $4A, $19, $47, $4A, $1B, $C8 ; になっちゃって,
#_1CEF7E: db $0C, $1C, $3D ; ことば
#_1CEF81: db $F9 ; cursor to row 3
#_1CEF82: db $30, $36, $C8 ; まで,
#_1CEF85: db $FD, $A3 ; write kanji - 話
#_1CEF87: db $13, $19, $47, $02, $25, $47, $20, $01 ; せちゃうじゃない
#_1CEF8F: db $24, $C7 ; の!
#_1CEF91: db $FA ; wait for key
#_1CEF92: db $F6 ; scroll text
#_1CEF93: db $00, $20, $18, $36, $11, $49, $FF, $07 ; あなたでしょ⎵よ
#_1CEF9B: db $0A ; く
#_1CEF9C: db $FD, $26 ; write kanji - 私
#_1CEF9E: db $24, $20, $08, $30 ; のなかま
#_1CEFA2: db $F6 ; scroll text
#_1CEFA3: db $01, $25, $33, $1B, $3A, $24, $CD, $FF ; いじめてるの。⎵
#_1CEFAB: db $58, $6F, $81, $87, $89, $15 ; カザミドリが
#_1CEFB1: db $F6 ; scroll text
#_1CEFB2: db $19, $47, $0F, $1C ; ちゃんと
#_1CEFB6: db $FD, $4C ; write kanji - 見
#_1CEFB8: db $1B, $3A, $0D, $07, $CD, $FF, $0B, $3B ; てるわよ。⎵けれ
#_1CEFC0: db $37 ; ど
#_1CEFC1: db $FA ; wait for key
#_1CEFC2: db $F6 ; scroll text
#_1CEFC3: db $FD, $38 ; write kanji - 人
#_1CEFC5: db $FD, $39 ; write kanji - 間
#_1CEFC7: db $24 ; の
#_1CEFC8: db $FD, $A2 ; write kanji - 姿
#_1CEFCA: db $34, $FF, $5B, $9A, $5C, $52, $2A, $40 ; も⎵ケッコウふべ
#_1CEFD2: db $0F, $23 ; んね
#_1CEFD4: db $F6 ; scroll text
#_1CEFD5: db $00, $CE, $00, $FF, $6C, $89, $21, $34 ; あ〜あ⎵トリにも
#_1CEFDD: db $37, $39, $18, $01, $0D, $C7 ; どりたいわ!
#_1CEFE3: db $F6 ; scroll text
#_1CEFE4: db $5B, $5C, $9A, $5C, $CC ; ケコッコ⋯
#_1CEFE9: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; かけたルピ－がふえるかへるか
; 20ルピ－で1ぱつしょうぶだ
; あんた,やってみないかい?
; さあ,どうする?
; ▶ しょうぶする
;   逃げだす
Message_017C:
#_1CEFEA: db $08, $0B, $18, $8A, $93, $C9, $15, $2A ; かけたルピ－がふ
#_1CEFF2: db $03, $3A, $08, $2B, $3A, $08 ; えるかへるか
#_1CEFF8: db $F8 ; cursor to row 2
#_1CEFF9: db $A2, $A0, $8A, $93, $C9, $36, $A1, $42 ; 20ルピ－で1ぱ
#_1CF001: db $1A, $11, $49, $02, $3F, $2E ; つしょうぶだ
#_1CF007: db $F9 ; cursor to row 3
#_1CF008: db $00, $0F, $18, $C8, $05, $4A, $1B, $31 ; あんた,やってみ
#_1CF010: db $20, $01, $08, $01, $C6 ; ないかい?
#_1CF015: db $FA ; wait for key
#_1CF016: db $F6 ; scroll text
#_1CF017: db $10, $00, $C8, $37, $02, $12, $3A, $C6 ; さあ,どうする?
#_1CF01F: db $F6 ; scroll text
#_1CF020: db $FF, $FF, $E4, $FF, $FF, $11, $49, $02 ; ⎵⎵▶⎵⎵しょう
#_1CF028: db $3F, $12, $3A ; ぶする
#_1CF02B: db $F6 ; scroll text
#_1CF02C: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CF031: db $FD, $DD ; write kanji - 逃
#_1CF033: db $1D, $2E, $12 ; げだす
#_1CF036: db $FE, $68 ; get player selection - choose 2 low
#_1CF038: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; よしっ!好きな宝箱を
; 開けてくれっ!
Message_017D:
#_1CF039: db $07, $11, $4A, $C7 ; よしっ!
#_1CF03D: db $FD, $6D ; write kanji - 好
#_1CF03F: db $09, $20 ; きな
#_1CF041: db $FD, $9A ; write kanji - 宝
#_1CF043: db $FD, $EA ; write kanji - 箱
#_1CF045: db $0E ; を
#_1CF046: db $F8 ; cursor to row 2
#_1CF047: db $FD, $4B ; write kanji - 開
#_1CF049: db $0B, $1B, $0A, $3B, $4A, $C7 ; けてくれっ!
#_1CF04F: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; そうかい⋯。残念だな。
; また,ルピ－をためて
; よってくれよな。
Message_017E:
#_1CF050: db $14, $02, $08, $01, $CC, $CD ; そうかい⋯。
#_1CF056: db $FD, $C6 ; write kanji - 残
#_1CF058: db $FD, $B2 ; write kanji - 念
#_1CF05A: db $2E, $20, $CD ; だな。
#_1CF05D: db $F8 ; cursor to row 2
#_1CF05E: db $30, $18, $C8, $8A, $93, $C9, $0E, $18 ; また,ルピ－をた
#_1CF066: db $33, $1B ; めて
#_1CF068: db $F9 ; cursor to row 3
#_1CF069: db $07, $4A, $1B, $0A, $3B, $07, $20, $CD ; よってくれよな。
#_1CF071: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; かけたルピ－がふえるかへるか
; 100ルピ－で1ぱつしょうぶ
; あんた,やってみないかい?
; さあ,どうする?
; ▶ しょうぶする
;   逃げだす
Message_017F:
#_1CF072: db $08, $0B, $18, $8A, $93, $C9, $15, $2A ; かけたルピ－がふ
#_1CF07A: db $03, $3A, $08, $2B, $3A, $08 ; えるかへるか
#_1CF080: db $F8 ; cursor to row 2
#_1CF081: db $A1, $A0, $A0, $8A, $93, $C9, $36, $A1 ; 100ルピ－で1
#_1CF089: db $42, $1A, $11, $49, $02, $3F ; ぱつしょうぶ
#_1CF08F: db $F9 ; cursor to row 3
#_1CF090: db $00, $0F, $18, $C8, $05, $4A, $1B, $31 ; あんた,やってみ
#_1CF098: db $20, $01, $08, $01, $C6 ; ないかい?
#_1CF09D: db $FA ; wait for key
#_1CF09E: db $F6 ; scroll text
#_1CF09F: db $10, $00, $C8, $37, $02, $12, $3A, $C6 ; さあ,どうする?
#_1CF0A7: db $F6 ; scroll text
#_1CF0A8: db $FF, $FF, $E4, $FF, $FF, $11, $49, $02 ; ⎵⎵▶⎵⎵しょう
#_1CF0B0: db $3F, $12, $3A ; ぶする
#_1CF0B3: db $F6 ; scroll text
#_1CF0B4: db $FF, $FF, $FF, $FF, $FF ; ⎵⎵⎵⎵⎵
#_1CF0B9: db $FD, $DD ; write kanji - 逃
#_1CF0BB: db $1D, $2E, $12 ; げだす
#_1CF0BE: db $FE, $68 ; get player selection - choose 2 low
#_1CF0C0: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; やあ,[LINK]。 わざわざ,
; 入りにくい家を訪ねてくれたね
; おれいに良い事教えてあげよう
; 川上の人目につかない所に,湖
; があって,そこにはゾ－ラが,
; うじゃうじゃしてるんだって。
; そのゾ－ラたちの宝と言うのが
; これがもう,XXXしい物らし
; いよ!でへへ,みてみたいよな
Message_0180:
#_1CF0C1: db $05, $00, $C8 ; やあ,
#_1CF0C4: db $FE, $6A ; write player name
#_1CF0C6: db $CD, $FF, $0D, $1F, $0D, $1F, $C8 ; 。⎵わざわざ,
#_1CF0CD: db $F8 ; cursor to row 2
#_1CF0CE: db $FD, $49 ; write kanji - 入
#_1CF0D0: db $39, $21, $0A, $01 ; りにくい
#_1CF0D4: db $FD, $56 ; write kanji - 家
#_1CF0D6: db $0E ; を
#_1CF0D7: db $FD, $07 ; write kanji - 訪
#_1CF0D9: db $23, $1B, $0A, $3B, $18, $23 ; ねてくれたね
#_1CF0DF: db $F9 ; cursor to row 3
#_1CF0E0: db $04, $3B, $01, $21 ; おれいに
#_1CF0E4: db $FD, $32 ; write kanji - 良
#_1CF0E6: db $01 ; い
#_1CF0E7: db $FD, $22 ; write kanji - 事
#_1CF0E9: db $FD, $03 ; write kanji - 教
#_1CF0EB: db $03, $1B, $00, $1D, $07, $02 ; えてあげよう
#_1CF0F1: db $FA ; wait for key
#_1CF0F2: db $F6 ; scroll text
#_1CF0F3: db $FD, $B8 ; write kanji - 川
#_1CF0F5: db $FD, $72 ; write kanji - 上
#_1CF0F7: db $24 ; の
#_1CF0F8: db $FD, $38 ; write kanji - 人
#_1CF0FA: db $FD, $75 ; write kanji - 目
#_1CF0FC: db $21, $1A, $08, $20, $01 ; につかない
#_1CF101: db $FD, $55 ; write kanji - 所
#_1CF103: db $21, $C8 ; に,
#_1CF105: db $FD, $12 ; write kanji - 湖
#_1CF107: db $F6 ; scroll text
#_1CF108: db $15, $00, $4A, $1B, $C8, $14, $0C, $21 ; があって,そこに
#_1CF110: db $28, $7D, $C9, $88, $15, $C8 ; はゾ－ラが,
#_1CF116: db $F6 ; scroll text
#_1CF117: db $02, $25, $47, $02, $25, $47, $11, $1B ; うじゃうじゃして
#_1CF11F: db $3A, $0F, $2E, $4A, $1B, $CD ; るんだって。
#_1CF125: db $FA ; wait for key
#_1CF126: db $F6 ; scroll text
#_1CF127: db $14, $24, $7D, $C9, $88, $18, $19, $24 ; そのゾ－ラたちの
#_1CF12F: db $FD, $9A ; write kanji - 宝
#_1CF131: db $1C ; と
#_1CF132: db $FD, $16 ; write kanji - 言
#_1CF134: db $02, $24, $15 ; うのが
#_1CF137: db $F6 ; scroll text
#_1CF138: db $0C, $3B, $15, $34, $02, $C8, $C1, $C1 ; これがもう,XX
#_1CF140: db $C1, $11, $01 ; Xしい
#_1CF143: db $FD, $51 ; write kanji - 物
#_1CF145: db $38, $11 ; らし
#_1CF147: db $F6 ; scroll text
#_1CF148: db $01, $07, $C7, $36, $2B, $2B, $C8, $31 ; いよ!でへへ,み
#_1CF150: db $1B, $31, $18, $01, $07, $20 ; てみたいよな
#_1CF156: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; わざわざ入りにくい家を訪ねて
; くれたね。おれいのことばを
; おくります。 アリガトウ!
; ところで,昔この村にオカリナ
; で,どうぶつ達と話ができる
; 子どもがいてねェ。
; トリを使って国中をかけまわっ
; ていたよ。きっと,そのオカリ
; ナにはふしぎな力があったのさ
Message_0181:
#_1CF157: db $0D, $1F, $0D, $1F ; わざわざ
#_1CF15B: db $FD, $49 ; write kanji - 入
#_1CF15D: db $39, $21, $0A, $01 ; りにくい
#_1CF161: db $FD, $56 ; write kanji - 家
#_1CF163: db $0E ; を
#_1CF164: db $FD, $07 ; write kanji - 訪
#_1CF166: db $23, $1B ; ねて
#_1CF168: db $F8 ; cursor to row 2
#_1CF169: db $0A, $3B, $18, $23, $CD, $04, $3B, $01 ; くれたね。おれい
#_1CF171: db $24, $0C, $1C, $3D, $0E ; のことばを
#_1CF176: db $F9 ; cursor to row 3
#_1CF177: db $04, $0A, $39, $30, $12, $CD, $FF, $50 ; おくります。⎵ア
#_1CF17F: db $89, $65, $6C, $52, $C7 ; リガトウ!
#_1CF184: db $FA ; wait for key
#_1CF185: db $F6 ; scroll text
#_1CF186: db $1C, $0C, $3C, $36, $C8 ; ところで,
#_1CF18B: db $FD, $7E ; write kanji - 昔
#_1CF18D: db $0C, $24 ; この
#_1CF18F: db $FD, $8C ; write kanji - 村
#_1CF191: db $21, $54, $58, $89, $70 ; にオカリナ
#_1CF196: db $F6 ; scroll text
#_1CF197: db $36, $C8, $37, $02, $3F, $1A ; で,どうぶつ
#_1CF19D: db $FD, $13 ; write kanji - 達
#_1CF19F: db $1C ; と
#_1CF1A0: db $FD, $A3 ; write kanji - 話
#_1CF1A2: db $15, $36, $09, $3A ; ができる
#_1CF1A6: db $F6 ; scroll text
#_1CF1A7: db $FD, $11 ; write kanji - 子
#_1CF1A9: db $37, $34, $15, $01, $1B, $23, $9E, $CD ; どもがいてねェ。
#_1CF1B1: db $FA ; wait for key
#_1CF1B2: db $F6 ; scroll text
#_1CF1B3: db $6C, $89, $0E ; トリを
#_1CF1B6: db $FD, $89 ; write kanji - 使
#_1CF1B8: db $4A, $1B ; って
#_1CF1BA: db $FD, $2B ; write kanji - 国
#_1CF1BC: db $FD, $AE ; write kanji - 中
#_1CF1BE: db $0E, $08, $0B, $30, $0D, $4A ; をかけまわっ
#_1CF1C4: db $F6 ; scroll text
#_1CF1C5: db $1B, $01, $18, $07, $CD, $09, $4A, $1C ; ていたよ。きっと
#_1CF1CD: db $C8, $14, $24, $54, $58, $89 ; ,そのオカリ
#_1CF1D3: db $F6 ; scroll text
#_1CF1D4: db $70, $21, $28, $2A, $11, $16, $20 ; ナにはふしぎな
#_1CF1DB: db $FD, $99 ; write kanji - 力
#_1CF1DD: db $15, $00, $4A, $18, $24, $10 ; があったのさ
#_1CF1E3: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ▶[LINK]の家からスタ－ト
;   教会からスタ－ト
Message_0182:
#_1CF1E4: db $FE, $6D, $00 ; set window position
#_1CF1E7: db $FC, $00 ; set text speed
#_1CF1E9: db $E4 ; ▶
#_1CF1EA: db $FE, $6A ; write player name
#_1CF1EC: db $24 ; の
#_1CF1ED: db $FD, $56 ; write kanji - 家
#_1CF1EF: db $08, $38, $62, $68, $C9, $6C ; からスタ－ト
#_1CF1F5: db $F8 ; cursor to row 2
#_1CF1F6: db $FF ; ⎵
#_1CF1F7: db $FD, $03 ; write kanji - 教
#_1CF1F9: db $FD, $04 ; write kanji - 会
#_1CF1FB: db $08, $38, $62, $68, $C9, $6C ; からスタ－ト
#_1CF201: db $FE, $72 ; get player selection - choose 2 high
#_1CF203: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; ▶[LINK]の家からスタ－ト
;   教会からスタ－ト
;   山の洞くつからスタ－ト
Message_0183:
#_1CF204: db $FE, $6D, $00 ; set window position
#_1CF207: db $FC, $00 ; set text speed
#_1CF209: db $E4 ; ▶
#_1CF20A: db $FE, $6A ; write player name
#_1CF20C: db $24 ; の
#_1CF20D: db $FD, $56 ; write kanji - 家
#_1CF20F: db $08, $38, $62, $68, $C9, $6C ; からスタ－ト
#_1CF215: db $F8 ; cursor to row 2
#_1CF216: db $FF ; ⎵
#_1CF217: db $FD, $03 ; write kanji - 教
#_1CF219: db $FD, $04 ; write kanji - 会
#_1CF21B: db $08, $38, $62, $68, $C9, $6C ; からスタ－ト
#_1CF221: db $F9 ; cursor to row 3
#_1CF222: db $FF ; ⎵
#_1CF223: db $FD, $94 ; write kanji - 山
#_1CF225: db $24 ; の
#_1CF226: db $FD, $EF ; write kanji - 洞
#_1CF228: db $0A, $1A, $08, $38, $62, $68, $C9, $6C ; くつからスタ－ト
#_1CF230: db $FE, $71 ; get player selection - choose 3
#_1CF232: db $FB ; end of message

;===================================================================================================
; Save and Quit
;===================================================================================================
; ▶ 続けてゲ－ムする
;   セ－ブしておわる
Message_0184:
#_1CF233: db $FC, $00 ; set text speed
#_1CF235: db $E4, $FF ; ▶⎵
#_1CF237: db $FD, $82 ; write kanji - 続
#_1CF239: db $0B, $1B, $6D, $C9, $82, $12, $3A ; けてゲ－ムする
#_1CF240: db $F8 ; cursor to row 2
#_1CF241: db $FF, $FF, $63, $C9, $8F, $11, $1B, $04 ; ⎵⎵セ－ブしてお
#_1CF249: db $0D, $3A ; わる
#_1CF24B: db $FE, $72 ; get player selection - choose 2 high
#_1CF24D: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; さあ,穴ほり屋だよ。
; 30びょう間,ほりほうだい。
; でてきたお宝あんたの物!
; 80ルピ－でさあどうだ?
; ▶ ほりたい
;   ほりたくない
Message_0185:
#_1CF24E: db $10, $00, $C8 ; さあ,
#_1CF251: db $FD, $5C ; write kanji - 穴
#_1CF253: db $2C, $39 ; ほり
#_1CF255: db $FD, $3D ; write kanji - 屋
#_1CF257: db $2E, $07, $CD ; だよ。
#_1CF25A: db $F8 ; cursor to row 2
#_1CF25B: db $A3, $A0, $3E, $49, $02 ; 30びょう
#_1CF260: db $FD, $39 ; write kanji - 間
#_1CF262: db $C8, $2C, $39, $2C, $02, $2E, $01, $CD ; ,ほりほうだい。
#_1CF26A: db $F9 ; cursor to row 3
#_1CF26B: db $36, $1B, $09, $18, $04 ; でてきたお
#_1CF270: db $FD, $9A ; write kanji - 宝
#_1CF272: db $00, $0F, $18, $24 ; あんたの
#_1CF276: db $FD, $51 ; write kanji - 物
#_1CF278: db $C7 ; !
#_1CF279: db $FA ; wait for key
#_1CF27A: db $F6 ; scroll text
#_1CF27B: db $A8, $A0, $8A, $93, $C9, $36, $10, $00 ; 80ルピ－でさあ
#_1CF283: db $37, $02, $2E, $C6 ; どうだ?
#_1CF287: db $F6 ; scroll text
#_1CF288: db $FF, $FF, $E4, $FF, $2C, $39, $18, $01 ; ⎵⎵▶⎵ほりたい
#_1CF290: db $F6 ; scroll text
#_1CF291: db $FF, $FF, $FF, $FF, $2C, $39, $18, $0A ; ⎵⎵⎵⎵ほりたく
#_1CF299: db $20, $01 ; ない
#_1CF29B: db $FE, $68 ; get player selection - choose 2 low
#_1CF29D: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; それではシャベルをかしましょ
; う。 おててにもったら,
; Yボタンで,さあ,ほって!
Message_0186:
#_1CF29E: db $14, $3B, $36, $28, $61, $97, $90, $8A ; それではシャベル
#_1CF2A6: db $0E, $08, $11, $30, $11, $49 ; をかしましょ
#_1CF2AC: db $F8 ; cursor to row 2
#_1CF2AD: db $02, $CD, $FF, $04, $1B, $1B, $21, $34 ; う。⎵おててにも
#_1CF2B5: db $4A, $18, $38, $C8 ; ったら,
#_1CF2B9: db $F9 ; cursor to row 3
#_1CF2BA: db $C2, $91, $68, $5F, $36, $C8, $10, $00 ; Yボタンで,さあ
#_1CF2C2: db $C8, $2C, $4A, $1B, $C7 ; ,ほって!
#_1CF2C7: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; そうかい,それじゃあ,あきら
; めよう。 ルピ－をためて
; また来てね。
Message_0187:
#_1CF2C8: db $14, $02, $08, $01, $C8, $14, $3B, $25 ; そうかい,それじ
#_1CF2D0: db $47, $00, $C8, $00, $09, $38 ; ゃあ,あきら
#_1CF2D6: db $F8 ; cursor to row 2
#_1CF2D7: db $33, $07, $02, $CD, $FF, $8A, $93, $C9 ; めよう。⎵ルピ－
#_1CF2DF: db $0E, $18, $33, $1B ; をためて
#_1CF2E3: db $F9 ; cursor to row 3
#_1CF2E4: db $30, $18 ; また
#_1CF2E6: db $FD, $D6 ; write kanji - 来
#_1CF2E8: db $1B, $23, $CD ; てね。
#_1CF2EB: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; おっと時間だ,おしまいだ。
; また来てちょうだい,さような
; ら⋯。
Message_0188:
#_1CF2EC: db $04, $4A, $1C ; おっと
#_1CF2EF: db $FD, $88 ; write kanji - 時
#_1CF2F1: db $FD, $39 ; write kanji - 間
#_1CF2F3: db $2E, $C8, $04, $11, $30, $01, $2E, $CD ; だ,おしまいだ。
#_1CF2FB: db $F8 ; cursor to row 2
#_1CF2FC: db $30, $18 ; また
#_1CF2FE: db $FD, $D6 ; write kanji - 来
#_1CF300: db $1B, $19, $49, $02, $2E, $01, $C8, $10 ; てちょうだい,さ
#_1CF308: db $07, $02, $20 ; ような
#_1CF30B: db $F9 ; cursor to row 3
#_1CF30C: db $38, $CC, $CD ; ら⋯。
#_1CF30F: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; また,来てちょ－だい
; まってるよ〜ん。
Message_0189:
#_1CF310: db $30, $18, $C8 ; また,
#_1CF313: db $FD, $D6 ; write kanji - 来
#_1CF315: db $1B, $19, $49, $C9, $2E, $01 ; てちょ－だい
#_1CF31B: db $F8 ; cursor to row 2
#_1CF31C: db $30, $4A, $1B, $3A, $07, $CE, $0F, $CD ; まってるよ〜ん。
#_1CF324: db $FB ; end of message

;===================================================================================================
; TODO
;===================================================================================================
; くわしい事は,言えないが,
; 今は,ちょっと つごうが悪い
; また来てちょ－だい。ゴメンネ
Message_018A:
#_1CF325: db $0A, $0D, $11, $01 ; くわしい
#_1CF329: db $FD, $22 ; write kanji - 事
#_1CF32B: db $28, $C8 ; は,
#_1CF32D: db $FD, $16 ; write kanji - 言
#_1CF32F: db $03, $20, $01, $15, $C8 ; えないが,
#_1CF334: db $F8 ; cursor to row 2
#_1CF335: db $FD, $6A ; write kanji - 今
#_1CF337: db $28, $C8, $19, $49, $4A, $1C, $FF, $1A ; は,ちょっと⎵つ
#_1CF33F: db $1E, $02, $15 ; ごうが
#_1CF342: db $FD, $85 ; write kanji - 悪
#_1CF344: db $01 ; い
#_1CF345: db $F9 ; cursor to row 3
#_1CF346: db $30, $18 ; また
#_1CF348: db $FD, $D6 ; write kanji - 来
#_1CF34A: db $1B, $19, $49, $C9, $2E, $01, $CD, $6E ; てちょ－だい。ゴ
#_1CF352: db $83, $5F, $73 ; メンネ
#_1CF355: db $FB ; end of message

;===================================================================================================

MessageDataEnd:

;===================================================================================================

TextCommandLengths:
#_1CF356: db 1, 1, 1, 1
#_1CF35A: db 1, 1, 1, 2
#_1CF35E: db 2, 2, 1

; $00 = no parameter
; $FF = has parameter
ExtendedTextCommandLengths:
#_1CF361: db $00, $00, $00, $00
#_1CF365: db $FF, $FF, $FF, $FF
#_1CF369: db $00, $00, $00, $00
#_1CF36D: db $00, $00, $00, $00
#_1CF371: db $FF, $FF, $FF, $FF
#_1CF375: db $00, $00, $00, $00
#_1CF379: db $00

;===================================================================================================

CreateMessagePointers:
#_1CF37A: PHB
#_1CF37B: PHK
#_1CF37C: PLB

#_1CF37D: REP #$30

#_1CF37F: LDA.w #Message_Data ; offset into ROM
#_1CF382: STA.l $7F71C0

#_1CF386: STA.b $00

#_1CF388: STZ.b $02

.next_byte
#_1CF38A: LDX.b $00

#_1CF38C: LDA.l Message_Data-$8000,X ; $1C0000
#_1CF390: AND.w #$00FF
#_1CF393: CMP.w #$F6 ; scroll text
#_1CF396: BCS .iscommand

#_1CF398: LDA.w #$00F5 ; use this value to get a length of 1

.iscommand
#_1CF39B: TAY
#_1CF39C: LDA.w TextCommandLengths-$F5,Y

#_1CF39F: AND.w #$00FF ; add in the offset
#_1CF3A2: CLC
#_1CF3A3: ADC.b $00
#_1CF3A5: STA.b $00

#_1CF3A7: CPY.w #$FE
#_1CF3AA: BNE .not_extended_command

#_1CF3AC: LDA.l Message_Data-$7FFF,X
#_1CF3B0: AND.w #$00FF
#_1CF3B3: TAY

#_1CF3B4: LDA.w ExtendedTextCommandLengths-$68,Y ; $FF = extra param
#_1CF3B7: BPL .no_extra_param

#_1CF3B9: INC.b $00

.no_extra_param
.not_extended_command
#_1CF3BB: CPY.w #$FB ; end of message

#_1CF3BE: BNE .next_byte ; keep counting if not the end yet

#_1CF3C0: LDX.b $02 ; next message pointer offset
#_1CF3C2: INX
#_1CF3C3: INX
#_1CF3C4: STX.b $02

#_1CF3C6: LDA.b $00 ; get ROM offset of message data
#_1CF3C8: STA.l $7F71C0,X

#_1CF3CC: CMP.w #MessageDataEnd ; !HARDCODED terminator
#_1CF3CF: BNE .next_byte

#_1CF3D1: SEP #$30

#_1CF3D3: PLB

#_1CF3D4: RTL

;===================================================================================================
; FREE ROM: 0x12B
;===================================================================================================
NULL_1CF3D5:
#_1CF3D5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF3DD: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF3E5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF3ED: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF3F5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF3FD: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF405: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF40D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF415: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF41D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF425: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF42D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF435: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF43D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF445: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF44D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF455: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF45D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF465: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF46D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF475: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF47D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF485: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF48D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF495: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF49D: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF4A5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF4AD: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF4B5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF4BD: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF4C5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF4CD: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF4D5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF4DD: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF4E5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF4ED: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF4F5: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CF4FD: db $FF, $FF, $FF

;===================================================================================================
; Stops Link from moving with the hookshot
; This doesn't actually check for collision
; That's expected to be done prior to calling
;===================================================================================================
Sprite_CancelHookshot:
#_1CF500: PHB
#_1CF501: PHK
#_1CF502: PLB

#_1CF503: PHX

#_1CF504: LDX.b #$04

; check each ancilla slot for a hook
.next_ancilla
#_1CF506: LDA.w $0C4A,X
#_1CF509: CMP.b #!ANCILLA_1F
#_1CF50B: BNE .not_hooker

.yes_hooker
#_1CF50D: LDA.w $037E
#_1CF510: BEQ .not_hooker

.active_hooker
#_1CF512: STZ.w $037E
#_1CF515: BRA .stop_hooking

.not_hooker
#_1CF517: DEX
#_1CF518: BPL .next_ancilla

;---------------------------------------------------------------------------------------------------

.stop_hooking
#_1CF51A: LDA.b $23 ; cache link's coordinates
#_1CF51C: STA.b $41

#_1CF51E: LDA.b $21
#_1CF520: STA.b $40

#_1CF522: REP #$20

#_1CF524: LDA.w $0FC2
#_1CF527: STA.b $22

#_1CF529: LDA.w $0FC4
#_1CF52C: STA.b $20

#_1CF52E: SEP #$20

#_1CF530: JSL HandleIndoorCameraAndDoors_long

#_1CF534: PLX

#_1CF535: PLB

#_1CF536: RTL

;===================================================================================================
; Comes in with Y, a quota for maximum number of this ancilla
;===================================================================================================
Ancilla_CheckForAvailableSlot:
#_1CF537: STY.b $0F

#_1CF539: INY
#_1CF53A: STY.b $0E

#_1CF53C: LDY.b #$00
#_1CF53E: LDX.b #$04

; tally each matching ancilla in the first 4 slots
.tallyoop
#_1CF540: CMP.w $0C4A,X
#_1CF543: BNE .not_the_same

#_1CF545: INY

.not_the_same
#_1CF546: DEX
#_1CF547: BPL .tallyoop

#_1CF549: CPY.b $0E
#_1CF54B: BEQ .too_many_here

#_1CF54D: LDY.b #$01 ; hardcheck for bomb or debris, limited to 2 slots
#_1CF54F: CMP.b #!ANCILLA_07
#_1CF551: BEQ .find_empty_slot

#_1CF553: CMP.b #!ANCILLA_08
#_1CF555: BEQ .find_empty_slot

#_1CF557: LDY.b #$04 ; all other ancilla are designed to use any of the first 5

.find_empty_slot
#_1CF559: LDA.w $0C4A,Y
#_1CF55C: BEQ .slot_available

#_1CF55E: DEY
#_1CF55F: BPL .find_empty_slot

; otherwise, find an unimportant ancilla to replace
; here's the famous dumb code that allows for misslotting
; why search slots in this manner instead of just searching the same 5
; (or 2 in the case of bombs)
; the more you think about it, the less it makes sense
; this game's most broken class of glitches was pretty easily preventable
.check_next_replacement
#_1CF561: DEC.w $03C4
#_1CF564: BPL .continue_with_index

; use the quota as the index to search from
; this decision also makes 0 sense
#_1CF566: LDA.b $0F
#_1CF568: STA.w $03C4

.continue_with_index
#_1CF56B: LDY.w $03C4

#_1CF56E: LDA.w $0C4A,Y
#_1CF571: CMP.b #!ANCILLA_3C
#_1CF573: BEQ .slot_available

#_1CF575: CMP.b #!ANCILLA_13
#_1CF577: BEQ .slot_available

#_1CF579: CMP.b #!ANCILLA_0A
#_1CF57B: BEQ .slot_available

#_1CF57D: DEY
#_1CF57E: BPL .check_next_replacement

.slot_available
#_1CF580: RTL

;---------------------------------------------------------------------------------------------------

.too_many_here
#_1CF581: TXY

#_1CF582: RTL

;===================================================================================================

pool Link_SpinAndDie

.anim_step
#_1CF583: db $00, $01, $02, $03, $00, $01, $02, $03
#_1CF58B: db $00, $01, $02, $03, $04, $05, $05

.timer
#_1CF592: db   5,   5,   5,   5,   5,   5,   5,   5
#_1CF59A: db   5,   5,   5,   5,   3,   3,  98

.prop
#_1CF5A1: db $20, $10

pool off

;---------------------------------------------------------------------------------------------------

Link_SpinAndDie:
#_1CF5A3: PHB
#_1CF5A4: PHK
#_1CF5A5: PLB

#_1CF5A6: DEC.w $030B
#_1CF5A9: BPL .timer_running

#_1CF5AB: LDX.w $030D
#_1CF5AE: INX
#_1CF5AF: CPX.b #$0F
#_1CF5B1: BEQ EXIT_1CF60D

#_1CF5B3: CPX.b #$0E
#_1CF5B5: BNE .swooning

#_1CF5B7: INC.b $11

.swooning
#_1CF5B9: STX.w $030D

#_1CF5BC: LDA.w .anim_step,X
#_1CF5BF: STA.w $030A

#_1CF5C2: LDA.w .timer,X
#_1CF5C5: STA.w $030B

.timer_running
#_1CF5C8: LDA.w $030D
#_1CF5CB: CMP.b #$0D
#_1CF5CD: BNE EXIT_1CF60D

#_1CF5CF: LDA.b $4B
#_1CF5D1: CMP.b #$0C
#_1CF5D3: BEQ EXIT_1CF60D

#_1CF5D5: REP #$20

#_1CF5D7: LDA.b $20
#_1CF5D9: CLC
#_1CF5DA: ADC.w #$0010
#_1CF5DD: SEC
#_1CF5DE: SBC.b $E8
#_1CF5E0: STA.b $00

#_1CF5E2: LDA.b $22
#_1CF5E4: CLC
#_1CF5E5: ADC.w #$0007
#_1CF5E8: SEC
#_1CF5E9: SBC.b $E2
#_1CF5EB: STA.b $02

;---------------------------------------------------------------------------------------------------

#_1CF5ED: SEP #$20

#_1CF5EF: LDY.b $EE

#_1CF5F1: LDA.b $02
#_1CF5F3: STA.w $09D0

#_1CF5F6: LDA.b $00
#_1CF5F8: STA.w $09D1

#_1CF5FB: LDA.b #$AA
#_1CF5FD: STA.w $09D2

#_1CF600: LDA.w .prop,Y

#_1CF603: ORA.b #$02
#_1CF605: STA.w $09D3

#_1CF608: LDA.b #$02
#_1CF60A: STA.w $0A94

;---------------------------------------------------------------------------------------------------

#EXIT_1CF60D:
#_1CF60D: PLB

#_1CF60E: RTL

;===================================================================================================

pool AncillaAdd_SwordBeam

.initial_angles
#_1CF60F: db $21, $1D, $19, $15
#_1CF613: db $03, $3E, $3A, $36
#_1CF617: db $12, $0E, $0A, $06
#_1CF61B: db $31, $2D, $29, $25

.speed_y
#_1CF61F: db -64,  64,   0,   0

.speed_x
#_1CF623: db   0,   0, -64,  64

.speed_angular
#_1CF627: db  -8,  -8,  -8,   8

.offset_y_low
#_1CF62B: db -24,   8,  -6,  -6

.offset_y_high
#_1CF62F: db  -1,   0,  -1,  -1

.offset_x_low
#_1CF633: db  -8, -10, -22,   4

.offset_x_high
#_1CF637: db  -1,  -1,  -1,   0

pool off

;---------------------------------------------------------------------------------------------------

AncillaAdd_SwordBeam:
#_1CF63B: PHB
#_1CF63C: PHK
#_1CF63D: PLB

#_1CF63E: LDA.b #!ANCILLA_0C
#_1CF640: JSL AncillaAdd_AddAncilla_Bank09
#_1CF644: BCS EXIT_1CF60D

#_1CF646: LDA.b $2F
#_1CF648: ASL A
#_1CF649: TAY

#_1CF64A: LDA.w .initial_angles+0,Y
#_1CF64D: STA.l $7F5800

#_1CF651: LDA.w .initial_angles+1,Y
#_1CF654: STA.l $7F5801

#_1CF658: LDA.w .initial_angles+2,Y
#_1CF65B: STA.l $7F5802

#_1CF65F: LDA.w .initial_angles+3,Y
#_1CF662: STA.l $7F5803
#_1CF666: STA.l $7F5804

#_1CF66A: LDA.b #$02
#_1CF66C: STA.w $03B1,X

#_1CF66F: LDA.b #$4C
#_1CF671: STA.w $0C5E,X

#_1CF674: LDA.b #$08
#_1CF676: STA.w $039F,X

#_1CF679: STZ.w $0C54,X
#_1CF67C: STZ.w $0385,X
#_1CF67F: STZ.w $0394,X

#_1CF682: LDA.b #$00
#_1CF684: STA.w $03A4,X

#_1CF687: LDA.b #$0E
#_1CF689: STA.l $7F5808

#_1CF68D: LDA.b $2F
#_1CF68F: LSR A
#_1CF690: STA.w $0C72,X

#_1CF693: TAY

#_1CF694: LDA.w .speed_y,Y
#_1CF697: STA.w $0C22,X

#_1CF69A: LDA.w .speed_x,Y
#_1CF69D: STA.w $0C2C,X

#_1CF6A0: LDA.w .speed_angular,Y
#_1CF6A3: STA.w $03A9,X

#_1CF6A6: REP #$20

#_1CF6A8: LDA.b $20
#_1CF6AA: CLC
#_1CF6AB: ADC.w #12
#_1CF6AE: STA.l $7F5810

#_1CF6B2: LDA.b $22
#_1CF6B4: CLC
#_1CF6B5: ADC.w #8
#_1CF6B8: STA.l $7F580E

#_1CF6BC: SEP #$20

#_1CF6BE: JSL Ancilla_CheckInitialTile_A
#_1CF6C2: BCS .continue

#_1CF6C4: PLB

#_1CF6C5: RTL

;---------------------------------------------------------------------------------------------------

.continue
#_1CF6C6: LDY.w $0C72,X

#_1CF6C9: LDA.l $7F5810
#_1CF6CD: CLC
#_1CF6CE: ADC.w .offset_y_low,Y
#_1CF6D1: STA.w $0BFA,X

#_1CF6D4: LDA.l $7F5811
#_1CF6D8: ADC.w .offset_y_high,Y
#_1CF6DB: STA.w $0C0E,X

#_1CF6DE: LDA.l $7F580E
#_1CF6E2: CLC
#_1CF6E3: ADC.w .offset_x_low,Y
#_1CF6E6: STA.w $0C04,X

#_1CF6E9: LDA.l $7F580F
#_1CF6ED: ADC.w .offset_x_high,Y
#_1CF6F0: STA.w $0C18,X

#_1CF6F3: JSL Ancilla_CalculateSFXPan
#_1CF6F7: ORA.b #!SFX3_01
#_1CF6F9: STA.w $012F

#_1CF6FC: LDA.b #!ANCILLA_04
#_1CF6FE: STA.w $0C4A,X

#_1CF701: LDA.b #$07
#_1CF703: STA.w $0C68,X

#_1CF706: LDA.b #$10
#_1CF708: STA.w $0C90,X

#_1CF70B: PLB

#_1CF70C: RTL

;===================================================================================================

pool Ancilla0C_SwordBeam

.char
#_1CF70D: db $D7, $B7, $80, $83

.extra_char
#_1CF711: db $B7, $80, $83

.offset_y_low
#_1CF714: db   0,   0,  -6,  -6

.offset_y_high
#_1CF718: db   0,   0,  -1,  -1

.offset_x_low
#_1CF71C: db  -8, -10,   0,   0

.offset_x_high
#_1CF720: db  -1,  -1,   0,   0

pool off

;---------------------------------------------------------------------------------------------------

Ancilla0C_SwordBeam:
#_1CF724: PHB
#_1CF725: PHK
#_1CF726: PLB

#_1CF727: PHX

#_1CF728: LDA.b #$02
#_1CF72A: STA.b $73

#_1CF72C: LDA.b $11
#_1CF72E: BEQ .do_beam_stuff

#_1CF730: BRL .draw

;---------------------------------------------------------------------------------------------------

.do_beam_stuff
#_1CF733: LDA.l $7F5810
#_1CF737: STA.w $0BFA,X

#_1CF73A: LDA.l $7F5811
#_1CF73E: STA.w $0C0E,X

#_1CF741: LDA.l $7F580E
#_1CF745: STA.w $0C04,X

#_1CF748: LDA.l $7F580F
#_1CF74C: STA.w $0C18,X

#_1CF74F: JSR SwordBeam_Move_Y
#_1CF752: JSR SwordBeam_Move_X

#_1CF755: LDA.w $0BFA,X
#_1CF758: STA.l $7F5810

#_1CF75C: LDA.w $0C0E,X
#_1CF75F: STA.l $7F5811

#_1CF763: LDA.w $0C04,X
#_1CF766: STA.l $7F580E

#_1CF76A: LDA.w $0C18,X
#_1CF76D: STA.l $7F580F

#_1CF771: LDA.w $0394,X
#_1CF774: AND.b #$0F
#_1CF776: BNE .no_sfx

#_1CF778: JSL Ancilla_CalculateSFXPan
#_1CF77C: ORA.b #!SFX3_01
#_1CF77E: STA.w $012F

.no_sfx
#_1CF781: INC.w $0394,X
#_1CF784: JSL Ancilla_CheckSpriteCollision_long
#_1CF788: BCS .hit_sprite

#_1CF78A: JSL Ancilla_CheckTileCollision_long
#_1CF78E: BCC .no_collision

.hit_sprite
#_1CF790: LDY.w $0C72,X

#_1CF793: LDA.w $0BFA,X
#_1CF796: CLC
#_1CF797: ADC.w .offset_y_low,Y
#_1CF79A: STA.w $0BFA,X

#_1CF79D: LDA.w $0C0E,X
#_1CF7A0: ADC.w .offset_y_high,Y
#_1CF7A3: STA.w $0C0E,X

#_1CF7A6: LDA.w $0C04,X
#_1CF7A9: CLC
#_1CF7AA: ADC.w .offset_x_low,Y
#_1CF7AD: STA.w $0C04,X

#_1CF7B0: LDA.w $0C18,X
#_1CF7B3: ADC.w .offset_x_high,Y
#_1CF7B6: STA.w $0C18,X

#_1CF7B9: LDA.b #!ANCILLA_04
#_1CF7BB: STA.w $0C4A,X

#_1CF7BE: LDA.b #$07
#_1CF7C0: STA.w $0C68,X

#_1CF7C3: LDA.b #$10
#_1CF7C5: STA.w $0C90,X

#_1CF7C8: BRL .exit

;---------------------------------------------------------------------------------------------------

.no_collision
#_1CF7CB: DEC.w $03B1,X
#_1CF7CE: BPL .draw

#_1CF7D0: LDA.b #$04
#_1CF7D2: STA.b $73

#_1CF7D4: LDA.b #$02
#_1CF7D6: STA.w $03B1,X

.draw
#_1CF7D9: LDA.w $03A9,X
#_1CF7DC: STA.b $76

#_1CF7DE: LDY.b #$00
#_1CF7E0: LDX.b #$03

.next_object
#_1CF7E2: STX.b $72

#_1CF7E4: LDA.b $11
#_1CF7E6: BNE .no_rotation

#_1CF7E8: LDA.l $7F5800,X
#_1CF7EC: CLC
#_1CF7ED: ADC.b $76
#_1CF7EF: AND.b #$3F
#_1CF7F1: STA.l $7F5800,X

;---------------------------------------------------------------------------------------------------

.no_rotation
#_1CF7F5: PHX
#_1CF7F6: PHY

#_1CF7F7: LDA.l $7F5808
#_1CF7FB: STA.b $08

#_1CF7FD: LDA.l $7F5800,X

#_1CF801: JSL Ancilla_GetRadialProjection_long
#_1CF805: JSL Sparkle_PrepOAMFromRadial

#_1CF809: PLY

#_1CF80A: JSL Ancilla_SetOAM_XY_long

#_1CF80E: LDX.b $72

#_1CF810: LDA.w .char,X
#_1CF813: STA.b ($90),Y

#_1CF815: INY

#_1CF816: LDA.b $73
#_1CF818: ORA.b $65
#_1CF81A: STA.b ($90),Y

#_1CF81C: INY
#_1CF81D: PHY

#_1CF81E: TYA
#_1CF81F: SEC
#_1CF820: SBC.b #$04

#_1CF822: LSR A
#_1CF823: LSR A
#_1CF824: TAY

#_1CF825: LDA.b #$00
#_1CF827: STA.b ($92),Y

#_1CF829: PLY

#_1CF82A: PLX
#_1CF82B: DEX
#_1CF82C: BPL .next_object

#_1CF82E: PLX
#_1CF82F: PHX

#_1CF830: LDA.b $11
#_1CF832: BNE .dont_rotate_extra

#_1CF834: DEC.w $039F,X
#_1CF837: BPL .skip_extra

#_1CF839: LDA.b #$00
#_1CF83B: STA.w $039F,X

#_1CF83E: LDA.w $03A4,X
#_1CF841: INC A
#_1CF842: AND.b #$03
#_1CF844: STA.w $03A4,X

#_1CF847: CMP.b #$03
#_1CF849: BNE .dont_rotate_extra

#_1CF84B: LDA.l $7F5804
#_1CF84F: CLC
#_1CF850: ADC.b $76
#_1CF852: AND.b #$3F
#_1CF854: STA.l $7F5804

.dont_rotate_extra
#_1CF858: LDA.w $03A4,X
#_1CF85B: STA.b $72

#_1CF85D: CMP.b #$03
#_1CF85F: BEQ .skip_extra

#_1CF861: PHY

#_1CF862: LDA.l $7F5808
#_1CF866: STA.b $08

#_1CF868: LDA.l $7F5804
#_1CF86C: JSL Ancilla_GetRadialProjection_long
#_1CF870: JSL Sparkle_PrepOAMFromRadial

#_1CF874: PLY

#_1CF875: JSL Ancilla_SetOAM_XY_long

#_1CF879: LDX.b $72

#_1CF87B: LDA.w .extra_char,X
#_1CF87E: STA.b ($90),Y

#_1CF880: INY
#_1CF881: LDA.b #$04
#_1CF883: ORA.b $65
#_1CF885: STA.b ($90),Y

#_1CF887: INY
#_1CF888: TYA
#_1CF889: SEC
#_1CF88A: SBC.b #$04

#_1CF88C: LSR A
#_1CF88D: LSR A
#_1CF88E: TAY
#_1CF88F: LDA.b #$00
#_1CF891: STA.b ($92),Y

.skip_extra
#_1CF893: PLX
#_1CF894: PHX
#_1CF895: LDY.b #$01

.check_next
#_1CF897: LDA.b ($90),Y
#_1CF899: CMP.b #$F0
#_1CF89B: BNE .exit

#_1CF89D: INY ; +4
#_1CF89E: INY
#_1CF89F: INY
#_1CF8A0: INY
#_1CF8A1: CPY.b #$11
#_1CF8A3: BNE .check_next

#_1CF8A5: STZ.w $0C4A,X

.exit
#_1CF8A8: PLX
#_1CF8A9: PLB

#_1CF8AA: RTL

;===================================================================================================

pool Ancilla0D_SpinAttackFullChargeSpark_long

.offset_y_low
#_1CF8AB: db  -8,  27,  12,  12

.offset_y_high
#_1CF8AF: db  -1,   0,   0,   0

.offset_x_low
#_1CF8B3: db   4,   4, -13,  20

.offset_x_high
#_1CF8B7: db   0,   0,  -1,   0

.prop
#_1CF8BB: db $20, $10, $30, $20

pool off

;---------------------------------------------------------------------------------------------------

Ancilla0D_SpinAttackFullChargeSpark_long:
#_1CF8BF: PHB
#_1CF8C0: PHK
#_1CF8C1: PLB

#_1CF8C2: LDA.w $0C68,X
#_1CF8C5: BNE .stay

#_1CF8C7: STZ.w $0C4A,X

#_1CF8CA: BRA .exit

;---------------------------------------------------------------------------------------------------

.stay
#_1CF8CC: LDA.b $2F
#_1CF8CE: LSR A
#_1CF8CF: TAY

#_1CF8D0: LDA.b $20
#_1CF8D2: CLC
#_1CF8D3: ADC.w .offset_y_low,Y
#_1CF8D6: STA.b $00

#_1CF8D8: LDA.b $21
#_1CF8DA: ADC.w .offset_y_high,Y
#_1CF8DD: STA.b $01

#_1CF8DF: LDA.b $22
#_1CF8E1: CLC
#_1CF8E2: ADC.w .offset_x_low,Y
#_1CF8E5: STA.b $02

#_1CF8E7: LDA.b $23
#_1CF8E9: ADC.w .offset_x_high,Y
#_1CF8EC: STA.b $03

#_1CF8EE: REP #$20

#_1CF8F0: LDA.b $00
#_1CF8F2: SEC
#_1CF8F3: SBC.b $E8
#_1CF8F5: STA.b $00

#_1CF8F7: LDA.b $02
#_1CF8F9: SEC
#_1CF8FA: SBC.b $E2
#_1CF8FC: STA.b $02

#_1CF8FE: SEP #$20

#_1CF900: LDY.w $0C7C,X

#_1CF903: LDA.w .prop,Y
#_1CF906: STA.b $65
#_1CF908: STZ.b $64

#_1CF90A: LDY.b #$00
#_1CF90C: JSL Ancilla_SetOAM_XY_long

#_1CF910: LDA.b #$D7
#_1CF912: STA.b ($90),Y

#_1CF914: INY

#_1CF915: LDA.b #$02
#_1CF917: ORA.b $65
#_1CF919: STA.b ($90),Y

#_1CF91B: LDA.b #$00
#_1CF91D: STA.b ($92)

.exit
#_1CF91F: PLB

#_1CF920: RTL

;===================================================================================================

pool AncillaSpawn_SwordChargeSparkle

.offset_y
#_1CF921: dw   5,  12,   8,   8

.offset_x
#_1CF929: dw   0,   3,   4,   5

.mask_y
#_1CF931: db $00, $00, $07, $07

.mask_x
#_1CF935: db $70, $70, $00, $00

pool off

;---------------------------------------------------------------------------------------------------

AncillaSpawn_SwordChargeSparkle:
#_1CF939: PHB
#_1CF93A: PHK
#_1CF93B: PLB

#_1CF93C: LDX.b #$09

.next_slot
#_1CF93E: LDA.w $0C4A,X
#_1CF941: BEQ .free_slot

#_1CF943: DEX
#_1CF944: BPL .next_slot

#_1CF946: BRL .exit

;---------------------------------------------------------------------------------------------------

.free_slot
#_1CF949: LDA.b #!ANCILLA_3C
#_1CF94B: STA.w $0C4A,X

#_1CF94E: STZ.w $0C5E,X

#_1CF951: LDA.b #$04
#_1CF953: STA.w $0C68,X

#_1CF956: LDA.b $EE
#_1CF958: STA.w $0C7C,X

#_1CF95B: STZ.b $74
#_1CF95D: STZ.b $75

#_1CF95F: LDA.b $2F
#_1CF961: LSR A
#_1CF962: TAY

#_1CF963: LDA.w .mask_y,Y
#_1CF966: BNE .off_axis_y

#_1CF968: LDA.w $0079
#_1CF96B: LSR A
#_1CF96C: LSR A

#_1CF96D: CPY.b #$00
#_1CF96F: BNE .correct_sign_y

#_1CF971: EOR.b #$FF
#_1CF973: INC A

.correct_sign_y
#_1CF974: STA.b $74

#_1CF976: LDA.b #$00

.off_axis_y
#_1CF978: STA.b $72

#_1CF97A: LDA.w .mask_x,Y
#_1CF97D: BNE .off_axis_x

#_1CF97F: LDA.w $0079
#_1CF982: LSR A
#_1CF983: LSR A

#_1CF984: CPY.b #$02
#_1CF986: BNE .correct_sign_x

#_1CF988: EOR.b #$FF
#_1CF98A: INC A

.correct_sign_x
#_1CF98B: STA.b $75

#_1CF98D: LDA.b #$00

.off_axis_x
#_1CF98F: STA.b $73

;---------------------------------------------------------------------------------------------------

#_1CF991: JSL GetRandomNumber
#_1CF995: STA.b $08

#_1CF997: AND.b $72
#_1CF999: STA.b $04
#_1CF99B: STZ.b $05

#_1CF99D: LDA.b $08
#_1CF99F: AND.b $73
#_1CF9A1: LSR A
#_1CF9A2: LSR A
#_1CF9A3: LSR A
#_1CF9A4: LSR A
#_1CF9A5: STA.b $06
#_1CF9A7: STZ.b $07

;---------------------------------------------------------------------------------------------------

#_1CF9A9: LDY.b $2F

#_1CF9AB: REP #$20

#_1CF9AD: LDA.b $74
#_1CF9AF: AND.w #$00FF
#_1CF9B2: CMP.w #$0080
#_1CF9B5: BCC .positive_y

#_1CF9B7: ORA.w #$FF00

.positive_y
#_1CF9BA: CLC
#_1CF9BB: ADC.b $20

#_1CF9BD: CLC
#_1CF9BE: ADC.w .offset_y,Y

#_1CF9C1: CLC
#_1CF9C2: ADC.b $04
#_1CF9C4: STA.b $00

;---------------------------------------------------------------------------------------------------

#_1CF9C6: LDA.b $75
#_1CF9C8: AND.w #$00FF
#_1CF9CB: CMP.w #$0080
#_1CF9CE: BCC .positive_x

#_1CF9D0: ORA.w #$FF00

.positive_x
#_1CF9D3: CLC
#_1CF9D4: ADC.b $22

#_1CF9D6: CLC
#_1CF9D7: ADC.w .offset_x,Y

#_1CF9DA: CLC
#_1CF9DB: ADC.b $06
#_1CF9DD: STA.b $02

#_1CF9DF: SEP #$20

#_1CF9E1: LDA.b $00
#_1CF9E3: STA.w $0BFA,X

#_1CF9E6: LDA.b $01
#_1CF9E8: STA.w $0C0E,X

#_1CF9EB: LDA.b $02
#_1CF9ED: STA.w $0C04,X

#_1CF9F0: LDA.b $03
#_1CF9F2: STA.w $0C18,X

.exit
#_1CF9F5: PLB

#_1CF9F6: RTL

;===================================================================================================

SwordBeam_Move_X:
#_1CF9F7: TXA
#_1CF9F8: CLC
#_1CF9F9: ADC.b #$0A
#_1CF9FB: TAX

#_1CF9FC: JSR SwordBeam_Move_Y

#_1CF9FF: LDX.w $0FA0

#_1CFA02: RTS

;===================================================================================================

SwordBeam_Move_Y:
#_1CFA03: LDA.w $0C22,X
#_1CFA06: ASL A
#_1CFA07: ASL A
#_1CFA08: ASL A
#_1CFA09: ASL A
#_1CFA0A: CLC
#_1CFA0B: ADC.w $0C36,X
#_1CFA0E: STA.w $0C36,X

#_1CFA11: LDY.b #$00

#_1CFA13: LDA.w $0C22,X
#_1CFA16: PHP

#_1CFA17: LSR A
#_1CFA18: LSR A
#_1CFA19: LSR A
#_1CFA1A: LSR A

#_1CFA1B: PLP
#_1CFA1C: BPL .positive_velocity

#_1CFA1E: ORA.b #$F0

#_1CFA20: DEY

.positive_velocity
#_1CFA21: ADC.w $0BFA,X
#_1CFA24: STA.w $0BFA,X

#_1CFA27: TYA
#_1CFA28: ADC.w $0C0E,X
#_1CFA2B: STA.w $0C0E,X

#_1CFA2E: RTS

;===================================================================================================

PrepareToDie:
#_1CFA2F: PHB
#_1CFA30: PHK
#_1CFA31: PLB

#_1CFA32: LDA.b #$02
#_1CFA34: STA.b $2F

#_1CFA36: LDA.b #$01
#_1CFA38: STA.w $036B

#_1CFA3B: STZ.w $030D
#_1CFA3E: STZ.w $030A

#_1CFA41: LDA.b #$05
#_1CFA43: STA.w $030B

#_1CFA46: LDA.b #$00
#_1CFA48: STA.l $7EF372
#_1CFA4C: STA.l $7EF36D

#_1CFA50: JSL Link_ResetProperties_C

#_1CFA54: STZ.w $02F5
#_1CFA57: STZ.w $0351
#_1CFA5A: STZ.w $02E0

#_1CFA5D: STZ.b $48
#_1CFA5F: STZ.w $02EC

#_1CFA62: STZ.b $4D
#_1CFA64: STZ.b $46

#_1CFA66: STZ.w $0373
#_1CFA69: STZ.w $02E1

#_1CFA6C: STZ.b $5E
#_1CFA6E: STZ.w $03F7

#_1CFA71: LDA.l $7EF357
#_1CFA75: BEQ .no_pearl

#_1CFA77: STZ.b $56

.no_pearl
#_1CFA79: STZ.w $03F5
#_1CFA7C: STZ.w $03F6

#_1CFA7F: JSL Link_CalculateSFXPan
#_1CFA83: ORA.b #!SFX2_27
#_1CFA85: STA.w $012E

#_1CFA88: LDA.b #$06
#_1CFA8A: CMP.l $7EF35C
#_1CFA8E: BEQ .fairy

#_1CFA90: CMP.l $7EF35D
#_1CFA94: BEQ .fairy

#_1CFA96: CMP.l $7EF35E
#_1CFA9A: BEQ .fairy

#_1CFA9C: CMP.l $7EF35F
#_1CFAA0: BEQ .fairy

#_1CFAA2: STZ.w $05FC
#_1CFAA5: STZ.w $05FD

.fairy
#_1CFAA8: PLB

#_1CFAA9: RTL

;===================================================================================================
; Sets receive items to finish as soon as possible
;===================================================================================================
RushToTerminateReceiveItem:
#_1CFAAA: PHX

#_1CFAAB: LDX.b #$04

.next_slot
#_1CFAAD: LDA.w $0C4A,X
#_1CFAB0: CMP.b #!ANCILLA_22
#_1CFAB2: BNE .not_receive_item

#_1CFAB4: LDA.b #$01
#_1CFAB6: STA.w $03B1,X

.not_receive_item
#_1CFAB9: DEX
#_1CFABA: BPL .next_slot

#_1CFABC: PLX

#_1CFABD: RTL

;===================================================================================================

DashTremor_Twiddle:
#_1CFABE: LDY.w $0C72,X

#_1CFAC1: LDA.w $0BFA,X
#_1CFAC4: STA.b $00

#_1CFAC6: LDA.w $0C0E,X
#_1CFAC9: STA.b $01

#_1CFACB: REP #$20

#_1CFACD: LDA.b $00
#_1CFACF: EOR.w #$FFFF
#_1CFAD2: INC A
#_1CFAD3: STA.b $00

#_1CFAD5: SEP #$20

#_1CFAD7: LDA.b $00
#_1CFAD9: STA.w $0BFA,X

#_1CFADC: LDA.b $01
#_1CFADE: STA.w $0C0E,X

;---------------------------------------------------------------------------------------------------

; Skip when indoors
#_1CFAE1: LDA.b $1B
#_1CFAE3: BNE .exit

#_1CFAE5: CPY.b #$02
#_1CFAE7: BNE .horizontal

#_1CFAE9: REP #$20

#_1CFAEB: LDA.w $0600
#_1CFAEE: CLC
#_1CFAEF: ADC.w #$0001
#_1CFAF2: STA.b $02

#_1CFAF4: LDA.w $0602
#_1CFAF7: CLC
#_1CFAF8: ADC.w #$FFFF
#_1CFAFB: STA.b $04

#_1CFAFD: LDA.b $00
#_1CFAFF: CLC
#_1CFB00: ADC.b $E8
#_1CFB02: CMP.b $02
#_1CFB04: BEQ .vertical_zero
#_1CFB06: BCC .vertical_zero

#_1CFB08: CMP.b $04
#_1CFB0A: BEQ .vertical_zero
#_1CFB0C: BCC .exit

.vertical_zero
#_1CFB0E: BRA .zero

;---------------------------------------------------------------------------------------------------

.horizontal
#_1CFB10: REP #$20

#_1CFB12: LDA.w $0604
#_1CFB15: CLC
#_1CFB16: ADC.w #$0001
#_1CFB19: STA.b $02

#_1CFB1B: LDA.w $0606
#_1CFB1E: CLC
#_1CFB1F: ADC.w #$FFFF
#_1CFB22: STA.b $04

#_1CFB24: LDA.b $00
#_1CFB26: CLC
#_1CFB27: ADC.b $E2
#_1CFB29: CMP.b $02
#_1CFB2B: BEQ .zero
#_1CFB2D: BCC .zero

#_1CFB2F: CMP.b $04
#_1CFB31: BEQ .zero
#_1CFB33: BCC .exit

.zero
#_1CFB35: STZ.b $00

.exit
#_1CFB37: SEP #$20

#_1CFB39: RTL

;===================================================================================================

BombosBlastRandomPosition:
#_1CFB3A: db $B6, $5D, $A1, $30, $69, $B5, $A3, $24
#_1CFB42: db $96, $AC, $73, $5F, $92, $48, $52, $81
#_1CFB4A: db $39, $95, $7F, $20, $88, $5D, $34, $98
#_1CFB52: db $BC, $D2, $51, $77, $A2, $47, $94, $B2
#_1CFB5A: db $34, $DA, $30, $62, $9F, $76, $51, $46
#_1CFB62: db $98, $5C, $9B, $61, $58, $95, $4C, $BA
#_1CFB6A: db $7E, $CB, $12, $D0, $70, $A6, $46, $BF
#_1CFB72: db $40, $50, $7E, $8C, $2D, $61, $AC, $88
#_1CFB7A: db $20, $6A, $72, $5F, $D2, $28, $52, $80

;===================================================================================================

pool Ancilla_GetRadialProjection

.multiplier_x
#_1CFB82: db $00, $19, $31, $4A, $61, $78, $8E, $A2
#_1CFB8A: db $B5, $C5, $D4, $E1, $EC, $F4, $FB, $FE
#_1CFB92: db $FF, $FE, $FB, $F4, $EC, $E1, $D4, $C5
#_1CFB9A: db $B5, $A2, $8E, $78, $61, $4A, $31, $19
#_1CFBA2: db $00, $19, $31, $4A, $61, $78, $8E, $A2
#_1CFBAA: db $B5, $C5, $D4, $E1, $EC, $F4, $FB, $FE
#_1CFBB2: db $FF, $FE, $FB, $F4, $EC, $E1, $D4, $C5
#_1CFBBA: db $B5, $A2, $8E, $78, $61, $4A, $31, $19

.multiplier_y
#_1CFBC2: db $FF, $FE, $FB, $F4, $EC, $E1, $D4, $C5
#_1CFBCA: db $B5, $A2, $8E, $78, $61, $4A, $31, $19
#_1CFBD2: db $00, $19, $31, $4A, $61, $78, $8E, $A2
#_1CFBDA: db $B5, $C5, $D4, $E1, $EC, $F4, $FB, $FE
#_1CFBE2: db $FF, $FE, $FB, $F4, $EC, $E1, $D4, $C5
#_1CFBEA: db $B5, $A2, $8E, $78, $61, $4A, $31, $19
#_1CFBF2: db $00, $19, $31, $4A, $61, $78, $8E, $A2
#_1CFBFA: db $B5, $C5, $D4, $E1, $EC, $F4, $FB, $FE

.meta_sign_y
#_1CFC02: db $01, $01, $01, $01, $01, $01, $01, $01
#_1CFC0A: db $01, $01, $01, $01, $01, $01, $01, $01
#_1CFC12: db $00, $00, $00, $00, $00, $00, $00, $00
#_1CFC1A: db $00, $00, $00, $00, $00, $00, $00, $00
#_1CFC22: db $00, $00, $00, $00, $00, $00, $00, $00
#_1CFC2A: db $00, $00, $00, $00, $00, $00, $00, $00
#_1CFC32: db $01, $01, $01, $01, $01, $01, $01, $01
#_1CFC3A: db $01, $01, $01, $01, $01, $01, $01, $01

.meta_sign_x
#_1CFC42: db $00, $00, $00, $00, $00, $00, $00, $00
#_1CFC4A: db $00, $00, $00, $00, $00, $00, $00, $00
#_1CFC52: db $00, $00, $00, $00, $00, $00, $00, $00
#_1CFC5A: db $00, $00, $00, $00, $00, $00, $00, $00
#_1CFC62: db $00, $01, $01, $01, $01, $01, $01, $01
#_1CFC6A: db $01, $01, $01, $01, $01, $01, $01, $01
#_1CFC72: db $01, $01, $01, $01, $01, $01, $01, $01
#_1CFC7A: db $01, $01, $01, $01, $01, $01, $01, $01

pool off

;===================================================================================================

SomariaBlockFission:
.offset_y
#_1CFC82: dw -10, -10,   2,   2,  -8,   0,  -8,   0
#_1CFC92: dw -12, -12,   4,   4,  -8,   0,  -8,   0

.offset_x
#_1CFCA2: dw  -8,   0,  -8,   0, -10, -10,   2,   2
#_1CFCB2: dw  -8,   0,  -8,   0, -12, -12,   4,   4

.char
#_1CFCC2: db $C6, $C6, $C6, $C6, $C4, $C4, $C4, $C4
#_1CFCCA: db $D2, $D2, $D2, $D2, $C5, $C5, $C5, $C5

.prop
#_1CFCD2: db $C6, $86, $46, $06, $46, $C6, $06, $86
#_1CFCDA: db $C6, $86, $46, $06, $46, $C6, $06, $86

;===================================================================================================

Link_CheckIfBunny:
; Why is recoil even checked for?
#_1CFCE2: LDA.b $5D
#_1CFCE4: CMP.b #!LINKSTATE_02
#_1CFCE6: BNE .exit

; This is where Lonk happens.
; That should be LDA.w $02E0.
; Someone messed up.
#_1CFCE8: LDY.b #!LINKSTATE_00

#_1CFCEA: LDA.b $E0
#_1CFCEC: BEQ .set

; Check for pearl
#_1CFCEE: LDY.b #!LINKSTATE_17

#_1CFCF0: LDA.l $7EF357
#_1CFCF4: BEQ .set

; Temp bunny
#_1CFCF6: LDY.b #!LINKSTATE_1C

.set
#_1CFCF8: STY.b $5D

.exit
#_1CFCFA: RTL

;===================================================================================================
; Only deletes them on the Waterfall of Wishing overworld screen
;===================================================================================================
Ancilla_DeleteWaterfallSplashes:
#_1CFCFB: LDA.b $8A
#_1CFCFD: CMP.b #$0F
#_1CFCFF: BNE .not_waterfall

#_1CFD01: LDX.b #$04

.next_slot
#_1CFD03: LDA.w $0C4A,X
#_1CFD06: CMP.b #!ANCILLA_41
#_1CFD08: BNE .not_water

#_1CFD0A: STZ.w $0C4A,X

.not_water
#_1CFD0D: DEX
#_1CFD0E: BPL .next_slot

.not_waterfall
#_1CFD10: RTL

;===================================================================================================

Ancilla_TerminateOffScreen:
#_1CFD11: LDA.w $0BFA,Y
#_1CFD14: STA.b $0C

#_1CFD16: LDA.w $0C0E,Y
#_1CFD19: STA.b $0D

#_1CFD1B: LDA.w $0C04,Y
#_1CFD1E: STA.b $0E

#_1CFD20: LDA.w $0C18,Y
#_1CFD23: STA.b $0F

#_1CFD25: REP #$20

#_1CFD27: LDA.b $0C
#_1CFD29: SEC
#_1CFD2A: SBC.b $E8
#_1CFD2C: CMP.w #$00F0
#_1CFD2F: BCS .terminate

#_1CFD31: LDA.b $0E
#_1CFD33: SEC
#_1CFD34: SBC.b $E2
#_1CFD36: CMP.w #$00F4
#_1CFD39: BCC .on_screen

.terminate
#_1CFD3B: SEP #$20

#_1CFD3D: LDA.b #$00
#_1CFD3F: STA.w $0C4A,Y

.on_screen
#_1CFD42: SEP #$20

#_1CFD44: RTL

;===================================================================================================

DeleteBoomAndByrnaSparks:
#_1CFD45: PHX

#_1CFD46: STA.w $03FC

#_1CFD49: JSL Link_ResetProperties_C

#_1CFD4D: LDX.b #$04

.next_slot
#_1CFD4F: LDA.w $0C4A,X

; Byrna spark dies
#_1CFD52: CMP.b #!ANCILLA_30
#_1CFD54: BEQ .delete

; Other byrna spark dies
#_1CFD56: CMP.b #!ANCILLA_31
#_1CFD58: BEQ .delete

; Boomerang dies
#_1CFD5A: CMP.b #!ANCILLA_05
#_1CFD5C: BNE .keep

#_1CFD5E: STZ.w $035F

.delete
#_1CFD61: STZ.w $0C4A,X

.keep
#_1CFD64: DEX
#_1CFD65: BPL .next_slot

#_1CFD67: PLX

#_1CFD68: RTL

;===================================================================================================

Interface_PrepAndDisplayMessage:
#_1CFD69: LDA.b $10
#_1CFD6B: CMP.b #$0E
#_1CFD6D: BEQ .exit

#_1CFD6F: STZ.w $0223
#_1CFD72: STZ.w $1CD8

#_1CFD75: LDA.b #$02
#_1CFD77: STA.b $11

#_1CFD79: LDA.b $10
#_1CFD7B: STA.w $010C

#_1CFD7E: LDA.b #$0E
#_1CFD80: STA.b $10

.exit
#_1CFD82: RTL

;===================================================================================================

AncillaAdd_SwordChargeSparkle_preserveX:
#_1CFD83: PHB
#_1CFD84: PHK
#_1CFD85: PLB

#_1CFD86: PHX
#_1CFD87: JSL AncillaAdd_SwordChargeSparkle
#_1CFD8B: PLX

#_1CFD8C: PLB

#_1CFD8D: RTL

;===================================================================================================
; FREE ROM: 0x272
;===================================================================================================
NULL_1CFD8E:
#_1CFD8E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFD96: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFD9E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFDA6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFDAE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFDB6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFDBE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFDC6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFDCE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFDD6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFDDE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFDE6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFDEE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFDF6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFDFE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE06: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE0E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE16: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE1E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE26: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE2E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE36: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE3E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE46: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE4E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE56: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE5E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE66: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE6E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE76: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE7E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE86: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE8E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE96: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFE9E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFEA6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFEAE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFEB6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFEBE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFEC6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFECE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFED6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFEDE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFEE6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFEEE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFEF6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFEFE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF06: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF0E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF16: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF1E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF26: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF2E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF36: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF3E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF46: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF4E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF56: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF5E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF66: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF6E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF76: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF7E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF86: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF8E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF96: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFF9E: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFFA6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFFAE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFFB6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFFBE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFFC6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFFCE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFFD6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFFDE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFFE6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFFEE: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFFF6: db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
#_1CFFFE: db $FF, $FF

.psx
.open "ins\CHAP1\WORLD3.DLR",0x800B7B78

.org 0x800C7744
	;結局、ジョーカは\nどこにいるのかしら
	;Where could Joka be?
	addiu v0, v1, 0x20

.org 0x800BCA70
	;しょうがないわ\nピアにちゃんと伝えよう
	;That's too bad.\nWe should tell Pia.
	addiu a0, v0, 0x20 ; This is actually 0x23 but it loads 0x08 after its done the loop

.org 0x800BC9A0
	;ムッシューの店には\nビロードの布しかなかった。
	;Monsiuer's store\nonly had velvet.
	addiu v0, a0, 0x30

.org 0x800BC9F8
	;ムッシューの店には\nビロードの布しかなかった。
	;Monsiuer's store\nonly had velvet.
	addiu v0, a0, 0x30

.org 0x800C2508
	;ズーから初めて\n管理人室の存在を聞いた。
	;Zoo told Addie about\nthe conductor's hall.
	addiu v0, a0, 0x30

.org 0x800C2560
	;ズーから初めて\n管理人室の存在を聞いた。
	;Zoo told Addie about\nthe conductor's hall.
	addiu v0, a0, 0x30

.org 0x800C646C
	;ズーに報告を終え\n結局ふりだしに戻った。
	;After speaking to Zoo,\nAddie retraced her steps.
	addiu v0, a0, 0x40

.org 0x800C6864
	;ズーに報告を終え\n結局ふりだしに戻った。
	;After speaking to Zoo,\nAddie retraced her steps.
	addiu v0, a0, 0x40

.org 0x800C7694
	;ズーに報告するも\n途方に暮れるアディ。
	;After reporting to Zoo,\nAddie felt lost.
	addiu v0, a0, 0x30

.org 0x800C76EC
	;ズーに報告するも\n途方に暮れるアディ。
	;After reporting to Zoo,\nAddie felt lost.
	addiu v0, a0, 0x30

.close

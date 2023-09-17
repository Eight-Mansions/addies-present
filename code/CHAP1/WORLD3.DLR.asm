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

.close

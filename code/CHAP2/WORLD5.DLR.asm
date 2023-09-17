.psx
.open "ins\CHAP2\WORLD5.DLR",0x800B7B78


.org 0x800BFCD0
	;ボタンを探しに\nランドリーに行くことに。
	;Check the laundromat\nfor some buttons.
	addiu v0, v1, 0x30

.org 0x800BFD28
	;MISSING
	addiu v0, v1, 0x30

.org 0x800C0D50
	;うーん、いくつなおせば\n演奏ができるのかしら
	;The instruments we fix\nwill affect the band's music.
	addiu v0, v1, 0x40

.close

.psx
.open "ins\CHAP2\WORLD5.DLR",0x800B7B78


.org 0x800BFCD0
	;ボタンを探しに\nランドリーに行くことに。
	;Check the laundromat\nfor some buttons.
	addiu v0, v1, 0x30

.org 0x800BFD28
	;ボタンを探しに\nランドリーに行くことに。
	;Check the laundromat\nfor some buttons.
	addiu v0, v1, 0x30

.org 0x800C0D50
	;うーん、いくつなおせば\n演奏ができるのかしら
	;The instruments we fix\nwill affect the band's music.
	addiu v0, v1, 0x30 ; Line is 0x35 long but there is a 0x12 byte load after the loop

.org 0x800BC980
	;ピアの仕立屋って\nいったいどこかしら
	;Where is Pia's\ntailor shop?
	addiu a0, v0, 0x20

.org 0x800BD81C
	;ズーの家の方に\n逃げていったみたいよ！
	;It looks like he ran\ntowards Zoo's house!
	addiu a0, v0, 0x30

.org 0x800BFD88
	;あそこなら、ボタンくらい\nあるはずよね
	;Those kids might\nbe able to help.
	addiu a0, v0, 0x30

.org 0x800C19D4
	;とにかく、これで\n図書館へ入れるわね
	;This way, you can get\ninto the library.
	addiu a0, v0, 0x30

.org 0x800C2110
	;うーん、いくつなおせば\n演奏ができるのかしら
	;The instruments we fix\nwill affect the band's music.
	addiu a0, v0, 0x30 ; Line is 0x35 long but there is a 0x12 byte load after the loop

.close

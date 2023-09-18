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

.org 0x800BC8C8
	;バーに行くと\nマスターに用事を頼まれる。
	;Upon entering the bar,\nthe barkeep had a favor.
	addiu v0, a0, 0x30

.org 0x800BC920
	;バーに行くと\nマスターに用事を頼まれる。
	;Upon entering the bar,\nthe barkeep had a favor.
	addiu v0, a0, 0x30

.org 0x800C0C90
	;おかしなものに変わった\n楽器を直すことに。
	;Can I return the\ninstruments to normal?
	addiu v0, a0, 0x30

.org 0x800C0CE8
	;おかしなものに変わった\n楽器を直すことに。
	;Can I return the\ninstruments to normal?
	addiu v0, a0, 0x30

.org 0x800C1904
	;アディはイライザと一緒に\n図書館へ行くことに。
	;Addie went with Eliza\nto the library.
	addiu v0, a0, 0x30

.org 0x800C195C
	;アディはイライザと一緒に\n図書館へ行くことに。
	;Addie went with Eliza\nto the library.
	addiu v0, a0, 0x30

.org 0x800C2050
	;おかしなものに変わった\n楽器を直すことに。
	;Can I return the\ninstruments to normal?
	addiu v0, a0, 0x30

.org 0x800C20A8
	;おかしなものに変わった\n楽器を直すことに。
	;Can I return the\ninstruments to normal?
	addiu v0, a0, 0x30

.close

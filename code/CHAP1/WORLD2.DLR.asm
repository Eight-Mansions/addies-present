.psx
.open "ins\CHAP1\WORLD2.DLR",0x800B7B78

.org 0x800BC520
	;ほんとうに、別人なのかしら？\n気持ち悪いぐらいよく似てるわ
	;Is he really not Moze?\nThey look so alike!
	addiu a0, v0, 0x30

.org 0x800BC488
	;モーゼによく似た少年、\nジョーカと出会うアディ。
	;And so, Addie met Joka,\na boy much like Moze.
	addiu v0, a0, 0x30

.org 0x800BC4E0
	;モーゼによく似た少年、\nジョーカと出会うアディ。
	;And so, Addie met Joka,\na boy much like Moze.
	addiu v0, a0, 0x30

.org 0x800BC698
	;ログロックの不思議な力の\nおかげで案内人を得るアディ。
	;Thanks to the Loglock,\nAddie found a tour guide.
	addiu v0, a0, 0x30

.org 0x800BC6F0
	;ログロックの不思議な力の\nおかげで案内人を得るアディ。
	;Thanks to the Loglock,\nAddie found a tour guide.
	addiu v0, a0, 0x30

.close

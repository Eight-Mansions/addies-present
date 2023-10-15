.psx
.open "ins\CHAP3\WORLD2.DLR",0x800B7B78


.org 0x800BC094
	;図書館前で\nイライザと別れたアディ。
	;Addie followed Eliza\ninto the library.
	addiu v0, v1, 0x30

.org 0x800BC0EC
	;図書館前で\nイライザと別れたアディ。
	;Addie followed Eliza\ninto the library.
	addiu v0, v1, 0x30

.org 0x800BD794
	;変なところ…\nジョーカはどこかしら
	;Where could Joka\nbe hiding?
	addiu a0, v0, 0x20

.org 0x800BD6DC
	;広い図書館の中で\nいろんなものに出会う。
	;There's so much to\nexplore in the library.
	addiu v0, a0, 0x30

.org 0x800BD734
	;広い図書館の中で\nいろんなものに出会う。
	;There's so much to\nexplore in the library.
	addiu v0, a0, 0x30

.org 0x800BE0E4
	;図書館前で\nイライザと別れたアディ。
	;Addie followed Eliza\ninto the library.
	addiu v0, a0, 0x30

.org 0x800BE13C
	;図書館前で\nイライザと別れたアディ。
	;Addie followed Eliza\ninto the library.
	addiu v0, a0, 0x30

.org 0x800BB12C
	;ジョーカを追いかけたが\n図書館に入れないアディ。
	;Joka fled to the library,\nbut Addie needed a card.
	addiu v0, v1, 0x40

.org 0x800BB184
	;ジョーカを追いかけたが\n図書館に入れないアディ。
	;Joka fled to the library,\nbut Addie needed a card.
	addiu v0, v1, 0x40
	
.org 0x800BC140
	;あと少しでジョーカを\nつかまえられると思ったのに
	;I hope we find Joka soon.
	addiu a0, v0, 0x30

.org 0x800BE190
	;あと少しでジョーカを\nつかまえられると思ったのに
	;I hope we find Joka soon.
	addiu a0, v0, 0x30

.close

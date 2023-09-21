.psx
.open "ins\CHAP2\WORLD6.DLR",0x800B7B78


.org 0x800B8DF0
	;しばらくして\nピアのところへ戻ったアディ。
	;After much walking,\nAddie returned to Pia.
	addiu v0, v1, 0x30

.org 0x800B8E48
	;しばらくして\nピアのところへ戻ったアディ。
	;After much walking,\nAddie returned to Pia.
	addiu v0, v1, 0x30

.org 0x800B9220
	;服の材料がなくて\nどうしようもない。
	;I can't work\nwithout materials.
	addiu v0, v1, 0x20

.org 0x800B9278
	;服の材料がなくて\nどうしようもない。
	;I can't work\nwithout materials.
	addiu v0, v1, 0x20

.org 0x800B9548
	;服を作るために\nあとボタンが必要だ。
	;I need more buttons\nfor Pia's commission.
	addiu v0, v1, 0x30

.org 0x800B95A0
	;;服を作るために\nあとボタンが必要だ。
	;I need more buttons\nfor Pia's commission.
	addiu v0, v1, 0x30

.org 0x800B8B40
	;街の外にあるのが\nムッシューの店ね
	;Monsieur's shop is\nright outside town.
	addiu a0, v0, 0x30

.org 0x800B95F4
	;もう、マスターのところくらい\n自分で行けばいいのに
	;Maybe the barkeeper\ncan help.
	addiu a0, v0, 0x30

.org 0x800BB060
	;完成した服を持って\nバーへ向かうアディ。
	;With clothes in hand,\nAddie left for the bar.
	addiu v0, a0, 0x30

.org 0x800BB0B8
	;完成した服を持って\nバーへ向かうアディ。
	;With clothes in hand,\nAddie left for the bar.
	addiu v0, a0, 0x30

.org 0x800B95F4
	;もう、マスターのところくらい\n自分で行けばいいのに
	;Maybe the barkeeper\ncan help.
	addiu a0, v0, 0x30

.close

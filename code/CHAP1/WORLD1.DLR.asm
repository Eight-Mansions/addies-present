.psx
.open "ins\CHAP1\WORLD1.DLR",0x800B7B78

.org 0x800BCCE4
	;目を覚ましたアディ。\nそこは見慣れない風景。
	;Addie woke up\nin a strange place.
	addiu v0, v1, 0x30

.org 0x800BCD3C
	;目を覚ましたアディ。\nそこは見慣れない風景。
	;Addie woke up\nin a strange place.
	addiu v0, v1, 0x30

.org 0x800C6D40
	;あの人、\nなんで閉じこめられてるのかしら
	;How'd he get in there?
	addiu a0, v0, 0x20

.org 0x800C2208
	;さっきの女の子、たしかに\nエミィだったと思うんだけど…
	;Could that girl I just\nsaw truly be Emmy?
	addiu a0, v0, 0x30

.org 0x800BCF60
	;導かれるままに\n始まりの墓を訪れたアディ。
	;As if led by her hand,\nAddie found a tomb.
	addiu v0, a0, 0x30

.org 0x800BCFB8
	;導かれるままに\n始まりの墓を訪れたアディ。
	;As if led by her hand,\nAddie found a tomb.
	addiu v0, a0, 0x30

.org 0x800C2164
	;エミィに似た少女が現れる。\nその少女を追うアディ。
	;Addie followed a most\nfamiliar girl.
	addiu v0, a0, 0x30

.org 0x800C21BC
	;エミィに似た少女が現れる。\nその少女を追うアディ。
	;Addie followed a most\nfamiliar girl.
	addiu v0, a0, 0x30
	
.org 0x800C2208
	;さっきの女の子、たしかに\nエミィだったと思うんだけど…
	;Could that girl I just\nsaw truly be Emmy?
	addiu a0, v0, 0x30

.close

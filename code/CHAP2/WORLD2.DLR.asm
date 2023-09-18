.psx
.open "ins\CHAP2\WORLD2.DLR",0x800B7B78

.org 0x800CC694
	;奇妙な２人組に\n呼び止められたアディ。
	;Addie was stopped\nby a strange duo.
	addiu v0, v1, 0x20 ; Line is 0x24 but it has an extra load after for 0x08 more bytes

.org 0x800CC6EC
	;奇妙な２人組に\n呼び止められたアディ。
	;Addie was stopped\nby a strange duo.
	addiu v0, v1, 0x20 ; Line is 0x24 but it has an extra load after for 0x08 more bytes

.org 0x800BC150
	;急いで川のそばを探せば\nジョーカを捕まえられるわ！
	;If we search near water,\nwe might find him!
	addiu a0, v0, 0x30

.org 0x800C0A1C
	;ランドリーの方に行ったのは\n間違いないみたいだけど…
	;But I swore he was\nheaded their way...
	addiu a0, v0, 0x30

.close

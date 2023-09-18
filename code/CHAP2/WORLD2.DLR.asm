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

.close

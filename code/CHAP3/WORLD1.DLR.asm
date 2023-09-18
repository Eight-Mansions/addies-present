.psx
.open "ins\CHAP3\WORLD1.DLR",0x800B7B78

.org 0x800C503C
	;ランドリーの方は\nどうなってるかな…
	;Maybe the laundromat?
	addiu a0, v0, 0x20

.org 0x800C4FA4
	;イライザと別れたアディ。\nこれからどうしようか。
	;Addie left Eliza behind.\nWhere will she go next?
	addiu v0, a0, 0x40

.org 0x800C4FFC
	;イライザと別れたアディ。\nこれからどうしようか。
	;Addie left Eliza behind.\nWhere will she go next?
	addiu v0, a0, 0x40

.close

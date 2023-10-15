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

.org 0x800cb928
	;ジョーカの妹だなんて、\nますますエミィそっくり！
	;Funnily enough, she's also\nJoka's little sister!
	addiu a0, v0, 0x40

.org 0x800c9b68
	addiu a0, sp, 0xb6
	
.org 0x800c9bb0
	;魚
	;Fish
    lw t0, 0x0(t3)
    lb t1, 0x4(t3)
    lb t2, 0x5(t3)
    sw t0, 0xb0(sp)
    sb t1, 0xb4(sp)
    sb t2, 0xb5(sp)

.close

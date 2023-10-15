.psx
.open "ins\CHAP3\WORLD5.DLR",0x800B7B78


.org 0x800BB864
	;イライザに美術館を\n案内してもらうアディ。
	;Addie followed Eliza\nthrough the museum.
	addiu v0, v1, 0x30

.org 0x800BB8BC
	;イライザに美術館を\n案内してもらうアディ。
	;Addie followed Eliza\nthrough the museum.
	addiu v0, v1, 0x30

.org 0x800C30B0
	;ジョーカを探すことを条件に、\nズーはアディを解放する。
	;In exchange for her help,\nZoo let Addie go.
	addiu v0, a0, 0x30

.org 0x800C3108
	;ジョーカを探すことを条件に、\nズーはアディを解放する。
	;In exchange for her help,\nZoo let Addie go.
	addiu v0, a0, 0x30

.org 0x800BB924
	;ちょっと強引なところも\nエミィに似てる気がするわ
	;Eliza and Emmy are so pushy!
	addiu a0, v0, 0x30
	
.org 0x800c267c
	addiu a0, sp, 0xA4


.org 0x800c26a8
	;柵
	;Stile
	lw t0, 0x0(t3)
	lw t1, 0x4(t3)
	lw t2, 0x8(t3)
	sw t0, 0x9C(sp)
	sw t1, 0xA0(sp)
	sw t2, 0xA4(sp)
	
	
.close

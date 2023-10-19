.psx
.open "ins\CHAP1\WORLD5.DLR",0x800B7B78

.org 0x800C4704
	;ジョーカが自分を\n歯車にしてくれって…
	;Joka wants to be a gear.
	addiu a0, v0, 0x20

.org 0x800C464C
	;ジョーカは最深部で\nアディを待っていた。
	;Joka waited for Addie\nin the music box core.
	addiu v0, a0, 0x30

.org 0x800C46A4
	;ジョーカは最深部で\nアディを待っていた。
	;Joka waited for Addie\nin the music box core.
	addiu v0, a0, 0x30

.org 0x800bd32c
	;管理人室・ハシゴ
	;Conductor's Hall
	lw t3, 0x10(t6)
    nop
    sw t3, 0x10(t5)

.org 0x800bcc50
	;管理人室・ハシゴ
	;Conductor's Hall
	lw t2, 0xc(t4)
    sw t1, 0x8(t3)
    sw t2, 0xc(t3)
    lw t1, 0x10(t4)
    nop
    sw t1, 0x10(t3)


.close
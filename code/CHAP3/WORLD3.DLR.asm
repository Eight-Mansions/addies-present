.psx
.open "ins\CHAP3\WORLD3.DLR",0x800B7B78


.org 0x800C5458
	;ジョーカの足止めで\n先に進めないアディ。
	;Joka cut off\nAddie's progress.
	addiu v0, v1, 0x20

.org 0x800C708C
	;まだ、そう遠くへは\n行ってないはずだわ
	;I can't lose\nhim again!
	addiu v0, v1, 0x20

.org 0x800C78EC
	;まだ、そう遠くへは\n行ってないはずだわ
	;I can't lose\nhim again!
	addiu a0, v0, 0x20
	
.org 0x800cee24
	;本
	;Book
	lw t0, 0x0(t3)
	lw t1, 0x0(t3)
	lw t2, 0x0(t3)
	sw t0, 0xE4(sp)
	sw t1, 0xE8(sp)
	sw t2, 0xEC(sp)


.close

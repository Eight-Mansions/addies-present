.psx
.open "ins\CHAP2\WORLD1.DLR",0x800B7B78

.org 0x800D2F94
	;ジョーカがランドリーへ？\n何しに行ったのかしら
	;Why did Joka go\nto the laundromat?
	addiu a0, v0, 0x30

.org 0x800BCA28
	;ジョーカの案内で街を散策。\n観光気分のアディ。
	;Addie learned all about\nthe town through Joka.
	addiu v0, a0, 0x30

.org 0x800BCA80
	;ジョーカの案内で街を散策。\n観光気分のアディ。
	;Addie learned all about\nthe town through Joka.
	addiu v0, a0, 0x30

.org 0x800BE4EC
	;街へ戻った途端\nジョーカに出くわすアディ。
	;Addie ran into Joka\nupon her return.
	addiu v0, a0, 0x30

.org 0x800BE544
	;街へ戻った途端\nジョーカに出くわすアディ。
	;Addie ran into Joka\nupon her return.
	addiu v0, a0, 0x30

.org 0x800BEF44
	;デンの情報を頼りに\nバーへ向かうアディ。
	;With Den's trusty intel,\nAddie made for the bar.
	addiu v0, a0, 0x40

.org 0x800BEF9C
	;デンの情報を頼りに\nバーへ向かうアディ。
	;With Den's trusty intel,\nAddie made for the bar.
	addiu v0, a0, 0x40

.org 0x800C6754
	;マスターの話によれば\nイライザはバーの中に。
	;According to the barkeep,\nEliza's at the bar.
	addiu v0, a0, 0x30

.org 0x800C67AC
	;マスターの話によれば\nイライザはバーの中に。
	;According to the barkeep,\nEliza's at the bar.
	addiu v0, a0, 0x30

.org 0x800C7940
	;結局、バーに\nジョーカはいなかった。
	;In the end, Joka wasn't in the bar.
	addiu v0, a0, 0x30

.org 0x800C7998
	;結局、バーに\nジョーカはいなかった。
	;In the end, Joka wasn't in the bar.
	addiu v0, a0, 0x30

.org 0x800CBF6C
	;アディは不審な\n少年に尾行される。
	;Addie tailed\nthe suspicious boy.
	addiu v0, a0, 0x30

.org 0x800CBFC4
	;アディは不審な\n少年に尾行される。
	;Addie tailed\nthe suspicious boy.
	addiu v0, a0, 0x30

.org 0x800D2ED4
	;イライザと別れた後\nリノに出会ったアディ。
	;After leaving Eliza,\nAddie ran into Reno.
	addiu v0, a0, 0x30

.org 0x800D2F2C
	;イライザと別れた後\nリノに出会ったアディ。
	;After leaving Eliza,\nAddie ran into Reno.
	addiu v0, a0, 0x30
	
.org 0x800cb7e8
	;泉
	;Spring
	lw t0, 0x0(t3)
	lw t1, 0x4(t3)
	lw t2, 0x8(t3)
	sw t0, 0xB0(sp)
	sw t1, 0xB4(sp)
	sw t2, 0xB8(sp)

.org 0x800ceddc
	addiu a0,sp,0xb4

.org 0x800cee24
	;梅
	;Plum
	lw t0, 0x0(t3)
	lw t1, 0x4(t3)
	lw t2, 0x8(t3)
	sw t0, 0xB0(sp)
	sw t1, 0xB4(sp)
	sw t2, 0xB8(sp)
	
.org 0x800d014c
	;金
	;Gold
	lw t0, 0x0(t3)
	lw t1, 0x4(t3)
	lw t2, 0x8(t3)
	sw t0, 0x94(sp)
	sw t1, 0x98(sp)
	sw t2, 0x9C(sp)

.close

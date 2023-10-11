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

.org 0x800BBA04
	;アディは不審な\n少年に尾行される。
	;Addie tailed\nthe suspicious boy.
	addiu v0, a0, 0x30

.org 0x800BBA5C
	;アディは不審な\n少年に尾行される。
	;Addie tailed\nthe suspicious boy.
	addiu v0, a0, 0x30

.org 0x800C41CC
	;ジョーカからオルゴールの\n話を聞いたアディ。
	;Joka told Addie\nabout the music box.
	addiu v0, a0, 0x30

.org 0x800C4224
	;ジョーカからオルゴールの\n話を聞いたアディ。
	;Joka told Addie\nabout the music box.
	addiu v0, a0, 0x30

.org 0x800BC0A4
	;川に流されていくジョーカを\nアディは再び追いかける。
	;Addie followed Joka\ndown the river.
	addiu v0, a0, 0x30

.org 0x800BC0FC
	;川に流されていくジョーカを\nアディは再び追いかける。
	;Addie followed Joka\ndown the river.
	addiu v0, a0, 0x30

.org 0x800C0978
	;ジョーカなんて見かけていない\nと、ウィノは告げた。
	;Wino said he\nhadn't seen Joka.
	addiu v0, a0, 0x30

.org 0x800C09D0
	;ジョーカなんて見かけていない\nと、ウィノは告げた。
	;Wino said he\nhadn't seen Joka.
	addiu v0, a0, 0x30

.org 0x800C2448
	;ランドリーでボタンを手に入れ\n材料が全部そろった。
	;With that button,\nwe have all the materials.
	addiu v0, a0, 0x30

.org 0x800C24A0
	;ランドリーでボタンを手に入れ\n材料が全部そろった。
	;With that button,\nwe have all the materials.
	addiu v0, a0, 0x30

.org 0x800BC150
	;急いで川のそばを探せば\nジョーカを捕まえられるわ！
	;If we search near water,\nwe might find him!
	addiu a0, v0, 0x30

.org 0x800C0A1C
	;ランドリーの方に行ったのは\n間違いないみたいだけど…
	;But I swore he was\nheaded their way...
	addiu a0, v0, 0x30
	
.org 0x800c84e8
	;岬の先
	;Outskirts
    lw t4, 0x0(t7)
    lw t5, 0x4(t7)
    sw t4, 0x0(t6)
    sw t5, 0x4(t6)
    lw t4, 0x8(t7)
    nop
    sw t4, 0x8(t6)

.close

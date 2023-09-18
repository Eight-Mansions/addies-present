.psx
.open "ins\CHAP2\WORLD4.DLR",0x800B7B78

.org 0x800C2E28
	;あの子たちの力に\nなってあげられないかしら…
	;I wonder if I can\nhelp the Laundry Bros.
	addiu v0, v1, 0x20 ; Line is 0x29 but this has a 0x12 byte load after the loop

.org 0x800C340C
	;えーと…\nバーってどこだったかしら
	;Um... And just\nwhere is the bar?
	addiu a0, v0, 0x20 ; Line is 0x21 but this has a 0x04 byte load after the loop

.org 0x800C21BC
	;たのみごと聞いたら\nちゃんと教えてくれるのかしら…
	;If I do as he asks,\nmaybe he'll talk...
	addiu a0, v0, 0x30

.org 0x800BF428
	;ジョーカを探している\nジノと出会ったアディ。
	;Addie ran into Gino,\nwho was looking for Joka.
	addiu v0, a0, 0x30

.org 0x800BF480
	;ジョーカを探している\nジノと出会ったアディ。
	;Addie ran into Gino,\nwho was looking for Joka.
	addiu v0, a0, 0x30

.org 0x800C2D70
	;ようやく男から\n子供たちのことを聞いた。
	;He finally spilled the\nbeans on the kids.
	addiu v0, a0, 0x30

.org 0x800C2DC8
	;ようやく男から\n子供たちのことを聞いた。
	;He finally spilled the\nbeans on the kids.
	addiu v0, a0, 0x30

.org 0x800C3344
	;老人からの情報を頼りに\nバーへ向かうことに。
	;That old man thinks I\nshould head to the bar.
	addiu v0, a0, 0x30

.org 0x800C339C
	;老人からの情報を頼りに\nバーへ向かうことに。
	;That old man thinks I\nshould head to the bar.
	addiu v0, a0, 0x30

.org 0x800CAF50
	;デンからの情報で\nイライザを探しにいくアディ。
	;After speaking to Den,\nAddie left to find Eliza.
	addiu v0, a0, 0x30 ; Line length is 0x31 and it loads another 16 bytes after

.org 0x800CAFA8
	;デンからの情報で\nイライザを探しにいくアディ。
	;After speaking to Den,\nAddie left to find Eliza.
	addiu v0, a0, 0x30 ; Line length is 0x31 and it loads another 16 bytes after

.close

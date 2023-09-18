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

.close

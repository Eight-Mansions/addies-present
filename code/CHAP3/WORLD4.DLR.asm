.psx
.open "ins\CHAP3\WORLD4.DLR",0x800B7B78


.org 0x800C21A8
	;バケットヘッドから\n話を聞いたアディ。
	;Addie spoke with\nMr. Buckethead.
	addiu v0, v1, 0x30

.org 0x800C2200
	;バケットヘッドから\n話を聞いたアディ。
	;Addie spoke with\nMr. Buckethead.
	addiu v0, v1, 0x30

.org 0x800C2258
	;お墓って…あたしが目覚めた\nあの場所のこと？
	;A tomb? In the place\nwhere I woke up?
	addiu v0, v1, 0x20 ; line is 0x26 long but loads 12 bytes after the loop
	
.org 0x800c3b38
	;館長室
	;Head Office
    lw t0 ,0x0(t3)
    lw t1 ,0x4(t3)
    sw t0 ,0x0(t2)
    sw t1, 0x4(t2)
    lw t0, 0x8(t3)
    nop          
    sw t0, 0x8(t2)
	
.org 0x800c1cc8
	;館長室・扉
	;Head Office
	lw t0, 0x0(t3)
    lw t1, 0x4(t3)
    sw t0, 0x0(t2)
    sw t1, 0x4(t2)
    lw t0, 0x8(t3)
    lw t1, 0xC(t3)
    sw t0, 0x8(t2)
    sw t1, 0xC(t2)
	
.org 0x800c0f40
	;館長室・前
	;Head Office
    lw t3,0x0(t6)
    lw t4,0x4(t6)
    sw t3,0x0(t5)
    sw t4,0x4(t5)
    lw t3,0x8(t6)
    lw t4,0xC(t6)
    sw t3,0x8(t5)
    sw t4,0xC(t5)
				 
.close

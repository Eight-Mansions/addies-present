.psx
.open "ins\CHAP1\WORLD4.DLR",0x800B7B78

.org 0x800B9D40
	;封印された扉の外には\nとても広い野原が広がっていた。
	;Beyond the locked door\nwas a wide field.
	addiu v0, a0, 0x30

.org 0x800B9D98
	;封印された扉の外には\nとても広い野原が広がっていた。
	;Beyond the locked door\nwas a wide field.
	addiu v0, a0, 0x30
	
.org 0x800bbce4
	;管理人室・入口
	;Conductor's Hall
    lw t4, 0xc(t6)
    sw t3, 0x8(t5)
    sw t4, 0xc(t5)
    lw t3, 0x10(t6)
    nop
    sw t3, 0x10(t5)
	
.org 0x800bae38
	addiu a0, sp, 0x94
	
.org 0x800bae64	
	;門戸
	;Doorway
	lw a3, 0x0(t2)
	lw t0, 0x4(t2)
	sw a3, 0x8c(sp)
	lw a3, 0x08(t2)
	sw t0, 0x90(sp)
	sw a3, 0x94(sp)

.close

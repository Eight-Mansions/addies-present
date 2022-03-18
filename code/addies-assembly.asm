.psx
.open "exe\SCPS_101.26",0x8000F800


.org 0x8005f9bc
	;ADDU    0000001e (s0), 0000001e (s0), 0000000f (s5),
	;addiu s0, s0, 0x08
	j add_letter_width
	
.org 0x8005ff88
	j get_letter_width

.org 0x80085f60
	.importobj "code\addies\obj\font.obj"

get_letter_width:
	addiu sp, -4
	sw a0, 0(s0)
	jal GetLetterWidth
	nop
	la t0, cur_width
	sb v0, 0(t0)
	lw a0, 0(s0)
	j 0x8005ffd4
	addiu sp, 4
	
add_letter_width:
	la t0, cur_width
	lb t0, 0(t0)
	j 0x8005f9c4
	addu s0, s0, t0
	

cur_width:
	.dw 0
	
.close
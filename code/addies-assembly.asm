.psx
.open "exe\SCPS_101.26",0x8000F800


.org 0x8005f9bc
	;ADDU    0000001e (s0), 0000001e (s0), 0000000f (s5),
	;addiu s0, s0, 0x08
	j add_letter_width
	
.org 0x8005ff88
	j get_letter_width
	
.org 0x8005f7d8
	j get_sentence_width

.org 0x80085f60
	.importobj "code\addies\obj\font.obj"

get_letter_width:
	addiu sp, -4
	jal GetLetterWidth
	sw a0, 0(s0)	; Save off our letter (a0) to the stack as it gets clobbered in my code
	la t0, cur_width
	sb v0, 0(t0)	; Store our letter width
	lw a0, 0(s0)	; Reload letter
	j 0x8005ffd4
	addiu sp, 4
	
add_letter_width:
	la t0, cur_width
	lb t0, 0(t0)
	j 0x8005f9c4
	addu s0, s0, t0
	
get_sentence_width:
	addu a0, r0, s1 ; Pointer to line
	jal GetYForCentering
	addu a1, r0, fp ; Length of line
	j 0x8005f850
	addu s0, r0, v0 ; It expects the length of the line in t1
	

cur_width:
	.dw 0
	
.close
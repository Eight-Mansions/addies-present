.psx
.open "exe\SCPS_101.26",0x8000F800

.org 0x8004b9f8
	nop		; Don't clear my good space
	
.org 0x8005f880
	j loadLetter

.org 0x8005f9bc
	;ADDU    0000001e (s0), 0000001e (s0), 0000000f (s5),
	;addiu s0, s0, 0x08
	j add_letter_width
	
.org 0x8005ff88
	j get_letter_width
	
.org 0x8005f7d8
	j get_sentence_width_for_first_line
	
.org 0x8005f8ec
	j get_sentence_width_for_second_line

.org 0x80098000
	.importobj "code\addies\obj\font.obj"

get_letter_width:
	addiu sp, -4
	jal GetLetterWidth
	sw a0, 0(sp)	; Save off our letter (a0) to the stack as it gets clobbered in my code
	la t0, cur_width
	sb v0, 0(t0)	; Store our letter width
	lw a0, 0(sp)	; Reload letter
	j 0x8005ffd4
	addiu sp, 4
	
add_letter_width:
	la t0, cur_width
	lb t0, 0(t0)
	j 0x8005f9c4
	addu s0, s0, t0
	
get_sentence_width_for_first_line:
	addiu sp, -8
	sw a0, 0(sp)
	sw a1, 4(sp)
	addu a0, r0, s1 ; Pointer to line
	jal GetYForCentering
	addu a1, r0, fp ; Length of line
	lw a0, 0(sp)
	lw a1, 4(sp)
	addiu sp, 8
	j 0x8005f850
	addu s0, r0, v0 ; It expects the length of the line in t1
	
get_sentence_width_for_second_line:
	addiu sp, -8
	sw a0, 0(sp)
	sw a1, 4(sp)
	addu a0, r0, s1 ; Pointer to line
	jal GetYForCentering
	addiu a1, r0, 255 ; Length of line
	lw a0, 0(sp)
	lw a1, 4(sp)
	addiu sp, 8
	j 0x8005f9c4
	addu s0, r0, v0 ; It expects the length of the line in t1
	
loadLetter:
	lbu    v0, 0(s2)
	nop
	andi v1, v0, 0xFF
	beq v1, t1, is_09 ; 0x09 is set to t1 when we jump to this code
    nop
	addiu v0, r0, 0x0A
	bne v1, v0, not_newline
	addu a0, s6, r0
	j 0x8005f8a0 ; Run newline code
not_newline:
	nop
	sltiu  v0, v1, 0x0080
	beq v0, r0, sjis
	nop
	addiu v1, v1, 0x823f
	addu v0, r0, v1
	srl v1, v1, 0x08
	b done
	sb v1, 0x10(sp)
sjis:
	addiu s3, s3, 1 ; Checks against length.  Increase again for SJIS
	addiu s2, s2, 1 ; Increase again for SJIS
	sb v1, 0x10(sp) ; Store regardless if "ascii" or sjis
	lb v0, 0(s2)
	;sb v0, 0x11(sp) ; This will execute when we jump back
done:
	j 0x8005f97c
	nop
is_09: ; I have NO IDEA what this is
	j 0x8005f964
	sb v0, 0x10(sp)

cur_width:
	.dw 0
	
.close
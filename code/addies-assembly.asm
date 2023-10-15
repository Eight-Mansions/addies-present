.psx
.open "exe\SCPS_101.26",0x8000F800

.org 0x8004b9f8
	nop		; Don't clear my good space

.org 0x8005f9c4
	nop		; Don't track the letter count here... we'll do it
	
.org 0x80043224
	;80043224 : ADDIU   800abc2e (a0), 800b0000 (v0), bc43 (48195),
	addiu a0, v0, 0xbc4e	; This is where it stores after the "0a" or newline.  It's hard coded... why?

.org 0x8005f970
	jal LoadLetter
	nop
	
.org 0x8005f984
	;8005f984 a3a20011: sb     $v0(000000a4), 0x0011(sp)([807ff951] = 48)
	nop	; I'm taking care of this in loadLetter


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
	
.org 0x800499d8	; Make puzzle length always divisble by 2
	jal GetPropperPuzzleLength

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
	
	
LoadLetter:
	addu a0, r0, s2
	jal GetLetter
	addiu a1, sp, 0x10
	
	addu s2, s2, v0
	addu s3, s3, v0
	addu a0, r0, s6
	j 0x8005f980
	addiu a1, sp, 0x10

cur_width:
	.dw 0
	
.close

.open "ins\CHAP1\WORLD3.DLR",0x800B7B78
	.org 0x800bee28
		;露店
		;Street Stall
		la a0, 0x800b8774
		la a1, 0x800a4580
		
		jal StringCopy
		nop
		
		nop
		nop
		la a0, 0x800b877c
		clear a1
		jal 0x8001f548
.close

.open "ins\CHAP1\WORLD4.DLR",0x800B7B78

	.org 0x800b9de4
		la a0, 0x800b7e8c
		la a1, 0x800a3848
		
		jal StringCopy
		nop
		
		j 0x800b9e2c
		nop
.close

.open "ins\CHAP2\WORLD1.DLR",0x800B7B78

	.org 0x800beff8
		la a0, 0x800b8264
		la a1, 0x800a3848
		
		jal StringCopy
		nop
		
		j 0x800bf040
		nop
.close

.open "ins\CHAP2\WORLD2.DLR",0x800B7B78

.org 0x800c24f0
	la a0, 0x800b9318
	la a1, 0x800a3848
	
	jal StringCopy
	nop
	
	j 0x800c252c
	nop
	
.org 0x800beafc
	;対岸
	;Riverbank	
	la a0, 0x800b84b0
	la a1, 0x800a4580
	
	jal StringCopy
	nop	
	
	nop
	nop
	la a0, 0x800b8060
	clear a1
	jal 0x8001f548
	
.close

.open "ins\CHAP2\WORLD4.DLR",0x800B7B78

.org 0x800cb018
	la a0, 0x800ba6cc
	la a1, 0x800a3848
	
	jal StringCopy
	nop
	
	j 0x800cb05c
	nop

.org 0x800c27fc
	la a0, 0x800b8afc
	la a1, 0x800a3848
	
	jal StringCopy
	nop
	
	j 0x800c2850
	nop
	
.org 0x800c536c
	;裏道
	;Back Road
	la a0, 0x800b9218
	la a1, 0x800a4580
	
	jal StringCopy
	nop	
	
	nop
	nop
	la a0, 0x800b7f14
	clear a1
	jal 0x8001f548
	
.org 0x800cc7dc
	;デンの家
	;Den's House
	la a0, 0x800bad44
	la a1, 0x800a4580
	
	jal StringCopy
	nop	
	
	nop
	nop
	la a0, 0x800b7f14
	clear a1
	jal 0x8001f548
	
.close

.open "ins\CHAP2\WORLD6.DLR",0x800B7B78

.org 0x800b92bc
	la a0, 0x800b7f20
	la a1, 0x800a3848
	
	jal StringCopy
	nop
	
	j 0x800b930c
	nop
	
.org 0x800b9a80
	la a0, 0x800b813c
	addiu a1, s1, 0x386
	
	jal StringCopy
	nop
	
	j 0x800b9b04
	nop
	
.org 0x800b92bc
	la a0, 0x800b7e60
	la a1, 0x800a3848
	
	jal StringCopy
	nop
	
	j 0x800b8ee0
	nop

.close

.open "ins\CHAP3\WORLD5.DLR",0x800B7B78

.org 0x800c3154
	la a0, 0x800b8e08
	la a1, 0x800a3848
	
	jal StringCopy
	nop
	
	j 0x800c31a4
	nop

.close
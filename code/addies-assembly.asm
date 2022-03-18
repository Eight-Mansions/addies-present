.psx
.open "exe\SCPS_101.26",0x8000F800


.org 0x8005f9bc
	;ADDU    0000001e (s0), 0000001e (s0), 0000000f (s5),
	addiu s0, s0, 0x08

; first_hir:	equ 0x82AB
; first_eng:	equ 0x824F

; ;.org 0x8005f734
; ;	addiu s5, r0, 0x08

; .org 0x8005f810
	; sra v1, 2
	
; .org 0x8005F84C
	; ;sll s0, v0, 16
	; addiu s0, v0, 15

; .org 0x8005ff88
	; j fix_text


; .org 0x80085F60	
; fix_text:
	; addu t0, v1, r0 ; current letter
	; la a1, 0x807ff930
	; lw t1, 0(a1) ; Our size
	; nop
	; andi t1, 0xFFFF
	; jal fix_offset
	; nop
	; sw t1, 0(a1)
	; j 0x8005ffd4
	; nop

; fix_offset:
	; addiu t3, r0, first_eng
	; andi t3, 0xFFFF
	; sltu t4,t0,t3
	; bnez t4, end     		; check to see if it's less then our english upper case
    ; nop
	; addiu t3, r0, first_hir
	; andi t3, 0xFFFF
	; sltu t4,t0,t3
	; bnez t4,english         		; see if it's less then the katakana, if so jump to uppercase
	; nop
	; la t4, storeme
	; addiu t2, r0, 0x0F
	; sb t2, 0(t4)
	; b end							; all else fails just go to the end
   
; english:
	; addi t1, -15
	; la t4, storeme
	; lbu t5, 0(t4)
	; nop
	; addu t1, t5
	
	; addiu t3, r0, first_eng
	; andi t3, 0xFFFF
	; subu t0, t3; subtract the beginning of the upper case stuff
	; la t2, eng_letter
	; addu t0, t2
	
; store:
	; lbu t0, 0(t0) ; not sure if legal but hey :)  Get our width
	; nop
	; sb t0, 0(t4)

	; end:
	; jr ra
	; nop
; storeme:
	; .db 0x00; store width here
	
; eng_letter:

	; .db 0x09 ;0
	; .db 0x04 ;1
	; .db 0x09 ;2
	; .db 0x0A ;3
	; .db 0x0A ;4
	; .db 0x09 ;5
	; .db 0x09 ;6
	; .db 0x09 ;7
	; .db 0x0A ;8
	; .db 0x09 ;9
	; .db 0x00 ; 0x59
	; .db 0x00 ; 0x5A
	; .db 0x00 ; 0x5B
	; .db 0x00 ; 0x5C
	; .db 0x00 ; 0x5D
	; .db 0x00 ; 0x5E
	; .db 0x00 ; 0x5F, I hate them skipping around...
	; .db 0x0A ;A
	; .db 0x09 ;B
	; .db 0x0A ;C
	; .db 0x09 ;D
	; .db 0x08 ;E
	; .db 0x08 ;F
	; .db 0x0A ;G
	; .db 0x09 ;H
	; .db 0x02 ;I
	; .db 0x08 ;J
	; .db 0x09 ;K
	; .db 0x09 ;L
	; .db 0x0B ;M
	; .db 0x09 ;N
	; .db 0x0A ;O
	; .db 0x09 ;P
	; .db 0x0A ;Q
	; .db 0x09 ;R
	; .db 0x09 ;S
	; .db 0x0A ;T
	; .db 0x09 ;U
	; .db 0x0A ;V
	; .db 0x0C ;W
	; .db 0x09 ;X
	; .db 0x0A ;Y
	; .db 0x09 ;Z
	; .db 0x00 ; 0x7A
	; .db 0x00 ; 0x7B
	; .db 0x00 ; 0x7C
	; .db 0x00 ; 0x7D
	; .db 0x00 ; 0x7E
	; .db 0x00 ; 0x7F
	; .db 0x00 ; 0x80
	; .db 0x08 ;a
	; .db 0x08 ;b
	; .db 0x07 ;c
	; .db 0x08 ;d
	; .db 0x08 ;e
	; .db 0x06 ;f
	; .db 0x08 ;g
	; .db 0x07 ;h
	; .db 0x02 ;i
	; .db 0x04 ;j
	; .db 0x07 ;k
	; .db 0x02 ;l
	; .db 0x0A ;m
	; .db 0x07 ;n
	; .db 0x08 ;o
	; .db 0x08 ;p
	; .db 0x08 ;q
	; .db 0x06 ;r
	; .db 0x07 ;s
	; .db 0x06 ;t
	; .db 0x07 ;u
	; .db 0x08 ;v
	; .db 0x0A ;w
	; .db 0x07 ;x
	; .db 0x08 ;y
	; .db 0x07 ;z
	; .db 0x00 ; 0x9B
	; .db 0x00 ; 0x9C
	; .db 0x00 ; 0x9D
	; .db 0x00 ; 0x9E
	; .db 0x04 ; space
	; .db 0x03 ; ,
	; .db 0x02 ; .
	; .db 0x02 ; :
	; .db 0x03 ; ;
	; .db 0x08 ; ?
	; .db 0x03 ; !
	; .db 0x04 ; "
	; .db 0x04 ; -
	; .db 0x03 ; '
	; .db 0x05 ; (
	; .db 0x05 ; )
.close
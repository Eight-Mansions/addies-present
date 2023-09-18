.psx
.open "ins\CHAP1\WORLD5.DLR",0x800B7B78

.org 0x800C4704
	;ジョーカが自分を\n歯車にしてくれって…
	;Joka wants to be a gear.
	addiu a0, v0, 0x20

.org 0x800C464C
	;ジョーカは最深部で\nアディを待っていた。
	;Joka waited for Addie\nin the music box core.
	addiu v0, a0, 0x30

.org 0x800C46A4
	;ジョーカは最深部で\nアディを待っていた。
	;Joka waited for Addie\nin the music box core.
	addiu v0, a0, 0x30


.close
.psx
.open "ins\CHAP2\WORLD3.DLR",0x800B7B78

.org 0x800BD460
	;これでイライザがみつかるなら\nお安いご用だわ
	;It might pay to\nhelp the Laundry Bros.
	addiu a0, v0, 0x20 ; Sentence is 0x27 but 12 bytes gets loaded after the loop

.org 0x800C1B14
	;最初からデンのところに\n行けばよかったわ
	;I should have asked Den\nfrom the start!
	addiu a0, v0, 0x30

.org 0x800C1F34
	;ジョーカの手がかりは\nつかめたかしら
	;They might have\nnews on Joka.
	addiu a0, v0, 0x20

.close

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

.org 0x800BCD78
	;ジョーカはあの子たちが\n探してるし…どこかで休憩しよう
	;The trio's looking for Joka.\nWhy not take a break?
	addiu a0, v0, 0x40

.org 0x800BC6F0
	;洗濯物にこだわる\n３人の子供たちに出会う。
	;Addie met three siblings\ndedicated to laundry.
	addiu v0, a0, 0x30

.org 0x800BC748
	;洗濯物にこだわる\n３人の子供たちに出会う。
	;Addie met three siblings\ndedicated to laundry.
	addiu v0, a0, 0x30

.org 0x800BCCCC
	;ポンプを直したお礼に\nジョーカを探してもらうことに。
	;If I fix the pump, we\ncan work to find Joka!
	addiu v0, a0, 0x30

.org 0x800BCD24
	;ポンプを直したお礼に\nジョーカを探してもらうことに。
	;If I fix the pump, we\ncan work to find Joka!
	addiu v0, a0, 0x30

.org 0x800BCD78
	;ジョーカはあの子たちが\n探してるし…どこかで休憩しよう
	;The trio's looking for Joka.\nWhy not take a break?
	addiu a0, v0, 0x40

.close

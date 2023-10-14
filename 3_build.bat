del cd\addie_1.bin
copy cd\orig\addie_1.bin cd\addie_1.bin

tools\timmer insert -i graphics\DATA_CTS\CTN_TAG\DATA\SYS\CONGRATU.LET -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\CONGRATU.png -p 0x14 -b 16

del graphics\DATA.CTS
tools\addies_present_data_cts_manual_insert.exe graphics\orig\DATA.CTS graphics\DATA.CTS graphics\DATA_CTS

tools\addies_present_font_insert.exe graphics\DATA.CTS graphics\font\font.bmp

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\TITLE.LET.R.png -p 0x288402c -c 0x287a814 -b 8

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO00_RECORDQUALIFY.png -p 0x26a7834 -c 0x26A7808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO00_TOTALSCORE.png -p 0x26a7ca0 -c 0x26A7808 -b  4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO00_MOVEMENU.png -p 0x26a9944 -c 0x26A7808 -b 4

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO01_RECORDQUALIFYING.png -p 0x26B4834 -c 0x26B4808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO01_TOTALSCORE.png -p 0x26B4ca0 -c 0x26B4808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO01_MOVEMENU.png -p 0x26B6944 -c 0x26B4808 -b 4

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO02_RECORDQUALIFYING.png -p 0x26C1834 -c 0x26C1808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO02_TOTALSCORE.png -p 0x26C1CA0 -c 0x26C1808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO02_MOVEMENU.png -p 0x26C3944 -c 0x26C1808 -b 4

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO03_RECORDQUALIFYING.png -p 0x26CE834 -c 0x26CE808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO03_TOTALSCORE.png -p 0x26CECA0 -c 0x26CE808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO03_MOVEMENU.png -p 0x26D0944 -c 0x26CE808 -b 4

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO04_RECORDQUALIFYING.png -p 0x26DB834 -c 0x26DB808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO04_TOTALSCORE.png -p 0x26DBCA0 -c 0x26DB808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO04_MOVEMENU.png -p 0x26DD944 -c 0x26DB808 -b 4

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO05_RECORDQUALIFYING.png -p 0x26E8834 -c 0x26E8808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO05_TOTALSCORE.png -p 0x26E8CA0 -c 0x26E8808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO05_MOVEMENU.png -p 0x26EA944 -c 0x26E8808 -b 4

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO06_RECORDQUALIFYING.png -p 0x26F5834 -c 0x26F5808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO06_TOTALSCORE.png -p 0x26F5ca0 -c 0x26F5808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO06_MOVEMENU.png -p 0x26F7944 -c 0x26F5808 -b 4

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO07_RECORDQUALIFYING.png -p 0x2702834 -c 0x2702808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO07_TOTALSCORE.png -p 0x2702ca0 -c 0x2702808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO07_MOVEMENU.png -p 0x2704944 -c 0x2702808 -b 4

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO08_RECORDQUALIFYING.png -p 0x270F834 -c 0x270F808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO08_TOTALSCORE.png -p 0x270Fca0 -c 0x270F808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO08_MOVEMENU.png -p 0x2711944 -c 0x270F808 -b 4

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO09_RECORDQUALIFYING.png -p 0x271C834 -c 0x271C808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO09_TOTALSCORE.png -p 0x271CCa0 -c 0x271C808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO09_MOVEMENU.png -p 0x271E944 -c 0x271C808 -b 4

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO10_RECORDQUALIFYING.png -p 0x2729834 -c 0x2729808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO10_TOTALSCORE.png -p 0x2729CA0 -c 0x2729808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO10_MOVEMENU.png -p 0x272B944 -c 0x2729808 -b 4

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO11_RECORDQUALIFYING.png -p 0x2736834 -c 0x2736808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO11_TOTALSCORE.png -p 0x2736CA0 -c 0x2736808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO11_MOVEMENU.png -p 0x2738944 -c 0x2736808 -b 4

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO12_RECORDQUALIFYING.png -p 0x2743834 -c 0x2743808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO12_TOTALSCORE.png -p 0x2743CA0 -c 0x2743808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO12_MOVEMENU.png -p 0x2745944 -c 0x2743808 -b 4

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO13_RECORDQUALIFYING.png -p 0x2750834 -c 0x2750808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO13_TOTALSCORE.png -p 0x2750CA0 -c 0x2750808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO13_MOVEMENU.png -p 0x2752944 -c 0x2750808 -b 4

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO14_RECORDQUALIFYING.png -p 0x275D834 -c 0x275D808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO14_TOTALSCORE.png -p 0x275DCA0 -c 0x275D808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO14_MOVEMENU.png -p 0x275F944 -c 0x275D808 -b 4

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO15_RECORDQUALIFYING.png -p 0x276A834 -c 0x276A808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO15_TOTALSCORE.png -p 0x276ACA0 -c 0x276A808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO15_MOVEMENU.png -p 0x276C944 -c 0x276A808 -b 4

tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\bought1.png -p 0x92E474 -c 0xAC2014 -b 8
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\bought2.png -p 0x92E040 -c 0xAC2014 -b 8

tools\timmer insert -i ins\BGMCHANG.DLR -o graphics\BGMCHANG_DLR\BGMCHANG.DLR.0003.0001C9A4.png -t 0x1C9A4

del data_error.txt
tools\atlas graphics\DATA.CTS trans\DEKILOG.BIN.txt >> data_error.txt

tools\psx-mode2.exe cd\addie_1.bin /DATA.CTS graphics\DATA.CTS
tools\psx-mode2.exe cd\addie_1.bin /SCPS_101.26 exe\SCPS_101.26

tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP0/WORLD1.DLR ins\CHAP0\WORLD1.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP0/WORLD2.DLR ins\CHAP0\WORLD2.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP0/WORLD3.DLR ins\CHAP0\WORLD3.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP0/WORLD5.DLR ins\CHAP0\WORLD5.DLR

tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP1/WORLD1.DLR ins\CHAP1\WORLD1.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP1/WORLD2.DLR ins\CHAP1\WORLD2.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP1/WORLD3.DLR ins\CHAP1\WORLD3.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP1/WORLD4.DLR ins\CHAP1\WORLD4.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP1/WORLD5.DLR ins\CHAP1\WORLD5.DLR

tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP2/WORLD1.DLR ins\CHAP2\WORLD1.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP2/WORLD2.DLR ins\CHAP2\WORLD2.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP2/WORLD3.DLR ins\CHAP2\WORLD3.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP2/WORLD4.DLR ins\CHAP2\WORLD4.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP2/WORLD5.DLR ins\CHAP2\WORLD5.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP2/WORLD6.DLR ins\CHAP2\WORLD6.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP2/WORLD7.DLR ins\CHAP2\WORLD7.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP2/WORLD8.DLR ins\CHAP2\WORLD8.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP2/WORLD9.DLR ins\CHAP2\WORLD9.DLR

tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP3/WORLD1.DLR ins\CHAP3\WORLD1.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP3/WORLD2.DLR ins\CHAP3\WORLD2.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP3/WORLD3.DLR ins\CHAP3\WORLD3.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP3/WORLD4.DLR ins\CHAP3\WORLD4.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/IMAGE/CHAP3/WORLD5.DLR ins\CHAP3\WORLD5.DLR

tools\psx-mode2.exe cd\addie_1.bin /DLR/EDITOR.DLR ins\EDITOR.DLR
tools\psx-mode2.exe cd\addie_1.bin /DLR/BGMCHANG.DLR ins\BGMCHANG.DLR
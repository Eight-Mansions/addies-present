del cd\addie_1.bin
copy cd\orig\addie_1.bin cd\addie_1.bin

pushd code\addies
pmake -e RELMODE=DEBUG clean
mkdir Debug
pmake -e RELMODE=DEBUG -e OUTFILE=main -e OPTIMIZE=2
popd

del exe_error.txt
del exe\SCPS_101.26
copy exe\orig\SCPS_101.26 exe\SCPS_101.26
tools\armips.exe code\addies-assembly.asm
tools\atlas exe\SCPS_101.26 trans\SCPS_101.26.txt >> exe_error.txt

del graphics\DATA.CTS
tools\addies_present_data_cts_manual_insert.exe graphics\orig\DATA.CTS graphics\DATA.CTS graphics\DATA_CTS

tools\addies_present_font_insert.exe graphics\DATA.CTS graphics\font\font.bmp
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\TITLE.LET.R.png -p 0x288402c -c 0x287a814 -b 8
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO00_RECORDQUALIFY.png -p 0x26a7834 -c 0x26A7808 -b 4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO00_TOTALSCORE.png -p 0x26a7ca0 -c 0x26A7808 -b  4
tools\timmer insert -i graphics\DATA.CTS -o graphics\DATA_CTS\CTN_TAG\DATA\SYS\DECO00_MOVEMENU.png -p 0x26a9944 -c 0x26A7808 -b 4


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
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
tools\addies_present_data_cts_manual_insert graphics\orig\DATA.CTS  graphics\DATA.CTS graphics\data_cts

tools\addie_font_insert.exe graphics\font\uppercase.bin graphics\font\upper.tbl 8260 9D graphics\DATA.CTS
tools\addie_font_insert.exe graphics\font\lowercase.bin graphics\font\lower.tbl 8281 B7 graphics\DATA.CTS
tools\addie_font_insert.exe graphics\font\numbers.bin graphics\font\numbers.tbl 824F 93 graphics\DATA.CTS
tools\addie_font_insert.exe graphics\font\punctuation.bin graphics\font\punctuation.tbl 829F D1 graphics\DATA.CTS

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
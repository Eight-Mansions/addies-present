del error.txt
del /q /s ins\*
xcopy /s orig\* ins


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

tools\addies_present_text_insertion.exe trans sjis.tbl

tools\armips.exe code\CHAP1\WORLD1.DLR.asm
tools\armips.exe code\CHAP1\WORLD2.DLR.asm
tools\armips.exe code\CHAP1\WORLD3.DLR.asm
tools\armips.exe code\CHAP1\WORLD4.DLR.asm
tools\armips.exe code\CHAP1\WORLD5.DLR.asm
tools\armips.exe code\CHAP2\WORLD1.DLR.asm
tools\armips.exe code\CHAP2\WORLD2.DLR.asm
tools\armips.exe code\CHAP2\WORLD3.DLR.asm
tools\armips.exe code\CHAP2\WORLD4.DLR.asm
tools\armips.exe code\CHAP2\WORLD5.DLR.asm
tools\armips.exe code\CHAP2\WORLD6.DLR.asm
tools\armips.exe code\CHAP2\WORLD7.DLR.asm
tools\armips.exe code\CHAP2\WORLD8.DLR.asm
tools\armips.exe code\CHAP2\WORLD9.DLR.asm
tools\armips.exe code\CHAP3\WORLD1.DLR.asm
tools\armips.exe code\CHAP3\WORLD2.DLR.asm
tools\armips.exe code\CHAP3\WORLD3.DLR.asm
tools\armips.exe code\CHAP3\WORLD4.DLR.asm
tools\armips.exe code\CHAP3\WORLD5.DLR.asm
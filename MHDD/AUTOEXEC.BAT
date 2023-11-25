@ECHO OFF
set EXPAND=YES
SET DIRCMD=/O:N
set LglDrv=27 * 26 Z 25 Y 24 X 23 W 22 V 21 U 20 T 19 S 18 R 17 Q 16 P 15
set LglDrv=%LglDrv% O 14 N 13 M 12 L 11 K 10 J 9 I 8 H 7 G 6 F 5 E 4 D 3 C
call setramd.bat %LglDrv%
path=%RAMD%:\
copy command.com %RAMD%:\ > NUL
set comspec=%RAMD%:\command.com


echo.
%RAMD%:
MD MHDD
cd \MHDD
copy A:\mhdd\mhdd.zip . > nul
copy a:\pkunzip.exe . > nul
pkunzip -d mhdd.zip > nul
del mhdd.zip
del pkunzip.exe
echo.
echo The MHDD was successfully unpacked to  %RAMD%:\MHDD
echo.

set CDROM=
set LglDrv=

mhdd /enableprimary

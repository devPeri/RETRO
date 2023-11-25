@echo off
set RAMD=
set CDROM=

findramd

if errorlevel 255 goto no_ramdrive

if not errorlevel 3 goto no_ramdrive

goto do_shift

:loop
if errorlevel %1 goto no_shift

:do_shift
set cdrom=%2
shift
shift
if not %1*==* goto loop
goto no_ramdrive

:no_shift
set ramd=%2

goto success

:no_ramdrive
echo MHDD startup disk could not create a temporary drive for itself.
echo This happen because this computer has less than 4 Mbytes of memory.
echo.

:success


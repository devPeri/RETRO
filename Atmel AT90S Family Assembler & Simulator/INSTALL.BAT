@echo off
echo ********************************************************************* 
echo **                AVR TOOLS for DOS and WINDOWS                    **
echo **                        installation                             **
echo ********************************************************************* 
echo.

rem ** Check if installfiles are located on current path.
if not exist filelist.txt goto invcurdir
if not exist setup.arv goto invcurdir
if not exist install.bat goto invcurdir

rem *** Check if a destination directory was specified. ***
if "%1" == "" goto noparams

rem *** Check if DIR already exists, by checking the NUL-file.
if exist %1nul goto nodir
if exist %1\nul goto nodir

rem *** Now copy files
:copyfiles
echo.
echo Please wait while copying files...
xcopy archive.exe %1
xcopy setup.arv %1
if not errorlevel 0 goto nocopy

cd %1
%1\
archive /E:setup *.*
if not errorlevel 0 goto nocopy
rem *** Success!
:success
echo.
echo The AVR TOOLS for DOS were successfully installed on %1.
goto end

rem ************* ERRORS *****************************
rem *** No destination directory specified
:noparams
echo ERROR: You must specify the directory where the tools are to be 
echo        installed.
echo        Example:  "INSTALL C:\AVR\"
goto exit

rem *** Invalid directory name
:invdir
echo ERROR: The directory name is invalid.  Please specify the directory
echo        where the files are to be installed.
echo        Example:  "INSTALL C:\PROG\AVR\"
goto exit

rem *** Invalid current dir
:invcurdir
echo ERROR: The installation files must be on the current directory when
echo        starting INSTALL.
echo        Example:  When installing from floppy A: to C:\PROG\AVR\
echo                  the current dir must be A:\   
goto exit

rem *** Error during COPY
:nocopy
echo ERROR: The files could not be copied.  The AVR Tools are NOT installed.
echo        Please check if the directory specified is valid, and that
echo        there is enough space free on the drive.
goto exit

rem *** Specified directory already exists
:nodir
echo.
echo ERROR: The specified directory already exist.  You can 
echo.
echo        1)  Install anyway, overwriting old files.
echo        2)  Exit program.
echo.
choice /C:12 Please select
if errorlevel 2 goto exit
if errorlevel 1 goto copyfiles

rem *** Exit
:exit
echo.
echo The AVR TOOLS for DOS were NOT installed correctly.
goto end


:end

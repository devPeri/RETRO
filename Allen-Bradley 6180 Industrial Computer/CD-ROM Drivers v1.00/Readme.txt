Rockwell Automation

CD-ROM Installation Instructions


Disk Contents
-------------

setup.bat      : Toshiba utility - Copies the TAISATAP.SYS file from the
                 current working directory to the root directory of the
                 destination drive and looks for C:\DOS\MSCDEX.EXE
taisatap.sys   : Real-Mode Toshiba CD-ROM system driver
tosh.exe       : Toshiba setup utility - Prompts for MSCDEX.EXE location
readme.txt     : Rockwell Automation CD-ROM installation instructions


 ---------
|Automatic|
 ---------

SETUP.BAT
---------

SETUP.BAT is an MS-DOS batch file downloaded from the Toshiba WEB site.  

This program copies the file MSCDEX.EXE from the C:\DOS directory to the
current working directory.

After copying the file MSCDEX.EXE, SETUP.BAT runs the program TOSH.EXE.


TOSH.EXE
--------

TOSH.EXE is an MS-DOS executable downloaded from the Toshiba WEB site.  

This program locates all of the device drivers in the current working 
directory and prompts you for the device driver you want to use.  Choose
TAISATAP.SYS for the Toshiba CD-ROM.  

You are then prompted for the number of CD-ROM drives installed.  Enter a 
number. Pressing Enter defaults to 1 CD-ROM device.

Instructions are provided for installing the drivers onto a bootable 
floppy disk.  To do this, you must have a second floppy drive setup as B: and 
enter B: in the next step.  If your computer does not have a second floppy
drive or does not support phantom floppy drive access, you cannot install the 
Real-Mode CD-ROM drivers on the bootable floppy disk using the TOSH.EXE or 
SETUP.BAT programs. Follow the DOS floppy boot disk instructions below to 
make a bootable floppy disk instead.

To setup the CD-ROM device:
1. Enter the location where you want to copy TAISATAP.SYS. 
   Type the new directory path or press Enter to accept the default. 
2. Press Enter to acknowledge the file copy.

The program then modifies CONFIG.SYS and AUTOEXEC.BAT to give Real-Mode DOS 
access to your CD-ROM. You are given the option of backing up the current 
CONFIG.SYS and AUTOEXEC.BAT.


 ------
|Manual|
 ------


DOS / Windows 3.x
-----------------

Each CD-ROM drive has a unique system driver that needs to be loaded at 
startup.  This driver must be located in the CONFIG.SYS in Real-Mode DOS
to set up the communication instructions between the Real-Mode DOS (DOS) and 
the CD-ROM device.  Even though your CD-ROM drive may be ATAPI 1.x, it may 
not work properly with another manufacturer's ATAPI CD-ROM driver.

MSCDEX.EXE is a Microsoft program that gives the CD-ROM device a drive 
letter, enabling access to the CD-ROM in Real-Mode DOS.

SMARTDRV.EXE is a Microsoft disk caching program that substantially increases
drive performance.  SMARTDRV.EXE in DOS 6.x (or greater) can cache the CD-ROM
if it is loaded AFTER the MSCDEX.EXE.

To manually setup the CD-ROM in Real-Mode DOS :
  1. Copy the TAISATAP.SYS file to the boot device (typically the hard disk).
  2. Note the location of the MSCDEX.EXE file on the boot device.
  3. Modify the AUTOEXEC.BAT and the CONFIG.SYS.

(CONFIG.SYS)
Devicehigh=c:\cdrom\TAISATAP.SYS /d:ONE  ; "c:\cdrom" is the location
                                            of the CD-ROM driver

(AUTOEXEC.BAT)
lh c:\dos\MSCDEX.EXE /d:ONE              ; "c:\dos" is the location
                                            of MSCDEX.EXE


DOS Floppy Boot Disk
--------------------

Follow the same directions as DOS / Windows 3.x, but substitute the boot 
floppy drive letter for the locations of TAISATAP.SYS and MSCDEX.EXE.

Be sure to format the floppy with /S or use the SYS.EXE program to
provide the floppy with system files so it can boot.


Windows 95
----------

You do not have to load the Real-Mode CD-ROM system driver for use with the
Windows 95 OS in Grapical User Interface (GUI) mode.  Windows 95 has built
in drivers for each type of CD-ROM : SCSI; SCSI2; Panasonic, Mitsumi and
Sony proprietary SCSI; ATAPI (EIDE or IDE).

Windows 95 can, however, "Restart in MS-DOS" mode.  This mode is just like
running in DOS 6.x.  When you restart Windows 95 in MS-DOS mode,
it runs a program called DOSSTART.BAT, found in the Windows directory. If
CONFIG.SYS has the Real-Mode CD-ROM driver loaded and DOSSTART.BAT has
the MSCDEX.EXE line referencing the CD-ROM driver, then you will have access
to the CD-ROM in MS-DOS mode.

To manually setup the CD-ROM in MS-DOS mode for Windows 95:
  1. Copy the TAISATAP.SYS file to the boot device (typically the hard disk).
  2. Note the location of the MSCDEX.EXE file on the boot device.
  3. Modify the DOSSTART.BAT and the CONFIG.SYS.

(CONFIG.SYS)
Devicehigh=c:\cdrom\TAISATAP.SYS /d:ONE  ; "c:\cdrom" is the location
                                            of the CD-ROM driver

(c:\windows\DOSSTART.BAT)
lh c:\windows\command\MSCDEX.EXE /d:ONE  ; "c:\windows\command" is the
                                            location of MSCDEX.EXE


Windows NT
----------

Real-Mode CD-ROM drivers are not needed for Windows NT.


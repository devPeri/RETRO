-------------------------------------------------------------------------------------
Ditto Tools, Version 5.1b
  

Copyright Arcada Software, Inc. 1996.
-------------------------------------------------------------------------------------

This file contains important information that became
available after the written documentation was completed.

The following subjects are discussed:

     1.   Installing Ditto Tools After Other Backup Programs
     2.   Do Not Run Ditto Tools with Boot-Disk Creator
     3.   Setup Disk Space Estimates
     4.   Video/DMA Conflict Problems
     5.   Laptop/Notebook Video Conflicts
     6.   Power Management Conflicts
     7.   Reading Irwin AccuTrak Tapes
     8.   Maximum Parallel Port Cable Length
     9.   IRQ Conflicts
    10.   Potential Conflict with Screen Savers
    11.   NetWare Files With an Execute Only (X) Attribute
    12.   Files Not Backed Up By Ditto Tools
    13.   Formatting Tapes on 386 Machines
    14.   Hardware Compression Not Supported
    15.   Restoring Files with NetWare Delete Inhibit or Rename
          Inhibit Attributes
    16.   Performance Issues on QIC-3020 Parallel Port Tape Drives
    17.   Controller Conflicts
    18.   Possible Video Conflicts
    19.   EZ-Drive Disk Manager

   1.  Installing Ditto Tools After Other Backup Programs
-------------------------------------------------------------------------------------
You may experience difficulty running Ditto Tools
if some device files from other backup programs are
found in your SYSTEM.INI file. If you can't start
Ditto Tools, try commenting the following devices out
of your SYSTEM.INI file:

    CMSWTAPE.386
    CMSDTAPE.386
    CPBVXD.386
    FASTBACK.386
    IRW286.DRV
    NOVABKP.386
    VIRWT.386
    VITD.386
    DCVXD.386

To do this:

  1. Open the SYSTEM.INI file using a text editor.
  2. Search for the device name(s), e.g., DEVICE=CPBVXD.386
  3. Type a semicolon (;) at the beginning of the line.


   2.  Do Not Run Ditto Tools with Boot-Disk Creator
-------------------------------------------------------------------------------------
Do not run Ditto Tools and the boot-disk creator
at the same time. Floppy drives cannot be used
while the product is running.


   3.  Setup Disk Space Estimates
-------------------------------------------------------------------------------------
To ensure that you have enough disk space to
install Ditto Tools, the Setup program displays the
amount of space required for installation.


   4.  Video/DMA Conflict Problems
-------------------------------------------------------------------------------------
Ditto Tools uses direct memory access (DMA) channels to
read and write data. Sometimes using a tape device that is
connected to the floppy controller causes conflicts with
the Windows 3.1 video drivers.

During the compatibility test, Ditto Tools determines if
your system has a video/DMA conflict and if so, goes through
a series of tests in an effort to ensure your system runs
reliably with Ditto Tools. After each test a message will
inform you that tests are still being performed. If
Ditto Tools has attempted every test and your
system will still not work reliably, a message will inform
you of the problem.

NOTE: If you experience video/DMA conflicts, try disabling the
Video Caching option (sometimes referred to as Video Shadowing)
in your CMOS setup.

If your system locks up when using the backup program, switch to the
Windows Standard VGA driver. If the Windows Standard VGA driver
works, contact your video board manufacturer for an updated driver.


   5.  Laptop/Notebook Video Conflicts
-------------------------------------------------------------------------------------
Some laptop and notebook computers may have video conflicts
that cause the tape drive to move the tape back and forth
excessively  ("shoe-shining").

If you experience this, try minimizing the Ditto Tools icon
and making the Program Manager window active and moving it over
the top of the icon while the program is writing to or reading
from the tape. The Ditto Tools window will activate itself
when the backup or restore is finished, and this action should
speed up your session.


   6.  Power Management Conflicts
-------------------------------------------------------------------------------------
Some Desktop computer systems and laptops have power
management systems that take a "snapshot" of RAM and
store it on the hard drive when they power down. This
may create a conflict if it occurs during a backup or
restore or a tape formatting operation.

When using Ditto Tools, it is recommended that you turn
OFF all power management features. If you're using
a laptop, avoid running power management features
by using an outlet rather than batteries.


   7.  Reading Irwin AccuTrak Tapes
-------------------------------------------------------------------------------------
Your tape drive can read both QIC-40/80 and Irwin AccuTrak
tapes. To read an Irwin tape, you must first rebuild
a catalog for the tape. Select Rebuild from the Catalog
menu. When the rebuilding process is complete, you can
load and use the catalog to restore files from that tape.

NOTE: The Iomega Ditto Easy800 drive does not read Irwin tapes.

You cannot format or write to AccuTrak tapes with your
tape drive.


   8.  Maximum Parallel Port Cable Length
-------------------------------------------------------------------------------------
Your parallel port tape drive should be connected directly to
your system's parallel port. If you use the pass-through
connector on the drive to connect a second device such as a
printer, the maximum cable length for both devices is
approximately 10 feet (3 meters).

If you have difficulty using your tape drive when a second
device is connected to the pass-through connector, disconnect
the second device and its cable while using the tape drive.

If you experience data loss when using a printer connected to
the pass-through connector, shorten the printer's cable if
possible or disconnect the tape drive while printing.


   9.  IRQ Conflicts
-------------------------------------------------------------------------------------
You may experience a conflict in IRQ selection if you are
configuring a parallel port tape drive on a system that
includes a sound card. SoundBlaster cards and compatibles use a
default IRQ of 7, which is also used by a printer port (LPT1).
If this conflict occurs, you can:

    *  Change your sound card's IRQ if possible. Some cards do
       not allow this change and some games may not work
       correctly.

    *  Check your system documentation to see if your parallel port
       can be configured to use a different interrupt.

Devices that may conflict with printer port interrupt:

       Sound Cards
       Scanner Cards
       Network Cards
       Bus Mice
       Other printer ports
       Other devices

If you are running Windows 3.1, IRQ usage can be determined by
using the Microsoft Diagnostics Program. Exit Windows and type
MSD at the DOS prompt. Note that MSD cannot always diagnose
printer port IRQ conflicts. Printing does not require a hardware
interrupt and will function normally even if an interrupt
conflict exists.

If you are running Windows 95:

1.  Double-click the My Computer icon.
2.  Double-click the Control Panel icon.
3.  Double-click the System icon.
4.  Click the Device Manager tab in the System Properties window.
    The device Manager tab appears.
5.  Select the hardware that you want to change settings for,
    then click Properties.
    The Properties window appears.
6.  Click the Resources tab in the Properties window.
7.  Deselect Use Automatic Settings.
8.  To change your Input/Output Range, Interrupt Request, or
    Direct Memory Access settings, highlight the item and click
    Change Setting. Make any changes and click OK.
9.  Close the System control panel.
10. Shut down your computer.
11. If necessary, make any changes to your high-speed controller
    card's settings and install it in your system. See your
    hardware manual for instructions.
12. Restart your computer and Windows 95.

Symptoms of an IRQ conflict include Ditto Tools not
finding the tape controller and network problems when
backing up to tape.


  10.  Potential Conflict with Screen Savers
-------------------------------------------------------------------------------------
Some screen savers will not activate while a backup, compare,
or restore is running and Ditto Tools is minimized.
For optimum performance, we recommend that you disable your
screen saver while using Ditto Tools.
However, if you wish to use your screen saver, you must first
make sure Ditto Tools is not minimized.


  11.  NetWare Files With an Execute Only (X) Attribute
-------------------------------------------------------------------------------------
NetWare files with an execute only (X) attribute will not be
backed up, compared, or overwritten during a restore.


  12.  Files Not Backed Up by Ditto Tools
-------------------------------------------------------------------------------------
Ditto Tools does not log or back up a number of files
to avoid potential system conflicts if they are restored.

  Compressed Volume files:

     DBLSPACE.0??
     DRVSPACE.0??
     STACVOL.*

  Windows swap files:

     386SPART.PAR (Win 3.1x only)
     WIN386.SWP


  13.  Formatting Tapes on 386 Machines
-------------------------------------------------------------------------------------
If you encounter difficulties formatting tapes on a slower 386
machine or receive a message stating "The tape controller is not
responding correctly," make sure your turbo switch is on.


  14.  Hardware Compression Not Supported
-------------------------------------------------------------------------------------
Ditto Tools for Windows, Version 5.1b, does not support
the hardware compression function found on some high-speed
controller cards.


  15.  Restoring Files with NetWare Delete Inhibit or Rename
       Inhibit Attributes
-------------------------------------------------------------------------------------
During a Restore, you cannot overwrite files which have
the NetWare Delete Inhibit (D) or Rename Inhibit (R)
attribute set. To restore these files, you must first manually
remove the Delete Inhibit or Rename Inhibit attribute.


  16.  Performance Issues on QIC-3020 Parallel Port Tape Drives
-------------------------------------------------------------------------------------
If you have a QIC-3020 Parallel Port tape drive you may
experience a performance limitation, especially on
systems with unidirectional parallel ports. This combination
may not transfer data from the tape drive to the system fast
enough to allow the tape to run continuously, or "stream."
However, if you reformat the tape using the QIC-3010 format,
the tape will run at half the speed of a QIC-3020 and stream
more of the time. This will result in faster net restore times
and less wear on the tape drive, but will cut the tape's
capacity in half.


  17.  Controller Conflicts
-------------------------------------------------------------------------------------
The Promise 2300 EIDE VLB controller must run in fast
mode (/f parameter) in order to work with floppy tape drives.


  18.  Possible Video Conflicts
-------------------------------------------------------------------------------------
Problems have occurred with various video drivers and the video
compatibility test in Windows. If your software hangs during the
Compatibility Test, try to get an update of the video driver
from the card manufacturer. Conflicts have occurred with Diamond
Stealth 64, ATI Ultra Mach 32/64 cards, and other cards using
the Cirrus Logic chip set.


  19.  EZ-Drive Disk Manager
-------------------------------------------------------------------------------------
The following information applies to systems
with high-capacity hard drives using the Micro
House EZ-Drive disk manager:

Before starting Ditto Tools for Windows, make
sure that the Micro House EZ-Drive Virtual Driver
is installed by running the SETUP.EXE program on
the EZ-Drive installation diskette. This setup program
adds the line "device=MH32BIT.SYS" to the [386Enh]
section of your SYSTEM.INI file.

Then follow the steps below:

1.  Click the Windows Control Panel's "Enhanced" icon.
2.  Select the Virtual Memory... button.
3.  Select the Change>> button.

Ensure the "Use 32-Bit Disk Access" check box is checked.
This check box must remain checked in order to use
Ditto Tools for Windows.


If you continue to encounter problems using Ditto Tools
for Windows, and if you are using a QIC floppy tape or
parallel port tape drive, follow the steps below:

1.  Open Ditto Tools.
2.  Select the Configure button.
3.  Select the Settings button.
    The Settings dialog appears.
4.  Select the Most Compatible setting in
    the DMA Operation combo box.

This results in lower performance, but may be necessary on some
systems for proper operation.


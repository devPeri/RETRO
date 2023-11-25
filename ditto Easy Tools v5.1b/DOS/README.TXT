ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
Ditto Tools, Version 5.1a


Copyright Arcada Software, Inc. 1995.
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

This file contains important technical information about
your program.

To print this file, type COPY README.TXT PRN at the DOS
prompt.

The following subjects are discussed:

   1.  Installation
   2.  Reading Irwin AccuTrak Tapes
   3.  Memory Requirements
   4.  Tape Despooling
   5.  Compatibility Test Failure
   6.  Running Ditto Tools under DesqView
   7.  Compressed Drives
   8.  Installing Ditto Tools on a System with Stacker
   9.  The DOS Append Command
  10.  Setup File Compatibility with Ditto Tools for Windows
  11.  Power Management Conflicts
  12.  Parallel Port Drive Configuration
  13.  IRQ Conflicts
  14.  Maximum Parallel Port Cable Length
  15.  Potential Conflict with PC-DOS 6.1 RAMBOOST
  16.  NetWare Files With an Execute Only (X) Attribute
  17.  Files Not Backed Up
  18.  Formatting Tapes on 386 Machines
  19.  Hardware Compression Not Supported
  20.  Common Setup and Configuration Issues
  21.  Restoring Files with NetWare Delete Inhibit or
       Rename Inhibit Attributes
  22.  Performance Issues on QIC-3020 Parallel Port Tape Drives
  23.  Controller Conflicts

ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
   1.  Installation
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Ditto Tools for DOS will not install or operate correctly
from a DOS box within Windows. It must be installed and operated
directly from the DOS prompt.

This program works best when both the BUFFERS and FILES statements
in your CONFIG.SYS file are set to at least 30. This program must
have a FILES setting of at least 10 and a BUFFERS setting of at
least 15 to run efficiently.

NOTE: If you are using other software that requires a lower buffers
setting, you should manually adjust the buffers setting.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
   2.  Reading Irwin AccuTrak Tapes
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Your Iomega drive can read both QIC and Irwin AccuTrak tapes.
To read an Irwin tape, you must first rebuild a catalog for
the tape. Select Rebuild from the Catalog menu. When
the rebuilding process is complete, you can load and use the
catalog to restore files from that tape.

NOTE: You cannot format or write to AccuTrak tapes with your
Iomega drive.

Ditto Tools , Version 5.1a, cannot read or
restore encrypted Irwin backup sets. You must use the program
originally used to encrypt the backup sets to decrypt them.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
   3.  Memory Requirements
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Ditto Tools for DOS requires at least 512K of free memory;
however, this software runs faster if more memory is
available. To check your free memory, type MEM at the
MS-DOS prompt. To free memory, remove any TSRs before
running Ditto Tools. See your system documentation for other
methods.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
   4.  Tape Despooling
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

If a tape "despools" (comes loose from the cartridge capstan,
a very rare occurrence), it may be necessary to turn the drive's
power off and on again or to reboot your system to clear the
drive.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
   5.  Compatibility Test Failure
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

The compatibility test consists of a small backup and
compare, automatically performed by Ditto Tools to verify
that reliable backups can be performed with your current
configuration.

The most common cause of compatibility test failure is DMA
error. Therefore, when the compatibility test fails,
Ditto Tools automatically resets the DMA
(Direct Memory Access) to Low Speed.

During installation, other factors may contribute to
compatibility test failure. For this reason, the following
procedure is recommended if the compatibility test fails
during installation:

    1. Complete the installation
    2. Restart Ditto Tools
    3. Choose Configure
    4. Choose Configuration Tests
    5. Set the Direct Memory Access to High Speed
    6. Redo the compatibility test

If the compatibility test fails again, follow the guidelines
presented in the on-line help, available by pressing F1.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
   6.  Running Ditto Tools under DesqView
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

To run Ditto Tools under DesqView, make the following
selections in DesqView:

   ù Create an entry in the Program Menu for Ditto Tools.

   ù Under Advanced Options, specify that Ditto Tools
     cannot share CPU when in the foreground, and that
     it cannot run in the background.

   ù Select Uses Its Own Colors.

   ù Set the Memory Size option to 512 K.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
   7.  Compressed Drives
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

If you are using compression software such as Stacker or
DoubleSpace, do not back up the compressed file, back up the
logical drive instead. Because these compressed files are
typically very large, attempting to restore may cause problems
if you do not have enough disk space to restore the compressed file.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
   8.  Installing Ditto Tools on a System with Stacker
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

If you have Stacker software installed on your computer,
you may not want to let Ditto Tools make changes to your
AUTOEXEC.BAT file. Some versions of Stacker create their
own AUTOEXEC.BAT file which should not be modified, and it
is this file that Ditto Tools will find.

You can tell if this is the case on your computer if, during
Ditto Tools installation, the AUTOEXEC.BAT file that is
displayed says "DO NOT MODIFY THIS FILE." In this case, you
will need to find your original AUTOEXEC.BAT file and make
the following changes:

 ù Add the Ditto Tools directory to your PATH statement.

 ù Add the command "SET QBACKUP=path_name"

      where path_name is the directory you want Ditto Tools
      to use for setup and catalog files

 ù If you want to load the Backup Scheduler each time you
   start your computer, add the command QSCHED as the last
   command in your AUTOEXEC.BAT file.

For more information on loading the Backup Scheduler, see the
help topic "Installing the Backup Scheduler TSR."


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
   9.  The DOS Append Command
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

If you use the DOS Append command with the /X or /X:ON
option, when you perform a restore, some files may not be
restored.  This is because of the way DOS reports names of
existing files when this command is in effect.

It is highly recommended that you deactivate the Append /x
command before performing restores.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  10.  Setup File Compatibility with Ditto Tools for Windows
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Ditto Tools for Windows, version 5.1a, can read, use,
and modify setup files created by Ditto Tools for DOS,
version 5.1a. If you have made individual file or directory
selections in a setup file that is opened and resaved by
Ditto Tools for Windows, you may notice that some
filenames and directory names are displayed in a different
color (red if default colors are used). This display change
will not affect the selections.

Ditto Tools for DOS, version 5.1a, can use setup files
created by Ditto Tools for Windows, version 5.1a,
with the following limitation:

    Individual file and/or directory selections made with
    the keyboard or mouse will not transfer from the Windows
    setup file to the DOS setup file.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  11.  Power Management Conflicts
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Some Desktop computer systems and laptops have power
management systems that take a "snapshot" of RAM and
store it on the hard drive when they power down. This
may create a conflict if it occurs during a backup or
restore or a tape formatting operation.

When using Ditto Tools, it is recommended that you turn
OFF all power management features. If you're using
a laptop, avoid running power management features
by using an outlet rather than batteries.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  12.  Parallel Port Drive Configuration
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

If your parallel port tape drive does not automatically
configure, first ensure that the power to the drive is on. If
it is, turn it off, then on, and try configuring it again. See
below for more suggestions.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  13.  IRQ Conflicts
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

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

IRQ usage can be determined by using the Microsoft Diagnostics
Program. Exit Windows and type MSD at the DOS prompt. Note that MSD
cannot always diagnose printer port IRQ conflicts. Printing does not
require a hardware interrupt and will function normally even if an
interrupt conflict exists.

Symptoms of an IRQ conflict include Ditto Tools not
finding the tape controller and network problems when
backing up to tape.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  14.  Maximum Parallel Port Cable Length
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

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


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  15.  Potential Conflict with PC-DOS 6.1 RAMBOOST
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

If you wish to use the Scheduler TSR, QSCHED.COM, with PC-DOS
6.1's RAMBOOST device, you must use the /SKIPHIGH switch to load
it in conventional memory. Type QSCHED.COM /SKIPHIGH at the
command line or include it in your AUTOEXEC.BAT line. NOTE: The
QSCHED.COM TSR must be loaded last.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  16.  NetWare Files With an Execute Only (X) Attribute
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

NetWare files with an execute only (X) attribute will not be
backed up, compared, or overwritten during a restore.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  17.  Files Not Backed Up
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Ditto Tools does not log or back up a number of files
to avoid potential system conflicts if they are restored.

  Compressed Volume files:

     DBLSPACE.0??
     DRVSPACE.0??
     STACVOL.*

  Windows swap files:

     386SPART.PAR
     WIN386.SWP

  NetWare System files:

     BACKOUT.TTS
     NET$SPL.QUE
     NET$MSG.SYS
     DIRSTAMP.SYS
     NET$OBJ.SYS*
     NET$PROP.SYS*
     NET$VAL.SYS*
     NET$BIND.SYS*
     NET$BVAL.SYS*
     SYS$LOG.ERR

 * These NetWare bindery files will be backed up or restored
   only if you are logged on to a server as Supervisor. See your
   User Guide for more information.

Additionally, Ditto Tools will not back up a number of
temporary files used by the program when these files are found
in the program's directory.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  18.  Formatting Tapes on 386 Machines
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

If you encounter difficulties formatting tapes on a slower 386
machine or receive a message stating "The tape controller is not
responding correctly," make sure your turbo switch is on.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  19.  Hardware Compression Not Supported
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Ditto Tools for DOS, Version 5.1a, does not support
the hardware compression function found on some high-speed
controller cards.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  20.  Common Setup and Configuration Issues
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

1. If you get an "Invalid Interrupt" or "Drive Not Detected"
message when using the Parallel Port tape drive:

a. Use the Iomega printer cable that came with the drive. If a cable
defect is suspected, use a standard printer cable for testing
only.

b. If the parallel port is built into the motherboard and you
are adding a 2nd parallel port option card, set the 2nd parallel
port to LPT2.

c. If the parallel port is built into the motherboard, confirm
that it is enabled. Some motherboard manufacturers have an enable/
disable option in the BIOS setup.


2. If the drive is detected by Ditto Tools for DOS, but not by
Ditto Tools for Windows:

a. Check for virtual driver conflicts by launching Windows in
standard mode. Type Win /S at the c:\ prompt or Win /D:T if using
Windows for Workgroups.

b. Logitech Mouse driver version 6.30 can cause an interrupt
conflict. Upgrade to the latest driver from Logitech or use the
Microsoft-compatible mouse driver that comes with Windows 3.1.


3. Using the Parallel Port Tape Drive with 286 Machines

Iomega does not recommend using the Parallel Port tape drive on 286
machines. The compression algorithms require processor performance
that is not always available with 286 machines. For better
performance, Iomega recommends turning compression off on 286
machines.


4. SCO UNIX Software

Follow the instructions for installing a QIC-80 tape drive found in
the SCO Systems Administrator's Guide that came with the operating
System. After installation, use the tape utility to format, retension,
or erase. If a tape I/O error is reported, format the tape even if it
is a pre-formatted tape. Use the TAR utility to back up and restore
from the tape drive. If you are using only one floppy drive, set the drive
select jumper (located on the back of the tape drive between the data
connector and the power connector) to DS1.


5. Connecting to a Floppy Disk Controller (FDC):

a. Disconnect the 34-pin flat ribbon cable connected to the floppy
disk drives from the FDC. The red stripe on the cable is
connected to pin 1. Write down how the cable is originally oriented
before removing.

b. Connect the cable that was connected to the FDC to the center
Y-cable connector that came with the tape drive. Be sure to
align the red stripes on both cables to each other.

c. Connect the short end of the Y-cable to the tape drive. The red
stripe will be closest to the power connector.

d. Connect the long end of the cable to the FDC, orienting
the red stripe the same way the original cable was when it was
removed.

e. Check the jumper configuration on the back of the tape drive.
There is a jumper located between the data cable and power connector
on the back of the tape drive. This jumper selects between DSS/DSP,
DS1, or DS0. The default mode is DSS/DSP. If the FDC only controls
two floppies use DSS/DSP. If the FDC controls up to four floppies
then DS0 or DS1 may have to be used.

f. Make sure the tape drive has a solid ground connection. This is
especially important for computers with plastic cases. A ground lug
connection is provided on the tape drive that can also be used to
connect a ground wire to the metal chassis or ground point of the
computer.


6. High-Speed Controller

To use the Tape Accelerator/Fast Floppy controller as the main
floppy controller:

a. Disable the standard floppy controller by turning it off in the
BIOS Setup or by a jumper on the board.

b. Set the port address of the Tape Accelerator to 3F0h, interrupt to
6, and DMA channel to 2. Connect the tape drive and floppies as
described in the installation guide or the Connection to a Floppy
Disk Controller section above. Install the backup software.

To use the Tape Accelerator/Fast Floppy controller as a secondary
floppy controller.

a. Leave the existing floppy controller and drives connected as
they are now. Change the address of the new controller or leave it
set to the default--the default settings will usually work. If
not, try I/O address 370h, IRQ 5, and DMA channel 1. It may be
necessary to go through several combinations to find one that
works.

b. Connect the tape drive to the secondary controller and install the
backup software. The software will scan/test for the installed tape
drive. If it is not found, configure the software manually and supply
the appropriate values for the I/O address, IRQ, and DMA settings.

Note: A diagnostics software such as MSD.EXE, Norton Utilities, PC
Tools, or CheckIt can be used to find unused addresses, IRQs, and
DMA channels.


7. Parallel Port Tape Installation

a. Follow the instructions in the install guide and use the original
Iomega cable that came with your drive.

b. To verify that your printer port is working correctly, check the
printer port with a diagnostic utility such as CheckIt or see if a
printer works from this parallel/printer port.

c. Use MSD.EXE or other utility to determine the address of the printer
port. Use this information to manually configure the backup software.

d. When manually configuring a parallel port tape drive, use IRQ 5 or 7
and I/O address 378h, 278h or 3BCh.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  21.  Restoring Files with NetWare Delete Inhibit or Rename
       Inhibit Attributes
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

During a Restore, you cannot overwrite files which have
the NetWare Delete Inhibit (D) or Rename Inhibit (R)
attribute set. To restore these files, you must first manually
remove the Delete Inhibit or Rename Inhibit attribute.


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  22.  Performance Issues on QIC-3020 Parallel Port Tape Drives
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

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


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  23.  Controller Conflicts
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

The Promise 2300 EIDE VLB controller must run in fast
mode (/f parameter) in order to work with floppy tape drives.



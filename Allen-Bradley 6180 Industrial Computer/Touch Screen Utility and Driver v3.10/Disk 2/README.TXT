                    Touch Screen Drivers and Utilities, 
                    Release 2.2.3 for Windows NT
                    -----------------------------------

Copyright (c) 1995-1996, Dynapro Thin Film Products.
All rights reserved.

This document supplements the information in the DTF PC2 (Parallel
Controller) User's Reference.

It contains the following sections:

	1. Installation Diskette
	2. How to Install/Upgrade the Touch Screen Software in Windows NT 4.00
	3. How to Install the Touch Screen Software in Windows NT 3.51
	4. How to Upgrade the Touch Screen Software in Windows NT 3.51
	5. Concurrent Mouse and Touch Screen Operation
	6. Standard Touch Screen Configurations
	7. Uninstalling the Touch Screen Drivers software
	8. Troubleshooting


1.  INSTALLATION DISKETTE
-------------------------

The Dynapro Thin Film Products PC2 Touch Screen Drivers and Utilities
diskette contains all the software you need to use a DTF touch screen
with a PC2 controller in Windows NT.  Included on this diskette are the
touch screen driver, configuration files, and configuration utilities.
This file describes how to install the touch screen driver and utilities
on your computer, and how to import and export the touch screen
configuration.

The following files are contained on this installation diskette:

INSTALL.EXE  - Installation utility
README.TXT   - This file
DISK1        - Identifies this diskette for Windows NT Setup
DEFAULT.INI  - Default touch configuration data file
EPC2NT.SYS   - Kernel Mode Touch Screen Driver
EPC2NT.INF   - Installation script used by Windows NT 4.00
OEMSETNT.INF - Installation script used by Windows NT 3.51
TOUCHCFG.EXE - Touch Screen Configuration Utility executable
TOUCHCFG.HLP - Touch Screen Configuration Utility help file
TOUCHCFG.LNK - Start Menu shortcut to Configuration Utility (NT 4.00)
TOUCHINI.EXE - Touch Screen Configuration Import/Export Utility
MBSWAP.EXE   - Mouse Button Swap Utility executable
MBSWAP.HLP   - Mouse Button Swap Utility help file
MBSWAP.LNK   - Start Menu shortcut to Button Swap Utility (NT 4.00)
XNMBA458.DLL - Dynamic Link Library used by TOUCHCFG.EXE
XNMHN458.DLL - Dynamic Link Library used by TOUCHCFG.EXE
XNMTE458.DLL - Dynamic Link Library used by TOUCHCFG.EXE
MSVCRT40.DLL - Dynamic Link Library used by TOUCHCFG.EXE
UNINSTAL.EXE - Uninstallation utility
UNINSTAL.INF - Uninstallation script used by Windows NT 4.00


2.  HOW TO INSTALL/UPGRADE THE TOUCH SCREEN SOFTWARE IN WINDOWS NT 4.00
-----------------------------------------------------------------------

To install or upgrade the software on your computer, you must have Windows
NT 4.00 running and you must have a floppy disk drive connected.  Follow
these steps:

I) Using Install utility (recommended method)
---------------------------------------------

1.  From the "Start" menu, select "Run". Enter the full path to the
    installation utility in the "Open" field (e.g. A:\install.) 
    You can use the "Browse" button to find the install utility. 
    Choose OK to continue.

2.  The "Dynapro Touch Screen installation" window appears and displays
    the current operating system, driver version, destination directory
    and destination folder. Choose appropriate Driver according to controller
    you have. You will not be able to change any of other information.  
    Select "Next" to proceed with the installation.

3.  The next dialog allows selection of the communication port to use
    with the touch screen controller.  Select the desired port from the 
    list of standard ports or define a custom port using the "Interrupt"
    and "I/O Base Address" lists.  Select "Back" to return to the previous 
    dialog; select "Cancel" to abort the installation or select "Next" 
    to proceed with the installation.

4.  The last dialog confirms the entered installation information.  If you 
    are satisfied with your choices, select "Install" to start the 
    installation.  You may be asked to specify a path to the installation
    files during the install.  A progress indicator will track the current
    status of the installation.

5.  Win/NT must be rebooted in order to activate the touch screen driver.
    When the installation is complete, Select "Reboot" to restart the 
    computer.

6.  The touch screen must be calibrated after installation to ensure proper 
    operation.  Calibration ensures the touch screen is oriented and aligned
    with the video display.  To do this use the "Configuration" item from
    the "Touch Screen Utilities" start sub-menu.  Select "Calibration" and
    then "Calibrate".  Follow the prompts, touching where instructed.  When
    satisified with the calibration, choose "Ok" to both save and activate
    the calibration points defined.

II) Manual
----------

1.  Select Settings\Control Panel from the Start Menu.

2.  Open the Mouse configuration dialog in the Control Panel, and select
    the General property sheet.
   
3.  Select the "Change..." button.

4.  A dialog box will appear entitled Select Device, which will display a
    list of pointer devices compatible with any mouse you have connected
    to your computer.  Ignore this list and select the "Have Disk..."
    button instead.

5.  Insert the Dynapro Thin Film Products PC2 Touch Screen Drivers and
    Utilities for Windows NT diskette in drive A:, and select "OK".

6.  Another dialog box will appear with two entries in the list box:
    "Dynapro Thin Film PC2 Touch Screen Driver" and "Dynapro Thin Film
    PC1 Touch Screen Driver".  Select the appropriate driver and select
    "OK" to begin installation.

7.  Once all the files have been copied, you will be returned to the
    Mouse Properties dialog.  The driver name should now indicate that
    you have a PC2 Touch Screen Driver installed.  Select "Close" to
    finish installation.

8.  A message will appear indicating that the changes will not take effect
    until the computer is restarted.  Select "Yes" to restart the computer.

9.  The next time Windows NT restarts, the touch screen will not be
    operational, because it must be calibrated.  To do this, run the
    Configuration utility, open the Calibration dialog, and perform
    calibration.  Once the calibration has been saved, the touch screen
    will operate normally.

The installation process places the files contained on the installation
diskette in the following locations, on the hard drive where your Windows NT
directory resides (assume it is \WINNT40):

\TOUCH\NT
	DEFAULT.INI
	README.TXT
	TOUCHCFG.EXE
	TOUCHCFG.HLP
	TOUCHINI.EXE
	MBSWAP.EXE
	MBSWAP.HLP

	XNMBA458.DLL
	XNMHN458.DLL
	XNMTE458.DLL
	MSVCRT40.DLL
    
    UNINSTAL.EXE
    UNINSTAL.INF

\WINNT40\INF
	EPC2NT.INF	(note: renamed as OEM*.INF, where * is 0 - 99)

\WINNT40\PROFILES\All Users\Start Menu\Programs\Touch Screen Utilities
	TOUCHCFG.LNK	(note: renamed as Configuration.lnk)
	MBSWAP.LNK	(note: renamed as Mouse Button Swap.lnk)

\WINNT40\SYSTEM32\DRIVERS
	EPC2NT.SYS



3.  HOW TO INSTALL THE TOUCH SCREEN SOFTWARE IN WINDOWS NT 3.51
---------------------------------------------------------------

To install the software onto your computer, you must have Windows NT 3.51
running and you must have a floppy disk drive connected.  Follow these
steps:

1.  Start the Windows NT Setup application from the Main folder.

2.  Select the "Change Mouse or Keyboard..." option from the "Options"
    menu.

3.  A dialog box will appear showing you the currently installed mouse
    and keyboard types.  Select "Other (Requires a disk from a hardware
    manufacturer)" from the "Mouse" box.

4.  A dialog will appear requesting you to insert a diskette in drive A:.
    Insert the Dynapro Thin Film Products PC2 Touch Screen Drivers and
    Utilities diskette in drive A: and select "OK".

5.  Another dialog will appear with the title "Select OEM Option".
    The listbox will contain two entries: "Dynapro Thin Film PC2 Touch Screen
    Driver" and "Dynapro Thin Film PC1 Touch Screen Driver".  Select the
    appropriate driver and select "OK".

6.  You will return to the "Change Mouse or Keyboard" dialog.  The Mouse
    entry should now contain "Dynapro Thin Film PC2 Touch Screen Driver" or
    "Dynapro Thin Film PC1 Touch Screen Driver", depending on which driver
    was installed. Select "Close" to accept the change.

7.  You will be prompted to enter the full path to the installation
    files.  The default should be "A:\".  Select "Continue" to begin the
    installation.  A status bar will appear showing the progress of the
    installation.  Once all the files are copied, the Program Manager
    group will be created, and then you will be returned to the main
    Windows NT Setup dialog.  At this point, the installation is complete.

8.  Exit Windows NT Setup.  A message will appear indicating that the
    changes will not take effect until the computer is restarted.
    Shutdown Windows NT and restart the computer.

9.  The next time Windows NT restarts, the touch screen will not
    be operational, because it must be calibrated.  To do this, run the
    Configuration utility, open the Calibration dialog, and 
    perform calibration.  Once the calibration has been saved, the touch
    screen will operate normally.


The installation process places the files contained on the installation
diskette in the following locations, on the hard drive where your Windows NT
directory resides (assume it is \WINNT35):

\TOUCH\NT
	DEFAULT.INI
	README.TXT
	TOUCHCFG.EXE
	TOUCHCFG.HLP
	TOUCHINI.EXE
	MBSWAP.EXE
	MBSWAP.HLP

\WINNT35\SYSTEM32
	OEMSETNT.INF	(note: renamed as OEMPTR*.INF, where * is 0 - 99)
	XNMBA458.DLL
	XNMHN458.DLL
	XNMTE458.DLL
	MSVCRT40.DLL

\WINNT35\SYSTEM32\DRIVERS
	EPC2NT.SYS



4.  HOW TO UPGRADE THE TOUCH SCREEN SOFTWARE IN WINDOWS NT 3.51
---------------------------------------------------------------

After you've installed the Touch Screen Drivers and Utilities, you may
want to reinstall them.  This is typically only be required when you are
upgrading your software with a new release.  The procedure for this is
much the same as for installing the software for the first time, in
Section 1 above.

Follow these steps to reinstall the Dynapro Thin Film Products PC2
Touch Screen software:

1.  Start the Windows NT Setup application from the Main folder.

2.  Select the "Change Mouse or Keyboard..." option from the "Options"
    menu.

3.  Select the Mouse box to bring down a list of available mouse types.
    The entry for the Dynapro Thin Film PC2 (or PC1) Touch Screen Driver 
    should be highlighted.  To reinstall a touch screen driver that 
    is already installed, you must first install a different type of 
    mouse (or no mouse), and then install the touch screen driver again.
    Your choice depends on whether or not you want concurrent mouse and 
    touch screen operation (See Section 4).

4.  If you do not need concurrent mouse and touch screen operation,
    select "No Mouse or Other Pointing Device" from the list.  If you
    require concurrent mouse and touch screen operation, select the
    entry corresponding to the mouse you have installed on your system.
    Select "Close" to apply the change.  If you have selected a mouse
    that is installed on your system, a dialog box will appear stating
    that a driver for this mouse already exists.  Select "Current" to
    use the existing driver.

5.  In the main Windows NT Setup dialog, the mouse entry should reflect
    your selection made in step 4.  Now select the option to change the
    mouse or keyboard again.

6.  In the resulting dialog box, select the "Mouse" box again to bring
    down a list of supported mouse types.  Select the entry for the
    Dynapro Thin Film PC2 (or PC1) Touch Screen Driver.

7.  A dialog box will appear stating that the driver already exists.
    If you select "Current", the existing driver will be reconfigured.
    If you select "New", the new touch screen driver will be installed
    from the diskette.  Select "New".

8.  Insert the Dynapro Thin Film Products PC2 Touch Screen Drivers and
    Utilities for Windows NT diskette in drive A:.

9.  Next, you will be prompted to enter the full path to the installation
    files.  The default should be "A:\".  Select "Continue" to begin the
    installation.  A status bar will appear showing the progress
    of the installation.  Once all the files are copied, the Program
    Manager groups will be created, and then you will be returned to the
    main Windows NT Setup dialog.  At this point, the installation is
    complete.

10. Exit Windows NT Setup.  A message will appear indicating that the
    changes will not take effect until the computer is restarted.
    Shutdown Windows NT and restart the computer.



5.  CONCURRENT MOUSE AND TOUCH SCREEN OPERATION
-----------------------------------------------

Windows NT 4.00:

To facilitate concurrent mouse and touch screen operation, both device
drivers must be active at the same time.  To accomplish this, all you
have to do is install one, and then install the other.  Windows NT leaves
the previous mouse driver active when a new one is installed.  To install
a driver for your mouse, proceed as in Section 2, only change step 4 as
appropriate to select the type of mouse you are using.  The next time you
restart Windows NT, both touch screen and mouse should operate.

NOTE:  once you install the mouse driver, it will always be active, even
if you install a different type of mouse driver later on.  If you unplug
the mouse from your computer and restart Windows NT, the mouse driver
will fail to load, resulting in an error message.  If you wish to disable
the mouse driver, you must open the Devices dialog in the Control Panel,
highlight the entry for the mouse driver, and select "Startup" to change
its startup state to "Disabled".

Windows NT 3.51:

To facilitate concurrent mouse and touch screen operation, the mouse
driver MUST be installed before the Dynapro Thin Film PC2 (or PC1) 
Touch Screen driver.  When the touch screen driver is then installed, 
the mouse driver is left active.  The next time the computer is powered 
on and Windows NT loads, if there is a mouse attached to the computer, 
it will work normally, as will the touch screen.

If you have already installed the touch screen driver, refer to Section
4, steps 2 and 3, for details on how to activate the mouse driver.  If
you have not already installed the touch screen driver, ensure that your
mouse driver is installed, and then proceed with the touch screen driver
installation in Section 3.



6.  STANDARD TOUCH SCREEN CONFIGURATIONS
----------------------------------------

Included with the software on this diskette is the Touch Screen
Configuration Import/Export Utility TOUCHINI.EXE.  When you install
the touch screen software, this utility is placed in the directory
\TOUCH\NT on your Windows NT drive.  This utility allows you to
configure the touch screen driver by reading a file containing the
configuration and writing the configuration to the Windows NT Registry,
and to extract the touch screen configuration from the Registry and
write it to a file.

By using the TOUCHINI utility, you can easily generate a configuration
file that can be copied and imported to many computers without
requiring manual configuration for each computer.

Exporting:
---------

To export the current configuration from the Windows NT Registry into a
file, execute the following command from a Windows NT DOS command prompt:

        TOUCHINI /o

This creates a file called TOUCH.INI, which contains an ASCII
representation of the touch screen configuration.  You can override the
default filename by specifying a file after the /o command line option
(for example, "TOUCHINI /oCONFIG.INI").  This file can later be used to
import the same configuration into your computer, as per the import
instructions which follow.

Importing:
---------

Also included with the software on this diskette is a default touch
screen configuration file, DEFAULT.INI.  This file is also placed in
the \TOUCH\NT directory when the touch screen driver is installed.
To import this file into the registry, execute the following command
from a Windows NT DOS command prompt:

        TOUCHINI /iDEFAULT.INI

The new configuration will take effect the next time you restart
Windows NT.

IMPORTANT:  any previous touch screen configuration is erased during the
import process, except the calibration data.



7. UNINSTALLING THE TOUCH SCREEN DRIVERS SOFTWARE
-------------------------------------------------

For NT 4.00 users there is uninstall utility (UNINSTAL.EXE) placed in your
Touch Screen directory (e.g. C:\TOUCH\NT). 
From the "Start" menu, select "Run" and enter the full path to the 
uninstallation utility (e.g. C:\TOUCH\NT\UNINSTAL.EXE) and follow the
instructions.

The touch screen software can be also uninstalled by deleting files 
installed in the \TOUCH\NT and WINNT\SYSTEM32\DRIVERS directories.

If desired (but optional) the software's entries in the system registry can
be removed by deleting the 
'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Dtouch' registry key.



8. TROUBLESHOOTING
------------------

It is important to realize that changing the touch screen configuration 
requires data to be written to the Windows registry. Ensure that you 
are logged in as the Administrator or belong to the Administrator group.
Only Administrators have rights to access the registry.

----------------------------------------------------------------------------
Dynapro and PC2 are registered trademarks of Dynapro Thin Film Products.
All other brand and product names are trademarks or registered
trademarks of their respective companies and are hereby acknowledged.


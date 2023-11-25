----------------------------------------------------------------------------
                     DYNAPRO THIN FILM PRODUCTS
               T o u c h   S c r e e n   D r i v e r s
----------------------------------------------------------------------------

                    Parallel Touch Screen Controller
                     Driver Software for Windows/95/98, 
                           Version 2.2.4 
   
             Copyright (c) Dynapro Thin Film Products. 1995-1998.
                         All rights reserved.



DOCUMENT CONTENTS
-----------------

This document supplements the information in the User's Reference.
It contains the following sections:

    1. Installation Diskette
    2. Diskette Contents
    3. Installation
    4. Calibrating the Touch Screen

    5. How to Upgrade the Touch Screen Software
    6. Concurrent Mouse and Touch Screen Operation
    7. Standard Touch Screen Configurations
    8. Uninstalling the Touch Screen Drivers software



1. INSTALLATION DISKETTE
------------------------

This diskette contains all the files needed to install the Touch Screen 
Software for Windows/95/98 on your computer.  Once you have installed this 
software, you may use the full touch screen capabilities of your Dynapro 
Touch Screen Controller.  Some of these features are Microsoft Mouse 
emulation, keyboard emulation (TouchSurround) and software configuration.  
See your User's Reference manual for more information.


2. DISKETTE CONTENTS
--------------------

This disk contains the following files:

	INSTALL.EXE - Installation utility

    VPC2D.VXD	- Touch Screen Virtual Device Driver
    VPC2D.INF   - Installation script used by Windows 95/98
    DEFAULT.INI - Default touch configuration data file
    README.TXT	- This file

    TOUCHCFG.EXE- Touch Screen Configuration Utility executable
    TOUCHCFG.HLP- Touch Screen Configuration Utility help file
    TOUCHINI.EXE- Touch Screen Configuration Import/Export Utility
    TOUCHERR.EXE- Touch Screen Startup Log Utility executable
    MBSWAP.EXE  - Mouse Button Selector Utility executable
    MBSWAP.HLP  - Mouse Button Selector Utility help file

    TOUCHOSI.DLL- Touch Screen Dynamic Link Library
    MSVCRT.DLL  - Touch Utilities Dynamic Link Library
    XNMBA458.DLL- Touch Utilities Dynamic Link Library
    XNMHN458.DLL- Touch Utilities Dynamic Link Library
    XNMTE458.DLL- Touch Utilities Dynamic Link Library
    
    UNINSTAL.EXE- Uninstallation utility.
    UNINSTAL.INF- Uninstallation script file.
    INSX16.DLL  - Uninstallation Dynamic Link Library
    INSX32.DLL  - Uninstallation Dynamic Link Library


3. HOW TO INSTALL THE TOUCH SCREEN SOFTWARE
-------------------------------------------

The software supports multiple touch screen controllers and thus the
installation procedure will vary slightly depending on the controller
being installed.  The biggest differences observed are between PnP
(Plug-and-Play) controllers and those that require manual configuration.


Installing a PnP Controller
---------------------------
Because the touch screen controller uses Plug and Play hardware,
installation of the touch screen software is easy and quick.  To
install, follow these steps:

1.  Insert the PnP ISA card into your machine (make sure it is
    turned off first!).  Power on the machine and start up Windows 95/98.

2.  During Windows 95/98 startup, a prompt dialog will appear on the screen
    with the title "New Hardware Found".  This indicates that Windows 95/98
    has detected the PnP ISA card.  
    
    Note: The A-B PnP PC2 card actually contains two devices, the 
    second one being the touch screen controller.  Skip over the first
    device by selecting "Do not install a driver..." and then selecting
    "OK" to continue (or Next and then Finish - if using Win/95/98 Service
    Pack Two).

3.  Another dialog with the same title will appear for the second
    device.  This time, select "Driver from disk provided by hardware
    manufacturer" and then select "OK".

4.  Insert the Dynapro Touch Screen Drivers Disk into diskette drive A:
    and select "OK" at the "Install From Disk" dialog.

5.  Installation will commence.  Progress will be indicated by a "Copy
    Files" dialog, followed by an "Updating Shortcuts" dialog.  Once
    these two steps have finished, installation is considered complete.
    The "Start" menu now contains an additional entry under "Programs"
    called "Touch Screen Utilities".  This new entry has a sub-menu
    containing:  "Configuration", "Mouse Button Swap" and "Startup Log".


Installing a non-PnP Controller
-------------------------------

A) Using installation utility.

1.  Insert the DTF PC2 - Touch Drivers/Utilities, Windows/95/98 diskette into
    the floppy disk drive.  Then from the "Start" menu, select "Run". 
    Enter the full path to the installation utility in the "Open" field 
    (e.g. A:\install).  You can use the "Browse" button to find the 
    install utility.  Choose OK to continue.

2.  The "Dynapro Touch Screen installation" window will appear and 
    the first dialog will display the following information: 
    operating system, driver version, target directory and target folder.
    You will not be able to change any of this information. Select 
    "Next" to proceed with the installation.

3.  The next dialog will enable you to select the communication port for the
    Touch Screen operation. Select the desired port from the list of 
    standard ports or define a custom port using the "Interrupts"
    and "I/O Address" lists. Select "Back" to go to the previous 
    dialog, select "Cancel" to abort the installation or select "Next" 
    to proceed with the installation.

4.  The last dialog will display all the entered installation information.
    If you are satisfied with your choices, select "Install" to start the 
    installation.  You may be asked to specify paths to files during the 
    installation.
    
5.  A progress indicator displays the progress of the installation.  After 
    all files have been copied, there will be a brief pause while the 
    system attempts to load the driver.  At this point, the installation 
    is complete.

    Note: "Start" menu will be updated with an additional entry under 
          "Programs" called "Touch Screen Utilities".  This new entry has
           a sub-menu containing:  "Configuration", "Mouse Button Swap" and 
           "Startup Log".

11. The touch screen must be calibrated after installation to ensure proper 
    operation.  Calibration ensures the touch screen is oriented and aligned
    with the video display.  To do this use the "Configuration" item from
    the "Touch Screen Utilities" start sub-menu.  Select "Calibration" and
    then "Calibrate".  Follow the prompts, touching where instructed.  When
    satisified with the calibration, choose "Ok" to both save and active
    the calibration points defined.

B) Using "Control Panel".

1.  From the "Start" menu, select "Settings" and then "Control Panel".
    Open the "Add New Hardware" Wizard, then select "Next".

2.  You will be asked if you want Windows to search for your new hardware.
    Select "No" as Windows/95/98 will not detect the presence of the Dynapro
    touch controller.  Select "Next".

3.  The next screen will display a list of hardware categories which can
    be installed.  Highlight the "Mouse" icon and select "Next".

4.  This displays a list of mouse manufacturers and models that Windows/95/98
    already knows about. Select "Have Disk" to ignore this list and install
    directly from a floppy disk.

5.  Insert the Touch Drivers/Utilities, Windows/95/98 diskette into the floppy 
    disk drive and select "OK" at the "Install From Disk" dialog.

6.  This displays a list of touch controllers supported by the installation
    diskette.  Select the entry corresponding to your touch controller and
    then select "Next".

7.  Windows/95/98 will compare the hardware resources required against those 
    that the controller supports and those that your computer is currently 
    using in order to determine a configuration that can be used for the
    controller.

    Note: you must configure the touch controller hardware to conform to the
        configuration Windows/95/98 has determined.  This is the configuration
        that both Windows/95/98 and the driver will be using.  

8.  Select "Next" to proceed with the installation.  After all files have 
    been copied, the installation is complete.  Select "Finish" to exit and
    shut down the computer.
    
9.  Configure the controller to match the pre-determined configuration, 
    install it and restart Windows/95/98.  The "Start" menu will be updated 
    with a "Touch Screen Utilities" entry under "Programs", containing a
    sub-menu with "Configuration", "Mouse Button Swap" and "Startup Log".

WARNING: Do not use the "General" property sheet of the "Mouse" dialog
         to install the driver.


Files Installed
---------------
The following files are placed in the \TOUCH\W9x directory:

    README.TXT          DEFAULT.INI
    TOUCHCFG.EXE        TOUCHCFG.HLP
    MBSWAP.EXE          MBSWAP.HLP
    TOUCHINI.EXE        TOUCHERR.EXE
    TOUCHOSI.DLL        UNINSTAL.EXE
    UNINSTAL.INF        INSX32.DLL
    INSX16.DLL
    
    MSVCRT.DLL          XNMBA458.DLL
    XNMHN458.DLL        XNMTE458.DLL


The following files are placed in the \WINDOWS\SYSTEM directory:

    VPC2D.VXD


NOTE: the Touch Screen software is installed with configuration
      parameters set according to the default configuration.  You
      should not need to change them.  However, if you want to 
      customize your setup, consult your User's Reference for options.



4. CALIBRATING THE TOUCH SCREEN
-------------------------------

Before you can use the touch screen it must be calibrated.  Calibration
ensures the touch screen is oriented and aligned with your video display.
To do this use the "Configuration" item from the "Touch Screen Utilities"
start sub-menu.  Select "Calibration" and then "Calibrate".  Follow the 
prompts, touching where instructed.  When satisified with the calibration,
choose "Ok" to both save and active the calibration points defined.



5. HOW TO UPGRADE THE TOUCH SCREEN SOFTWARE
-------------------------------------------

If you need to re-install the Touch Screen Drivers and Utilities, or
upgrade them as the result of a new software release, then the following
procedure must be followed in order to remove the existing driver from
the system before the new one may be installed (via the procedures in
Sections 2 and 8).

1.  Uninstall current version of the driver as described in section 8.

2.  Proceed with the steps in section 2 to install the new touch screen 
    software from the installation diskette.


6. CONCURRENT MOUSE AND TOUCH SCREEN OPERATION
----------------------------------------------

The Windows 95/98 Touch Screen driver supports concurrent mouse and touch 
screen operation.  To facilitate this, you must ensure that an appropriate
driver is installed for your mouse.  The recommended way for to achieve
this is via the "Add New Hardware" Wizard in the Control Panel.  Connect
your mouse to the computer and instruct the Wizard to search for new
hardware by selecting "Yes" at the prompt on the first screen.  Do NOT
select "No" and manually choose a mouse driver.

Once the Add New Hardware Wizard has detected your mouse and installed
the appropriate mouse driver, your mouse will work concurrently with
the touch screen.

If the Wizard fails to detect your mouse, then it can not be used 
concurrently with the touch screen.  A mouse that is detectable by 
Windows 95/98, such as a Microsoft or Logitech mouse is required.



7. STANDARD TOUCH SCREEN CONFIGURATIONS
---------------------------------------

Included with this software is a Touch Screen Configuration Import/Export 
Utility (TOUCHINI.EXE).  Installed with the touch screen software, this 
utility is located in the \TOUCH\W9x directory.  The utility allows you 
to configure the touch screen driver by importing a file containing the 
configuration data into the Windows 95/98 Registry.  It will also extract the
current touch screen configuration from the Registry and write it to a file.

By using the TOUCHINI utility, you can easily generate a configuration file
that may be copied to other computers and then imported without requiring 
manual configuration of each unit.

Exporting:
---------

To export the current configuration from the Windows 95/98 Registry into a
file, execute the following command from a Windows 95/98 DOS command prompt:

        TOUCHINI /o

This creates a file called TOUCH.INI, which contains an ASCII representation
of the touch screen configuration.  You can override the default filename
by specifying a file after the /o command line option (for example,
"TOUCHINI /oCONFIG.INI").  This file can later be used to import the same
configuration into your unit, as per the import instructions which follow.

Importing:
---------

Also included with this software is a default touch screen configuration 
file (DEFAULT.INI) located in \TOUCH\W9x directory.  To import this 
configuration file into the Windows 95/98 Registry execute the following
command from a Windows 95/98 DOS command prompt:

        TOUCHINI /iDEFAULT.INI

The new configuration will take effect the next time you restart Windows 95/98.

IMPORTANT: all previous touch screen configuration (except calibration) is 
           erased during the import process.



8. UNINSTALLING THE TOUCH SCREEN DRIVER SOFTWARE
------------------------------------------------

To uninstall the touchscreen software you can use utility placed on your
Touch Screen directory "\TOUCH\W9x".
From the "Start" menu, select "Run" and enter the full path to the 
uninstallation utility (e.g. C:\TOUCH\W9x\UNINSTAL.EXE) and follow the
instructions.

----------------------------------------------------------------------------
Dynapro is a registered trademark of Dynapro Systems Inc.
All other brand and product names are trademarks or registered
trademarks of their respective companies and are hereby acknowledged.


Allen-Bradley Company, Inc.
Rockwell Automation
RAC6180 Keypad Configuration Utility
Version 3.10

This File contains installation notes and updates to the user manual.  

General
-------
This Utility allows you to retrieve, modify, and save key codes associated
with certain keys on the computer's faceplate.  The key codes are stored 
in flash memory on the Keyboard Interface Controller (KIC) located in one 
of the computer's option slots.  This utility also allows you to upgrade
the KIC firmware. 

Modifying the default key codes/modes is not recommended unless required by
the application.  If you modify the default key codes, then if the computer
is replaced in the future, you must either 1) transfer the old KIC to the 
new computer, or 2) again modify the key codes in the new KIC to match the 
existing application.  The key code configuration can be saved to a file of
type *.KIC and later restored from the file.

Known Problems
--------------
The accelerator keys don't work when an application or boot file is open and
has focus.  Use the mouse or the <ALT> and arrow keys to move about the menus.

Release notes:
-------------
1) Version 3.10 has been tested using Windows 95, 98, and Windows NT 4.0.

2) This application reads and writes the flash memory of the KIC card.
   A functional KIC card is required for this application to operate.

3) Version 3.10 supports keypads with 66, 69, 70, or 96 keys.  Both 
   Macro/String and Make/Break Typematic key behavior are supported.  
   The Ctrl+Alt+Del sequence and multiple programmable key presses can
   be enabled/disabled via this software utility.


Installation notes:
------------------
1) To install this program run a:\setup.exe, or use the Add/Remove Programs
   applet in the Windows Control Panel.

2) This distribution does not include any *.BOO or *.APP firmware upgrade 
   files for the Keyboard Interface Controller (KIC) ISA board.  Firmware
   upgrades for the KIC are distributed by Technical Support.

Installed files and Location:
-----------------------------

C:\Program Files\RAC6000\KeyConfig\ (Default Location)
      UNINST.ISU        Uninstall information
      KEYCONFIG.EXE     The application
      KEYCONFIG.HLP     Help File
      KEYCONFIG.CNT     Help Contents File
      KEYCONFIG.GID     Help Global Index File
      README.TXT        This file		

%SystemRoot%\SYSTEM for Windows 95 and 98, or
%SystemRoot%\SYSTEM32 for Windows NT     (See Notes 1,2 Below)
      MFC42.DLL         Windows MFC support DLL v4.21.7160
      MSVCRT.DLL        Windows VC++ Run-Time support DLL v7.00.7128

%SystemRoot%\SYSTEM32\DRIVERS            (See Note 3 Below)
      KICDRV.SYS        KIC Windows NT Device Driver v1.01

NOTE 1) The Windows DLLs that are distributed comprise a minimal set
        that support this application. They are installed to the 
        "WINDOWS SYSTEM DIRECTORY" if and only if the DLL does not exist,
        or the existing DLL is at an earlier version or earlier date.
     2) The "WINDOWS SYSTEM ROOT" shown as %SystemRoot% is typically at
        C:\WINDOWS for Windows 95 and 98, and at C:\WINNT for Windows NT, 
        but can be relocated by the user.
     3) The Windows NT device driver KICDRV will be visible in the Devices
        applet of the Windows NT Control Panel after the system is rebooted.
        The status should be "Started" and "Automatic at Startup".  System
        resources and status for KICDRV are reported by NT Diagnostics.

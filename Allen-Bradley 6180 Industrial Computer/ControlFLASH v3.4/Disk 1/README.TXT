***********************************************************************
ControlFLASH Firmware Upgrade Kit                  Updated: Nov 2, 1999
Version 3.4
Release Notes
***********************************************************************

Contents
--------
1. Release Description
2. System Requirements
3. Installation
4. Product Files
5. Known Problems, Issues, Limitations

Release Description
-------------------
The ControlFLASH Firmware Upgrade Kit contains the ControlFLASH 
Firmware Update Tool, which is a 32-bit program that allows you 
to download new firmware into a number of supported products.

It also contains the firmware for the product catalogs that you
ordered. After installing the Kit, these catalogs will be available
in the Catalog Number list box located in the Catalog Number dialog 
box (this dialog is available by clicking Next from the Welcome dialog).

Release History:

v3.4 Nov 2, 1999
  Modified ASA driver (AB_ASA.DLL) to work around a time-out problem
  that occurs in between the polling for power-up and a succeeding
  Update request.

v3.3 May 10, 1999
  Expanded acceptable error codes returned from RSWho request.

v3.2 Apr 30, 1999
  Fixed bug in RSWho invocation that caused OK button to be disabled
  when attempting to update a local 1784-KTCX card.

v3.1 Apr 29, 1999
  Added the device catalog number and serial number to the log file.

v3.0 Mar 26, 1999
  Added support for programming sub-assemblies; Made minor changes to
  the wizard interface to support keyboard-only users.

v2.1 Feb 23, 1999
  Modified ASA driver (AB_ASA.DLL) to ignore bad packets during polling
  for power-up; added catalog number text in SuperWho wait dialog and on
  RSLinx SuperWho caption bar.

v2.0 Feb 8, 1999
  Added support for programming DeviceNet products.

v1.9 Sep 2, 1998
  Corrected error in modification made to v1.7 relating to enabling the
  RSWho OK button which caused all devices to be filtered out in RSLinx
  1.7.

v1.8 Sep 1, 1998
  Corrected invalid entry point function call in ASA driver (AB_ASA.DLL), 
  which caused the DLL to fail initialization with RSLinx 1.7.

v1.7 Aug 28, 1998
  Rebuilt ASA driver (AB_ASA.DLL) using RSLinx 2.00.97.30 SDK headers
  to resolve the problem that caused the RSWho OK button to be disabled
  when selecting the 1756-L1 device. Resolved a communication timeout
  error in the ASA driver that was caused by selecting a device using
  RSWho after navigating through the Linx Gateway over Ethernet.

v1.6 Jun 15, 1998
  Modified WARNING message in the Summary dialog box. Corrected bug 
  in ASA driver (AB_ASA.DLL) that caused a memory exception when the 
  product name length returned in the "Get ID" was greater than 32.
  Added enhancement to AB_ASA to support SetDefinition parameter in
  script file. Added support for RSLinx 2.0.

v1.5 Dec 18, 1997
  Added an auto-indexing feature to the Catalog Number dialog (not 
  available in INTERNAL mode) which causes the catalog number list
  box to automatically index to the catalog number that matches the
  catalog number entered in the edit box. Enhanced the on-line help
  for the AB_ASA driver.

v1.4 Nov 25, 1997
  Modified update status checking by allowing driver to disable 
  revision comparison. Modified download restriction verification by
  allowing driver to disable serial number usage. Corrected polling
  error in ASA driver (AB_ASA.DLL) that caused polling to fail on 
  redundancy modules (1756-L1, 1756-CNBR).

v1.3 Sep 2, 1997
  Replaced all references to "NetFlash" with "ControlFLASH".

v1.2 Aug 18, 1997
  Resolved ddts entry CLDaa11517 (NetFlash locks-out file access
  among separate processes). This error caused file sharing errors
  when more than one person was accessing the same file over a
  common network.

v1.1 Aug 13, 1997
  Resolved ddts entry CLDaa11253 (Receive "Access is denied" error
  when running on multi-user workstations). This error was preventing
  users who do not have administrator privileges from getting past
  the Welcome dialog.

System Requirements
-------------------
· personal computer with at least a 486 processor
· Windows NT 3.51, 4.0, or 95
· at least 16 MB memory

Installation
------------
1. Place the ControlFLASH Firmware Upgrade Kit Disk 1 in your floppy
   disk drive.
2. From the Windows NT 3.51 File Menu, select File...Run. From the
   Windows NT 4.0 or 95 Start menu, select Run.
3. When the dialog box appears, type a:\setup, where "a" is the
   designation of the drive that contains disk 1.
4. Click Run (or OK). You see the Setup Wizard, which guides you
   through the installation process.

Product Files
-------------
ControlFLASH.exe - ControlFLASH main application file
ControlFLASH.hlp - ControlFLASH WinHelp 4.0 file
ControlFLASH.cnt - WinHelp 4.0 contents file
ControlFLASH.log - ControlFLASH log file
DeIsL1.isu       - Uninstall log file
Readme.txt       - This file

In addition to the files described above, you may also receive a
number of firmware and driver files. These files are specific to
the types of products that you will be updating and, therefore,
will vary depending on your product needs.

Known Problems, Issues, Limitations
-----------------------------------
1. The uninstaller will only remove the files that were installed
   in your last installation. If you have performed multiple
   installations of this product in the same directory, then you
   must remove the prior installed files from the directory manually.

AVR Development Tools version 1.21

Welcome to the AVR Development Tools
version 1.21.

The simulator has not been updated and will
not be updated in the future. AVR Studio is
the recommended software for simulation of
AVR devices. The simulator in this package
is only intended for Windows 3.1x users as
AVR Studio requires Windows 95 or Windows NT.
AVR Studio is available at the Atmel Web
(www.atmel.com).


The changes in the Assembler are as follows:

Version 1.21:

1) There has been some problems with the Windows
   version of the AVR Assembler and some Windows
   95 versions. The program generates a General
   Protection Fault when restarting the Assembler
   if all windows were not closed before exit on
   the previous execution. Users who experience
   this problem should enable the option "Close
   all windows before exit" to avoid the problem.

2) There was a problem with the bitwise not
   operator. The error message "Overflow in
   arithmetic operation" was often incorrectly
   generated when this operator was used. This
   problem has been fixed.

3) The problem with erronous intel-hex files caused
   by the device directive has been fixed. 

4) Labels can now correctly be used in .db
   directives.

Version 1.20:

1)  Macros which were referred before they were
    defined resulted in incorrect code. This
    situation will now generate an error message.

2)  In the Data Segment (dseg) the location
    counter started at 0x20. This has been
    changed to 0x60

3)  The Windows version of the assembler does
    not support files larger than 30K. If this
    situation occurs, the situation will now be
    flagged.
    Workarounds: use the include directive or use
    an external editor and the command line version
    of the Assembler.

4)  The Windows Assembler will not enter Insert
    mode when Shift+Ins or Ctrl+Ins are pressed.
    
5)  The Windows Assembler has had problems with
    special versions of Windows 95 during startup.
    Version 1.20 avoids this problem.
    
6)  The warning message when using LDS/STS
    instruction together with a .device at90s2313
    is removed.

7)  New devices are added: AT90S2323, AT90S2343
    and ATMEGA103

8)  .db and .dw directives can be used within
    a macro

9)  ASCII literals are supported: ldi  r16,'A'

10) ASCII strings are supported: .db "String"
    ASCII strings will not be zero terminated.

11) The .dw directive had a problem when used in
    the EEPROM segment (eseg). This has been
    corrected.

12) Calling macros from within another macro is
    not supported. Version 1.20 will issue an
    error message when this is done.


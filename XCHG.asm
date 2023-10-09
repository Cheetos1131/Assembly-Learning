INCLUDELIB kernel32.lib ;Import a standard Windows library
ExitProcess PROTO ;Define an imported library function.

.DATA ;Start of the data section, variable declarations go here

var QWORD ?

.CODE
main PROC ;Program entry procedure, Assembly instructions go here

XOR RCX, RCX
XOR RDX, RDX
MOV RCX, 5
XCHG RCX, var
MOV DL, 3
XCHG DH, DL

CALL ExitProcess ;Execute the imported library function.
main ENDP ;End of the main procedure
END
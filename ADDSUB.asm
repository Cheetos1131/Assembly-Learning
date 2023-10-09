INCLUDELIB kernel32.lib ;Import a standard Windows library
ExitProcess PROTO ;Define an imported library function.

.DATA ;Start of the data section, variable declarations go here

var QWORD 64

.CODE
main PROC ;Program entry procedure, Assembly instructions go here

	XOR RCX, RCX
	XOR RDX, RDX
	MOV RCX, 36
	ADD RCX, var
	MOV RDX, 400
	ADD RDX, RCX
	SUB RCX, 100

CALL ExitProcess ;Execute the imported library function.
main ENDP ;End of the main procedure
END
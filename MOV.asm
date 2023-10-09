INCLUDELIB kernel32.lib ;Import a standard Windows library
ExitProcess PROTO ;Define an imported library function.

.DATA ;Start of the data section, variable declarations go here

var QWORD 100 ;Initialize variable memory



.CODE
main PROC ;Program entry procedure, Assembly instructions go here

	XOR RCX, RCX ;Clear reg
	XOR RDX, RDX ;Clear reg
	MOV RCX, 33  ;Assign 33 to RCX
	MOV RDX, RCX ;Assign RCX to RDX
	MOV RCX, var ;Assign var to RCX
	MOV var, RDX

CALL ExitProcess ;Execute the imported library function.
main ENDP ;End of the main procedure
END
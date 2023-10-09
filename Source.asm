INCLUDELIB kernel32.lib ;Import a standard Windows library
ExitProcess PROTO ;Define an imported library function.

.DATA ;Start of the data section, variable declarations go here

con EQU 12 ;Creates a constant 12

.CODE
main PROC ;Program entry procedure, Assembly instructions go here

	mov rcx, con
	mov rdx, con + 8
	mov rcx, con + 8 * 2
	mov rdx, (con + 8) * 2
	mov rcx, con MOD 5
	mov rdx, (con - 3) / 3
	xor rcx, rcx
	xor rdx, rdx

CALL ExitProcess ;Execute the imported library function.
main ENDP ;End of the main procedure
END
;Cesar Sepulveda
;Date:02/13/19
;CPSC 240
;Extra credit #2:
;Write a program with a loop and indexed addressing that exchanges every 
;pair of values in an array with an even number of elements. Therefore,
;item i will exchange with item i+1, and item i+2 will exchange with item 
;i+3, and so on.

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	element dword 0,1,2,3,4,5,6,7,8,9		;Initializing an array with elements 0-9
.code

main PROC
	mov ESI, element						;Moving the elemnet array to the ESI register
	mov ECX, 9								;Moving the array size(9) to the ECX register

	L1:										;Setting up the loop
	mov EAX, ESI							;Moving the value of ESI to the EAX register
	xchg EAX, [ESI + 1]					    ;Exchanging the integers of EAX and ESI
	mov ESI, EAX							;Moving the value of EAX to the ESI register

	add ESI, TYPE element					;Adding the value of the array to ESI

	loop L1									;End of the loop

	INVOKE ExitProcess, 0
main ENDP
END main

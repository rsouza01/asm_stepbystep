section .data


section .text

global _start

_start:
	nop
	; Put your experiments between the two nops...
	
	mov eax, 0FFFFFFFFh
	mov ebx, 02Dh
	dec ebx
	inc eax

	
	; Put your experiments between the two nops...
	nop


	;-------------------------------------------------------------------
	mov     ebx, 0      ; return 0 status on exit - 'No Errors'
	mov     eax, 1      ; invoke SYS_EXIT (kernel opcode 1)
	int     80h

section .bss
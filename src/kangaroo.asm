section .data

	Snippet: db "KANGAROO"
	
section .text

global _start

_start:
	nop
	; Put your experiments between the two nops...
	
	mov ebx,Snippet
	mov eax,8
DoMore: add byte [ebx],32
	inc ebx
	dec eax
	jnz DoMore





	
	; Put your experiments between the two nops...
	nop


	;-------------------------------------------------------------------
	mov     ebx, 0      ; return 0 status on exit - 'No Errors'
	mov     eax, 1      ; invoke SYS_EXIT (kernel opcode 1)
	int     80h

section .bss

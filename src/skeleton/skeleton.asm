section .data

	Sentence: db "SKELETON",10
	SentenceLength EQU $-Sentence

section .text

global _start

_start:
	nop
	nop
	; Put your experiments between the two nops...
	
	mov eax,4 ; 04H specifies the sys_write kernel call
	mov ebx,1 ; 01H specifies stdout
	mov ecx,Sentence ; Load starting address of display string into ECX
	mov edx,SentenceLength ; Load the number of chars to display into EDX
	int 80H; ; Make the kernel call	

	; Put your experiments between the two nops...
	nop


	;-------------------------------------------------------------------
	mov     ebx, 0      ; return 0 status on exit - 'No Errors'
	mov     eax, 1      ; invoke SYS_EXIT (kernel opcode 1)
	int     80h

section .bss

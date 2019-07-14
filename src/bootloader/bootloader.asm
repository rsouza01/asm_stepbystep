
org 0x7c00

bits 16
start: jmp boot

welcome_msg: db "Welcom in GeenVentersOS!", 0ah, 0dh, 0h
welcome_msg_len: equ $-welcome_msg

%include 'io.asm' 

SECTION .text      ; Section containig code

boot:
cli ; no interrupts
cld ; all that we need to init

;mov eax, 0x1010  ; EAH = Row, EAL = Column (10, 0)
mov ah, 0x10  ; EAH = Row, EAL = Column (10, 0)
mov al, 0x10  ; EAH = Row, EAL = Column (10, 0)
call MovCursor

mov al, 0x23  ; character (#)
call PutChar



hlt ; halt the system

times 510 - ($-$$) db 0
dw 0xAA55 ; Boot Signiture

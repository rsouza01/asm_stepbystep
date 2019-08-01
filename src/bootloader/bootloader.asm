
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

;mov ah, 0x10  ; BH = Row
;mov al, 0x30  ; BL = Column
;call MovCursor

;mov al, 'M'
;call PutChar


mov bh, 0x10  ; BH = Row
mov bl, 0x10  ; BL = Column
mov al, welcome_msg
mov ah, welcome_msg_len
call Print


hlt ; halt the system

times 510 - ($-$$) db 0
dw 0xAA55 ; Boot Signiture

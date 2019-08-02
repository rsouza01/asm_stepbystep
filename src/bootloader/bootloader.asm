
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


  mov ah, 0x12  ; BH = Row
  mov al, 0x12  ; BL = Column
  mov ecx, welcome_msg
  mov edx, welcome_msg_len
  call Print


  ;mov ah, 0x15  ; BH = Row
  ;mov al, 0  ; BL = Column
  ;call MovCursor

  ;mov al, 'G'
  ;call PutChar


  hlt ; halt the system

  times 510 - ($-$$) db 0
  dw 0xAA55 ; Boot Signiture
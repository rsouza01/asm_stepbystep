; IO library
; Version : 1.0
; https://en.wikipedia.org/wiki/INT_10H


;========================================================================================
;MovCursor
;Purpose: Move a cursor to a specific location on screen and remember this location
;Parameters:
;ah = Y coordinate
;al = X coordinate.
;Return: None
MovCursor:
    push edx ; Save edx
    push eax ; Save eax

    mov edx, eax ; position, DH = Row, DL = Column, restore position from eax
    
    mov eax, 0x0200
    int 10h

    pop eax  ; Restore eax
    pop edx  ; Restore edx
    ret

;========================================================================================
;PutChar
;Purpose: Print a character on screen, at the cursor position previously set by MovCursor .
;Parameters:
;al = Character to print
;Return: None
PutChar:
    push ecx ; Save ecx
    push eax ; Save eax

    mov ah, 0x0A ; eah = 0x0A, eal = char
    mov ecx, 0x1 ; print the character 1 time only
    int 10h

    pop eax  ; Restore eax
    pop ecx  ; Restore ecx
    ret


;========================================================================================
;Print
;Purpose: Print a string.
;Parameters:
;ah = Y coordinate, al = X coordinate.
;ecx = buffer, edx = buffer_len
Print:

        push eax ; Save eax
        push ebx ; Save ebx
        push ecx ; Save ecx
        push edx ; Save edx

        mov ebx, eax    ; save X, Y
        mov ebp, ecx    ; put the adress of the buffer in ebp
        ;mov ecx, edx    ; bytes to process
        xor ecx, ecx

    PrintCharInPosition:
        mov eax, ebx
        add al, cl
        call MovCursor ;ah = Y coordinate, al = X coordinate.

        mov al, '@'
        call PutChar
        
        inc ecx
        cmp bl, dh
        jle PrintCharInPosition

    Done:

        pop edx ; Restore edx
        pop ecx ; Restore ecx
        pop ebx ; Restore ebx
        pop eax ; Restore eax

        ret


;mov bh, 0x10  ; BH = Row
;mov bl, 0x10  ; BL = Column
;mov al, welcome_msg
;mov ah, welcome_msg_len

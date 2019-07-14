; IO library
; Version : 1.0
; https://en.wikipedia.org/wiki/INT_10H


;========================================================================================
;MovCursor
;Purpose: Move a cursor to a specific location on screen and remember this location
;Parameters:
;dh = Y coordinate
;dl = X coordinate.
;Return: None
MovCursor:
    push edx ; Save edx

    mov edx, eax ; position, DH = Row, DL = Column, restore position from eax
    mov eax, 0x0200
    int 10h

    pop edx  ; Restore edx
    ret

;========================================================================================
;PutChar
;Purpose: Print a character on screen, at the cursor position previously set by MovCursor .
;Parameters:
;al = Character to print
;bl = text color
;cx = number of times the character is repeated
;Return: None

;AL = Character, BH = Page Number, CX = Number of times to print character	
PutChar:
    push ecx ; Save ecx

    mov ah, 0x0A ; eah = 0x0A, eal = char
    mov ecx, 0x1 ; print the character 1 time only
    int 10h

    pop ecx  ; Restore ecx
    ret


;========================================================================================
;Print
;Purpose: Print a string.
;Parameters:
;ds:si = Zero terminated string
;Return: None
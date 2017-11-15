; Executable name : EATSYSCALL
; Version         : 1.0
; Created date    : 15/11/2017
; Last update     : 15/11/2017
; Author          : Rodrigo Souza
; Description     : A simple assembly app for Linux, using NASM 2.05,
;                   demonstrating the use of Linux INT 80H syscalls
;                   to display text.
;
; Build using these commands:
;   $ nasm -f elf -g -F stabs eatsyscall.asm
;   $ ld -o eatsyscall eastsyscall.o
;

SECTION .data      ; Section containing initialised data
 
EatMsg: db "Eat at Joe's!",10
EatLen: equ $-EatMsg
    
SECTION .bss       ; Section containing uninitialised data

SECTION .text      ; Section containig code

global _start      ; Linker needs this to find the entry point!

_start:
    nop
    mov eax,4
    mov ebx,1

    mov ecx,EatMsg
    mov edx,EatLen
    int 80H

    mov eax,1
    mov ebx,0
    int 80H

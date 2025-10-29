section .data
    sum dw 0

section .text
    global _start

_start:
    mov cx, 25        ; Start from 25
    mov ax, 0         ; Initialize sum = 0

loop_sub:
    add ax, cx        ; sum += cx
    dec cx            ; decrement counter
    cmp cx, 14        ; stop when cx < 15
    jne loop_sub

    mov [sum], ax

    mov eax, 1        ; Exit syscall
    int 0x80

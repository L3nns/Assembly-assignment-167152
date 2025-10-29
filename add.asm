section .data
    sum dw 0

section .text
    global _start

_start:
    mov cx, 15        ; Start from 15
    mov ax, 0         ; Initialize sum = 0

loop_add:
    add ax, cx        ; sum += cx
    inc cx            ; increment counter
    cmp cx, 26        ; check if reached 25
    jne loop_add      ; if not, repeat

    ; Result now in AX
    ; Normally you'd display it, but for simplicity, end program
    mov [sum], ax

    mov eax, 1        ; Exit syscall (Linux)
    int 0x80

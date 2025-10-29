section .text
    global factorial     ; Make function accessible from C

factorial:
    mov eax, 1           ; Initialize result = 1
    cmp edi, 1           ; if n <= 1
    jle done

loop_start:
    imul eax, edi        ; result *= n
    dec edi              ; n--
    cmp edi, 1
    jg loop_start

done:
    ret

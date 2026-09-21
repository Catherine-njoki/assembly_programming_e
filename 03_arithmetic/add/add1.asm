;  nasm -f elf32 add1.asm 
;ld -m elf_i386 add1.o
;./add1
;gdb -silent a.out
;lay asm              # layout assembly
; lay reg             # layout registers
;break _start        #from the break point
;run
;si                   #move code line to line
;c                    #continue execution



section .data
    num1 db 120   ; 01111000b
    num2 db 10    ; 00001010b
    result db 0   ; 10000010

section .text
    global _start

_start:

    ; add [num1], [num2]

    mov al, [num1]
    add al, [num2]       ; al = num1 + num2        10000010
    mov [result], al

n_break:
    mov eax, 1
    xor ebx, ebx
    int 0x80


;  nasm -f elf64 03_direct_memory.asm -o 03_direct_memory.o -g
;  ld 03_direct_memory.o 

;gdb -silent a.out
;lay asm              # layout assembly
; lay reg             # layout registers
;break _start        #from the break point
;run
;si                   #move code line to line
;c                    #continue execution



section .data

    num1 dq 10
    num2 dq 20

section .text
global _start

_start:

    mov rax, [num1]
    add rax, [num2]

    mov rdi, rax

    mov rax, 60
    syscall
;  nasm -f elf64 04_register_indirect.asm -o 04_register_indirect.o -g
;  ld 04_register_indirect.o 

;gdb -silent a.out
;lay asm              # layout assembly
; lay reg             # layout registers
;break _start        #from the break point
;run
;si                   #move code line to line
;c                    #continue execution



section .data

    num dq 50

section .text
global _start

_start:

    mov rbx, num
    mov rax, [rbx]

    mov rdi, rax

    mov rax, 60
    syscall
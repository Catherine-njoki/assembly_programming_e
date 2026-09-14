;  nasm -f elf64 05_base_displacement.asm -o 05_base_displacement.o -g
;  ld 05_base_displacement.o 

;gdb -silent a.out
;lay asm              # layout assembly
; lay reg             # layout registers
;break _start        #from the break point
;run
;si                   #move code line to line
;c                    #continue execution



section .data

    numbers dq 10, 20, 30, 40

section .text
global _start

_start:

    mov rbx, numbers

    mov rax, [rbx + 8]

    mov rdi, rax

    mov rax, 60
    syscall
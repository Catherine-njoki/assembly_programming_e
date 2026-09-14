;  nasm -f elf64 07_base_index_displacement.asm -o 07_base_index_displacement.o -g
;  ld 07_base_index_displacement.o 

;gdb -silent a.out
;lay asm              # layout assembly
; lay reg             # layout registers
;break _start        #from the break point
;run
;si                   #move code line to line
;c                    #continue execution



section .data

    numbers dq 10, 20, 30, 40, 50

section .text
global _start

_start:

    mov rbx, numbers
    mov rcx, 2

    mov rax, [rbx + rcx * 8 + 8]

    mov rdi, rax

    mov rax, 60
    syscall
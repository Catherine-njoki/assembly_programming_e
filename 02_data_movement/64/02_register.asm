;  nasm -f elf64 02_register.asm -o 02_register.o -g
;  ld 02_register.o 

;gdb -silent a.out
;lay asm              # layout assembly
; lay reg             # layout registers
;break _start        #from the break point
;run
;si                   #move code line to line
;c                    #continue execution




section .text
global _start

_start:

    mov rax, 10
    mov rbx, 20

    add rax, rbx

    mov rdi, rax

    mov rax, 60
    syscall
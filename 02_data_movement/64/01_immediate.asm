;  nasm -f elf64 01_immediate.asm -o 01_immediate.o -g
;  ld 01_immediate.o 

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

    add rax, 5

    mov rax, 60
    xor rdi, rdi
    syscall
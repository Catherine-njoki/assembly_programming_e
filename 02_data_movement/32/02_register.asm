;  nasm -f elf32 02_register.asm 
;ld -m elf_i386 02_register.o 
;./a.out
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

    mov eax, 10
    mov ebx, 20

    add eax, ebx

    mov ebx, eax

    mov eax, 1
    int 0x80
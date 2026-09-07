;  nasm -f elf32 04_register_indirect.asm 
;ld -m elf_i386 04_register_indirect.o 
;./a.out
;gdb -silent a.out
;lay asm              # layout assembly
; lay reg             # layout registers
;break _start        #from the break point
;run
;si                   #move code line to line
;c                    #continue execution



section .data

    num dd 50

section .text
global _start

_start:

    mov ebx, num
    mov eax, [ebx]

    mov ecx, eax

    mov eax, 1
    int 0x80
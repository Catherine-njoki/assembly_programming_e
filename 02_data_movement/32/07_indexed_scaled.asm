;  nasm -f elf32 07_indexed_scaled.asm
;ld -m elf_i386 07_indexed_scaled.o
;./a.out
;gdb -silent a.out
;lay asm              # layout assembly
; lay reg             # layout registers
;break _start        #from the break point
;run
;si                   #move code line to line
;c                    #continue execution


section .data

    numbers dd 10, 20, 30, 40 

section .text
global _start

_start:

    mov ebx, numbers
    mov esi, 8

    mov eax, [ebx + esi]

    mov ecx, eax

    mov eax, 1
    int 0x80
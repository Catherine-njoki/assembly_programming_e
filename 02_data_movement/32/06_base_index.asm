;  nasm -f elf32 06_base_index.asm
;ld -m elf_i386 06_base_index.o
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

    mov esi, numbers
    mov edi, 2

    mov eax, [esi + edi * 4]

    mov ebx, eax

    mov eax, 1
    int 0x80
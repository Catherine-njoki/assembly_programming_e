;  nasm -f elf32 05_base_displacement.asm
;ld -m elf_i386 05_base_displacement.o
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

    mov eax, [ebx + 4]

    mov ecx, eax

    mov eax, 1
    int 0x80

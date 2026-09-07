;  nasm -f elf32 03_direct_memory.asm 
;ld -m elf_i386 03_direct_memory.o 
;./a.out
;gdb -silent a.out
;lay asm              # layout assembly
; lay reg             # layout registers
;break _start        #from the break point
;run
;si                   #move code line to line
;c                    #continue execution




section .data

    num1 dd 10
    num2 dd 20

section .text
global _start

_start:

    mov eax, [num1]
    add eax, [num2]

    mov ebx, eax

    mov eax, 1
    int 0x80
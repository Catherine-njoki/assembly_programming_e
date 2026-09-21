;  nasm -f elf32 sub1.asm 
;ld -m elf_i386 sub1.o
;./sub1
;gdb --silent a.out
;lay asm              # layout assembly
; lay reg             # layout registers
;break _start        #from the break point
;run
;si                   #move code line to line
;c                    #continue execution




; sub8.asm
section .data
    num1 db 50   ; 00110010
    num2 db 80   ; 01010000
    result db 0

section .text
    global _start

_start:
    mov al, [num1]
    sub al, [num2]       ; al = 50 - 80
    mov [result], al   ;

    mov eax, 1
    xor ebx, ebx
    int 0x80


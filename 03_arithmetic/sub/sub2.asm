;  nasm -f elf32 div1.asm 
;ld -m elf_i386 div1.o
;./div1
;gdb --silent a.out
;lay asm              # layout assembly
; lay reg             # layout registers
;break _start        #from the break point
;run
;si                   #move code line to line
;c                    #continue execution



; sub16.asm
section .data
    num1 dw 1000
    num2 dw 2000
    result dw 0

section .text
    global _start

_start:
    mov ax, [num1]
    sub ax, [num2]       ; AX = 1000 - 2000
    mov [result], ax


exit:
    mov eax, 1
    xor ebx, ebx
    int 0x80
    

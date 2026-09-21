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




; al = quotient, ah = remainder

section .data
    dividend dw 100   ; ax = 100
    divisor  db 7     ; bl = 7

section .text
    global _start

_start:
    mov ax, [dividend]  ; ax = 100
    mov bl, [divisor]   ; al = 7
    div bl              ; al = 14, ah = 2

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80

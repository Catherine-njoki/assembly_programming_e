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





; ax = quotient, dx = remainder

section .data
    dividend dw 50000   ; Low word
    highpart dw 0       ; High word (DX=0)
    divisor  dw 300

section .text
    global _start

_start:
    mov ax, [dividend]  ; AX = 50000
    mov dx, [highpart]  ; DX = 0
    mov bx, [divisor]   ; BX = 300
    div bx              ; AX = quotient, 166 
                        ; DX = remainder, 200

    ; Exit call
    mov eax, 1     ;sys call number to exit
    xor ebx, ebx   ; 0 for successful exit
    int 0x80       ; invoke call

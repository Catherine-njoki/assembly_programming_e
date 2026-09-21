;  nasm -f elf32 div3.asm 
;ld -m elf_i386 div3.o
;./div3
;gdb --silent a.out
;lay asm              # layout assembly
; lay reg             # layout registers
;break _start        #from the break point
;run
;si                   #move code line to line
;c                    #continue execution




 ; Unsigned division: EDX:EAX / r/m32 → EAX = quotient, EDX = remainder

section .data
    dividend dd 300000000   ; Low part
    highpart dd 0           ; High part
    divisor  dd 1000

section .text
    global _start

_start:
    mov eax, [dividend]
    mov edx, [highpart]
    mov ebx, [divisor]
    div ebx                 ; EAX = 300000, EDX = 0

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80

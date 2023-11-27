;Programa de comparação de dois números informados, em assembly.
;instruções cmp e jg para estudo e pesquisa.
;Projeto - assembly 2° bimestre/27-Nov-2023.
;Author: Luiz Angelo, Feap Computação | Versão: Gabriela Arruda Carriel e Stela Veiga Monteiro.

SYS_EXIT        equ 1
SYS_READ        equ 3
SYS_WRITE       equ 4
STDIN           equ 0
STDOUT          equ 1

section .data
    msg1 db "Digite o primeiro número", 0xa, 0xd
    len1 equ $ - msg1
    msg2 db "Digite o segundo número", 0xa, 0xd
    len2 equ $ - msg2
    msg3 db "O maior é: ", 0xa, 0xd
    len3 equ $ - msg3
    
section .bss
    num1 resb 2
    num2 resb 2
    res  resb 2
    
section .text
    global _start
    
_start:
    ; Imprime a mensagem para o primeiro número
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, msg1
    mov edx, len1
    int 0x80
    
    ; Lê o primeiro número
    mov eax, SYS_READ
    mov ebx, STDIN
    mov ecx, num1
    mov edx, 2
    int 0x80
    
    ; Imprime a mensagem para o segundo número
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, msg2
    mov edx, len2
    int 0x80
    
    ; Lê o segundo número
    mov eax, SYS_READ
    mov ebx, STDIN
    mov ecx, num2
    mov edx, 2
    int 0x80
    
    ;Compara os dois números
    mov eax, [num1]
    mov ebx, [num2]
    cmp eax, ebx
    jg maior_primeiro
    
    maior_segundo:
        mov eax, [num2]
        jmp fim
    
    maior_primeiro:
        mov eax, [num1]
        jmp fim
    
    fim
    
    mov eax, 4
    mov ebx, 1
    mov ecx, msg3
    mov edx, 18
    int 0x80
    
    mov eax, 4
    mov ebx, 1
    mov ecx, eax
    mov edx, 4
    int 0x80

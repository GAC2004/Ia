;Programa Hello World
;Author:Gabriela Arruda Carriel, FEAP Avaré 
;Version:Gabriela Arruda Carriel, curso Engenharia da Cumputação, termo 3°
;Atividade do dia 06/11
;Entrega: até 13/11
;Utilizando tutorial point 

SYS_EXIT  equ 1
SYS_READ equ 3
SYS_WRITE equ 4
STDIN equ 0
STDOUT equ 1
; Este código recebe dois números do usuário e calcula a média entre eles.

section .data
    message1 db "Digite o primeiro número: "
    len1 equ $-message1
    
    message2 db "Digite o segundo número: "
    len2 equ $-message2
    
    message3 db "A média é: "
    len3 equ $-message3

section .bss
    num1 resb 5
    num2 resb 5

section .text
    global _start

_start:
    ; Imprime uma mensagem solicitando o primeiro número.
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, message1
    mov edx, len1
    int 0x80

    ; Lê o primeiro número do usuário.
    mov eax, SYS_READ
    mov ebx, STDIN
    mov ecx, num1
    mov edx, 5
    int 0x80

    ; Imprime uma mensagem solicitando o segundo número.
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, message2
    mov edx, len2
    int 0x80

    ; Lê o segundo número do usuário.
    mov eax, SYS_READ
    mov ebx, STDIN
    mov ecx, num2
    mov edx, 2
    int 0x80

    ; Calcula a média entre os dois números.
    mov eax, [num1]
    add eax, [num2]
    

    ; Imprime a média na tela.
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, message3
    mov edx, len3
    int 0x80

    ; Sai do programa.
    mov eax, 1
    mov ebx, 0
    int 0x80

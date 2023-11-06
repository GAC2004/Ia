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
STDOUT equ 2
global _start

section .data

name_buffer: resb 10

message: db "Digite seu nome: ", 10
message_len equ $ - message

greeting: db "Saudações, "
greeting_len equ $ - greeting

section .text

_start:

; Alocar um buffer na memória para armazenar o nome

mov eax, 4
mov ebx, 2
mov ecx, message
mov edx, message_len
int 0x80

; Ler o nome do teclado

mov eax, 3
mov ebx, 0
mov ecx, name_buffer
mov edx, 10
int 0x80

; Mostrar o nome na sequência precedido com a mensagem "Saudações, "

mov eax, 4
mov ebx, 2
mov ecx, greeting
mov edx, greeting_len
int 0x80

mov eax, 4
mov ebx, 2
mov ecx, name_buffer
mov edx, eax
int 0x80

; Sair do programa

mov eax, 1
mov ebx, 0
int 0x80

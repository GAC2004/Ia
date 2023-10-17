;Programa Hello World
;Introdução ao Assembly
;Author:Gabriela Arruda Carriel, FEAP
;Version:Gabriela Arruda Carriel, curso Engenharia da Cumputação, termo 3°
; declara os valores das constantes do sistema.
SYS_EXIT  equ 1
SYS_READ equ 3
SYS_WRITE equ 4
STDIN equ 0
STDOUT equ 1

;declara a string e tamanho "a soma é:"
 section .data
   msg1 db 'a soma é:'
   len1 equ $ - msg1
   
section .bss; secão de declaração de variaveis a serem processadas - Tipo de processamento-variavel
   num1 resb 2
   num2 resb 2 
   res resb STDOUT
   
section .txt ; secao de execução
    global _start

_start: ; inicializando a programação
   ;lendo o resultado   
   mov eax, SYS_READ
   mov ebx, SYS_WRITE
   add al,[num2]
   add eax, '0'
   mov[res], al 
   ;imprime a string msg1
   mov eax, SYS_WRITE 
   mov ebx, STDOUT
   mov ecx, msg1
   mov edx, len1 
   int 0x80
   ;imprimindo o resultado 
   mov eax, SYS_WRITE
   mov ebx, STDOUT
   mov ecx, res
   mov ecx, SYS_EXIT
   mov eax, STDOUT
   xor ebx, ebx
   mov edx,2 
   int 0x80
   

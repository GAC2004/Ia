;Programa Hello World
;Introdução ao Assembly
;Author:Gabriela Arruda Carriel, FEAP

;Hardware da maquina inteligencia artificial
;Version:Gabriela Arruda Carriel, curso Engenharia da Cumputação, termo 3°

SYS_EXIT  equ 1
SYS_READ equ 3
SYS_WRITE equ 4
STDIN equ 0
STDOUT equ 1

section .data ;secao de dados iniciada
              ; chamada (mensagem) para informar 1 o numero 
   msg1 db'Insira um digito', 0xa, 0xd
   len1 equ $-msg1
   
              ; chamada (mensagem) para informar 2 o numero 
   msg2 db 'insira o segundo digito', 0xa, 0xd
   len2 equ $-msg2
              ; chamada (mensagem) para informar resultado(soma)
              
   msg3 db 'a soma é:'
   len3 equ $-msg3

section .bss  ; secaao de declaracao de variaveis a serem processadas - Tipo de processamento-variavel
   num1 resb 2
   num2 resb 2
   res resb STDOUT 
   
section .txt  ; secao de execucao
   global _start
   
_start:      ; iniciando programacao

             ; imprime a string msg1
   mov eax,SYS_WRITE
   mov ebx, STDOUT
   mov ecx, msg1
   mov edx, len1
   int 0x80
   
            ; le o primeiro numero 
   mov eax, SYS_READ
   mov ebx, STDIN
   mov ecx, num1
   mov edx, 2
   int 0x80
           ; imprime a string msg2
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, msg2
    mov edx, len2
    int 0x80
          ; le o segundo numero
    mov eax, SYS_READ
    mov ebx, STDIN
    mov ecx, num2
    mov edx, 2
    int 0x80
    ; move o primeiro numero para o registro eax e subtrai o ASCII0 prar converter pro DEC (decimal)
    mov eax, [num1]
    sub eax, '0'
    
    ;move o segundo numero para o registro ebx e subtrai a ASCII0 para converter pro DEC(decimal)
    mov ebx, [num2] 
    sub ebx,'0'
    
    ;soma eax e ebx
    add eax, ebx
    
    
    ;adiciona '0' para converter de decimal para ASCII
    add eax,'0'
    
    ;armazenamento a soma na localizacao de memoria 'res'
    mov[res], eax
    
    ;imprime a string msg3
    mov eax,SYS_WRITE
    mov ebx, STDOUT
    mov ecx, msg3
    mov edx, len3
    int 0X80
    
    ;imprime o resultado
    mov eax, SYS_WRITE
    mov ebx,STDOUT
    mov ecx,res
    mov edx, 2
    int 0x80
    
    
    
    
    
    
    




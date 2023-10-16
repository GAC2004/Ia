;Programa Hello World
;Introdução ao Assembly
;Author:Gabriela Arruda Carriel, FEAP

;Hardware da maquina inteligencia artificial

SYS_EXIT  equ 1 ;Interrupcao - quando coloca operacoes de entraga saida etc  - saida do sistema
SYS_READ equ 3;Interrupcao- coloca em masculo para endenter o codigo para mostrar que essa parte importante - Interrupcao de leitora 
SYS_WRITE equ 4 ; escrever
STDIN equ 0;
STDOUT equ 1 

section .data ; secao.nome- secao de dados 
   msg db 'Hello World'; varievel tipo da varivel e conteudo da mensagem 
   len equ $- msg; pegar o conteudo e pega na memoria e mostra na tela- $pegar o entereco
   
section .text;iniciar a secao de texto /mensagense alocacao de memoria 
   global _start; colecao de daos declarados
   
_start:; tem que especificar tudo no Assembly - precisa declarar
   mov edx, len ; comprimento da mensagens 
   mov ecx, msg; mensagens para escrever 
   mov ebx, STDOUT; descritor do arquivo(saida).
   mov eax, SYS_WRITE ; descritor do arquivo (entrada)
   int 0x80  ; chamada kernel
   mov eax, SYS_EXIT 
   int 0x80 ; chamada kernel
   
   
   
   

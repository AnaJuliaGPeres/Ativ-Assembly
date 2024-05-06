.MODEL small ;Define modelo de memória small
.STACK 64  ;Define espaço de alocação formato bits 64 bytes - aloca um espaço de 64 biytes para a pilha

.DATA ;Inicio da seção 

message db 'soldador', '$' ; Define uma mensagem e termina com $ |(sempre tem que terminar com $ - $- quer dizer "o fim da mensagem "

.CODE ; Inicio da seção do codigo
main proc ;Define o inicio do procedimento principal

mov ax,@data ;Carrega o endereço do segmento em ax
mov ds, ax ;Move o valor em AXX para o registrador ds 

mov ah,9h ;Preparar o registrador AH para a função 09h do dos (09h - função de execução- escrever string);
mov dx, offset message; Vai fazer o "shift" - deslocamento da msg em DX

int 21h ; INstrução de interrupção;
main endp ;Marca o fim do procedimento - endpoint - conta o ponto - referencia do registrador para dizer onde começa e onde termina; 

end main ;Indica o fim 


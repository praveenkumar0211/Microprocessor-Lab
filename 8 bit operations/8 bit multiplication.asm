
;Program for Multiplying 2, 8 bit numbers

assume cs:code,ds:data
data segment 
	opr1 db 1111h
        opr2 db 2222h
        result db 00H
        res db 00H
data ends
code segment
        org 0300h
start:  mov ax,data
        mov ds,ax

        mov al,opr1
        mov bl,opr2
	mov ch,00h
	mul bl
here:  mov result,ah
       mov res,al
        mov ah,4ch
        int 21h
	code ends
end start

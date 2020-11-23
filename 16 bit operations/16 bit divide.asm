;program to divide 16 bit numbers
assume cs:code,ds:data
data segment 
	opr1 dw 2222h
        opr2 dw 1111h
        quotient dw 0000H
	remainder dw 0000H      
data ends
code segment
        org 0400h
start:  mov ax,data
        mov ds,ax
	mov dx,0000h
        mov ax,opr1
        mov bx,opr2
	    div bx
here:	mov quotient,ax
	    mov remainder,dx
	    mov ah,4ch
        int 21h
	code ends
end start

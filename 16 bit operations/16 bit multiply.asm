assume cs:code,ds:data
data segment 
	opr1 dw 1111H
        opr2 dw 9999H
        res1 dw 0000H
        res2 dw 0000H
data ends
code segment
        org 0300h
start:  mov ax,data
        mov ds,ax
	mov dx,0000h
        mov ax,opr1
        mov bx,opr2
	mul bx
       mov res1,dx
       mov res2,ax
        mov ah,4ch
        int 21h
	code ends
end start

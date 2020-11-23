assume cs:code,ds:data
data segment
	str1 db "mahesh$"
	str2 db ?
data ends
code segment
	org 0100h
start:  mov ax,data
	mov ds,ax
	lea si,str2
	lea di,str1
	add di,5
	mov cx,6
reverse:
mov al,[di]
mov [si],al
inc si
dec di
loop reverse
mov ah,9
lea dx,str2
int 21h
mov ah,4ch
int 21h
code ends
end start

; Program to search for a string
assume cs:code,ds:data

data segment
	count dw 0008h
	status dw 0000h
	str1 db 00h,11h,22h,33h,44h,55h,66h,77h
	str2 db 88h
data ends

code segment
	org 0100h
start: mov ax,data
	mov ds,ax
	mov es,ax
	mov dx,count	
	mov cx,count
	mov al, str2
	mov di, offset str1
	cld
	repne scasb
	je s1
	mov status, 0000h
	jmp s2
s1:	sub dx,cx
	mov status, dx	
s2:	mov ah,4ch
	int 21h
code ends
end start

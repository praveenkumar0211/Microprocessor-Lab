; Program to sort an array in Descending order
assume cs:code,ds:data
data segment
	count db 08h
	org 0010h
	matrix1 db 77h,33h,22h,11h,44h,55h,66h,00h
data ends
code segment
	org 0100h
start:  mov ax,data
	mov ds,ax
	mov al,count
	mov ah,00h
	dec ax
here:	mov cx,ax
	mov si, offset matrix1
here1:	mov bl, [si]
	cmp bl,[si+1]
	jge next
	xchg bl,[si+1]
	mov [si],bl
next:	inc si
	loop here1
	dec ax
	jnz here
	mov ah,4ch
	int 21h
code ends
end start

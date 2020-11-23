;Program to add two bcd numbers
assume cs:code ,ds:data
data segment
    inp1 db 21h
    inp2 db 97h
    carry db 00h
    sum db 00h
data ends
code segment
	org 0100h
start:	mov ax,data
	mov ds,ax
    	mov al,inp1
    	mov bl,inp2
    	mov cl,00h
    	add al,bl
    	daa
    	jnc skip
    	mov carry,01h
skip:	mov sum,al
    	mov ah,4ch
	int 21h
code ends
end start

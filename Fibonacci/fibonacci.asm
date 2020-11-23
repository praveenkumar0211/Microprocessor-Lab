; Program to generate Fibonacci series
assume cs:code,ds:data

data segment
      count db 0AH
data ends

code segment
 org 0100h
start:
 mov ax,data
 mov ds,ax
 mov ax,00H
 mov bx,01H
 mov cl,count
l1: add ax,bx
 mov [si],ax
 mov ax,bx
 mov bx,[si]
 inc si
 loop l1
 mov ah,4ch
 int 21h
code ends
end start

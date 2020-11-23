assume cs:code,ds:data
data segment
org 00h         ;directive to store the values in different address
x dd 20.4375	;input for first operand
org 10h
y dd 20.4375	;input for second operand
org 20h
sum dd ?
data ends

code segment
start:
mov ax,data
mov ds,ax
finit		;initialise 8087 stack for operations
fld x		;load the value into stack 
fld y		
fadd st(0),st(1) ; add the contents in stack
fst sum		 ;store the value back into stack

mov ah,4ch
int 21h
code ends
end start

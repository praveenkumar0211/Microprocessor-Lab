;Program for subtracting 2, 8 bit numbers

assume cs:code,ds:data
data segment 
	a db 11h
  b db 99h
  difference db 00H
	carry db 00H      
data ends
mov ax, dataseg
mov ds, ax
mov ah, a
mov bh, b
mov ch, 00h
sub ah, bh
jnc here
neg ah
inc ch
here:
mov difference, ah
mov carry, ch
mov ah, 4ch
int 21h

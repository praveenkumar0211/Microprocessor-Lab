; Program to find cube of a number
;Input at r1
MOV R0,#00
MOV A,r1
MOV B,A
MUL AB
MOV B,r1
MUL AB
MOV 03,B
MOV r4,A
HERE: SJMP HERE

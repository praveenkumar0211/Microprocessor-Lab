;Program to multiply two numbers in 8051
;Inputs in r1 and r2
MOV R0,#00
MOV A,r1
MOV B,r2
DIV AB
MOV 03,A
MOV r4,B
HERE: SJMP HERE

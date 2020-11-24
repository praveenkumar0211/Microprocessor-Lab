;Program to subtract two numbers in 8051
; Inputs in r1 and r2
MOV R0,#00
CLR C
MOV A,r1
SUBB A,r2
JNC LABEL
INC R0
CPL A
INC A
LABEL:
MOV r4,A
MOV 03,R0
HERE: SJMP HERE

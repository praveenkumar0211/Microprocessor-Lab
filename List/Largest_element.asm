; Program to find Largest element in list
assume cs:code, ds:data

data segment
    arr db 05h, 0Bh, 06h, 01h, 00h, 08h
    org 0010h
    arrsize dw 0005h
    org 0020h
    large db ?
data ends

code segment

    	org 0100h

start:  MOV AX, data
        MOV DS, AX
        MOV SI , offset arr
        MOV CL, [SI]
	MOV CH, 00
	INC SI
	MOV AL,[SI]
	DEC CL
	INC SI
L1:	CMP AL,[SI]
	JNC SKIP
	MOV AL,[SI]
SKIP:	INC SI
	LOOP L1
	MOV large,AL
	
   MOV AH, 4ch
        INT 21h

code ends
end start

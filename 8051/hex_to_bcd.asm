;Program to convert hex to bcd in 8051
mov a,#4fh
mov b,#64h
div ab
mov r1,a
mov a,b
mov b,#0ah
div ab
mov r2,a
mov r3,b
here:sjmp here

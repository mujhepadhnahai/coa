;NAME: Guru Prasad Panda
;Rrg no: 234016047

.data 
count db 04h
value db 09h, 10h, 05h, 03h
res db 0
.code 
MAIN PROC
       MOV AX, DATA
       MOV DS, AX
       MOV CL,  COUNT
       DEC CL
       LEA SI, VALUE
       MOV AL, [SI]
   UP: INC SI
       CMP AL, [SI]
       JNL NXT
       MOV AL, [SI]
   NXT:DEC CL
       JNZ UP
       LEA DI , RES
       MOV [DI],AL
END MAIN
         
;NAME: GURU PRASAD PANDA
;REGNO: 2341016047    
   MOV BX, 2000H
   MOV AL,[BX]
   MOV CL,08H
   MOV CH,00H    
L2:SHR AL,1H 
   JC L1
   INC CH
L1:DEC CL
   JNZ L2
   INC BX
   MOV [BX],CH;
   HLT

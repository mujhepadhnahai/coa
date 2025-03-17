;NAME: GURU PRASAD PANDA
;REGNO: 2341016047 
;SUM AND AVERAGE                  
MOV SI,5000H 
MOV CL,[SI];                   
MOV BL,CL 
MOV BH,00H                           
MOV DX,0000H                         
MOV AX,0000H 
MOV DL,00H 
L2: INC SI 
    INC SI                                           
    ADD AX,[SI]            
    JNC L1 
    INC DL 
L1: DEC CL 
    JNZ L2 
    INC SI 
    INC SI 
    MOV [SI],AX 
    INC SI 
    INC SI 
    MOV [SI],DX
    DIV BX 
    INC SI 
    INC SI 
    MOV [SI],AX     
    INC SI 
    INC SI 
    MOV [SI],DX
    HLT 
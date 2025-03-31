;Name-Guru Prasad Panda,RegdNo- 2341019202
;Obj2

.DATA
    Count DB 06
    Value DB 09H,0FH,14H,45H,24H,3FH

.CODE
    Main PROC
        MOV AX,DATA
        MOV DS,AX
        MOV CH,Count
        DEC CH
    up2:MOV CL,CH
        LEA SI,Value
    up1:MOV AL,[SI]
        CMP AL,[SI+1]
        JC down
        MOV DL,[SI+1]
        XCHG [SI],DL
        MOV [SI+1],DL
   down:INC SI
        DEC CL
        JNZ up1
        DEC CH
        JNZ up2
    END Main
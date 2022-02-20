; print lower case letters from a to z in reverse order
.MODEL SMALL
.STACK 100H
.DATA
   MSG DB 'a to z in reverse order : $'
   
.CODE
   MAIN PROC
    MOV AX , @DATA
    MOV DS , AX
    
    
    MOV AH , 9
    LEA DX , MSG
    INT 21H
    
    MOV CX , 26
    
    MOV AH , 2
    MOV DL , 122
    
    @LOOP:
      INT 21H
      
      DEC DL
      DEC CX
      
    JNZ @LOOP 
    
    
    
    
    MOV AH ,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
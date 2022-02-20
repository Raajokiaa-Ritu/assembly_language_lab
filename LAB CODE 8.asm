;print from 0 to 9   

.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 'print from 0 to 9 : $'

    
.CODE 
   MAIN PROC
    
   MOV AX , @DATA
   MOV DS , AX
   
   MOV AH , 9  
   LEA DX , MSG 
   INT 21H
   
   MOV CX , 10
   
   MOV AH , 2
   MOV DL , 48
   
   @LOOP:
      INT 21H
      INC DL
      DEC CX
   JNZ @LOOP
   
   
   
   MOV AH, 4CH 
   INT 21H
   MAIN ENDP
END MAIN

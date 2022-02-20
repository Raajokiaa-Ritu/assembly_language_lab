;upper case letters from A to Z    

.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 'print from A to Z : $'

    
.CODE 
   MAIN PROC
    
   MOV AX , @DATA
   MOV DS , AX
   
   MOV AH , 9  
   LEA DX , MSG 
   INT 21H
   
   MOV CX , 26
   
   MOV AH , 2
   MOV DL , 65
   
   @LOOP:
      INT 21H
      INC DL
      DEC CX
   JNZ @LOOP
   
   
   
   MOV AH, 4CH 
   INT 21H
   MAIN ENDP
END MAIN

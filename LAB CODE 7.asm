.MODEL SMALL
.STACK 100H
.DATA
   MSG  DB 'THE 256 ASCII CHARACTERS ARE :',0AH,0DH,'$'
   LINE DB  0AH,0DH,'$'
   
   
.CODE
   
   MAIN PROC
    MOV AX , @DATA
    MOV DS , AX
    
    MOV AH , 2
    LEA DX , MSG
    INT 21H
    
    MOV CX , 256 ;initialize cx,
    
    MOV AH , 2
    MOV DL , 0 ;initialize DL with 1st ascii character
    
    @LOOP:
       INT 21H
         
       INC DL  
       DEC CX 
       
        
    JNZ @LOOP
       
    
    
    MOV AH ,4CH
    INT 21H
    MAIN ENDP
   
END MAIN
    
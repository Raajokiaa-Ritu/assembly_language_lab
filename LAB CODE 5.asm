.MODEL SMALL
.STACK 100H
.DATA 
    
     PROMPT_1  DB 0AH,0DH,'enter three initials : $'
     ASTERICKS DB '***********',0AH,0DH,'$'
     NEWLINE   DB 0DH,0AH,"$" 
     MSG DB 63
     
.CODE 
   MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH , 2
    MOV DL , MSG
    INT 21H
    
    MOV AH , 9
    LEA DX , PROMPT_1
    INT 21H
    
    ;user input
    MOV AH , 1
    INT 21H
    MOV BH , AL
     
    ;user input
    MOV AH , 1
    INT 21H
    MOV BL , AL
    
    ;user input
    MOV AH , 1
    INT 21H
    MOV CL , AL  
    
    ;---NEWLINE
    MOV AH , 2
    MOV DL ,0AH
    INT 21H
    MOV DL ,0DH
    INT 21H 
    
    
    MOV AH , 9
    LEA DX , ASTERICKS
    
    INT 21H 
    INT 21H 
    INT 21H 
    INT 21H
    INT 21H   
    
    MOV ASTERICKS+4 , BH
    MOV ASTERICKS+5 , BL
    MOV ASTERICKS+6 , CL
    INT 21H
    
    MOV ASTERICKS+4 , "*"
    MOV ASTERICKS+5 , "*"
    MOV ASTERICKS+6 , "*" 
    
    
    INT 21H
    INT 21H 
    INT 21H
    INT 21H 
    INT 21H
    
    ;BEEP
    MOV AH , 2
    MOV DL , 7H
    INT 21H 
    int 21h
    int 21h
    int 21h
    
    
    MOV AH , 4CH
    INT 21H
    MAIN ENDP
END MAIN
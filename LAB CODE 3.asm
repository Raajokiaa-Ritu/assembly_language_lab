.MODEL SMALL
.STACK 100H

.DATA 
      SQ  DB '#########',0AH,0DH,'$'
      
   
   
.CODE 
   MAIN PROC
      
      MOV AX , @DATA
      MOV DS , AX  

      MOV AH , 1 
      INT 21H   
      MOV BL, AL 
      SUB BL , 11H 
                     
      MOV AH ,2
      MOV DL ,0AH
      INT 21H
      MOV DL ,0DH
      INT 21H
      
                     
      MOV AH , 9
      LEA DX , SQ
      INT 21H
      INT 21H
      INT 21H
      INT 21H 
      MOV SQ+4,"1"
      MOV SQ+5,BL  
      
      INT 21H  
      
      MOV SQ+4,"#"
      MOV SQ+5,"#"
      INT 21H    
      INT 21H
      INT 21H
      INT 21H
      
      
      MOV AH , 4CH
      INT 21H
      MAIN ENDP
END MAIN
      
      
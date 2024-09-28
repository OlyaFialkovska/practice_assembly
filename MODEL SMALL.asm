MODEL SMALL
.386
.STACK 100H
.data
WH DB 'Hello, World!$'
.code
	MAIN:
	     mov ax,@data
	     mov ds,ax
	     LEA DX,WH
	     MOV AH,09H
	     INT 21H
	     MOV AH,4CH
INT 21H
END MAIN
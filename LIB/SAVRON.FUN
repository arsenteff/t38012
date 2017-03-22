	.TITLE SAVRON
;*******************************************
; Ž„Žƒ€ŒŒ€ ‘€‘…ˆŸ …ƒˆ‘’Ž‚ Ž–…‘‘Ž€
;*******************************************
SAVRON:
	MOV	R1,-(SP)
	MOV	R2,-(SP)
	MOV	R3,-(SP)
	MOV	R4,-(SP)
	MOV	R5,-(SP)
	MOV	12(SP),R5
	JSR	PC,@(SP)+
	MOV	(SP)+,R4
	MOV	(SP)+,R3
	MOV	(SP)+,R2
	MOV	(SP)+,R1
	MOV	(SP)+,R5
	RETURN

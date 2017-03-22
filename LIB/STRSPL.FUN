	.TITLE STRSPL
;*********************************
; ‘‹ˆŸˆ… ‘’ŽŠ ‚ “”…… "BUFLIB"
;*********************************
; IN	- R0: ŠŽ‹-‚Ž ‘’ŽŠ ‘‹ˆŸˆŸ
;	  SP: ‘‘›‹Šˆ € ‘’ŽŠˆ
; OUT	- R0: ‘‘›‹Š€ € ‘’ŽŠ“
;*********************************
STRSPL: MOV	R5,-(SP)
	MOV	R1,-(SP)
	MOV	R0,-(SP)
	MOV	R0,R5
	MOV	#BUFLIB,R1
1$:	MOV	R5,R0
	ASL	R0
	ADD	SP,R0
	.STRCOP 6(R0),R1,R1
	DEC	R5
	BGT	1$
	MOV	(SP)+,R0
	MOV	(SP)+,R1
	MOV	(SP)+,R5
3$:	MOV	(SP)+,(SP)	       ;‚Ž‘‘’€Ž‚ˆ’œ ‘’…Š - €ƒ“Œ…’› ‚ ‘’…Š…
	SOB	R0,3$
	MOV	#BUFLIB,R0
	RETURN

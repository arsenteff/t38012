	.TITLE STRSPL
;*****************************************
; IN	- R0	:‘‘›‹Š€ € ‘’ŽŠ“ Žˆƒˆ€‹
;	  2(SP) :‘‘›‹Š€ € ‚›•Ž„Ž‰ “”…
; OUT	- R0	;‘‘›‹Š€ € ‚›•Ž„Ž‰ “”…
;*****************************************
STRCOPY:
	MOV	R4,-(SP)
	MOV	R2,-(SP)
	MOV	R1,-(SP)
	MOV	R0,R4
	MOV	10(SP),R0
	MOV	#BUFLIB,R2
	CMP	R0,R2
	BLT	3$
	BEQ	1$
	BITB	#177,-(R0)
	BEQ	1$
	INC	R0
1$:	CMP	R2,#BUFLIB+80.	       ;Žƒ€ˆ—ˆ’…‹œ ‚›•Ž„ŽƒŽ “”…€
	BGT	4$
	INC	R2
	MOVB	(R4)+,R1
	MOVB	R1,(R0)+
	BITB	#177,R1
	BNE	1$
2$:	MOV	(SP)+,R1
	MOV	(SP)+,R2
	MOV	(SP)+,R4
	MOV	(SP)+,(SP)	       ;‚Ž‘‘’€Ž‚ˆ’œ ‘’…Š - €ƒ“Œ…’ ‚ ‘’…Š…
	RETURN
3$:	MOV	R2,R0
4$:	MOVB	#200,(R0)+
	BR	2$

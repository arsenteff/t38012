	.TITLE NULCLR
;****************************
; Ž„€‚‹…ˆ… …‡€—€™ˆ• “‹…‰
;****************************
NULCLR:
	MOV	R1,-(SP)
	MOV	R0,-(SP)
	BITB	#177,@R0
	BEQ	2$
	MOV	R0,R1
	CMPB	(R1)+,#60	;‘€‚…ˆ… ‘ ‘ˆŒ‚Ž‹ŽŒ "0"
	BEQ	.-4
	BITB	#177,@R1
	BEQ	3$
	DEC	R1
	BITB	#177,@R1
	BEQ	2$
	MOVB	(R1)+,@R0
	BITB	#177,(R0)+
	BNE	.-6
1$:	MOV	(SP)+,R0
	MOV	(SP)+,R1
	RETURN
2$:	MOVB	#60,(R0)+
	MOVB	#200,@R0
	BR	1$
3$:	MOVB	#60,(R0)+
	MOVB	-(R1),(R0)+
	MOVB	#200,@R0
	BR	1$

;	CMP	R0,R1
;	BEQ	6$
;	.ASCII <17>/EMPTY./<200>
;6$:	MOV	#.-10,R0
;	TST	(SP)+
;	BR	3$+2

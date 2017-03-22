	.TITLE R50ASC
;***************************************
; R50ASC…Ž€‡Ž‚€ˆ… ‘‹Ž‚€ RAD50 ‚ ASCII ŠŽ„
;***************************************
; IN	- R0: ˆ‘•Ž„›‰ ŠŽ„
; OUT	- R0: ‘‘›‹Š€ € ‘’ŽŠ“
;***************************************
	.BYTE	17,0,0,0,16,200
R50ASC: JSR	R5,SAVRON	;‘Ž•€…ˆ… …ƒˆ‘’Ž‚
	MOV	R0,R1
	MOV	#R50ASC-2,R0
	MOV	#3,R4
1$:	CALL	R50A1
	MOVB	R2,-(R0)	;ŠŽ…—›‰ ‘ˆŒ‚Ž‹,‘…„ˆ‰,€—€‹œ›‰
	;CMPB	 R2,#40
	;BNE	 .+6
	;MOVB	 #200,@R0
	SOB	R4,1$
	DEC	R0
	RETURN

;*****************************************
; …Ž€‡Ž‚€ˆ… ‘ˆŒ‚Ž‹€ RAD50 ‚ ASCII ŠŽ„
;*****************************************
;    <R1>  -  ˆ‘•Ž„›‰	ŠŽ„

R50A1:	MOV	R1,R3		;‚›„…‹…ˆ… ‘ˆŒ‚Ž‹€ RAD50
	CLR	R2
	DIV	#50,R2
	MOV	R2,R1
	MOV	R3,R2
	BNE	1$
	MOV	#40,R2		;‘ˆŒ‚Ž‹ Ž…‹€
	RETURN
1$:	CMP	R2,#32
	BGT	2$
	ADD	#100,R2 	;‘ˆŒ‚Ž‹› A-Z
	RETURN
2$:	CMP	R2,#33
	BGT	3$
	MOV	#44,R2
	RETURN			;‘ˆŒ‚Ž‹ $
3$:	CMP	R2,#34
	BGT	4$
	MOV	#56,R2
	RETURN			;‘ˆŒ‚Ž‹ .
4$:	CMP	R2,#35
	BGT	5$
	MOV	#77,R2
	RETURN			;‘ˆŒ‚Ž‹ ‡€Œ…… € ? (… ˆ‘.)
5$:	ADD	#22,R2		;‘ˆŒ‚Ž‹› 0-9
	RETURN

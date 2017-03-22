	.TITLE BINDEC
;****************************************************
; …Ž€‡Ž‚€ˆ… „‚Žˆ—ŽƒŽ —ˆ‘‹€ ‚ „…‘Ÿ’ˆ—›… ‘ˆŒ‚Ž‹›
;****************************************************
; IN  <R0> - —ˆ‘‹Ž
; OUT <R0> - €„…‘ “”…€

BINHEX: JSR	R5,SAVRON	;‘Ž•€…ˆ… …ƒˆ‘’Ž‚
	MOV	#4,R4		;ŠŽ‹ˆ—…‘’‚Ž €‡Ÿ„Ž‚
	MOV	#BUFLIB,R3
	ADD	R4,R3
	MOVB	#'&,@R3 	;ˆ - ˆ‡€Š ˜…‘’€„–€’ˆˆ—ŽƒŽ —ˆ‘‹€
	MOVB	#200,1(R3)	;ŠŽ…– ‘’ŽŠˆ
1$:	MOV	R0,R1
	CLR	R0		;Ž„ƒŽ’Ž‚Š€ —ˆ‘‹€ ……„ „…‹…ˆ…Œ
	DIV	#16.,R0 	;„…‹…ˆ… € 8. ˆ Ž‹“—…ˆ… Ž‘’€’Š€
	ADD	#60,R1		;”ŽŒˆŽ‚€ˆ… ‘ˆŒ‚Ž‹€
	CMP	R0,#10.
	BLT	.+6
	ADD	#7,R1
	MOVB	R1,-(R3)	;‡€ˆ‘œ ‘ˆŒ‚Ž‹€ ‚ “”… „€›•
	SOB	R4,1$
	MOV	R3,R0
	RETURN

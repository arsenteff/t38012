	.TITLE BINDEC
;****************************************************
; …Ž€‡Ž‚€ˆ… „‚Žˆ—ŽƒŽ —ˆ‘‹€ ‚ „…‘Ÿ’ˆ—›… ‘ˆŒ‚Ž‹›
;****************************************************
; IN  <R0> - —ˆ‘‹Ž
; OUT <R0> - €„…‘ “”…€

BINDEC: JSR	R5,SAVRON	;‘Ž•€…ˆ… …ƒˆ‘’Ž‚
	MOV	#5,R4		;ŠŽ‹ˆ—…‘’‚Ž „…‘Ÿ’ˆ—›• –ˆ”
	MOV	#BUFDEC,R3
	ADD	R4,R3
	MOVB	#'.,@R3 	;’Ž—Š€ - ˆ‡€Š „…‘Ÿ’ˆ—ŽƒŽ —ˆ‘‹€
	MOVB	#200,1(R3)	;ŠŽ…– ‘’ŽŠˆ
1$:	MOV	R0,R1
	CLR	R0		;Ž„ƒŽ’Ž‚Š€ —ˆ‘‹€ ……„ „…‹…ˆ…Œ
	DIV	#10.,R0 	;„…‹…ˆ… € 10. ˆ Ž‹“—…ˆ… Ž‘’€’Š€
	ADD	#60,R1		;”ŽŒˆŽ‚€ˆ… ‘ˆŒ‚Ž‹€
	MOVB	R1,-(R3)	;‡€ˆ‘œ ‘ˆŒ‚Ž‹€ ‚ “”… „€›•
	SOB	R4,1$
	MOV	R3,R0
	RETURN

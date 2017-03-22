	.TITLE LBBNAS
;******************************************************
; …Ž€‡Ž‚€ˆ… „‚Žˆ—ŽƒŽ —ˆ‘‹€ ‚ ‚Ž‘œŒ…ˆ—›… ‘ˆŒ‚Ž‹›
;******************************************************
; IN  <R0> - —ˆ‘‹Ž
; OUT <R0> - €„…‘ “”…€

BINOCT:	JSR	R5,SAVRON	;‘Ž•€…ˆ… …ƒˆ‘’Ž‚
	MOV	#6,R4		;ŠŽ‹ˆ—…‘’‚Ž ‚Ž‘œŒ…ˆ—›• –ˆ”
	MOV	#BUFOCT,R3
	ADD	R4,R3
	MOVB	#200,@R3
1$:	MOV	R0,R1
	CLR	R0		;Ž„ƒŽ’Ž‚Š€ —ˆ‘‹€ ……„ „…‹…ˆ…Œ
	DIV	#8.,R0		;„…‹…ˆ… € 8. ˆ Ž‹“—…ˆ… Ž‘’€’Š€
	ADD	#60,R1		;”ŽŒˆŽ‚€ˆ… ‘ˆŒ‚Ž‹€
	MOVB	R1,-(R3)	;‡€ˆ‘œ ‘ˆŒ‚Ž‹€ ‚ “”… „€›•
	SOB	R4,1$
	MOV	R3,R0
	RETURN

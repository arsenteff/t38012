	.TITLE STRSPL
;*****************************************
; IN	- R0	:������ �� ������ ��������
;	  2(SP) :������ �� �������� �����
; OUT	- R0	;������ �� �������� �����
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
1$:	CMP	R2,#BUFLIB+80.	       ;������������ ��������� ������
	BGT	4$
	INC	R2
	MOVB	(R4)+,R1
	MOVB	R1,(R0)+
	BITB	#177,R1
	BNE	1$
2$:	MOV	(SP)+,R1
	MOV	(SP)+,R2
	MOV	(SP)+,R4
	MOV	(SP)+,(SP)	       ;������������ ���� - �������� � �����
	RETURN
3$:	MOV	R2,R0
4$:	MOVB	#200,(R0)+
	BR	2$

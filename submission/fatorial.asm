; 0100 == N 
; 0106 == 0001
; 0108 == variavel de controle

@ /000
	LD /100
	SC /200
	MM /102
	HM /000

@ /200
	K /0000 ; subrotina
	MM /108 ; guarda controle, util na primeira execuçao do loop
	JZ /21A ; caso N seja 0
	SB /106 ; subtrai 1 do controle
	JZ /216 ; checa se controle == 0, para sair do loop
	MM /108 ; guarda o controle apos a subtraçao
	LD /100 ; load de N
	ML /108 ; multiplica N por N-1
	MM /100 ; guarda N*
	LD /108 ; load da variavel de controle, para a sequencia do loop
	JP /202 
	LD /100 ; load do valor a ser guardado fora da subrotina
	RS /200
	LV /001
	MM /100
	RS /200

; 0100 0003

@ /106
	K /0001


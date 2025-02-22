; 0100 == N ;;; ele mantem os valores dos regs, ele faz uma copia
; 0102 == N! ;;; e nao uma transferencia
; 0106 == 0001
; 0108 == variavel de controle
; 010A == auxiliar

@ /000
	LD /100
	SC /200
	MM /100
	HM /000

@ /200
	K  /0000 ; subrotina
	MM /108 ; guarda controle
	SB /106 ; subtrai 1 do AC
	JZ /214 ; guarda controle
	MM /108
	LD /100 ; load de N
	ML /108 ; multiplica N por N-1
	MM /100 ; guarda N*
	LD /108 ; load da variavel de controle
	JP /202 ; 
	LD /100
	RS /200

@ /100
	K /0003

@ /106
	K /0001


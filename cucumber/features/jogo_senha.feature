# language: pt
# encoding: utf-8

Funcionalidade: Jogo recebe uma senha e uma contra-senha e verifica semelhanças entre elas

	Para testar uma contra-senha
	Como jogador
	Eu quero receber uma resposta que informe os acertos e exatidões da contra-senha fornecida

	Esquema do Cenário: Avalia uma contra-senha

		Dada uma <senha>
		Quando é fornecida uma <contrasenha>
		Então recebe a avaliação <avaliacao>

		Cenários: sem acertos
		| senha | contrasenha | avaliacao |
		| 1234 | 5555 | '' |
		| 1234 | 6666 | '' |
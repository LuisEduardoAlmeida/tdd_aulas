#language: pt
#encoding: utf-8

Funcionalidade: Jogo recebe uma senha e uma contra-senha e verifica semelhanças entre elas

	Para testar uma contra-senha
	Como jogador
	Eu quero receber uma resposta que informe os acertos e exatidões da contra-senha fornecida

	Esquema do Cenário: Avalia uma contra-senha

		Dado que inicio com a <senha>
		Quando é fornecida uma <contrasenha>
		Então recebe a avaliação <avaliacao>

		Exemplos: sem acertos
		| senha | contrasenha | avaliacao |
		| 1234  | 5555        | '' |
		| 1234  | 6666        | '' |

		Exemplos: com 01 dígito correto
		| senha | contrasenha | avaliacao |
		| 1234  | 1555        | '+' |
		| 1234  | 2555        | '-' |

		Exemplos: com 01 dígito correto
		| senha | contrasenha | avaliacao |
		| 1234  | 5254        | '++' |
		| 1234  | 5154        | '+-' |
		| 1234  | 2545        | '--' |
		| 1234  | 2535        | '+-' |

		Exemplos: com 03 dígitos corretos
		| senha | contrasenha | avaliacao |
		| 1234  | 5234        | '+++' |
		| 1234  | 5134        | '++-' |
		| 1234  | 5124        | '+--' |
		| 1234  | 5123        | '---' |

		Exemplos: com todos corretos
		| senha | contrasenha | avaliacao |
		| 1234 | 1234 | '++++' |
		| 1234 | 1243 | '++--' |
		| 1234 | 1423 | '+---' |
		| 1234 | 4321 | '----' |

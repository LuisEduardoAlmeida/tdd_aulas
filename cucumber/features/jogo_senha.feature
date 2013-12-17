# language: pt
# encoding: utf-8

Funcionalidade: Jogo recebe uma contra-senha e verifica semelhanças com a senha verdadeira

	Para testar uma contra-senha
	Como jogador
	Eu quero receber uma resposta que informe os acertos e exatidões da contra-senha fornecida

	Esquema do Cenário: Receber uma mensagem de boas-vindas

		Dada uma senha
		Quando o jogador iniciar o jogo
		Então recebe uma mensagem de boas vindas
		E nenhuma resposta de avaliação é retornada

		Cenário: Jogo envia uma mensagem de boas vindas

		Cenário: Jogo solicita o nome do jogador

	Esquema do Cenário: Fornece contra-senha sem acertos

		Dada uma senha
		Quando o jogador inicia o jogo
		Então o jogador fornece uma contra-senha sem acertos
		E uma resposta vazia é retornada

	Esquema do Cenário: Fornece contra-senha com 01 dígito correto

	Esquema do Cenário: Fornece contra-senha com 02 dígitos corretos

	Esquema do Cenário: Fornece contra-senha com 03 dígitos corretos

	Esquema do Cenário: Fornece contra-senha com todos os dígitos corretos

	Esquema do Cenário: Fornece contra-senha com caracteres não-numéricos
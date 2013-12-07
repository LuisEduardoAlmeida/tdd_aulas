module Senha
	class Jogo
		def initialize(output)
			@output = output
		end

		def iniciar
			@output.puts "Bem-Vindo ao Senha"
			@output.puts "Informe o jogador:"
		end
	end
end
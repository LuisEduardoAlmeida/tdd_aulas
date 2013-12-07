module Senha
	class Jogo
		def initialize(output)
			@output = output
		end

		def iniciar senha
			@output.puts "Bem-Vindo ao Senha"
			@output.puts "Informe o jogador:"
		end

		def avaliar contra_senha
			@output.puts ""
		end
	end
end
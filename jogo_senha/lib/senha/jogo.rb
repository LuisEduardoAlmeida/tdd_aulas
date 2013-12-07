module Senha
	class Jogo
		def initialize(output)
			@output = output
		end

		def iniciar senha
			@senha = senha
			@output.puts "Bem-Vindo ao Senha"
			@output.puts "Informe o jogador:"
		end

		def avaliar contra_senha
			if @senha.include?(contra_senha[0])
				@output.puts "-"
			else
				@output.puts ""
			end
		end
	end
end
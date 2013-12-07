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
			avaliacao = ''

			(0..3).each do |index|
				if digito_exato?(contra_senha, index)
					avaliacao << "+"
				end
			end

			(0..3).each do |index|
				if digito_correto?(contra_senha, index)
					avaliacao << "-"
				end
			end

			@output.puts avaliacao
		end

		def digito_exato?(contra_senha, index)
			@senha[index] == contra_senha[index]
		end

		def digito_correto?(contra_senha, index)
			@senha.include?(contra_senha[index]) && !digito_exato?(contra_senha, index)
		end
	end
end
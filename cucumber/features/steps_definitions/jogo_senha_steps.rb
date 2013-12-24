# encoding: utf-8

class Jogo
	def initialize
		
	end

	def iniciar senha
		@senha = senha
		"Bem-vindo ao Senha. \nInforme o jogador."
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

		avaliacao
	end

	def digito_exato?(contra_senha, index)
		@senha[index] == contra_senha[index]
	end

	def digito_correto?(contra_senha, index)
		@senha.include?(contra_senha[index]) && !digito_exato?(contra_senha, index)
	end
end

Before do
	@jogo = Jogo.new
end

Dado /^que inicio com a (\d+)$/ do |senha|
  mensagem = @jogo.iniciar senha
  mensagem.should == "Bem-vindo ao Senha. \nInforme o jogador."
end

Quando(/^é fornecida uma (\d+)$/) do |contra_senha|
  @avaliacao = @jogo.avaliar contra_senha
end

Entao(/^recebe a avaliação ''$/) do
  @avaliacao.should == ""
end

Entao(/^recebe a avaliação '\+'$/) do
  @avaliacao.should == "+"
end

Entao(/^recebe a avaliação '\-'$/) do
  @avaliacao.should == "-"
end

Entao(/^recebe a avaliação '\+\+'$/) do
  @avaliacao.should == "++"
end

Entao(/^recebe a avaliação '\+\-'$/) do
  @avaliacao.should == "+-"
end

Entao(/^recebe a avaliação '\-\-'$/) do
  @avaliacao.should == "--"
end

Entao(/^recebe a avaliação '\+\+\+'$/) do
  @avaliacao.should == "+++"
end

Entao(/^recebe a avaliação '\+\+\-'$/) do
  @avaliacao.should == "++-"
end

Entao(/^recebe a avaliação '\+\-\-'$/) do
  @avaliacao.should == "+--"
end

Entao(/^recebe a avaliação '\-\-\-'$/) do
  @avaliacao.should == "---"
end

Entao(/^recebe a avaliação '\+\+\+\+'$/) do
  @avaliacao.should == "++++"
end

Entao(/^recebe a avaliação '\+\+\-\-'$/) do
  @avaliacao.should == "++--"
end

Entao(/^recebe a avaliação '\+\-\-\-'$/) do
  @avaliacao.should == "+---"
end

Entao(/^recebe a avaliação '\-\-\-\-'$/) do
  @avaliacao.should == "----"
end
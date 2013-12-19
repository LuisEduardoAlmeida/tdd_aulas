# encoding: utf-8

class Jogo
	def initialize
		
	end

	def iniciar senha
		@senha = senha
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

Dada(/^uma (\d+)$/) do |senha|
  @jogo.iniciar senha
end

Quando(/^é fornecida uma (\d+)$/) do |contra_senha|
  @avaliacao = @jogo.avaliar contra_senha
end

Então(/^recebe a avaliação ''$/) do
  @avaliacao.should == ""
end

Então(/^recebe a avaliação '\+'$/) do
  @avaliacao.should == "+"
end

Então(/^recebe a avaliação '\-'$/) do
  @avaliacao.should == "-"
end

Então(/^recebe a avaliação '\+\+'$/) do
  @avaliacao.should == "++"
end

Então(/^recebe a avaliação '\+\-'$/) do
  @avaliacao.should == "+-"
end

Então(/^recebe a avaliação '\-\-'$/) do
  @avaliacao.should == "--"
end

Então(/^recebe a avaliação '\+\+\+'$/) do
  @avaliacao.should == "+++"
end

Então(/^recebe a avaliação '\+\+\-'$/) do
  @avaliacao.should == "++-"
end

Então(/^recebe a avaliação '\+\-\-'$/) do
  @avaliacao.should == "+--"
end

Então(/^recebe a avaliação '\-\-\-'$/) do
  @avaliacao.should == "---"
end

Então(/^recebe a avaliação '\+\+\+\+'$/) do
  @avaliacao.should == "++++"
end

Então(/^recebe a avaliação '\+\+\-\-'$/) do
  @avaliacao.should == "++--"
end

Então(/^recebe a avaliação '\+\-\-\-'$/) do
  @avaliacao.should == "+---"
end

Então(/^recebe a avaliação '\-\-\-\-'$/) do
  @avaliacao.should == "----"
end
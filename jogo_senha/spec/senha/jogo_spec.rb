# encoding: utf-8
require 'spec_helper'

module Senha
	describe Jogo do
		describe "#iniciar" do
			# alternativa ao before, mas que apenas inicia as variáveis quando necessário
			let(:output) { double('output').as_null_object }
			let(:jogo) { Jogo.new(output) }

			#before(:each) do
			#	@output = double('output').as_null_object
			#	@jogo = Jogo.new(@output)
			#end

			it "enviar uma mensagem de boas-vindas" do
				output.should_receive(:puts).with("Bem-Vindo ao Senha")

				jogo.iniciar
			end

			it "solicita pela 1.o jogador" do 
				output.should_receive(:puts).with("Informe o jogador:")

				jogo.iniciar
			end
		end
	end
end
# encoding: utf-8
require 'spec_helper'

module Senha
	describe Jogo do
		describe "#iniciar" do
			# alternativa ao before, mas que apenas inicia as variáveis quando necessário
			# poderia ser colocado no describe superior para servir aos outros describes
			let(:output) { double('output').as_null_object }
			let(:jogo) { Jogo.new(output) }

			#before(:each) do
			#	@output = double('output').as_null_object
			#	@jogo = Jogo.new(@output)
			#end

			it "enviar uma mensagem de boas-vindas" do
				output.should_receive(:puts).with("Bem-Vindo ao Senha")

				jogo.iniciar('1234')
			end

			it "solicita pela 1.o jogador" do 
				output.should_receive(:puts).with("Informe o jogador:")

				jogo.iniciar('1234')
			end
		end

		describe "#avaliar" do
			# alternativa ao before, mas que apenas inicia as variáveis quando necessário
			let(:output) { double('output').as_null_object }
			let(:jogo) { Jogo.new(output) }

			context "sem acertos" do 
				it "envia uma avaliação com ''" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('')
					jogo.avaliar('5555')
				end
			end

			context "com 01 dígito correto" do
				it "envia avaliação com '-'" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('-')
					jogo.avaliar('2555')
				end

				it "envia avaliação com '+'" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('+')
					jogo.avaliar('1555')
				end
			end

			context "com 02 dígitos corretos" do 
				it "envia avaliação com '--'" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('--')
					jogo.avaliar('2545')
				end

				it "com 01 dígito exato e 01 dígito correto (nesta ordem)" do
					jogo.iniciar('1234')
					output.should_receive(:puts).with('+-')
					jogo.avaliar('2535')
				end

				it "envia avaliação com '++'" do
					jogo.iniciar("1234")
					output.should_receive(:puts).with('++')
					jogo.avaliar('5254')
				end
			end

			context "com 03 dígitos corretos" do
				it "envia avaliação '---'" do
					jogo.iniciar("1234")
					output.should_receive(:puts).with('---')
					jogo.avaliar('5123')
				end

				it "com 01 dígito exato e 02 corretos (nesta ordem)" do
					jogo.iniciar("1234")
					output.should_receive(:puts).with('+--')
					jogo.avaliar('5124')
				end

				it "com 02 dígito exato e 01 correto (nesta ordem)" do
					jogo.iniciar("1234")
					output.should_receive(:puts).with('++-')
					jogo.avaliar('5134')
				end

				it "envia avaliação '+++'" do
					jogo.iniciar("1234")
					output.should_receive(:puts).with('+++')
					jogo.avaliar('5234')
				end
			end
		end
	end
end

describe Ligador do
 it "deve dizer 'Hello turma!' quando receber a mensagem saudar" do
 	ligador = Ligador.new
 	saudacao = ligador.saudar
 	expect(saudacao).to eql "Hello turma!"
 end
end


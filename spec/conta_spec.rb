
describe Conta do
	it "deve iniciar com 0 de saldo" do 
		conta = Conta.new
		expect(conta.saldo).to be 0
	end
end
end

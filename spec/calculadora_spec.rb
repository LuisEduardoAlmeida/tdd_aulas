
describe Calculadora do
	before(:each) do
		puts "executando before"
		@calc = Calculadora.new
	end
	
	after(:each) do
		puts "executando before"
		@calc = nil
	end

	describe "somar 3 e 4" do
		it "deve ser igual a 7" do
			expect(@calc.somar(3,4)).to be 7
		end
	end

	describe "subtrair 4 - 1" do
		it "deve ser igual a 3" do
			expect(@calc.subtrair(4,1)).to be 3
		end
	end
end

describe Pilha do
	describe "#peek" do
		it "deve retornar o elemento do topo" do
			pilha = Pilha.new
			pilha.push :item
			expect(pilha.peek).to be :item
		end
		
		it "nao deve remover o elemento do topo" do
			pilha = Pilha.new
			pilha.push :item
			expect(pilha.items.size).to be 1
		end
	end
end
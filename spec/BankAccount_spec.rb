require 'BankAccount'

describe BankAccount do 

	before(:each) do
		subject {described_class.new}
	end

		it 'should has a make_deposit method' do
			expect(subject).to respond_to(:make_deposit)
		end

		it 'has a balance' do
			expect(subject.balance).to eq(0)
		end

		describe "#make_deposit" do 
			it "increase the balance by entering an amount" do 
				subject.make_deposit(1000)
				expect(subject.balance).to eq(1000)
			end
		end
end

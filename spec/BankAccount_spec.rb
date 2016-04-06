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

		describe "#withdraw" do 
			it "decrease the balance by taking money off" do 
				subject.make_deposit(1000)
				subject.withdraw(500)
				expect(subject.balance).to eq(500)
			end
		end 
		describe "#statement" do 
			it "has a history" do 
				expect(subject.statement).to eq({})
			end
		end
end

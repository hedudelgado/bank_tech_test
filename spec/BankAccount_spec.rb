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
end

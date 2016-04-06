require 'BankAccount'

describe 'BankAccount' do 

	before(:each) do
		@account = BankAccount.new
	end

		it 'should has a make_deposit method' do
			expect(@account).to respond_to(:make_deposit)
		end
end

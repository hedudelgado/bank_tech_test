require 'BankAccount'

describe 'BankAccount' do 

	before(:each) do
		@account = BankAccount.new
	end

		it 'should has an add method' do
			expect(@calculator).to respond_to(:add)
		end
end

class BankAccount

	attr_reader :balance, :statement

	def initialize
		@balance 		= 0
		@statement 	= {}
	end

	def make_deposit(amount,date=Date.new)
		increase_balance(amount)
		@statement[:credit] = amount
		@statement[:date] 	= date
	end

	def withdraw(amount)
		decrease_balance(amount)
	end


	private

	def increase_balance(amount)
		@balance = @balance + amount
		@balance
	end

	def decrease_balance(amount)
		@balance = @balance - amount
	end
end
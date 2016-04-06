class BankAccount

	attr_reader :balance

	def initialize
		@balance = 0
	end

	def make_deposit(amount)
		increase_balance(amount)
	end


	private

	def increase_balance(amount)
		@balance = @balance + amount
	end

end
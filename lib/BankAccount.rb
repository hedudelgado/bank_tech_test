class BankAccount

	attr_reader :balance, :statement, :history

	def initialize
		@balance 		= 0
		@statement 	= {}
		@history 		=	[]
	end

	def make_deposit(amount,date=Date.new)
		increase_balance(amount)
		update_statement_credit(amount,date)
		@history.push(@statement)
	end

	def withdraw(amount,date=Date.new)
		decrease_balance(amount)
		update_statement_debit(amount,date)
		@history.push(@statement)
	end


	private

	def update_statement_credit(amount,date)
		@statement[:credit] = amount
		@statement[:date] 	= date
		@statement[:balance]= @balance
	end
	
	def update_statement_debit(amount,date)
		@statement[:debit]  = amount
		@statement[:date] 	= date
		@statement[:balance]= @balance
	end

	def increase_balance(amount)
		@balance = @balance + amount
		@balance
	end

	def decrease_balance(amount)
		@balance = @balance - amount
		@balance
	end
end
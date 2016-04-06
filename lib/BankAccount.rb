class BankAccount

	attr_reader :balance, :statement, :history

	def initialize
		@balance 		= 0
		@statement 	= {}
		@history 		=	[]
	end

	def print_statement
		puts 'date || credit || debit || balance'
		@history.each do |x|
			print "#{x[:date]}|| #{x[:credit]} || #{x[:debit]} || #{x[:balance]}" + "\n"
		end
	end

	def make_deposit(amount,date=Date.new)
		increase_balance(amount)
		update_statement_credit(amount,date)
	end

	def withdraw(amount,date=Date.new)
		decrease_balance(amount)
		update_statement_debit(amount,date)
	end


	private

	def update_statement_credit(amount,date)
		@statement[:credit] = amount
		@statement[:date] 	= date
		@statement[:balance]= @balance
		@history << @statement
	end

	def update_statement_debit(amount,date)
		@statement[:debit]  = amount
		@statement[:date] 	= date
		@statement[:balance]= @balance
		@history << @statement
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
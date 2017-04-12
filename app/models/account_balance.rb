class AccountBalance
	def self.current_balance
		Income.sum - Expense.sum
	end
end
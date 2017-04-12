class Expense < ApplicationRecord
	validates :name, presence: true
	validates :amount, presence: true

	def self.all_expenses
		Expense.all
	end

	def self.sum
		all_expenses.sum(:amount)
	end
end

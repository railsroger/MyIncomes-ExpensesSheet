class ResetController < ApplicationController
	def delete_all
	    Expense.delete_all
	    Income.delete_all
	    redirect_to '/expenses'
  	end
end

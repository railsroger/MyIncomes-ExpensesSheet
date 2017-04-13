class ExpensesController < ApplicationController
 	before_action :authenticate_user!, only: [:add_expense, :create_expense]
 	def index
	    @expenses = Expense.all_expenses
	    @remaining_amount = AccountBalance.current_balance
	    @total_expense =  Expense.sum
	    
	    
	    
  	end

  	def add_expense
    	@new_expense = Expense.new
  	end

  	def create_expense
	    expense = Expense.create(:name => params[:expense][:name],:amount => params[:expense][:amount])
	    unless expense.valid?
	    	flash[:error] = expense.errors.full_messages.join("<br>").html_safe
	    else
	    	flash[:success] = "#{expense[:name]} added to Expenses successfully"
	    end
	    redirect_to expense_index_path
  	end

end

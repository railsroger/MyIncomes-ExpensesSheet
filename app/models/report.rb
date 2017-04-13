class Report
	
	def expenses
		@report = Expense.includes(:expense).where(expense: params[:search][:name], record_date: params[:search][:start_date].to_date..params[:search][:end_date].to_date)
    end
  
end

	

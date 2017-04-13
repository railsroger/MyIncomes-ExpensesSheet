Rails.application.routes.draw do
  resources :reports
  root 'home#index'
  match 'expenses' => 'expenses#index', :as => :expense_index, via: [:get, :post]
  match 'incomes' => 'incomes#index', :as => :income_index, via: [:get, :post]
  get 'expenses/add_expense' => 'expenses#add_expense'
  post 'expenses/add_expense' => 'expenses#create_expense'

  get 'incomes/add_income' => 'incomes#add_income'
  post 'incomes/add_income' => 'incomes#create_income'
  
  get 'reset/delete_all' => 'reset#delete_all'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

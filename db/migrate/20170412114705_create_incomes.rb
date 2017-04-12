class CreateIncomes < ActiveRecord::Migration[5.0]
  def change
    create_table :incomes do |t|
      t.string :source
      t.decimal :amount

      t.timestamps
    end
  end
end

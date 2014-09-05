class AddDetailsToRecurringTransactions < ActiveRecord::Migration
  def change
    add_column :recurring_transactions, :description, :string
    add_column :recurring_transactions, :amount, :number
    add_column :recurring_transactions, :date_from, :date
    add_column :recurring_transactions, :date_to, :date
    add_column :recurring_transactions, :recurrence, :string
  end
end

class RemoveTransactionDateFromTransactions < ActiveRecord::Migration
  def change
    remove_column :transactions, :transaction_date, :date
  end
end

class AddDetailsToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :description, :string
    add_column :transactions, :amount, :number
  end
end

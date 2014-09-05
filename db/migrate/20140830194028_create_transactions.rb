class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :description
      t.date :date
      t.number :amount

      t.timestamps
    end
  end
end

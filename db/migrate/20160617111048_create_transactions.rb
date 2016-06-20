class CreateTransactions < ActiveRecord::Migration
  
  def change
    create_table :transactions do |t|
      t.references :customer
      t.references :order
      t.string :type
      t.float :amounts
      t.timestamps null: false
    end
    add_foreign_key :transactions, :customers
    add_foreign_key :transactions, :orders
  end
  
end

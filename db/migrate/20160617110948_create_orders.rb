class CreateOrders < ActiveRecord::Migration
  
  def change
    create_table :orders do |t|
      t.references :customer
      t.references :order_item
      t.date :order_date
      t.float :total_price
      t.text :shipping_address
      t.text :delivery_address
      t.timestamps null: false
    end
    add_foreign_key :orders, :customers
  end

end

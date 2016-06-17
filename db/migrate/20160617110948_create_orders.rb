class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.date :order_date
      t.integer :items_list_id
      t.float :total_price
      t.string :shipping_address
      t.string :delivery_address
      t.timestamps null: false
    end
  end
end

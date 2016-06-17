class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :product_id
      t.integer :quantity
      t.float :product_price
      t.string :product_name
      t.timestamps null: false
    end
  end
end

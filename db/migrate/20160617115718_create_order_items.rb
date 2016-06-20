class CreateOrderItems < ActiveRecord::Migration
  
  def change
    create_table :order_items do |t|
      t.references :product
      t.integer :quantity
      t.float :product_price
      t.string :product_name
      t.timestamps null: false
    end
    add_foreign_key :order_items, :products
  end
  
end

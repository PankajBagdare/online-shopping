class CreateCartItems < ActiveRecord::Migration
  
  def change
    create_table :cart_items do |t|
      t.references :product
      t.string :product_name
      t.float :product_price
      t.integer :quantity
      t.timestamps null: false
    end
    add_foreign_key :cart_items, :products
  end
  
end
 
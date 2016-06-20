class CreateCarts < ActiveRecord::Migration
  
  def change
    create_table :carts do |t|
      t.references :customer
      t.references :cart_item
      t.float :total_price
      t.integer :quantity
      t.timestamps null: false
    end
    add_foreign_key :carts, :customers
  end

end

class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.integer :product_id
      t.string :product_name
      t.float :product_price
      t.integer :quantity
      t.timestamps null: false
    end
  end
end

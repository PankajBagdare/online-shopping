class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :customer_id
      t.string :itemes_list_id
      t.float :total_price
      t.integer :quantity
      t.timestamps null: false
    end
  end
end

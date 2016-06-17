class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :image_source
      t.integer :quantity
      t.timestamps null: false
    end
  end
end

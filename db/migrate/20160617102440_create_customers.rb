class CreateCustomers < ActiveRecord::Migration

  def change
    create_table :customers do |t|
      t.string :name
      t.string :user_name
      t.string :email
      t.string :password
      t.string :address
      t.integer :phone
      t.timestamps null: false
    end
  end
  
end

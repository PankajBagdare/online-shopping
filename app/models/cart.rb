class Cart < ActiveRecord::Base
	
	has_many :cart_items
	belongs_to :customer
	validates_presence_of :id, :customer_id, :cart_item_id, :total_price, :quantity
	validates_uniqueness_of :id, :customer_id, :cart_item_id
	validates :customer_id, confirmation: true
	validates :cart_item_id, confirmation: true
	validates :total_price, numericality: true

end

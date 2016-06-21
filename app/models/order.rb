class Order < ActiveRecord::Base

	has_many :order_items
	#belongs_to :transaction
	belongs_to :customer
	validates_presence_of :id, :customer_id, :order_item_id, :total_price
	validates_uniqueness_of :id, :customer_id, :order_item_id
	validates_presence_of :shipping_address, :delivery_address
	validates :customer_id, confirmation: true
	validates :order_item_id, confirmation:true
	validates :total_price, numericality: true

end

class CartItem < ActiveRecord::Base
	
	belongs_to :cart
	has_many :products
	validates_presence_of :id, :product_id, :product_name, :product_price, :quantity
	validates_uniqueness_of :id, :product_id
	validates :product_id, confirmation: true
	validates :product_price, numericality: true
	validates :quantity, numericality: { integer_only: true }

end

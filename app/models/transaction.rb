class Transaction < ActiveRecord::Base
	
	belongs_to :customer
	belongs_to :order
	validates_presence_of :id, :customer_id, :order_id, :type, :amount
	validates_uniqueness_of :id, :customer_id, :order_id
	validates :customer_id, confirmation: true
	validates :order_id, confirmation: true
	validates :amount, numericality: true

end

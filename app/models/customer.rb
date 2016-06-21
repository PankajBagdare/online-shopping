class Customer < ActiveRecord::Base

	has_one :cart
	has_many :orders
	has_many :transactions
	validates :name, presence: true, length: { maximum: 20 }
	validates :user_name, presence: true, uniqueness: true, confirmation: true, format: { with: /\A[A-Za-z]*\z/ }
	validates :email, presence:true, uniqueness: true 
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create } 
	validates :phone, numericality: true, length: { is: 10 }
	validates :password, confirmation: true, presence:true

end

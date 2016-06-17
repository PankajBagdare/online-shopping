class Customer < ActiveRecord::Base
	has_one :cart
	has_many :orders
	has_many :transactions
end

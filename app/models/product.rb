class Product < ActiveRecord::Base

	has_and_belongs_to_many :categories
	validates_presence_of :name, :quantity, :price
	validates :quantity, inclusion: {in: 0..100}

end

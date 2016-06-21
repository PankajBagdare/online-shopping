class Category < ActiveRecord::Base

	has_and_belongs_to_many :products
	validates_uniqueness_of :id, :name
	validates_presence_of :id, :name
  validates :name, format: {with: /\A[A-Za-z]*\z/}

end

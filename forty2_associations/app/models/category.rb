class Category < ActiveRecord::Base
	has_many :category_project
	has_many :projects, through: :category_project
	has_and_belongs_to_many :products
end

class Product < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
  # accepts_nested_attributes_for :categories
end

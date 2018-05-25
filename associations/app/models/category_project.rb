class CategoryProject < ApplicationRecord
  belongs_to :project
  belongs_to :category
  accepts_nested_attributes_for :category
end

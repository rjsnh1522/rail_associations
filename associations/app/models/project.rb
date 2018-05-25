class Project < ApplicationRecord
  belongs_to :user
  has_many :category_projects
  has_many :category, through: :category_projects,dependent: :destroy
  # accepts_nested_attributes_for :category_projects
end

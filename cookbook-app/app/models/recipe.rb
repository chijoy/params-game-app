class Recipe < ApplicationRecord
  belongs_to :user
  has_many :category_recipes
end

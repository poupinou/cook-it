class Recipe < ApplicationRecord
  has_many :ingredient_to_recipe
  has_many :ingredients, through: :ingredient_to_recipe
end

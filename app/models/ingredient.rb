class Ingredient < ApplicationRecord
  has_many :ingredient_to_recipe
  has_many :recipe, through: :ingredient_to_recipe
end

class Ingredientuser < ApplicationRecord
  belongs_to :ingredient
  belongs_to :user
end

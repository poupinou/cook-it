class Ingredient < ApplicationRecord
  has_many :ingredient_to_recipe
  has_many :recipes, through: :ingredient_to_recipe

  validates :name, presence: true, uniqueness: true

  validates :family, presence: true

  validates :picture, presence: true

  validates :price, presence: true
end

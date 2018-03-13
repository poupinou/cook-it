class Ingredient < ApplicationRecord

  has_many :ingredient_to_recipes
  has_many :recipes, through: :ingredient_to_recipes


  validates :name, presence: true, uniqueness: true

  validates :family, presence: true

  validates :picture, presence: true

  validates :price, presence: true
end

class Recipe < ApplicationRecord

	mount_uploader :picture, ImageUploader

  has_many :ingredient_to_recipe
  has_many :ingredients, through: :ingredient_to_recipe
end

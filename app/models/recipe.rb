class Recipe < ApplicationRecord

	mount_uploader :picture, ImageUploader

  has_many :ingredient_to_recipe
  has_many :ingredients, through: :ingredient_to_recipe

  validates :name, presence: true, uniqueness: true

  validates :description, presence: true

  validates :picture, presence: true

  validates :time, presence: true

  validates :price, presence: true
end

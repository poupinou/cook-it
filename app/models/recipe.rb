class Recipe < ApplicationRecord

  mount_uploader :picture, ImageUploader

  has_many :ingredient_to_recipes
  has_many :ingredients, through: :ingredient_to_recipes
  has_many :tagrecipe

  belongs_to :user
  acts_as_votable

  validates :name, presence: true, uniqueness: true

  validates :description, presence: true

  validates :time, presence: true

  validates :price, presence: true
end

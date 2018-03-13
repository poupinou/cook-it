class Recipe < ApplicationRecord

	mount_uploader :picture, ImageUploader

  has_many :ingredient_to_recipe
  has_many :ingredients, through: :ingredient_to_recipe

  belongs_to :user
  acts_as_votable

  validates :name, presence: true, uniqueness: true

  validates :description, presence: true

  validates :picture, presence: true

  validates :time, presence: true

  validates :price, presence: true
end

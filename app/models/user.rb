class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :list
  has_one :frigo
  has_many :recipes
  has_many :taguser
  has_many :ingredientuser

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

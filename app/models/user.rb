class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :liste
  has_one :frigo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

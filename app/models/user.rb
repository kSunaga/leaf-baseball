class User < ApplicationRecord
  has_many :boards
  has_many :templates
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

class User < ApplicationRecord
  has_many :boards
  has_many :templates
  has_many :teams
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

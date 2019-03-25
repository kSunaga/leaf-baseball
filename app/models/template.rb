class Template < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :name, presence: true
  validates :email, presence: true
  validates :content, presence: true
end

class Board < ApplicationRecord
  has_many :offers
  belongs_to :user, optional: true

  validates :name, presence: true
  validates :place, presence: true
  validates :game_date, presence: true
  validates :level, presence:  true
  validates :content, presence: true

  def self.is_password_valid(password, confirm_password)
    password == confirm_password
  end
end

class Board < ApplicationRecord
  has_many :offers
  belongs_to :user, optional: true

  def self.is_password_valid(password, confirm_password)
    password == confirm_password
  end
end

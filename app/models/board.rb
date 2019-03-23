class Board < ApplicationRecord
  has_many :offers

  def self.is_password_valid(password, confirm_password)
    password == confirm_password
  end
end

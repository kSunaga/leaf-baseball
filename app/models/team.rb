class Team < ApplicationRecord
  has_many :user
  belongs_to :level
end

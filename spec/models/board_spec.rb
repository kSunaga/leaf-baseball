require 'rails_helper'

RSpec.describe Board, type: :model do
  it "has a valid factory" do
    binding.pry
    expect(FactoryBot.build(:board)).to be_valid
  end
end

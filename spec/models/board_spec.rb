require 'rails_helper'

RSpec.describe Board, type: :model do

  it "登録ができる事" do
    expect(FactoryBot.build(:board)).to be_valid
  end

  context "バリデーション" do
    describe "nameが空の時" do
      it "登録が失敗すること" do
        is_expected.to validate_presence_of(:name)
      end
    end

    describe "placeが空の時" do
      it "登録が失敗すること" do
        is_expected.to validate_presence_of(:place)
      end
    end

    describe "game_dateが空の時" do
      it "登録が失敗すること" do
        is_expected.to validate_presence_of(:game_date)
      end
    end

    describe "levelが空の時" do
      it "登録が失敗すること" do
        is_expected.to validate_presence_of(:level)
      end
    end

    describe "contentが空の時" do
      it "登録が失敗すること" do
        is_expected.to validate_presence_of(:content)
      end
    end
  end
end

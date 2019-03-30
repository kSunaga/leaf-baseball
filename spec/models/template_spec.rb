require 'rails_helper'

RSpec.describe Template, type: :model do

  it "登録ができる事" do
    expect(FactoryBot.build(:board)).to be_valid
  end

  context "バリデーション" do
    describe "titleが空の時" do
      it "登録が失敗すること" do
        is_expected.to validate_presence_of(:title)
      end
    end

    describe "nameが空の時" do
      it "登録が失敗すること" do
        is_expected.to validate_presence_of(:name)
      end
    end

    describe "emailが空の時" do
      it "登録が失敗すること" do
        is_expected.to validate_presence_of(:email)
      end
    end

    describe "contentが空の時" do
      it "登録が失敗すること" do
        is_expected.to validate_presence_of(:content)
      end
    end
  end
end

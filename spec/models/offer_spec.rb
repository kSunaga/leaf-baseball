require 'rails_helper'

RSpec.describe Offer, type: :model do

  it "登録ができる事" do
    expect(FactoryBot.build(:offer)).to be_valid
  end

  context "バリデーション" do
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

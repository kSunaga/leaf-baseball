FactoryBot.define do
  factory :offer do
    name { "MyString" }
    email { "MyString" }
    content { "MyText" }
    board { nil }
    user { nil }
  end
end

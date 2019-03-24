FactoryBot.define do
  factory :template do
    name { "MyString" }
    email { "MyString" }
    content { "MyText" }
    user { nil }
  end
end

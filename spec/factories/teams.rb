FactoryBot.define do
  factory :team do
    name { "MyString" }
    description { "MyString" }
    body { "MyText" }
    user { nil }
    level { nil }
  end
end

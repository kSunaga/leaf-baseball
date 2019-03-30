FactoryBot.define do
  password = Faker::Internet.password(8)
  factory :user do
    sequence(:name) { Faker::Name.name }
    sequence(:email) { Faker::Internet.email }
    sequence(:password) { password }
    sequence(:password_confirmation) { password }
  end
end


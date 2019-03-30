FactoryBot.define do
  factory :offer do
    name {Faker::Name.name}
    email {Faker::Internet.email}
    content {"content12"}
    board
  end
end

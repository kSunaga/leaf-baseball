5.times do |i|
  FactoryBot.define do
    factory :offer do
      name {Faker::Name.name}
      email {Faker::Internet.email}
      content {"content#{i}"}
      board
      user
    end
  end
end

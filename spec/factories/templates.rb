5.times do |i|
  FactoryBot.define do
    factory :template do
      name {Faker::Name.name}
      email {Faker::Internet.email}
      content {"template#{i}"}
      user
    end
  end
end

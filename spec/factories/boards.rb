FactoryBot.define do
  factory :board do
    name {Faker::Name.name}
    place {"第1球場"}
    game_date {Faker::Date.between(2.year.ago, Date.today)}
    level {(1..5).to_a.sample}
    content {"test test tetetetete"}
    password {1234}
    user
  end
end


FactoryBot.define do
  factory :item do
    name               {Faker::String.romdom(length: 4)}
    text               {Faker::String.romdom(length: 3..20)}
    category_id        {Faker::Number.between(from: 2, to: 11)}
    status_id          {Faker::Number.between(from: 2, to: 7)}
    delivery_charge_id {Faker::Number.between(from: 2, to: 3)}
    area_id            {Faker::Number.between(from: 2, to: 48)}
    ship_date_id       {Faker::Number.between(from: 2, to: 4)}
    price              {Faker::Number.between(from: 300, to: 9999999)}
    association :user
  end
end

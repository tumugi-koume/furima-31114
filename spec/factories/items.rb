FactoryBot.define do
  factory :item do
    name               { Faker::Name.initials(number: 3) }
    text               { Faker::Lorem.sentence }
    category_id        { Faker::Number.between(from: 2, to: 11) }
    status_id          { Faker::Number.between(from: 2, to: 7) }
    delivery_charge_id { Faker::Number.between(from: 2, to: 3) }
    area_id            { Faker::Number.between(from: 2, to: 48) }
    ship_date_id       { Faker::Number.between(from: 2, to: 4) }
    price              { Faker::Number.between(from: 300, to: 9_999_999) }
    association :user

    after(:build) do |img|
      img.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end

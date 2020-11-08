FactoryBot.define do
  factory :order_address do
    postal_code { '123-4567'}
    area_id     { 17 }
    city        { '中野区' }
    street      { '1-1' }
    phone       { '09012345678' }
    user_id     { 1 }
    item_id     { 1 }
  end
end

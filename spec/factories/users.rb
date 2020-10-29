FactoryBot.difine do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {"a1s2d3f4"}
    password_confirmation {password}
    first_name            {"次郎"}
    last_name             {"阿部"}
    first_name_kana       {"ジロウ"}
    last_name_kana        {"アベ"}
    birthday              {Faker::Date.birthday}
  end
end
FactoryBot.define do
  factory :user do
    first_name            {Faker::Name.first_name}
    last_name             {Faker::Name.last_name}
    first_name_katakana   {"タロウ"}
    last_name_katakana    {"タナカ"}
    birthday              {Faker::Date.birthday(min_age: 18, max_age: 65)}
    gender_id             {1}
    staff_id              {1}
    address_number        {"000-0000"}
    city                  {"東京都"}
    address               {"練馬区橋本"}
    phone_number          {"0292522378"}
    telephone_number      {"09022725607"}
  end
end

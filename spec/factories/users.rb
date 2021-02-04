FactoryBot.define do
  factory :user do
        association :staff
        first_name            {"田中"}
        last_name             {"太郎"}
        first_name_katakana   {"タロウ"}
        last_name_katakana    {"タナカ"}
        birthday              {Faker::Date.birthday(min_age: 18, max_age: 65)}
        gender_id             {Faker::Number.between(from: 1,to:2)}
        staff_id              {1}
        address_number        {"000-0000"}
        city                  {"東京都"}
        address               {"練馬区橋本"}
        phone_number          {"0292522378"}
        telephone_number      {"09022725607"}
  end
end

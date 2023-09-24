FactoryBot.define do
  factory :user do
    nickname              {'ニックネーム'}
    email                 {Faker::Internet.email}
    password              {'pass111'}
    password_confirmation {'pass111'}
    date_of_birth         {'2002-07-16'}
    firast_name           {'名'}
    last_name             {'姓'}
    firast_name_kana      {'メイ'}
    last_name_kana        {'セイ'}
  end
end

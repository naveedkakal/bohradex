require 'faker'

FactoryGirl.define do
  factory :contact do
    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    email      { Faker::Internet.email }
    phone      { Faker::PhoneNumber.cell_phone }

    factory :boy do
      gender :male
    end

    factory :girl do
      gender :female
    end
  end
end

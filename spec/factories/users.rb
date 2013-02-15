# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "email#{n}@factory.com"
    end
    password "marbledygurk"

    trait :no_email do
      email nil
    end

    trait :no_password do
      password nil
    end

  end

end

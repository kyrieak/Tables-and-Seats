# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :seat do
    table_id 1
    mood_id 1
    occupant "MyString"
  end
end

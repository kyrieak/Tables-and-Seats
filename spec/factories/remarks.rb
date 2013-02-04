# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :remark do
    title "MyString"
    explanation "MyText"
    positive false
  end
end

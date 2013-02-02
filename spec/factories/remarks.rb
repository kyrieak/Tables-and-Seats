# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :remark do
    title "MyString"
    explanation "MyText"
    postive false
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :remark do |f|
    f.title "MyString"
    f.explanation "MyText"
    f.connotation Connotation.find_by_name("Neutral")
  end
end

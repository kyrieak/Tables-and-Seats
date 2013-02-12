# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :retro do
    state "MyString"
    date "2013-02-01"
    voting_allowed true
  end
end

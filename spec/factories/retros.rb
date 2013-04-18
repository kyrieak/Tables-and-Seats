# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :retro do
    name "Default Retro"
    factory :retro_with_remarks do
      remarks { Array.new(3) { FactoryGirl.build(:remark) } }
    end
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sub_order do
    nickname "flower-pot"
    association :order, factory: :order
    comment "Please cut the pizza!"
  end
end

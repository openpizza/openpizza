# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    association :sub_order, factory: :sub_order
    association :product, factory: :product
    quantity 1
    price "9.99"
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product_category do
    name "Pizzas"
    association :shop, factory: :shop
  end
end

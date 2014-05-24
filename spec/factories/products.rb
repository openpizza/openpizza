# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name "Pizza Salami"
    description "Best salami pizza around"
    price "9.99"
    association :product_category, factory: :product_category
  end
end

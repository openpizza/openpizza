# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shop do
    association :address, factory: :shop_address
    association :user, factory: :shop_user
  end
end

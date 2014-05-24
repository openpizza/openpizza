# Read about factories at https://github.com/thoughtbot/factory_girl

require 'securerandom'

FactoryGirl.define do
  factory :order do
    uuid SecureRandom.uuid
    association :shop, factory: :shop
    association :address, factory: :customer_address
    association :user, factory: :customer_user
    estimated_participants 1
  end
end

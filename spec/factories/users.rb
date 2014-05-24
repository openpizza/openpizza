# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer_user, class: User do
    sequence(:email) {|n| "test#{n}@example.com" }
    password "testtest"
    password_confirmation "testtest"
  end

  factory :shop_user, class: User do
    sequence(:email) {|n| "shop#{n}@example.com" }
    password "testtest"
    password_confirmation "testtest"
  end

  factory :admin_user, class: User do
    email "admin@example.com"
    password "testtest"
    password_confirmation "testtest"
    admin true
  end
end

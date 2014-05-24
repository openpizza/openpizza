# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shop_address, class: Address do
    name "Best Pizza Around"
    street "Musterweg 11"
    postcode "12345"
    city "Musterhausen"
  end

  factory :customer_address, class: Address do
    name "Frederic Branczyk"
    street "Musterstraße 11"
    postcode "12345"
    city "Musterhausen"
  end
end

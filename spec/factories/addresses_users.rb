# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :addresses_user, :class => 'AddressesUsers' do
    user_id 1
    address_id 1
  end
end

require 'spec_helper'

describe Shop, :type => :model do
  it "has an address and a user" do
    shop = FactoryGirl.create(:shop)
    expect(shop).to respond_to(:address)
    expect(shop).to respond_to(:user)
    expect(shop).to be_valid
  end

  it "is invalid if address is not set" do
    shop = FactoryGirl.create(:shop)
    shop.address = nil
    expect(shop).to_not be_valid
  end

  it "is invalid if user is not set" do
    shop = FactoryGirl.create(:shop)
    shop.user = nil
    expect(shop).to_not be_valid
  end
end

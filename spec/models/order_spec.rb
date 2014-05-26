require 'spec_helper'

describe Order, :type => :model do
  it "has an address and a user" do
    order = FactoryGirl.create(:order)
    expect(order).to respond_to(:shop)
    expect(order).to respond_to(:user)
    expect(order).to respond_to(:address)
    expect(order).to respond_to(:estimated_participants)
    expect(order).to respond_to(:uuid)
    expect(order).to be_valid
  end

  it "is invalid if it does not have a shop" do
    order = FactoryGirl.create(:order)
    order.shop = nil
    expect(order).to_not be_valid
  end

  it "is invalid if it does not have a user" do
    order = FactoryGirl.create(:order)
    order.user = nil
    expect(order).to_not be_valid
  end
end

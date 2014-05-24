require 'spec_helper'

describe Order, :type => :model do
  it "has an address and a user" do
    order = FactoryGirl.create(:order)
    expect(order).to respond_to(:shop)
    expect(order).to respond_to(:user)
    expect(order).to respond_to(:address)
    expect(order).to respond_to(:estimated_participants)
    expect(order).to respond_to(:uuid)
    #expect(order).to respond_to(:items)
    expect(order).to be_valid
  end
end

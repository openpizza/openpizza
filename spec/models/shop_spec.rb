require 'spec_helper'

describe Shop, :type => :model do
  it "has an address and a user" do
    shop = FactoryGirl.create(:shop)
    expect(shop).to respond_to(:address)
    expect(shop).to respond_to(:user)
  end
end

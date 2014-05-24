require 'spec_helper'

describe Address, :type => :model do
  it "has a name, street, postalcode and city" do
    address = FactoryGirl.create(:customer_address)
    expect(address).to respond_to(:name)
    expect(address).to respond_to(:street)
    expect(address).to respond_to(:postcode)
    expect(address).to respond_to(:city)
  end
end

require 'spec_helper'

describe Address, :type => :model do
  it "has a name, street, postalcode and city" do
    address = FactoryGirl.create(:customer_address)
    expect(address).to respond_to(:name)
    expect(address).to respond_to(:street)
    expect(address).to respond_to(:postcode)
    expect(address).to respond_to(:city)
    expect(address).to be_valid
  end

  it "is invalid if name field is empty" do
    address = FactoryGirl.create(:customer_address)
    address.name = nil
    expect(address).to_not be_valid
    address.name = ""
    expect(address).to_not be_valid
  end

  it "is invalid if street empty" do
    address = FactoryGirl.create(:customer_address)
    address.street = nil
    expect(address).to_not be_valid
    address.street = ""
    expect(address).to_not be_valid
  end

  it "is invalid if postcode is empty" do
    address = FactoryGirl.create(:customer_address)
    address.postcode = nil
    expect(address).to_not be_valid
    address.postcode = ""
    expect(address).to_not be_valid
  end

  it "is invalid if city is empty" do
    address = FactoryGirl.create(:customer_address)
    address.city = nil
    expect(address).to_not be_valid
    address.city = ""
    expect(address).to_not be_valid
  end
end

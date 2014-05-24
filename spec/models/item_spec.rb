require 'spec_helper'

describe Item, :type => :model do
  it "has a suborder, a product and a quantity" do
    item = FactoryGirl.create(:item)
    expect(item).to respond_to(:sub_order)
    expect(item).to respond_to(:product)
    expect(item).to respond_to(:quantity)
    expect(item).to respond_to(:price)
    expect(item).to be_valid
  end

  it "is invalid if it does not have a sub order" do
    item = FactoryGirl.create(:item)
    item.sub_order = nil
    expect(item).to_not be_valid
  end

  it "is invalid if it does not have a product" do
    item = FactoryGirl.create(:item)
    item.product = nil
    expect(item).to_not be_valid
  end

  it "is invalid if it does not have a quantity" do
    item = FactoryGirl.create(:item)
    item.quantity = nil
    expect(item).to_not be_valid
  end

  it "is invalid if it does not have a price" do
    item = FactoryGirl.create(:item)
    item.price = nil
    expect(item).to_not be_valid
  end
end

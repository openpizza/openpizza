require 'spec_helper'

describe Product, :type => :model do
  it "has a name, a description, a price and a product category" do
    product = FactoryGirl.create(:product)
    expect(product).to respond_to(:name)
    expect(product).to respond_to(:description)
    expect(product).to respond_to(:price)
    expect(product).to respond_to(:product_category)
    expect(product).to be_valid
  end

  it "does not have a name" do
    product = FactoryGirl.create(:product)
    product.name = nil
    expect(product).to_not be_valid
  end

  it "does not have a description" do
    product = FactoryGirl.create(:product)
    product.description = nil
    expect(product).to_not be_valid
  end

  it "does not have a price" do
    product = FactoryGirl.create(:product)
    product.price = nil
    expect(product).to_not be_valid
  end

  it "does not have a price" do
    product = FactoryGirl.create(:product)
    product.product_category = nil
    expect(product).to_not be_valid
  end
end

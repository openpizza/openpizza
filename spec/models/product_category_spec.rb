require 'spec_helper'

describe ProductCategory, :type => :model do
  it "has a name and products" do
    product_category = FactoryGirl.create(:product_category)
    expect(product_category).to respond_to(:name)
    expect(product_category).to respond_to(:products)
    expect(product_category).to be_valid
  end

  it "is invalid if it does not have a name" do
    product_category = FactoryGirl.create(:product_category)
    product_category.name = nil
    expect(product_category).to_not be_valid
  end
end

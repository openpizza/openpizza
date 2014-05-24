require 'spec_helper'

describe SubOrder, :type => :model do
  it "has an order, a nickname, and a comment" do
    sub_order = FactoryGirl.create(:sub_order)
    expect(sub_order).to respond_to(:order)
    expect(sub_order).to respond_to(:nickname)
    expect(sub_order).to respond_to(:comment)
    expect(sub_order).to be_valid
  end

  it "is invalid if it does not have an order" do
    sub_order = FactoryGirl.create(:sub_order)
    sub_order.order = nil
    expect(sub_order).to_not be_valid
  end

  it "is invalid if it does not have a nickname" do
    sub_order = FactoryGirl.create(:sub_order)
    sub_order.nickname = nil
    expect(sub_order).to_not be_valid
  end
end

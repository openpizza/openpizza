require 'spec_helper'

describe User, :type => :model do
  it "has the addresses method" do
    user = FactoryGirl.create(:customer_user)
    expect(user).to respond_to(:addresses)
    expect(user).to be_valid
  end
end

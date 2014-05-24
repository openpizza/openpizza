class Order < ActiveRecord::Base
  belongs_to :shop
  belongs_to :user
  belongs_to :address
end

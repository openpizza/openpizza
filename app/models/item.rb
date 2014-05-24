class Item < ActiveRecord::Base
  belongs_to :sub_order
  belongs_to :product

  validates :sub_order, :product, :quantity, :price, presence: true
end

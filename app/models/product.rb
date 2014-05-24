class Product < ActiveRecord::Base
  belongs_to :product_category
  validates :name, :description, :price, :product_category, presence: true
end

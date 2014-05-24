class ProductCategory < ActiveRecord::Base
  belongs_to :shop
  has_many :products
  validates :name, presence: true
end

class Address < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_one :shop
  validates :name, :street, :postcode, :city, presence: true
end

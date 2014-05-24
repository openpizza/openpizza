class Address < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates :name, :street, :postcode, :city, presence: true
end

class Shop < ActiveRecord::Base
  belongs_to :user
  belongs_to :address
  validates :address, :user, presence: true
end

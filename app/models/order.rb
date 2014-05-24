class Order < ActiveRecord::Base
  belongs_to :shop
  belongs_to :user
  belongs_to :address
  has_many :sub_orders

  validates :shop, :user, :address, :uuid, :estimated_participants, presence: true
end

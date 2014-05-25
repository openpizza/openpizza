require 'securerandom'

class Order < ActiveRecord::Base
  before_validation :set_uuid
  belongs_to :shop
  belongs_to :user
  belongs_to :address
  has_many :sub_orders

  validates :shop, :user, :uuid, presence: true

  def set_uuid
    self.uuid = SecureRandom.uuid
  end

  def self.find(input)
    shop = find_by_uuid(input)
    if shop.nil?
      raise ActiveRecord::RecordNotFound
    end
    shop
  end
end

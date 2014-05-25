class SubOrder < ActiveRecord::Base
  belongs_to :order

  validates :order, :nickname, presence: true

  def self.of_order(order_uuid)
    suborders = SubOrder.joins(:order).where(orders: { uuid: order_uuid })
    if suborders.nil?
      raise ActiveRecord::RecordNotFound
    end
    suborders
  end

  def self.find_by_order_and_nickname(order_uuid, nickname)
    suborders = SubOrder.joins(:order).where(orders: { uuid: order_uuid }, nickname: nickname).first
    if suborders.nil?
      raise ActiveRecord::RecordNotFound
    end
    suborders
  end

end

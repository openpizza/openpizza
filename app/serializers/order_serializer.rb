class OrderSerializer < ActiveModel::Serializer
  attributes :id, :host, :estimated_participants, :shop, :delivery_address

  def id
    object.uuid
  end

  def host
    object.user.email
  end

  def shop
    object.shop_id
  end

  def delivery_address
    object.address
  end

end

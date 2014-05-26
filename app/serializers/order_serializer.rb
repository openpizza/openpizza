class OrderSerializer < ActiveModel::Serializer
  attributes :id, :host, :shop, :delivery_address, :short_link

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

  def short_link
    order_url(object.uuid)
  end

end

class ShopListSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :postcode, :city

  def name
    object.address.name
  end

  def address
    object.address.street
  end

  def postcode
    object.address.postcode
  end

  def city
    object.address.city
  end

end

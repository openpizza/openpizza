class ItemSerializer < ActiveModel::Serializer
  attributes :id, :product, :quantity

  def id
    object.product.id
  end

  def product
    object.product.name
  end
end

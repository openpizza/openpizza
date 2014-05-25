class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity

  def id
    object.product.id
  end

  def name
    object.product.name
  end
end

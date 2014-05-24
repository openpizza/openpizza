class ItemSerializer < ActiveModel::Serializer
  attributes :id, :sub_order_id, :product_id, :quantity, :price
end

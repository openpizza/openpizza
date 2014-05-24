class OrderSerializer < ActiveModel::Serializer
  attributes :id, :uuid, :shop_id, :user_id, :address_id, :estimated_participants
end

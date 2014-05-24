class ShopSerializer < ActiveModel::Serializer
  attributes :id, :address_id, :user_id
end

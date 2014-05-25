class SubOrderSerializer < ActiveModel::Serializer
  attributes :nickname, :comment, :products, :price
  has_many :products
end

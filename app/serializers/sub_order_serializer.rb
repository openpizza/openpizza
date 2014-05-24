class SubOrderSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :order_id, :comment
end

json.array!(@sub_orders) do |sub_order|
  json.extract! sub_order, :nickname, :comment
  json.url order_item_path(sub_order.order.uuid, sub_order.nickname, format: :json)
end

json.array!(@sub_orders) do |sub_order|
  json.extract! sub_order, :id, :nickname, :order_id, :comment
  json.url sub_order_url(sub_order, format: :json)
end

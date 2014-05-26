json.array!(@orders) do |order|
  json.extract! order, :id, :uuid, :shop_id, :user_id, :address_id
  json.url order_url(order, format: :json)
end

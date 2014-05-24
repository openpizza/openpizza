json.array!(@orders) do |order|
  json.extract! order, :id, :uuid, :shop_id, :user_id, :address_id, :estimated_participants
  json.url order_url(order, format: :json)
end

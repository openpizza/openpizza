json.array!(@shops) do |shop|
  json.extract! shop, :id, :address_id, :user_id
  json.url shop_url(shop, format: :json)
end

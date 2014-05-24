json.array!(@product_categories) do |product_category|
  json.extract! product_category, :id, :name, :shop_id
  json.url product_category_url(product_category, format: :json)
end

class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :product_category_id
end

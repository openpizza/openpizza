class ProductCategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :shop_id
  has_many :products
end

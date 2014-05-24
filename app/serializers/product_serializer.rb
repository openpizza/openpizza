class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :product_category

  def product_category
    object.product_category.name
  end

end

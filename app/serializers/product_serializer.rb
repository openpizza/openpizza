class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :category

  def category
    object.product_category.name
  end

end

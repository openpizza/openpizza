class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :postcode, :city, :product_categories
  has_many :products, through: :product_categories

  def name
    object.address.name
  end

  def address
    object.address.street
  end

  def postcode
    object.address.postcode
  end

  def city
    object.address.city
  end

  def product_categories
    object.product_categories.map do |e|
        e.name
    end
  end

end

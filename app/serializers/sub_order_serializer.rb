class SubOrderSerializer < ActiveModel::Serializer
  attributes :nickname, :comment, :price
  has_many :products

  def products
    object.items
  end

end

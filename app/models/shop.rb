class Shop < ActiveRecord::Base
  belongs_to :user
  belongs_to :address
  has_many :product_categories
  has_many :products, through: :product_categories
  validates :address, :user, presence: true

  def rating
    Random.rand(5.0).round 1
  end
end

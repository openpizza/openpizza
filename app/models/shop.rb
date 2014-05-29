class Shop < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  belongs_to :user
  belongs_to :address
  has_many :product_categories
  has_many :products, through: :product_categories
  validates :address, :user, presence: true
  scope :by_postcode, lambda { |postcode|
    Shop.joins(:address).where(addresses: { postcode: postcode })
  }

  def rating
    Random.rand(5.0).round 1
  end

  def as_indexed_json(options={})
    self.as_json(
      include: { address: { only: [:name, :postcode, :street, :city]} })
  end
end

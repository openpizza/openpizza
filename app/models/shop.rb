class Shop < ActiveRecord::Base
  belongs_to :user
  belongs_to :address
  validates :address, :user, presence: true

  def rating
    Random.rand(5.0).round 1
  end
end

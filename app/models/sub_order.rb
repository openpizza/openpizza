class SubOrder < ActiveRecord::Base
  belongs_to :order

  validates :order, :nickname, presence: true
end

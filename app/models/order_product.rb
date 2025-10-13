class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates :product_id, presence: true
  validates :quantity, presence: true, numericality: { ni: 1..20 }

  delegate :name, to: :product
end

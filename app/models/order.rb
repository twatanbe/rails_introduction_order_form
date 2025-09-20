class Order < ApplicationRecord
  validates :name, presence: true, length: { maximum:40 }
  validates :email, presence: true, length: { maximum:100 }
  validates :telephone, presence: true, length: { maximum:11 }, numericality: { only_integer: true }
  validates :delivery_address, presence: true, length: { maximum:100 }
end

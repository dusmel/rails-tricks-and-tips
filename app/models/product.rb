class Product < ApplicationRecord
  belongs_to :brand

  scope :cheap_products, -> { where(price: 0..50.00).order(price: :asc).take(10) }
  scope :expensive_products, -> { where(price: 50.01..).order(price: :desc) }
end

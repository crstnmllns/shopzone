class Product < ApplicationRecord
  belongs_to :company
  has_many :order_items
  has_many :orders , through: :order_items

  has_many :prices
  
  has_many :category_products
  has_many :categories, through: :category_products
end

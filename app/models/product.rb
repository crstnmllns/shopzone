class Product < ApplicationRecord
  belongs_to :company
  has_many :order_items
  has_many :orders , through: :order_items

  has_many :prices, dependent: :destroy
  accepts_nested_attributes_for :prices

  has_many :category_products, dependent: :destroy
  has_many :categories, through: :category_products

  validates :name, :sku, :description, :stock, :presence: true

end

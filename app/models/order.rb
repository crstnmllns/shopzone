class Order < ApplicationRecord
  belongs_to :client
  has_many :order_items, dependent: :destroy
  has_many :products, through: :order_items
  enum state: [:created,:payed,:disabled]

  def add_product(product_id, quantity)
    product = Product.find(product_id)
    price = Price.where(product_id: product.id).last

    if product.present? && product.stock > 0 && price.present?
      order_items.create(product: product, quantity: quantity, unit_price: price.salesprice)
    end
  end

  def update_product; end

  def compute_total
    order_items.sum { |item| item.unit_price * item.quantity }
  end

  def self.search(search)
    if search
      state = Order.find_by(state: search)
      if state
        self.where(state: state)
      else
        Order.all
      end
    else
      Order.all
    end

  end
end

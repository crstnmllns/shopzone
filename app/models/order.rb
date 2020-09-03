class Order < ApplicationRecord
  before_create -> { generate_number(hash_size) }

  belongs_to :client
  has_many :order_items, dependent: :destroy
  has_many :products , through: :order_items
  enum state: [:created,:pay]

  validates :number, uniqueness: true

  def generate_number(size)
    self.number ||= loop do
      random = random_candidate(size)
      break random unless self.class.exists?(number: random)
    end
  end

  def random_candidate(size)
    "#{hash_prefix}#{Array.new(size){rand(size)}.join}"
  end

  def hash_prefix
    "BO"
  end

  def hash_size
    9
  end

  def add_product(product_id, quantity)
    product = Product.find(product_id)
    prices = Price.where(product_id: product.id)
    p = prices.last


    if product && (product.stock > 0 ) && p
      order_items.create(product_id: product.id, quantity: quantity, unit_price: p.salesprice)
      compute_total
    end
  end

  def update_product()
  end

  def compute_total
    sum = 0
    order_items.each do |item|
      total_price = item.unit_price * item.quantity
      sum += total_price
    end
    update_attribute(:total, sum)
  end
end

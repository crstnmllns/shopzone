class Company < ApplicationRecord
  has_many :categories
  has_many :users
  has_many :products

  accepts_nested_attributes_for :users
end

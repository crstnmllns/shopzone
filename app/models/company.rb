class Company < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :users, dependent: :destroy
  has_many :products, dependent: :destroy

  accepts_nested_attributes_for :users
end

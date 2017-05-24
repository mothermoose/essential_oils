class Order < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :user, optional: true
  belongs_to :oil
  has_many :carted_products
  has_many :oils, through: :carted_products

  
end

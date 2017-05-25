class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :carted_products
  has_many :oils, through: :carted_products

  
end

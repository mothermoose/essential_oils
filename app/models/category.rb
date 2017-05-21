class Category < ApplicationRecord
  has_many :category_products
  has_many :oils, through: :category_products
end

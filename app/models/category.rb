sclass Category < ApplicationRecord
  has_many :category_oils
  has_many :oils, through: :category_oils

  validates :name, uniqueness :true
end

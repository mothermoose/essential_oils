class CartedProduct < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :oil
  belongs_to :user 

  validates :quantity, presence: true
  validates :quantity, numericality: true 
  validates :quantity, length: { minimum: 1 }

  def subtotal
    oil.price * quantity
  end 
end

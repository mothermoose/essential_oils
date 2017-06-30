class Oil < ApplicationRecord
has_many :images
belongs_to :supplier
has_many :carted_products
has_many :orders, through: :carted_products

has_many :category_oils
has_many :categories, through: :category_oils 

validates :name, presence: true
validates :name, uniqueness: true
validates :price, presence: true
validates :price, numericality: true
validates :description, presence: true
validates :description, length: { maximum: 500}

  def discounted?
    price < 10
  end 
  
  def sale_message 
    if discounted?
    "Discount Item!"
    else 
    "Everyday Value!"
    end
  end  

  def tax
    price * 0.09
  end 

  def total
    price + tax
  end 

  def first_image_url
    image_collection = images
    if image_collection.length == 0
      "http://essentialoilbenefits.com/wp-content/uploads/2015/08/essential-oil-9.jpg"
    else
      image_collection.first.url
    end
  end 

end

class Oil < ApplicationRecord

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

  def discounted?
    price < 10
  end 



end

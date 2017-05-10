class Oil < ApplicationRecord

  def sale_message
    message = "Discount Item!" if price <= 2
    message = "Everyday Value!" if price > 2
    message
  end 

end

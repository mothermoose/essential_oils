class OrdersController < ApplicationController

  def create
    @carted_products = current_user.current_cart 
    subtotal = 0 
    
    carted_products.each do |carted_product|
        subtotal += carted_product.oil.price * carted_product.quantity
    end 

    tax = subtotal * 0.09
    total = subtotal + tax

    order = Order.new(
                  user_id: current_user.id,
                  subtotal: subtotal , 
                  tax: tax ,
                  total: total
                   )
    order.save 

    carted_products.update_all(status: "purchased, order_id: order.id")
    flash[:success] = "Order Placed!"
    redirect_to "/orders/#{ order.id }"
  end  

  def show
    #order_id = params[:id]
    # @order = Order.find_by(id:params[:id])
    # puts @order.oil.name
  end 

end

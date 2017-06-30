class OrdersController < ApplicationController
before_action :authenticate_user! 

  def create
    carted_products = current_user.current_cart 
    order = Order.new(user_id: current_user.id) 
    order.save 
    carted_products.update_all(status: "purchased", order_id: order.id)
    order.calculate_totals

    flash[:success] = "Order Placed!"
    redirect_to "/orders/#{ order.id }"
  end  

  def show
  @order = Order.find_by(id:params[:id])
  
  unless current_user.id == @order.user.id
    redirect_to '/'
  end 
end

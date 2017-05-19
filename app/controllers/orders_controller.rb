class OrdersController < ApplicationController

  def create
    oil_id = params[:oil_id]
    @oil = Oil.find_by(id:oil_id)


    order = Order.new(
                  user_id: current_user.id,
                  quantity:params[:quantity],
                  oil_id: params[:oil_id],
                  subtotal: @oil.price * params[:quantity].to_i,
                  total: (@oil.price * params[:quantity].to_i) + (@oil.tax * params[:quantity].to_i)
                   )
    order.save
    flash[:success] = "Order Placed!"
    redirect_to "/orders/#{ order.id }"
  end  

  def show
    order_id = params[:id]
    @order = Order.find_by(id:order_id)
  end 

end

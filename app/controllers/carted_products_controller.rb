class CartedProductsController < ApplicationController

  def create
    carted_product = CartedProduct.new(
                                  user_id: current_user.id,
                                  oil_id: params[:oil_id],
                                  quantity: params[:quantity],
                                  status: "carted"
                                          )
    carted_product.save
    redirect_to "/cart" 
  end 

  def index

  end  

end

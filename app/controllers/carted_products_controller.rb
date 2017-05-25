class CartedProductsController < ApplicationController

  def index
    if current_user && current_user.cart.count > 0
      @carted_products = current_user.current_cart
    else 
      flash[:warning] = "Why don't you add something to your cart, dude?"
      redirect_to '/'
    end 
  end  

  def create
    carted_product = CartedProduct.new(
                                  user_id: current_user.id,
                                  oil_id: params[:oil_id],
                                  quantity: params[:quantity],
                                  status: "carted"
                                          )
    carted_product.save
    flash[:success] = "Item added to cart"
    redirect_to "/cart" 
  end  

  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.update(status: "removed")
    flash[:success] = "Item Removed from Cart"
    redirect_to "/carted_products"
  end 

end

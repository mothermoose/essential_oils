class OilsController < ApplicationController

  def index
    @oils = Oil.all
  end 

  def new
  end 

  def create
    oil = Oil.new(
                  name: params[:name],
                  uses: params[:uses],
                  price:params[:price],
                  image:params[:image]
                   )
    oil.save
    flash[:success] = "Oil Created"
    redirect_to "/oils/#{ oil.id }"
  end

  def show
    oil_id = params[:id]
    @oil = Oil.find_by(id:oil_id)
  end 

  def edit
    @oil = Oil.find(params[:id])
  end 

  def update
    oil = Oil.find(params[:id])
    oil.assign_attributes(
                        name: params[:name],
                        uses: params[:uses],
                        price: params[:price],
                        image: params[:image]
                        )
    oil.save
    flash[:success] = "Oil Updated"
    redirect_to "/oils/#{ oil.id }"
  end 

  def destroy
    oil = Oil.find(params[:id])
    oil.destroy
    flash[:warning] = "Oil Destroyed"
    redirect_to "/"
  end 

end

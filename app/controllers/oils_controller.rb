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
  end

  def show
    oil_id = params[:id]
    @oil = Oil.find_by(id:oil_id)
  end
end

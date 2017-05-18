class OilsController < ApplicationController

  def index
    @oils = Oil.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount = params[:discount]
    search_term = params[:search_term]

    if search_term
      @oils = @oils.where(
        "name iLIKE ? Or uses iLIKE ?", 
        "%#{search_term}%", 
        "%#{search_term}%"
        )
    end 

    if discount
      @oils = @oils.where("price < ?", discount)
    end 

    if sort_order && sort_attribute
      @oils = @oils.all.order(sort_attribute => sort_order)
    elsif sort_attribute
      @oils = @oils.all.order(sort_attribute)
      #@oils = Oil.all.order(sort_attribute) 
    end  
  end 

  def new
  end 

  def create
    oil = Oil.new(
                  name: params[:name],
                  uses: params[:uses],
                  price:params[:price],
                  supplier_id: params[:supplier][:supplier_id]
                   )
    oil.save
    flash[:success] = "Oil Created"
    redirect_to "/oils/#{ oil.id }"
  end

  def show
      @oil = Oil.find(params[:id])
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
                        supplier_id: params[:supplier][:supplier_id]
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

  def random
    oil = Oil.all.sample
    redirect_to "/oils/#{oil.id}"
  end 

end

class OilsController < ApplicationController

  def lemon_action
    @oil = Oil.first
    render 'lemon.html.erb'
  end 

  def peppermint_action
    render 'peppermint.html.erb'
  end 
end

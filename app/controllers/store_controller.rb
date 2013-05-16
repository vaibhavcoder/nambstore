class StoreController < ApplicationController
  def index
    @products=Product.all
  end
  
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end
end

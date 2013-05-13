class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  #below code will check for a current cart and use the session id of that cart, 
  #if not found then will create a new cart instance and store the session id into it and will return the cart
  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart=Cart.create
    session[:cart_id]=cart.id
    cart
  end
  
  
end

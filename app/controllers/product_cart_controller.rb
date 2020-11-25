class ProductCartController < ApplicationController
  before_action :authenticate_user!

  def new
  
  end

  def create
    
  end

  def show
    @productcart = ProductCart.all
  end

  def destroy
    @productcart = ProductCart.find(params[:cart_id])
    if @productcart.destroy
      flash[:success] = "supprimé"
      redirect_to user_cart_path(Cart.find_by(user_id: current_user.id))
    end
  end
end

class ProductCartController < ApplicationController
  before_action :authenticate_user!
  def create
    
    @productcart = ProductCart.new(
      product_id: @product.id,
      cart_id: @cart.id,
      total_price: @product.price,
      quantity: 1
    )
  end

  def destroy
    @productcart = ProductCart.find(params[:cart_id])
    if @productcart.destroy
      flash[:success] = "supprimé"
      redirect_to user_cart_path(Cart.find_by(user_id: current_user.id))
    end
  end


end

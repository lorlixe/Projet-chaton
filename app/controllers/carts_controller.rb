class CartsController < ApplicationController
  before_action :authenticate_user!, only: [:show]


  def show
    @cart = Cart.find(params[:id])

    @productcart = ProductCart.where(cart_id: params[:id])
    @total_price = 0
    @productcart.each do |productcart|
      @total_price = productcart.product.price  + @total_price
    end
    
    only_see_own_page
  end

  private

  def only_see_own_page
    @cart = Cart.find(params[:id])
  
    if @cart.user_id != current_user.id
      redirect_to root_path, notice: "Vous n'avez pas accès a cette page."
    end
  end

end

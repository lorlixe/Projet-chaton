class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :only_see_own_page, only: [:show]


  def show
    @productcart = ProductCart.all

  end

  private

  def only_see_own_page
      @cart = Cart.find(params[:id])
    
      if @cart.user_id != current_user.id
        redirect_to root_path, notice: "Vous n'avez pas accès a cette page."
      end
  end
end

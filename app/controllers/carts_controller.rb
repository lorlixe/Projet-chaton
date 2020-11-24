class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :only_see_own_page, only: [:show]


  def show
    @cart = Cart.find(params[:id])
    @productcart = ProductCart.all
  end

  private

  def only_see_own_page
      @user = User.find(params[:id])
    
      if current_user != @user
        redirect_to root_path, notice: "Vous n'avez pas accès a cette page."
      end
  end


  def create
  end

  def destroy 
  end
end

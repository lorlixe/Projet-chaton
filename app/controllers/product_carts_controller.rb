class ProductCartsController < ApplicationController
  before_action :authenticate_user!

  def new
    @product = Product.find(params[:id])
  end

  def create
    @cart = Cart.where(user_id: current_user.id).last
    @product = Product.find(params[:product_id])

    @productcart = ProductCart.new(
      product_id: @product.id,
      cart_id: @cart.id,
      total_price: @product.price,
      quantity: 1
    )
    if @productcart.save
      flash[:success] = "Merci ! "
      redirect_to :controller => 'products', :action => 'index'
     
    else 
      flash[:danger] = "Nous n'avons pas pu ajouter ce produit"
      redirect_to root_path
    end
  end

  def destroy
    @productcart = ProductCart.find(params[:cart_id])
    if @productcart.destroy
      flash[:success] = "supprimé"
      redirect_to user_cart_path(Cart.find_by(user_id: current_user.id))
    end
  end

end

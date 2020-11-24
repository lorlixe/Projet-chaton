class ProductCartController < ApplicationController
  def create
    @cart = create_cart_for_a_current_user
    @product = Product.find(params[:product_id])
    @product_cart = @cart
  end

  def update
  end

  def destroy
  end
end

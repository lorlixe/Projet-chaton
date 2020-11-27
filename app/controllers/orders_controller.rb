class OrdersController < ApplicationController

  def index
    @orders = Order.all
    

    @productcart = ProductCart.where(cart_id: params[:id])
    @total_price = 0
    @productcart.each do |productcart|
    @total_price = productcart.product.price  + @total_price
    
    end
  end

  def new
    @order = Order.new

    @cart = Cart.find(params[:id])

    @productcart = ProductCart.where(cart_id: params[:id])
    @total_price = 0
    @productcart.each do |productcart|
    @total_price = productcart.product.price  + @total_price
    end
  end

  

end

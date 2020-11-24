class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
  end

  def create
    @cart = Cart.new(params[:cart])

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render json: @cart, status: :created, location: @cart }
      else
        format.html { render action: "new" }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
    @cart = create_cart_for_a_current_user
    @cart.destroy
    session[:cart_id] = nil

    respond_to do |format|
      format.html { redirect_to carts_url, notice: 'Your cart is currently empty' }
      format.json { head :no_content }
    end
  end
end

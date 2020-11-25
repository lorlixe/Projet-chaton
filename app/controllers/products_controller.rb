class ProductsController < ApplicationController
    def index
      @product = Product.all
      @category = Category.all

    end

    def show
      @product = Product.find_by_id(params[:id])


    end
end

class ProductsController < ApplicationController
    def index
      @product = Product.all
      @category = Category

    end

    def show
      @specific_product = Product.find_by_id(params[:id])


    end
end

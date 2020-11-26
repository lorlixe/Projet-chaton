module Admin

class ProductsController < ApplicationController
  def index
  end

  def edit
		@product = Product.find(params[:id])
  end

  def update
		@product=Product.find(params[:id])

		nameProduct = params[:product][:name]
		price = params[:product][:price]
		url = params[:product][:url]
		description = params[:product][:description]
    category_id = params[:product][:category_id]
  		@product.update(name:nameProduct,price:price, url:url, description:description, category_id:category_id)

  		redirect_to admin_products_path
  end

    def destroy
		@product=Product.find(params[:id])
		@product.destroy
    redirect_to admin_products_path
	end
end

end

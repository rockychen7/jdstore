class Admin::ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

   def create
     @product = product.new(product_params)
     @product.save

       redirect_to admin_products_path
   end

   private

   def product_params
     params.require(:product).permit(:title, :description, :quantity, :price)
   end

end

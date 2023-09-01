class ProductController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    return product_path if product.save
    render :new
  end

  private

  def product_params
    params.require(:product).permit(:name, :price)
  end
end
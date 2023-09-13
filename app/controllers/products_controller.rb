class ProductsController < ApplicationController
  before_action :fetch_product, only: [:edit, :update, :show, :destroy]
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def show
    
  end
  
  def edit
    
  end

  def update
    
      if @product.update(product_params)
        redirect_to @product
      else

        render :edit
      end
  end

  def destroy
    
    if @product.destroy
      redirect_to products_path
    end
  end
  
  

  private

  def product_params
    params.require(:product).permit(:name, :price, :avatar)
  end

  def fetch_product
    @product = Product.find(params[:id])
  end
end

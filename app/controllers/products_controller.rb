class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @products = Product.all
  

    respond_with(@products)
  end

  def show
    respond_with(@product)
  end

  def new
    @product = Product.new
    # respond_to do |format|
    #   format.html # new.html.erb
    #   format.json { render json: @product }
    #   format.js
    respond_with(@product)
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    @product.save
    respond_with(@product)
  end

  def update
    @product.update(product_params)
    respond_with(@product)
  end

  def destroy
    @product.destroy
    respond_with(@product)
  end
  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name)
    end
end

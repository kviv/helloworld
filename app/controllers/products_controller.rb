class ProductsController < ApplicationController

  def index 
    @products = Product.all
  end

  def new 
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product].permit(:name))
    if @product.save
      redirect_to @product
    else
      render :new
    end
  end

  def edit 
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(params[:product].permit(:name))
      redirect_to @product
    else
      render :edit
    end
  end

  def show
    @product = Product.find(params[:id])
  end


end

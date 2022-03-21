class ProductsController < ApplicationController
  def index
    @products = Product.all
    render template: "products/index"
  end


  def show
   @product = Product.find_by(id: params[:id])
   render template: "products/show"
  end

  def create
    product = Product.new(
      name: params[:input_name], 
      price: params[:input_price], 
      image_url: params[:input_image], 
      description: params[:input_description])

    if product.save
      render json: product.as_json
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    product = Product.find_by(id: params[:id])
    
    product.name = params[:input_name] || recipe.name
    product.price = params[:input_price] || recipe.price
    product.image_url = params[:input_image] || recipe.image_url
    product.description = params[:input_description] || product.description

    render json: product.as_json
    
    product.save
  end


end

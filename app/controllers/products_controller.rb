class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end


  def show
   product = Product.find_by(id: params[:id])
   render json: product.as_json
  end

  def create
    product = Product.new(
      name: params[:input_name], 
      price: params[:input_price], 
      image_url: params[:input_image], 
      description: params[:input_description])

    product.save

    render json: product.as_json
  end

end

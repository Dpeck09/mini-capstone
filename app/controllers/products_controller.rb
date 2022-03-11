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
    product = Product.new(name: "couch", price: "8000", image_url: "https://i.pinimg.com/originals/04/ab/61/04ab61338cfad5b66fe4280544a13d69.jpg", description: "the nicest couch you have ever sat on")

    product.save

    render json: product.as_json
  end

end

class ProductsController < ApplicationController
  def all
    render json: Product.all
  end

  def individual
    render json: Product.first
  end

  def individual_2
    render json: Product.second
  end

  def individual_3
    render json: Product.third
  end
  
end

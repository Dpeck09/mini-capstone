class CartedProductsController < ApplicationController

  def create
    carted = CartedProduct.new(
      user_id: current_user.id
      product_id: params[:product_id]
      quantity: params[:quantity]
      status: params[:status]
      order_id: params[:order_id]
    )

    render json: carted.as_json
  end

end





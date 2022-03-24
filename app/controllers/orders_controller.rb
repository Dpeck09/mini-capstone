class OrdersController < ApplicationController

  before_action :authenticate_user

  def create

    product = Product.find_by(id: params[:product_id])
    
    calculated_subtotal = params[:quantity] * product.price

    calculated_tax = calculated_subtotal * 0.09

    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity].to_i,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_subtotal + calculated_tax
    )
    if order.save
      render json: { message: "you have purchased successfully" }
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end






  def show
    @order = current_user.orders
    render template: "orders/index"
  end








  def index

    
    order = Order.all
    render json: order.as_json
  end




end

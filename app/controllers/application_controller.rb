class ApplicationController < ActionController::API

  def authenticate_user
    unless current_user
      render json: {}, status: :unauthorized
  end
end

  def authenticate_admin  
    unless current_user && admin
  end
end
end

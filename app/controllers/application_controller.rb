class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :role])
end

def current_order
    if current_user
      order = Order.where(user_id: current_user.id).where(state: "created").last
      if order.nil?
        order = Order.create(user: current_user, state: "created")
      end
      return order
    end
    nil
  end

  protected
  def authenticate_admin!
    unless current_user.present? && current_user.role == 'admin'
      flash[:danger] = "No tienes autorización para entrar en esa sección"
      redirect_to root_path
    end
  end
end

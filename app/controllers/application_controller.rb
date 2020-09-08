class ApplicationController < ActionController::Base
  include ApplicationHelper
  before_action :configure_permitted_parameters, if: :devise_controller?

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :role])
  end

  protected

  def authenticate_admin!
    unless current_user.present? && current_user.role == 'admin'
      flash[:danger] = "No tienes autorización para entrar en esa sección"
      redirect_to products_path
    end
  end

  def after_sign_in_path_for(resource)
    if current_client
      root_path
    elsif current_user
      products_path
    else
      super
    end
  end
end

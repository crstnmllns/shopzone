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
      redirect_to root_path
    end
  end
end

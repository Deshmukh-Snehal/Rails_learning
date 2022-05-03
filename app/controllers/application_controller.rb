class ApplicationController < ActionController::Base
  ##  To set up a controller with user authentication
  # before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  ## To permit additional parameters
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:image,:first_name,:last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:image,:first_name,:last_name])
  end
end
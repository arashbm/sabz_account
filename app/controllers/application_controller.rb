class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.sanitize(:sign_up).concat [:first_name, :last_name, :institute, :mobile, :phone, :fax, :address]
    devise_parameter_sanitizer.sanitize(:account_update).concat [:first_name, :last_name, :institute, :mobile, :phone, :fax, :address]
  end
end

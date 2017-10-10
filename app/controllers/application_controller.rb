class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # Call method for configured parameters
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Protect the database, while allowing these fields to be updated by the app.
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :email, :password, :password_confirmation, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :password_confirmation, :current_password])
  end
end

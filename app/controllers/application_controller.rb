class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
<<<<<<< HEAD
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
=======
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation, :remember_me, :name, :age, :sex, :avatar, :avatar_cache])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :password_confirmation, :current_password, :age, :sex, :avatar, :avatar_cache, :remove_avatar])
>>>>>>> 68a445cba24cb6a6e671184dba0366d95c4a09e9
  end

end


class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
   devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def after_sign_up_path_for(resource)
    sign_in(resource)
    super
  end

end

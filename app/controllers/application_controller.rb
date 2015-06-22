class ApplicationController < ActionController::Base
   protect_from_forgery with: :exception

#la siguiente linea verifica si tenemos una instancia de devise instalada
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:primer_nombre, :primer_apellido, 
    	:nombre_perfil, :email, :password, :password_confirmation) }
  end 
end

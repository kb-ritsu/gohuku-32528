class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?



  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:staff_id, :first_name, :last_name, :birthday, :first_name_katakana, :last_name_katakana,:gender_id,:city,:address_number,:address,:building,:phone_number,:telephone_number,:detail,:email])
  end
end

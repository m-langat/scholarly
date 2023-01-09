class ApplicationController < ActionController::Base
    before_action :configure_sign_up_params, if: :devise_controller?


    def configure_sign_up_params
        devise_parameter_sanitizer.permit(:sign_up, keys:[:name, :email, :password, :gender, :phone, :place_of_work, :role_in_facility, :country, :regulatory_body])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :gender, :phone, :place_of_work, :role_in_facility, :country, :regulatory_body])

    end


end

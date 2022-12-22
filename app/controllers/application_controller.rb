class ApplicationController < ActionController::Base
    before_action :configure_sign_up_params, only: [:create, :update]


    def configure_sign_up_params
        devise_parameter_sanitizer.permit(:signup, keys: [:name, :email, :password, :gender, :phone, :place_of_work, :role_in_facility, :country, :regulatory_body])
    end


end

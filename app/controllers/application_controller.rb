class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    end

    def full_name
        "#{current_user.first_name} #{current_user.last_name}"
    end

    def after_sign_in_path_for(resource)
    	if user_signed_in?
    		doctors_path
    	elsif doc_signed_in?
    		doctor_dashboard_index_path
    	elsif consumer_signed_in?
    		user_dashboard_index_path
    	end
		end
end

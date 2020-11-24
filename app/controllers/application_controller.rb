class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    
     protected
    def configure_permitted_parameters
        # sign_upのときに、name, ageを許可する
        devise_parameter_sanitizer.permit :sign_up, keys: [:name, :age]
         # account_updateのときに、name,ageを許可する
        devise_parameter_sanitizer.permit :account_update, keys: [:name, :age]
        
    end
end

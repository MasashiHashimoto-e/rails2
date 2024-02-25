class ApplicationController < ActionController::Base

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :introduction, :image])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :introduction, :image])
    end

    private 
    def after_sign_in_path_for(resource)
       root_path
    end
   
    def after_sign_out_path_for(resource)
        root_path
    end
end

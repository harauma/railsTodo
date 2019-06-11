class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        "/todos"
    end

    def after_sign_out_path_for(resource)
        "/users/login"
    end

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
      end
end

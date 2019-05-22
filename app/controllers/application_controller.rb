class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        "/todos"
    end

    def after_sign_out_path_for(resource)
        admin_root_path
    end

end

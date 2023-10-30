class ApplicationController < ActionController::Base

    def require_user
        if user_signed_in?
            flash[:alert]="You must be logged in to perform that action"
            redirect_to new_user_session_path_path
        end
    end

    private
        def after_sign_in_path_for(resource)
            root_path
        end
end

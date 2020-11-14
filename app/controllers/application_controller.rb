class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def error_page
        render "/error_page"
    end

    helper do 
       

        def redirect_if_not_logged_in
            if !user_signed_in? 
                flash[:error] = "You must be logged in to view this page."
                redirect_to login-path 
            end
        end 
    end
end

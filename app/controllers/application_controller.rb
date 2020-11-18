class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :redirect_if_not_logged_in

    
    def error_page
        render "/error_page"
    end

    def under_construction
        render "/under_construction"
    end 


    def redirect_if_not_logged_in
        if !user_signed_in? 
                flash[:error] = "You must be logged in to view this page."
                redirect_to user_session_path 
        end
    end 

end

class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def error_page
        render "/error_page"
    end

    helper do 

        def current_user
            @user = current_user
        end 
       
        def verify_user
            protest = Protest.find_by_id(params[:protest_id])
            if current_user
               current_user.id = protest.user_id 
            end 
        end 
    end 
                
end

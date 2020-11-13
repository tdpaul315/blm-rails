class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def error_page
        render "/error_page"
    end

end

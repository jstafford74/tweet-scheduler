class MainController < ApplicationController
before_action :set_current_user
    def index
       if session[:user_id]
        @user = User.find_by(id: session[:user_id])
       end
    end
    
end
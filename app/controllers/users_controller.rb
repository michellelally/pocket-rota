class UsersController < ApplicationController

    session[:current_user_id] = user.id

    def set_cookie 
        cookies.permanent.signed[:current_user_id] = current_user.id
        cookies.permanent.signed[:current_username] = current_user.username
    end

    def show_cookie
        @user_id = cookies[:current_user_id]
        @username = cookies[:current_username]

    end

    def delete_cookie 
        cookies.delete :current_user_id
        cookies.delete :current_username
    end

    
end
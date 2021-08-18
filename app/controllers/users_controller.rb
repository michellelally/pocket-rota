class UsersController < ApplicationController

    session[:current_user_id] = user.id
    
end
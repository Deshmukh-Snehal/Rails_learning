class UserController < ApplicationController
    def new        
    end

    def create
        email = params[:username]
        password = params[:userpassword]
        user = User.find_by(:email => email)
        if user
            @register = false
        else
            User.create(
                :email => email, 
                :password_digest => password
            )
            @register = true
        end
        render "new"
    end

    def destroy        
    end
end

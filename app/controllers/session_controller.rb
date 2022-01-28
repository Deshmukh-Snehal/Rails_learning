class SessionController < ApplicationController
    def new        
    end

    def create
        email = params[:email]
        password = params[:password]
        user = User.find_by(:email => email) 
        if user && user.password_digest == password  
            response = { 
                :loggedin => true
            }  
            session[:user_id] = user.id
        else      
            @loggedin = false
            render "new"
        end
    end

    def destroy 
        session[:user_id] = nil
    end
end

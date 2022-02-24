class SessionsController < ApplicationController

    def new 
    end

    def create
         @user = User.where({email: params["email"]})[0]
        if @user
            if @user.password == params["password"]
            flash[:notice] = "Welcome"
            redirect_to "/companies"
            else
            flash[:notice] = "Nope."
            redirect_to "/sessions/new"
            end
        end
    end
end

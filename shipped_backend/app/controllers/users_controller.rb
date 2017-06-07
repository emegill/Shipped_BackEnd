class UsersController < ApplicationController

    def index
        loggedUser = User.where(name: params[:name]).first

        if loggedUser.password === params[:password]

            session[:user_id] = loggedUser.id
            loggedInState = true

            render json: loggedInState

        else
            loggedInState = false
            render json:  logginedInState
        end

    end

    def create


    end

    private

    def user_params
        params.require(:data).permit(:name, :password)
    end
end

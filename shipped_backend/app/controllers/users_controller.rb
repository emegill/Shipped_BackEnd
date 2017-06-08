class UsersController < ApplicationController

    def index
        loggedUser = User.where(name: params[:name]).first

        if loggedUser.password === params[:password]

            user_id = loggedUser.id

            loggedInState = {views: true, user_id: user_id }

            render json: loggedInState

        else
            loggedInState = false
            render json:  loggedInState
        end

    end

    def show


    end

    def create

        User.create(user_params)

    end

    private

    def user_params
        params.require(:data).permit(:name, :password)
    end
end

class BoatsController < ApplicationController

    def index
        boats = User.find(session[:user_id]).boats
        render json: boats
    end
    def create


    end

    private

    def boat_params
        params.require(:).permit(:name, :container_amount, :location)
    end
end

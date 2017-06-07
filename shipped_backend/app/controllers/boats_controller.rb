class BoatsController < ApplicationController

    def index
        boats = User.find(session[:user_id]).boats
        render json: boats
    end
    def create

        boat = Boat.create(boat_params)
        render json: boat
    end

    private

    def boat_params
        params.require(:data).permit(:name, :container_amount, :location)
    end
end

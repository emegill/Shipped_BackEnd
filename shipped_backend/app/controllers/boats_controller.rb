class BoatsController < ApplicationController
    def create


    end

    private

    def boat_params
        params.require(:).permit(:name, :container_amount, :location)
    end
end

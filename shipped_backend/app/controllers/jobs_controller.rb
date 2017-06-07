class JobsController < ApplicationController
    def index


    end


    def create


    end

    private

    def job_params
        params.require(:data).permit(:name, :description, :origin, :destination, :cost, :containers_needed, :user_id, :boat_id)
    end
end

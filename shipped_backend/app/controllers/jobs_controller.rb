class JobsController < ApplicationController
    def create


    end

    private

    def job_params
        params.require(:).permit(:name, :description, :origin, :destination, :cost, :containers_needed, :user_id, :boat_id)
    end
end

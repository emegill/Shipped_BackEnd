class JobsController < ApplicationController
    def index


    end


    def create

         newJob = Job.create!(job_params)
    render json: newJob
    end

    private

    def job_params
        params.require(:data).permit(:name, :description, :origin, :destination, :cost, :containers_needed, :boat_id, :user_id)
    end
end

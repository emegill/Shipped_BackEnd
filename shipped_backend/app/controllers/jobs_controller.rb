class JobsController < ApplicationController
    def index


    end


    def create
        job = job_params
        job.user_id = session[:user_id]
        Job.create(job)

    end

    private

    def job_params
        params.require(:data).permit(:name, :description, :origin, :destination, :cost, :containers_needed, :boat_id)
    end
end

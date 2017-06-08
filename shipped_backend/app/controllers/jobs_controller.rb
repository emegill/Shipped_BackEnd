class JobsController < ApplicationController
    def index


    end


    def create
        p session[:user_id]
            p session[:user_id]
                p session[:user_id]
                    p session[:user_id]

        job = job_params
        job.user_id = @newSession
         newJob = Job.create(job)
    render json: newJob
    end

    private

    def job_params
        params.require(:data).permit(:name, :description, :origin, :destination, :cost, :containers_needed, :boat_id)
    end
end

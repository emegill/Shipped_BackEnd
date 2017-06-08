class JobsController < ApplicationController
    def index


    end


    def create
        p @newSession
            p @newSession
                p @newSession
                    p @newSession


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

class JobsController < ApplicationController
    def create


    end

    private

    def job_params
        params.require(:).permit(:name, :password)
    end
end

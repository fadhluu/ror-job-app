class UserJobController < ApplicationController
    def apply
        # @job = Job.find(params[:id])
        @user_job = UsersJob.create(user_id: current_user.id, job_id: params[:id])
        redirect_to jobs_path(params[:id])
    end
end

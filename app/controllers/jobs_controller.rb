class JobsController < ApplicationController
    before_action :check_current_user, only: %i[show]

    def show
        @job = Job.find(params[:id])
    end
end

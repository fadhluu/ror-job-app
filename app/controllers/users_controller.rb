# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params_session)
    
    session[:user_id] = @user.id

    redirect_to root_path
  end

  def show
    @user = User.find_by(username: params[:id])
    @user_jobs = @user.jobs
  end

  private

  def params_session
    params.require(:user).permit(:username, :password, :first_name, :last_name, :dob)
  end
end

# frozen_string_literal: true

class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])

    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    if logged_in?
      session[:user_id] = nil
    else
      redirect_to login_path
    end

    redirect_to root_path
  end
end

# frozen_string_literal: true

class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:username, :password, :first_name, :last_name, :dob))

    session[:user_id] = @user.id

    redirect_to root
  end

  def login; end

  def welcome; end
end

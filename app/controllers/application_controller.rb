# frozen_string_literal: true

class ApplicationController < ActionController::Base

  helper_method :current_user
  helper_method :logged_in?
  helper_method :check_current_user

  def current_user
    @user = User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def check_current_user
    if current_user.blank?
      flash[:error] = "Please Login First"
      redirect_to login_path
    end
  end
end

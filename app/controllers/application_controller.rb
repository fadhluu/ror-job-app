# frozen_string_literal: true

class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?, :check_current_user

  def current_user
    @user = User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.blank?
  end

  def check_current_user
    if current_user.blank?
      flash[:danger] = "Please Login First"
      redirect_to login_path
    end
  end
end

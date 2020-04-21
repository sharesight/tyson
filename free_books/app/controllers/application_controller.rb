class ApplicationController < ActionController::Base

  helper_method :current_user

  def logged_in?
    current_user
  end

  def current_user
    @current_user ||= session[:user_id] && User.where(id: session[:user_id]).first
  end

end

class HomeController < ApplicationController
  def index
    redirect_to users_path unless logged_in?
  end
end

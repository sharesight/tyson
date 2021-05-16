class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:name)
    @user = User.where(name: user_params[:name]).first || User.new(user_params)

    if @user.new_record? && !@user.save
      flash[:error] = @user.errors.full_messages
      render :index and return
    end

    session[:user_id] = @user.id
    redirect_to root_path
  end
end

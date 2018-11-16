class SessionsController < ApplicationController

  def create
    @current_user = User.find_by_credentials(
      params[:current_user][:email],
      params[:current_user][:password])
    if @current_user.nil?
      flash.now[:errors] = ["Incorrect username and/or password"]
    else
      login_user!(@current_user)
      byebug
      redirect_to user_url(@current_user.id)
    end
  end

  def new
    byebug
    @current_user = User.new
    render :new
  end

  def destroy
    byebug
    log_out_user!(@current_user)
    render :new
  end
end

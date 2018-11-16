class ApplicationController < ActionController::Base

  def login_user!(user)
      session[:session_token] = user.reset_session_token!
  end

  def log_out_user!(user)
    user.reset_session_token!
    session[:session_token] = nil
  end

end

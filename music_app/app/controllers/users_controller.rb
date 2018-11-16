class UsersController < ApplicationController
#Write methods on the UsersController to allow new users to sign up.
#Users should be logged in immediately after they sign up.



def create
  @user = User.new(user_params)

    if @user.save!
    render :show
  else
    # Flash.now[:errors] = @user.errors.full_messages
    render :new
  end

end

def show
  @user = User.find_by(params[:email])
  render :show

end

def new
  @user = User.new
  render :new
end


end

def user_params
  params.require(:user).permit(:email, :password)
end

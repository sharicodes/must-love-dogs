class SessionsController < ApplicationController

  skip_before_action :authorize, only: [:login, :create]

  def login
    # render :login
  end

  def create
# byebug
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])

      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else

      flash[:unauthenticated] = "not authenticated"
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
  end
end

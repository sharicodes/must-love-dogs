class SessionsController < ApplicationController
  skip_before_action :authorize, only: [:login, :create]

  def index
  end 

  def login
  end

  def create
    @user = User.find_by(username: params[:username])
    if !!@user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:unauthenticated] = "Not Authenticated"
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
  end

end

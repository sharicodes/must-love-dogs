class SessionsController < ApplicationController
  skip_before_action :authorize, only: [:login, :create]

  def login
    @halfhrwalk = Service.find_by(id: 6)
    @hrwalk = Service.find_by(id: 7)
    @overnight = Service.find_by(id: 8)
    @groom = Service.find_by(id: 9)
    @vet = Service.find_by(id: 10)
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
    redirect_to login_path
  end


end

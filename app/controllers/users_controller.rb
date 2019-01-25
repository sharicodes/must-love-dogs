class UsersController < ApplicationController
  before_action :authorize, only: [:show, :new]


  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @dogs = @user.dogs.all
    # @appointments = @dogs
  end

  def new
    @user = User.new
    @user.dogs.build
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
    @dogs = Dog.all
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path

  end

  def add_dog
    @user.dogs << Dog.create
  end

  # def logout
  #   session[:user_id].delete
  #   redirect_to
  # end

  private

  def user_params
    params.require(:user).permit(:username, :password, :full_name, :email, :phone_number, :neighborhood,
    dogs_attributes:[
      :name, :age, :size, :vet_name, :food_name, :img_url
    ])
  end

 end

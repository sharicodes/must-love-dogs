class UsersController < ApplicationController
  def index
      @users = User.all
    end

    def show
      @user = User.find(params[:id])
      @dogs = @user.dogs.all
    end

    def new
      @user = User.new

    end

    def create
      @user = User.create(user_params)
        if @user.valid?
            redirect_to user_path(@user)
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
      redirect_to user_path(@user)

    end



    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to users_path
    end

    def add_dog
      @user.dogs << Dog.create
    end

    private
    def user_params
      params.require(:user).permit(:full_name, :email, :phone_number, :neighborhood)
    end

 end

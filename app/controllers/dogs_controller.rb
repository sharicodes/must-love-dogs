class DogsController < ApplicationController
  def index
      @dogs = Dog.all
    end

    def show
      @dog = Dog.find(params[:id])
      #@appointment = @dog.appointment
    end

    def new
      @dog = Dog.new
      @users = User.all
      #@appointments = Appointment.all



    end

    def create
      @dog = Dog.create(dog_params)
        if @dog.valid?
            redirect_to dog_path(@dog)
        else
        flash[:errors] = @dog.errors.full_messages
          redirect_to new_dog_path
        end
    end


    def edit
      @dog = Dog.find(params[:id])

    end

    def update
      @dog = Dog.find(params[:id])
      @dog.update(dog_params)
        redirect_to dog_path(@dog)

    end



    def destroy
      @dog = Dog.find(params[:id])
      @dog.destroy
      redirect_to dogs_path
    end

    private
    def dog_params
      params.require(:dog).permit(:name, :age, :size, :vet_name, :food_name, :user_id, :img_url, :caregiver_id, :service_id)
    end

end

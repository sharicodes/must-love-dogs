class AppointmentsController < ApplicationController

  def index
      @appointments = Appointment.all
    end

    def show
      @appointment = Appointment.find(params[:id])
    end

    def new
      @appointment = Appointment.new
      id = session[:user_id]
      @user = User.find_by(id: id)
      @dogs = @user.dogs
      @service = Service.first
      @caregivers = @service.halfwalk_caregivers
    end

    def create
      @appointment = Appointment.create(appointment_params(:dog_id, :caregiver_id, service_id: 1))
      id = session[:user_id]
      @user = User.find_by(id: id)
      @dogs = @user.dogs
      @service = Service.first
      @caregivers = @service.halfwalk_caregivers
      redirect_to user_path(@user)
    end


    def edit
      @appointment = Appointment.find(params[:id])

    end

    def update
      @appointment = Appointment.find(params[:id])
      @appointment.update(appointment_params)
        redirect_to appointment_path(@appointment)

    end



    def destroy
      @appointment = Appointment.find(params[:id])
      @appointment.destroy
      redirect_to appointments_path
    end

    private
    def appointment_params(*args)
      params.require(:appointment).permit(*args)
    end

  end

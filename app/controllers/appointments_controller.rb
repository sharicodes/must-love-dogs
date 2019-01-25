class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new_30m_walk
    session[:service_id] = 1
    @appointment = Appointment.new
    id = session[:user_id]
    @user = User.find_by(id: id)
    @dogs = @user.dogs
    @service = Service.first
    @caregivers = @service.halfwalk_caregivers
    render "new"
  end

  def new_1hr_walk
    session[:service_id] = 2
    @appointment = Appointment.new
    id = session[:user_id]
    @user = User.find_by(id: id)
    @dogs = @user.dogs
    @service = Service.second
    @caregivers = @service.fullwalk_caregivers
    render "new"
  end

  def new_overnight
    session[:service_id] = 3
    @appointment = Appointment.new
    id = session[:user_id]
    @user = User.find_by(id: id)
    @dogs = @user.dogs
    @service = Service.third
    @caregivers = @service.dogsit_caregivers
      render "new"
  end

  def new_grooming
    session[:service_id] = 4
    @appointment = Appointment.new
    id = session[:user_id]
    @user = User.find_by(id: id)
    @dogs = @user.dogs
    @service = Service.fourth
    @caregivers = @service.grooming_caregivers
    render "new"
  end

  def new_vet
    session[:service_id] = 5
    @appointment = Appointment.new
    id = session[:user_id]
    @user = User.find_by(id: id)
    @dogs = @user.dogs
    @service = Service.fifth
    @caregivers = @service.vet_caregivers
    render "new"
  end

  def create
    @appointment = Appointment.create(appointment_params(:dog_id, :caregiver_id, :service_id))
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

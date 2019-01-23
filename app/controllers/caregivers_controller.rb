class CaregiversController < ApplicationController

  def index
    @caregivers = Caregiver.all
  end

  def show
    @caregiver = Caregiver.find(params[:id])
  end

  def new
    @caregiver = Caregiver.new

  end

  def create
    @caregiver = Caregiver.create(caregiver_params)
    if @caregiver.valid?
      redirect_to caregiver_path(@caregiver)
    else
      flash[:errors] = @caregiver.errors.full_messages
      redirect_to new_caregiver_path
    end
  end

  def edit
    @caregiver = Caregiver.find(params[:id])
  end

  def update
    @caregiver = Caregiver.find(params[:id])
    @caregiver.update(caregiver_params)
    redirect_to caregiver_path(@caregiver)
  end

  def destroy
    @caregiver = Caregiver.find(params[:id])
    @caregiver.destroy
    redirect_to caregivers_path
  end

  private

  def caregiver_params
    params.require(:caregiver).permit(:name, :bio, :neighborhood, service_id: [])
  end

end

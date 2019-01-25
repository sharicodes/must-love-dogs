class CareservicesController < ApplicationController

  def show
    @careservice = Careservice.new
    @caregivers = Service.first.halfwalk_caregivers
    session[:careservice] = @careservice
  end



end

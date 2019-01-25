class ServicesController < ApplicationController

  def show
    @service = Service.find(params[:id])
  end

end

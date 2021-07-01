class ServicesController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]

def index
  @services = policy_scope(Service)
  @users = User.all
end

def show
  @service = Service.find(params[:id])
  authorize @service

  @markers = @service.geocoded.map do |service|
    {
      lat: service.latitude,
      lng: service.longitude
    }
end

def new 
  @service = Service.new
  authorize @service
end

def create
    @service = Service.new(service_params)
    @service.user = current_user
    authorize @service
    if @service.save
        redirect_to service_path(@service)
    else
      render :new
    end       
end

private

def service_params
  params.require(:service).permit(:duration, :start_time, :price, :plan, :place, :photo)
end
end

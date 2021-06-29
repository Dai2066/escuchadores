class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all    
  end
      
  def show
    @appointment = Appointment.find(params[:id])
  end
      
  def new 
    @service = Service.find(params[:service_id])
    @appointment = Appointment.new
  end
      
  def create
    @appointment = Appointment.new()
    @appointment.user = current_user
    service = Service.find(params[:service_id])
    @appointment.service = service
    if @appointment.save
      redirect_to service_path(service)
    else
      render :new
    end
  end


  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.delete
    redirect_to services_path
    flash[:notice] = "Destruiste to booking"
  end

      
     private
      
  def appointment_params
    params.require(:service).permit(:user_id, :service_id)
    end
end

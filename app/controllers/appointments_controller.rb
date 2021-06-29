class AppointmentsController < ApplicationController

  def index
    @appointments = policy_scope(Appointment)
  end
  
  def new
    @service = Service.find(params[:service_id])
    @appointment = Appointment.new
    authorize @appointment
  end
      
  def create
    @appointment = Appointment.new()
    @appointment.user = current_user
    service = Service.find(params[:service_id])
    authorize @appointment
    @appointment.service = service
    if @appointment.save
      redirect_to service_path(service)
    else
      render :new
    end
    
  end
      
     private
      
  def appointment_params
    params.require(:service).permit(:user_id, :service_id)
    end
end

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
    service = Service.find(params[:service_id])
    @appointment = Appointment.new(appointment_params.merge({ user_id: current_user.id }))
    @appointment.user = current_user
    authorize @appointment
    @appointment.service = service
    
    if @appointment.save
      redirect_to confirmation_path(service)
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
    params.permit(:service_id)
  end
end

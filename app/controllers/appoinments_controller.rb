class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all    
  end
      
  def show
    @appointment = Appointment.find(params[:id])
  end
      
  def new 
    @appointment = Appointment.new
  end
      
  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user
        if @appointment.save
            redirect_to service_path(@appointment)
        else
           render :new
          end       
      end
      
     private
      
  def appointment_params
    params.require(:service).permit(:user_id, :service_id,)
    end
end

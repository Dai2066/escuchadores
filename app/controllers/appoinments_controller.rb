class AppoinmentsController < ApplicationController

  def index
    @appoinments = Appoinment.all    
  end
      
  def show
    @appoinment = Appoinment.find(params[:id])
  end
      
  def new 
    @appoinment = Appoinment.new
  end
      
  def create
    @appoinment = Appoinment.new(appoinment_params)
    @appoinment.user = current_user
        if @appoinment.save
            redirect_to service_path(@appoinment)
        else
           render :new
          end       
      end
      
     private
      
  def appoinment_params
    params.require(:service).permit(:user_id, :service_id,)
    end
end

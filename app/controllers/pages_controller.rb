class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @services = Service.all.first(3)
    @users = User.all
  end

  def confirmation
    @assigned_to_user = Appointment.select {|app| app.user == current_user }
    @markers = []
    @assigned_to_user.each do |app|
    @markers << { lat: app.service.geocode[0],
      lng: app.service.geocode[1]}
    end
  end  
    
end

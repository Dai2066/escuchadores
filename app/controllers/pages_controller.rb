class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @services = Service.all.first(3)
    @users = User.all
  end

  def confirmation
  end

  def profile
  end
    
end

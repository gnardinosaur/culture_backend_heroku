class Api::V1::SchedulesController < ApplicationController
  # skip_before_action :authorized

  def create 
    
    byebug
    # params[:userID]
    # params[:email]
    # params[:art]
    # params[:department]
    # params[:highlight]
    # params[:dates]
    # params[:days]
    # params[:time]
    
    # 1- create a Schedule instance
    # 2- create 

  end 

  def index 
    schedules = Schedule.all
    render json: schedules
  end

end
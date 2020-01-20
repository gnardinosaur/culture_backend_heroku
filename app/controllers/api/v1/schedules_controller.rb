class Api::V1::SchedulesController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def create 
    @schedule = Schedule.create(user_id: params[:userID], department: params[:department], highlight: params[:highlight], dates: params[:dates], days: params[:days], time: params[:time])
    #create advanced DateTime for use when creating each email 
    @num_days_arr = []
    params[:days].times { |i| @num_days_arr.push("#{i}".to_i) }
    @datetime_arr = []
    @num_days_arr.each do |num| 
      @date = DateTime.now.advance(days: num)
      @date = @date.change({ hour: params[:time], min: 0, sec: 0 })
      @datetime_arr.push(@date)
    end 
    @test_arr = []
    #create artwork and then email for each artwork
    params[:art].each_with_index do |art, index|
      @artwork = Artwork.create(met_id: art[:ID], img_url: art[:img], title: art[:title], culture: art[:culture], artist: art[:artist], date: art[:date], description: art[:description].join(","), department: art[:department])
      @test_arr.push(@artwork)
      Email.create(artwork_id: @artwork.id, schedule_id: @schedule.id, sent: false, send_date_time: @datetime_arr[index])    
    end
  end 

  def index 
    @schedules = Schedule.all
    render json: @schedules
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    render json: @schedule 
  end 

end
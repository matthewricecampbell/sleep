class SleepTimesController < ApplicationController

  def new
  	@sleep_time = SleepTime.new 
  end
  
  def create
    @sleep_time = SleepTime.new #SleepTime.new(params[:sleep_time])
    @sleep_time.start_time = Time.new
    @sleep_time.user = current_user
  	@sleep_time.save
  	redirect_to :root
  end

  def update
    @sleep_time = SleepTime.last
    if @sleep_time.end_time = Time.new
      @sleep_time.save!
      redirect_to :root
    end
  end
  
  def index
    @completed_sleep_time = SleepTime.last
    @sleep_time = SleepTime.last
  	if @sleep_time.nil? || @sleep_time.end_time != nil
  	   @sleep_time = SleepTime.new
    end
  end

end

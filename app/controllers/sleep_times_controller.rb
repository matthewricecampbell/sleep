class SleepTimesController < ApplicationController
before_filter :authenticate_user!
  def new
  	@sleep_time = SleepTime.new 
  end
  
  def create
    @sleep_time = SleepTime.new(params[:sleep_time])
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
    @completed_sleep_time = current_user.sleep_times.last
    @sleep_time = SleepTime.last
  	if @sleep_time.nil? || @sleep_time.end_time != nil
  	   @sleep_time = SleepTime.new
    end
  end

  def sleep_duration_total
     @sleep_duration_total = @completed_sleep_time.sleep_duration.last + @completed_sleep_time.sleep_duration
  end

  def healthy_sleep_time_tracker
    healthy_sleep_time + 8
  end

end

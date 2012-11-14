class SleepTimesController < ApplicationController
  def new
  	@sleep_time = SleepTime.new 
  end
  
  def create
  	@sleep_time = SleepTime.new(params[:sleep_time])
  	@sleep_time.save
  	redirect_to :root
  end

def update

  end
  
  def index
  	@sleep_time = SleepTime.last
  	if @sleep_time.nil? || @sleep_time.end_time != nil
  		@sleep_time = SleepTime.new
  	end
  end

end

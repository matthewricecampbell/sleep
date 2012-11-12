class HomeController < ApplicationController
  
  def new
  	@sleep_time = SleepTime.new 
  end
  def create
  	@sleep_time = SleepTime.new
  end
  def index
  	@sleep_time = SleepTime.new
  end
end

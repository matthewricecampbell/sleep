class SleepTime < ActiveRecord::Base
  attr_accessible :start_time, :end_time
  belongs_to :user

  def sleep_duration
  	if self.end_time == nil || self.start_time == nil
  		return nil
  	end
  	sleep_seconds = self.end_time - self.start_time
  	time = sleep_seconds.round(0)
    Time.at(time).gmtime.strftime('%R:%S')
  end
end




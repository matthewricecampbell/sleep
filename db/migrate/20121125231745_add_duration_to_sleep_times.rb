class AddDurationToSleepTimes < ActiveRecord::Migration
  def change
  	add_column :sleep_times, :duration, :integer
  end
end

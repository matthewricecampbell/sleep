class CreateSleepTimes < ActiveRecord::Migration
  def change
    create_table :sleep_times do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end

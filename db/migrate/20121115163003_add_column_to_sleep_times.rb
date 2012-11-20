class AddColumnToSleepTimes < ActiveRecord::Migration
  def change
    add_column :sleep_times, :user_id, :string
  end
end

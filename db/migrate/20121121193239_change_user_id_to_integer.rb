class ChangeUserIdToInteger < ActiveRecord::Migration
  def up
  	remove_column(:sleep_times, :user_id)
  	add_column(:sleep_times, :user_id, :integer)
  end

  def down
  	change_column(:sleep_times, :user_id, :string)
  end
end

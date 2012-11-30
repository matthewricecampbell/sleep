class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  has_many :sleep_times

  def expected_hours
  	start = self.created_at
  	secounds = (Time.now - start).to_i
  	hours = (secounds/3600).to_i 
  	days = hours/24
  	expected_sleep_time = days * 8
  	expected_sleep_time
  end

end

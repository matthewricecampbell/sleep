require 'spec_helper'

describe SleepTime do
	describe "sleep_duration" do
		context "if there is a start_time and end_time" do
			it "should properly calculate sleep_duration" do
				sleep_time = SleepTime.new(:start_time => Time.now, :end_time => Time.now + 1.hour)
				sleep_time.sleep_duration.should == 1.hour
			end
		end
		context "if there is no start_time" do
			it "should return nil" do
				sleep_time = SleepTime.new(:start_time => nil, :end_time => Time.now+1.hour)
				sleep_time.sleep_duration.should == nil
			end
		end
		context "if there is no end_time" do
			it "should return nil" do
				sleep_time = SleepTime.new(:start_time => Time.now, :end_time => nil)
				sleep_time.sleep_duration.should == nil
			end
		end
	end
end

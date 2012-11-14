Given /^that (\d) hours have passed/ do |number|
    Timecop.travel(Time.now + number.to_i.hours)  
end
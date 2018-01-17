require 'date'

def check_fridays(d1, d2)

  # Compare the input values and swap accordingly
  d1p = d1 <= d2 ? Date.parse(d1) : Date.parse(d2)
  d2p = d2 >= d1 ? Date.parse(d2) : Date.parse(d1)

  # Total Number Days
  number_of_days = (d2p-d1p).to_i

  # Total Number Of Weeks
  total_weeks = number_of_days/7

  # Get The Reminder For Friday Check
  remaining_days = number_of_days%7

  # Check if any friday lies in remaining days
  if is_there_any_friday(remaining_days, d1p, d2p)
    total_weeks += 1
  end

  #Return The Total No Of Fridays
  total_weeks
end

def is_there_any_friday(remaining_days, start_date, end_date)
  got_friday = false #First set variable as false

  #First check from start date
  (0..remaining_days).each do |i|
    got_friday = (start_date+i).friday?
  end

  # If There Is No Friday Found In Start Date
  unless got_friday
    (0..remaining_days).each do |i|
      got_friday = (end_date-i).friday?
    end
  end

  #Return True OR False
  got_friday
end

start_time = Time.now()
fridays = check_fridays("2015/10/03", "4037/11/30")
end_time = Time.now()

p "Time Taken #{(end_time - start_time) * 1000.0}"

p "There are #{fridays} Fridays "
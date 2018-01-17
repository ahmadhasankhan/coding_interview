require 'date'

start_date = Date.today # your start
end_date = Date.today + 1.year # your end
my_days = [1,2,3] # day of the week in 0-6. Sunday is day-of-week 0; Saturday is day-of-week 6.
result = (start_date..end_date).to_a.select {|k| my_days.include?(k.wday)}
p result

start_time = Time.now()
fridays = check_fridays("2015/10/03", "4037/11/30")
endtime = Time.now()

p "Time Taken #{(endtime - start_time) * 1000.0}"

p "There are #{fridays.length} Fridays "


def seconds2dhms(secs)
  time = secs.round     # get rid of microseconds
  sec = time % 60       # extract seconds
  time /= 60            # get rid of seconds
  mins = time % 60      # extract minutes
  time /= 60            # get rid of minutes
  hrs = time % 24       # extract hours
  time /= 24            # get rid of hours
  days = time           # days (final remainder)
  [days, hrs, mins, sec]  # return array [d,h,m,s]
end

t = seconds2dhms(65)

puts "#{t[0]} days."
puts "#{t[1]} hours."
puts "#{t[2]} minutes."
puts "#{t[3]} seconds."

def dhms2seconds(days,hrs=0,min=0,sec=0)
  days*86400 + hrs*3600 + min*60 + sec
end

puts Time.now
t1 = Time.now + dhms2seconds(5,10,24) #5days, 10 hours, 24 minutes from now
puts "#{t1}"
t2 = Time.now + dhms2seconds(7)     #7 days from now
puts "Time in 7 days: #{t2}"

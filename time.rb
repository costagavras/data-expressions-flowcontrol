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

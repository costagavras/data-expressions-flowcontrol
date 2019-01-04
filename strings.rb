str = "Once upon \na time...\nThe End\n"
str.each_line.with_index do |line, num|
  puts "Line #{num + 1}: #{line}"
end

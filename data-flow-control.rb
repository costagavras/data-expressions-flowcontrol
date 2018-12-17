gender = "male"
age = 6
puts "A very young or old man" if gender == "male" && (age < 18 || age > 85)


1.upto(5) {|number| puts number}
10.downto(5) {|number| puts number}
10.step(20, 5) {|number| puts number}

#Strings
puts x = %q{This is
going to be output
over three lines}

puts x = <<LINE_END
Do you think
this will work?
LINE_END

puts "Success!" if "Test" + "String" == "TestString"

puts "A".ord
puts "B".ord

x = 5
y = 1
puts "#{x} + #{y} = #{x + y}"
puts x.to_s + " + " + y.to_s + " = " + (x + y).to_s
puts "Constantine".sum

puts "foobar".sub("bar", "foo")
puts "this is a test".gsub("i", "")

x = "This is a test"
puts x.sub(/^.../, "Hi")
puts x.sub(/...$/, "Hi")

"This is a test".scan(/.../) {|letter| puts letter}
"This is a test".scan(/\w\w/) {|letter| puts letter}

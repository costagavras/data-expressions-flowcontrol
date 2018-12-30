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
#d matches any digit and + makes match any digits that follow the first one
"The car costs $1000 and the toy car costs $10".scan(/\d+/) do |x|
  puts x
end
"This is a test".scan(/[aeiou]/) {|x| puts x}
#matching
puts "String contains no digits" unless "This is a test" =~ /[0-9]/

#arrays
x = ["Word", "Play", "Fun"]
puts x.join(", ")

#Scan without block returns array of single elements
puts "This is a test".scan(/\w/).join(",")
#Split on dot
puts "Short sentence. Another. Short. Sentence".split(/\./).inspect
#Split on space
puts "Words with lots of spaces".split(/\s+/).inspect

#array addition, subtracion
x = []
y = []
z = x + y
z = x - y
puts "x is empty" if x.empty?
x = [1,2,3]
p x.include?(1)
puts x.first(2).join("-")

#Hashes
x = {a: 1, b: 2}
x.each {|key, value| puts "#{key} equals #{value}"}
puts x.keys
p x.keys
people = {fred:  {name: "Fred", age: 15}}
puts people[:fred][:age]

#code blocks
def each_vowel(&code_block)
  %w{a e i o u}.each {|vowel| code_block.call(vowel) }
end
each_vowel {|vowel| puts vowel }
#ranges
("A"..."Z").to_a.each { |letter| p letter}

a = [2, 4, 6, 8, 10, 12]
p a[1..3]
a[1..3] = ["a","b", "c"]
p a
s = {:key => "value"}

puts 10 / 3
puts 10.to_f / 3
puts 10.0 / 3
puts 10 / Float(3)

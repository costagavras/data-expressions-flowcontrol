#singleton = method defined on a per-object basis

str = "Hello, world!"
# str2 = "Goodbye!"

def str.spell
  self.split(/./).join("-")
end

puts str.spell
# puts str2.spell

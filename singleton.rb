#singleton = method defined on a per-object basis as opposed to per-class

str = "Hello, world!"
# str2 = "Goodbye!"

def str.spell
  self.split("").join("-")
end

puts str.spell
# puts str2.spell

str = "hello"

class << str
  def hyphenated
    self.split("").join("-")
  end
end

puts str.hyphenated

h1 = {"alpha" => 1, "beta" => 2}
h2 = {:alpha => 1, :beta => 2}
h3 = {alpha: 1, beta: 2}

puts h1 == h2 #false
puts h2 == h3 #true

array_to_hash = [["a", 1]].to_h
puts array_to_hash

names = {"jim" => "hacker", "humphrey" => "appleby", "bernard" => "wooley"}
puts names.select {|k, v| v == "hacker"}
p names.find_all {|k, v| k.count("m") > 0}

#sorting a hash
list = names.sort
p list
list_hash = list.to_h
p list_hash

#inject method
nums = [2, 3, 4, 34, 2]
sum = nums.inject(0) {|x,n| x + n}
puts sum

sum = 0
nums.each {|n| sum += n}
puts sum

nums.each {|x| puts x}

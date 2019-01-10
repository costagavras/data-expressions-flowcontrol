h1 = {"alpha" => 1, "beta" => 2}
h2 = {:alpha => 1, :beta => 2}
h3 = {alpha: 1, beta: 2}

puts h1 == h2 #false
puts h2 == h3 #true

array_to_hash = [["a", 1]].to_h
puts array_to_hash
